.class public final Lcom/anythink/expressad/exoplayer/b/g$a$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/expressad/exoplayer/b/g$a;->b(Lcom/anythink/expressad/exoplayer/c/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/expressad/exoplayer/c/d;

.field public final synthetic b:Lcom/anythink/expressad/exoplayer/b/g$a;


# direct methods
.method public constructor <init>(Lcom/anythink/expressad/exoplayer/b/g$a;Lcom/anythink/expressad/exoplayer/c/d;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/b/g$a$5;->b:Lcom/anythink/expressad/exoplayer/b/g$a;

    iput-object p2, p0, Lcom/anythink/expressad/exoplayer/b/g$a$5;->a:Lcom/anythink/expressad/exoplayer/c/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/b/g$a$5;->b:Lcom/anythink/expressad/exoplayer/b/g$a;

    invoke-static {v0}, Lcom/anythink/expressad/exoplayer/b/g$a;->a(Lcom/anythink/expressad/exoplayer/b/g$a;)Lcom/anythink/expressad/exoplayer/b/g;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/b/g$a$5;->a:Lcom/anythink/expressad/exoplayer/c/d;

    invoke-interface {v0, v1}, Lcom/anythink/expressad/exoplayer/b/g;->d(Lcom/anythink/expressad/exoplayer/c/d;)V

    return-void
.end method
