.class public final Lcom/anythink/banner/api/ATBannerView$7;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/banner/api/ATBannerView;->renderBannerView(Lcom/anythink/core/common/f/b;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/anythink/banner/api/ATBannerView;

.field public final synthetic val$adCacheInfo:Lcom/anythink/core/common/f/b;


# direct methods
.method public constructor <init>(Lcom/anythink/banner/api/ATBannerView;Lcom/anythink/core/common/f/b;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/banner/api/ATBannerView$7;->this$0:Lcom/anythink/banner/api/ATBannerView;

    iput-object p2, p0, Lcom/anythink/banner/api/ATBannerView$7;->val$adCacheInfo:Lcom/anythink/core/common/f/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/anythink/core/common/a;->a()Lcom/anythink/core/common/a;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/banner/api/ATBannerView$7;->val$adCacheInfo:Lcom/anythink/core/common/f/b;

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/a;->a(Lcom/anythink/core/common/f/b;)V

    return-void
.end method
