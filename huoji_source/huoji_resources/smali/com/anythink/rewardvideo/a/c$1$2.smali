.class public final Lcom/anythink/rewardvideo/a/c$1$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/rewardvideo/a/c$1;->onRewardVideoAutoLoadFail(Ljava/lang/String;Lcom/anythink/core/api/AdError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/anythink/core/api/AdError;

.field public final synthetic c:Lcom/anythink/rewardvideo/a/c$1;


# direct methods
.method public constructor <init>(Lcom/anythink/rewardvideo/a/c$1;Ljava/lang/String;Lcom/anythink/core/api/AdError;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/rewardvideo/a/c$1$2;->c:Lcom/anythink/rewardvideo/a/c$1;

    iput-object p2, p0, Lcom/anythink/rewardvideo/a/c$1$2;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/anythink/rewardvideo/a/c$1$2;->b:Lcom/anythink/core/api/AdError;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/anythink/rewardvideo/a/c$1$2;->c:Lcom/anythink/rewardvideo/a/c$1;

    iget-object v0, v0, Lcom/anythink/rewardvideo/a/c$1;->a:Lcom/anythink/rewardvideo/a/c;

    invoke-static {v0}, Lcom/anythink/rewardvideo/a/c;->a(Lcom/anythink/rewardvideo/a/c;)Lcom/anythink/rewardvideo/api/ATRewardVideoAutoLoadListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/rewardvideo/a/c$1$2;->c:Lcom/anythink/rewardvideo/a/c$1;

    iget-object v0, v0, Lcom/anythink/rewardvideo/a/c$1;->a:Lcom/anythink/rewardvideo/a/c;

    invoke-static {v0}, Lcom/anythink/rewardvideo/a/c;->a(Lcom/anythink/rewardvideo/a/c;)Lcom/anythink/rewardvideo/api/ATRewardVideoAutoLoadListener;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/rewardvideo/a/c$1$2;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/anythink/rewardvideo/a/c$1$2;->b:Lcom/anythink/core/api/AdError;

    invoke-interface {v0, v1, v2}, Lcom/anythink/rewardvideo/api/ATRewardVideoAutoLoadListener;->onRewardVideoAutoLoadFail(Ljava/lang/String;Lcom/anythink/core/api/AdError;)V

    :cond_0
    return-void
.end method
