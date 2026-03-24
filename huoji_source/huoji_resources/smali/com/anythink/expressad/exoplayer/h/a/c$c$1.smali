.class public final Lcom/anythink/expressad/exoplayer/h/a/c$c$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/expressad/exoplayer/h/a/c$c;->a(Lcom/anythink/expressad/exoplayer/h/a/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/expressad/exoplayer/h/a/a;

.field public final synthetic b:Lcom/anythink/expressad/exoplayer/h/a/c$c;


# direct methods
.method public constructor <init>(Lcom/anythink/expressad/exoplayer/h/a/c$c;Lcom/anythink/expressad/exoplayer/h/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/h/a/c$c$1;->b:Lcom/anythink/expressad/exoplayer/h/a/c$c;

    iput-object p2, p0, Lcom/anythink/expressad/exoplayer/h/a/c$c$1;->a:Lcom/anythink/expressad/exoplayer/h/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/a/c$c$1;->b:Lcom/anythink/expressad/exoplayer/h/a/c$c;

    invoke-static {v0}, Lcom/anythink/expressad/exoplayer/h/a/c$c;->a(Lcom/anythink/expressad/exoplayer/h/a/c$c;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/a/c$c$1;->b:Lcom/anythink/expressad/exoplayer/h/a/c$c;

    iget-object v0, v0, Lcom/anythink/expressad/exoplayer/h/a/c$c;->a:Lcom/anythink/expressad/exoplayer/h/a/c;

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/h/a/c$c$1;->a:Lcom/anythink/expressad/exoplayer/h/a/a;

    invoke-static {v0, v1}, Lcom/anythink/expressad/exoplayer/h/a/c;->a(Lcom/anythink/expressad/exoplayer/h/a/c;Lcom/anythink/expressad/exoplayer/h/a/a;)V

    return-void
.end method
