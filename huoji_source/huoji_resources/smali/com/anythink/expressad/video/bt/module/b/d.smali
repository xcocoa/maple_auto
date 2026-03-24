.class public final Lcom/anythink/expressad/video/bt/module/b/d;
.super Lcom/anythink/expressad/video/bt/module/b/c;
.source ""


# static fields
.field private static final a:Ljava/lang/String; = "H5ShowRewardListener"


# instance fields
.field private b:Lcom/anythink/expressad/video/bt/module/a/b;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/anythink/expressad/video/bt/module/a/b;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/anythink/expressad/video/bt/module/b/c;-><init>()V

    iput-object p1, p0, Lcom/anythink/expressad/video/bt/module/b/d;->b:Lcom/anythink/expressad/video/bt/module/a/b;

    iput-object p2, p0, Lcom/anythink/expressad/video/bt/module/b/d;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/b/d;->b:Lcom/anythink/expressad/video/bt/module/a/b;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/anythink/expressad/video/bt/module/b/d;->c:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/anythink/expressad/video/bt/module/a/b;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/anythink/expressad/foundation/d/c;)V
    .locals 2

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/b/d;->b:Lcom/anythink/expressad/video/bt/module/a/b;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/anythink/expressad/video/bt/module/b/d;->c:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/anythink/expressad/video/bt/module/a/b;->a(Ljava/lang/String;Lcom/anythink/expressad/foundation/d/c;)V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/b/d;->b:Lcom/anythink/expressad/video/bt/module/a/b;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/anythink/expressad/video/bt/module/b/d;->c:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/anythink/expressad/video/bt/module/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final a(ZLcom/anythink/expressad/videocommon/c/c;)V
    .locals 2

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/b/d;->b:Lcom/anythink/expressad/video/bt/module/a/b;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/anythink/expressad/video/bt/module/b/d;->c:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Lcom/anythink/expressad/video/bt/module/a/b;->a(Ljava/lang/String;ZLcom/anythink/expressad/videocommon/c/c;)V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/b/d;->b:Lcom/anythink/expressad/video/bt/module/a/b;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/anythink/expressad/video/bt/module/b/d;->c:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/anythink/expressad/video/bt/module/a/b;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/b/d;->b:Lcom/anythink/expressad/video/bt/module/a/b;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/anythink/expressad/video/bt/module/b/d;->c:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/anythink/expressad/video/bt/module/a/b;->c(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
