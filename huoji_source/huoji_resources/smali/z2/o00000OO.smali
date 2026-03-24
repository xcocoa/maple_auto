.class public Lz2/o00000OO;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz2/o00000OO$OooO;,
        Lz2/o00000OO$OooOO0O;,
        Lz2/o00000OO$OooOOO0;,
        Lz2/o00000OO$OooOO0;
    }
.end annotation


# instance fields
.field private final OooO00o:Lz2/o00Ooo;

.field private OooO0O0:I

.field private final OooO0OO:Lz2/o00000OO$OooOO0;

.field private final OooO0Oo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lz2/o00000OO$OooO;",
            ">;"
        }
    .end annotation
.end field

.field private final OooO0o:Landroid/os/Handler;

.field private final OooO0o0:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lz2/o00000OO$OooO;",
            ">;"
        }
    .end annotation
.end field

.field private OooO0oO:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lz2/o00Ooo;Lz2/o00000OO$OooOO0;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x64

    iput v0, p0, Lz2/o00000OO;->OooO0O0:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lz2/o00000OO;->OooO0Oo:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lz2/o00000OO;->OooO0o0:Ljava/util/HashMap;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lz2/o00000OO;->OooO0o:Landroid/os/Handler;

    iput-object p1, p0, Lz2/o00000OO;->OooO00o:Lz2/o00Ooo;

    iput-object p2, p0, Lz2/o00000OO;->OooO0OO:Lz2/o00000OO$OooOO0;

    return-void
.end method

