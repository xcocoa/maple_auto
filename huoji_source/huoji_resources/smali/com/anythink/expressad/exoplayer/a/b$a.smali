.class public final Lcom/anythink/expressad/exoplayer/a/b$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/expressad/exoplayer/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:J

.field public final b:Lcom/anythink/expressad/exoplayer/ae;

.field public final c:I

.field public final d:Lcom/anythink/expressad/exoplayer/h/s$a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final e:J

.field public final f:J

.field public final g:J


# direct methods
.method public constructor <init>(JLcom/anythink/expressad/exoplayer/ae;ILcom/anythink/expressad/exoplayer/h/s$a;JJJ)V
    .locals 0
    .param p5    # Lcom/anythink/expressad/exoplayer/h/s$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/anythink/expressad/exoplayer/a/b$a;->a:J

    iput-object p3, p0, Lcom/anythink/expressad/exoplayer/a/b$a;->b:Lcom/anythink/expressad/exoplayer/ae;

    iput p4, p0, Lcom/anythink/expressad/exoplayer/a/b$a;->c:I

    iput-object p5, p0, Lcom/anythink/expressad/exoplayer/a/b$a;->d:Lcom/anythink/expressad/exoplayer/h/s$a;

    iput-wide p6, p0, Lcom/anythink/expressad/exoplayer/a/b$a;->e:J

    iput-wide p8, p0, Lcom/anythink/expressad/exoplayer/a/b$a;->f:J

    iput-wide p10, p0, Lcom/anythink/expressad/exoplayer/a/b$a;->g:J

    return-void
.end method
