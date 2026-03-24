.class public final Lcom/anythink/expressad/exoplayer/d/c$a$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/expressad/exoplayer/d/c$a;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/expressad/exoplayer/d/c;

.field public final synthetic b:Lcom/anythink/expressad/exoplayer/d/c$a;


# direct methods
.method public constructor <init>(Lcom/anythink/expressad/exoplayer/d/c$a;Lcom/anythink/expressad/exoplayer/d/c;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/d/c$a$3;->b:Lcom/anythink/expressad/exoplayer/d/c$a;

    iput-object p2, p0, Lcom/anythink/expressad/exoplayer/d/c$a$3;->a:Lcom/anythink/expressad/exoplayer/d/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/d/c$a$3;->a:Lcom/anythink/expressad/exoplayer/d/c;

    invoke-interface {v0}, Lcom/anythink/expressad/exoplayer/d/c;->e()V

    return-void
.end method
