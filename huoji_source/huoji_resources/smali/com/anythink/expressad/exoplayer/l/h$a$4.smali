.class public final Lcom/anythink/expressad/exoplayer/l/h$a$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/expressad/exoplayer/l/h$a;->a(IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:J

.field public final synthetic c:Lcom/anythink/expressad/exoplayer/l/h$a;


# direct methods
.method public constructor <init>(Lcom/anythink/expressad/exoplayer/l/h$a;IJ)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/l/h$a$4;->c:Lcom/anythink/expressad/exoplayer/l/h$a;

    iput p2, p0, Lcom/anythink/expressad/exoplayer/l/h$a$4;->a:I

    iput-wide p3, p0, Lcom/anythink/expressad/exoplayer/l/h$a$4;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/l/h$a$4;->c:Lcom/anythink/expressad/exoplayer/l/h$a;

    invoke-static {v0}, Lcom/anythink/expressad/exoplayer/l/h$a;->a(Lcom/anythink/expressad/exoplayer/l/h$a;)Lcom/anythink/expressad/exoplayer/l/h;

    move-result-object v0

    iget v1, p0, Lcom/anythink/expressad/exoplayer/l/h$a$4;->a:I

    iget-wide v2, p0, Lcom/anythink/expressad/exoplayer/l/h$a$4;->b:J

    invoke-interface {v0, v1, v2, v3}, Lcom/anythink/expressad/exoplayer/l/h;->a(IJ)V

    return-void
.end method
