.class public interface abstract Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;
.super Ljava/lang/Object;
.source ""


# virtual methods
.method public abstract bindAdToView(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/util/List;Lcn/haorui/sdk/core/ad/recycler/RecylcerAdInteractionListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Lcn/haorui/sdk/core/ad/recycler/RecylcerAdInteractionListener;",
            ")V"
        }
    .end annotation
.end method

.method public abstract bindMediaView(Landroid/view/ViewGroup;Landroid/widget/FrameLayout$LayoutParams;Lcn/haorui/sdk/core/ad/recycler/RecyclerAdMediaListener;)V
.end method

.method public abstract bindMediaView(Landroid/view/ViewGroup;Lcn/haorui/sdk/core/ad/recycler/RecyclerAdMediaListener;)V
.end method

.method public abstract destroy()V
.end method

.method public abstract getActionText()Ljava/lang/String;
.end method

.method public abstract getAdPatternType()I
.end method

.method public abstract getAdView()Landroid/view/View;
.end method

.method public abstract getAppIntro()Ljava/lang/String;
.end method

.method public abstract getAppIntroUrl()Ljava/lang/String;
.end method

.method public abstract getAppName()Ljava/lang/String;
.end method

.method public abstract getAppPermissionList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/haorui/sdk/core/domain/HRAdInfo$PermissionBean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAppPremissionUrl()Ljava/lang/String;
.end method

.method public abstract getAppSize()Ljava/lang/String;
.end method

.method public abstract getAppVersion()Ljava/lang/String;
.end method

.method public abstract getContent()Ljava/lang/String;
.end method

.method public abstract getData()Lcn/haorui/sdk/core/utils/ResultBean;
.end method

.method public abstract getDesc()Ljava/lang/String;
.end method

.method public abstract getDeveloper()Ljava/lang/String;
.end method

.method public abstract getDuration()J
.end method

.method public abstract getFrom()Ljava/lang/String;
.end method

.method public abstract getFromId()Ljava/lang/String;
.end method

.method public abstract getFromLogo()Ljava/lang/String;
.end method

.method public abstract getHeight()I
.end method

.method public abstract getIconTitle()Ljava/lang/String;
.end method

.method public abstract getIconUrl()Ljava/lang/String;
.end method

.method public abstract getImgUrls()[Ljava/lang/String;
.end method

.method public abstract getInteractionType()I
.end method

.method public abstract getPackageName()Ljava/lang/String;
.end method

.method public abstract getPlatFormEcpm()Ljava/lang/String;
.end method

.method public abstract getPlatform()Ljava/lang/String;
.end method

.method public abstract getPrivacyAgreement()Ljava/lang/String;
.end method

.method public abstract getRecyclerType()I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getTitle()Ljava/lang/String;
.end method

.method public abstract getVideoUrl()Ljava/lang/String;
.end method

.method public abstract getWidth()I
.end method

.method public abstract isAdValid()Z
.end method

.method public abstract isNativeExpress()Z
.end method

.method public abstract mute()V
.end method

.method public abstract pauseVideo()V
.end method

.method public abstract replay()V
.end method

.method public abstract resumeVideo()V
.end method

.method public abstract setExpressMediaListener(Lcn/haorui/sdk/core/ad/recycler/ExpressMediaListener;)V
.end method

.method public abstract setOnADExposureListener(Lcn/haorui/sdk/core/ad/recycler/IAdExposureListener;)V
.end method

.method public abstract startVideo()V
.end method

.method public abstract stopVideo()V
.end method

.method public abstract unmute()V
.end method
