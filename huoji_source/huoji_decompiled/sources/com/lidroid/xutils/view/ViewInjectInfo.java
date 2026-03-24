package com.lidroid.xutils.view;

/* JADX INFO: loaded from: classes2.dex */
public class ViewInjectInfo {
    public int parentId;
    public Object value;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ViewInjectInfo)) {
            return false;
        }
        ViewInjectInfo viewInjectInfo = (ViewInjectInfo) obj;
        if (this.parentId != viewInjectInfo.parentId) {
            return false;
        }
        Object obj2 = this.value;
        Object obj3 = viewInjectInfo.value;
        return obj2 == null ? obj3 == null : obj2.equals(obj3);
    }

    public int hashCode() {
        return (this.value.hashCode() * 31) + this.parentId;
    }
}
