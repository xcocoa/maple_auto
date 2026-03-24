.class public Lz2/o00Oo00;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# static fields
.field private static volatile o00O0O:Lz2/o00Oo00; = null

.field private static volatile o00Oo0:Z = false

.field private static final o0OoOo0:Ljava/lang/String; = "image_manager_disk_cache"

.field private static final ooOO:Ljava/lang/String; = "Glide"


# instance fields
.field private final OoooOoO:Lz2/ooo0Oo0;

.field private final OoooOoo:Lz2/oO000o00;

.field private final Ooooo00:Lz2/oO0OO00o;

.field private final Ooooo0o:Lz2/oO0O00;

.field private final OooooO0:Lz2/o0O00o0;

.field private final OooooOO:Lcom/bumptech/glide/Registry;

.field private final OooooOo:Lz2/oO0OOo0o;

.field private final Oooooo:Lz2/j0;

.field private final Oooooo0:Lz2/r0;

.field private final OoooooO:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lz2/o0;",
            ">;"
        }
    .end annotation
.end field

.field private Ooooooo:Lcom/bumptech/glide/MemoryCategory;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lz2/ooo0Oo0;Lz2/oO0OO00o;Lz2/oO000o00;Lz2/oO0OOo0o;Lz2/r0;Lz2/j0;ILz2/p1;Ljava/util/Map;Ljava/util/List;Z)V
    .locals 24
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lz2/ooo0Oo0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lz2/oO0OO00o;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lz2/oO000o00;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lz2/oO0OOo0o;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Lz2/r0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Lz2/j0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p9    # Lz2/p1;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p10    # Ljava/util/Map;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p11    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lz2/ooo0Oo0;",
            "Lz2/oO0OO00o;",
            "Lz2/oO000o00;",
            "Lz2/oO0OOo0o;",
            "Lz2/r0;",
            "Lz2/j0;",
            "I",
            "Lz2/p1;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lz2/o0O00000<",
            "**>;>;",
            "Ljava/util/List<",
            "Lz2/o1<",
            "Ljava/lang/Object;",
            ">;>;Z)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v1, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    const-class v5, Lz2/o0O00OO;

    const-class v6, Ljava/lang/String;

    const-class v7, Ljava/lang/Integer;

    const-class v8, [B

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, v0, Lz2/o00Oo00;->OoooooO:Ljava/util/List;

    sget-object v9, Lcom/bumptech/glide/MemoryCategory;->NORMAL:Lcom/bumptech/glide/MemoryCategory;

    iput-object v9, v0, Lz2/o00Oo00;->Ooooooo:Lcom/bumptech/glide/MemoryCategory;

    move-object/from16 v9, p2

    iput-object v9, v0, Lz2/o00Oo00;->OoooOoO:Lz2/ooo0Oo0;

    iput-object v3, v0, Lz2/o00Oo00;->OoooOoo:Lz2/oO000o00;

    iput-object v4, v0, Lz2/o00Oo00;->OooooOo:Lz2/oO0OOo0o;

    iput-object v1, v0, Lz2/o00Oo00;->Ooooo00:Lz2/oO0OO00o;

    move-object/from16 v10, p6

    iput-object v10, v0, Lz2/o00Oo00;->Oooooo0:Lz2/r0;

    move-object/from16 v10, p7

    iput-object v10, v0, Lz2/o00Oo00;->Oooooo:Lz2/j0;

    invoke-virtual/range {p9 .. p9}, Lz2/i1;->Oooo0o0()Lz2/o0O0OOO0;

    move-result-object v10

    sget-object v11, Lz2/oOOOoo00;->OooO0oO:Lz2/o0O0OO0;

    invoke-virtual {v10, v11}, Lz2/o0O0OOO0;->OooO0OO(Lz2/o0O0OO0;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/bumptech/glide/load/DecodeFormat;

    new-instance v11, Lz2/oO0O00;

    invoke-direct {v11, v1, v3, v10}, Lz2/oO0O00;-><init>(Lz2/oO0OO00o;Lz2/oO000o00;Lcom/bumptech/glide/load/DecodeFormat;)V

    iput-object v11, v0, Lz2/o00Oo00;->Ooooo0o:Lz2/oO0O00;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-instance v10, Lcom/bumptech/glide/Registry;

    invoke-direct {v10}, Lcom/bumptech/glide/Registry;-><init>()V

    iput-object v10, v0, Lz2/o00Oo00;->OooooOO:Lcom/bumptech/glide/Registry;

    new-instance v11, Lz2/oOOO0OOO;

    invoke-direct {v11}, Lz2/oOOO0OOO;-><init>()V

    invoke-virtual {v10, v11}, Lcom/bumptech/glide/Registry;->OooOo00(Lcom/bumptech/glide/load/ImageHeaderParser;)Lcom/bumptech/glide/Registry;

    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x1b

    if-lt v11, v12, :cond_0

    new-instance v11, Lz2/oOOo0O00;

    invoke-direct {v11}, Lz2/oOOo0O00;-><init>()V

    invoke-virtual {v10, v11}, Lcom/bumptech/glide/Registry;->OooOo00(Lcom/bumptech/glide/load/ImageHeaderParser;)Lcom/bumptech/glide/Registry;

    :cond_0
    invoke-virtual {v10}, Lcom/bumptech/glide/Registry;->OooO0oO()Ljava/util/List;

    move-result-object v11

    new-instance v12, Lz2/oOOOoo00;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v13

    invoke-direct {v12, v11, v13, v3, v4}, Lz2/oOOOoo00;-><init>(Ljava/util/List;Landroid/util/DisplayMetrics;Lz2/oO000o00;Lz2/oO0OOo0o;)V

    new-instance v13, Lz2/p;

    invoke-direct {v13, v2, v11, v3, v4}, Lz2/p;-><init>(Landroid/content/Context;Ljava/util/List;Lz2/oO000o00;Lz2/oO0OOo0o;)V

    invoke-static/range {p4 .. p4}, Lz2/d;->OooO0oO(Lz2/oO000o00;)Lz2/o0O0OOOo;

    move-result-object v14

    new-instance v15, Lz2/oOOO00Oo;

    invoke-direct {v15, v12}, Lz2/oOOO00Oo;-><init>(Lz2/oOOOoo00;)V

    new-instance v9, Lz2/Oo0000;

    invoke-direct {v9, v12, v4}, Lz2/Oo0000;-><init>(Lz2/oOOOoo00;Lz2/oO0OOo0o;)V

    new-instance v12, Lz2/k;

    invoke-direct {v12, v2}, Lz2/k;-><init>(Landroid/content/Context;)V

    new-instance v0, Lz2/oOO0000$OooO0OO;

    invoke-direct {v0, v1}, Lz2/oOO0000$OooO0OO;-><init>(Landroid/content/res/Resources;)V

    move-object/from16 v16, v8

    new-instance v8, Lz2/oOO0000$OooO0o;

    invoke-direct {v8, v1}, Lz2/oOO0000$OooO0o;-><init>(Landroid/content/res/Resources;)V

    new-instance v2, Lz2/oOO0000$OooO0O0;

    invoke-direct {v2, v1}, Lz2/oOO0000$OooO0O0;-><init>(Landroid/content/res/Resources;)V

    move-object/from16 v17, v6

    new-instance v6, Lz2/oOO0000$OooO00o;

    invoke-direct {v6, v1}, Lz2/oOO0000$OooO00o;-><init>(Landroid/content/res/Resources;)V

    move-object/from16 p3, v6

    new-instance v6, Lz2/ooooO0O0;

    invoke-direct {v6, v4}, Lz2/ooooO0O0;-><init>(Lz2/oO0OOo0o;)V

    move-object/from16 p6, v8

    new-instance v8, Lz2/z;

    invoke-direct {v8}, Lz2/z;-><init>()V

    move-object/from16 p7, v8

    new-instance v8, Lz2/c0;

    invoke-direct {v8}, Lz2/c0;-><init>()V

    move-object/from16 v18, v8

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    move-object/from16 v19, v8

    const-class v8, Ljava/nio/ByteBuffer;

    move-object/from16 v20, v7

    new-instance v7, Lz2/oO0O0O00;

    invoke-direct {v7}, Lz2/oO0O0O00;-><init>()V

    invoke-virtual {v10, v8, v7}, Lcom/bumptech/glide/Registry;->OooO00o(Ljava/lang/Class;Lz2/o0oO0O0o;)Lcom/bumptech/glide/Registry;

    move-result-object v7

    const-class v8, Ljava/io/InputStream;

    move-object/from16 v21, v10

    new-instance v10, Lz2/oOO000;

    invoke-direct {v10, v4}, Lz2/oOO000;-><init>(Lz2/oO0OOo0o;)V

    invoke-virtual {v7, v8, v10}, Lcom/bumptech/glide/Registry;->OooO00o(Ljava/lang/Class;Lz2/o0oO0O0o;)Lcom/bumptech/glide/Registry;

    move-result-object v7

    const-class v8, Ljava/nio/ByteBuffer;

    const-class v10, Landroid/graphics/Bitmap;

    move-object/from16 v22, v2

    const-string v2, "Bitmap"

    invoke-virtual {v7, v2, v8, v10, v15}, Lcom/bumptech/glide/Registry;->OooO0o0(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lz2/o0O0OOOo;)Lcom/bumptech/glide/Registry;

    move-result-object v7

    const-class v8, Ljava/io/InputStream;

    const-class v10, Landroid/graphics/Bitmap;

    invoke-virtual {v7, v2, v8, v10, v9}, Lcom/bumptech/glide/Registry;->OooO0o0(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lz2/o0O0OOOo;)Lcom/bumptech/glide/Registry;

    move-result-object v7

    const-class v8, Landroid/os/ParcelFileDescriptor;

    const-class v10, Landroid/graphics/Bitmap;

    invoke-virtual {v7, v2, v8, v10, v14}, Lcom/bumptech/glide/Registry;->OooO0o0(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lz2/o0O0OOOo;)Lcom/bumptech/glide/Registry;

    move-result-object v7

    const-class v8, Landroid/content/res/AssetFileDescriptor;

    const-class v10, Landroid/graphics/Bitmap;

    move-object/from16 v23, v0

    invoke-static/range {p4 .. p4}, Lz2/d;->OooO0OO(Lz2/oO000o00;)Lz2/o0O0OOOo;

    move-result-object v0

    invoke-virtual {v7, v2, v8, v10, v0}, Lcom/bumptech/glide/Registry;->OooO0o0(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lz2/o0O0OOOo;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    const-class v7, Landroid/graphics/Bitmap;

    const-class v8, Landroid/graphics/Bitmap;

    invoke-static {}, Lz2/oOO00$OooO00o;->OooO0O0()Lz2/oOO00$OooO00o;

    move-result-object v10

    invoke-virtual {v0, v7, v8, v10}, Lcom/bumptech/glide/Registry;->OooO0Oo(Ljava/lang/Class;Ljava/lang/Class;Lz2/oO0oO000;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    const-class v7, Landroid/graphics/Bitmap;

    const-class v8, Landroid/graphics/Bitmap;

    new-instance v10, Lz2/b;

    invoke-direct {v10}, Lz2/b;-><init>()V

    invoke-virtual {v0, v2, v7, v8, v10}, Lcom/bumptech/glide/Registry;->OooO0o0(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lz2/o0O0OOOo;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    const-class v7, Landroid/graphics/Bitmap;

    invoke-virtual {v0, v7, v6}, Lcom/bumptech/glide/Registry;->OooO0O0(Ljava/lang/Class;Lz2/oo0OOoo;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    const-class v7, Ljava/nio/ByteBuffer;

    const-class v8, Landroid/graphics/drawable/BitmapDrawable;

    new-instance v10, Lz2/oOO0OO;

    invoke-direct {v10, v1, v15}, Lz2/oOO0OO;-><init>(Landroid/content/res/Resources;Lz2/o0O0OOOo;)V

    const-string v15, "BitmapDrawable"

    invoke-virtual {v0, v15, v7, v8, v10}, Lcom/bumptech/glide/Registry;->OooO0o0(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lz2/o0O0OOOo;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    const-class v7, Ljava/io/InputStream;

    const-class v8, Landroid/graphics/drawable/BitmapDrawable;

    new-instance v10, Lz2/oOO0OO;

    invoke-direct {v10, v1, v9}, Lz2/oOO0OO;-><init>(Landroid/content/res/Resources;Lz2/o0O0OOOo;)V

    invoke-virtual {v0, v15, v7, v8, v10}, Lcom/bumptech/glide/Registry;->OooO0o0(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lz2/o0O0OOOo;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    const-class v7, Landroid/os/ParcelFileDescriptor;

    const-class v8, Landroid/graphics/drawable/BitmapDrawable;

    new-instance v9, Lz2/oOO0OO;

    invoke-direct {v9, v1, v14}, Lz2/oOO0OO;-><init>(Landroid/content/res/Resources;Lz2/o0O0OOOo;)V

    invoke-virtual {v0, v15, v7, v8, v9}, Lcom/bumptech/glide/Registry;->OooO0o0(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lz2/o0O0OOOo;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    const-class v7, Landroid/graphics/drawable/BitmapDrawable;

    new-instance v8, Lz2/oOO0OOO;

    invoke-direct {v8, v3, v6}, Lz2/oOO0OOO;-><init>(Lz2/oO000o00;Lz2/oo0OOoo;)V

    invoke-virtual {v0, v7, v8}, Lcom/bumptech/glide/Registry;->OooO0O0(Ljava/lang/Class;Lz2/oo0OOoo;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    const-class v6, Ljava/io/InputStream;

    const-class v7, Lz2/r;

    new-instance v8, Lz2/y;

    invoke-direct {v8, v11, v13, v4}, Lz2/y;-><init>(Ljava/util/List;Lz2/o0O0OOOo;Lz2/oO0OOo0o;)V

    const-string v9, "Gif"

    invoke-virtual {v0, v9, v6, v7, v8}, Lcom/bumptech/glide/Registry;->OooO0o0(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lz2/o0O0OOOo;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    const-class v6, Ljava/nio/ByteBuffer;

    const-class v7, Lz2/r;

    invoke-virtual {v0, v9, v6, v7, v13}, Lcom/bumptech/glide/Registry;->OooO0o0(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lz2/o0O0OOOo;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    const-class v6, Lz2/r;

    new-instance v7, Lz2/s;

    invoke-direct {v7}, Lz2/s;-><init>()V

    invoke-virtual {v0, v6, v7}, Lcom/bumptech/glide/Registry;->OooO0O0(Ljava/lang/Class;Lz2/oo0OOoo;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    invoke-static {}, Lz2/oOO00$OooO00o;->OooO0O0()Lz2/oOO00$OooO00o;

    move-result-object v6

    invoke-virtual {v0, v5, v5, v6}, Lcom/bumptech/glide/Registry;->OooO0Oo(Ljava/lang/Class;Ljava/lang/Class;Lz2/oO0oO000;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    const-class v6, Landroid/graphics/Bitmap;

    new-instance v7, Lz2/w;

    invoke-direct {v7, v3}, Lz2/w;-><init>(Lz2/oO000o00;)V

    invoke-virtual {v0, v2, v5, v6, v7}, Lcom/bumptech/glide/Registry;->OooO0o0(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lz2/o0O0OOOo;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    const-class v2, Landroid/net/Uri;

    const-class v5, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2, v5, v12}, Lcom/bumptech/glide/Registry;->OooO0OO(Ljava/lang/Class;Ljava/lang/Class;Lz2/o0O0OOOo;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    const-class v2, Landroid/net/Uri;

    const-class v5, Landroid/graphics/Bitmap;

    new-instance v6, Lz2/O0000000;

    invoke-direct {v6, v12, v3}, Lz2/O0000000;-><init>(Lz2/k;Lz2/oO000o00;)V

    invoke-virtual {v0, v2, v5, v6}, Lcom/bumptech/glide/Registry;->OooO0OO(Ljava/lang/Class;Ljava/lang/Class;Lz2/o0O0OOOo;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    new-instance v2, Lz2/e$OooO00o;

    invoke-direct {v2}, Lz2/e$OooO00o;-><init>()V

    invoke-virtual {v0, v2}, Lcom/bumptech/glide/Registry;->OooOo0(Lz2/o0O$OooO00o;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    const-class v2, Ljava/io/File;

    const-class v5, Ljava/nio/ByteBuffer;

    new-instance v6, Lz2/oO0O0O0o$OooO0O0;

    invoke-direct {v6}, Lz2/oO0O0O0o$OooO0O0;-><init>()V

    invoke-virtual {v0, v2, v5, v6}, Lcom/bumptech/glide/Registry;->OooO0Oo(Ljava/lang/Class;Ljava/lang/Class;Lz2/oO0oO000;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    const-class v2, Ljava/io/File;

    const-class v5, Ljava/io/InputStream;

    new-instance v6, Lz2/oO0O0Oo0$OooO;

    invoke-direct {v6}, Lz2/oO0O0Oo0$OooO;-><init>()V

    invoke-virtual {v0, v2, v5, v6}, Lcom/bumptech/glide/Registry;->OooO0Oo(Ljava/lang/Class;Ljava/lang/Class;Lz2/oO0oO000;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    const-class v2, Ljava/io/File;

    const-class v5, Ljava/io/File;

    new-instance v6, Lz2/m;

    invoke-direct {v6}, Lz2/m;-><init>()V

    invoke-virtual {v0, v2, v5, v6}, Lcom/bumptech/glide/Registry;->OooO0OO(Ljava/lang/Class;Ljava/lang/Class;Lz2/o0O0OOOo;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    const-class v2, Ljava/io/File;

    const-class v5, Landroid/os/ParcelFileDescriptor;

    new-instance v6, Lz2/oO0O0Oo0$OooO0O0;

    invoke-direct {v6}, Lz2/oO0O0Oo0$OooO0O0;-><init>()V

    invoke-virtual {v0, v2, v5, v6}, Lcom/bumptech/glide/Registry;->OooO0Oo(Ljava/lang/Class;Ljava/lang/Class;Lz2/oO0oO000;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    const-class v2, Ljava/io/File;

    const-class v5, Ljava/io/File;

    invoke-static {}, Lz2/oOO00$OooO00o;->OooO0O0()Lz2/oOO00$OooO00o;

    move-result-object v6

    invoke-virtual {v0, v2, v5, v6}, Lcom/bumptech/glide/Registry;->OooO0Oo(Ljava/lang/Class;Ljava/lang/Class;Lz2/oO0oO000;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    new-instance v2, Lz2/o0OO00o0$OooO00o;

    invoke-direct {v2, v4}, Lz2/o0OO00o0$OooO00o;-><init>(Lz2/oO0OOo0o;)V

    invoke-virtual {v0, v2}, Lcom/bumptech/glide/Registry;->OooOo0(Lz2/o0O$OooO00o;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v5, Ljava/io/InputStream;

    move-object/from16 v6, v23

    invoke-virtual {v0, v2, v5, v6}, Lcom/bumptech/glide/Registry;->OooO0Oo(Ljava/lang/Class;Ljava/lang/Class;Lz2/oO0oO000;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    const-class v5, Landroid/os/ParcelFileDescriptor;

    move-object/from16 v7, v22

    invoke-virtual {v0, v2, v5, v7}, Lcom/bumptech/glide/Registry;->OooO0Oo(Ljava/lang/Class;Ljava/lang/Class;Lz2/oO0oO000;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    const-class v5, Ljava/io/InputStream;

    move-object/from16 v8, v20

    invoke-virtual {v0, v8, v5, v6}, Lcom/bumptech/glide/Registry;->OooO0Oo(Ljava/lang/Class;Ljava/lang/Class;Lz2/oO0oO000;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    const-class v5, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0, v8, v5, v7}, Lcom/bumptech/glide/Registry;->OooO0Oo(Ljava/lang/Class;Ljava/lang/Class;Lz2/oO0oO000;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    const-class v5, Landroid/net/Uri;

    move-object/from16 v6, p6

    invoke-virtual {v0, v8, v5, v6}, Lcom/bumptech/glide/Registry;->OooO0Oo(Ljava/lang/Class;Ljava/lang/Class;Lz2/oO0oO000;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    const-class v5, Landroid/content/res/AssetFileDescriptor;

    move-object/from16 v7, p3

    invoke-virtual {v0, v2, v5, v7}, Lcom/bumptech/glide/Registry;->OooO0Oo(Ljava/lang/Class;Ljava/lang/Class;Lz2/oO0oO000;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    const-class v5, Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v0, v8, v5, v7}, Lcom/bumptech/glide/Registry;->OooO0Oo(Ljava/lang/Class;Ljava/lang/Class;Lz2/oO0oO000;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    const-class v5, Landroid/net/Uri;

    invoke-virtual {v0, v2, v5, v6}, Lcom/bumptech/glide/Registry;->OooO0Oo(Ljava/lang/Class;Ljava/lang/Class;Lz2/oO0oO000;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    const-class v2, Ljava/io/InputStream;

    new-instance v5, Lz2/oOo0oooO$OooO0OO;

    invoke-direct {v5}, Lz2/oOo0oooO$OooO0OO;-><init>()V

    move-object/from16 v6, v17

    invoke-virtual {v0, v6, v2, v5}, Lcom/bumptech/glide/Registry;->OooO0Oo(Ljava/lang/Class;Ljava/lang/Class;Lz2/oO0oO000;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    const-class v2, Landroid/net/Uri;

    const-class v5, Ljava/io/InputStream;

    new-instance v7, Lz2/oOo0oooO$OooO0OO;

    invoke-direct {v7}, Lz2/oOo0oooO$OooO0OO;-><init>()V

    invoke-virtual {v0, v2, v5, v7}, Lcom/bumptech/glide/Registry;->OooO0Oo(Ljava/lang/Class;Ljava/lang/Class;Lz2/oO0oO000;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    const-class v2, Ljava/io/InputStream;

    new-instance v5, Lz2/oOO000o$OooO0OO;

    invoke-direct {v5}, Lz2/oOO000o$OooO0OO;-><init>()V

    invoke-virtual {v0, v6, v2, v5}, Lcom/bumptech/glide/Registry;->OooO0Oo(Ljava/lang/Class;Ljava/lang/Class;Lz2/oO0oO000;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    const-class v2, Landroid/os/ParcelFileDescriptor;

    new-instance v5, Lz2/oOO000o$OooO0O0;

    invoke-direct {v5}, Lz2/oOO000o$OooO0O0;-><init>()V

    invoke-virtual {v0, v6, v2, v5}, Lcom/bumptech/glide/Registry;->OooO0Oo(Ljava/lang/Class;Ljava/lang/Class;Lz2/oO0oO000;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    const-class v2, Landroid/content/res/AssetFileDescriptor;

    new-instance v5, Lz2/oOO000o$OooO00o;

    invoke-direct {v5}, Lz2/oOO000o$OooO00o;-><init>()V

    invoke-virtual {v0, v6, v2, v5}, Lcom/bumptech/glide/Registry;->OooO0Oo(Ljava/lang/Class;Ljava/lang/Class;Lz2/oO0oO000;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    const-class v2, Landroid/net/Uri;

    const-class v5, Ljava/io/InputStream;

    new-instance v6, Lz2/oOO0O000$OooO00o;

    invoke-direct {v6}, Lz2/oOO0O000$OooO00o;-><init>()V

    invoke-virtual {v0, v2, v5, v6}, Lcom/bumptech/glide/Registry;->OooO0Oo(Ljava/lang/Class;Ljava/lang/Class;Lz2/oO0oO000;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    const-class v2, Landroid/net/Uri;

    const-class v5, Ljava/io/InputStream;

    new-instance v6, Lz2/oO0O00oO$OooO0OO;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    invoke-direct {v6, v7}, Lz2/oO0O00oO$OooO0OO;-><init>(Landroid/content/res/AssetManager;)V

    invoke-virtual {v0, v2, v5, v6}, Lcom/bumptech/glide/Registry;->OooO0Oo(Ljava/lang/Class;Ljava/lang/Class;Lz2/oO0oO000;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    const-class v2, Landroid/net/Uri;

    const-class v5, Landroid/os/ParcelFileDescriptor;

    new-instance v6, Lz2/oO0O00oO$OooO0O0;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    invoke-direct {v6, v7}, Lz2/oO0O00oO$OooO0O0;-><init>(Landroid/content/res/AssetManager;)V

    invoke-virtual {v0, v2, v5, v6}, Lcom/bumptech/glide/Registry;->OooO0Oo(Ljava/lang/Class;Ljava/lang/Class;Lz2/oO0oO000;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    const-class v2, Landroid/net/Uri;

    const-class v5, Ljava/io/InputStream;

    new-instance v6, Lz2/oOO0O00O$OooO00o;

    move-object/from16 v7, p1

    invoke-direct {v6, v7}, Lz2/oOO0O00O$OooO00o;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2, v5, v6}, Lcom/bumptech/glide/Registry;->OooO0Oo(Ljava/lang/Class;Ljava/lang/Class;Lz2/oO0oO000;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    const-class v2, Landroid/net/Uri;

    const-class v5, Ljava/io/InputStream;

    new-instance v6, Lz2/oOO0O0$OooO00o;

    invoke-direct {v6, v7}, Lz2/oOO0O0$OooO00o;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2, v5, v6}, Lcom/bumptech/glide/Registry;->OooO0Oo(Ljava/lang/Class;Ljava/lang/Class;Lz2/oO0oO000;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    const-class v2, Landroid/net/Uri;

    const-class v5, Ljava/io/InputStream;

    new-instance v6, Lz2/oOO00O0$OooO0o;

    move-object/from16 v8, v19

    invoke-direct {v6, v8}, Lz2/oOO00O0$OooO0o;-><init>(Landroid/content/ContentResolver;)V

    invoke-virtual {v0, v2, v5, v6}, Lcom/bumptech/glide/Registry;->OooO0Oo(Ljava/lang/Class;Ljava/lang/Class;Lz2/oO0oO000;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    const-class v2, Landroid/net/Uri;

    const-class v5, Landroid/os/ParcelFileDescriptor;

    new-instance v6, Lz2/oOO00O0$OooO0O0;

    invoke-direct {v6, v8}, Lz2/oOO00O0$OooO0O0;-><init>(Landroid/content/ContentResolver;)V

    invoke-virtual {v0, v2, v5, v6}, Lcom/bumptech/glide/Registry;->OooO0Oo(Ljava/lang/Class;Ljava/lang/Class;Lz2/oO0oO000;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    const-class v2, Landroid/net/Uri;

    const-class v5, Landroid/content/res/AssetFileDescriptor;

    new-instance v6, Lz2/oOO00O0$OooO00o;

    invoke-direct {v6, v8}, Lz2/oOO00O0$OooO00o;-><init>(Landroid/content/ContentResolver;)V

    invoke-virtual {v0, v2, v5, v6}, Lcom/bumptech/glide/Registry;->OooO0Oo(Ljava/lang/Class;Ljava/lang/Class;Lz2/oO0oO000;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    const-class v2, Landroid/net/Uri;

    const-class v5, Ljava/io/InputStream;

    new-instance v6, Lz2/oOO00OO$OooO00o;

    invoke-direct {v6}, Lz2/oOO00OO$OooO00o;-><init>()V

    invoke-virtual {v0, v2, v5, v6}, Lcom/bumptech/glide/Registry;->OooO0Oo(Ljava/lang/Class;Ljava/lang/Class;Lz2/oO0oO000;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    const-class v2, Ljava/net/URL;

    const-class v5, Ljava/io/InputStream;

    new-instance v6, Lz2/oOO0O0O0$OooO00o;

    invoke-direct {v6}, Lz2/oOO0O0O0$OooO00o;-><init>()V

    invoke-virtual {v0, v2, v5, v6}, Lcom/bumptech/glide/Registry;->OooO0Oo(Ljava/lang/Class;Ljava/lang/Class;Lz2/oO0oO000;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    const-class v2, Landroid/net/Uri;

    const-class v5, Ljava/io/File;

    new-instance v6, Lz2/oO0OO00$OooO00o;

    invoke-direct {v6, v7}, Lz2/oO0OO00$OooO00o;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2, v5, v6}, Lcom/bumptech/glide/Registry;->OooO0Oo(Ljava/lang/Class;Ljava/lang/Class;Lz2/oO0oO000;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    const-class v2, Lz2/oOo0o0oO;

    const-class v5, Ljava/io/InputStream;

    new-instance v6, Lz2/oOO0$OooO00o;

    invoke-direct {v6}, Lz2/oOO0$OooO00o;-><init>()V

    invoke-virtual {v0, v2, v5, v6}, Lcom/bumptech/glide/Registry;->OooO0Oo(Ljava/lang/Class;Ljava/lang/Class;Lz2/oO0oO000;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    const-class v2, Ljava/nio/ByteBuffer;

    new-instance v5, Lz2/oO0O0$OooO00o;

    invoke-direct {v5}, Lz2/oO0O0$OooO00o;-><init>()V

    move-object/from16 v6, v16

    invoke-virtual {v0, v6, v2, v5}, Lcom/bumptech/glide/Registry;->OooO0Oo(Ljava/lang/Class;Ljava/lang/Class;Lz2/oO0oO000;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    const-class v2, Ljava/io/InputStream;

    new-instance v5, Lz2/oO0O0$OooO0o;

    invoke-direct {v5}, Lz2/oO0O0$OooO0o;-><init>()V

    invoke-virtual {v0, v6, v2, v5}, Lcom/bumptech/glide/Registry;->OooO0Oo(Ljava/lang/Class;Ljava/lang/Class;Lz2/oO0oO000;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    const-class v2, Landroid/net/Uri;

    const-class v5, Landroid/net/Uri;

    invoke-static {}, Lz2/oOO00$OooO00o;->OooO0O0()Lz2/oOO00$OooO00o;

    move-result-object v8

    invoke-virtual {v0, v2, v5, v8}, Lcom/bumptech/glide/Registry;->OooO0Oo(Ljava/lang/Class;Ljava/lang/Class;Lz2/oO0oO000;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    const-class v2, Landroid/graphics/drawable/Drawable;

    const-class v5, Landroid/graphics/drawable/Drawable;

    invoke-static {}, Lz2/oOO00$OooO00o;->OooO0O0()Lz2/oOO00$OooO00o;

    move-result-object v8

    invoke-virtual {v0, v2, v5, v8}, Lcom/bumptech/glide/Registry;->OooO0Oo(Ljava/lang/Class;Ljava/lang/Class;Lz2/oO0oO000;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    const-class v2, Landroid/graphics/drawable/Drawable;

    const-class v5, Landroid/graphics/drawable/Drawable;

    new-instance v8, Lz2/l;

    invoke-direct {v8}, Lz2/l;-><init>()V

    invoke-virtual {v0, v2, v5, v8}, Lcom/bumptech/glide/Registry;->OooO0OO(Ljava/lang/Class;Ljava/lang/Class;Lz2/o0O0OOOo;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    const-class v2, Landroid/graphics/Bitmap;

    const-class v5, Landroid/graphics/drawable/BitmapDrawable;

    new-instance v8, Lz2/a0;

    invoke-direct {v8, v1}, Lz2/a0;-><init>(Landroid/content/res/Resources;)V

    invoke-virtual {v0, v2, v5, v8}, Lcom/bumptech/glide/Registry;->OooOo(Ljava/lang/Class;Ljava/lang/Class;Lz2/d0;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    const-class v1, Landroid/graphics/Bitmap;

    move-object/from16 v2, p7

    invoke-virtual {v0, v1, v6, v2}, Lcom/bumptech/glide/Registry;->OooOo(Ljava/lang/Class;Ljava/lang/Class;Lz2/d0;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    const-class v1, Landroid/graphics/drawable/Drawable;

    new-instance v5, Lz2/b0;

    move-object/from16 v8, v18

    invoke-direct {v5, v3, v2, v8}, Lz2/b0;-><init>(Lz2/oO000o00;Lz2/d0;Lz2/d0;)V

    invoke-virtual {v0, v1, v6, v5}, Lcom/bumptech/glide/Registry;->OooOo(Ljava/lang/Class;Ljava/lang/Class;Lz2/d0;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    const-class v1, Lz2/r;

    invoke-virtual {v0, v1, v6, v8}, Lcom/bumptech/glide/Registry;->OooOo(Ljava/lang/Class;Ljava/lang/Class;Lz2/d0;)Lcom/bumptech/glide/Registry;

    new-instance v5, Lcom/bumptech/glide/request/target/ImageViewTargetFactory;

    invoke-direct {v5}, Lcom/bumptech/glide/request/target/ImageViewTargetFactory;-><init>()V

    new-instance v0, Lz2/o0O00o0;

    move-object v1, v0

    move-object/from16 v2, p1

    move-object/from16 v3, p5

    move-object/from16 v4, v21

    move-object/from16 v6, p9

    move-object/from16 v7, p10

    move-object/from16 v8, p11

    move-object/from16 v9, p2

    move/from16 v10, p12

    move/from16 v11, p8

    invoke-direct/range {v1 .. v11}, Lz2/o0O00o0;-><init>(Landroid/content/Context;Lz2/oO0OOo0o;Lcom/bumptech/glide/Registry;Lcom/bumptech/glide/request/target/ImageViewTargetFactory;Lz2/p1;Ljava/util/Map;Ljava/util/List;Lz2/ooo0Oo0;ZI)V

    move-object/from16 v1, p0

    iput-object v0, v1, Lz2/o00Oo00;->OooooO0:Lz2/o0O00o0;

    return-void
.end method

.method private static OooO00o(Landroid/content/Context;)V
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-boolean v0, Lz2/o00Oo00;->o00Oo0:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lz2/o00Oo00;->o00Oo0:Z

    invoke-static {p0}, Lz2/o00Oo00;->OooOOo(Landroid/content/Context;)V

    const/4 p0, 0x0

    sput-boolean p0, Lz2/o00Oo00;->o00Oo0:Z

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "You cannot call Glide.get() in registerComponents(), use the provided Glide instance instead"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static OooO0Oo(Landroid/content/Context;)Lz2/o00Oo00;
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object v0, Lz2/o00Oo00;->o00O0O:Lz2/o00Oo00;

    if-nez v0, :cond_1

    const-class v0, Lz2/o00Oo00;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lz2/o00Oo00;->o00O0O:Lz2/o00Oo00;

    if-nez v1, :cond_0

    invoke-static {p0}, Lz2/o00Oo00;->OooO00o(Landroid/content/Context;)V

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lz2/o00Oo00;->o00O0O:Lz2/o00Oo00;

    return-object p0
.end method

.method private static OooO0o0()Lz2/o00OOO0O;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    :try_start_0
    const-string v0, "z2.o0o0Oo"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz2/o00OOO0O;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0

    :catch_3
    move-exception v0

    :goto_0
    invoke-static {v0}, Lz2/o00Oo00;->OooOoO0(Ljava/lang/Exception;)V

    goto :goto_1

    :catch_4
    nop

    const/4 v0, 0x5

    const-string v1, "Glide"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Failed to find GeneratedAppGlideModule. You should include an annotationProcessor compile dependency on com.github.bumptech.glide:compiler in your application and a @GlideModule annotated AppGlideModule implementation or LibraryGlideModules will be silently ignored"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_1
    const/4 v0, 0x0

    :goto_2
    return-object v0
.end method

.method public static OooOO0O(Landroid/content/Context;)Ljava/io/File;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-string v0, "image_manager_disk_cache"

    invoke-static {p0, v0}, Lz2/o00Oo00;->OooOO0o(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static OooOO0o(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    return-object v0

    :cond_1
    return-object v1

    :cond_2
    const/4 p0, 0x6

    const-string p1, "Glide"

    invoke-static {p1, p0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "default disk cache dir is null"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-object v0
.end method

.method private static OooOOOO(Landroid/content/Context;)Lz2/r0;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "You cannot start a load on a not yet attached View or a Fragment where getActivity() returns null (which usually occurs when getActivity() is called before the Fragment is attached or after the Fragment is destroyed)."

    invoke-static {p0, v0}, Lz2/r2;->OooO0o0(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p0}, Lz2/o00Oo00;->OooO0Oo(Landroid/content/Context;)Lz2/o00Oo00;

    move-result-object p0

    invoke-virtual {p0}, Lz2/o00Oo00;->OooOOO()Lz2/r0;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized OooOOOo(Landroid/content/Context;Lz2/o0oOO;)V
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lz2/o0oOO;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const-class v0, Lz2/o00Oo00;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lz2/o00Oo00;->o00O0O:Lz2/o00Oo00;

    if-eqz v1, :cond_0

    invoke-static {}, Lz2/o00Oo00;->OooOo()V

    :cond_0
    invoke-static {p0, p1}, Lz2/o00Oo00;->OooOOoo(Landroid/content/Context;Lz2/o0oOO;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static OooOOo(Landroid/content/Context;)V
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lz2/o0oOO;

    invoke-direct {v0}, Lz2/o0oOO;-><init>()V

    invoke-static {p0, v0}, Lz2/o00Oo00;->OooOOoo(Landroid/content/Context;Lz2/o0oOO;)V

    return-void
.end method

.method public static declared-synchronized OooOOo0(Lz2/o00Oo00;)V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-class v0, Lz2/o00Oo00;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lz2/o00Oo00;->o00O0O:Lz2/o00Oo00;

    if-eqz v1, :cond_0

    invoke-static {}, Lz2/o00Oo00;->OooOo()V

    :cond_0
    sput-object p0, Lz2/o00Oo00;->o00O0O:Lz2/o00Oo00;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static OooOOoo(Landroid/content/Context;Lz2/o0oOO;)V
    .locals 9
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lz2/o0oOO;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {}, Lz2/o00Oo00;->OooO0o0()Lz2/o00OOO0O;

    move-result-object v0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lz2/w0;->OooO0OO()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    new-instance v1, Lz2/a1;

    invoke-direct {v1, p0}, Lz2/a1;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lz2/a1;->OooO00o()Ljava/util/List;

    move-result-object v1

    :cond_1
    const/4 v2, 0x3

    const-string v3, "Glide"

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lz2/o00OOO0O;->OooO0Oo()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v0}, Lz2/o00OOO0O;->OooO0Oo()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lz2/y0;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {v3, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "AppGlideModule excludes manifest GlideModule: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_4
    invoke-static {v3, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lz2/y0;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Discovered GlideModule from manifest: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lz2/o00OOO0O;->OooO0o0()Lz2/r0$OooO0O0;

    move-result-object v2

    goto :goto_2

    :cond_6
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {p1, v2}, Lz2/o0oOO;->OooOOo(Lz2/r0$OooO0O0;)V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lz2/y0;

    invoke-interface {v3, p0, p1}, Lz2/x0;->OooO00o(Landroid/content/Context;Lz2/o0oOO;)V

    goto :goto_3

    :cond_7
    if-eqz v0, :cond_8

    invoke-virtual {v0, p0, p1}, Lz2/w0;->OooO00o(Landroid/content/Context;Lz2/o0oOO;)V

    :cond_8
    invoke-virtual {p1, p0}, Lz2/o0oOO;->OooO0O0(Landroid/content/Context;)Lz2/o00Oo00;

    move-result-object p1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lz2/y0;

    iget-object v3, p1, Lz2/o00Oo00;->OooooOO:Lcom/bumptech/glide/Registry;

    invoke-interface {v2, p0, p1, v3}, Lz2/b1;->OooO0O0(Landroid/content/Context;Lz2/o00Oo00;Lcom/bumptech/glide/Registry;)V

    goto :goto_4

    :cond_9
    if-eqz v0, :cond_a

    iget-object v1, p1, Lz2/o00Oo00;->OooooOO:Lcom/bumptech/glide/Registry;

    invoke-virtual {v0, p0, p1, v1}, Lz2/z0;->OooO0O0(Landroid/content/Context;Lz2/o00Oo00;Lcom/bumptech/glide/Registry;)V

    :cond_a
    invoke-virtual {p0, p1}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    sput-object p1, Lz2/o00Oo00;->o00O0O:Lz2/o00Oo00;

    return-void
.end method

.method public static declared-synchronized OooOo()V
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const-class v0, Lz2/o00Oo00;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lz2/o00Oo00;->o00O0O:Lz2/o00Oo00;

    if-eqz v1, :cond_0

    sget-object v1, Lz2/o00Oo00;->o00O0O:Lz2/o00Oo00;

    invoke-virtual {v1}, Lz2/o00Oo00;->OooO()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lz2/o00Oo00;->o00O0O:Lz2/o00Oo00;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    sget-object v1, Lz2/o00Oo00;->o00O0O:Lz2/o00Oo00;

    iget-object v1, v1, Lz2/o00Oo00;->OoooOoO:Lz2/ooo0Oo0;

    invoke-virtual {v1}, Lz2/ooo0Oo0;->OooOO0o()V

    :cond_0
    const/4 v1, 0x0

    sput-object v1, Lz2/o00Oo00;->o00O0O:Lz2/o00Oo00;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static OooOoO0(Ljava/lang/Exception;)V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "GeneratedAppGlideModuleImpl is implemented incorrectly. If you\'ve manually implemented this class, remove your implementation. The Annotation processor will generate a correct implementation."

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static OooOoo(Landroid/app/Fragment;)Lz2/o0;
    .locals 1
    .param p0    # Landroid/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lz2/o00Oo00;->OooOOOO(Landroid/content/Context;)Lz2/r0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lz2/r0;->OooOO0(Landroid/app/Fragment;)Lz2/o0;

    move-result-object p0

    return-object p0
.end method

.method public static OooOoo0(Landroid/app/Activity;)Lz2/o0;
    .locals 1
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p0}, Lz2/o00Oo00;->OooOOOO(Landroid/content/Context;)Lz2/r0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lz2/r0;->OooO(Landroid/app/Activity;)Lz2/o0;

    move-result-object p0

    return-object p0
.end method

.method public static OooOooO(Landroid/content/Context;)Lz2/o0;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p0}, Lz2/o00Oo00;->OooOOOO(Landroid/content/Context;)Lz2/r0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lz2/r0;->OooOO0O(Landroid/content/Context;)Lz2/o0;

    move-result-object p0

    return-object p0
.end method

.method public static OooOooo(Landroid/view/View;)Lz2/o0;
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lz2/o00Oo00;->OooOOOO(Landroid/content/Context;)Lz2/r0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lz2/r0;->OooOO0o(Landroid/view/View;)Lz2/o0;

    move-result-object p0

    return-object p0
.end method

.method public static Oooo000(Landroidx/fragment/app/Fragment;)Lz2/o0;
    .locals 1
    .param p0    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lz2/o00Oo00;->OooOOOO(Landroid/content/Context;)Lz2/r0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lz2/r0;->OooOOO0(Landroidx/fragment/app/Fragment;)Lz2/o0;

    move-result-object p0

    return-object p0
.end method

.method public static Oooo00O(Landroidx/fragment/app/FragmentActivity;)Lz2/o0;
    .locals 1
    .param p0    # Landroidx/fragment/app/FragmentActivity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p0}, Lz2/o00Oo00;->OooOOOO(Landroid/content/Context;)Lz2/r0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lz2/r0;->OooOOO(Landroidx/fragment/app/FragmentActivity;)Lz2/o0;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public OooO()Landroid/content/Context;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lz2/o00Oo00;->OooooO0:Lz2/o0O00o0;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public OooO0O0()V
    .locals 1

    invoke-static {}, Lz2/t2;->OooO00o()V

    iget-object v0, p0, Lz2/o00Oo00;->OoooOoO:Lz2/ooo0Oo0;

    invoke-virtual {v0}, Lz2/ooo0Oo0;->OooO0o0()V

    return-void
.end method

.method public OooO0OO()V
    .locals 1

    invoke-static {}, Lz2/t2;->OooO0O0()V

    iget-object v0, p0, Lz2/o00Oo00;->Ooooo00:Lz2/oO0OO00o;

    invoke-interface {v0}, Lz2/oO0OO00o;->OooO0O0()V

    iget-object v0, p0, Lz2/o00Oo00;->OoooOoo:Lz2/oO000o00;

    invoke-interface {v0}, Lz2/oO000o00;->OooO0O0()V

    iget-object v0, p0, Lz2/o00Oo00;->OooooOo:Lz2/oO0OOo0o;

    invoke-interface {v0}, Lz2/oO0OOo0o;->OooO0O0()V

    return-void
.end method

.method public OooO0o()Lz2/oO0OOo0o;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lz2/o00Oo00;->OooooOo:Lz2/oO0OOo0o;

    return-object v0
.end method

.method public OooO0oO()Lz2/oO000o00;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lz2/o00Oo00;->OoooOoo:Lz2/oO000o00;

    return-object v0
.end method

.method public OooO0oo()Lz2/j0;
    .locals 1

    iget-object v0, p0, Lz2/o00Oo00;->Oooooo:Lz2/j0;

    return-object v0
.end method

.method public OooOO0()Lz2/o0O00o0;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lz2/o00Oo00;->OooooO0:Lz2/o0O00o0;

    return-object v0
.end method

.method public OooOOO()Lz2/r0;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lz2/o00Oo00;->Oooooo0:Lz2/r0;

    return-object v0
.end method

.method public OooOOO0()Lcom/bumptech/glide/Registry;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lz2/o00Oo00;->OooooOO:Lcom/bumptech/glide/Registry;

    return-object v0
.end method

.method public OooOo0(Lz2/o0;)V
    .locals 2

    iget-object v0, p0, Lz2/o00Oo00;->OoooooO:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lz2/o00Oo00;->OoooooO:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lz2/o00Oo00;->OoooooO:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot register already registered manager"

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public varargs OooOo00([Lz2/oO0O00o0$OooO00o;)V
    .locals 1
    .param p1    # [Lz2/oO0O00o0$OooO00o;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lz2/o00Oo00;->Ooooo0o:Lz2/oO0O00;

    invoke-virtual {v0, p1}, Lz2/oO0O00;->OooO0OO([Lz2/oO0O00o0$OooO00o;)V

    return-void
.end method

.method public OooOo0O(Lcom/bumptech/glide/request/target/Target;)Z
    .locals 3
    .param p1    # Lcom/bumptech/glide/request/target/Target;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/target/Target<",
            "*>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lz2/o00Oo00;->OoooooO:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lz2/o00Oo00;->OoooooO:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lz2/o0;

    invoke-virtual {v2, p1}, Lz2/o0;->Oooo(Lcom/bumptech/glide/request/target/Target;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    monitor-exit v0

    return p1

    :cond_1
    monitor-exit v0

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public OooOo0o(Lcom/bumptech/glide/MemoryCategory;)Lcom/bumptech/glide/MemoryCategory;
    .locals 2
    .param p1    # Lcom/bumptech/glide/MemoryCategory;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {}, Lz2/t2;->OooO0O0()V

    iget-object v0, p0, Lz2/o00Oo00;->Ooooo00:Lz2/oO0OO00o;

    invoke-virtual {p1}, Lcom/bumptech/glide/MemoryCategory;->getMultiplier()F

    move-result v1

    invoke-interface {v0, v1}, Lz2/oO0OO00o;->OooO0OO(F)V

    iget-object v0, p0, Lz2/o00Oo00;->OoooOoo:Lz2/oO000o00;

    invoke-virtual {p1}, Lcom/bumptech/glide/MemoryCategory;->getMultiplier()F

    move-result v1

    invoke-interface {v0, v1}, Lz2/oO000o00;->OooO0OO(F)V

    iget-object v0, p0, Lz2/o00Oo00;->Ooooooo:Lcom/bumptech/glide/MemoryCategory;

    iput-object p1, p0, Lz2/o00Oo00;->Ooooooo:Lcom/bumptech/glide/MemoryCategory;

    return-object v0
.end method

.method public OooOoO(I)V
    .locals 1

    invoke-static {}, Lz2/t2;->OooO0O0()V

    iget-object v0, p0, Lz2/o00Oo00;->Ooooo00:Lz2/oO0OO00o;

    invoke-interface {v0, p1}, Lz2/oO0OO00o;->OooO00o(I)V

    iget-object v0, p0, Lz2/o00Oo00;->OoooOoo:Lz2/oO000o00;

    invoke-interface {v0, p1}, Lz2/oO000o00;->OooO00o(I)V

    iget-object v0, p0, Lz2/o00Oo00;->OooooOo:Lz2/oO0OOo0o;

    invoke-interface {v0, p1}, Lz2/oO0OOo0o;->OooO00o(I)V

    return-void
.end method

.method public OooOoOO(Lz2/o0;)V
    .locals 2

    iget-object v0, p0, Lz2/o00Oo00;->OoooooO:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lz2/o00Oo00;->OoooooO:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lz2/o00Oo00;->OoooooO:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot unregister not yet registered manager"

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public onLowMemory()V
    .locals 0

    invoke-virtual {p0}, Lz2/o00Oo00;->OooO0OO()V

    return-void
.end method

.method public onTrimMemory(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lz2/o00Oo00;->OooOoO(I)V

    return-void
.end method
