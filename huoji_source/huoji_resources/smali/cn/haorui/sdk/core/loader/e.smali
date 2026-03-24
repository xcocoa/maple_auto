.class public Lcn/haorui/sdk/core/loader/e;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static a:Lcn/haorui/sdk/core/oaid/b;


# direct methods
.method public static a(Lcn/haorui/sdk/core/loader/d;Lcn/haorui/sdk/core/loader/IAdLoadListener;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcn/haorui/sdk/core/loader/d;",
            "Lcn/haorui/sdk/core/loader/IAdLoadListener;",
            ")TT;"
        }
    .end annotation

    instance-of v0, p1, Lcn/haorui/sdk/core/ad/recycler/RecyclerAdListener;

    if-eqz v0, :cond_0

    new-instance v0, Lcn/haorui/sdk/core/ad/recycler/RecyclerAdListenerProxy;

    check-cast p1, Lcn/haorui/sdk/core/ad/recycler/RecyclerAdListener;

    invoke-direct {v0, p0, p1}, Lcn/haorui/sdk/core/ad/recycler/RecyclerAdListenerProxy;-><init>(Lcn/haorui/sdk/core/loader/d;Lcn/haorui/sdk/core/ad/recycler/RecyclerAdListener;)V

    return-object v0

    :cond_0
    instance-of v0, p1, Lcn/haorui/sdk/core/ad/banner/BannerAdListener;

    if-eqz v0, :cond_1

    new-instance v0, Lcn/haorui/sdk/core/ad/banner/BannerAdListenerProxy;

    check-cast p1, Lcn/haorui/sdk/core/ad/banner/BannerAdListener;

    invoke-direct {v0, p0, p1}, Lcn/haorui/sdk/core/ad/banner/BannerAdListenerProxy;-><init>(Lcn/haorui/sdk/core/loader/d;Lcn/haorui/sdk/core/ad/banner/BannerAdListener;)V

    return-object v0

    :cond_1
    instance-of v0, p1, Lcn/haorui/sdk/core/ad/splash/SplashAdListener;

    if-eqz v0, :cond_2

    new-instance v0, Lcn/haorui/sdk/core/ad/splash/SplashAdListenerProxy;

    check-cast p1, Lcn/haorui/sdk/core/ad/splash/SplashAdListener;

    invoke-direct {v0, p0, p1}, Lcn/haorui/sdk/core/ad/splash/SplashAdListenerProxy;-><init>(Lcn/haorui/sdk/core/loader/d;Lcn/haorui/sdk/core/ad/splash/SplashAdListener;)V

    return-object v0

    :cond_2
    instance-of v0, p1, Lcn/haorui/sdk/core/ad/reward/RewardVideoAdListener;

    if-eqz v0, :cond_3

    new-instance v0, Lcn/haorui/sdk/core/ad/reward/RewardVideoAdListenerProxy;

    check-cast p1, Lcn/haorui/sdk/core/ad/reward/RewardVideoAdListener;

    invoke-direct {v0, p0, p1}, Lcn/haorui/sdk/core/ad/reward/RewardVideoAdListenerProxy;-><init>(Lcn/haorui/sdk/core/loader/d;Lcn/haorui/sdk/core/ad/reward/RewardVideoAdListener;)V

    return-object v0

    :cond_3
    instance-of v0, p1, Lcn/haorui/sdk/core/ad/interstitial/InterstitialAdListener;

    if-eqz v0, :cond_4

    new-instance v0, Lcn/haorui/sdk/core/ad/interstitial/InterstitialAdListenerProxy;

    check-cast p1, Lcn/haorui/sdk/core/ad/interstitial/InterstitialAdListener;

    invoke-direct {v0, p0, p1}, Lcn/haorui/sdk/core/ad/interstitial/InterstitialAdListenerProxy;-><init>(Lcn/haorui/sdk/core/loader/d;Lcn/haorui/sdk/core/ad/interstitial/InterstitialAdListener;)V

    return-object v0

    :cond_4
    instance-of v0, p1, Lcn/haorui/sdk/core/ad/media/NativeMediaAdListener;

    if-eqz v0, :cond_5

    new-instance v0, Lcn/haorui/sdk/core/ad/media/NativeMediaAdListenerProxy;

    check-cast p1, Lcn/haorui/sdk/core/ad/media/NativeMediaAdListener;

    invoke-direct {v0, p0, p1}, Lcn/haorui/sdk/core/ad/media/NativeMediaAdListenerProxy;-><init>(Lcn/haorui/sdk/core/loader/d;Lcn/haorui/sdk/core/ad/media/NativeMediaAdListener;)V

    return-object v0

    :cond_5
    instance-of v0, p1, Lcn/haorui/sdk/core/ad/image/ImageAdListener;

    if-eqz v0, :cond_6

    new-instance v0, Lcn/haorui/sdk/core/ad/image/ImageAdListenerProxy;

    check-cast p1, Lcn/haorui/sdk/core/ad/image/ImageAdListener;

    invoke-direct {v0, p0, p1}, Lcn/haorui/sdk/core/ad/image/ImageAdListenerProxy;-><init>(Lcn/haorui/sdk/core/loader/d;Lcn/haorui/sdk/core/ad/image/ImageAdListener;)V

    return-object v0

    :cond_6
    instance-of v0, p1, Lcn/haorui/sdk/core/ad/draw/DrawAdListener;

    if-eqz v0, :cond_7

    new-instance v0, Lcn/haorui/sdk/core/ad/draw/DrawAdListenerProxy;

    check-cast p1, Lcn/haorui/sdk/core/ad/draw/DrawAdListener;

    invoke-direct {v0, p0, p1}, Lcn/haorui/sdk/core/ad/draw/DrawAdListenerProxy;-><init>(Lcn/haorui/sdk/core/loader/d;Lcn/haorui/sdk/core/ad/draw/DrawAdListener;)V

    return-object v0

    :cond_7
    instance-of v0, p1, Lcn/haorui/sdk/core/ad/paster/PasterAdListener;

    if-eqz v0, :cond_8

    new-instance v0, Lcn/haorui/sdk/core/ad/paster/PasterAdListenerProxy;

    check-cast p1, Lcn/haorui/sdk/core/ad/paster/PasterAdListener;

    invoke-direct {v0, p0, p1}, Lcn/haorui/sdk/core/ad/paster/PasterAdListenerProxy;-><init>(Lcn/haorui/sdk/core/loader/d;Lcn/haorui/sdk/core/ad/paster/PasterAdListener;)V

    return-object v0

    :cond_8
    instance-of v0, p1, Lcn/haorui/sdk/core/ad/fullscreenvideo/FullScreenVideoAdListener;

    if-eqz v0, :cond_9

    new-instance v0, Lcn/haorui/sdk/core/ad/fullscreenvideo/FullScreenVideoAdListenerProxy;

    check-cast p1, Lcn/haorui/sdk/core/ad/fullscreenvideo/FullScreenVideoAdListener;

    invoke-direct {v0, p0, p1}, Lcn/haorui/sdk/core/ad/fullscreenvideo/FullScreenVideoAdListenerProxy;-><init>(Lcn/haorui/sdk/core/loader/d;Lcn/haorui/sdk/core/ad/fullscreenvideo/FullScreenVideoAdListener;)V

    return-object v0

    :cond_9
    return-object p1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const-class v0, Ljava/lang/String;

    :try_start_0
    const-string v1, "android.os.SystemProperties"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "get"

    const/4 v3, 0x2

    :try_start_1
    new-array v4, v3, [Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v6, 0x1

    aput-object v0, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p0, v2, v5

    aput-object p1, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "System property invoke error: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method
