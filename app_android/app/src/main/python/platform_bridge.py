"""
平台桥接层 - Kotlin ↔ Python 通信

功能：
- 封装 Kotlin Android 服务的 JNI 调用
- 提供与 PC 版 adb.py 兼容的 API（screenshot/tap/swipe 等）
- 处理图像格式转换（Bitmap → numpy ndarray）
- 性能监控和错误恢复

使用 Chaquopy Java 桥接调用 Kotlin 服务：
  from java import jclass
  ScreenCaptureService = jclass('com.maple.auto.capture.ScreenCaptureService')
  GestureService = jclass('com.maple.auto.service.GestureService')
"""

import logging
import time
import numpy as np
from typing import Tuple, Optional, List
from collections import deque
from datetime import datetime

logger = logging.getLogger(__name__)

# 图像缓存，避免频繁截图
_screenshot_cache = None
_screenshot_cache_time = 0
_screenshot_cache_ttl = 0.06  # 60ms 缓存

# 性能统计
_perf_stats = {
    'screenshot_time': deque(maxlen=60),
    'tap_time': deque(maxlen=60),
    'swipe_time': deque(maxlen=60),
}


# ============================================================================
# Kotlin 服务代理（JNI）
# ============================================================================

_gesture_service = None
_screen_capture_service = None
_jni_classes_loaded = False
_GestureServiceClass = None
_ScreenCaptureServiceClass = None


def _init_jni_services():
    """初始化 JNI 服务引用（Chaquopy Java 桥接）"""
    global _gesture_service, _screen_capture_service
    global _jni_classes_loaded, _GestureServiceClass, _ScreenCaptureServiceClass
    
    if _gesture_service is not None:
        return  # 已初始化
    
    try:
        # 只加载一次 Java 类引用
        if not _jni_classes_loaded:
            from java import jclass
            _GestureServiceClass = jclass('com.maple.auto.service.GestureService')
            _ScreenCaptureServiceClass = jclass('com.maple.auto.capture.ScreenCaptureService')
            _jni_classes_loaded = True
        
        # 获取服务实例（可能为 null，需要等服务启动）
        _gesture_service = _GestureServiceClass.getInstance()
        _screen_capture_service = _ScreenCaptureServiceClass.getInstance()
        
        if _gesture_service is None:
            logger.warning("JNI services not yet initialized, retrying in 500ms")
            time.sleep(0.5)
            _gesture_service = _GestureServiceClass.getInstance()
            _screen_capture_service = _ScreenCaptureServiceClass.getInstance()
        
        if _screen_capture_service is None:
            logger.warning("ScreenCaptureService not available (capture permission not granted?)")
        
        logger.info("JNI services initialized successfully")
        
    except Exception as e:
        logger.error(f"Failed to initialize JNI services: {e}")
        raise


# ============================================================================
# 截图 API
# ============================================================================

def screenshot() -> np.ndarray:
    """
    获取当前屏幕截图
    
    Returns:
        numpy.ndarray: 形状 (height, width, 3)，dtype=uint8，BGR 格式
        
    注：如果距上次截图 < 60ms，返回缓存
    """
    global _screenshot_cache, _screenshot_cache_time
    
    # 检查缓存
    now = time.time()
    if _screenshot_cache is not None and (now - _screenshot_cache_time) < _screenshot_cache_ttl:
        return _screenshot_cache.copy()
    
    start_time = now
    
    try:
        _init_jni_services()
        
        if _screen_capture_service is None:
            raise RuntimeError("ScreenCaptureService not available")
        
        # 调用 Kotlin captureScreen() → Bitmap
        bitmap = _screen_capture_service.captureScreen()
        if bitmap is None:
            logger.warning("ScreenCaptureService returned None")
            return None
        
        # Bitmap → numpy 转换
        # Chaquopy 会自动处理 Bitmap → byte[]，我们需要转为 numpy
        image_array = _bitmap_to_numpy(bitmap)
        
        # 缓存
        _screenshot_cache = image_array.copy()
        _screenshot_cache_time = time.time()
        
        # 性能统计
        elapsed = time.time() - start_time
        _perf_stats['screenshot_time'].append(elapsed)
        logger.debug(f"screenshot() took {elapsed*1000:.1f}ms")
        
        return image_array
        
    except Exception as e:
        logger.error(f"screenshot() failed: {e}")
        raise


