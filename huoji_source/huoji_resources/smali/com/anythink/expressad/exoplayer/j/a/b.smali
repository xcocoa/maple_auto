.class public final Lcom/anythink/expressad/exoplayer/j/a/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/expressad/exoplayer/j/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/expressad/exoplayer/j/a/b$a;
    }
.end annotation


# static fields
.field public static final a:I = 0x5000


# instance fields
.field private final b:Lcom/anythink/expressad/exoplayer/j/a/a;

.field private final c:J

.field private final d:I

.field private final e:Z

.field private f:Lcom/anythink/expressad/exoplayer/j/k;

.field private g:Ljava/io/File;

.field private h:Ljava/io/OutputStream;

.field private i:Ljava/io/FileOutputStream;

.field private j:J

.field private k:J

.field private l:Lcom/anythink/expressad/exoplayer/k/x;


# direct methods
.method public constructor <init>(Lcom/anythink/expressad/exoplayer/j/a/a;)V
    .locals 6

    const-wide/32 v2, 0x200000

    const/16 v4, 0x5000

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/anythink/expressad/exoplayer/j/a/b;-><init>(Lcom/anythink/expressad/exoplayer/j/a/a;JIZ)V

    return-void
.end method

.method private constructor <init>(Lcom/anythink/expressad/exoplayer/j/a/a;JI)V
    .locals 6

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/anythink/expressad/exoplayer/j/a/b;-><init>(Lcom/anythink/expressad/exoplayer/j/a/a;JIZ)V

    return-void
.end method

.method private constructor <init>(Lcom/anythink/expressad/exoplayer/j/a/a;JIZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/anythink/expressad/exoplayer/k/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/anythink/expressad/exoplayer/j/a/a;

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/j/a/b;->b:Lcom/anythink/expressad/exoplayer/j/a/a;

    iput-wide p2, p0, Lcom/anythink/expressad/exoplayer/j/a/b;->c:J

    iput p4, p0, Lcom/anythink/expressad/exoplayer/j/a/b;->d:I

    iput-boolean p5, p0, Lcom/anythink/expressad/exoplayer/j/a/b;->e:Z

    return-void
.end method

.method private constructor <init>(Lcom/anythink/expressad/exoplayer/j/a/a;JZ)V
    .locals 6

    const/16 v4, 0x5000

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/anythink/expressad/exoplayer/j/a/b;-><init>(Lcom/anythink/expressad/exoplayer/j/a/a;JIZ)V

    return-void
.end method

.method private b()V
    .locals 7

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/j/a/b;->f:Lcom/anythink/expressad/exoplayer/j/k;

    iget-wide v0, v0, Lcom/anythink/expressad/exoplayer/j/k;->g:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    iget-wide v2, p0, Lcom/anythink/expressad/exoplayer/j/a/b;->k:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/anythink/expressad/exoplayer/j/a/b;->c:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/j/a/b;->b:Lcom/anythink/expressad/exoplayer/j/a/a;

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/j/a/b;->f:Lcom/anythink/expressad/exoplayer/j/k;

    iget-object v2, v1, Lcom/anythink/expressad/exoplayer/j/k;->h:Ljava/lang/String;

    iget-wide v3, v1, Lcom/anythink/expressad/exoplayer/j/k;->e:J

    iget-wide v5, p0, Lcom/anythink/expressad/exoplayer/j/a/b;->k:J

    add-long/2addr v3, v5

    invoke-interface {v0, v2, v3, v4}, Lcom/anythink/expressad/exoplayer/j/a/a;->c(Ljava/lang/String;J)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/expressad/exoplayer/j/a/b;->g:Ljava/io/File;

    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/j/a/b;->g:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/anythink/expressad/exoplayer/j/a/b;->i:Ljava/io/FileOutputStream;

    iget v1, p0, Lcom/anythink/expressad/exoplayer/j/a/b;->d:I

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/j/a/b;->l:Lcom/anythink/expressad/exoplayer/k/x;

    if-nez v1, :cond_1

    new-instance v0, Lcom/anythink/expressad/exoplayer/k/x;

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/j/a/b;->i:Ljava/io/FileOutputStream;

    iget v2, p0, Lcom/anythink/expressad/exoplayer/j/a/b;->d:I

    invoke-direct {v0, v1, v2}, Lcom/anythink/expressad/exoplayer/k/x;-><init>(Ljava/io/OutputStream;I)V

    iput-object v0, p0, Lcom/anythink/expressad/exoplayer/j/a/b;->l:Lcom/anythink/expressad/exoplayer/k/x;

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v0}, Lcom/anythink/expressad/exoplayer/k/x;->a(Ljava/io/OutputStream;)V

    :goto_0
    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/j/a/b;->l:Lcom/anythink/expressad/exoplayer/k/x;

    :cond_2
    iput-object v0, p0, Lcom/anythink/expressad/exoplayer/j/a/b;->h:Ljava/io/OutputStream;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/anythink/expressad/exoplayer/j/a/b;->j:J

    return-void
