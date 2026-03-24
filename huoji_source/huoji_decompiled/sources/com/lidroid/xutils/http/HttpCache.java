package com.lidroid.xutils.http;

import android.text.TextUtils;
import com.lidroid.xutils.cache.LruMemoryCache;
import com.lidroid.xutils.http.client.HttpRequest;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes2.dex */
public class HttpCache {
    private static final int DEFAULT_CACHE_SIZE = 102400;
    private static final long DEFAULT_EXPIRY_TIME = 60000;
    private static long defaultExpiryTime = 60000;
    private static final ConcurrentHashMap<String, Boolean> httpMethod_enabled_map;
    private int cacheSize;
    private final LruMemoryCache<String, String> mMemoryCache;

    static {
        ConcurrentHashMap<String, Boolean> concurrentHashMap = new ConcurrentHashMap<>(10);
        httpMethod_enabled_map = concurrentHashMap;
        concurrentHashMap.put(HttpRequest.HttpMethod.GET.toString(), Boolean.TRUE);
    }

    public HttpCache() {
        this(DEFAULT_CACHE_SIZE, DEFAULT_EXPIRY_TIME);
    }

    public HttpCache(int i, long j) {
        this.cacheSize = DEFAULT_CACHE_SIZE;
        this.cacheSize = i;
        defaultExpiryTime = j;
        this.mMemoryCache = new LruMemoryCache<String, String>(i) { // from class: com.lidroid.xutils.http.HttpCache.1
            @Override // com.lidroid.xutils.cache.LruMemoryCache
            public int sizeOf(String str, String str2) {
                if (str2 == null) {
                    return 0;
                }
                return str2.length();
            }
        };
    }

    public static long getDefaultExpiryTime() {
        return defaultExpiryTime;
    }

    public static void setDefaultExpiryTime(long j) {
        defaultExpiryTime = j;
    }

    public void clear() {
        this.mMemoryCache.evictAll();
    }

    public String get(String str) {
        if (str != null) {
            return this.mMemoryCache.get(str);
        }
        return null;
    }

    public boolean isEnabled(HttpRequest.HttpMethod httpMethod) {
        Boolean bool;
        if (httpMethod == null || (bool = httpMethod_enabled_map.get(httpMethod.toString())) == null) {
            return false;
        }
        return bool.booleanValue();
    }

    public boolean isEnabled(String str) {
        Boolean bool;
        if (TextUtils.isEmpty(str) || (bool = httpMethod_enabled_map.get(str.toUpperCase())) == null) {
            return false;
        }
        return bool.booleanValue();
    }

    public void put(String str, String str2) {
        put(str, str2, defaultExpiryTime);
    }

    public void put(String str, String str2, long j) {
        if (str == null || str2 == null || j < 1) {
            return;
        }
        this.mMemoryCache.put(str, str2, System.currentTimeMillis() + j);
    }

    public void setCacheSize(int i) {
        this.mMemoryCache.setMaxSize(i);
    }

    public void setEnabled(HttpRequest.HttpMethod httpMethod, boolean z) {
        httpMethod_enabled_map.put(httpMethod.toString(), Boolean.valueOf(z));
    }
}
