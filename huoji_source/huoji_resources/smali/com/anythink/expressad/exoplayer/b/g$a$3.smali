.class public final Lcom/anythink/expressad/exoplayer/b/g$a$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/expressad/exoplayer/b/g$a;->a(Lcom/anythink/expressad/exoplayer/m;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/expressad/exoplayer/m;

.field public final synthetic b:Lcom/anythink/expressad/exoplayer/b/g$a;


# direct methods
.method public constructor <init>(Lcom/anythink/expressad/exoplayer/b/g$a;Lcom/anythink/expressad/exoplayer/m;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/b/g$a$3;->b:Lcom/anythink/expressad/exoplayer/b/g$a;

    iput-object p2, p0, Lcom/anythink/expressad/exoplayer/b/g$a$3;->a:Lcom/anythink/expressad/exoplayer/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/b/g$a$3;->b:Lcom/anythink/expressad/exoplayer/b/g$a;

    invoke-static {v0}, Lcom/anythink/expressad/exoplayer/b/g$a;->a(Lcom/anythink/expressad/exoplayer/b/g$a;)Lcom/anythink/expressad/exoplayer/b/g;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/b/g$a$3;->a:Lcom/anythink/expressad/exoplayer/m;

    invoke-interface {v0, v1}, Lcom/anythink/expressad/exoplayer/b/g;->b(Lcom/anythink/expressad/exoplayer/m;)V

    return-void
.end method
