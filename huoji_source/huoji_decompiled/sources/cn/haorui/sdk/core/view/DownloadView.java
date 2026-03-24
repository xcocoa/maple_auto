package cn.haorui.sdk.core.view;

import android.text.TextUtils;
import android.view.View;
import android.widget.TextView;
import cn.haorui.sdk.R;
import cn.haorui.sdk.activity.HRDownloadDetailActivity;
import cn.haorui.sdk.core.ad.BaseAdSlot;
import cn.haorui.sdk.core.utils.DownloadDialogBean;
import cn.haorui.sdk.core.utils.LogUtil;

/* JADX INFO: loaded from: classes.dex */
public class DownloadView {
    private static final String TAG = "DownloadView";

    public class a implements View.OnClickListener {
        public final /* synthetic */ BaseAdSlot a;
        public final /* synthetic */ View b;

        public a(DownloadView downloadView, BaseAdSlot baseAdSlot, View view) {
            this.a = baseAdSlot;
            this.b = view;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            try {
                DownloadDialogBean downloadDialogBean = new DownloadDialogBean();
                downloadDialogBean.setApp_name(this.a.getAppName());
                downloadDialogBean.setApp_feature(this.a.getApp_feature());
                downloadDialogBean.setApp_intro(this.a.getApp_intro());
                downloadDialogBean.setApp_privacy(this.a.getApp_privacy());
                downloadDialogBean.setApp_size(this.a.getApp_size());
                downloadDialogBean.setDeveloper(this.a.getDeveloper());
                downloadDialogBean.setPayment_types(this.a.getPayment_types());
                downloadDialogBean.setApp_permission(this.a.getApp_permission());
                downloadDialogBean.setApp_permission_url(this.a.getApp_permission_url());
                downloadDialogBean.setApp_intor_url(this.a.getApp_intor_url());
                downloadDialogBean.setApp_private_agreement(this.a.getPrivacy_agreement());
                HRDownloadDetailActivity.startActivity(this.b.getContext(), downloadDialogBean);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    public void handleDownloadView(View view, BaseAdSlot baseAdSlot) {
        try {
            LogUtil.d(TAG, "handleDownloadView: interactionType=" + baseAdSlot.getInteractionType());
            if (baseAdSlot.getInteractionType() == 1) {
                TextView textView = (TextView) view.findViewById(R.id.adsail_download_layer_textview);
                textView.setVisibility(0);
                StringBuilder sb = new StringBuilder();
                if (!TextUtils.isEmpty(baseAdSlot.getAppName())) {
                    sb.append("应用名称：");
                    sb.append(baseAdSlot.getAppName());
                    sb.append(" |");
                }
                if (!TextUtils.isEmpty(baseAdSlot.getApp_ver())) {
                    sb.append(" 应用版本：");
                    sb.append(baseAdSlot.getApp_ver());
                    sb.append(" |");
                }
                if (!TextUtils.isEmpty(baseAdSlot.getApp_size())) {
                    sb.append(" 应用大小：");
                    sb.append(baseAdSlot.getApp_size());
                    sb.append(" |");
                }
                if (!TextUtils.isEmpty(baseAdSlot.getDeveloper())) {
                    sb.append(" 开发者：");
                    sb.append(baseAdSlot.getDeveloper());
                    sb.append(" |");
                }
                if (!TextUtils.isEmpty(baseAdSlot.getApp_permission_url()) || baseAdSlot.getApp_permission() != null) {
                    sb.append(" 权限详情>");
                    sb.append(" |");
                }
                if (!TextUtils.isEmpty(baseAdSlot.getPrivacy_agreement())) {
                    sb.append(" 隐私协议 > ");
                    sb.append(" |");
                }
                if (!TextUtils.isEmpty(baseAdSlot.getApp_intor_url()) || !TextUtils.isEmpty(baseAdSlot.getApp_intro())) {
                    sb.append(" 功能介绍>");
                }
                String string = sb.toString();
                if (TextUtils.isEmpty(string)) {
                    textView.setVisibility(8);
                } else if (string.endsWith(com.anythink.expressad.foundation.g.a.bQ)) {
                    string.substring(0, string.length() - 1);
                }
                textView.setText(string);
                textView.setOnClickListener(new a(this, baseAdSlot, view));
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }
}
