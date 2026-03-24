.class public final Lcom/anythink/core/common/f$5;
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
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lcom/anythink/core/common/f/v;

.field public final synthetic e:Lcom/anythink/core/d/f;

.field public final synthetic f:[Lcom/anythink/core/common/b/a;

.field public final synthetic g:Landroid/content/Context;

.field public final synthetic h:Lcom/anythink/core/common/f;


# direct methods
.method public constructor <init>(Lcom/anythink/core/common/f;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/common/f/v;Lcom/anythink/core/d/f;[Lcom/anythink/core/common/b/a;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/core/common/f$5;->h:Lcom/anythink/core/common/f;

    iput-object p2, p0, Lcom/anythink/core/common/f$5;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/anythink/core/common/f$5;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/anythink/core/common/f$5;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/anythink/core/common/f$5;->d:Lcom/anythink/core/common/f/v;

    iput-object p6, p0, Lcom/anythink/core/common/f$5;->e:Lcom/anythink/core/d/f;

    iput-object p7, p0, Lcom/anythink/core/common/f$5;->f:[Lcom/anythink/core/common/b/a;

    iput-object p8, p0, Lcom/anythink/core/common/f$5;->g:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdLoadFail(Lcom/anythink/core/api/AdError;)V
    .locals 12

    iget-object v0, p0, Lcom/anythink/core/common/f$5;->g:Landroid/content/Context;

    iget-object v1, p0, Lcom/anythink/core/common/f$5;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/anythink/core/common/f$5;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/anythink/core/common/f$5;->d:Lcom/anythink/core/common/f/v;

    invoke-static {v0, v1, v2, v3}, Lcom/anythink/core/common/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/common/f/v;)Lcom/anythink/core/common/f/b;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "placementId:"

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/anythink/core/common/f$5;->a:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ";result_callback:success;"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "Shared"

    invoke-static {v2, p1}, Lcom/anythink/core/common/o/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/anythink/core/common/f/b;->h()Lcom/anythink/core/common/f/h;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/anythink/core/common/f/au;->ai()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    move-object v10, p1

    iget-object v2, p0, Lcom/anythink/core/common/f$5;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/anythink/core/common/f$5;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/anythink/core/common/f$5;->c:Ljava/lang/String;

    iget-object p1, p0, Lcom/anythink/core/common/f$5;->d:Lcom/anythink/core/common/f/v;

    iget-object v5, p1, Lcom/anythink/core/common/f/v;->a:Ljava/lang/String;

    iget-object v6, p0, Lcom/anythink/core/common/f$5;->e:Lcom/anythink/core/d/f;

    const/4 v7, 0x1

    const-string v8, "1"

    const-string v9, "0"

    invoke-static/range {v2 .. v10}, Lcom/anythink/core/common/n/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/d/f;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/anythink/core/common/f$5;->f:[Lcom/anythink/core/common/b/a;

    aget-object v0, p1, v1

    if-eqz v0, :cond_1

    aget-object p1, p1, v1

    invoke-interface {p1}, Lcom/anythink/core/common/b/a;->onAdLoaded()V

    :cond_1
    return-void

    :cond_2
    invoke-static {}, Lcom/anythink/core/common/w;->a()Lcom/anythink/core/common/w;

    move-result-object v0

    iget-object v2, p0, Lcom/anythink/core/common/f$5;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/anythink/core/common/w;->b(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/anythink/core/common/f$5;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/anythink/core/common/f$5;->b:Ljava/lang/String;

    iget-object v5, p0, Lcom/anythink/core/common/f$5;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/anythink/core/common/f$5;->d:Lcom/anythink/core/common/f/v;

    iget-object v6, v0, Lcom/anythink/core/common/f/v;->a:Ljava/lang/String;

    iget-object v7, p0, Lcom/anythink/core/common/f$5;->e:Lcom/anythink/core/d/f;

    const/4 v8, 0x0

    const-string v9, "0"

    const-string v10, "0"

    const-string v11, ""

    invoke-static/range {v3 .. v11}, Lcom/anythink/core/common/n/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/d/f;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/anythink/core/common/f$5;->f:[Lcom/anythink/core/common/b/a;

    aget-object v2, v0, v1

    if-eqz v2, :cond_3

    aget-object v0, v0, v1

    invoke-interface {v0, p1}, Lcom/anythink/core/common/b/a;->onAdLoadFail(Lcom/anythink/core/api/AdError;)V

    :cond_3
    return-void
.end method

.method public final onAdLoaded()V
    .locals 9

    iget-object v0, p0, Lcom/anythink/core/common/f$5;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/anythink/core/common/f$5;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/anythink/core/common/f$5;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/anythink/core/common/f$5;->d:Lcom/anythink/core/common/f/v;

    iget-object v3, v3, Lcom/anythink/core/common/f/v;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/anythink/core/common/f$5;->e:Lcom/anythink/core/d/f;

    const/4 v5, 0x1

    const-string v6, "2"

    const-string v7, "1"

    const-string v8, ""

    invoke-static/range {v0 .. v8}, Lcom/anythink/core/common/n/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/d/f;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/anythink/core/common/f$5;->f:[Lcom/anythink/core/common/b/a;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    if-eqz v2, :cond_0

    aget-object v0, v0, v1

    invoke-interface {v0}, Lcom/anythink/core/common/b/a;->onAdLoaded()V

    :cond_0
    return-void
.end method
