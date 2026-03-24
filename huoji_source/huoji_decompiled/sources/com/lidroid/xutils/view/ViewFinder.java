package com.lidroid.xutils.view;

import android.app.Activity;
import android.content.Context;
import android.preference.Preference;
import android.preference.PreferenceActivity;
import android.preference.PreferenceGroup;
import android.view.View;

/* JADX INFO: loaded from: classes2.dex */
public class ViewFinder {
    private Activity activity;
    private PreferenceActivity preferenceActivity;
    private PreferenceGroup preferenceGroup;
    private View view;

    public ViewFinder(Activity activity) {
        this.activity = activity;
    }

    public ViewFinder(PreferenceActivity preferenceActivity) {
        this.preferenceActivity = preferenceActivity;
        this.activity = preferenceActivity;
    }

    public ViewFinder(PreferenceGroup preferenceGroup) {
        this.preferenceGroup = preferenceGroup;
    }

    public ViewFinder(View view) {
        this.view = view;
    }

    public Preference findPreference(CharSequence charSequence) {
        PreferenceGroup preferenceGroup = this.preferenceGroup;
        return preferenceGroup == null ? this.preferenceActivity.findPreference(charSequence) : preferenceGroup.findPreference(charSequence);
    }

    public View findViewById(int i) {
        Activity activity = this.activity;
        return activity == null ? this.view.findViewById(i) : activity.findViewById(i);
    }

    public View findViewById(int i, int i2) {
        View viewFindViewById = i2 > 0 ? findViewById(i2) : null;
        return viewFindViewById != null ? viewFindViewById.findViewById(i) : findViewById(i);
    }

    public View findViewByInfo(ViewInjectInfo viewInjectInfo) {
        return findViewById(((Integer) viewInjectInfo.value).intValue(), viewInjectInfo.parentId);
    }

    public Context getContext() {
        View view = this.view;
        if (view != null) {
            return view.getContext();
        }
        Activity activity = this.activity;
        if (activity != null) {
            return activity;
        }
        PreferenceActivity preferenceActivity = this.preferenceActivity;
        if (preferenceActivity != null) {
            return preferenceActivity;
        }
        return null;
    }
}
