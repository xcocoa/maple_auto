.class public Lcom/octopus/ad/topon/OctopusATNativeExpressAd;
.super Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "OctopusATNativeExpressAd"


# instance fields
.field private mAdResponse:Lcom/octopus/ad/NativeAdResponse;

.field private mContext:Landroid/content/Context;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/octopus/ad/NativeAdResponse;)V
    .locals 0

    invoke-direct {p0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/octopus/ad/topon/OctopusATNativeExpressAd;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/octopus/ad/topon/OctopusATNativeExpressAd;->mAdResponse:Lcom/octopus/ad/NativeAdResponse;

    return-void
.end method

.method public static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/octopus/ad/topon/OctopusATNativeExpressAd;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public clear(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public destroy()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/octopus/ad/topon/OctopusATNativeExpressAd;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/octopus/ad/topon/OctopusATNativeExpressAd;->mAdResponse:Lcom/octopus/ad/NativeAdResponse;

    return-void
.end method

.method public getAdLogo()Landroid/graphics/Bitmap;
    .locals 2

    iget-object v0, p0, Lcom/octopus/ad/topon/OctopusATNativeExpressAd;->mAdResponse:Lcom/octopus/ad/NativeAdResponse;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/octopus/ad/topon/OctopusATNativeExpressAd;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/octopus/ad/NativeAdResponse;->getLogo(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public varargs getAdMediaView([Ljava/lang/Object;)Landroid/view/View;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public isNativeExpress()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public prepare(Landroid/view/View;Lcom/anythink/nativead/api/ATNativePrepareInfo;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lcom/octopus/ad/topon/OctopusATNativeExpressAd;->mAdResponse:Lcom/octopus/ad/NativeAdResponse;

    check-cast p1, Landroid/view/ViewGroup;

    new-instance v0, Lcom/octopus/ad/topon/OctopusATNativeExpressAd$1;

    invoke-direct {v0, p0}, Lcom/octopus/ad/topon/OctopusATNativeExpressAd$1;-><init>(Lcom/octopus/ad/topon/OctopusATNativeExpressAd;)V

    invoke-interface {p2, p1, v0}, Lcom/octopus/ad/NativeAdResponse;->bindView(Landroid/view/ViewGroup;Lcom/octopus/ad/internal/nativead/NativeAdEventListener;)V

    return-void
.end method
