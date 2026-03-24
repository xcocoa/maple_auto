.class public final Lcom/anythink/expressad/exoplayer/j/m$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/expressad/exoplayer/j/m;->a(IJJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:J

.field public final synthetic c:J

.field public final synthetic d:Lcom/anythink/expressad/exoplayer/j/m;


# direct methods
.method public constructor <init>(Lcom/anythink/expressad/exoplayer/j/m;IJJ)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/j/m$1;->d:Lcom/anythink/expressad/exoplayer/j/m;

    iput p2, p0, Lcom/anythink/expressad/exoplayer/j/m$1;->a:I

    iput-wide p3, p0, Lcom/anythink/expressad/exoplayer/j/m$1;->b:J

    iput-wide p5, p0, Lcom/anythink/expressad/exoplayer/j/m$1;->c:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/j/m$1;->d:Lcom/anythink/expressad/exoplayer/j/m;

    invoke-static {v0}, Lcom/anythink/expressad/exoplayer/j/m;->a(Lcom/anythink/expressad/exoplayer/j/m;)Lcom/anythink/expressad/exoplayer/j/d$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/expressad/exoplayer/j/d$a;->c()V

    return-void
.end method