.end method

.method private c()V
    .locals 3

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/j/a/b;->h:Ljava/io/OutputStream;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    iget-boolean v0, p0, Lcom/anythink/expressad/exoplayer/j/a/b;->e:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/j/a/b;->i:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/j/a/b;->h:Ljava/io/OutputStream;

    invoke-static {v0}, Lcom/anythink/expressad/exoplayer/k/af;->a(Ljava/io/Closeable;)V

    iput-object v1, p0, Lcom/anythink/expressad/exoplayer/j/a/b;->h:Ljava/io/OutputStream;

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/j/a/b;->g:Ljava/io/File;

    iput-object v1, p0, Lcom/anythink/expressad/exoplayer/j/a/b;->g:Ljava/io/File;

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/j/a/b;->b:Lcom/anythink/expressad/exoplayer/j/a/a;

    invoke-interface {v1, v0}, Lcom/anythink/expressad/exoplayer/j/a/a;->a(Ljava/io/File;)V

    return-void

    :catchall_0
    move-exception v0

    iget-object v2, p0, Lcom/anythink/expressad/exoplayer/j/a/b;->h:Ljava/io/OutputStream;

    invoke-static {v2}, Lcom/anythink/expressad/exoplayer/k/af;->a(Ljava/io/Closeable;)V

    iput-object v1, p0, Lcom/anythink/expressad/exoplayer/j/a/b;->h:Ljava/io/OutputStream;

    iget-object v2, p0, Lcom/anythink/expressad/exoplayer/j/a/b;->g:Ljava/io/File;

    iput-object v1, p0, Lcom/anythink/expressad/exoplayer/j/a/b;->g:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    throw v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/j/a/b;->f:Lcom/anythink/expressad/exoplayer/j/k;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/anythink/expressad/exoplayer/j/a/b;->c()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/anythink/expressad/exoplayer/j/a/b$a;

    invoke-direct {v1, v0}, Lcom/anythink/expressad/exoplayer/j/a/b$a;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public final a(Lcom/anythink/expressad/exoplayer/j/k;)V
    .locals 5

    iget-wide v0, p1, Lcom/anythink/expressad/exoplayer/j/k;->g:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/anythink/expressad/exoplayer/j/k;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/j/a/b;->f:Lcom/anythink/expressad/exoplayer/j/k;

    return-void

    :cond_0
    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/j/a/b;->f:Lcom/anythink/expressad/exoplayer/j/k;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/anythink/expressad/exoplayer/j/a/b;->k:J

    :try_start_0
    invoke-direct {p0}, Lcom/anythink/expressad/exoplayer/j/a/b;->b()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lcom/anythink/expressad/exoplayer/j/a/b$a;

    invoke-direct {v0, p1}, Lcom/anythink/expressad/exoplayer/j/a/b$a;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method public final a([BII)V
    .locals 7

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/j/a/b;->f:Lcom/anythink/expressad/exoplayer/j/k;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_2

    :try_start_0
    iget-wide v1, p0, Lcom/anythink/expressad/exoplayer/j/a/b;->j:J

    iget-wide v3, p0, Lcom/anythink/expressad/exoplayer/j/a/b;->c:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    invoke-direct {p0}, Lcom/anythink/expressad/exoplayer/j/a/b;->c()V

    invoke-direct {p0}, Lcom/anythink/expressad/exoplayer/j/a/b;->b()V

    :cond_1
    sub-int v1, p3, v0

    int-to-long v1, v1

    iget-wide v3, p0, Lcom/anythink/expressad/exoplayer/j/a/b;->c:J

    iget-wide v5, p0, Lcom/anythink/expressad/exoplayer/j/a/b;->j:J

    sub-long/2addr v3, v5

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v2, v1

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/j/a/b;->h:Ljava/io/OutputStream;

    add-int v3, p2, v0

    invoke-virtual {v1, p1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    add-int/2addr v0, v2

    iget-wide v3, p0, Lcom/anythink/expressad/exoplayer/j/a/b;->j:J

    int-to-long v1, v2

    add-long/2addr v3, v1

    iput-wide v3, p0, Lcom/anythink/expressad/exoplayer/j/a/b;->j:J

    iget-wide v3, p0, Lcom/anythink/expressad/exoplayer/j/a/b;->k:J

    add-long/2addr v3, v1

    iput-wide v3, p0, Lcom/anythink/expressad/exoplayer/j/a/b;->k:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Lcom/anythink/expressad/exoplayer/j/a/b$a;

    invoke-direct {p2, p1}, Lcom/anythink/expressad/exoplayer/j/a/b$a;-><init>(Ljava/io/IOException;)V

    throw p2

    :cond_2
    return-void
.end method
