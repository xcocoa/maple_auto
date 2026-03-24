package com.anythink.nativead.api;

import android.view.View;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class ATNativePrepareExInfo extends ATNativePrepareInfo {
    private List<View> appInfoClickViewList;
    private List<View> creativeClickViewList;
    private List<View> permissionClickViewList;
    private List<View> privacyClickViewList;

    public List<View> getAppInfoClickViewList() {
        View view;
        List<View> list = this.appInfoClickViewList;
        if (list != null && list.size() > 0 && (view = this.closeView) != null) {
            this.appInfoClickViewList.remove(view);
        }
        return this.appInfoClickViewList;
    }

    public List<View> getCreativeClickViewList() {
        View view;
        List<View> list = this.creativeClickViewList;
        if (list != null && list.size() > 0 && (view = this.closeView) != null) {
            this.creativeClickViewList.remove(view);
        }
        return this.creativeClickViewList;
    }

    public List<View> getPermissionClickViewList() {
        View view;
        List<View> list = this.permissionClickViewList;
        if (list != null && list.size() > 0 && (view = this.closeView) != null) {
            this.permissionClickViewList.remove(view);
        }
        return this.permissionClickViewList;
    }

    public List<View> getPrivacyClickViewList() {
        View view;
        List<View> list = this.privacyClickViewList;
        if (list != null && list.size() > 0 && (view = this.closeView) != null) {
            this.privacyClickViewList.remove(view);
        }
        return this.privacyClickViewList;
    }

    public void setAppInfoClickViewList(List<View> list) {
        this.appInfoClickViewList = list;
    }

    public void setCreativeClickViewList(List<View> list) {
        this.creativeClickViewList = list;
    }

    public void setPermissionClickViewList(List<View> list) {
        this.permissionClickViewList = list;
    }

    public void setPrivacyClickViewList(List<View> list) {
        this.privacyClickViewList = list;
    }
}
