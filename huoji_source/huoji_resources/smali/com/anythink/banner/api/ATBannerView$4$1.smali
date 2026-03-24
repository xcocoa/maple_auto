.class public final Lcom/anythink/banner/api/ATBannerView$4$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/banner/api/ATBannerView$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/anythink/banner/api/ATBannerView$4;

.field public final synthetic val$adCacheInfo:Lcom/anythink/core/common/f/b;


# direct methods
.method public constructor <init>(Lcom/anythink/banner/api/ATBannerView$4;Lcom/anythink/core/common/f/b;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/banner/api/ATBannerView$4$1;->this$1:Lcom/anythink/banner/api/ATBannerView$4;

    iput-object p2, p0, Lcom/anythink/banner/api/ATBannerView$4$1;->val$adCacheInfo:Lcom/anythink/core/common/f/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/anythink/banner/api/ATBannerView$4$1;->this$1:Lcom/anythink/banner/api/ATBannerView$4;

    iget-object v1, v0, Lcom/anythink/banner/api/ATBannerView$4;->this$0:Lcom/anythink/banner/api/ATBannerView;

    iget-object v2, p0, Lcom/anythink/banner/api/ATBannerView$4$1;->val$adCacheInfo:Lcom/anythink/core/common/f/b;

    iget-boolean v0, v0, Lcom/anythink/banner/api/ATBannerView$4;->val$currentRefreshStatus:Z

    invoke-static {v1, v2, v0}, Lcom/anythink/banner/api/ATBannerView;->access$900(Lcom/anythink/banner/api/ATBannerView;Lcom/anythink/core/common/f/b;Z)V

    return-void
.end method
