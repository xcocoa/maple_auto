.class public final Lcom/anythink/banner/api/ATBannerView$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/banner/api/ATBannerView;->notifyBannerShow(Landroid/content/Context;Lcom/anythink/core/common/f/b;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/anythink/banner/api/ATBannerView;

.field public final synthetic val$adCacheInfo:Lcom/anythink/core/common/f/b;

.field public final synthetic val$adTrackingInfo:Lcom/anythink/core/common/f/h;

.field public final synthetic val$baseAdAdapter:Lcom/anythink/core/api/ATBaseAdAdapter;

.field public final synthetic val$context:Landroid/content/Context;

.field public final synthetic val$isRefresh:Z

.field public final synthetic val$timestamp:J


# direct methods
.method public constructor <init>(Lcom/anythink/banner/api/ATBannerView;Lcom/anythink/core/common/f/h;Landroid/content/Context;Lcom/anythink/core/common/f/b;Lcom/anythink/core/api/ATBaseAdAdapter;JZ)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/banner/api/ATBannerView$5;->this$0:Lcom/anythink/banner/api/ATBannerView;

    iput-object p2, p0, Lcom/anythink/banner/api/ATBannerView$5;->val$adTrackingInfo:Lcom/anythink/core/common/f/h;

    iput-object p3, p0, Lcom/anythink/banner/api/ATBannerView$5;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/anythink/banner/api/ATBannerView$5;->val$adCacheInfo:Lcom/anythink/core/common/f/b;

    iput-object p5, p0, Lcom/anythink/banner/api/ATBannerView$5;->val$baseAdAdapter:Lcom/anythink/core/api/ATBaseAdAdapter;

    iput-wide p6, p0, Lcom/anythink/banner/api/ATBannerView$5;->val$timestamp:J

    iput-boolean p8, p0, Lcom/anythink/banner/api/ATBannerView$5;->val$isRefresh:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/anythink/banner/api/ATBannerView$5;->val$adTrackingInfo:Lcom/anythink/core/common/f/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/banner/api/ATBannerView$5;->this$0:Lcom/anythink/banner/api/ATBannerView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/banner/api/ATBannerView$5;->val$adTrackingInfo:Lcom/anythink/core/common/f/h;

    invoke-static {v0, v1}, Lcom/anythink/core/common/o/v;->a(Landroid/content/Context;Lcom/anythink/core/common/f/h;)V

    invoke-static {}, Lcom/anythink/core/common/a;->a()Lcom/anythink/core/common/a;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/banner/api/ATBannerView$5;->val$context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/banner/api/ATBannerView$5;->val$adCacheInfo:Lcom/anythink/core/common/f/b;

    invoke-virtual {v0, v1, v2}, Lcom/anythink/core/common/a;->a(Landroid/content/Context;Lcom/anythink/core/common/f/b;)V

    iget-object v0, p0, Lcom/anythink/banner/api/ATBannerView$5;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/anythink/core/common/n/c;->a(Landroid/content/Context;)Lcom/anythink/core/common/n/c;

    move-result-object v1

    const/16 v2, 0xd

    iget-object v3, p0, Lcom/anythink/banner/api/ATBannerView$5;->val$adTrackingInfo:Lcom/anythink/core/common/f/h;

    iget-object v0, p0, Lcom/anythink/banner/api/ATBannerView$5;->val$baseAdAdapter:Lcom/anythink/core/api/ATBaseAdAdapter;

    invoke-virtual {v0}, Lcom/anythink/core/common/b/d;->getUnitGroupInfo()Lcom/anythink/core/common/f/av;

    move-result-object v4

    iget-wide v5, p0, Lcom/anythink/banner/api/ATBannerView$5;->val$timestamp:J

    invoke-virtual/range {v1 .. v6}, Lcom/anythink/core/common/n/c;->a(ILcom/anythink/core/common/f/au;Lcom/anythink/core/common/f/av;J)V

    iget-object v0, p0, Lcom/anythink/banner/api/ATBannerView$5;->val$baseAdAdapter:Lcom/anythink/core/api/ATBaseAdAdapter;

    invoke-virtual {v0}, Lcom/anythink/core/api/ATBaseAdAdapter;->supportImpressionCallback()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/anythink/banner/api/ATBannerView$5;->this$0:Lcom/anythink/banner/api/ATBannerView;

    iget-object v1, p0, Lcom/anythink/banner/api/ATBannerView$5;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/anythink/banner/api/ATBannerView$5;->val$baseAdAdapter:Lcom/anythink/core/api/ATBaseAdAdapter;

    iget-boolean v3, p0, Lcom/anythink/banner/api/ATBannerView$5;->val$isRefresh:Z

    invoke-static {v0, v1, v2, v3}, Lcom/anythink/banner/api/ATBannerView;->access$1100(Lcom/anythink/banner/api/ATBannerView;Landroid/content/Context;Lcom/anythink/core/api/ATBaseAdAdapter;Z)V

    :cond_0
    return-void
.end method
