.class public Lz2/cg;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final OooO0Oo:I = 0x1000


# instance fields
.field private OooO00o:Landroid/net/LocalSocket;

.field private OooO0O0:Ljava/io/InputStream;

.field private OooO0OO:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Landroid/net/LocalSocket;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lz2/cg;->OooO00o:Landroid/net/LocalSocket;

    iput-object v0, p0, Lz2/cg;->OooO0O0:Ljava/io/InputStream;

    iput-object v0, p0, Lz2/cg;->OooO0OO:Ljava/io/OutputStream;

    iput-object p1, p0, Lz2/cg;->OooO00o:Landroid/net/LocalSocket;

    :try_start_0
    invoke-virtual {p1}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    iput-object p1, p0, Lz2/cg;->OooO0O0:Ljava/io/InputStream;

    iget-object p1, p0, Lz2/cg;->OooO00o:Landroid/net/LocalSocket;

    invoke-virtual {p1}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    iput-object p1, p0, Lz2/cg;->OooO0OO:Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    return-void
.end method

.method private OooO0Oo([B)V
    .locals 0

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lz2/cg;->OooO0OO(Ljava/nio/ByteBuffer;)V

    return-void
.end method


# virtual methods
.method public final OooO00o([B)I
    .locals 5

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, -0x1

    if-ge v1, v0, :cond_1

    :try_start_0
    iget-object v2, p0, Lz2/cg;->OooO0O0:Ljava/io/InputStream;

    sub-int v4, v0, v1

    invoke-virtual {v2, p1, v1, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-gez v2, :cond_0

    return v3

    :cond_0
    add-int/2addr v1, v2

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    const/4 v2, -0x1

    :cond_1
    return v2
.end method

.method public OooO0O0()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lz2/cg;->OooO00o:Landroid/net/LocalSocket;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/LocalSocket;->close()V

    :cond_0
    iget-object v0, p0, Lz2/cg;->OooO0O0:Ljava/io/InputStream;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_1
    iget-object v0, p0, Lz2/cg;->OooO0OO:Ljava/io/OutputStream;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    return-void
.end method

.method public final OooO0OO(Ljava/nio/ByteBuffer;)V
    .locals 3

    const/16 v0, 0x1000

    :try_start_0
    new-array v1, v0, [B

    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-lt v2, v0, :cond_0

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    new-array v1, v1, [B

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    :goto_1
    iget-object v2, p0, Lz2/cg;->OooO0OO:Ljava/io/OutputStream;

    invoke-virtual {v2, v1}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lz2/cg;->OooO0OO:Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    return-void
.end method
