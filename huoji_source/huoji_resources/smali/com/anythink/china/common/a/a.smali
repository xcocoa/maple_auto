.class public abstract Lcom/anythink/china/common/a/a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/china/common/a/a$a;
    }
.end annotation


# static fields
.field public static final e:Ljava/lang/String; = ".temp"

.field public static final f:Ljava/lang/String; = ".log"

.field public static final g:Ljava/lang/String; = ".apk"

.field public static final h:I = 0x0

.field public static final i:I = 0x1

.field public static final j:I = 0x2

.field public static final k:I = 0x3

.field public static final l:I = 0x4

.field private static final u:Ljava/lang/String; = "a"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Z

.field public d:Z

.field public m:I

.field public n:J

.field public o:J

.field public p:J

.field public q:J

.field public r:J

.field public s:J

.field public t:J

.field private v:Ljava/io/RandomAccessFile;

.field private w:Lcom/anythink/china/common/a/a$a;

.field private x:Lcom/anythink/china/common/a/e;

.field private y:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/anythink/china/common/a/e;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/anythink/china/common/a/a;->m:I

    iput-object p1, p0, Lcom/anythink/china/common/a/a;->x:Lcom/anythink/china/common/a/e;

    iget-object v0, p1, Lcom/anythink/china/common/a/e;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/anythink/china/common/a/a;->a:Ljava/lang/String;

    iget-object p1, p1, Lcom/anythink/china/common/a/e;->n:Ljava/lang/String;

    iput-object p1, p0, Lcom/anythink/china/common/a/a;->b:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lcom/anythink/china/common/a/a;Ljava/lang/String;Ljava/io/InputStream;)I
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/anythink/china/common/a/a;->a(Ljava/lang/String;Ljava/io/InputStream;)I

    move-result p0

    return p0
.end method

