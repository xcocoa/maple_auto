.class public Lz2/p;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/o0O0OOOo;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz2/p$OooO0O0;,
        Lz2/p$OooO00o;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lz2/o0O0OOOo<",
        "Ljava/nio/ByteBuffer;",
        "Lz2/r;",
        ">;"
    }
.end annotation


# static fields
.field private static final OooO0o:Ljava/lang/String; = "BufferGifDecoder"

.field private static final OooO0oO:Lz2/p$OooO00o;

.field private static final OooO0oo:Lz2/p$OooO0O0;


# instance fields
.field private final OooO00o:Landroid/content/Context;

.field private final OooO0O0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/ImageHeaderParser;",
            ">;"
        }
    .end annotation
.end field

.field private final OooO0OO:Lz2/p$OooO0O0;

.field private final OooO0Oo:Lz2/p$OooO00o;

.field private final OooO0o0:Lz2/q;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lz2/p$OooO00o;

    invoke-direct {v0}, Lz2/p$OooO00o;-><init>()V

    sput-object v0, Lz2/p;->OooO0oO:Lz2/p$OooO00o;

    new-instance v0, Lz2/p$OooO0O0;

    invoke-direct {v0}, Lz2/p$OooO0O0;-><init>()V

    sput-object v0, Lz2/p;->OooO0oo:Lz2/p$OooO0O0;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-static {p1}, Lz2/o00Oo00;->OooO0Oo(Landroid/content/Context;)Lz2/o00Oo00;

    move-result-object v0

    invoke-virtual {v0}, Lz2/o00Oo00;->OooOOO0()Lcom/bumptech/glide/Registry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/Registry;->OooO0oO()Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Lz2/o00Oo00;->OooO0Oo(Landroid/content/Context;)Lz2/o00Oo00;

    move-result-object v1

    invoke-virtual {v1}, Lz2/o00Oo00;->OooO0oO()Lz2/oO000o00;

    move-result-object v1

    invoke-static {p1}, Lz2/o00Oo00;->OooO0Oo(Landroid/content/Context;)Lz2/o00Oo00;

    move-result-object v2

    invoke-virtual {v2}, Lz2/o00Oo00;->OooO0o()Lz2/oO0OOo0o;

    move-result-object v2

    invoke-direct {p0, p1, v0, v1, v2}, Lz2/p;-><init>(Landroid/content/Context;Ljava/util/List;Lz2/oO000o00;Lz2/oO0OOo0o;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lz2/oO000o00;Lz2/oO0OOo0o;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/ImageHeaderParser;",
            ">;",
            "Lz2/oO000o00;",
            "Lz2/oO0OOo0o;",
            ")V"
        }
    .end annotation

    sget-object v5, Lz2/p;->OooO0oo:Lz2/p$OooO0O0;

    sget-object v6, Lz2/p;->OooO0oO:Lz2/p$OooO00o;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lz2/p;-><init>(Landroid/content/Context;Ljava/util/List;Lz2/oO000o00;Lz2/oO0OOo0o;Lz2/p$OooO0O0;Lz2/p$OooO00o;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lz2/oO000o00;Lz2/oO0OOo0o;Lz2/p$OooO0O0;Lz2/p$OooO00o;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/ImageHeaderParser;",
            ">;",
            "Lz2/oO000o00;",
            "Lz2/oO0OOo0o;",
            "Lz2/p$OooO0O0;",
            "Lz2/p$OooO00o;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lz2/p;->OooO00o:Landroid/content/Context;

    iput-object p2, p0, Lz2/p;->OooO0O0:Ljava/util/List;

    iput-object p6, p0, Lz2/p;->OooO0Oo:Lz2/p$OooO00o;

    new-instance p1, Lz2/q;

    invoke-direct {p1, p3, p4}, Lz2/q;-><init>(Lz2/oO000o00;Lz2/oO0OOo0o;)V

    iput-object p1, p0, Lz2/p;->OooO0o0:Lz2/q;

    iput-object p5, p0, Lz2/p;->OooO0OO:Lz2/p$OooO0O0;

    return-void
.end method

.method private OooO0OO(Ljava/nio/ByteBuffer;IILz2/o0O00o00;Lz2/o0O0OOO0;)Lz2/t;
    .locals 16
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    move-object/from16 v1, p0

    const-string v2, "Decoded GIF from stream in "

    const-string v3, "BufferGifDecoder"

    invoke-static {}, Lz2/n2;->OooO0O0()J

    move-result-wide v4

    const/4 v6, 0x2

    :try_start_0
    invoke-virtual/range {p4 .. p4}, Lz2/o0O00o00;->OooO0Oo()Lz2/o0oO0Ooo;

    move-result-object v0

    invoke-virtual {v0}, Lz2/o0oO0Ooo;->OooO0O0()I

    move-result v7

    const/4 v8, 0x0

    if-lez v7, :cond_5

    invoke-virtual {v0}, Lz2/o0oO0Ooo;->OooO0OO()I

    move-result v7

    if-eqz v7, :cond_0

    goto/16 :goto_1

    :cond_0
    sget-object v7, Lz2/x;->OooO00o:Lz2/o0O0OO0;

    move-object/from16 v9, p5

    invoke-virtual {v9, v7}, Lz2/o0O0OOO0;->OooO0OO(Lz2/o0O0OO0;)Ljava/lang/Object;

    move-result-object v7

    sget-object v9, Lcom/bumptech/glide/load/DecodeFormat;->PREFER_RGB_565:Lcom/bumptech/glide/load/DecodeFormat;

    if-ne v7, v9, :cond_1

    sget-object v7, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_0

    :cond_1
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :goto_0
    move/from16 v13, p2

    move/from16 v14, p3

    invoke-static {v0, v13, v14}, Lz2/p;->OooO0o0(Lz2/o0oO0Ooo;II)I

    move-result v9

    iget-object v10, v1, Lz2/p;->OooO0Oo:Lz2/p$OooO00o;

    iget-object v11, v1, Lz2/p;->OooO0o0:Lz2/q;

    move-object/from16 v12, p1

    invoke-virtual {v10, v11, v0, v12, v9}, Lz2/p$OooO00o;->OooO00o(Lz2/o0O00OO$OooO00o;Lz2/o0oO0Ooo;Ljava/nio/ByteBuffer;I)Lz2/o0O00OO;

    move-result-object v11

    invoke-interface {v11, v7}, Lz2/o0O00OO;->OooO0o(Landroid/graphics/Bitmap$Config;)V

    invoke-interface {v11}, Lz2/o0O00OO;->OooO0O0()V

    invoke-interface {v11}, Lz2/o0O00OO;->OooO00o()Landroid/graphics/Bitmap;

    move-result-object v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v15, :cond_3

    invoke-static {v3, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4, v5}, Lz2/n2;->OooO00o(J)D

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-object v8

    :cond_3
    :try_start_1
    invoke-static {}, Lz2/oOO0OO0O;->OooO0OO()Lz2/oOO0OO0O;

    move-result-object v12

    new-instance v0, Lz2/r;

    iget-object v10, v1, Lz2/p;->OooO00o:Landroid/content/Context;

    move-object v9, v0

    move/from16 v13, p2

    move/from16 v14, p3

    invoke-direct/range {v9 .. v15}, Lz2/r;-><init>(Landroid/content/Context;Lz2/o0O00OO;Lz2/o0O0o000;IILandroid/graphics/Bitmap;)V

    new-instance v7, Lz2/t;

    invoke-direct {v7, v0}, Lz2/t;-><init>(Lz2/r;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v3, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4, v5}, Lz2/n2;->OooO00o(J)D

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-object v7

    :cond_5
    :goto_1
    invoke-static {v3, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4, v5}, Lz2/n2;->OooO00o(J)D

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return-object v8

    :catchall_0
    move-exception v0

    invoke-static {v3, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_7

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4, v5}, Lz2/n2;->OooO00o(J)D

    move-result-wide v4

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    throw v0
.end method

.method private static OooO0o0(Lz2/o0oO0Ooo;II)I
    .locals 4

    invoke-virtual {p0}, Lz2/o0oO0Ooo;->OooO00o()I

    move-result v0

    div-int/2addr v0, p2

    invoke-virtual {p0}, Lz2/o0oO0Ooo;->OooO0Oo()I

    move-result v1

    div-int/2addr v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    :goto_0
    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v2, 0x2

    const-string v3, "BufferGifDecoder"

    invoke-static {v3, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    if-le v0, v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Downsampling GIF, sampleSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", target dimens: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "x"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "], actual dimens: ["

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lz2/o0oO0Ooo;->OooO0Oo()I

    move-result p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lz2/o0oO0Ooo;->OooO00o()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v0
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

    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1, p2}, Lz2/p;->OooO0o(Ljava/nio/ByteBuffer;Lz2/o0O0OOO0;)Z

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

    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1, p2, p3, p4}, Lz2/p;->OooO0Oo(Ljava/nio/ByteBuffer;IILz2/o0O0OOO0;)Lz2/t;

    move-result-object p1

    return-object p1
