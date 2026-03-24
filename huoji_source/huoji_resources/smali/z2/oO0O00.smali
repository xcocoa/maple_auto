.class public final Lz2/oO0O00;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final OooO00o:Lz2/oO0OO00o;

.field private final OooO0O0:Lz2/oO000o00;

.field private final OooO0OO:Lcom/bumptech/glide/load/DecodeFormat;

.field private final OooO0Oo:Landroid/os/Handler;

.field private OooO0o0:Lz2/oO0O000o;


# direct methods
.method public constructor <init>(Lz2/oO0OO00o;Lz2/oO000o00;Lcom/bumptech/glide/load/DecodeFormat;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lz2/oO0O00;->OooO0Oo:Landroid/os/Handler;

    iput-object p1, p0, Lz2/oO0O00;->OooO00o:Lz2/oO0OO00o;

    iput-object p2, p0, Lz2/oO0O00;->OooO0O0:Lz2/oO000o00;

    iput-object p3, p0, Lz2/oO0O00;->OooO0OO:Lcom/bumptech/glide/load/DecodeFormat;

    return-void
.end method

.method private static OooO0O0(Lz2/oO0O00o0;)I
    .locals 2

    invoke-virtual {p0}, Lz2/oO0O00o0;->OooO0Oo()I

    move-result v0

    invoke-virtual {p0}, Lz2/oO0O00o0;->OooO0O0()I

    move-result v1

    invoke-virtual {p0}, Lz2/oO0O00o0;->OooO00o()Landroid/graphics/Bitmap$Config;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lz2/t2;->OooO0oO(IILandroid/graphics/Bitmap$Config;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public varargs OooO00o([Lz2/oO0O00o0;)Lz2/oO0O00O;
    .locals 7
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lz2/oO0O00;->OooO00o:Lz2/oO0OO00o;

    invoke-interface {v0}, Lz2/oO0OO00o;->OooO0o0()J

    move-result-wide v0

    iget-object v2, p0, Lz2/oO0O00;->OooO00o:Lz2/oO0OO00o;

    invoke-interface {v2}, Lz2/oO0OO00o;->OooO0Oo()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget-object v2, p0, Lz2/oO0O00;->OooO0O0:Lz2/oO000o00;

    invoke-interface {v2}, Lz2/oO000o00;->OooO0o0()J

    move-result-wide v2

    add-long/2addr v0, v2

    array-length v2, p1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v6, p1, v4

    invoke-virtual {v6}, Lz2/oO0O00o0;->OooO0OO()I

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    long-to-float v0, v0

    int-to-float v1, v5

    div-float/2addr v0, v1

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    array-length v2, p1

    :goto_1
    if-ge v3, v2, :cond_1

    aget-object v4, p1, v3

    invoke-virtual {v4}, Lz2/oO0O00o0;->OooO0OO()I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v0

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-static {v4}, Lz2/oO0O00;->OooO0O0(Lz2/oO0O00o0;)I

    move-result v6

    div-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    new-instance p1, Lz2/oO0O00O;

    invoke-direct {p1, v1}, Lz2/oO0O00O;-><init>(Ljava/util/Map;)V

    return-object p1
.end method

.method public varargs OooO0OO([Lz2/oO0O00o0$OooO00o;)V
    .locals 5

    iget-object v0, p0, Lz2/oO0O00;->OooO0o0:Lz2/oO0O000o;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lz2/oO0O000o;->OooO0O0()V

    :cond_0
    array-length v0, p1

    new-array v0, v0, [Lz2/oO0O00o0;

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_3

    aget-object v2, p1, v1

    invoke-virtual {v2}, Lz2/oO0O00o0$OooO00o;->OooO0O0()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lz2/oO0O00;->OooO0OO:Lcom/bumptech/glide/load/DecodeFormat;

    sget-object v4, Lcom/bumptech/glide/load/DecodeFormat;->PREFER_ARGB_8888:Lcom/bumptech/glide/load/DecodeFormat;

    if-ne v3, v4, :cond_1

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_1

    :cond_1
    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    :goto_1
    invoke-virtual {v2, v3}, Lz2/oO0O00o0$OooO00o;->OooO0OO(Landroid/graphics/Bitmap$Config;)Lz2/oO0O00o0$OooO00o;

    :cond_2
    invoke-virtual {v2}, Lz2/oO0O00o0$OooO00o;->OooO00o()Lz2/oO0O00o0;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v0}, Lz2/oO0O00;->OooO00o([Lz2/oO0O00o0;)Lz2/oO0O00O;

    move-result-object p1

    new-instance v0, Lz2/oO0O000o;

    iget-object v1, p0, Lz2/oO0O00;->OooO0O0:Lz2/oO000o00;

    iget-object v2, p0, Lz2/oO0O00;->OooO00o:Lz2/oO0OO00o;

    invoke-direct {v0, v1, v2, p1}, Lz2/oO0O000o;-><init>(Lz2/oO000o00;Lz2/oO0OO00o;Lz2/oO0O00O;)V

    iput-object v0, p0, Lz2/oO0O00;->OooO0o0:Lz2/oO0O000o;

    iget-object p1, p0, Lz2/oO0O00;->OooO0Oo:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
