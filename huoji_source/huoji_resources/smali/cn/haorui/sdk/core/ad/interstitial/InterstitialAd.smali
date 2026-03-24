.class public abstract Lcn/haorui/sdk/core/ad/interstitial/InterstitialAd;
.super Lcn/haorui/sdk/core/ad/BaseAd;
.source ""

# interfaces
.implements Lcn/haorui/sdk/core/ad/interstitial/IInterstitialAd;
.implements Ljava/io/Serializable;


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/core/loader/d;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/haorui/sdk/core/ad/BaseAd;-><init>(Lcn/haorui/sdk/core/loader/d;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public abstract showAd()V
.end method

.method public abstract showAd(Landroid/app/Activity;)V
.end method
