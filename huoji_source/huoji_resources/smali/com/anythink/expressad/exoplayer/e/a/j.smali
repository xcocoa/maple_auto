.class public final Lcom/anythink/expressad/exoplayer/e/a/j;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/expressad/exoplayer/e/a/j$a;
    }
.end annotation


# static fields
.field public static final a:I = 0x0

.field public static final b:I = 0x1


# instance fields
.field public final c:I

.field public final d:I

.field public final e:J

.field public final f:J

.field public final g:J

.field public final h:Lcom/anythink/expressad/exoplayer/m;

.field public final i:I

.field public final j:[J
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final k:[J
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final l:I

.field private final m:[Lcom/anythink/expressad/exoplayer/e/a/k;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(IIJJJLcom/anythink/expressad/exoplayer/m;I[Lcom/anythink/expressad/exoplayer/e/a/k;I[J[J)V
    .locals 0
    .param p11    # [Lcom/anythink/expressad/exoplayer/e/a/k;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p13    # [J
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p14    # [J
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/anythink/expressad/exoplayer/e/a/j;->c:I

    iput p2, p0, Lcom/anythink/expressad/exoplayer/e/a/j;->d:I

    iput-wide p3, p0, Lcom/anythink/expressad/exoplayer/e/a/j;->e:J

    iput-wide p5, p0, Lcom/anythink/expressad/exoplayer/e/a/j;->f:J

    iput-wide p7, p0, Lcom/anythink/expressad/exoplayer/e/a/j;->g:J

    iput-object p9, p0, Lcom/anythink/expressad/exoplayer/e/a/j;->h:Lcom/anythink/expressad/exoplayer/m;

    iput p10, p0, Lcom/anythink/expressad/exoplayer/e/a/j;->i:I

    iput-object p11, p0, Lcom/anythink/expressad/exoplayer/e/a/j;->m:[Lcom/anythink/expressad/exoplayer/e/a/k;

    iput p12, p0, Lcom/anythink/expressad/exoplayer/e/a/j;->l:I

    iput-object p13, p0, Lcom/anythink/expressad/exoplayer/e/a/j;->j:[J

    iput-object p14, p0, Lcom/anythink/expressad/exoplayer/e/a/j;->k:[J

    return-void
.end method


# virtual methods
.method public final a(I)Lcom/anythink/expressad/exoplayer/e/a/k;
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/e/a/j;->m:[Lcom/anythink/expressad/exoplayer/e/a/k;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    aget-object p1, v0, p1

    return-object p1
.end method
