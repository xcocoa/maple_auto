.class public final Lcom/anythink/banner/api/ATBannerView$6$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/banner/api/ATBannerView$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/anythink/banner/api/ATBannerView$6;


# direct methods
.method public constructor <init>(Lcom/anythink/banner/api/ATBannerView$6;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/banner/api/ATBannerView$6$1;->this$1:Lcom/anythink/banner/api/ATBannerView$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/anythink/banner/api/ATBannerView$6$1;->this$1:Lcom/anythink/banner/api/ATBannerView$6;

    iget-object v0, v0, Lcom/anythink/banner/api/ATBannerView$6;->this$0:Lcom/anythink/banner/api/ATBannerView;

    invoke-static {v0}, Lcom/anythink/banner/api/ATBannerView;->access$000(Lcom/anythink/banner/api/ATBannerView;)Lcom/anythink/banner/api/ATBannerListener;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/anythink/banner/api/ATBannerView$6$1;->this$1:Lcom/anythink/banner/api/ATBannerView$6;

    iget-object v0, v0, Lcom/anythink/banner/api/ATBannerView$6;->val$baseAdAdapter:Lcom/anythink/core/api/ATBaseAdAdapter;

    invoke-static {v0}, Lcom/anythink/core/common/b/j;->a(Lcom/anythink/core/common/b/d;)Lcom/anythink/core/common/b/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/api/ATAdInfo;->getNetworkFirmId()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/anythink/banner/api/ATBannerView$6$1;->this$1:Lcom/anythink/banner/api/ATBannerView$6;

    iget-object v1, v1, Lcom/anythink/banner/api/ATBannerView$6;->val$baseAdAdapter:Lcom/anythink/core/api/ATBaseAdAdapter;

    const/4 v2, 0x0

    const-string v3, "Banner"

    invoke-static {v3, v1, v2}, Lcom/anythink/core/common/n/g;->a(Ljava/lang/String;Lcom/anythink/core/api/ATBaseAdAdapter;Lcom/anythink/core/api/BaseAd;)V

    :cond_0
    iget-object v1, p0, Lcom/anythink/banner/api/ATBannerView$6$1;->this$1:Lcom/anythink/banner/api/ATBannerView$6;

    iget-object v2, v1, Lcom/anythink/banner/api/ATBannerView$6;->val$baseAdAdapter:Lcom/anythink/core/api/ATBaseAdAdapter;

    if-eqz v2, :cond_1

    iget-boolean v2, v1, Lcom/anythink/banner/api/ATBannerView$6;->val$isRefresh:Z

    if-eqz v2, :cond_1

    iget-object v1, v1, Lcom/anythink/banner/api/ATBannerView$6;->this$0:Lcom/anythink/banner/api/ATBannerView;

    invoke-static {v1}, Lcom/anythink/banner/api/ATBannerView;->access$000(Lcom/anythink/banner/api/ATBannerView;)Lcom/anythink/banner/api/ATBannerListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/anythink/banner/api/ATBannerListener;->onBannerAutoRefreshed(Lcom/anythink/core/api/ATAdInfo;)V

    return-void

    :cond_1
    iget-object v1, v1, Lcom/anythink/banner/api/ATBannerView$6;->this$0:Lcom/anythink/banner/api/ATBannerView;

    invoke-static {v1}, Lcom/anythink/banner/api/ATBannerView;->access$000(Lcom/anythink/banner/api/ATBannerView;)Lcom/anythink/banner/api/ATBannerListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/anythink/banner/api/ATBannerListener;->onBannerShow(Lcom/anythink/core/api/ATAdInfo;)V

    :cond_2
    return-void
.end method