def _bitmap_to_numpy(bitmap) -> np.ndarray:
    """
    将 Android Bitmap 转为 numpy ndarray (BGR)
    
    Args:
        bitmap: Android Bitmap 对象 (ARGB_8888)
        
    Returns:
        numpy.ndarray: (height, width, 3), BGR, uint8
    """
    try:
        from java import jarray, jint
        
        # 获取 Bitmap 宽高
        width = bitmap.getWidth()
        height = bitmap.getHeight()
        
        # 分配 Java int[] 并获取像素
        pixels = jarray(jint)(width * height)
        bitmap.getPixels(pixels, 0, width, 0, 0, width, height)
        
        # Java int[] → numpy
        pixel_array = np.array(pixels, dtype=np.int32).view(np.uint32)
        pixel_array = pixel_array.reshape((height, width))
        
        # ARGB 分离，转为 BGR（OpenCV 格式）
        r = ((pixel_array >> 16) & 0xFF).astype(np.uint8)
        g = ((pixel_array >> 8) & 0xFF).astype(np.uint8)
        b = (pixel_array & 0xFF).astype(np.uint8)
        
        bgr = np.stack([b, g, r], axis=2)
        
        return bgr
        
    except Exception as e:
        logger.error(f"_bitmap_to_numpy() failed: {e}")
        raise


# ============================================================================
# 手势输入 API
# ============================================================================

def tap(x: int, y: int, duration: int = 100) -> bool:
    """
    点击屏幕某个位置
    
    Args:
        x: 横坐标（像素）
        y: 纵坐标（像素）
        duration: 点击持续时间（毫秒），默认 100ms
        
    Returns:
        bool: 成功返回 True
    """
    start_time = time.time()
    
    try:
        _init_jni_services()
        
        if _gesture_service is None:
            raise RuntimeError("GestureService not available")
        
        result = _gesture_service.tap(float(x), float(y), int(duration))
        
        # 性能统计
        elapsed = time.time() - start_time
        _perf_stats['tap_time'].append(elapsed)
        logger.debug(f"tap({x}, {y}) took {elapsed*1000:.1f}ms")
        
        return bool(result)
        
    except Exception as e:
        logger.error(f"tap({x}, {y}) failed: {e}")
        return False


def swipe(x1: int, y1: int, x2: int, y2: int, duration: int = 300) -> bool:
    """
    从 (x1, y1) 滑动到 (x2, y2)
    
    Args:
        x1, y1: 起点坐标（像素）
        x2, y2: 终点坐标（像素）
        duration: 滑动持续时间（毫秒），默认 300ms
        
    Returns:
        bool: 成功返回 True
    """
    start_time = time.time()
    
    try:
        _init_jni_services()
        
        if _gesture_service is None:
            raise RuntimeError("GestureService not available")
        
        result = _gesture_service.swipe(
            float(x1), float(y1), float(x2), float(y2), int(duration)
        )
        
        # 性能统计
        elapsed = time.time() - start_time
        _perf_stats['swipe_time'].append(elapsed)
        logger.debug(f"swipe({x1}, {y1}, {x2}, {y2}) took {elapsed*1000:.1f}ms")
        
        return bool(result)
        
    except Exception as e:
        logger.error(f"swipe({x1}, {y1}, {x2}, {y2}) failed: {e}")
        return False


def long_press(x: int, y: int, duration: int = 1000) -> bool:
    """
    长按屏幕某个位置
    
    Args:
        x: 横坐标（像素）
        y: 纵坐标（像素）
        duration: 长按持续时间（毫秒），默认 1000ms
        
    Returns:
        bool: 成功返回 True
    """
    try:
        _init_jni_services()
        
        if _gesture_service is None:
            raise RuntimeError("GestureService not available")
        
        return bool(_gesture_service.longPress(float(x), float(y), int(duration)))
        
    except Exception as e:
        logger.error(f"long_press({x}, {y}) failed: {e}")
        return False


def press_back() -> bool:
    """返回键"""
    try:
        _init_jni_services()
        if _gesture_service is None:
            raise RuntimeError("GestureService not available")
        return bool(_gesture_service.pressBack())
    except Exception as e:
        logger.error(f"press_back() failed: {e}")
        return False


def press_home() -> bool:
    """主页键"""
    try:
        _init_jni_services()
        if _gesture_service is None:
            raise RuntimeError("GestureService not available")
        return bool(_gesture_service.pressHome())
    except Exception as e:
        logger.error(f"press_home() failed: {e}")
        return False


# ============================================================================
# 屏幕信息 API
# ============================================================================

def get_screen_width() -> int:
    """获取屏幕宽度（像素）"""
    try:
        _init_jni_services()
        if _screen_capture_service is None:
            raise RuntimeError("ScreenCaptureService not available")
        return _screen_capture_service.getScreenWidth()
    except Exception as e:
        logger.error(f"get_screen_width() failed: {e}")
        return 0


