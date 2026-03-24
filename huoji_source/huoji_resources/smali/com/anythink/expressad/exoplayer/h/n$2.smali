.class public final Lcom/anythink/expressad/exoplayer/h/n$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/expressad/exoplayer/h/n;-><init>(Landroid/net/Uri;Lcom/anythink/expressad/exoplayer/j/h;[Lcom/anythink/expressad/exoplayer/e/e;ILcom/anythink/expressad/exoplayer/h/t$a;Lcom/anythink/expressad/exoplayer/h/n$c;Lcom/anythink/expressad/exoplayer/j/b;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/expressad/exoplayer/h/n;


# direct methods
.method public constructor <init>(Lcom/anythink/expressad/exoplayer/h/n;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/h/n$2;->a:Lcom/anythink/expressad/exoplayer/h/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/n$2;->a:Lcom/anythink/expressad/exoplayer/h/n;

    invoke-static {v0}, Lcom/anythink/expressad/exoplayer/h/n;->b(Lcom/anythink/expressad/exoplayer/h/n;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/n$2;->a:Lcom/anythink/expressad/exoplayer/h/n;

    invoke-static {v0}, Lcom/anythink/expressad/exoplayer/h/n;->c(Lcom/anythink/expressad/exoplayer/h/n;)Lcom/anythink/expressad/exoplayer/h/r$a;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/h/n$2;->a:Lcom/anythink/expressad/exoplayer/h/n;

    invoke-interface {v0, v1}, Lcom/anythink/expressad/exoplayer/h/z$a;->a(Lcom/anythink/expressad/exoplayer/h/z;)V

    :cond_0
    return-void
.end method
