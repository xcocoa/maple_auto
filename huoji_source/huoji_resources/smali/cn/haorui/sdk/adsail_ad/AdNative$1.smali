.class public Lcn/haorui/sdk/adsail_ad/AdNative$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcn/haorui/sdk/core/utils/HttpGetBytesCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/haorui/sdk/adsail_ad/AdNative;->loadBannerAd(Lcn/haorui/sdk/adsail_ad/banner/BannerAdSlot;Lcn/haorui/sdk/adsail_ad/banner/IBannerAdListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcn/haorui/sdk/adsail_ad/AdNative;

.field public final synthetic val$aQuery:Lz2/o000;

.field public final synthetic val$adListener:Lcn/haorui/sdk/adsail_ad/banner/IBannerAdListener;

.field public final synthetic val$adSlot:Lcn/haorui/sdk/adsail_ad/banner/BannerAdSlot;

.field public final synthetic val$bannerRoot:Lcn/haorui/sdk/adsail_ad/banner/HRBannerRootView;

.field public final synthetic val$imageView:Lcn/haorui/sdk/core/view/gif/GifImageView;


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/adsail_ad/AdNative;Lcn/haorui/sdk/adsail_ad/banner/IBannerAdListener;Lcn/haorui/sdk/adsail_ad/banner/BannerAdSlot;Lcn/haorui/sdk/core/view/gif/GifImageView;Lcn/haorui/sdk/adsail_ad/banner/HRBannerRootView;Lz2/o000;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/adsail_ad/AdNative$1;->this$0:Lcn/haorui/sdk/adsail_ad/AdNative;

    iput-object p2, p0, Lcn/haorui/sdk/adsail_ad/AdNative$1;->val$adListener:Lcn/haorui/sdk/adsail_ad/banner/IBannerAdListener;

    iput-object p3, p0, Lcn/haorui/sdk/adsail_ad/AdNative$1;->val$adSlot:Lcn/haorui/sdk/adsail_ad/banner/BannerAdSlot;

    iput-object p4, p0, Lcn/haorui/sdk/adsail_ad/AdNative$1;->val$imageView:Lcn/haorui/sdk/core/view/gif/GifImageView;

    iput-object p5, p0, Lcn/haorui/sdk/adsail_ad/AdNative$1;->val$bannerRoot:Lcn/haorui/sdk/adsail_ad/banner/HRBannerRootView;

    iput-object p6, p0, Lcn/haorui/sdk/adsail_ad/AdNative$1;->val$aQuery:Lz2/o000;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/io/IOException;)V
    .locals 3
    .param p1    # Ljava/io/IOException;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    iget-object p1, p0, Lcn/haorui/sdk/adsail_ad/AdNative$1;->this$0:Lcn/haorui/sdk/adsail_ad/AdNative;

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/AdNative$1;->val$adListener:Lcn/haorui/sdk/adsail_ad/banner/IBannerAdListener;

    sget-object v1, Lcn/haorui/sdk/core/exception/a;->a:Ljava/lang/Integer;

    const-string v2, "\u56fe\u7247\u8d44\u6e90\u52a0\u8f7d\u9519\u8bef"

    invoke-static {p1, v0, v2, v1}, Lcn/haorui/sdk/adsail_ad/AdNative;->access$000(Lcn/haorui/sdk/adsail_ad/AdNative;Lcn/haorui/sdk/adsail_ad/IAdListener;Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public onResponse(Lcn/haorui/sdk/core/domain/HttpResponse;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/haorui/sdk/core/domain/HttpResponse<",
            "[B>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcn/haorui/sdk/core/domain/HttpResponse;->isSuccessful()Z

    move-result v0

    const-string v1, "\u56fe\u7247\u8d44\u6e90\u52a0\u8f7d\u9519\u8bef"

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcn/haorui/sdk/core/domain/HttpResponse;->getResponseBody()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    if-eqz p1, :cond_2

    array-length v0, p1

    if-lez v0, :cond_2

    array-length v0, p1

    invoke-static {}, Lcn/haorui/sdk/core/utils/MemoryUtil;->getTraceMemory()I

    move-result v2

    if-lt v0, v2, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Lcn/haorui/sdk/platform/hr/banner/HRBannerAd;

    iget-object v2, p0, Lcn/haorui/sdk/adsail_ad/AdNative$1;->val$adSlot:Lcn/haorui/sdk/adsail_ad/banner/BannerAdSlot;

    invoke-direct {v0, v2}, Lcn/haorui/sdk/platform/hr/banner/HRBannerAd;-><init>(Lcn/haorui/sdk/adsail_ad/banner/BannerAdSlot;)V

    :try_start_0
    iget-object v2, p0, Lcn/haorui/sdk/adsail_ad/AdNative$1;->this$0:Lcn/haorui/sdk/adsail_ad/AdNative;

    iget-object v3, p0, Lcn/haorui/sdk/adsail_ad/AdNative$1;->val$imageView:Lcn/haorui/sdk/core/view/gif/GifImageView;

    invoke-static {v2, p1, v3}, Lcn/haorui/sdk/adsail_ad/AdNative;->access$100(Lcn/haorui/sdk/adsail_ad/AdNative;[BLcn/haorui/sdk/core/view/gif/GifImageView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iget-object v2, p0, Lcn/haorui/sdk/adsail_ad/AdNative$1;->this$0:Lcn/haorui/sdk/adsail_ad/AdNative;

    iget-object v3, p0, Lcn/haorui/sdk/adsail_ad/AdNative$1;->val$adListener:Lcn/haorui/sdk/adsail_ad/banner/IBannerAdListener;

    sget-object v4, Lcn/haorui/sdk/core/exception/a;->a:Ljava/lang/Integer;

    invoke-static {v2, v3, v1, v4}, Lcn/haorui/sdk/adsail_ad/AdNative;->access$000(Lcn/haorui/sdk/adsail_ad/AdNative;Lcn/haorui/sdk/adsail_ad/IAdListener;Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    iget-object p1, p0, Lcn/haorui/sdk/adsail_ad/AdNative$1;->val$adListener:Lcn/haorui/sdk/adsail_ad/banner/IBannerAdListener;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcn/haorui/sdk/adsail_ad/AdNative$1;->val$bannerRoot:Lcn/haorui/sdk/adsail_ad/banner/HRBannerRootView;

    invoke-virtual {v0, p1}, Lcn/haorui/sdk/core/ad/BaseAd;->setAdView(Landroid/view/View;)V

    iget-object p1, p0, Lcn/haorui/sdk/adsail_ad/AdNative$1;->val$adListener:Lcn/haorui/sdk/adsail_ad/banner/IBannerAdListener;

    invoke-interface {p1, v0}, Lcn/haorui/sdk/adsail_ad/IAdListener;->onADLoaded(Ljava/lang/Object;)V

    :cond_1
    iget-object p1, p0, Lcn/haorui/sdk/adsail_ad/AdNative$1;->val$aQuery:Lz2/o000;

    sget v1, Lcn/haorui/sdk/R$id;->adsail_banner_close_button:I

    invoke-virtual {p1, v1}, Lz2/o000O000;->o00oO0o(I)Lz2/o000O000;

    move-result-object p1

    check-cast p1, Lz2/o000;

    new-instance v1, Lcn/haorui/sdk/adsail_ad/AdNative$1$1;

    invoke-direct {v1, p0}, Lcn/haorui/sdk/adsail_ad/AdNative$1$1;-><init>(Lcn/haorui/sdk/adsail_ad/AdNative$1;)V

    invoke-virtual {p1, v1}, Lz2/o000O000;->OooOo0o(Landroid/view/View$OnClickListener;)Lz2/o000O000;

    iget-object p1, p0, Lcn/haorui/sdk/adsail_ad/AdNative$1;->val$aQuery:Lz2/o000;

    sget v1, Lcn/haorui/sdk/R$id;->adsail_banner_image:I

    invoke-virtual {p1, v1}, Lz2/o000O000;->o00oO0o(I)Lz2/o000O000;

    move-result-object p1

    check-cast p1, Lz2/o000;

    new-instance v1, Lcn/haorui/sdk/adsail_ad/AdNative$1$2;

    invoke-direct {v1, p0, v0}, Lcn/haorui/sdk/adsail_ad/AdNative$1$2;-><init>(Lcn/haorui/sdk/adsail_ad/AdNative$1;Lcn/haorui/sdk/platform/hr/banner/HRBannerAd;)V

    invoke-virtual {p1, v1}, Lz2/o000O000;->OooOo0o(Landroid/view/View$OnClickListener;)Lz2/o000O000;

    goto :goto_2

    :cond_2
    :goto_1
    iget-object p1, p0, Lcn/haorui/sdk/adsail_ad/AdNative$1;->this$0:Lcn/haorui/sdk/adsail_ad/AdNative;

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/AdNative$1;->val$adListener:Lcn/haorui/sdk/adsail_ad/banner/IBannerAdListener;

    sget-object v2, Lcn/haorui/sdk/core/exception/a;->a:Ljava/lang/Integer;

    invoke-static {p1, v0, v1, v2}, Lcn/haorui/sdk/adsail_ad/AdNative;->access$000(Lcn/haorui/sdk/adsail_ad/AdNative;Lcn/haorui/sdk/adsail_ad/IAdListener;Ljava/lang/String;Ljava/lang/Integer;)V

    :goto_2
    return-void
.end method
