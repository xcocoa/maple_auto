.class public Lz2/bi$OooO0OO;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz2/bi;->OooOOo(Landroid/content/Context;Landroid/view/ViewGroup;Lz2/di;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OoooOoO:Landroid/content/Context;

.field public final synthetic OoooOoo:Lz2/di;

.field public final synthetic Ooooo00:Lz2/bi;


# direct methods
.method public constructor <init>(Lz2/bi;Landroid/content/Context;Lz2/di;)V
    .locals 0

    iput-object p1, p0, Lz2/bi$OooO0OO;->Ooooo00:Lz2/bi;

    iput-object p2, p0, Lz2/bi$OooO0OO;->OoooOoO:Landroid/content/Context;

    iput-object p3, p0, Lz2/bi$OooO0OO;->OoooOoo:Lz2/di;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lz2/bi$OooO0OO;->Ooooo00:Lz2/bi;

    invoke-static {v0}, Lz2/bi;->OooO0OO(Lz2/bi;)Lcom/anythink/nativead/api/ATNativeAdView;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lz2/bi$OooO0OO;->Ooooo00:Lz2/bi;

    invoke-static {v0}, Lz2/bi;->OooO0o0(Lz2/bi;)Lcom/elfin/ad/model/yunjing/YunjingNativeAdView;

    move-result-object v1

    sget v2, Lcom/elfin/ad/R$id;->native_ad_view:I

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/anythink/nativead/api/ATNativeAdView;

    invoke-static {v0, v1}, Lz2/bi;->OooO0Oo(Lz2/bi;Lcom/anythink/nativead/api/ATNativeAdView;)Lcom/anythink/nativead/api/ATNativeAdView;

    :cond_0
    iget-object v0, p0, Lz2/bi$OooO0OO;->Ooooo00:Lz2/bi;

    invoke-static {v0}, Lz2/bi;->OooO0o(Lz2/bi;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lz2/bi$OooO0OO;->Ooooo00:Lz2/bi;

    invoke-static {v0}, Lz2/bi;->OooO0o0(Lz2/bi;)Lcom/elfin/ad/model/yunjing/YunjingNativeAdView;

    move-result-object v1

    sget v2, Lcom/elfin/ad/R$id;->native_selfrender_view:I

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lz2/bi;->OooO0oO(Lz2/bi;Landroid/view/View;)Landroid/view/View;

    :cond_1
    iget-object v0, p0, Lz2/bi$OooO0OO;->Ooooo00:Lz2/bi;

    invoke-static {v0}, Lz2/bi;->OooO0o(Lz2/bi;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, "YunJingAdManager"

    const-string v1, "mSelfRenderView is null 1"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iget-object v0, p0, Lz2/bi$OooO0OO;->Ooooo00:Lz2/bi;

    invoke-static {v0}, Lz2/bi;->OooO0oo(Lz2/bi;)Lcom/anythink/nativead/api/ATNative;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/nativead/api/ATNative;->getNativeAd()Lcom/anythink/nativead/api/NativeAd;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v1, p0, Lz2/bi$OooO0OO;->Ooooo00:Lz2/bi;

    invoke-static {v1}, Lz2/bi;->OooO(Lz2/bi;)Lcom/anythink/nativead/api/NativeAd;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lz2/bi$OooO0OO;->Ooooo00:Lz2/bi;

    invoke-static {v1}, Lz2/bi;->OooO(Lz2/bi;)Lcom/anythink/nativead/api/NativeAd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/nativead/api/NativeAd;->destory()V

    :cond_3
    iget-object v1, p0, Lz2/bi$OooO0OO;->Ooooo00:Lz2/bi;

    invoke-static {v1, v0}, Lz2/bi;->OooOO0(Lz2/bi;Lcom/anythink/nativead/api/NativeAd;)Lcom/anythink/nativead/api/NativeAd;

    iget-object v0, p0, Lz2/bi$OooO0OO;->Ooooo00:Lz2/bi;

    invoke-static {v0}, Lz2/bi;->OooO(Lz2/bi;)Lcom/anythink/nativead/api/NativeAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/nativead/api/NativeAd;->isNativeExpress()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    new-instance v1, Lcom/anythink/nativead/api/ATNativePrepareInfo;

    invoke-direct {v1}, Lcom/anythink/nativead/api/ATNativePrepareInfo;-><init>()V

    iget-object v0, p0, Lz2/bi$OooO0OO;->OoooOoO:Landroid/content/Context;

    iget-object v2, p0, Lz2/bi$OooO0OO;->Ooooo00:Lz2/bi;

    invoke-static {v2}, Lz2/bi;->OooO(Lz2/bi;)Lcom/anythink/nativead/api/NativeAd;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/nativead/api/NativeAd;->getAdMaterial()Lcom/anythink/nativead/api/ATNativeMaterial;

    move-result-object v2

    iget-object v3, p0, Lz2/bi$OooO0OO;->Ooooo00:Lz2/bi;

    invoke-static {v3}, Lz2/bi;->OooO0o(Lz2/bi;)Landroid/view/View;

    move-result-object v3

    invoke-static {v0, v2, v3, v1}, Lz2/yh;->OooO00o(Landroid/content/Context;Lcom/anythink/nativead/api/ATNativeMaterial;Landroid/view/View;Lcom/anythink/nativead/api/ATNativePrepareInfo;)V

    iget-object v0, p0, Lz2/bi$OooO0OO;->Ooooo00:Lz2/bi;

    invoke-static {v0}, Lz2/bi;->OooO(Lz2/bi;)Lcom/anythink/nativead/api/NativeAd;

    move-result-object v0

    iget-object v2, p0, Lz2/bi$OooO0OO;->Ooooo00:Lz2/bi;

    invoke-static {v2}, Lz2/bi;->OooO0OO(Lz2/bi;)Lcom/anythink/nativead/api/ATNativeAdView;

    move-result-object v2

    iget-object v3, p0, Lz2/bi$OooO0OO;->Ooooo00:Lz2/bi;

    invoke-static {v3}, Lz2/bi;->OooO0o(Lz2/bi;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/anythink/nativead/api/NativeAd;->renderAdContainer(Lcom/anythink/nativead/api/ATNativeAdView;Landroid/view/View;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lz2/bi$OooO0OO;->Ooooo00:Lz2/bi;

    invoke-static {v0}, Lz2/bi;->OooO(Lz2/bi;)Lcom/anythink/nativead/api/NativeAd;

    move-result-object v0

    iget-object v2, p0, Lz2/bi$OooO0OO;->Ooooo00:Lz2/bi;

    invoke-static {v2}, Lz2/bi;->OooO0OO(Lz2/bi;)Lcom/anythink/nativead/api/ATNativeAdView;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/anythink/nativead/api/NativeAd;->renderAdContainer(Lcom/anythink/nativead/api/ATNativeAdView;Landroid/view/View;)V

    :goto_0
    iget-object v0, p0, Lz2/bi$OooO0OO;->Ooooo00:Lz2/bi;

    invoke-static {v0}, Lz2/bi;->OooO(Lz2/bi;)Lcom/anythink/nativead/api/NativeAd;

    move-result-object v0

    iget-object v2, p0, Lz2/bi$OooO0OO;->Ooooo00:Lz2/bi;

    invoke-static {v2}, Lz2/bi;->OooO0OO(Lz2/bi;)Lcom/anythink/nativead/api/ATNativeAdView;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/anythink/nativead/api/NativeAd;->prepare(Lcom/anythink/nativead/api/ATNativeAdView;Lcom/anythink/nativead/api/ATNativePrepareInfo;)V

    :cond_5
    iget-object v0, p0, Lz2/bi$OooO0OO;->Ooooo00:Lz2/bi;

    invoke-static {v0}, Lz2/bi;->OooO0o0(Lz2/bi;)Lcom/elfin/ad/model/yunjing/YunjingNativeAdView;

    move-result-object v0

    sget v1, Lcom/elfin/ad/R$id;->native_ad_close:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    new-instance v1, Lz2/bi$OooO0OO$OooO00o;

    invoke-direct {v1, p0}, Lz2/bi$OooO0OO$OooO00o;-><init>(Lz2/bi$OooO0OO;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lz2/bi$OooO0OO;->Ooooo00:Lz2/bi;

    invoke-static {v0}, Lz2/bi;->OooO(Lz2/bi;)Lcom/anythink/nativead/api/NativeAd;

    move-result-object v0

    new-instance v1, Lz2/bi$OooO0OO$OooO0O0;

    invoke-direct {v1, p0}, Lz2/bi$OooO0OO$OooO0O0;-><init>(Lz2/bi$OooO0OO;)V

    invoke-virtual {v0, v1}, Lcom/anythink/nativead/api/NativeAd;->setNativeEventListener(Lcom/anythink/nativead/api/ATNativeEventListener;)V

    return-void
.end method
