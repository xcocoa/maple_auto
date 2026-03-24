package cn.haorui.sdk.adsail_ad.view;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;
import androidx.appcompat.app.AppCompatActivity;
import cn.haorui.sdk.R;
import cn.haorui.sdk.activity.HRDownloadDetailActivity;
import cn.haorui.sdk.activity.HRWebviewActivity;
import cn.haorui.sdk.core.ad.AdSlot;
import cn.haorui.sdk.core.utils.DownloadDialogBean;
import cn.haorui.sdk.core.utils.DownloadInfo;
import cn.haorui.sdk.core.utils.DownloadUtils;
import cn.haorui.sdk.platform.hr.IAdSailAd;
import z2.o000;

/* JADX INFO: loaded from: classes.dex */
public class DownLoadDialogActivity extends AppCompatActivity implements View.OnClickListener {
    private static final String TAG = "DownLoadDialog";
    public static DownloadInfo downloadInfo;
    public static IAdSailAd nativeAd;
    private String app_feature;
    private String app_intro;
    private String app_name;
    private String app_privacy;
    private String app_size;
    private String app_ver;
    private Context context;
    private String developer;
    private String icon;
    private TextView mCancel;
    private TextView mDetail;
    private View mDivider;
    private TextView mDownloadBtn;
    private ImageView mIconImage;
    private TextView mOwner;
    private TextView mPrivacy;
    private TextView mTitle;
    private TextView mVersion;
    private OnDownloadClickListener mlistener;
    private String packageName;
    private String payment_types;
    private String privacy_agreement;
    private float score;

    public interface OnDownloadClickListener {
        void onCancle();

        void onConfirm();
    }

    private boolean appInfoIsNull() {
        return TextUtils.isEmpty(this.app_name) && TextUtils.isEmpty(this.app_feature) && TextUtils.isEmpty(this.app_intro) && TextUtils.isEmpty(this.app_size) && TextUtils.isEmpty(this.developer) && TextUtils.isEmpty(this.payment_types);
    }

    private void initData() {
        AdSlot adSlot;
        IAdSailAd iAdSailAd = nativeAd;
        if (iAdSailAd != null && (adSlot = iAdSailAd.getAdSlot()) != null) {
            try {
                this.app_name = adSlot.getAppName();
                this.icon = adSlot.getIcon();
                this.developer = adSlot.getDeveloper();
                this.app_intro = adSlot.getApp_intro();
                this.app_feature = adSlot.getApp_feature();
                this.payment_types = adSlot.getPayment_types();
                this.app_ver = adSlot.getApp_ver();
                this.app_size = adSlot.getApp_size();
                this.app_privacy = adSlot.getApp_privacy();
                this.privacy_agreement = adSlot.getPrivacy_agreement();
            } catch (Exception e) {
                Log.e(TAG, "DownLoadDialog: " + e.getMessage());
                e.printStackTrace();
            }
        }
        try {
            if (!TextUtils.isEmpty(this.icon)) {
                new o000(this.context).o00oO0O(this.mIconImage).o000000(this.icon);
            }
            if (TextUtils.isEmpty(this.app_name)) {
                this.mTitle.setVisibility(8);
            } else {
                this.mTitle.setText(this.app_name);
            }
            if (TextUtils.isEmpty(this.app_ver)) {
                this.mVersion.setVisibility(8);
            } else {
                this.mVersion.setText("版本号 ：" + this.app_ver);
            }
            if (TextUtils.isEmpty(this.developer)) {
                this.mOwner.setVisibility(8);
            } else {
                this.mOwner.setText("开发者 ：" + this.developer);
            }
            if (TextUtils.isEmpty(this.privacy_agreement)) {
                this.mDivider.setVisibility(8);
                this.mPrivacy.setVisibility(8);
            }
            if (appInfoIsNull()) {
                this.mDivider.setVisibility(8);
                this.mDetail.setVisibility(8);
            }
        } catch (Exception e2) {
            Log.e(TAG, "initData: " + e2.getMessage());
        }
    }

    private void initListener() {
        this.mDetail.setOnClickListener(this);
        this.mPrivacy.setOnClickListener(this);
        this.mDownloadBtn.setOnClickListener(this);
        this.mCancel.setOnClickListener(this);
    }

    private void initView() {
        this.mIconImage = (ImageView) findViewById(R.id.adsail_dialog_download_imageview);
        this.mTitle = (TextView) findViewById(R.id.adsail_dialog_download_title);
        this.mVersion = (TextView) findViewById(R.id.adsail_dialog_download_version);
        this.mOwner = (TextView) findViewById(R.id.adsail_dialog_download_owner);
        this.mDetail = (TextView) findViewById(R.id.adsail_dialog_download_appdetail);
        this.mDivider = findViewById(R.id.adsail_dialog_download_divider);
        this.mPrivacy = (TextView) findViewById(R.id.adsail_dialog_download_privacy);
        this.mDownloadBtn = (TextView) findViewById(R.id.adsail_dialog_download_downloadBtn);
        this.mCancel = (TextView) findViewById(R.id.adsail_dialog_download_cancel);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() == R.id.adsail_dialog_download_appdetail) {
            DownloadDialogBean downloadDialogBean = new DownloadDialogBean();
            downloadDialogBean.setApp_name(this.app_name);
            downloadDialogBean.setApp_feature(this.app_feature);
            downloadDialogBean.setApp_intro(this.app_intro);
            downloadDialogBean.setApp_privacy(this.app_privacy);
            downloadDialogBean.setApp_size(this.app_size);
            downloadDialogBean.setDeveloper(this.developer);
            downloadDialogBean.setPayment_types(this.payment_types);
            downloadDialogBean.setScore(this.score);
            HRDownloadDetailActivity.startActivity(this, downloadDialogBean);
            return;
        }
        if (view.getId() != R.id.adsail_dialog_download_privacy) {
            if (view.getId() == R.id.adsail_dialog_download_downloadBtn) {
                DownloadUtils.getInstance().startDownload(getApplicationContext(), nativeAd.getAdSlot().getdUrl()[0], nativeAd.getAdSlot().getAppName(), this.packageName, nativeAd.getAdSlot().getDn_start(), nativeAd.getAdSlot().getDn_succ(), nativeAd.getAdSlot().getDn_inst_start(), nativeAd.getAdSlot().getDn_inst_succ());
                Toast.makeText(this, "开始下载", 0).show();
            } else if (view.getId() != R.id.adsail_dialog_download_cancel) {
                return;
            }
            finish();
            return;
        }
        try {
            String str = this.privacy_agreement;
            Intent intent = new Intent(this, (Class<?>) HRWebviewActivity.class);
            intent.putExtra(HRWebviewActivity.EXTRA_AD_DURL_KEY, new String[]{str});
            startActivity(intent);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(getResources().getConfiguration().orientation == 2 ? R.layout.adsail_dialog_download_landscape : R.layout.adsail_dialog_download);
        initView();
        initListener();
        initData();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        nativeAd = null;
        downloadInfo = null;
    }

    public void setOnDownloadClickListener(OnDownloadClickListener onDownloadClickListener) {
        this.mlistener = onDownloadClickListener;
    }
}
