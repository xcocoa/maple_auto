package cn.haorui.sdk.platform.hr.recycler;

import android.content.Context;
import android.graphics.Rect;
import android.os.Handler;
import android.os.SystemClock;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import cn.haorui.sdk.R;
import cn.haorui.sdk.adsail_ad.MediaView;
import cn.haorui.sdk.adsail_ad.nativ.NativeAdData;
import cn.haorui.sdk.adsail_ad.nativ.NativeAdDataImpl;
import cn.haorui.sdk.adsail_ad.nativ.NormalMediaView;
import cn.haorui.sdk.core.AdSdk;
import cn.haorui.sdk.core.ad.recycler.ExpressMediaListener;
import cn.haorui.sdk.core.ad.recycler.IAdExposureListener;
import cn.haorui.sdk.core.ad.recycler.RecyclerAdData;
import cn.haorui.sdk.core.ad.recycler.RecyclerAdMediaListener;
import cn.haorui.sdk.core.ad.recycler.RecyclerAdUtils;
import cn.haorui.sdk.core.ad.recycler.RecylcerAdInteractionListener;
import cn.haorui.sdk.core.domain.HRAdInfo;
import cn.haorui.sdk.core.loader.g;
import cn.haorui.sdk.core.utils.AderUtil;
import cn.haorui.sdk.core.utils.HRConstants;
import cn.haorui.sdk.core.utils.LogUtil;
import cn.haorui.sdk.core.utils.ResultBean;
import cn.haorui.sdk.core.view.TouchAdContainer;
import cn.haorui.sdk.core.view.TouchPositionListener;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class HRRecyclerAdDataAdapter implements RecyclerAdData {
    private static final String TAG = "AdSailRecyclerAdDataAdapter";
    private HRHRAdNativeWrapper adWrapper;
    private HRInteractionListenerAdapter hrInteractionListenerAdapter;
    private IAdExposureListener iAdExposureListener;
    private boolean isAdExposure;
    private NativeAdData nativeAdData;
    private int shakeId;

    public HRRecyclerAdDataAdapter(@NonNull HRHRAdNativeWrapper hRHRAdNativeWrapper, @NonNull NativeAdData nativeAdData) {
        this.adWrapper = hRHRAdNativeWrapper;
        this.nativeAdData = nativeAdData;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x00aa A[PHI: r1
      0x00aa: PHI (r1v3 android.view.ViewGroup) = (r1v2 android.view.ViewGroup), (r1v5 android.view.ViewGroup) binds: [B:3:0x001e, B:5:0x0029] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // cn.haorui.sdk.core.ad.recycler.RecyclerAdData
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void bindAdToView(final Context context, @NonNull final ViewGroup viewGroup, List<View> list, RecylcerAdInteractionListener recylcerAdInteractionListener) {
        ViewGroup viewGroup2;
        final Rect rect = new Rect();
        viewGroup.getViewTreeObserver().addOnPreDrawListener(new ViewTreeObserver.OnPreDrawListener() { // from class: cn.haorui.sdk.platform.hr.recycler.HRRecyclerAdDataAdapter.1
            @Override // android.view.ViewTreeObserver.OnPreDrawListener
            public boolean onPreDraw() {
                if (!viewGroup.getGlobalVisibleRect(rect)) {
                    return true;
                }
                if (((long) rect.height()) * ((long) rect.width()) >= ((long) viewGroup.getHeight()) * ((long) viewGroup.getWidth()) * 0.3d && !HRRecyclerAdDataAdapter.this.isAdExposure) {
                    HRRecyclerAdDataAdapter.this.isAdExposure = true;
                    if (HRRecyclerAdDataAdapter.this.adWrapper.getHRAdListenerAdapter() != null && HRRecyclerAdDataAdapter.this.nativeAdData.getAdPatternType() != 2) {
                        HRRecyclerAdDataAdapter.this.adWrapper.getHRAdListenerAdapter().onADExposure();
                    }
                    if ((HRRecyclerAdDataAdapter.this.nativeAdData.getAdSlot().getAct_type() & 4) == 4 || (HRRecyclerAdDataAdapter.this.nativeAdData.getAdSlot().getAct_type() & 8) == 8) {
                        int i = (HRRecyclerAdDataAdapter.this.nativeAdData.getAdSlot().getAct_type() & 8) == 8 ? 2 : 1;
                        if (HRRecyclerAdDataAdapter.this.shakeId == 0) {
                            HRRecyclerAdDataAdapter.this.shakeId = g.c.a.b();
                        }
                        g.c.a.a(HRRecyclerAdDataAdapter.this.nativeAdData.getAdSlot().getPosId(), HRRecyclerAdDataAdapter.this.nativeAdData.getAdSlot().getLoadedTime(), HRRecyclerAdDataAdapter.this.nativeAdData.getAdSlot().getDclk());
                        g.c.a.a(HRRecyclerAdDataAdapter.this.nativeAdData.getAdSlot().getPower_index(), i, HRRecyclerAdDataAdapter.this.nativeAdData.getAdSlot().getPower_delay(), HRRecyclerAdDataAdapter.this.nativeAdData.getAdSlot().getPower_count(), HRRecyclerAdDataAdapter.this.shakeId, HRRecyclerAdDataAdapter.this.nativeAdData.getAdSlot().getEcpm(), new g.d() { // from class: cn.haorui.sdk.platform.hr.recycler.HRRecyclerAdDataAdapter.1.1
                            @Override // cn.haorui.sdk.core.loader.g.d
                            public void onShake() {
                                g.c.a.a(HRRecyclerAdDataAdapter.this.shakeId);
                                if (HRRecyclerAdDataAdapter.this.hrInteractionListenerAdapter != null) {
                                    HRRecyclerAdDataAdapter.this.hrInteractionListenerAdapter.onAdClicked();
                                }
                            }
                        });
                        g.c.a.a(true);
                    }
                    viewGroup.getViewTreeObserver().removeOnPreDrawListener(this);
                }
                return true;
            }
        });
        ViewGroup[] info = RecyclerAdUtils.getInfo(viewGroup, getClass(), TouchAdContainer.class);
        ViewGroup viewGroup3 = info[1];
        if (viewGroup3 == null) {
            viewGroup3 = info[0];
            ViewGroup viewGroup4 = (ViewGroup) viewGroup3.getParent();
            if (viewGroup4 == null) {
                viewGroup2 = viewGroup3;
            } else {
                int iIndexOfChild = viewGroup4.indexOfChild(viewGroup3);
                ViewGroup.LayoutParams layoutParams = viewGroup3.getLayoutParams();
                ViewGroup.LayoutParams layoutParams2 = new ViewGroup.LayoutParams(-1, -1);
                viewGroup4.removeView(viewGroup3);
                TouchAdContainer touchAdContainer = new TouchAdContainer(viewGroup3.getContext());
                touchAdContainer.setTouchPositionListener(new TouchPositionListener(this.nativeAdData));
                touchAdContainer.addView(viewGroup3, layoutParams2);
                touchAdContainer.setId(viewGroup3.getId());
                if (AdSdk.adConfig().showFeedAdLogo()) {
                    try {
                        ImageView imageView = new ImageView(viewGroup3.getContext());
                        imageView.setAdjustViewBounds(true);
                        FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(-2, (int) ((viewGroup3.getContext().getResources().getDisplayMetrics().density * 13.0f) + 0.5f));
                        layoutParams3.gravity = 85;
                        imageView.setImageDrawable(context.getResources().getDrawable(R.drawable.adsail_ad));
                        touchAdContainer.addView(imageView, layoutParams3);
                    } catch (Throwable th) {
                        th.printStackTrace();
                    }
                }
                viewGroup4.addView(touchAdContainer, iIndexOfChild, layoutParams);
                viewGroup2 = touchAdContainer;
            }
        }
        HRInteractionListenerAdapter hRInteractionListenerAdapter = new HRInteractionListenerAdapter(this.nativeAdData, recylcerAdInteractionListener);
        this.hrInteractionListenerAdapter = hRInteractionListenerAdapter;
        this.nativeAdData.bindAdToView(context, viewGroup2, list, hRInteractionListenerAdapter);
        this.nativeAdData.setInteractionListener(recylcerAdInteractionListener);
        View viewFindViewWithTag = viewGroup2.findViewWithTag(MediaView.MEDIA_VIEW_TAG);
        if (viewFindViewWithTag == null || viewFindViewWithTag.getParent() == null || !(viewFindViewWithTag.getParent() instanceof ViewGroup)) {
            return;
        }
        ((ViewGroup) viewFindViewWithTag.getParent()).removeView(viewFindViewWithTag);
    }

    @Override // cn.haorui.sdk.core.ad.recycler.RecyclerAdData
    public void bindMediaView(ViewGroup viewGroup, FrameLayout.LayoutParams layoutParams, RecyclerAdMediaListener recyclerAdMediaListener) {
        viewGroup.removeAllViews();
        NativeAdData nativeAdData = this.nativeAdData;
        if (nativeAdData instanceof NativeAdDataImpl) {
            ((NativeAdDataImpl) nativeAdData).setOnExposureListener(getAdExposureListener());
        }
        this.nativeAdData.bindMediaView(viewGroup, layoutParams, new HRAdMediaListenerAdapter(this.adWrapper.getContext(), this.adWrapper.getAdSlot(), recyclerAdMediaListener));
    }

    @Override // cn.haorui.sdk.core.ad.recycler.RecyclerAdData
    public void bindMediaView(ViewGroup viewGroup, RecyclerAdMediaListener recyclerAdMediaListener) {
        viewGroup.removeAllViews();
        NativeAdData nativeAdData = this.nativeAdData;
        if (nativeAdData instanceof NativeAdDataImpl) {
            ((NativeAdDataImpl) nativeAdData).setOnExposureListener(getAdExposureListener());
        }
        this.nativeAdData.bindMediaView(viewGroup, null, new HRAdMediaListenerAdapter(this.adWrapper.getContext(), this.adWrapper.getAdSlot(), recyclerAdMediaListener));
    }

    @Override // cn.haorui.sdk.core.ad.recycler.RecyclerAdData
    public void destroy() {
        NativeAdData nativeAdData = this.nativeAdData;
        if (nativeAdData == null) {
            return;
        }
        if (nativeAdData.getMediaView() != null && (this.nativeAdData.getMediaView() instanceof NormalMediaView)) {
            ((NormalMediaView) this.nativeAdData.getMediaView()).destroy();
        }
        g.c.a.a(this.shakeId);
    }

    @Override // cn.haorui.sdk.core.ad.recycler.RecyclerAdData
    public String getActionText() {
        NativeAdData nativeAdData = this.nativeAdData;
        return (nativeAdData == null || nativeAdData.getAdSlot() == null) ? "" : this.nativeAdData.getAdSlot().getActionText();
    }

    public IAdExposureListener getAdExposureListener() {
        return this.iAdExposureListener;
    }

    @Override // cn.haorui.sdk.core.ad.recycler.RecyclerAdData
    public int getAdPatternType() {
        NativeAdData nativeAdData = this.nativeAdData;
        if (nativeAdData != null) {
            if (nativeAdData.getAdSlot().getAdPatternType() == 2) {
                return 2;
            }
            int style_id = this.nativeAdData.getAdSlot().getStyle_id();
            if (style_id != 1 && style_id != 2) {
                if (style_id == 3 || style_id == 4) {
                    return 11;
                }
                if (style_id != 5) {
                    return this.nativeAdData.getAdPatternType();
                }
                return 13;
            }
        }
        return 12;
    }

    @Override // cn.haorui.sdk.core.ad.recycler.RecyclerAdData
    public View getAdView() {
        NativeAdData nativeAdData = this.nativeAdData;
        if (nativeAdData != null) {
            return nativeAdData.getAdView();
        }
        return null;
    }

    @Override // cn.haorui.sdk.core.ad.recycler.RecyclerAdData
    public String getAppIntro() {
        NativeAdData nativeAdData = this.nativeAdData;
        return (nativeAdData == null || nativeAdData.getAdSlot() == null) ? "" : this.nativeAdData.getAdSlot().getApp_intro();
    }

    @Override // cn.haorui.sdk.core.ad.recycler.RecyclerAdData
    public String getAppIntroUrl() {
        NativeAdData nativeAdData = this.nativeAdData;
        return (nativeAdData == null || nativeAdData.getAdSlot() == null) ? "" : this.nativeAdData.getAdSlot().getApp_intor_url();
    }

    @Override // cn.haorui.sdk.core.ad.recycler.RecyclerAdData
    public String getAppName() {
        NativeAdData nativeAdData = this.nativeAdData;
        return (nativeAdData == null || nativeAdData.getAdSlot() == null) ? "" : this.nativeAdData.getAdSlot().getAppName();
    }

    @Override // cn.haorui.sdk.core.ad.recycler.RecyclerAdData
    public List<HRAdInfo.PermissionBean> getAppPermissionList() {
        NativeAdData nativeAdData = this.nativeAdData;
        if (nativeAdData == null || nativeAdData.getAdSlot() == null) {
            return null;
        }
        return this.nativeAdData.getAdSlot().getApp_permission();
    }

    @Override // cn.haorui.sdk.core.ad.recycler.RecyclerAdData
    public String getAppPremissionUrl() {
        NativeAdData nativeAdData = this.nativeAdData;
        return (nativeAdData == null || nativeAdData.getAdSlot() == null) ? "" : this.nativeAdData.getAdSlot().getApp_permission_url();
    }

    @Override // cn.haorui.sdk.core.ad.recycler.RecyclerAdData
    public String getAppSize() {
        NativeAdData nativeAdData = this.nativeAdData;
        return (nativeAdData == null || nativeAdData.getAdSlot() == null) ? "" : this.nativeAdData.getAdSlot().getApp_size();
    }

    @Override // cn.haorui.sdk.core.ad.recycler.RecyclerAdData
    public String getAppVersion() {
        NativeAdData nativeAdData = this.nativeAdData;
        return (nativeAdData == null || nativeAdData.getAdSlot() == null) ? "" : this.nativeAdData.getAdSlot().getApp_ver();
    }

    @Override // cn.haorui.sdk.core.ad.recycler.RecyclerAdData
    public String getContent() {
        NativeAdData nativeAdData = this.nativeAdData;
        return (nativeAdData == null || nativeAdData.getAdSlot() == null) ? "" : this.nativeAdData.getAdSlot().getContent();
    }

    @Override // cn.haorui.sdk.core.ad.recycler.RecyclerAdData
    public ResultBean getData() {
        ResultBean resultBean = new ResultBean();
        resultBean.setCid(this.adWrapper.getAdSlot().getCid());
        resultBean.setCat(this.adWrapper.getAdSlot().getCat());
        resultBean.setAderId(this.adWrapper.getAdSlot().getAder_id());
        resultBean.setFromId(this.adWrapper.getAdSlot().getFromId());
        resultBean.setReqId(this.adWrapper.getAdSlot().getReq_id());
        resultBean.setPrice(this.adWrapper.getAdSlot().getEcpm());
        resultBean.setEcpm(this.adWrapper.getAdSlot().getEcpm() + "");
        resultBean.setS_ext(this.adWrapper.getAdSlot().getS_ext());
        resultBean.setS_code(this.adWrapper.getAdSlot().getS_code());
        resultBean.setSdkName(HRConstants.PLATFORM_HR);
        return resultBean;
    }

    public String getDeepLink() {
        if (AderUtil.getIsOperationContent(this.nativeAdData.getAdSlot().getAder_id())) {
            return this.nativeAdData.getAdSlot().getDeep_link();
        }
        return null;
    }

    @Override // cn.haorui.sdk.core.ad.recycler.RecyclerAdData
    public String getDesc() {
        NativeAdData nativeAdData = this.nativeAdData;
        return nativeAdData != null ? nativeAdData.getDesc() : "";
    }

    @Override // cn.haorui.sdk.core.ad.recycler.RecyclerAdData
    public String getDeveloper() {
        NativeAdData nativeAdData = this.nativeAdData;
        return (nativeAdData == null || nativeAdData.getAdSlot() == null) ? "" : this.nativeAdData.getAdSlot().getDeveloper();
    }

    @Override // cn.haorui.sdk.core.ad.recycler.RecyclerAdData
    public long getDuration() {
        NativeAdData nativeAdData = this.nativeAdData;
        if (nativeAdData == null || nativeAdData.getAdSlot() == null) {
            return 0L;
        }
        return this.nativeAdData.getAdSlot().getVideo_duration() * 1000;
    }

    @Override // cn.haorui.sdk.core.ad.recycler.RecyclerAdData
    public String getFrom() {
        NativeAdData nativeAdData = this.nativeAdData;
        return (nativeAdData == null || nativeAdData.getAdSlot() == null) ? "" : this.nativeAdData.getAdSlot().getFrom();
    }

    @Override // cn.haorui.sdk.core.ad.recycler.RecyclerAdData
    public String getFromId() {
        NativeAdData nativeAdData = this.nativeAdData;
        return (nativeAdData == null || nativeAdData.getAdSlot() == null) ? "" : this.nativeAdData.getAdSlot().getFromId();
    }

    @Override // cn.haorui.sdk.core.ad.recycler.RecyclerAdData
    public String getFromLogo() {
        NativeAdData nativeAdData = this.nativeAdData;
        return (nativeAdData == null || nativeAdData.getAdSlot() == null) ? "" : this.nativeAdData.getAdSlot().getFromLogo();
    }

    @Override // cn.haorui.sdk.core.ad.recycler.RecyclerAdData
    public int getHeight() {
        NativeAdData nativeAdData = this.nativeAdData;
        if (nativeAdData == null || nativeAdData.getAdSlot() == null) {
            return 0;
        }
        return this.nativeAdData.getAdSlot().getHeight();
    }

    @Override // cn.haorui.sdk.core.ad.recycler.RecyclerAdData
    public String getIconTitle() {
        NativeAdData nativeAdData = this.nativeAdData;
        return (nativeAdData == null || nativeAdData.getAdSlot() == null) ? "" : this.nativeAdData.getAdSlot().getIconTitle();
    }

    @Override // cn.haorui.sdk.core.ad.recycler.RecyclerAdData
    public String getIconUrl() {
        NativeAdData nativeAdData = this.nativeAdData;
        return nativeAdData != null ? nativeAdData.getIconUrl() : "";
    }

    @Override // cn.haorui.sdk.core.ad.recycler.RecyclerAdData
    public String[] getImgUrls() {
        NativeAdData nativeAdData = this.nativeAdData;
        if (nativeAdData != null) {
            return nativeAdData.getImgUrls();
        }
        return null;
    }

    @Override // cn.haorui.sdk.core.ad.recycler.RecyclerAdData
    public int getInteractionType() {
        NativeAdData nativeAdData = this.nativeAdData;
        if (nativeAdData != null) {
            return nativeAdData.getInteractionType();
        }
        return 0;
    }

    public boolean getIsOperationContent() {
        return AderUtil.getIsOperationContent(this.nativeAdData.getAdSlot().getAder_id());
    }

    @Override // cn.haorui.sdk.core.ad.recycler.RecyclerAdData
    public String getPackageName() {
        NativeAdData nativeAdData = this.nativeAdData;
        return (nativeAdData == null || nativeAdData.getAdSlot() == null) ? "" : this.nativeAdData.getAdSlot().getPackageName();
    }

    @Override // cn.haorui.sdk.core.ad.recycler.RecyclerAdData
    public String getPlatFormEcpm() {
        return null;
    }

    @Override // cn.haorui.sdk.core.ad.recycler.RecyclerAdData
    public String getPlatform() {
        return HRConstants.PLATFORM_HR;
    }

    @Override // cn.haorui.sdk.core.ad.recycler.RecyclerAdData
    public String getPrivacyAgreement() {
        NativeAdData nativeAdData = this.nativeAdData;
        return (nativeAdData == null || nativeAdData.getAdSlot() == null) ? "" : this.nativeAdData.getAdSlot().getPrivacy_agreement();
    }

    @Override // cn.haorui.sdk.core.ad.recycler.RecyclerAdData
    public int getRecyclerType() {
        return 1;
    }

    @Override // cn.haorui.sdk.core.ad.recycler.RecyclerAdData
    public String getTitle() {
        NativeAdData nativeAdData = this.nativeAdData;
        return nativeAdData != null ? nativeAdData.getTitle() : "";
    }

    @Override // cn.haorui.sdk.core.ad.recycler.RecyclerAdData
    public String getVideoUrl() {
        return null;
    }

    @Override // cn.haorui.sdk.core.ad.recycler.RecyclerAdData
    public int getWidth() {
        NativeAdData nativeAdData = this.nativeAdData;
        if (nativeAdData == null || nativeAdData.getAdSlot() == null) {
            return 0;
        }
        return this.nativeAdData.getAdSlot().getWidth();
    }

    @Override // cn.haorui.sdk.core.ad.recycler.RecyclerAdData
    public boolean isAdValid() {
        int expire_timestamp = this.adWrapper.getAdSlot().getExpire_timestamp();
        return SystemClock.uptimeMillis() - this.adWrapper.getAdSlot().getLoadedTime() < (expire_timestamp <= 0 ? 1740000L : (long) (expire_timestamp * 1000));
    }

    @Override // cn.haorui.sdk.core.ad.recycler.RecyclerAdData
    public boolean isNativeExpress() {
        return false;
    }

    @Override // cn.haorui.sdk.core.ad.recycler.RecyclerAdData
    public void mute() {
        NativeAdData nativeAdData;
        if (getAdPatternType() != 2 || (nativeAdData = this.nativeAdData) == null || nativeAdData.getMediaView() == null) {
            return;
        }
        this.nativeAdData.getMediaView().mute();
    }

    public void pause() {
        NativeAdData nativeAdData;
        if (getAdPatternType() != 2 || (nativeAdData = this.nativeAdData) == null || nativeAdData.getMediaView() == null) {
            return;
        }
        this.nativeAdData.getMediaView().pause();
    }

    @Override // cn.haorui.sdk.core.ad.recycler.RecyclerAdData
    public void pauseVideo() {
        NativeAdData nativeAdData;
        if (getAdPatternType() != 2 || (nativeAdData = this.nativeAdData) == null || nativeAdData.getMediaView() == null) {
            return;
        }
        this.nativeAdData.getMediaView().pause();
    }

    @Override // cn.haorui.sdk.core.ad.recycler.RecyclerAdData
    public void replay() {
        LogUtil.e(TAG, "AdPatternType=" + getAdPatternType());
        if (getAdPatternType() == 2) {
            new Handler().postDelayed(new Runnable() { // from class: cn.haorui.sdk.platform.hr.recycler.HRRecyclerAdDataAdapter.3
                @Override // java.lang.Runnable
                public void run() {
                    if (HRRecyclerAdDataAdapter.this.nativeAdData == null || HRRecyclerAdDataAdapter.this.nativeAdData.getMediaView() == null) {
                        return;
                    }
                    HRRecyclerAdDataAdapter.this.nativeAdData.getMediaView().replay();
                }
            }, 300L);
        }
    }

    public void resume() {
        NativeAdData nativeAdData;
        if (getAdPatternType() != 2 || (nativeAdData = this.nativeAdData) == null || nativeAdData.getMediaView() == null) {
            return;
        }
        this.nativeAdData.getMediaView().resume();
    }

    @Override // cn.haorui.sdk.core.ad.recycler.RecyclerAdData
    public void resumeVideo() {
        NativeAdData nativeAdData;
        if (getAdPatternType() != 2 || (nativeAdData = this.nativeAdData) == null || nativeAdData.getMediaView() == null) {
            return;
        }
        this.nativeAdData.getMediaView().resume();
    }

    @Override // cn.haorui.sdk.core.ad.recycler.RecyclerAdData
    public void setExpressMediaListener(ExpressMediaListener expressMediaListener) {
    }

    @Override // cn.haorui.sdk.core.ad.recycler.RecyclerAdData
    public void setOnADExposureListener(IAdExposureListener iAdExposureListener) {
        this.iAdExposureListener = iAdExposureListener;
    }

    @Override // cn.haorui.sdk.core.ad.recycler.RecyclerAdData
    public void startVideo() {
        if (getAdPatternType() == 2) {
            new Handler().postDelayed(new Runnable() { // from class: cn.haorui.sdk.platform.hr.recycler.HRRecyclerAdDataAdapter.2
                @Override // java.lang.Runnable
                public void run() {
                    if (HRRecyclerAdDataAdapter.this.nativeAdData == null || HRRecyclerAdDataAdapter.this.nativeAdData.getMediaView() == null) {
                        return;
                    }
                    HRRecyclerAdDataAdapter.this.nativeAdData.getMediaView().start();
                }
            }, 300L);
        }
    }

    @Override // cn.haorui.sdk.core.ad.recycler.RecyclerAdData
    public void stopVideo() {
        NativeAdData nativeAdData = this.nativeAdData;
        if (nativeAdData == null || nativeAdData.getMediaView() == null || !(this.nativeAdData.getMediaView() instanceof NormalMediaView)) {
            return;
        }
        ((NormalMediaView) this.nativeAdData.getMediaView()).stop();
    }

    @Override // cn.haorui.sdk.core.ad.recycler.RecyclerAdData
    public void unmute() {
        NativeAdData nativeAdData;
        if (getAdPatternType() != 2 || (nativeAdData = this.nativeAdData) == null || nativeAdData.getMediaView() == null) {
            return;
        }
        this.nativeAdData.getMediaView().unmute();
    }
}
