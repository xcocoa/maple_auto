.class public final Lcom/anythink/expressad/exoplayer/h/t$c;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/expressad/exoplayer/h/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Lcom/anythink/expressad/exoplayer/m;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final d:I

.field public final e:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final f:J

.field public final g:J


# direct methods
.method public constructor <init>(IILcom/anythink/expressad/exoplayer/m;ILjava/lang/Object;JJ)V
    .locals 0
    .param p3    # Lcom/anythink/expressad/exoplayer/m;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/anythink/expressad/exoplayer/h/t$c;->a:I

    iput p2, p0, Lcom/anythink/expressad/exoplayer/h/t$c;->b:I

    iput-object p3, p0, Lcom/anythink/expressad/exoplayer/h/t$c;->c:Lcom/anythink/expressad/exoplayer/m;

    iput p4, p0, Lcom/anythink/expressad/exoplayer/h/t$c;->d:I

    iput-object p5, p0, Lcom/anythink/expressad/exoplayer/h/t$c;->e:Ljava/lang/Object;

    iput-wide p6, p0, Lcom/anythink/expressad/exoplayer/h/t$c;->f:J

    iput-wide p8, p0, Lcom/anythink/expressad/exoplayer/h/t$c;->g:J

    return-void
.end method
