package cn.haorui.sdk.core.utils;

import cn.haorui.sdk.core.AdSdk;
import com.google.gson.Gson;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
import java.util.TimeZone;
import z2.ae;

/* JADX INFO: loaded from: classes.dex */
public class RecordUtil {
    private static final String LAST_CLICK_TIME = "last_click_time";
    public static final int LAST_DCLK_RSP_TIME = 6;
    public static final String LAST_DYNAMIC_TIME = "last_dynamic_time";
    private static final String RECORD_DATA = "record_data";
    public static final int TYPE_CLICK = 4;
    public static final int TYPE_DYNAMIC_CLICK = 5;
    public static final int TYPE_EXPOSURE = 3;
    public static final int TYPE_LAST_CLICK = 8;
    public static final int TYPE_LAST_DYNAMIC_CLICK = 7;
    public static final int TYPE_LOAD = 1;
    public static final int TYPE_LOAD_SUCC = 2;
    private static HashMap<String, HashMap<String, RecordBean>> dateRecordMap;
    public static long lastDynamicClickTime;
    public static HashMap<String, RecordClick> recordClickMap = new HashMap<>();
    public static boolean isCanDynamicClick = false;
    public static int dynamicPower = 1;
    private static final Gson mGson = new Gson();

    public static class RecordClick {
        private boolean isClicked;
        private boolean isDynamicClick;

        public boolean isClicked() {
            return this.isClicked;
        }

        public boolean isDynamicClick() {
            return this.isDynamicClick;
        }

        public void setClicked(boolean z) {
            this.isClicked = z;
        }

        public void setDynamicClick(boolean z) {
            this.isDynamicClick = z;
        }
    }

    public static String dateFormat(long j) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(ae.OooO0O0, Locale.CHINESE);
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("GMT+8:00"));
        return simpleDateFormat.format(new Date(j));
    }

    public static String getAllClick() {
        long lastDynamicLoadedTime;
        int loadSucc;
        int exposureNum;
        int clickNum;
        int dynamicClickNum;
        HashMap<String, RecordBean> recordData = getRecordData();
        long j = AdSdk.getSharedPreferences().getLong(LAST_DYNAMIC_TIME, 0L);
        long j2 = AdSdk.getSharedPreferences().getLong(LAST_CLICK_TIME, 0L);
        int i = 0;
        if (recordData != null) {
            ArrayList arrayList = new ArrayList(recordData.values());
            lastDynamicLoadedTime = 0;
            int loadNum = 0;
            loadSucc = 0;
            exposureNum = 0;
            clickNum = 0;
            dynamicClickNum = 0;
            while (i < arrayList.size()) {
                RecordBean recordBean = (RecordBean) arrayList.get(i);
                if (recordBean != null) {
                    loadNum += recordBean.getLoadNum();
                    loadSucc += recordBean.getLoadSucc();
                    exposureNum += recordBean.getExposureNum();
                    clickNum += recordBean.getClickNum();
                    dynamicClickNum += recordBean.getDynamicClickNum();
                    if (recordBean.getLastDynamicLoadedTime() > lastDynamicLoadedTime) {
                        lastDynamicLoadedTime = recordBean.getLastDynamicLoadedTime();
                    }
                }
                i++;
            }
            i = loadNum;
        } else {
            lastDynamicLoadedTime = 0;
            loadSucc = 0;
            exposureNum = 0;
            clickNum = 0;
            dynamicClickNum = 0;
        }
        if (i == 0 && loadSucc == 0 && exposureNum == 0 && clickNum == 0 && dynamicClickNum == 0 && lastDynamicLoadedTime == 0 && j == 0) {
            return null;
        }
        return i + "." + loadSucc + "." + exposureNum + "." + clickNum + "." + dynamicClickNum + "." + lastDynamicLoadedTime + "." + j + "." + j2;
    }

    public static HashMap<String, RecordBean> getRecordData() {
        RecordMapBean recordMapBean = (RecordMapBean) mGson.fromJson(AdSdk.getSharedPreferences().getString(RECORD_DATA, ""), RecordMapBean.class);
        if (recordMapBean == null) {
            return null;
        }
        HashMap<String, HashMap<String, RecordBean>> dateRecordMap2 = recordMapBean.getDateRecordMap();
        if (dateRecordMap2 == null) {
            dateRecordMap2 = new HashMap<>();
        }
        return dateRecordMap2.get(dateFormat(System.currentTimeMillis()));
    }

    public static String getSingleClick(String str) {
        RecordBean recordBean;
        HashMap<String, RecordBean> recordData = getRecordData();
        if (recordData == null || (recordBean = recordData.get(str)) == null) {
            return null;
        }
        return recordBean.getLoadNum() + "." + recordBean.getLoadSucc() + "." + recordBean.getExposureNum() + "." + recordBean.getClickNum() + "." + recordBean.getDynamicClickNum() + "." + recordBean.getLastDynamicLoadedTime() + "." + recordBean.getLastDynamicClickTime() + "." + recordBean.getLastClickTime();
    }

    public static void saveAction(String str, int i) {
        long jCurrentTimeMillis;
        HashMap<String, RecordBean> recordData = getRecordData();
        if (recordData == null) {
            recordData = new HashMap<>();
        }
        RecordBean recordBean = recordData.get(str);
        if (recordBean == null) {
            recordBean = new RecordBean();
        }
        recordBean.setPid(str);
        switch (i) {
            case 1:
                recordBean.setLoadNum(recordBean.getLoadNum() + 1);
                break;
            case 2:
                recordBean.setLoadSucc(recordBean.getLoadSucc() + 1);
                break;
            case 3:
                recordBean.setExposureNum(recordBean.getExposureNum() + 1);
                break;
            case 4:
                recordBean.setClickNum(recordBean.getClickNum() + 1);
                break;
            case 5:
                recordBean.setDynamicClickNum(recordBean.getDynamicClickNum() + 1);
                break;
            case 6:
                recordBean.setLastDynamicLoadedTime(System.currentTimeMillis());
                break;
            case 7:
                jCurrentTimeMillis = System.currentTimeMillis();
                recordBean.setLastDynamicClickTime(jCurrentTimeMillis);
                recordBean.setLastClickTime(jCurrentTimeMillis);
                AdSdk.getSharedPreferences().edit().putLong(LAST_DYNAMIC_TIME, jCurrentTimeMillis).apply();
                AdSdk.getSharedPreferences().edit().putLong(LAST_CLICK_TIME, jCurrentTimeMillis).apply();
                break;
            case 8:
                jCurrentTimeMillis = System.currentTimeMillis();
                recordBean.setLastClickTime(jCurrentTimeMillis);
                AdSdk.getSharedPreferences().edit().putLong(LAST_CLICK_TIME, jCurrentTimeMillis).apply();
                break;
        }
        recordData.put(str, recordBean);
        saveRecordData(recordData);
    }

    public static void saveRecordData(HashMap<String, RecordBean> map) {
        String strDateFormat = dateFormat(System.currentTimeMillis());
        if (dateRecordMap == null) {
            dateRecordMap = new HashMap<>();
        }
        dateRecordMap.put(strDateFormat, map);
        RecordMapBean recordMapBean = new RecordMapBean();
        recordMapBean.setDateRecordMap(dateRecordMap);
        AdSdk.getSharedPreferences().edit().putString(RECORD_DATA, mGson.toJson(recordMapBean)).apply();
    }
}