.end method

.method public OooO0Oo(Ljava/nio/ByteBuffer;IILz2/o0O0OOO0;)Lz2/t;
    .locals 7
    .param p1    # Ljava/nio/ByteBuffer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lz2/o0O0OOO0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lz2/p;->OooO0OO:Lz2/p$OooO0O0;

    invoke-virtual {v0, p1}, Lz2/p$OooO0O0;->OooO00o(Ljava/nio/ByteBuffer;)Lz2/o0O00o00;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, v0

    move-object v6, p4

    :try_start_0
    invoke-direct/range {v1 .. v6}, Lz2/p;->OooO0OO(Ljava/nio/ByteBuffer;IILz2/o0O00o00;Lz2/o0O0OOO0;)Lz2/t;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p2, p0, Lz2/p;->OooO0OO:Lz2/p$OooO0O0;

    invoke-virtual {p2, v0}, Lz2/p$OooO0O0;->OooO0O0(Lz2/o0O00o00;)V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lz2/p;->OooO0OO:Lz2/p$OooO0O0;

    invoke-virtual {p2, v0}, Lz2/p$OooO0O0;->OooO0O0(Lz2/o0O00o00;)V

    throw p1
.end method

.method public OooO0o(Ljava/nio/ByteBuffer;Lz2/o0O0OOO0;)Z
    .locals 1
    .param p1    # Ljava/nio/ByteBuffer;
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

    iget-object p2, p0, Lz2/p;->OooO0O0:Ljava/util/List;

    invoke-static {p2, p1}, Lz2/o0O0oo0o;->OooO0OO(Ljava/util/List;Ljava/nio/ByteBuffer;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

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
