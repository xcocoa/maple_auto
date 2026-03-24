.class public Lcom/anythink/banner/api/ATBannerView$6;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/banner/api/ATBannerView;->notifyBannerImpression(Landroid/content/Context;Lcom/anythink/core/api/ATBaseAdAdapter;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/anythink/banner/api/ATBannerView;

.field public final synthetic val$adTrackingInfo:Lcom/anythink/core/common/f/h;

.field public final synthetic val$baseAdAdapter:Lcom/anythink/core/api/ATBaseAdAdapter;

.field public final synthetic val$context:Landroid/content/Context;

.field public final synthetic val$isRefresh:Z


# direct methods
.method public constructor <init>(Lcom/anythink/banner/api/ATBannerView;Lcom/anythink/core/common/f/h;Lcom/anythink/core/api/ATBaseAdAdapter;Landroid/content/Context;Z)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/banner/api/ATBannerView$6;->this$0:Lcom/anythink/banner/api/ATBannerView;

    iput-object p2, p0, Lcom/anythink/banner/api/ATBannerView$6;->val$adTrackingInfo:Lcom/anythink/core/common/f/h;

    iput-object p3, p0, Lcom/anythink/banner/api/ATBannerView$6;->val$baseAdAdapter:Lcom/anythink/core/api/ATBaseAdAdapter;

    iput-object p4, p0, Lcom/anythink/banner/api/ATBannerView$6;->val$context:Landroid/content/Context;

    iput-boolean p5, p0, Lcom/anythink/banner/api/ATBannerView$6;->val$isRefresh:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/anythink/banner/api/ATBannerView$6;->val$adTrackingInfo:Lcom/anythink/core/common/f/h;

    iget-object v1, p0, Lcom/anythink/banner/api/ATBannerView$6;->val$baseAdAdapter:Lcom/anythink/core/api/ATBaseAdAdapter;

    invoke-virtual {v1}, Lcom/anythink/core/api/ATBaseAdAdapter;->getNetworkInfoMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/f/h;->a(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/anythink/banner/api/ATBannerView$6;->val$adTrackingInfo:Lcom/anythink/core/common/f/h;

    sget-object v1, Lcom/anythink/core/common/b/h$n;->c:Ljava/lang/String;

    sget-object v2, Lcom/anythink/core/common/b/h$n;->l:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v0, v1, v2, v3}, Lcom/anythink/core/common/o/p;->a(Lcom/anythink/core/common/f/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/anythink/banner/api/ATBannerView$6;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/anythink/core/common/n/c;->a(Landroid/content/Context;)Lcom/anythink/core/common/n/c;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/banner/api/ATBannerView$6;->val$adTrackingInfo:Lcom/anythink/core/common/f/h;

    iget-object v2, p0, Lcom/anythink/banner/api/ATBannerView$6;->val$baseAdAdapter:Lcom/anythink/core/api/ATBaseAdAdapter;

    invoke-virtual {v2}, Lcom/anythink/core/common/b/d;->getUnitGroupInfo()Lcom/anythink/core/common/f/av;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v0, v3, v1, v2}, Lcom/anythink/core/common/n/c;->a(ILcom/anythink/core/common/f/au;Lcom/anythink/core/common/f/av;)V

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    new-instance v1, Lcom/anythink/banner/api/ATBannerView$6$1;

    invoke-direct {v1, p0}, Lcom/anythink/banner/api/ATBannerView$6$1;-><init>(Lcom/anythink/banner/api/ATBannerView$6;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/b/n;->b(Ljava/lang/Runnable;)V

    return-void
.end method
