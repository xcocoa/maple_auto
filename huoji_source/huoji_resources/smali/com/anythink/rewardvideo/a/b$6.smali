.class public final Lcom/anythink/rewardvideo/a/b$6;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/rewardvideo/a/b;->onDownloadConfirm(Landroid/content/Context;Lcom/anythink/core/api/ATAdInfo;Lcom/anythink/core/api/ATNetworkConfirmInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Lcom/anythink/core/api/ATAdInfo;

.field public final synthetic c:Lcom/anythink/core/api/ATNetworkConfirmInfo;

.field public final synthetic d:Lcom/anythink/rewardvideo/a/b;


# direct methods
.method public constructor <init>(Lcom/anythink/rewardvideo/a/b;Landroid/content/Context;Lcom/anythink/core/api/ATAdInfo;Lcom/anythink/core/api/ATNetworkConfirmInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/rewardvideo/a/b$6;->d:Lcom/anythink/rewardvideo/a/b;

    iput-object p2, p0, Lcom/anythink/rewardvideo/a/b$6;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/anythink/rewardvideo/a/b$6;->b:Lcom/anythink/core/api/ATAdInfo;

    iput-object p4, p0, Lcom/anythink/rewardvideo/a/b$6;->c:Lcom/anythink/core/api/ATNetworkConfirmInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/anythink/rewardvideo/a/b$6;->d:Lcom/anythink/rewardvideo/a/b;

    iget-object v0, v0, Lcom/anythink/rewardvideo/a/b;->a:Lcom/anythink/rewardvideo/api/ATRewardVideoAutoEventListener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/anythink/rewardvideo/a/b$6;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/anythink/rewardvideo/a/b$6;->b:Lcom/anythink/core/api/ATAdInfo;

    iget-object v3, p0, Lcom/anythink/rewardvideo/a/b$6;->c:Lcom/anythink/core/api/ATNetworkConfirmInfo;

    invoke-virtual {v0, v1, v2, v3}, Lcom/anythink/rewardvideo/api/ATRewardVideoAutoEventListener;->onDownloadConfirm(Landroid/content/Context;Lcom/anythink/core/api/ATAdInfo;Lcom/anythink/core/api/ATNetworkConfirmInfo;)V

    :cond_0
    return-void
.end method
