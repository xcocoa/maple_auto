.class public final Lcom/anythink/banner/a/a$2;
.super Lcom/anythink/core/common/b/g;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/banner/a/a;->a(Landroid/content/Context;Lcom/anythink/core/common/f/b;Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;Lcom/anythink/banner/a/b;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/banner/a/b;

.field public final synthetic b:Lcom/anythink/basead/ui/ThirdPartyBannerATView;

.field public final synthetic c:Lcom/anythink/banner/a/a;


# direct methods
.method public constructor <init>(Lcom/anythink/banner/a/a;Lcom/anythink/banner/a/b;Lcom/anythink/basead/ui/ThirdPartyBannerATView;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/banner/a/a$2;->c:Lcom/anythink/banner/a/a;

    iput-object p2, p0, Lcom/anythink/banner/a/a$2;->a:Lcom/anythink/banner/a/b;

    iput-object p3, p0, Lcom/anythink/banner/a/a$2;->b:Lcom/anythink/basead/ui/ThirdPartyBannerATView;

    invoke-direct {p0}, Lcom/anythink/core/common/b/g;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdClicked(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/anythink/banner/a/a$2;->a:Lcom/anythink/banner/a/b;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/anythink/banner/a/a$2;->b:Lcom/anythink/basead/ui/ThirdPartyBannerATView;

    invoke-virtual {v0}, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->getClickedArea()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/anythink/banner/a/b;->a(I)V

    iget-object p1, p0, Lcom/anythink/banner/a/a$2;->a:Lcom/anythink/banner/a/b;

    invoke-virtual {p1}, Lcom/anythink/banner/a/b;->onBannerAdClicked()V

    :cond_0
    return-void
.end method

.method public final onAdDislikeButtonClick()V
    .locals 1

    iget-object v0, p0, Lcom/anythink/banner/a/a$2;->a:Lcom/anythink/banner/a/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/banner/a/b;->onBannerAdClose()V

    :cond_0
    return-void
.end method

.method public final onAdImpressed()V
    .locals 1

    iget-object v0, p0, Lcom/anythink/banner/a/a$2;->a:Lcom/anythink/banner/a/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/banner/a/b;->onBannerAdShow()V

    :cond_0
    return-void
.end method

.method public final onDeeplinkCallback(Z)V
    .locals 1

    iget-object v0, p0, Lcom/anythink/banner/a/a$2;->a:Lcom/anythink/banner/a/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/anythink/banner/a/b;->onDeeplinkCallback(Z)V

    :cond_0
    return-void
.end method

.method public final onDownloadConfirmCallback(Landroid/content/Context;Landroid/view/View;Lcom/anythink/core/api/ATNetworkConfirmInfo;)V
    .locals 0

    iget-object p2, p0, Lcom/anythink/banner/a/a$2;->a:Lcom/anythink/banner/a/b;

    if-eqz p2, :cond_0

    invoke-virtual {p2, p1, p3}, Lcom/anythink/banner/a/b;->onDownloadConfirm(Landroid/content/Context;Lcom/anythink/core/api/ATNetworkConfirmInfo;)V

    :cond_0
    return-void
.end method
