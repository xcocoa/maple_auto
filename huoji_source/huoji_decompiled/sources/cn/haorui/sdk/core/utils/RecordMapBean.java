package cn.haorui.sdk.core.utils;

import java.io.Serializable;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public class RecordMapBean implements Serializable {
    private HashMap<String, HashMap<String, RecordBean>> dateRecordMap;

    public HashMap<String, HashMap<String, RecordBean>> getDateRecordMap() {
        return this.dateRecordMap;
    }

    public void setDateRecordMap(HashMap<String, HashMap<String, RecordBean>> map) {
        this.dateRecordMap = map;
    }
}
