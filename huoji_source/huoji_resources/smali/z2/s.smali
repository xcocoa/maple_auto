.class public Lz2/s;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/oo0OOoo;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lz2/oo0OOoo<",
        "Lz2/r;",
        ">;"
    }
.end annotation


# static fields
.field private static final OooO00o:Ljava/lang/String; = "GifEncoder"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic OooO00o(Ljava/lang/Object;Ljava/io/File;Lz2/o0O0OOO0;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/File;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lz2/o0O0OOO0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lz2/oO0Ooooo;

    invoke-virtual {p0, p1, p2, p3}, Lz2/s;->OooO0OO(Lz2/oO0Ooooo;Ljava/io/File;Lz2/o0O0OOO0;)Z

    move-result p1

    return p1
.end method

.method public OooO0O0(Lz2/o0O0OOO0;)Lcom/bumptech/glide/load/EncodeStrategy;
    .locals 0
    .param p1    # Lz2/o0O0OOO0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object p1, Lcom/bumptech/glide/load/EncodeStrategy;->SOURCE:Lcom/bumptech/glide/load/EncodeStrategy;

    return-object p1
.end method

.method public OooO0OO(Lz2/oO0Ooooo;Ljava/io/File;Lz2/o0O0OOO0;)Z
    .locals 0
    .param p1    # Lz2/oO0Ooooo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/File;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lz2/o0O0OOO0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/oO0Ooooo<",
            "Lz2/r;",
            ">;",
            "Ljava/io/File;",
            "Lz2/o0O0OOO0;",
            ")Z"
        }
    .end annotation

    invoke-interface {p1}, Lz2/oO0Ooooo;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lz2/r;

    :try_start_0
    invoke-virtual {p1}, Lz2/r;->OooO0OO()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {p1, p2}, Lz2/h2;->OooO0o0(Ljava/nio/ByteBuffer;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 p2, 0x5

    const-string p3, "GifEncoder"

    invoke-static {p3, p2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "Failed to encode GIF drawable data"

    invoke-static {p3, p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
