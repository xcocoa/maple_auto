.class public Lcom/anythink/expressad/foundation/g/f/d/a;
.super Lcom/anythink/expressad/foundation/g/f/i;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/anythink/expressad/foundation/g/f/i<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final c:Ljava/lang/String;


# instance fields
.field private d:Ljava/io/File;

.field private e:Ljava/io/File;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/anythink/expressad/foundation/g/f/d/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/anythink/expressad/foundation/g/f/d/a;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p2}, Lcom/anythink/expressad/foundation/g/f/i;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/anythink/expressad/foundation/g/f/d/a;->d:Ljava/io/File;

    new-instance p2, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ".tmp"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/anythink/expressad/foundation/g/f/d/a;->e:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final a(Lcom/anythink/expressad/foundation/g/f/f/c;)Lcom/anythink/expressad/foundation/g/f/k;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/anythink/expressad/foundation/g/f/f/c;",
            ")",
            "Lcom/anythink/expressad/foundation/g/f/k<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/anythink/expressad/foundation/g/f/i;->f()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/anythink/expressad/foundation/g/f/d/a;->e:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v0

    const/4 v1, 0x4

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/anythink/expressad/foundation/g/f/d/a;->e:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/anythink/expressad/foundation/g/f/d/a;->e:Ljava/io/File;

    iget-object v2, p0, Lcom/anythink/expressad/foundation/g/f/d/a;->d:Ljava/io/File;

    invoke-virtual {v0, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0, p1}, Lcom/anythink/expressad/foundation/g/f/k;->a(Ljava/lang/Object;Lcom/anythink/expressad/foundation/g/f/f/c;)Lcom/anythink/expressad/foundation/g/f/k;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Lcom/anythink/expressad/foundation/g/f/a/a;

    invoke-direct {v0, v1, p1}, Lcom/anythink/expressad/foundation/g/f/a/a;-><init>(ILcom/anythink/expressad/foundation/g/f/f/c;)V

    invoke-static {v0}, Lcom/anythink/expressad/foundation/g/f/k;->a(Lcom/anythink/expressad/foundation/g/f/a/a;)Lcom/anythink/expressad/foundation/g/f/k;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance v0, Lcom/anythink/expressad/foundation/g/f/a/a;

    invoke-direct {v0, v1, p1}, Lcom/anythink/expressad/foundation/g/f/a/a;-><init>(ILcom/anythink/expressad/foundation/g/f/f/c;)V

    invoke-static {v0}, Lcom/anythink/expressad/foundation/g/f/k;->a(Lcom/anythink/expressad/foundation/g/f/a/a;)Lcom/anythink/expressad/foundation/g/f/k;

    move-result-object p1

    return-object p1

    :cond_2
    new-instance v0, Lcom/anythink/expressad/foundation/g/f/a/a;

    const/4 v1, -0x2

    invoke-direct {v0, v1, p1}, Lcom/anythink/expressad/foundation/g/f/a/a;-><init>(ILcom/anythink/expressad/foundation/g/f/f/c;)V

    invoke-static {v0}, Lcom/anythink/expressad/foundation/g/f/k;->a(Lcom/anythink/expressad/foundation/g/f/a/a;)Lcom/anythink/expressad/foundation/g/f/k;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/anythink/expressad/foundation/g/f/f/b;Lcom/anythink/expressad/foundation/g/f/c;)[B
    .locals 13

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/g/f/f/b;->b()Ljava/util/List;

    move-result-object v0

    const-string v1, "Content-Length"

    invoke-static {v0, v1}, Lcom/anythink/expressad/foundation/g/f/g/d;->a(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-wide/16 v2, 0x0

    if-nez v1, :cond_0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    move-wide v0, v2

    :goto_0
    const/4 v10, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    iget-object v4, p0, Lcom/anythink/expressad/foundation/g/f/d/a;->d:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    cmp-long v6, v4, v0

    if-nez v6, :cond_1

    iget-object p1, p0, Lcom/anythink/expressad/foundation/g/f/d/a;->d:Ljava/io/File;

    iget-object v2, p0, Lcom/anythink/expressad/foundation/g/f/d/a;->e:Ljava/io/File;

    invoke-virtual {p1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-object v4, p2

    move-object v5, p0

    move-wide v6, v0

    move-wide v8, v0

    invoke-interface/range {v4 .. v9}, Lcom/anythink/expressad/foundation/g/f/c;->a(Lcom/anythink/expressad/foundation/g/f/i;JJ)V

    return-object v10

    :cond_1
    new-instance v11, Ljava/io/RandomAccessFile;

    iget-object v4, p0, Lcom/anythink/expressad/foundation/g/f/d/a;->e:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    const-string v5, "rw"

    invoke-direct {v11, v4, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11, v2, v3}, Ljava/io/RandomAccessFile;->setLength(J)V

    :try_start_0
    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/g/f/f/b;->c()Ljava/io/InputStream;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/g/f/f/b;->b()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/anythink/expressad/foundation/g/f/g/d;->b(Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_2

    instance-of p1, v4, Ljava/util/zip/GZIPInputStream;

    if-nez p1, :cond_2

    new-instance p1, Ljava/util/zip/GZIPInputStream;

    invoke-direct {p1, v4}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :cond_2
    move-object p1, v4

    :goto_1
    const/16 v4, 0x1800

    :try_start_2
    new-array v12, v4, [B

    :cond_3
    invoke-virtual {p1, v12}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_4

    const/4 v5, 0x0

    invoke-virtual {v11, v12, v5, v4}, Ljava/io/RandomAccessFile;->write([BII)V

    int-to-long v4, v4

    add-long/2addr v2, v4

    move-object v4, p2

    move-object v5, p0

    move-wide v6, v0

    move-wide v8, v2

    invoke-interface/range {v4 .. v9}, Lcom/anythink/expressad/foundation/g/f/c;->a(Lcom/anythink/expressad/foundation/g/f/i;JJ)V

    invoke-virtual {p0}, Lcom/anythink/expressad/foundation/g/f/i;->f()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {p2, p0}, Lcom/anythink/expressad/foundation/g/f/c;->b(Lcom/anythink/expressad/foundation/g/f/i;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_4
    if-eqz p1, :cond_5

    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    :cond_5
    :goto_2
    invoke-virtual {v11}, Ljava/io/RandomAccessFile;->close()V

    return-object v10

    :catchall_0
    move-exception p2

    move-object v10, p1

    move-object p1, p2

    goto :goto_3

    :catchall_1
    move-exception p1

    move-object v10, v4

    goto :goto_3

    :catchall_2
    move-exception p1

    :goto_3
    if-eqz v10, :cond_6

    :try_start_4
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_4

    :catch_1
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    :cond_6
    :goto_4
    invoke-virtual {v11}, Ljava/io/RandomAccessFile;->close()V

    throw p1
.end method

.method public final j()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
