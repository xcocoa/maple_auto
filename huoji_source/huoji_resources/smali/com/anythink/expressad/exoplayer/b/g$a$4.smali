.class public final Lcom/anythink/expressad/exoplayer/b/g$a$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/expressad/exoplayer/b/g$a;->a(IJJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:J

.field public final synthetic c:J

.field public final synthetic d:Lcom/anythink/expressad/exoplayer/b/g$a;


# direct methods
.method public constructor <init>(Lcom/anythink/expressad/exoplayer/b/g$a;IJJ)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/b/g$a$4;->d:Lcom/anythink/expressad/exoplayer/b/g$a;

    iput p2, p0, Lcom/anythink/expressad/exoplayer/b/g$a$4;->a:I

    iput-wide p3, p0, Lcom/anythink/expressad/exoplayer/b/g$a$4;->b:J

    iput-wide p5, p0, Lcom/anythink/expressad/exoplayer/b/g$a$4;->c:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/b/g$a$4;->d:Lcom/anythink/expressad/exoplayer/b/g$a;

    invoke-static {v0}, Lcom/anythink/expressad/exoplayer/b/g$a;->a(Lcom/anythink/expressad/exoplayer/b/g$a;)Lcom/anythink/expressad/exoplayer/b/g;

    move-result-object v1

    iget v2, p0, Lcom/anythink/expressad/exoplayer/b/g$a$4;->a:I

    iget-wide v3, p0, Lcom/anythink/expressad/exoplayer/b/g$a$4;->b:J

    iget-wide v5, p0, Lcom/anythink/expressad/exoplayer/b/g$a$4;->c:J

    invoke-interface/range {v1 .. v6}, Lcom/anythink/expressad/exoplayer/b/g;->a(IJJ)V

    return-void
.end method
