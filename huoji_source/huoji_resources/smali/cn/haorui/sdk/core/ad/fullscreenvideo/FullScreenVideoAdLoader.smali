.class public Lcn/haorui/sdk/core/ad/fullscreenvideo/FullScreenVideoAdLoader;
.super Lcn/haorui/sdk/core/ad/BaseFullScreenVideoAdLoader;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/haorui/sdk/core/ad/BaseFullScreenVideoAdLoader<",
        "Lcn/haorui/sdk/core/ad/fullscreenvideo/FullScreenVideoAdListener;",
        ">;"
    }
.end annotation


# static fields
.field public static final KEY_HEIGHT:Ljava/lang/String; = "KEY_HEIGHT"

.field public static final KEY_WIDTH:Ljava/lang/String; = "KEY_WIDTH"

.field private static final TAG:Ljava/lang/String; = "FullScreenVideoAdLoader"


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lcn/haorui/sdk/core/ad/fullscreenvideo/FullScreenVideoAdListener;)V
    .locals 0
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Lcn/haorui/sdk/core/ad/BaseFullScreenVideoAdLoader;-><init>(Landroid/content/Context;Ljava/lang/String;Lcn/haorui/sdk/core/loader/IAdLoadListener;)V

    return-void
.end method


# virtual methods
.method public createAdSailDelegateInternal(Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;)Lcn/haorui/sdk/core/loader/d;
    .locals 1

    new-instance v0, Lcn/haorui/sdk/platform/hr/fullscreenvideo/HRFullScreenVideoHRAdWrapper;

    invoke-direct {v0, p0, p1}, Lcn/haorui/sdk/platform/hr/fullscreenvideo/HRFullScreenVideoHRAdWrapper;-><init>(Lcn/haorui/sdk/core/ad/fullscreenvideo/FullScreenVideoAdLoader;Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;)V

    return-object v0
.end method

.method public createDelegate(Lcn/haorui/sdk/core/domain/SdkAdInfo;Lcn/haorui/sdk/core/domain/HRAdInfo;)Lcn/haorui/sdk/core/loader/d;
    .locals 1

    invoke-virtual {p1}, Lcn/haorui/sdk/core/domain/SdkAdInfo;->getSdk()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/haorui/sdk/core/a;->a(Ljava/lang/String;)Lcn/haorui/sdk/core/e;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lcn/haorui/sdk/core/e;->fullScreenVideoLoader(Lcn/haorui/sdk/core/ad/fullscreenvideo/FullScreenVideoAdLoader;Lcn/haorui/sdk/core/domain/SdkAdInfo;Lcn/haorui/sdk/core/domain/HRAdInfo;)Lcn/haorui/sdk/core/loader/d;

    move-result-object p1

    return-object p1
.end method

.method public loadAd(FF)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v1, "KEY_WIDTH"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string p2, "KEY_HEIGHT"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcn/haorui/sdk/core/loader/b;->loadAd(Ljava/util/Map;)V

    return-void
.end method
