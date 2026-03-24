.class public final Lcom/anythink/expressad/exoplayer/j/k;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/expressad/exoplayer/j/k$a;
    }
.end annotation


# static fields
.field public static final a:I = 0x1

.field public static final b:I = 0x2


# instance fields
.field public final c:Landroid/net/Uri;

.field public final d:[B
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final e:J

.field public final f:J

.field public final g:J

.field public final h:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final i:I


# direct methods
.method public constructor <init>(Landroid/net/Uri;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/anythink/expressad/exoplayer/j/k;-><init>(Landroid/net/Uri;I)V

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;I)V
    .locals 8

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/anythink/expressad/exoplayer/j/k;-><init>(Landroid/net/Uri;JJLjava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;JJJLjava/lang/String;I)V
    .locals 11
    .param p8    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v3, p2

    move-wide v5, p4

    move-wide/from16 v7, p6

    move-object/from16 v9, p8

    move/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lcom/anythink/expressad/exoplayer/j/k;-><init>(Landroid/net/Uri;[BJJJLjava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;JJLjava/lang/String;I)V
    .locals 10
    .param p6    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p2

    move-wide v6, p4

    move-object/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Lcom/anythink/expressad/exoplayer/j/k;-><init>(Landroid/net/Uri;JJJLjava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;JLjava/lang/String;)V
    .locals 10
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-wide/16 v6, -0x1

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p2

    move-object v8, p4

    invoke-direct/range {v0 .. v9}, Lcom/anythink/expressad/exoplayer/j/k;-><init>(Landroid/net/Uri;JJJLjava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;[BJJJLjava/lang/String;I)V
    .locals 5
    .param p2    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p9    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    cmp-long v4, p3, v2

    if-ltz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    invoke-static {v4}, Lcom/anythink/expressad/exoplayer/k/a;->a(Z)V

    cmp-long v4, p5, v2

    if-ltz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    invoke-static {v4}, Lcom/anythink/expressad/exoplayer/k/a;->a(Z)V

    cmp-long v4, p7, v2

    if-gtz v4, :cond_3

    const-wide/16 v2, -0x1

    cmp-long v4, p7, v2

    if-nez v4, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :cond_3
    :goto_2
    invoke-static {v0}, Lcom/anythink/expressad/exoplayer/k/a;->a(Z)V

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/j/k;->c:Landroid/net/Uri;

    iput-object p2, p0, Lcom/anythink/expressad/exoplayer/j/k;->d:[B

    iput-wide p3, p0, Lcom/anythink/expressad/exoplayer/j/k;->e:J

    iput-wide p5, p0, Lcom/anythink/expressad/exoplayer/j/k;->f:J

    iput-wide p7, p0, Lcom/anythink/expressad/exoplayer/j/k;->g:J

    iput-object p9, p0, Lcom/anythink/expressad/exoplayer/j/k;->h:Ljava/lang/String;

    iput p10, p0, Lcom/anythink/expressad/exoplayer/j/k;->i:I

    return-void
.end method

.method private a(JJ)Lcom/anythink/expressad/exoplayer/j/k;
    .locals 14

    move-object v0, p0

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-nez v3, :cond_0

    iget-wide v1, v0, Lcom/anythink/expressad/exoplayer/j/k;->g:J

    cmp-long v3, v1, p3

    if-nez v3, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Lcom/anythink/expressad/exoplayer/j/k;

    iget-object v4, v0, Lcom/anythink/expressad/exoplayer/j/k;->c:Landroid/net/Uri;

    iget-object v5, v0, Lcom/anythink/expressad/exoplayer/j/k;->d:[B

    iget-wide v2, v0, Lcom/anythink/expressad/exoplayer/j/k;->e:J

    add-long v6, v2, p1

    iget-wide v2, v0, Lcom/anythink/expressad/exoplayer/j/k;->f:J

    add-long v8, v2, p1

    iget-object v12, v0, Lcom/anythink/expressad/exoplayer/j/k;->h:Ljava/lang/String;

    iget v13, v0, Lcom/anythink/expressad/exoplayer/j/k;->i:I

    move-object v3, v1

    move-wide/from16 v10, p3

    invoke-direct/range {v3 .. v13}, Lcom/anythink/expressad/exoplayer/j/k;-><init>(Landroid/net/Uri;[BJJJLjava/lang/String;I)V

    return-object v1
.end method

.method private a(Landroid/net/Uri;)Lcom/anythink/expressad/exoplayer/j/k;
    .locals 12

    new-instance v11, Lcom/anythink/expressad/exoplayer/j/k;

    iget-object v2, p0, Lcom/anythink/expressad/exoplayer/j/k;->d:[B

    iget-wide v3, p0, Lcom/anythink/expressad/exoplayer/j/k;->e:J

    iget-wide v5, p0, Lcom/anythink/expressad/exoplayer/j/k;->f:J

    iget-wide v7, p0, Lcom/anythink/expressad/exoplayer/j/k;->g:J

    iget-object v9, p0, Lcom/anythink/expressad/exoplayer/j/k;->h:Ljava/lang/String;

    iget v10, p0, Lcom/anythink/expressad/exoplayer/j/k;->i:I

    move-object v0, v11

    move-object v1, p1

    invoke-direct/range {v0 .. v10}, Lcom/anythink/expressad/exoplayer/j/k;-><init>(Landroid/net/Uri;[BJJJLjava/lang/String;I)V

    return-object v11
.end method


# virtual methods
.method public final a(J)Lcom/anythink/expressad/exoplayer/j/k;
    .locals 16

    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/anythink/expressad/exoplayer/j/k;->g:J

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    sub-long v3, v1, p1

    :goto_0
    move-wide v12, v3

    const-wide/16 v3, 0x0

    cmp-long v5, p1, v3

    if-nez v5, :cond_1

    cmp-long v3, v1, v12

    if-nez v3, :cond_1

    return-object v0

    :cond_1
    new-instance v1, Lcom/anythink/expressad/exoplayer/j/k;

    iget-object v6, v0, Lcom/anythink/expressad/exoplayer/j/k;->c:Landroid/net/Uri;

    iget-object v7, v0, Lcom/anythink/expressad/exoplayer/j/k;->d:[B

    iget-wide v2, v0, Lcom/anythink/expressad/exoplayer/j/k;->e:J

    add-long v8, v2, p1

    iget-wide v2, v0, Lcom/anythink/expressad/exoplayer/j/k;->f:J

    add-long v10, v2, p1

    iget-object v14, v0, Lcom/anythink/expressad/exoplayer/j/k;->h:Ljava/lang/String;

    iget v15, v0, Lcom/anythink/expressad/exoplayer/j/k;->i:I

    move-object v5, v1

    invoke-direct/range {v5 .. v15}, Lcom/anythink/expressad/exoplayer/j/k;-><init>(Landroid/net/Uri;[BJJJLjava/lang/String;I)V

    return-object v1
.end method

.method public final a(I)Z
    .locals 1

    iget v0, p0, Lcom/anythink/expressad/exoplayer/j/k;->i:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DataSpec["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/j/k;->c:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/anythink/expressad/exoplayer/j/k;->d:[B

    invoke-static {v2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/anythink/expressad/exoplayer/j/k;->e:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/anythink/expressad/exoplayer/j/k;->f:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/anythink/expressad/exoplayer/j/k;->g:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/anythink/expressad/exoplayer/j/k;->h:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/anythink/expressad/exoplayer/j/k;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