def get_screen_height() -> int:
    """获取屏幕高度（像素）"""
    try:
        _init_jni_services()
        if _screen_capture_service is None:
            raise RuntimeError("ScreenCaptureService not available")
        return _screen_capture_service.getScreenHeight()
    except Exception as e:
        logger.error(f"get_screen_height() failed: {e}")
        return 0


# ============================================================================
# 性能监控
# ============================================================================

def get_perf_stats() -> dict:
    """
    获取性能统计
    
    Returns:
        dict: 包含各操作的平均/最大/最小耗时
    """
    stats = {}
    for key, times in _perf_stats.items():
        if times:
            stats[key] = {
                'avg': sum(times) / len(times),
                'max': max(times),
                'min': min(times),
                'count': len(times),
            }
    return stats


def print_perf_stats():
    """打印性能统计"""
    stats = get_perf_stats()
    for key, values in stats.items():
        print(f"{key}:")
        print(f"  avg: {values['avg']*1000:.1f}ms, "
              f"max: {values['max']*1000:.1f}ms, "
              f"min: {values['min']*1000:.1f}ms, "
              f"count: {values['count']}")


# ============================================================================
# 配置管理（Phase 3 - SharedPreferences 持久化）
# ============================================================================

_config_manager = None


def _get_config_manager():
    """获取 Kotlin ConfigManager 实例"""
    global _config_manager
    if _config_manager is not None:
        return _config_manager

    try:
        from java import jclass
        ConfigManagerClass = jclass('com.maple.auto.config.ConfigManager')
        _config_manager = ConfigManagerClass.getInstance()
        if _config_manager is None:
            logger.warning("ConfigManager not yet initialized")
        return _config_manager
    except Exception as e:
        logger.error(f"Failed to get ConfigManager: {e}")
        return None


def load_config_json() -> str:
    """
    从 SharedPreferences 加载配置 JSON

    Returns:
        str: JSON 字符串，无保存配置则返回空字符串
    """
    try:
        mgr = _get_config_manager()
        if mgr is None:
            return ""
        result = mgr.loadConfigJson()
        return str(result) if result is not None else ""
    except Exception as e:
        logger.error(f"load_config_json() failed: {e}")
        return ""


def save_config_json(json_str: str) -> bool:
    """
    保存配置 JSON 到 SharedPreferences

    Args:
        json_str: JSON 格式的配置字符串

    Returns:
        bool: 成功返回 True
    """
    try:
        mgr = _get_config_manager()
        if mgr is None:
            return False
        return bool(mgr.saveConfigJson(json_str))
    except Exception as e:
        logger.error(f"save_config_json() failed: {e}")
        return False


def has_saved_config() -> bool:
    """检查是否有保存的配置"""
    try:
        mgr = _get_config_manager()
        if mgr is None:
            return False
        return bool(mgr.hasConfig())
    except Exception as e:
        logger.error(f"has_saved_config() failed: {e}")
        return False


def clear_saved_config() -> None:
    """清除保存的配置（恢复默认）"""
    try:
        mgr = _get_config_manager()
        if mgr is not None:
            mgr.clearAll()
    except Exception as e:
        logger.error(f"clear_saved_config() failed: {e}")


def load_config(name: str = "default") -> dict:
    """
    加载配置

    Args:
        name: 配置名称

    Returns:
        dict: 配置字典
    """
    import json
    json_str = load_config_json()
    if json_str:
        try:
            return json.loads(json_str)
        except Exception as e:
            logger.error(f"Failed to parse config JSON: {e}")
    return {}


def save_config(name: str, config: dict) -> bool:
    """
    保存配置

    Args:
        name: 配置名称
        config: 配置字典

    Returns:
        bool: 成功返回 True
    """
    import json
    try:
        json_str = json.dumps(config)
        return save_config_json(json_str)
    except Exception as e:
        logger.error(f"save_config() failed: {e}")
        return False


# ============================================================================
# 初始化
# ============================================================================

def initialize() -> bool:
    """
    初始化平台桥接层
    
    Returns:
        bool: 初始化成功返回 True
    """
    try:
        logger.info("Initializing platform bridge...")
        _init_jni_services()
        
        width = get_screen_width()
        height = get_screen_height()
        logger.info(f"Platform bridge initialized: {width}x{height}")
        
        return True
        
    except Exception as e:
        logger.error(f"Platform bridge initialization failed: {e}")
        return False


if __name__ == "__main__":
    # 测试
    logging.basicConfig(level=logging.DEBUG)
    
    if initialize():
        img = screenshot()
        if img is not None:
            print(f"Screenshot: {img.shape}, {img.dtype}")
            tap(100, 100)
            print_perf_stats()
