.class public final Lcom/anythink/expressad/exoplayer/h/a/c$c$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/expressad/exoplayer/h/a/c$c;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/expressad/exoplayer/h/a/c$c;


# direct methods
.method public constructor <init>(Lcom/anythink/expressad/exoplayer/h/a/c$c;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/h/a/c$c$3;->a:Lcom/anythink/expressad/exoplayer/h/a/c$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/a/c$c$3;->a:Lcom/anythink/expressad/exoplayer/h/a/c$c;

    invoke-static {v0}, Lcom/anythink/expressad/exoplayer/h/a/c$c;->a(Lcom/anythink/expressad/exoplayer/h/a/c$c;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/a/c$c$3;->a:Lcom/anythink/expressad/exoplayer/h/a/c$c;

    iget-object v0, v0, Lcom/anythink/expressad/exoplayer/h/a/c$c;->a:Lcom/anythink/expressad/exoplayer/h/a/c;

    invoke-static {v0}, Lcom/anythink/expressad/exoplayer/h/a/c;->d(Lcom/anythink/expressad/exoplayer/h/a/c;)Lcom/anythink/expressad/exoplayer/h/a/c$d;

    :cond_0
    return-void
.end method
