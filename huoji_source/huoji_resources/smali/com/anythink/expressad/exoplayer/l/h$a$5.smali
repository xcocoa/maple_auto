.class public final Lcom/anythink/expressad/exoplayer/l/h$a$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/expressad/exoplayer/l/h$a;->a(IIIF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:F

.field public final synthetic e:Lcom/anythink/expressad/exoplayer/l/h$a;


# direct methods
.method public constructor <init>(Lcom/anythink/expressad/exoplayer/l/h$a;IIIF)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/l/h$a$5;->e:Lcom/anythink/expressad/exoplayer/l/h$a;

    iput p2, p0, Lcom/anythink/expressad/exoplayer/l/h$a$5;->a:I

    iput p3, p0, Lcom/anythink/expressad/exoplayer/l/h$a$5;->b:I

    iput p4, p0, Lcom/anythink/expressad/exoplayer/l/h$a$5;->c:I

    iput p5, p0, Lcom/anythink/expressad/exoplayer/l/h$a$5;->d:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/l/h$a$5;->e:Lcom/anythink/expressad/exoplayer/l/h$a;

    invoke-static {v0}, Lcom/anythink/expressad/exoplayer/l/h$a;->a(Lcom/anythink/expressad/exoplayer/l/h$a;)Lcom/anythink/expressad/exoplayer/l/h;

    move-result-object v0

    iget v1, p0, Lcom/anythink/expressad/exoplayer/l/h$a$5;->a:I

    iget v2, p0, Lcom/anythink/expressad/exoplayer/l/h$a$5;->b:I

    iget v3, p0, Lcom/anythink/expressad/exoplayer/l/h$a$5;->c:I

    iget v4, p0, Lcom/anythink/expressad/exoplayer/l/h$a$5;->d:F

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/anythink/expressad/exoplayer/l/h;->a(IIIF)V

    return-void
.end method
