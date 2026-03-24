.class public Lcom/octopus/ad/internal/view/AdViewImpl$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/octopus/ad/internal/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/octopus/ad/internal/view/AdViewImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:Lcom/octopus/ad/internal/view/AdViewImpl;

.field private b:Landroid/os/Handler;

.field private c:Lcom/octopus/ad/internal/network/b;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/internal/view/AdViewImpl;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/internal/view/AdViewImpl$b;->a:Lcom/octopus/ad/internal/view/AdViewImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/octopus/ad/internal/view/AdViewImpl$b;->b:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic a(Lcom/octopus/ad/internal/view/AdViewImpl$b;)Lcom/octopus/ad/internal/network/b;
    .locals 0

    iget-object p0, p0, Lcom/octopus/ad/internal/view/AdViewImpl$b;->c:Lcom/octopus/ad/internal/network/b;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl$b;->a:Lcom/octopus/ad/internal/view/AdViewImpl;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/octopus/ad/internal/view/AdViewImpl;->a(Lcom/octopus/ad/internal/view/AdViewImpl;J)J

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl$b;->b:Landroid/os/Handler;

    new-instance v1, Lcom/octopus/ad/internal/view/AdViewImpl$b$2;

    invoke-direct {v1, p0}, Lcom/octopus/ad/internal/view/AdViewImpl$b$2;-><init>(Lcom/octopus/ad/internal/view/AdViewImpl$b;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(I)V
    .locals 2

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl$b;->b:Landroid/os/Handler;

    new-instance v1, Lcom/octopus/ad/internal/view/AdViewImpl$b$3;

    invoke-direct {v1, p0, p1}, Lcom/octopus/ad/internal/view/AdViewImpl$b$3;-><init>(Lcom/octopus/ad/internal/view/AdViewImpl$b;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(J)V
    .locals 2

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl$b;->b:Landroid/os/Handler;

    new-instance v1, Lcom/octopus/ad/internal/view/AdViewImpl$b$8;

    invoke-direct {v1, p0, p1, p2}, Lcom/octopus/ad/internal/view/AdViewImpl$b$8;-><init>(Lcom/octopus/ad/internal/view/AdViewImpl$b;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(Lcom/octopus/ad/internal/network/b;)V
    .locals 3

    iput-object p1, p0, Lcom/octopus/ad/internal/view/AdViewImpl$b;->c:Lcom/octopus/ad/internal/network/b;

    invoke-interface {p1}, Lcom/octopus/ad/internal/network/b;->a()Lcom/octopus/ad/internal/l;

    move-result-object v0

    sget-object v1, Lcom/octopus/ad/internal/l;->b:Lcom/octopus/ad/internal/l;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Lcom/octopus/ad/internal/network/b;->a()Lcom/octopus/ad/internal/l;

    move-result-object v0

    sget-object v1, Lcom/octopus/ad/internal/l;->c:Lcom/octopus/ad/internal/l;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Lcom/octopus/ad/internal/network/b;->a()Lcom/octopus/ad/internal/l;

    move-result-object v0

    sget-object v1, Lcom/octopus/ad/internal/l;->a:Lcom/octopus/ad/internal/l;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const p1, 0x138e7

    invoke-virtual {p0, p1}, Lcom/octopus/ad/internal/view/AdViewImpl$b;->a(I)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl$b;->a:Lcom/octopus/ad/internal/view/AdViewImpl;

    iget-object v0, v0, Lcom/octopus/ad/internal/view/AdViewImpl;->serverResponse:Lcom/octopus/ad/internal/network/ServerResponse;

    invoke-virtual {v0}, Lcom/octopus/ad/internal/network/ServerResponse;->getFilter()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    const v0, 0x138e4

    invoke-virtual {p0, v0}, Lcom/octopus/ad/internal/view/AdViewImpl$b;->a(I)V

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl$b;->a:Lcom/octopus/ad/internal/view/AdViewImpl;

    invoke-interface {p1}, Lcom/octopus/ad/internal/network/b;->e()I

    move-result p1

    add-int/lit8 p1, p1, 0x64

    const-string v1, "1001"

    const-string v2, "OTHER"

    invoke-virtual {v0, p1, v1, v2}, Lcom/octopus/ad/internal/view/AdViewImpl;->sendLossNotice(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl$b;->b:Landroid/os/Handler;

    new-instance v1, Lcom/octopus/ad/internal/view/AdViewImpl$b$1;

    invoke-direct {v1, p0, p1}, Lcom/octopus/ad/internal/view/AdViewImpl$b$1;-><init>(Lcom/octopus/ad/internal/view/AdViewImpl$b;Lcom/octopus/ad/internal/network/b;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_1
    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl$b;->b:Landroid/os/Handler;

    new-instance v1, Lcom/octopus/ad/internal/view/AdViewImpl$b$7;

    invoke-direct {v1, p0, p1, p2}, Lcom/octopus/ad/internal/view/AdViewImpl$b$7;-><init>(Lcom/octopus/ad/internal/view/AdViewImpl$b;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl$b;->b:Landroid/os/Handler;

    new-instance v1, Lcom/octopus/ad/internal/view/AdViewImpl$b$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/octopus/ad/internal/view/AdViewImpl$b$6;-><init>(Lcom/octopus/ad/internal/view/AdViewImpl$b;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl$b;->a:Lcom/octopus/ad/internal/view/AdViewImpl;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/octopus/ad/internal/view/AdViewImpl;->b(Lcom/octopus/ad/internal/view/AdViewImpl;Z)Z

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl$b;->b:Landroid/os/Handler;

    new-instance v1, Lcom/octopus/ad/internal/view/AdViewImpl$b$4;

    invoke-direct {v1, p0}, Lcom/octopus/ad/internal/view/AdViewImpl$b$4;-><init>(Lcom/octopus/ad/internal/view/AdViewImpl$b;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public d()V
    .locals 2

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl$b;->b:Landroid/os/Handler;

    new-instance v1, Lcom/octopus/ad/internal/view/AdViewImpl$b$5;

    invoke-direct {v1, p0}, Lcom/octopus/ad/internal/view/AdViewImpl$b$5;-><init>(Lcom/octopus/ad/internal/view/AdViewImpl$b;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public e()V
    .locals 0

    return-void
.end method

.method public f()V
    .locals 0

    return-void
.end method
