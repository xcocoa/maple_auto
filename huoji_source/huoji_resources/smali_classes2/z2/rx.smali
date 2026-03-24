.class public abstract Lz2/rx;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Lz2/mx;Ljava/io/File;)Lz2/rx;
    .locals 1
    .param p0    # Lz2/mx;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "file == null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lz2/rx$OooO0OO;

    invoke-direct {v0, p0, p1}, Lz2/rx$OooO0OO;-><init>(Lz2/mx;Ljava/io/File;)V

    return-object v0
.end method

.method public static create(Lz2/mx;Ljava/lang/String;)Lz2/rx;
    .locals 2
    .param p0    # Lz2/mx;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    sget-object v0, Lz2/zx;->OooOO0:Ljava/nio/charset/Charset;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lz2/mx;->OooO00o()Ljava/nio/charset/Charset;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "; charset=utf-8"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lz2/mx;->OooO0Oo(Ljava/lang/String;)Lz2/mx;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :cond_1
    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-static {p0, p1}, Lz2/rx;->create(Lz2/mx;[B)Lz2/rx;

    move-result-object p0

    return-object p0
.end method

.method public static create(Lz2/mx;Lokio/ByteString;)Lz2/rx;
    .locals 1
    .param p0    # Lz2/mx;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    new-instance v0, Lz2/rx$OooO00o;

    invoke-direct {v0, p0, p1}, Lz2/rx$OooO00o;-><init>(Lz2/mx;Lokio/ByteString;)V

    return-object v0
.end method

.method public static create(Lz2/mx;[B)Lz2/rx;
    .locals 2
    .param p0    # Lz2/mx;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0}, Lz2/rx;->create(Lz2/mx;[BII)Lz2/rx;

    move-result-object p0

    return-object p0
.end method

.method public static create(Lz2/mx;[BII)Lz2/rx;
    .locals 7
    .param p0    # Lz2/mx;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "content == null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    array-length v0, p1

    int-to-long v1, v0

    int-to-long v3, p2

    int-to-long v5, p3

    invoke-static/range {v1 .. v6}, Lz2/zx;->OooO0o(JJJ)V

    new-instance v0, Lz2/rx$OooO0O0;

    invoke-direct {v0, p0, p3, p1, p2}, Lz2/rx$OooO0O0;-><init>(Lz2/mx;I[BI)V

    return-object v0
.end method


# virtual methods
.method public contentLength()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public abstract contentType()Lz2/mx;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method public abstract writeTo(Lz2/k00;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
