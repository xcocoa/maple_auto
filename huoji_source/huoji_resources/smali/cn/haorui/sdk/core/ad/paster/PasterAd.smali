.class public interface abstract Lcn/haorui/sdk/core/ad/paster/PasterAd;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcn/haorui/sdk/core/ad/IAd;


# virtual methods
.method public abstract destroy()V
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

.method public abstract getCurrentPosition()J
.end method

.method public abstract getDeveloper()Ljava/lang/String;
.end method

.method public abstract getDuration()J
.end method

.method public abstract getPrivacyAgreement()Ljava/lang/String;
.end method

.method public abstract mute()V
.end method

.method public abstract onPause()V
.end method

.method public abstract onResume()V
.end method

.method public abstract pause()V
.end method

.method public abstract replay()V
.end method

.method public abstract resume()V
.end method

.method public abstract setOnPreparedListener(Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView$IPreparedListener;)V
.end method

.method public abstract start()V
.end method

.method public abstract unmute()V
.end method
