.class public final Lcom/anythink/expressad/exoplayer/h/a/c$c$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/expressad/exoplayer/h/a/c$c;->a(Lcom/anythink/expressad/exoplayer/h/a/c$a;Lcom/anythink/expressad/exoplayer/j/k;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/expressad/exoplayer/h/a/c$a;

.field public final synthetic b:Lcom/anythink/expressad/exoplayer/h/a/c$c;


# direct methods
.method public constructor <init>(Lcom/anythink/expressad/exoplayer/h/a/c$c;Lcom/anythink/expressad/exoplayer/h/a/c$a;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/h/a/c$c$4;->b:Lcom/anythink/expressad/exoplayer/h/a/c$c;

    iput-object p2, p0, Lcom/anythink/expressad/exoplayer/h/a/c$c$4;->a:Lcom/anythink/expressad/exoplayer/h/a/c$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/a/c$c$4;->b:Lcom/anythink/expressad/exoplayer/h/a/c$c;

    invoke-static {v0}, Lcom/anythink/expressad/exoplayer/h/a/c$c;->a(Lcom/anythink/expressad/exoplayer/h/a/c$c;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/a/c$c$4;->a:Lcom/anythink/expressad/exoplayer/h/a/c$a;

    iget v0, v0, Lcom/anythink/expressad/exoplayer/h/a/c$a;->e:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/a/c$c$4;->b:Lcom/anythink/expressad/exoplayer/h/a/c$c;

    iget-object v0, v0, Lcom/anythink/expressad/exoplayer/h/a/c$c;->a:Lcom/anythink/expressad/exoplayer/h/a/c;

    invoke-static {v0}, Lcom/anythink/expressad/exoplayer/h/a/c;->d(Lcom/anythink/expressad/exoplayer/h/a/c;)Lcom/anythink/expressad/exoplayer/h/a/c$d;

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/a/c$c$4;->a:Lcom/anythink/expressad/exoplayer/h/a/c$a;

    iget v2, v0, Lcom/anythink/expressad/exoplayer/h/a/c$a;->e:I

    if-ne v2, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/anythink/expressad/exoplayer/k/a;->b(Z)V

    invoke-virtual {v0}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    return-void

    :cond_1
    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/a/c$c$4;->b:Lcom/anythink/expressad/exoplayer/h/a/c$c;

    iget-object v0, v0, Lcom/anythink/expressad/exoplayer/h/a/c$c;->a:Lcom/anythink/expressad/exoplayer/h/a/c;

    invoke-static {v0}, Lcom/anythink/expressad/exoplayer/h/a/c;->d(Lcom/anythink/expressad/exoplayer/h/a/c;)Lcom/anythink/expressad/exoplayer/h/a/c$d;

    :cond_2
    return-void
.end method