.method private static OooO(Ljava/lang/String;IILandroid/widget/ImageView$ScaleType;Lz2/o0000Ooo$OooO00o;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "#W"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "#H"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "#S"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/widget/ImageView$ScaleType;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_0

    const-string p0, "#T"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p4}, Lz2/o0000Ooo$OooO00o;->key()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic OooO00o(Lz2/o00000OO;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lz2/o00000OO;->OooO0Oo:Ljava/util/HashMap;

    return-object p0
.end method

.method public static synthetic OooO0O0(Lz2/o00000OO;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lz2/o00000OO;->OooO0o0:Ljava/util/HashMap;

    return-object p0
.end method

.method public static synthetic OooO0OO(Lz2/o00000OO;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    iput-object p1, p0, Lz2/o00000OO;->OooO0oO:Ljava/lang/Runnable;

    return-object p1
.end method

.method private OooO0Oo(Ljava/lang/String;Lz2/o00000OO$OooO;)V
    .locals 2

    iget-object v0, p0, Lz2/o00000OO;->OooO0o0:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lz2/o00000OO;->OooO0oO:Ljava/lang/Runnable;

    if-nez p1, :cond_0

    new-instance p1, Lz2/o00000OO$OooO0o;

    invoke-direct {p1, p0}, Lz2/o00000OO$OooO0o;-><init>(Lz2/o00000OO;)V

    iput-object p1, p0, Lz2/o00000OO;->OooO0oO:Ljava/lang/Runnable;

    iget-object p2, p0, Lz2/o00000OO;->OooO0o:Landroid/os/Handler;

    iget v0, p0, Lz2/o00000OO;->OooO0O0:I

    int-to-long v0, v0

    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public static OooOO0(Landroid/widget/ImageView;II)Lz2/o00000OO$OooOOO0;
    .locals 1

    new-instance v0, Lz2/o00000OO$OooO00o;

    invoke-direct {v0, p2, p0, p1}, Lz2/o00000OO$OooO00o;-><init>(ILandroid/widget/ImageView;I)V

    return-object v0
.end method

.method private OooOOo()V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ImageLoader must be invoked from the main thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public OooO0o(Ljava/lang/String;Lz2/o00000OO$OooOOO0;II)Lz2/o00000OO$OooOO0O;
    .locals 7

    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v6}, Lz2/o00000OO;->OooO0oo(Ljava/lang/String;Lz2/o00000OO$OooOOO0;IILandroid/widget/ImageView$ScaleType;Lz2/o0000Ooo$OooO00o;)Lz2/o00000OO$OooOO0O;

    move-result-object p1

    return-object p1
.end method

.method public OooO0o0(Ljava/lang/String;Lz2/o00000OO$OooOOO0;)Lz2/o00000OO$OooOO0O;
    .locals 6

    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lz2/o00000OO;->OooO0oO(Ljava/lang/String;Lz2/o00000OO$OooOOO0;IILandroid/widget/ImageView$ScaleType;)Lz2/o00000OO$OooOO0O;

    move-result-object p1

    return-object p1
.end method

.method public OooO0oO(Ljava/lang/String;Lz2/o00000OO$OooOOO0;IILandroid/widget/ImageView$ScaleType;)Lz2/o00000OO$OooOO0O;
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lz2/o00000OO;->OooO0oo(Ljava/lang/String;Lz2/o00000OO$OooOOO0;IILandroid/widget/ImageView$ScaleType;Lz2/o0000Ooo$OooO00o;)Lz2/o00000OO$OooOO0O;

    move-result-object p1

    return-object p1
.end method

.method public OooO0oo(Ljava/lang/String;Lz2/o00000OO$OooOOO0;IILandroid/widget/ImageView$ScaleType;Lz2/o0000Ooo$OooO00o;)Lz2/o00000OO$OooOO0O;
    .locals 16

    move-object/from16 v7, p0

    move-object/from16 v6, p2

    invoke-direct/range {p0 .. p0}, Lz2/o00000OO;->OooOOo()V

    move-object/from16 v8, p1

    move/from16 v9, p3

    move/from16 v10, p4

    move-object/from16 v11, p5

    move-object/from16 v12, p6

    invoke-static {v8, v9, v10, v11, v12}, Lz2/o00000OO;->OooO(Ljava/lang/String;IILandroid/widget/ImageView$ScaleType;Lz2/o0000Ooo$OooO00o;)Ljava/lang/String;

    move-result-object v13

    iget-object v0, v7, Lz2/o00000OO;->OooO0OO:Lz2/o00000OO$OooOO0;

    invoke-interface {v0, v13}, Lz2/o00000OO$OooOO0;->OooO00o(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    const/4 v14, 0x1

    if-eqz v2, :cond_0

    new-instance v9, Lz2/o00000OO$OooOO0O;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v9

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    invoke-direct/range {v0 .. v5}, Lz2/o00000OO$OooOO0O;-><init>(Lz2/o00000OO;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Lz2/o00000OO$OooOOO0;)V

    invoke-interface {v6, v9, v14}, Lz2/o00000OO$OooOOO0;->OooO00o(Lz2/o00000OO$OooOO0O;Z)V

    return-object v9

    :cond_0
    new-instance v15, Lz2/o00000OO$OooOO0O;

    const/4 v2, 0x0

    move-object v0, v15

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object v4, v13

    move-object/from16 v5, p2

    invoke-direct/range {v0 .. v5}, Lz2/o00000OO$OooOO0O;-><init>(Lz2/o00000OO;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Lz2/o00000OO$OooOOO0;)V

    invoke-interface {v6, v15, v14}, Lz2/o00000OO$OooOOO0;->OooO00o(Lz2/o00000OO$OooOO0O;Z)V

    iget-object v0, v7, Lz2/o00000OO;->OooO0Oo:Ljava/util/HashMap;

    invoke-virtual {v0, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz2/o00000OO$OooO;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v15}, Lz2/o00000OO$OooO;->OooO0Oo(Lz2/o00000OO$OooOO0O;)V

    return-object v15

    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v4, p5

    move-object v5, v13

    move-object/from16 v6, p6

    invoke-virtual/range {v0 .. v6}, Lz2/o00000OO;->OooOOO(Ljava/lang/String;IILandroid/widget/ImageView$ScaleType;Ljava/lang/String;Lz2/o0000Ooo$OooO00o;)Lcom/android/volley/Request;

    move-result-object v0

    iget-object v1, v7, Lz2/o00000OO;->OooO00o:Lz2/o00Ooo;

    invoke-virtual {v1, v0}, Lz2/o00Ooo;->OooO00o(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    iget-object v1, v7, Lz2/o00000OO;->OooO0Oo:Ljava/util/HashMap;

    new-instance v2, Lz2/o00000OO$OooO;

    invoke-direct {v2, v7, v0, v15}, Lz2/o00000OO$OooO;-><init>(Lz2/o00000OO;Lcom/android/volley/Request;Lz2/o00000OO$OooOO0O;)V

    invoke-virtual {v1, v13, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v15
.end method

.method public OooOO0O(Ljava/lang/String;II)Z
    .locals 6

    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lz2/o00000OO;->OooOOO0(Ljava/lang/String;IILandroid/widget/ImageView$ScaleType;Lz2/o0000Ooo$OooO00o;)Z

    move-result p1

    return p1
.end method

.method public OooOO0o(Ljava/lang/String;IILandroid/widget/ImageView$ScaleType;)Z
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lz2/o00000OO;->OooOOO0(Ljava/lang/String;IILandroid/widget/ImageView$ScaleType;Lz2/o0000Ooo$OooO00o;)Z

    move-result p1

    return p1
.end method

.method public OooOOO(Ljava/lang/String;IILandroid/widget/ImageView$ScaleType;Ljava/lang/String;Lz2/o0000Ooo$OooO00o;)Lcom/android/volley/Request;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Landroid/widget/ImageView$ScaleType;",
            "Ljava/lang/String;",
            "Lz2/o0000Ooo$OooO00o;",
            ")",
            "Lcom/android/volley/Request<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p5

    new-instance v10, Lz2/o0000Ooo;

    new-instance v3, Lz2/o00000OO$OooO0O0;

    invoke-direct {v3, p0, v1}, Lz2/o00000OO$OooO0O0;-><init>(Lz2/o00000OO;Ljava/lang/String;)V

    sget-object v7, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    new-instance v9, Lz2/o00000OO$OooO0OO;

    invoke-direct {v9, p0, v1}, Lz2/o00000OO$OooO0OO;-><init>(Lz2/o00000OO;Ljava/lang/String;)V

    move-object v1, v10

    move-object v2, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v9}, Lz2/o0000Ooo;-><init>(Ljava/lang/String;Lz2/oo000o$OooO0O0;IILandroid/widget/ImageView$ScaleType;Landroid/graphics/Bitmap$Config;Lz2/o0000Ooo$OooO00o;Lz2/oo000o$OooO00o;)V

    return-object v10
.end method

.method public OooOOO0(Ljava/lang/String;IILandroid/widget/ImageView$ScaleType;Lz2/o0000Ooo$OooO00o;)Z
    .locals 0

    invoke-direct {p0}, Lz2/o00000OO;->OooOOo()V

    invoke-static {p1, p2, p3, p4, p5}, Lz2/o00000OO;->OooO(Ljava/lang/String;IILandroid/widget/ImageView$ScaleType;Lz2/o0000Ooo$OooO00o;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lz2/o00000OO;->OooO0OO:Lz2/o00000OO$OooOO0;

    invoke-interface {p2, p1}, Lz2/o00000OO$OooOO0;->OooO00o(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public OooOOOO(Ljava/lang/String;Lcom/android/volley/VolleyError;)V
    .locals 1

    iget-object v0, p0, Lz2/o00000OO;->OooO0Oo:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz2/o00000OO$OooO;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lz2/o00000OO$OooO;->OooO0oO(Lcom/android/volley/VolleyError;)V

    invoke-direct {p0, p1, v0}, Lz2/o00000OO;->OooO0Oo(Ljava/lang/String;Lz2/o00000OO$OooO;)V

    :cond_0
    return-void
.end method

.method public OooOOOo(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lz2/o00000OO;->OooO0OO:Lz2/o00000OO$OooOO0;

    invoke-interface {v0, p1, p2}, Lz2/o00000OO$OooOO0;->OooO0O0(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lz2/o00000OO;->OooO0Oo:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz2/o00000OO$OooO;

    if-eqz v0, :cond_0

    invoke-static {v0, p2}, Lz2/o00000OO$OooO;->OooO0O0(Lz2/o00000OO$OooO;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    invoke-direct {p0, p1, v0}, Lz2/o00000OO;->OooO0Oo(Ljava/lang/String;Lz2/o00000OO$OooO;)V

    :cond_0
    return-void
.end method

.method public OooOOo0(I)V
    .locals 0

    iput p1, p0, Lz2/o00000OO;->OooO0O0:I

    return-void
.end method
