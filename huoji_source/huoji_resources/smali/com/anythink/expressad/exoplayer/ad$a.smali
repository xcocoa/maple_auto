.class public final Lcom/anythink/expressad/exoplayer/ad$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Lcom/anythink/expressad/exoplayer/b/g;
.implements Lcom/anythink/expressad/exoplayer/g/f;
.implements Lcom/anythink/expressad/exoplayer/l/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/expressad/exoplayer/ad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/expressad/exoplayer/ad;


# direct methods
.method private constructor <init>(Lcom/anythink/expressad/exoplayer/ad;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/ad$a;->a:Lcom/anythink/expressad/exoplayer/ad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/anythink/expressad/exoplayer/ad;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/anythink/expressad/exoplayer/ad$a;-><init>(Lcom/anythink/expressad/exoplayer/ad;)V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/ad$a;->a:Lcom/anythink/expressad/exoplayer/ad;

    invoke-static {v0, p1}, Lcom/anythink/expressad/exoplayer/ad;->a(Lcom/anythink/expressad/exoplayer/ad;I)I

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/ad$a;->a:Lcom/anythink/expressad/exoplayer/ad;

    invoke-static {v0}, Lcom/anythink/expressad/exoplayer/ad;->d(Lcom/anythink/expressad/exoplayer/ad;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anythink/expressad/exoplayer/b/g;

    invoke-interface {v1, p1}, Lcom/anythink/expressad/exoplayer/b/g;->a(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(IIIF)V
    .locals 2

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/ad$a;->a:Lcom/anythink/expressad/exoplayer/ad;

    invoke-static {v0}, Lcom/anythink/expressad/exoplayer/ad;->b(Lcom/anythink/expressad/exoplayer/ad;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anythink/expressad/exoplayer/l/g;

    invoke-interface {v1, p1, p2}, Lcom/anythink/expressad/exoplayer/l/g;->a(II)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/ad$a;->a:Lcom/anythink/expressad/exoplayer/ad;

    invoke-static {v0}, Lcom/anythink/expressad/exoplayer/ad;->a(Lcom/anythink/expressad/exoplayer/ad;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anythink/expressad/exoplayer/l/h;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/anythink/expressad/exoplayer/l/h;->a(IIIF)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final a(IJ)V
    .locals 2

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/ad$a;->a:Lcom/anythink/expressad/exoplayer/ad;

    invoke-static {v0}, Lcom/anythink/expressad/exoplayer/ad;->a(Lcom/anythink/expressad/exoplayer/ad;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anythink/expressad/exoplayer/l/h;

    invoke-interface {v1, p1, p2, p3}, Lcom/anythink/expressad/exoplayer/l/h;->a(IJ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(IJJ)V
    .locals 8

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/ad$a;->a:Lcom/anythink/expressad/exoplayer/ad;

    invoke-static {v0}, Lcom/anythink/expressad/exoplayer/ad;->d(Lcom/anythink/expressad/exoplayer/ad;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/anythink/expressad/exoplayer/b/g;

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-interface/range {v2 .. v7}, Lcom/anythink/expressad/exoplayer/b/g;->a(IJJ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Landroid/view/Surface;)V
    .locals 2

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/ad$a;->a:Lcom/anythink/expressad/exoplayer/ad;

    invoke-static {v0}, Lcom/anythink/expressad/exoplayer/ad;->c(Lcom/anythink/expressad/exoplayer/ad;)Landroid/view/Surface;

    move-result-object v0

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/ad$a;->a:Lcom/anythink/expressad/exoplayer/ad;

    invoke-static {v0}, Lcom/anythink/expressad/exoplayer/ad;->b(Lcom/anythink/expressad/exoplayer/ad;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/ad$a;->a:Lcom/anythink/expressad/exoplayer/ad;

    invoke-static {v0}, Lcom/anythink/expressad/exoplayer/ad;->a(Lcom/anythink/expressad/exoplayer/ad;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anythink/expressad/exoplayer/l/h;

    invoke-interface {v1, p1}, Lcom/anythink/expressad/exoplayer/l/h;->a(Landroid/view/Surface;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final a(Lcom/anythink/expressad/exoplayer/c/d;)V
    .locals 2

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/ad$a;->a:Lcom/anythink/expressad/exoplayer/ad;

    invoke-static {v0, p1}, Lcom/anythink/expressad/exoplayer/ad;->a(Lcom/anythink/expressad/exoplayer/ad;Lcom/anythink/expressad/exoplayer/c/d;)Lcom/anythink/expressad/exoplayer/c/d;

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/ad$a;->a:Lcom/anythink/expressad/exoplayer/ad;

    invoke-static {v0}, Lcom/anythink/expressad/exoplayer/ad;->a(Lcom/anythink/expressad/exoplayer/ad;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anythink/expressad/exoplayer/l/h;

    invoke-interface {v1, p1}, Lcom/anythink/expressad/exoplayer/l/h;->a(Lcom/anythink/expressad/exoplayer/c/d;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Lcom/anythink/expressad/exoplayer/g/a;)V
    .locals 2

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/ad$a;->a:Lcom/anythink/expressad/exoplayer/ad;

    invoke-static {v0}, Lcom/anythink/expressad/exoplayer/ad;->e(Lcom/anythink/expressad/exoplayer/ad;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anythink/expressad/exoplayer/g/f;

    invoke-interface {v1, p1}, Lcom/anythink/expressad/exoplayer/g/f;->a(Lcom/anythink/expressad/exoplayer/g/a;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Lcom/anythink/expressad/exoplayer/m;)V
    .locals 2

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/ad$a;->a:Lcom/anythink/expressad/exoplayer/ad;

    invoke-static {v0, p1}, Lcom/anythink/expressad/exoplayer/ad;->a(Lcom/anythink/expressad/exoplayer/ad;Lcom/anythink/expressad/exoplayer/m;)Lcom/anythink/expressad/exoplayer/m;

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/ad$a;->a:Lcom/anythink/expressad/exoplayer/ad;

    invoke-static {v0}, Lcom/anythink/expressad/exoplayer/ad;->a(Lcom/anythink/expressad/exoplayer/ad;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anythink/expressad/exoplayer/l/h;

    invoke-interface {v1, p1}, Lcom/anythink/expressad/exoplayer/l/h;->a(Lcom/anythink/expressad/exoplayer/m;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;JJ)V
    .locals 8

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/ad$a;->a:Lcom/anythink/expressad/exoplayer/ad;

    invoke-static {v0}, Lcom/anythink/expressad/exoplayer/ad;->a(Lcom/anythink/expressad/exoplayer/ad;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/anythink/expressad/exoplayer/l/h;

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-interface/range {v2 .. v7}, Lcom/anythink/expressad/exoplayer/l/h;->a(Ljava/lang/String;JJ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final b(Lcom/anythink/expressad/exoplayer/c/d;)V
    .locals 2

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/ad$a;->a:Lcom/anythink/expressad/exoplayer/ad;

    invoke-static {v0}, Lcom/anythink/expressad/exoplayer/ad;->a(Lcom/anythink/expressad/exoplayer/ad;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anythink/expressad/exoplayer/l/h;

    invoke-interface {v1, p1}, Lcom/anythink/expressad/exoplayer/l/h;->b(Lcom/anythink/expressad/exoplayer/c/d;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/ad$a;->a:Lcom/anythink/expressad/exoplayer/ad;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/anythink/expressad/exoplayer/ad;->a(Lcom/anythink/expressad/exoplayer/ad;Lcom/anythink/expressad/exoplayer/m;)Lcom/anythink/expressad/exoplayer/m;

    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/ad$a;->a:Lcom/anythink/expressad/exoplayer/ad;

    invoke-static {p1, v0}, Lcom/anythink/expressad/exoplayer/ad;->a(Lcom/anythink/expressad/exoplayer/ad;Lcom/anythink/expressad/exoplayer/c/d;)Lcom/anythink/expressad/exoplayer/c/d;

    return-void
.end method

.method public final b(Lcom/anythink/expressad/exoplayer/m;)V
    .locals 2

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/ad$a;->a:Lcom/anythink/expressad/exoplayer/ad;

    invoke-static {v0, p1}, Lcom/anythink/expressad/exoplayer/ad;->b(Lcom/anythink/expressad/exoplayer/ad;Lcom/anythink/expressad/exoplayer/m;)Lcom/anythink/expressad/exoplayer/m;

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/ad$a;->a:Lcom/anythink/expressad/exoplayer/ad;

    invoke-static {v0}, Lcom/anythink/expressad/exoplayer/ad;->d(Lcom/anythink/expressad/exoplayer/ad;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anythink/expressad/exoplayer/b/g;

    invoke-interface {v1, p1}, Lcom/anythink/expressad/exoplayer/b/g;->b(Lcom/anythink/expressad/exoplayer/m;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/String;JJ)V
    .locals 8

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/ad$a;->a:Lcom/anythink/expressad/exoplayer/ad;

    invoke-static {v0}, Lcom/anythink/expressad/exoplayer/ad;->d(Lcom/anythink/expressad/exoplayer/ad;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/anythink/expressad/exoplayer/b/g;

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-interface/range {v2 .. v7}, Lcom/anythink/expressad/exoplayer/b/g;->b(Ljava/lang/String;JJ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final c(Lcom/anythink/expressad/exoplayer/c/d;)V
    .locals 2

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/ad$a;->a:Lcom/anythink/expressad/exoplayer/ad;

    invoke-static {v0, p1}, Lcom/anythink/expressad/exoplayer/ad;->b(Lcom/anythink/expressad/exoplayer/ad;Lcom/anythink/expressad/exoplayer/c/d;)Lcom/anythink/expressad/exoplayer/c/d;

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/ad$a;->a:Lcom/anythink/expressad/exoplayer/ad;

    invoke-static {v0}, Lcom/anythink/expressad/exoplayer/ad;->d(Lcom/anythink/expressad/exoplayer/ad;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anythink/expressad/exoplayer/b/g;

    invoke-interface {v1, p1}, Lcom/anythink/expressad/exoplayer/b/g;->c(Lcom/anythink/expressad/exoplayer/c/d;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final d(Lcom/anythink/expressad/exoplayer/c/d;)V
    .locals 2

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/ad$a;->a:Lcom/anythink/expressad/exoplayer/ad;

    invoke-static {v0}, Lcom/anythink/expressad/exoplayer/ad;->d(Lcom/anythink/expressad/exoplayer/ad;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anythink/expressad/exoplayer/b/g;

    invoke-interface {v1, p1}, Lcom/anythink/expressad/exoplayer/b/g;->d(Lcom/anythink/expressad/exoplayer/c/d;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/ad$a;->a:Lcom/anythink/expressad/exoplayer/ad;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/anythink/expressad/exoplayer/ad;->b(Lcom/anythink/expressad/exoplayer/ad;Lcom/anythink/expressad/exoplayer/m;)Lcom/anythink/expressad/exoplayer/m;

    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/ad$a;->a:Lcom/anythink/expressad/exoplayer/ad;

    invoke-static {p1, v0}, Lcom/anythink/expressad/exoplayer/ad;->b(Lcom/anythink/expressad/exoplayer/ad;Lcom/anythink/expressad/exoplayer/c/d;)Lcom/anythink/expressad/exoplayer/c/d;

    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/ad$a;->a:Lcom/anythink/expressad/exoplayer/ad;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/anythink/expressad/exoplayer/ad;->a(Lcom/anythink/expressad/exoplayer/ad;I)I

    return-void
.end method

.method public final onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    iget-object p2, p0, Lcom/anythink/expressad/exoplayer/ad$a;->a:Lcom/anythink/expressad/exoplayer/ad;

    new-instance p3, Landroid/view/Surface;

    invoke-direct {p3, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    const/4 p1, 0x1

    invoke-static {p2, p3, p1}, Lcom/anythink/expressad/exoplayer/ad;->a(Lcom/anythink/expressad/exoplayer/ad;Landroid/view/Surface;Z)V

    return-void
.end method

.method public final onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 2

    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/ad$a;->a:Lcom/anythink/expressad/exoplayer/ad;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/anythink/expressad/exoplayer/ad;->a(Lcom/anythink/expressad/exoplayer/ad;Landroid/view/Surface;Z)V

    return v1
.end method

.method public final onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    return-void
.end method

.method public final onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method

.method public final surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    return-void
.end method

.method public final surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/ad$a;->a:Lcom/anythink/expressad/exoplayer/ad;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/anythink/expressad/exoplayer/ad;->a(Lcom/anythink/expressad/exoplayer/ad;Landroid/view/Surface;Z)V

    return-void
.end method

.method public final surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2

    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/ad$a;->a:Lcom/anythink/expressad/exoplayer/ad;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/anythink/expressad/exoplayer/ad;->a(Lcom/anythink/expressad/exoplayer/ad;Landroid/view/Surface;Z)V

    return-void
.end method
