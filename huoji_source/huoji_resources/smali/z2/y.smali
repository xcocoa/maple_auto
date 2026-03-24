.class public Lz2/y;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/o0O0OOOo;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lz2/o0O0OOOo<",
        "Ljava/io/InputStream;",
        "Lz2/r;",
        ">;"
    }
.end annotation


# static fields
.field private static final OooO0Oo:Ljava/lang/String; = "StreamGifDecoder"


# instance fields
.field private final OooO00o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/ImageHeaderParser;",
            ">;"
        }
    .end annotation
.end field

.field private final OooO0O0:Lz2/o0O0OOOo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz2/o0O0OOOo<",
            "Ljava/nio/ByteBuffer;",
            "Lz2/r;",
            ">;"
        }
    .end annotation
.end field

.field private final OooO0OO:Lz2/oO0OOo0o;


# direct methods
.method public constructor <init>(Ljava/util/List;Lz2/o0O0OOOo;Lz2/oO0OOo0o;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/ImageHeaderParser;",
            ">;",
            "Lz2/o0O0OOOo<",
            "Ljava/nio/ByteBuffer;",
            "Lz2/r;",
            ">;",
            "Lz2/oO0OOo0o;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz2/y;->OooO00o:Ljava/util/List;

    iput-object p2, p0, Lz2/y;->OooO0O0:Lz2/o0O0OOOo;

    iput-object p3, p0, Lz2/y;->OooO0OO:Lz2/oO0OOo0o;

    return-void
.end method

.method private static OooO0o0(Ljava/io/InputStream;)[B
    .locals 4

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x4000

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    :try_start_0
    new-array v1, v1, [B

    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    const/4 v0, 0x5

    const-string v1, "StreamGifDecoder"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Error reading data from stream"

    invoke-static {v1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic OooO00o(Ljava/lang/Object;Lz2/o0O0OOO0;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lz2/o0O0OOO0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p1, Ljava/io/InputStream;

    invoke-virtual {p0, p1, p2}, Lz2/y;->OooO0Oo(Ljava/io/InputStream;Lz2/o0O0OOO0;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic OooO0O0(Ljava/lang/Object;IILz2/o0O0OOO0;)Lz2/oO0Ooooo;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lz2/o0O0OOO0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p1, Ljava/io/InputStream;

    invoke-virtual {p0, p1, p2, p3, p4}, Lz2/y;->OooO0OO(Ljava/io/InputStream;IILz2/o0O0OOO0;)Lz2/oO0Ooooo;

    move-result-object p1

    return-object p1
.end method

.method public OooO0OO(Ljava/io/InputStream;IILz2/o0O0OOO0;)Lz2/oO0Ooooo;
    .locals 1
    .param p1    # Ljava/io/InputStream;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lz2/o0O0OOO0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "II",
            "Lz2/o0O0OOO0;",
            ")",
            "Lz2/oO0Ooooo<",
            "Lz2/r;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lz2/y;->OooO0o0(Ljava/io/InputStream;)[B

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    iget-object v0, p0, Lz2/y;->OooO0O0:Lz2/o0O0OOOo;

    invoke-interface {v0, p1, p2, p3, p4}, Lz2/o0O0OOOo;->OooO0O0(Ljava/lang/Object;IILz2/o0O0OOO0;)Lz2/oO0Ooooo;

    move-result-object p1

    return-object p1
.end method

.method public OooO0Oo(Ljava/io/InputStream;Lz2/o0O0OOO0;)Z
    .locals 1
    .param p1    # Ljava/io/InputStream;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lz2/o0O0OOO0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lz2/x;->OooO0O0:Lz2/o0O0OO0;

    invoke-virtual {p2, v0}, Lz2/o0O0OOO0;->OooO0OO(Lz2/o0O0OO0;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lz2/y;->OooO00o:Ljava/util/List;

    iget-object v0, p0, Lz2/y;->OooO0OO:Lz2/oO0OOo0o;

    invoke-static {p2, p1, v0}, Lz2/o0O0oo0o;->OooO0O0(Ljava/util/List;Ljava/io/InputStream;Lz2/oO0OOo0o;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    move-result-object p1

    sget-object p2, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->GIF:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
