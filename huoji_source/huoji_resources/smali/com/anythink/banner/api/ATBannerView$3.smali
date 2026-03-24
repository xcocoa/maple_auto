.class public final Lcom/anythink/banner/api/ATBannerView$3;
.super Lcom/anythink/core/common/o/a/a;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/banner/api/ATBannerView;->registerDelayShow(Landroid/view/View;Landroid/content/Context;Lcom/anythink/core/common/f/b;Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/anythink/banner/api/ATBannerView;

.field public final synthetic val$adCacheInfo:Lcom/anythink/core/common/f/b;

.field public final synthetic val$context:Landroid/content/Context;

.field public final synthetic val$isRefresh:Z


# direct methods
.method public constructor <init>(Lcom/anythink/banner/api/ATBannerView;Landroid/content/Context;Lcom/anythink/core/common/f/b;Z)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/banner/api/ATBannerView$3;->this$0:Lcom/anythink/banner/api/ATBannerView;

    iput-object p2, p0, Lcom/anythink/banner/api/ATBannerView$3;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/anythink/banner/api/ATBannerView$3;->val$adCacheInfo:Lcom/anythink/core/common/f/b;

    iput-boolean p4, p0, Lcom/anythink/banner/api/ATBannerView$3;->val$isRefresh:Z

    invoke-direct {p0}, Lcom/anythink/core/common/o/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final getImpressionMinPercentageViewed()I
    .locals 1

    const/16 v0, 0x32

    return v0
.end method

.method public final getImpressionMinTimeViewed()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final recordImpression(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lcom/anythink/banner/api/ATBannerView$3;->this$0:Lcom/anythink/banner/api/ATBannerView;

    iget-object v0, p0, Lcom/anythink/banner/api/ATBannerView$3;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/anythink/banner/api/ATBannerView$3;->val$adCacheInfo:Lcom/anythink/core/common/f/b;

    iget-boolean v2, p0, Lcom/anythink/banner/api/ATBannerView$3;->val$isRefresh:Z

    invoke-static {p1, v0, v1, v2}, Lcom/anythink/banner/api/ATBannerView;->access$700(Lcom/anythink/banner/api/ATBannerView;Landroid/content/Context;Lcom/anythink/core/common/f/b;Z)V

    return-void
.end method
