.class public final Lcom/anythink/rewardvideo/a/b$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/rewardvideo/a/b;->onRewardedVideoAdPlayFailed(Lcom/anythink/core/api/AdError;Lcom/anythink/core/api/ATAdInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/core/api/AdError;

.field public final synthetic b:Lcom/anythink/core/api/ATAdInfo;

.field public final synthetic c:Lcom/anythink/rewardvideo/a/b;


# direct methods
.method public constructor <init>(Lcom/anythink/rewardvideo/a/b;Lcom/anythink/core/api/AdError;Lcom/anythink/core/api/ATAdInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/rewardvideo/a/b$2;->c:Lcom/anythink/rewardvideo/a/b;

    iput-object p2, p0, Lcom/anythink/rewardvideo/a/b$2;->a:Lcom/anythink/core/api/AdError;

    iput-object p3, p0, Lcom/anythink/rewardvideo/a/b$2;->b:Lcom/anythink/core/api/ATAdInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/anythink/rewardvideo/a/b$2;->c:Lcom/anythink/rewardvideo/a/b;

    iget-object v0, v0, Lcom/anythink/rewardvideo/a/b;->a:Lcom/anythink/rewardvideo/api/ATRewardVideoAutoEventListener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/anythink/rewardvideo/a/b$2;->a:Lcom/anythink/core/api/AdError;

    iget-object v2, p0, Lcom/anythink/rewardvideo/a/b$2;->b:Lcom/anythink/core/api/ATAdInfo;

    invoke-virtual {v0, v1, v2}, Lcom/anythink/rewardvideo/api/ATRewardVideoAutoEventListener;->onRewardedVideoAdPlayFailed(Lcom/anythink/core/api/AdError;Lcom/anythink/core/api/ATAdInfo;)V

    :cond_0
    return-void
.end method
