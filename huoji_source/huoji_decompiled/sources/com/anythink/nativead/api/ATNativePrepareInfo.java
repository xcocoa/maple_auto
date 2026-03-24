package com.anythink.nativead.api;

import android.view.View;
import android.widget.FrameLayout;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class ATNativePrepareInfo {
    public View adFromView;
    public View adLogoView;
    public FrameLayout.LayoutParams choiceViewLayoutParams;
    private final List<View> clickViewList = new ArrayList();
    public View closeView;
    public View ctaView;
    public View descView;
    private View domainView;
    public View iconView;
    public View mainImageView;
    public View parentView;
    public View titleView;
    private View warningView;

    private synchronized void addClickView(View view) {
        if (view == null) {
            return;
        }
        if (!this.clickViewList.contains(view)) {
            View view2 = this.closeView;
            if (view2 != null && view2 == view) {
            } else {
                this.clickViewList.add(view);
            }
        }
    }

    public View getAdFromView() {
        return this.adFromView;
    }

    public View getAdLogoView() {
        return this.adLogoView;
    }

    public FrameLayout.LayoutParams getChoiceViewLayoutParams() {
        return this.choiceViewLayoutParams;
    }

    public List<View> getClickViewList() {
        return this.clickViewList;
    }

    public View getCloseView() {
        return this.closeView;
    }

    public View getCtaView() {
        return this.ctaView;
    }

    public View getDescView() {
        return this.descView;
    }

    public View getDomainView() {
        return this.domainView;
    }

    public View getIconView() {
        return this.iconView;
    }

    public View getMainImageView() {
        return this.mainImageView;
    }

    public View getParentView() {
        return this.parentView;
    }

    public View getTitleView() {
        return this.titleView;
    }

    public View getWarningView() {
        return this.warningView;
    }

    public void setAdFromView(View view) {
        this.adFromView = view;
    }

    public void setAdLogoView(View view) {
        this.adLogoView = view;
    }

    public void setChoiceViewLayoutParams(FrameLayout.LayoutParams layoutParams) {
        this.choiceViewLayoutParams = layoutParams;
    }

    public void setClickViewList(List<View> list) {
        if (list == null || list.size() <= 0) {
            return;
        }
        Iterator<View> it = list.iterator();
        while (it.hasNext()) {
            addClickView(it.next());
        }
    }

    public void setCloseView(View view) {
        this.closeView = view;
    }

    public void setCtaView(View view) {
        this.ctaView = view;
        addClickView(view);
    }

    public void setDescView(View view) {
        this.descView = view;
        addClickView(view);
    }

    public void setDomainView(View view) {
        this.domainView = view;
    }

    public void setIconView(View view) {
        this.iconView = view;
        addClickView(view);
    }

    public void setMainImageView(View view) {
        this.mainImageView = view;
        addClickView(view);
    }

    public void setParentView(View view) {
        this.parentView = view;
    }

    public void setTitleView(View view) {
        this.titleView = view;
        addClickView(view);
    }

    public void setWarningView(View view) {
        this.warningView = view;
    }
}
