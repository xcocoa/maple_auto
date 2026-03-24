package cn.haorui.sdk.activity;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;
import cn.haorui.sdk.R;
import cn.haorui.sdk.adsail_ad.view.ListViewForScrollView;
import cn.haorui.sdk.core.domain.HRAdInfo;
import cn.haorui.sdk.core.utils.DownloadDialogBean;
import cn.haorui.sdk.core.utils.PrivacyBean;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class HRDownloadDetailActivity extends AppCompatActivity {
    private static final String TAG = "AdsailDownloadDetailActivity";
    private TextView app_feature;
    private LinearLayout app_feature_ll;
    private String app_intor_url;
    private TextView app_intro;
    private LinearLayout app_intro_ll;
    private TextView app_name;
    private LinearLayout app_name_ll;
    private LinearLayout app_permiss_ll;
    private TextView app_permiss_tv;
    private List<HRAdInfo.PermissionBean> app_permission;
    private String app_permission_url;
    private String app_privacy;
    private TextView app_size;
    private LinearLayout app_size_ll;
    private TextView app_ver;
    private LinearLayout app_ver_ll;
    private TextView developer;
    private LinearLayout developer_ll;
    private DownloadDialogBean downloadBean;
    private ImageView mBack;
    private ListViewForScrollView mListView;
    private List<PrivacyBean> mlist = new ArrayList();
    private TextView payment_types;
    private LinearLayout payment_types_ll;
    private LinearLayout private_agreement_ll;
    private TextView private_agreement_tv;
    private float score;

    public class MyAdapter extends BaseAdapter {
        private List<HRAdInfo.PermissionBean> permissionList;

        public MyAdapter(List<HRAdInfo.PermissionBean> list) {
            this.permissionList = list;
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return this.permissionList.size();
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            return this.permissionList.get(i);
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return 0L;
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            HRAdInfo.PermissionBean permissionBean;
            View viewInflate = View.inflate(viewGroup.getContext(), R.layout.adsail_item_list, null);
            TextView textView = (TextView) viewInflate.findViewById(R.id.adsail_item_list_name);
            TextView textView2 = (TextView) viewInflate.findViewById(R.id.adsail_item_list_desc);
            List<HRAdInfo.PermissionBean> list = this.permissionList;
            if (list != null && list.size() > 0 && (permissionBean = this.permissionList.get(i)) != null) {
                if (TextUtils.isEmpty(permissionBean.getDesc())) {
                    textView2.setVisibility(8);
                } else {
                    textView2.setVisibility(0);
                    textView2.setText(permissionBean.getDesc());
                }
                if (TextUtils.isEmpty(permissionBean.getTitle())) {
                    textView.setVisibility(8);
                } else {
                    textView.setVisibility(0);
                    textView.setText(permissionBean.getTitle());
                }
            }
            return viewInflate;
        }
    }

    private void initData() {
        DownloadDialogBean downloadDialogBean = (DownloadDialogBean) getIntent().getSerializableExtra("download_bean");
        this.downloadBean = downloadDialogBean;
        if (downloadDialogBean != null) {
            if (TextUtils.isEmpty(downloadDialogBean.getApp_name())) {
                this.app_name_ll.setVisibility(8);
            } else {
                this.app_name.setText(this.downloadBean.getApp_name());
            }
            if (!TextUtils.isEmpty(this.downloadBean.getApp_intro())) {
                this.app_intro.setText(this.downloadBean.getApp_intro());
            } else if (TextUtils.isEmpty(this.downloadBean.getApp_intor_url())) {
                this.app_intro_ll.setVisibility(8);
            } else {
                String app_intor_url = this.downloadBean.getApp_intor_url();
                this.app_intor_url = app_intor_url;
                this.app_intro.setText(app_intor_url);
                this.app_intro.setOnClickListener(new View.OnClickListener() { // from class: cn.haorui.sdk.activity.HRDownloadDetailActivity.2
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        HRDownloadDetailActivity.this.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(HRDownloadDetailActivity.this.app_intor_url)));
                    }
                });
            }
            if (this.downloadBean.getApp_permission() != null) {
                this.app_permission = this.downloadBean.getApp_permission();
                initPrivacy();
            } else if (!TextUtils.isEmpty(this.downloadBean.getApp_permission_url())) {
                this.app_permiss_ll.setVisibility(0);
                String app_permission_url = this.downloadBean.getApp_permission_url();
                this.app_permission_url = app_permission_url;
                this.app_permiss_tv.setText(app_permission_url);
                this.app_permiss_tv.setOnClickListener(new View.OnClickListener() { // from class: cn.haorui.sdk.activity.HRDownloadDetailActivity.3
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        HRDownloadDetailActivity.this.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(HRDownloadDetailActivity.this.app_permission_url)));
                    }
                });
            }
            if (TextUtils.isEmpty(this.downloadBean.getApp_feature())) {
                this.app_feature_ll.setVisibility(8);
            } else {
                this.app_feature.setText(this.downloadBean.getApp_feature());
            }
            if (TextUtils.isEmpty(this.downloadBean.getPayment_types())) {
                this.payment_types_ll.setVisibility(8);
            } else {
                this.payment_types.setText(this.downloadBean.getPayment_types());
            }
            if (TextUtils.isEmpty(this.downloadBean.getApp_ver())) {
                this.app_ver_ll.setVisibility(8);
            } else {
                this.app_ver.setText(this.downloadBean.getApp_ver());
            }
            if (TextUtils.isEmpty(this.downloadBean.getApp_size())) {
                this.app_size_ll.setVisibility(8);
            } else {
                this.app_size.setText(this.downloadBean.getApp_size());
            }
            if (TextUtils.isEmpty(this.downloadBean.getDeveloper())) {
                this.developer_ll.setVisibility(8);
            } else {
                this.developer.setText(this.downloadBean.getDeveloper());
            }
            if (this.downloadBean.getApp_permission() != null) {
                this.app_permission = this.downloadBean.getApp_permission();
                initPrivacy();
            } else if (!TextUtils.isEmpty(this.downloadBean.getApp_permission_url())) {
                this.app_permiss_ll.setVisibility(0);
                String app_permission_url2 = this.downloadBean.getApp_permission_url();
                this.app_permission_url = app_permission_url2;
                this.app_permiss_tv.setText(app_permission_url2);
                this.app_permiss_tv.setOnClickListener(new View.OnClickListener() { // from class: cn.haorui.sdk.activity.HRDownloadDetailActivity.4
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        HRDownloadDetailActivity.this.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(HRDownloadDetailActivity.this.app_permission_url)));
                    }
                });
            }
            if (TextUtils.isEmpty(this.downloadBean.getApp_private_agreement())) {
                return;
            }
            this.private_agreement_ll.setVisibility(0);
            final String app_private_agreement = this.downloadBean.getApp_private_agreement();
            this.private_agreement_tv.setText(app_private_agreement);
            this.private_agreement_tv.setOnClickListener(new View.OnClickListener() { // from class: cn.haorui.sdk.activity.HRDownloadDetailActivity.5
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    try {
                        Intent intent = new Intent(HRDownloadDetailActivity.this, (Class<?>) HRWebviewActivity.class);
                        intent.putExtra(HRWebviewActivity.EXTRA_AD_DURL_KEY, new String[]{app_private_agreement});
                        HRDownloadDetailActivity.this.startActivity(intent);
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
            });
        }
    }

    private void initPrivacy() {
        List<HRAdInfo.PermissionBean> app_permission = this.downloadBean.getApp_permission();
        this.mlist.clear();
        if (app_permission == null || app_permission.size() <= 0) {
            return;
        }
        this.mListView.setAdapter((ListAdapter) new MyAdapter(app_permission));
    }

    private void initView() {
        this.mBack = (ImageView) findViewById(R.id.adsail_ic_back);
        this.mListView = (ListViewForScrollView) findViewById(R.id.adsail_listView);
        this.app_name = (TextView) findViewById(R.id.adsail_app_name);
        this.app_name_ll = (LinearLayout) findViewById(R.id.adsail_app_name_ll);
        this.app_intro = (TextView) findViewById(R.id.adsail_app_intro);
        this.app_intro_ll = (LinearLayout) findViewById(R.id.adsail_app_intro_ll);
        this.app_feature = (TextView) findViewById(R.id.adsail_app_feature);
        this.app_feature_ll = (LinearLayout) findViewById(R.id.adsail_app_feature_ll);
        this.payment_types = (TextView) findViewById(R.id.adsail_payment_types);
        this.payment_types_ll = (LinearLayout) findViewById(R.id.adsail_payment_types_ll);
        this.app_ver = (TextView) findViewById(R.id.adsail_app_ver);
        this.app_ver_ll = (LinearLayout) findViewById(R.id.adsail_app_ver_ll);
        this.app_size = (TextView) findViewById(R.id.adsail_app_size);
        this.app_size_ll = (LinearLayout) findViewById(R.id.adsail_app_size_ll);
        this.developer = (TextView) findViewById(R.id.adsail_developer);
        this.developer_ll = (LinearLayout) findViewById(R.id.adsail_developer_ll);
        this.app_permiss_ll = (LinearLayout) findViewById(R.id.adsail_app_Permiss_ll);
        this.app_permiss_tv = (TextView) findViewById(R.id.adsail_app_permiss_tv);
        this.private_agreement_ll = (LinearLayout) findViewById(R.id.adsail_app_private_agrement_ll);
        this.private_agreement_tv = (TextView) findViewById(R.id.adsail_app_private_agrement_tv);
        this.mBack.setOnClickListener(new View.OnClickListener() { // from class: cn.haorui.sdk.activity.HRDownloadDetailActivity.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                HRDownloadDetailActivity.this.finish();
            }
        });
    }

    public static void startActivity(Context context, DownloadDialogBean downloadDialogBean) {
        Intent intent = new Intent(context, (Class<?>) HRDownloadDetailActivity.class);
        intent.putExtra("download_bean", downloadDialogBean);
        context.startActivity(intent);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.adsail_activity_download_detail);
        initView();
        initData();
    }
}
