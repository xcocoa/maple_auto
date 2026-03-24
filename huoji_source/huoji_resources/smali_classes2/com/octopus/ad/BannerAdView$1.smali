.class public Lcom/octopus/ad/BannerAdView$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/octopus/ad/internal/nativead/NativeAdShownListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/BannerAdView;->checkShow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/octopus/ad/BannerAdView;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/BannerAdView;)V
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/BannerAdView$1;->a:Lcom/octopus/ad/BannerAdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdShown()V
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/BannerAdView$1;->a:Lcom/octopus/ad/BannerAdView;

    iget-object v0, v0, Lcom/octopus/ad/BannerAdView;->a:Lcom/octopus/ad/internal/view/AdViewImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/octopus/ad/internal/view/AdViewImpl;->onBannerAdShow()V

    :cond_0
    return-void
.end method
