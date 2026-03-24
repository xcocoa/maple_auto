.class public final Lcom/anythink/expressad/exoplayer/b/g$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/expressad/exoplayer/b/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/os/Handler;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final b:Lcom/anythink/expressad/exoplayer/b/g;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/anythink/expressad/exoplayer/b/g;)V
    .locals 0
    .param p1    # Landroid/os/Handler;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/anythink/expressad/exoplayer/b/g;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    invoke-static {p1}, Lcom/anythink/expressad/exoplayer/k/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Handler;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/b/g$a;->a:Landroid/os/Handler;

    iput-object p2, p0, Lcom/anythink/expressad/exoplayer/b/g$a;->b:Lcom/anythink/expressad/exoplayer/b/g;

    return-void
.end method

.method public static synthetic a(Lcom/anythink/expressad/exoplayer/b/g$a;)Lcom/anythink/expressad/exoplayer/b/g;
    .locals 0

    iget-object p0, p0, Lcom/anythink/expressad/exoplayer/b/g$a;->b:Lcom/anythink/expressad/exoplayer/b/g;

    return-object p0
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/b/g$a;->b:Lcom/anythink/expressad/exoplayer/b/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/b/g$a;->a:Landroid/os/Handler;

    new-instance v1, Lcom/anythink/expressad/exoplayer/b/g$a$6;

    invoke-direct {v1, p0, p1}, Lcom/anythink/expressad/exoplayer/b/g$a$6;-><init>(Lcom/anythink/expressad/exoplayer/b/g$a;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final a(IJJ)V
    .locals 9

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/b/g$a;->b:Lcom/anythink/expressad/exoplayer/b/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/b/g$a;->a:Landroid/os/Handler;

    new-instance v8, Lcom/anythink/expressad/exoplayer/b/g$a$4;

    move-object v1, v8

    move-object v2, p0

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/anythink/expressad/exoplayer/b/g$a$4;-><init>(Lcom/anythink/expressad/exoplayer/b/g$a;IJJ)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final a(Lcom/anythink/expressad/exoplayer/c/d;)V
    .locals 2

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/b/g$a;->b:Lcom/anythink/expressad/exoplayer/b/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/b/g$a;->a:Landroid/os/Handler;

    new-instance v1, Lcom/anythink/expressad/exoplayer/b/g$a$1;

    invoke-direct {v1, p0, p1}, Lcom/anythink/expressad/exoplayer/b/g$a$1;-><init>(Lcom/anythink/expressad/exoplayer/b/g$a;Lcom/anythink/expressad/exoplayer/c/d;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final a(Lcom/anythink/expressad/exoplayer/m;)V
    .locals 2

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/b/g$a;->b:Lcom/anythink/expressad/exoplayer/b/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/b/g$a;->a:Landroid/os/Handler;

    new-instance v1, Lcom/anythink/expressad/exoplayer/b/g$a$3;

    invoke-direct {v1, p0, p1}, Lcom/anythink/expressad/exoplayer/b/g$a$3;-><init>(Lcom/anythink/expressad/exoplayer/b/g$a;Lcom/anythink/expressad/exoplayer/m;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;JJ)V
    .locals 9

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/b/g$a;->b:Lcom/anythink/expressad/exoplayer/b/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/b/g$a;->a:Landroid/os/Handler;

    new-instance v8, Lcom/anythink/expressad/exoplayer/b/g$a$2;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/anythink/expressad/exoplayer/b/g$a$2;-><init>(Lcom/anythink/expressad/exoplayer/b/g$a;Ljava/lang/String;JJ)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final b(Lcom/anythink/expressad/exoplayer/c/d;)V
    .locals 2

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/b/g$a;->b:Lcom/anythink/expressad/exoplayer/b/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/b/g$a;->a:Landroid/os/Handler;

    new-instance v1, Lcom/anythink/expressad/exoplayer/b/g$a$5;

    invoke-direct {v1, p0, p1}, Lcom/anythink/expressad/exoplayer/b/g$a$5;-><init>(Lcom/anythink/expressad/exoplayer/b/g$a;Lcom/anythink/expressad/exoplayer/c/d;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