.method private a(Ljava/io/InputStream;Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)I
    .locals 11

    :try_start_0
    iget-wide v0, p0, Lcom/anythink/china/common/a/a;->n:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "("

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-lez v5, :cond_0

    :try_start_1
    sget-object v0, Lcom/anythink/china/common/a/a;->u:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/anythink/china/common/a/a;->x:Lcom/anythink/china/common/a/e;

    iget-object v2, v2, Lcom/anythink/china/common/a/e;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")  seek to -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/anythink/china/common/a/a;->n:J

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v0, p0, Lcom/anythink/china/common/a/a;->n:J

    invoke-virtual {p2, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/anythink/china/common/a/a;->u:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/anythink/china/common/a/a;->x:Lcom/anythink/china/common/a/e;

    iget-object v2, v2, Lcom/anythink/china/common/a/e;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")  set temp file size -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/anythink/china/common/a/a;->s:J

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v0, p0, Lcom/anythink/china/common/a/a;->s:J

    invoke-virtual {p2, v0, v1}, Ljava/io/RandomAccessFile;->setLength(J)V

    :goto_0
    const/high16 v0, 0x100000

    new-array v0, v0, [B

    iget-wide v1, p0, Lcom/anythink/china/common/a/a;->n:J

    iput-wide v1, p0, Lcom/anythink/china/common/a/a;->t:J

    :cond_1
    :goto_1
    const/4 v1, -0x1

    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-eq v1, v2, :cond_5

    iget-boolean v1, p0, Lcom/anythink/china/common/a/a;->d:Z

    if-eqz v1, :cond_2

    const/4 p1, 0x2

    return p1

    :cond_2
    iget-boolean v1, p0, Lcom/anythink/china/common/a/a;->c:Z

    if-eqz v1, :cond_3

    const/4 p1, 0x3

    return p1

    :cond_3
    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1, v2}, Ljava/io/RandomAccessFile;->write([BII)V

    iget-wide v5, p0, Lcom/anythink/china/common/a/a;->t:J

    int-to-long v1, v2

    add-long/2addr v5, v1

    iput-wide v5, p0, Lcom/anythink/china/common/a/a;->t:J

    iget-object v1, p0, Lcom/anythink/china/common/a/a;->x:Lcom/anythink/china/common/a/e;

    if-eqz v1, :cond_4

    iput-wide v5, v1, Lcom/anythink/china/common/a/e;->g:J

    :cond_4
    invoke-virtual {p3, v3, v4}, Ljava/io/RandomAccessFile;->setLength(J)V

    iget-wide v1, p0, Lcom/anythink/china/common/a/a;->t:J

    iget-wide v5, p0, Lcom/anythink/china/common/a/a;->s:J

    iget-object v7, p0, Lcom/anythink/china/common/a/a;->x:Lcom/anythink/china/common/a/e;

    invoke-virtual {v7}, Lcom/anythink/china/common/a/e;->a()Lcom/anythink/china/common/a/e$a;

    move-result-object v7

    invoke-static {v1, v2, v5, v6, v7}, Lcom/anythink/china/common/c/b;->a(JJLcom/anythink/china/common/a/e$a;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/RandomAccessFile;->write([B)V

    iget-object v5, p0, Lcom/anythink/china/common/a/a;->w:Lcom/anythink/china/common/a/a$a;

    if-eqz v5, :cond_1

    iget-object v6, p0, Lcom/anythink/china/common/a/a;->x:Lcom/anythink/china/common/a/e;

    iget-wide v7, p0, Lcom/anythink/china/common/a/a;->t:J

    iget-wide v9, p0, Lcom/anythink/china/common/a/a;->s:J

    invoke-interface/range {v5 .. v10}, Lcom/anythink/china/common/a/a$a;->b(Lcom/anythink/china/common/a/e;JJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_5
    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/china/common/a/a;->y:Ljava/lang/String;

    const/4 p1, 0x4

    return p1
.end method

.method private a(Ljava/lang/String;Ljava/io/InputStream;)I
    .locals 7

    const-string v0, "rws"

    invoke-static {p1}, Lcom/anythink/china/common/c/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x4

    if-eqz v1, :cond_0

    return v2

    :cond_0
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".temp"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".log"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/anythink/china/common/a/a;->v:Ljava/io/RandomAccessFile;

    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    move-result v5

    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    move-result v6

    if-eqz v5, :cond_1

    if-nez v6, :cond_2

    :cond_1
    return v2

    :cond_2
    new-instance v5, Ljava/io/RandomAccessFile;

    invoke-direct {v5, v1, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v4, Ljava/io/RandomAccessFile;

    invoke-direct {v4, v3, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/anythink/china/common/a/a;->v:Ljava/io/RandomAccessFile;

    invoke-direct {p0, p2, v5, v4}, Lcom/anythink/china/common/a/a;->a(Ljava/io/InputStream;Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_4

    new-instance v0, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".apk"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_3
    iget-object p1, p0, Lcom/anythink/china/common/a/a;->x:Lcom/anythink/china/common/a/e;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/anythink/china/common/a/e;->l()V

    goto :goto_0

    :cond_4
    const/4 p1, 0x2

    if-ne p2, p1, :cond_5

    iget-object p1, p0, Lcom/anythink/china/common/a/a;->x:Lcom/anythink/china/common/a/e;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/anythink/china/common/a/e;->k()V

    goto :goto_0

    :cond_5
    const/4 p1, 0x3

    if-ne p2, p1, :cond_6

    iget-object p1, p0, Lcom/anythink/china/common/a/a;->x:Lcom/anythink/china/common/a/e;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/anythink/china/common/a/e;->j()V

    goto :goto_0

    :cond_6
    if-ne p2, v2, :cond_7

    iget-object p1, p0, Lcom/anythink/china/common/a/a;->x:Lcom/anythink/china/common/a/e;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/anythink/china/common/a/e;->n()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_7
    :goto_0
    :try_start_2
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    return p2

    :catchall_0
    move-exception p1

    move-object v4, v5

    goto :goto_2

    :catchall_1
    move-exception p1

    :goto_2
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object p2, p0, Lcom/anythink/china/common/a/a;->y:Ljava/lang/String;

    if-eqz p2, :cond_8

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/anythink/china/common/a/a;->y:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "|"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_8
    iput-object p2, p0, Lcom/anythink/china/common/a/a;->y:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v4, :cond_9

    :try_start_4
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_3

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_9
    :goto_3
    return v2

    :catchall_2
    move-exception p1

    if-eqz v4, :cond_a

    :try_start_5
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_4

    :catch_2
    move-exception p2

    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    :cond_a
    :goto_4
    throw p1
.end method

.method public static synthetic a(Lcom/anythink/china/common/a/a;)V
    .locals 6

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/anythink/china/common/a/a;->b:Ljava/lang/String;

    invoke-static {v2}, Lcom/anythink/china/common/c/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".log"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/anythink/china/common/a/a;->b:Ljava/lang/String;

    invoke-static {v3}, Lcom/anythink/china/common/c/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".temp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_3

    :cond_0
    :try_start_0
    invoke-static {v0}, Lcom/anythink/china/common/c/b;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "apkLogFileContent: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", url: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/anythink/china/common/a/a;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "\\|"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    :goto_0
    iput-wide v2, p0, Lcom/anythink/china/common/a/a;->n:J

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    goto :goto_0

    :goto_1
    iget-wide v2, p0, Lcom/anythink/china/common/a/a;->n:J

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-lez v0, :cond_2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/anythink/china/common/a/a;->n:J

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/anythink/china/common/a/a;->s:J

    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "readLogFile: startPost -> "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/anythink/china/common/a/a;->n:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", downloadSize -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/anythink/china/common/a/a;->s:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void

    :cond_4
    :goto_3
    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    return-void
.end method

.method public static synthetic b(Lcom/anythink/china/common/a/a;)Lcom/anythink/china/common/a/e;
    .locals 0

    iget-object p0, p0, Lcom/anythink/china/common/a/a;->x:Lcom/anythink/china/common/a/e;

    return-object p0
.end method

.method public static synthetic c(Lcom/anythink/china/common/a/a;)Lcom/anythink/china/common/a/a$a;
    .locals 0

    iget-object p0, p0, Lcom/anythink/china/common/a/a;->w:Lcom/anythink/china/common/a/a$a;

    return-object p0
.end method

.method public static synthetic d(Lcom/anythink/china/common/a/a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/anythink/china/common/a/a;->y:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic f()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/anythink/china/common/a/a;->u:Ljava/lang/String;

    return-object v0
.end method

.method private g()V
    .locals 2

    new-instance v0, Lcom/anythink/china/common/a/a$1;

    invoke-direct {v0, p0}, Lcom/anythink/china/common/a/a$1;-><init>(Lcom/anythink/china/common/a/a;)V

    invoke-static {}, Lcom/anythink/china/common/a/a/a;->a()Lcom/anythink/china/common/a/a/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/anythink/china/common/a/a/a;->a(Lcom/anythink/core/common/o/b/d;)V

    return-void
.end method

.method private h()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/anythink/china/common/a/a;->v:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->setLength(J)V

    iget-wide v0, p0, Lcom/anythink/china/common/a/a;->t:J

    iget-wide v2, p0, Lcom/anythink/china/common/a/a;->s:J

    iget-object v4, p0, Lcom/anythink/china/common/a/a;->x:Lcom/anythink/china/common/a/e;

    invoke-virtual {v4}, Lcom/anythink/china/common/a/e;->a()Lcom/anythink/china/common/a/e$a;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/anythink/china/common/c/b;->a(JJLcom/anythink/china/common/a/e$a;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/china/common/a/a;->v:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/anythink/china/common/a/a;->v:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget-object v0, p0, Lcom/anythink/china/common/a/a;->v:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_2
    return-void

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    return-void

    :catchall_1
    move-exception v0

    :try_start_4
    iget-object v1, p0, Lcom/anythink/china/common/a/a;->v:Ljava/io/RandomAccessFile;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/anythink/china/common/a/a;->v:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :cond_3
    :goto_0
    throw v0
.end method

.method private i()V
    .locals 6

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/anythink/china/common/a/a;->b:Ljava/lang/String;

    invoke-static {v2}, Lcom/anythink/china/common/c/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".log"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/anythink/china/common/a/a;->b:Ljava/lang/String;

    invoke-static {v3}, Lcom/anythink/china/common/c/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".temp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_3

    :cond_0
    :try_start_0
    invoke-static {v0}, Lcom/anythink/china/common/c/b;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "apkLogFileContent: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", url: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/anythink/china/common/a/a;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "\\|"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    :goto_0
    iput-wide v2, p0, Lcom/anythink/china/common/a/a;->n:J

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    goto :goto_0

    :goto_1
    iget-wide v2, p0, Lcom/anythink/china/common/a/a;->n:J

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-lez v0, :cond_2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/anythink/china/common/a/a;->n:J

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/anythink/china/common/a/a;->s:J

    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "readLogFile: startPost -> "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/anythink/china/common/a/a;->n:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", downloadSize -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/anythink/china/common/a/a;->s:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void

    :cond_4
    :goto_3
    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    return-void
.end method

.method private static j()I
    .locals 1

    const v0, 0xea60

    return v0
.end method

.method private static k()I
    .locals 1

    const/16 v0, 0x4e20

    return v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/china/common/a/a;->c:Z

    return-void
.end method

.method public final a(Lcom/anythink/china/common/a/a$a;)V
    .locals 1

    iput-object p1, p0, Lcom/anythink/china/common/a/a;->w:Lcom/anythink/china/common/a/a$a;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/anythink/china/common/a/a;->c:Z

    new-instance p1, Lcom/anythink/china/common/a/a$1;

    invoke-direct {p1, p0}, Lcom/anythink/china/common/a/a$1;-><init>(Lcom/anythink/china/common/a/a;)V

    invoke-static {}, Lcom/anythink/china/common/a/a/a;->a()Lcom/anythink/china/common/a/a/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/anythink/china/common/a/a/a;->a(Lcom/anythink/core/common/o/b/d;)V

    return-void
.end method

.method public final a(Lcom/anythink/china/common/a/b;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "url: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/anythink/china/common/a/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lcom/anythink/china/common/a/a;->b(Lcom/anythink/china/common/a/b;)V

    return-void
.end method

.method public final a(Lorg/apache/http/conn/ConnectTimeoutException;)V
    .locals 1

    invoke-virtual {p1}, Lorg/apache/http/conn/ConnectTimeoutException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "10000"

    invoke-static {v0, p1}, Lcom/anythink/china/common/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/china/common/a/b;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/anythink/china/common/a/a;->b(Lcom/anythink/china/common/a/b;)V

    return-void
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/china/common/a/a;->d:Z

    return-void
.end method

.method public final b(Lcom/anythink/china/common/a/b;)V
    .locals 2

    invoke-direct {p0}, Lcom/anythink/china/common/a/a;->h()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "download failed --> "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/anythink/china/common/a/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/anythink/china/common/a/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/anythink/china/common/a/a;->x:Lcom/anythink/china/common/a/e;

    invoke-virtual {v0}, Lcom/anythink/china/common/a/e;->n()V

    iget-object v0, p0, Lcom/anythink/china/common/a/a;->w:Lcom/anythink/china/common/a/a$a;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/anythink/china/common/a/a;->x:Lcom/anythink/china/common/a/e;

    invoke-virtual {p1}, Lcom/anythink/china/common/a/b;->b()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/anythink/china/common/a/a$a;->a(Lcom/anythink/china/common/a/e;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final d()V
    .locals 9

    invoke-direct {p0}, Lcom/anythink/china/common/a/a;->h()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "url: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/anythink/china/common/a/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/anythink/china/common/a/a;->w:Lcom/anythink/china/common/a/a$a;

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/anythink/china/common/a/a;->x:Lcom/anythink/china/common/a/e;

    iget-wide v4, p0, Lcom/anythink/china/common/a/a;->t:J

    iget-wide v6, p0, Lcom/anythink/china/common/a/a;->s:J

    iget v8, p0, Lcom/anythink/china/common/a/a;->m:I

    invoke-interface/range {v2 .. v8}, Lcom/anythink/china/common/a/a$a;->a(Lcom/anythink/china/common/a/e;JJI)V

    :cond_0
    return-void
.end method

.method public final e()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "url: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/anythink/china/common/a/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/anythink/china/common/a/a;->w:Lcom/anythink/china/common/a/a$a;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/anythink/china/common/a/a;->x:Lcom/anythink/china/common/a/e;

    iget-wide v2, v1, Lcom/anythink/china/common/a/e;->i:J

    invoke-interface {v0, v1, v2, v3}, Lcom/anythink/china/common/a/a$a;->a(Lcom/anythink/china/common/a/e;J)V

    :cond_0
    return-void
.end method
