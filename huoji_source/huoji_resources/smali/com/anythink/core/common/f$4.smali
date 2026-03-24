.class public final Lcom/anythink/core/common/f$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/core/common/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/common/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/common/f/v;Lcom/anythink/core/common/b/a;Lcom/anythink/core/common/f;Lcom/anythink/core/d/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:[Lcom/anythink/core/common/b/a;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Lcom/anythink/core/common/f/v;

.field public final synthetic f:Lcom/anythink/core/d/f;

.field public final synthetic g:Lcom/anythink/core/common/f;


# direct methods
.method public constructor <init>(Lcom/anythink/core/common/f;[Lcom/anythink/core/common/b/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/common/f/v;Lcom/anythink/core/d/f;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/core/common/f$4;->g:Lcom/anythink/core/common/f;

    iput-object p2, p0, Lcom/anythink/core/common/f$4;->a:[Lcom/anythink/core/common/b/a;

    iput-object p3, p0, Lcom/anythink/core/common/f$4;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/anythink/core/common/f$4;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/anythink/core/common/f$4;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/anythink/core/common/f$4;->e:Lcom/anythink/core/common/f/v;

    iput-object p7, p0, Lcom/anythink/core/common/f$4;->f:Lcom/anythink/core/d/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdLoadFail(Lcom/anythink/core/api/AdError;)V
    .locals 11

    iget-object v0, p0, Lcom/anythink/core/common/f$4;->a:[Lcom/anythink/core/common/b/a;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/anythink/core/common/f$4;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/anythink/core/common/f$4;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/anythink/core/common/f$4;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/anythink/core/common/f$4;->e:Lcom/anythink/core/common/f/v;

    iget-object v5, v0, Lcom/anythink/core/common/f/v;->a:Ljava/lang/String;

    iget-object v6, p0, Lcom/anythink/core/common/f$4;->f:Lcom/anythink/core/d/f;

    const/4 v7, 0x0

    const-string v8, "0"

    const-string v9, "0"

    const-string v10, ""

    invoke-static/range {v2 .. v10}, Lcom/anythink/core/common/n/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/d/f;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/anythink/core/common/f$4;->a:[Lcom/anythink/core/common/b/a;

    aget-object v0, v0, v1

    invoke-interface {v0, p1}, Lcom/anythink/core/common/b/a;->onAdLoadFail(Lcom/anythink/core/api/AdError;)V

    :cond_0
    return-void
.end method

.method public final onAdLoaded()V
    .locals 11

    iget-object v0, p0, Lcom/anythink/core/common/f$4;->a:[Lcom/anythink/core/common/b/a;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/anythink/core/common/f$4;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/anythink/core/common/f$4;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/anythink/core/common/f$4;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/anythink/core/common/f$4;->e:Lcom/anythink/core/common/f/v;

    iget-object v5, v0, Lcom/anythink/core/common/f/v;->a:Ljava/lang/String;

    iget-object v6, p0, Lcom/anythink/core/common/f$4;->f:Lcom/anythink/core/d/f;

    const/4 v7, 0x1

    const-string v8, "0"

    const-string v9, "1"

    const-string v10, ""

    invoke-static/range {v2 .. v10}, Lcom/anythink/core/common/n/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/d/f;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/anythink/core/common/f$4;->a:[Lcom/anythink/core/common/b/a;

    aget-object v0, v0, v1

    invoke-interface {v0}, Lcom/anythink/core/common/b/a;->onAdLoaded()V

    :cond_0
    return-void
.end method
