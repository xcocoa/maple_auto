.class public abstract Lz2/i1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lz2/i1<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final o0000:I = 0x10000

.field private static final o00000:I = 0x80

.field private static final o000000:I = 0x10

.field private static final o000000O:I = 0x20

.field private static final o000000o:I = 0x40

.field private static final o00000O:I = 0x200

.field private static final o00000O0:I = 0x100

.field private static final o00000OO:I = 0x400

.field private static final o00000Oo:I = 0x800

.field private static final o00000o0:I = 0x1000

.field private static final o00000oO:I = 0x4000

.field private static final o00000oo:I = 0x8000

.field private static final o0000O0:I = 0x100000

.field private static final o0000O00:I = 0x20000

.field private static final o0000Ooo:I = 0x2000

.field private static final o0000oO:I = 0x80000

.field private static final o0000oo:I = 0x40000

.field private static final o000OOo:I = 0x8

.field private static final o0O0O00:I = 0x4

.field private static final o0OO00O:I = -0x1

.field private static final oo0o0Oo:I = 0x2


# instance fields
.field private OoooOoO:I

.field private OoooOoo:F

.field private Ooooo00:Lz2/o0oo0000;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private Ooooo0o:Lcom/bumptech/glide/Priority;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private OooooO0:Landroid/graphics/drawable/Drawable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private OooooOO:I

.field private OooooOo:Landroid/graphics/drawable/Drawable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private Oooooo:Z

.field private Oooooo0:I

.field private OoooooO:I

.field private Ooooooo:I

.field private o00O0O:Z

.field private o00Oo0:Landroid/graphics/drawable/Drawable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private o00Ooo:I

.field private o00o0O:Lz2/o0O0OOO0;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private o00oO0O:Landroid/content/res/Resources$Theme;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private o00oO0o:Z

.field private o00ooo:Ljava/util/Map;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lz2/o0O0o000<",
            "*>;>;"
        }
    .end annotation
.end field

.field private o0OOO0o:Z

.field private o0Oo0oo:Z

.field private o0OoOo0:Lz2/o0O0O0Oo;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private o0ooOO0:Z

.field private o0ooOOo:Z

.field private o0ooOoO:Z

.field private oo000o:Ljava/lang/Class;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private ooOO:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lz2/i1;->OoooOoo:F

    sget-object v0, Lz2/o0oo0000;->OooO0o0:Lz2/o0oo0000;

    iput-object v0, p0, Lz2/i1;->Ooooo00:Lz2/o0oo0000;

    sget-object v0, Lcom/bumptech/glide/Priority;->NORMAL:Lcom/bumptech/glide/Priority;

    iput-object v0, p0, Lz2/i1;->Ooooo0o:Lcom/bumptech/glide/Priority;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lz2/i1;->Oooooo:Z

    const/4 v1, -0x1

    iput v1, p0, Lz2/i1;->OoooooO:I

    iput v1, p0, Lz2/i1;->Ooooooo:I

    invoke-static {}, Lz2/e2;->OooO0OO()Lz2/e2;

    move-result-object v1

    iput-object v1, p0, Lz2/i1;->o0OoOo0:Lz2/o0O0O0Oo;

    iput-boolean v0, p0, Lz2/i1;->o00O0O:Z

    new-instance v1, Lz2/o0O0OOO0;

    invoke-direct {v1}, Lz2/o0O0OOO0;-><init>()V

    iput-object v1, p0, Lz2/i1;->o00o0O:Lz2/o0O0OOO0;

    new-instance v1, Lz2/i2;

    invoke-direct {v1}, Lz2/i2;-><init>()V

    iput-object v1, p0, Lz2/i1;->o00ooo:Ljava/util/Map;

    const-class v1, Ljava/lang/Object;

    iput-object v1, p0, Lz2/i1;->oo000o:Ljava/lang/Class;

    iput-boolean v0, p0, Lz2/i1;->o0OOO0o:Z

    return-void
.end method

.method private OooooOO(I)Z
    .locals 1

    iget v0, p0, Lz2/i1;->OoooOoO:I

    invoke-static {v0, p1}, Lz2/i1;->OooooOo(II)Z

    move-result p1

    return p1
.end method

.method private static OooooOo(II)Z
    .locals 0

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private o000000()Lz2/i1;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-boolean v0, p0, Lz2/i1;->o00oO0o:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lz2/i1;->o000OOo()Lz2/i1;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You cannot modify locked T, consider clone()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private o000OOo()Lz2/i1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    return-object p0
.end method

.method private o0O0O00(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lz2/o0O0o000;Z)Lz2/i1;
    .locals 0
    .param p1    # Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lz2/o0O0o000;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;",
            "Lz2/o0O0o000<",
            "Landroid/graphics/Bitmap;",
            ">;Z)TT;"
        }
    .end annotation

    if-eqz p3, :cond_0

    invoke-virtual {p0, p1, p2}, Lz2/i1;->o0000Ooo(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lz2/o0O0o000;)Lz2/i1;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lz2/i1;->o00oO0O(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lz2/o0O0o000;)Lz2/i1;

    move-result-object p1

    :goto_0
    const/4 p2, 0x1

    iput-boolean p2, p1, Lz2/i1;->o0OOO0o:Z

    return-object p1
.end method

.method private oo000o(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lz2/o0O0o000;)Lz2/i1;
    .locals 1
    .param p1    # Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lz2/o0O0o000;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;",
            "Lz2/o0O0o000<",
            "Landroid/graphics/Bitmap;",
            ">;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lz2/i1;->o0O0O00(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lz2/o0O0o000;Z)Lz2/i1;

    move-result-object p1

    return-object p1
.end method

.method private oo0o0Oo(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lz2/o0O0o000;)Lz2/i1;
    .locals 1
    .param p1    # Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lz2/o0O0o000;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;",
            "Lz2/o0O0o000<",
            "Landroid/graphics/Bitmap;",
            ">;)TT;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lz2/i1;->o0O0O00(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lz2/o0O0o000;Z)Lz2/i1;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public OooOO0O(Lz2/i1;)Lz2/i1;
    .locals 4
    .param p1    # Lz2/i1;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/i1<",
            "*>;)TT;"
        }
    .end annotation

    iget-boolean v0, p0, Lz2/i1;->o0ooOO0:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lz2/i1;->OooOOOo()Lz2/i1;

    move-result-object v0

    invoke-virtual {v0, p1}, Lz2/i1;->OooOO0O(Lz2/i1;)Lz2/i1;

    move-result-object p1

    return-object p1

    :cond_0
    iget v0, p1, Lz2/i1;->OoooOoO:I

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lz2/i1;->OooooOo(II)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p1, Lz2/i1;->OoooOoo:F

    iput v0, p0, Lz2/i1;->OoooOoo:F

    :cond_1
    iget v0, p1, Lz2/i1;->OoooOoO:I

    const/high16 v1, 0x40000

    invoke-static {v0, v1}, Lz2/i1;->OooooOo(II)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p1, Lz2/i1;->o0ooOOo:Z

    iput-boolean v0, p0, Lz2/i1;->o0ooOOo:Z

    :cond_2
    iget v0, p1, Lz2/i1;->OoooOoO:I

    const/high16 v1, 0x100000

    invoke-static {v0, v1}, Lz2/i1;->OooooOo(II)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p1, Lz2/i1;->o0Oo0oo:Z

    iput-boolean v0, p0, Lz2/i1;->o0Oo0oo:Z

    :cond_3
    iget v0, p1, Lz2/i1;->OoooOoO:I

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lz2/i1;->OooooOo(II)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p1, Lz2/i1;->Ooooo00:Lz2/o0oo0000;

    iput-object v0, p0, Lz2/i1;->Ooooo00:Lz2/o0oo0000;

    :cond_4
    iget v0, p1, Lz2/i1;->OoooOoO:I

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lz2/i1;->OooooOo(II)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p1, Lz2/i1;->Ooooo0o:Lcom/bumptech/glide/Priority;

    iput-object v0, p0, Lz2/i1;->Ooooo0o:Lcom/bumptech/glide/Priority;

    :cond_5
    iget v0, p1, Lz2/i1;->OoooOoO:I

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lz2/i1;->OooooOo(II)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    iget-object v0, p1, Lz2/i1;->OooooO0:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lz2/i1;->OooooO0:Landroid/graphics/drawable/Drawable;

    iput v1, p0, Lz2/i1;->OooooOO:I

    iget v0, p0, Lz2/i1;->OoooOoO:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lz2/i1;->OoooOoO:I

    :cond_6
    iget v0, p1, Lz2/i1;->OoooOoO:I

    const/16 v2, 0x20

    invoke-static {v0, v2}, Lz2/i1;->OooooOo(II)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_7

    iget v0, p1, Lz2/i1;->OooooOO:I

    iput v0, p0, Lz2/i1;->OooooOO:I

    iput-object v2, p0, Lz2/i1;->OooooO0:Landroid/graphics/drawable/Drawable;

    iget v0, p0, Lz2/i1;->OoooOoO:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lz2/i1;->OoooOoO:I

    :cond_7
    iget v0, p1, Lz2/i1;->OoooOoO:I

    const/16 v3, 0x40

    invoke-static {v0, v3}, Lz2/i1;->OooooOo(II)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p1, Lz2/i1;->OooooOo:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lz2/i1;->OooooOo:Landroid/graphics/drawable/Drawable;

    iput v1, p0, Lz2/i1;->Oooooo0:I

    iget v0, p0, Lz2/i1;->OoooOoO:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lz2/i1;->OoooOoO:I

    :cond_8
    iget v0, p1, Lz2/i1;->OoooOoO:I

    const/16 v3, 0x80

    invoke-static {v0, v3}, Lz2/i1;->OooooOo(II)Z

    move-result v0

    if-eqz v0, :cond_9

    iget v0, p1, Lz2/i1;->Oooooo0:I

    iput v0, p0, Lz2/i1;->Oooooo0:I

    iput-object v2, p0, Lz2/i1;->OooooOo:Landroid/graphics/drawable/Drawable;

    iget v0, p0, Lz2/i1;->OoooOoO:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lz2/i1;->OoooOoO:I

    :cond_9
    iget v0, p1, Lz2/i1;->OoooOoO:I

    const/16 v3, 0x100

    invoke-static {v0, v3}, Lz2/i1;->OooooOo(II)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-boolean v0, p1, Lz2/i1;->Oooooo:Z

    iput-boolean v0, p0, Lz2/i1;->Oooooo:Z

    :cond_a
    iget v0, p1, Lz2/i1;->OoooOoO:I

    const/16 v3, 0x200

    invoke-static {v0, v3}, Lz2/i1;->OooooOo(II)Z

    move-result v0

    if-eqz v0, :cond_b

    iget v0, p1, Lz2/i1;->Ooooooo:I

    iput v0, p0, Lz2/i1;->Ooooooo:I

    iget v0, p1, Lz2/i1;->OoooooO:I

    iput v0, p0, Lz2/i1;->OoooooO:I

    :cond_b
    iget v0, p1, Lz2/i1;->OoooOoO:I

    const/16 v3, 0x400

    invoke-static {v0, v3}, Lz2/i1;->OooooOo(II)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p1, Lz2/i1;->o0OoOo0:Lz2/o0O0O0Oo;

    iput-object v0, p0, Lz2/i1;->o0OoOo0:Lz2/o0O0O0Oo;

    :cond_c
    iget v0, p1, Lz2/i1;->OoooOoO:I

    const/16 v3, 0x1000

    invoke-static {v0, v3}, Lz2/i1;->OooooOo(II)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p1, Lz2/i1;->oo000o:Ljava/lang/Class;

    iput-object v0, p0, Lz2/i1;->oo000o:Ljava/lang/Class;

    :cond_d
    iget v0, p1, Lz2/i1;->OoooOoO:I

    const/16 v3, 0x2000

    invoke-static {v0, v3}, Lz2/i1;->OooooOo(II)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p1, Lz2/i1;->o00Oo0:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lz2/i1;->o00Oo0:Landroid/graphics/drawable/Drawable;

    iput v1, p0, Lz2/i1;->o00Ooo:I

    iget v0, p0, Lz2/i1;->OoooOoO:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lz2/i1;->OoooOoO:I

    :cond_e
    iget v0, p1, Lz2/i1;->OoooOoO:I

    const/16 v3, 0x4000

    invoke-static {v0, v3}, Lz2/i1;->OooooOo(II)Z

    move-result v0

    if-eqz v0, :cond_f

    iget v0, p1, Lz2/i1;->o00Ooo:I

    iput v0, p0, Lz2/i1;->o00Ooo:I

    iput-object v2, p0, Lz2/i1;->o00Oo0:Landroid/graphics/drawable/Drawable;

    iget v0, p0, Lz2/i1;->OoooOoO:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lz2/i1;->OoooOoO:I

    :cond_f
    iget v0, p1, Lz2/i1;->OoooOoO:I

    const v2, 0x8000

    invoke-static {v0, v2}, Lz2/i1;->OooooOo(II)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p1, Lz2/i1;->o00oO0O:Landroid/content/res/Resources$Theme;

    iput-object v0, p0, Lz2/i1;->o00oO0O:Landroid/content/res/Resources$Theme;

    :cond_10
    iget v0, p1, Lz2/i1;->OoooOoO:I

    const/high16 v2, 0x10000

    invoke-static {v0, v2}, Lz2/i1;->OooooOo(II)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-boolean v0, p1, Lz2/i1;->o00O0O:Z

    iput-boolean v0, p0, Lz2/i1;->o00O0O:Z

    :cond_11
    iget v0, p1, Lz2/i1;->OoooOoO:I

    const/high16 v2, 0x20000

    invoke-static {v0, v2}, Lz2/i1;->OooooOo(II)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-boolean v0, p1, Lz2/i1;->ooOO:Z

    iput-boolean v0, p0, Lz2/i1;->ooOO:Z

    :cond_12
    iget v0, p1, Lz2/i1;->OoooOoO:I

    const/16 v2, 0x800

    invoke-static {v0, v2}, Lz2/i1;->OooooOo(II)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lz2/i1;->o00ooo:Ljava/util/Map;

    iget-object v2, p1, Lz2/i1;->o00ooo:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    iget-boolean v0, p1, Lz2/i1;->o0OOO0o:Z

    iput-boolean v0, p0, Lz2/i1;->o0OOO0o:Z

    :cond_13
    iget v0, p1, Lz2/i1;->OoooOoO:I

    const/high16 v2, 0x80000

    invoke-static {v0, v2}, Lz2/i1;->OooooOo(II)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-boolean v0, p1, Lz2/i1;->o0ooOoO:Z

    iput-boolean v0, p0, Lz2/i1;->o0ooOoO:Z

    :cond_14
    iget-boolean v0, p0, Lz2/i1;->o00O0O:Z

    if-nez v0, :cond_15

    iget-object v0, p0, Lz2/i1;->o00ooo:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget v0, p0, Lz2/i1;->OoooOoO:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lz2/i1;->OoooOoO:I

    iput-boolean v1, p0, Lz2/i1;->ooOO:Z

    const v1, -0x20001

    and-int/2addr v0, v1

    iput v0, p0, Lz2/i1;->OoooOoO:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lz2/i1;->o0OOO0o:Z

    :cond_15
    iget v0, p0, Lz2/i1;->OoooOoO:I

    iget v1, p1, Lz2/i1;->OoooOoO:I

    or-int/2addr v0, v1

    iput v0, p0, Lz2/i1;->OoooOoO:I

    iget-object v0, p0, Lz2/i1;->o00o0O:Lz2/o0O0OOO0;

    iget-object p1, p1, Lz2/i1;->o00o0O:Lz2/o0O0OOO0;

    invoke-virtual {v0, p1}, Lz2/o0O0OOO0;->OooO0Oo(Lz2/o0O0OOO0;)V

    invoke-direct {p0}, Lz2/i1;->o000000()Lz2/i1;

    move-result-object p1

    return-object p1
.end method

.method public OooOO0o()Lz2/i1;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-boolean v0, p0, Lz2/i1;->o00oO0o:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lz2/i1;->o0ooOO0:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You cannot auto lock an already locked options object, try clone() first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lz2/i1;->o0ooOO0:Z

    invoke-virtual {p0}, Lz2/i1;->ooOO()Lz2/i1;

    move-result-object v0

    return-object v0
.end method

.method public OooOOO()Lz2/i1;
    .locals 2
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;->OooO0o0:Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;

    new-instance v1, Lz2/oOOO0O0o;

    invoke-direct {v1}, Lz2/oOOO0O0o;-><init>()V

    invoke-direct {p0, v0, v1}, Lz2/i1;->oo0o0Oo(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lz2/o0O0o000;)Lz2/i1;

    move-result-object v0

    return-object v0
.end method

.method public OooOOO0()Lz2/i1;
    .locals 2
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;->OooO0O0:Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;

    new-instance v1, Lz2/oOOO00o0;

    invoke-direct {v1}, Lz2/oOOO00o0;-><init>()V

    invoke-virtual {p0, v0, v1}, Lz2/i1;->o0000Ooo(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lz2/o0O0o000;)Lz2/i1;

    move-result-object v0

    return-object v0
.end method

.method public OooOOOO()Lz2/i1;
    .locals 2
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;->OooO0o0:Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;

    new-instance v1, Lz2/oOOO0OO0;

    invoke-direct {v1}, Lz2/oOOO0OO0;-><init>()V

    invoke-virtual {p0, v0, v1}, Lz2/i1;->o0000Ooo(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lz2/o0O0o000;)Lz2/i1;

    move-result-object v0

    return-object v0
.end method

.method public OooOOOo()Lz2/i1;
    .locals 3
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz2/i1;

    new-instance v1, Lz2/o0O0OOO0;

    invoke-direct {v1}, Lz2/o0O0OOO0;-><init>()V

    iput-object v1, v0, Lz2/i1;->o00o0O:Lz2/o0O0OOO0;

    iget-object v2, p0, Lz2/i1;->o00o0O:Lz2/o0O0OOO0;

    invoke-virtual {v1, v2}, Lz2/o0O0OOO0;->OooO0Oo(Lz2/o0O0OOO0;)V

    new-instance v1, Lz2/i2;

    invoke-direct {v1}, Lz2/i2;-><init>()V

    iput-object v1, v0, Lz2/i1;->o00ooo:Ljava/util/Map;

    iget-object v2, p0, Lz2/i1;->o00ooo:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lz2/i1;->o00oO0o:Z

    iput-boolean v1, v0, Lz2/i1;->o0ooOO0:Z
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public OooOOo()Lz2/i1;
    .locals 2
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    sget-object v0, Lz2/oOOOoo00;->OooOO0:Lz2/o0O0OO0;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0, v1}, Lz2/i1;->o000000O(Lz2/o0O0OO0;Ljava/lang/Object;)Lz2/i1;

    move-result-object v0

    return-object v0
.end method

.method public OooOOo0(Ljava/lang/Class;)Lz2/i1;
    .locals 1
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)TT;"
        }
    .end annotation

    iget-boolean v0, p0, Lz2/i1;->o0ooOO0:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lz2/i1;->OooOOOo()Lz2/i1;

    move-result-object v0

    invoke-virtual {v0, p1}, Lz2/i1;->OooOOo0(Ljava/lang/Class;)Lz2/i1;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {p1}, Lz2/r2;->OooO0Oo(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    iput-object p1, p0, Lz2/i1;->oo000o:Ljava/lang/Class;

    iget p1, p0, Lz2/i1;->OoooOoO:I

    or-int/lit16 p1, p1, 0x1000

    iput p1, p0, Lz2/i1;->OoooOoO:I

    invoke-direct {p0}, Lz2/i1;->o000000()Lz2/i1;

    move-result-object p1

    return-object p1
.end method

.method public OooOOoo(Lz2/o0oo0000;)Lz2/i1;
    .locals 1
    .param p1    # Lz2/o0oo0000;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/o0oo0000;",
            ")TT;"
        }
    .end annotation

    iget-boolean v0, p0, Lz2/i1;->o0ooOO0:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lz2/i1;->OooOOOo()Lz2/i1;

    move-result-object v0

    invoke-virtual {v0, p1}, Lz2/i1;->OooOOoo(Lz2/o0oo0000;)Lz2/i1;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {p1}, Lz2/r2;->OooO0Oo(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lz2/o0oo0000;

    iput-object p1, p0, Lz2/i1;->Ooooo00:Lz2/o0oo0000;

    iget p1, p0, Lz2/i1;->OoooOoO:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lz2/i1;->OoooOoO:I

    invoke-direct {p0}, Lz2/i1;->o000000()Lz2/i1;

    move-result-object p1

    return-object p1
.end method

.method public OooOo(I)Lz2/i1;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
            to = 0x64L
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    sget-object v0, Lz2/ooooO0O0;->OooO0O0:Lz2/o0O0OO0;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lz2/i1;->o000000O(Lz2/o0O0OO0;Ljava/lang/Object;)Lz2/i1;

    move-result-object p1

    return-object p1
.end method

.method public OooOo0()Lz2/i1;
    .locals 3
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-boolean v0, p0, Lz2/i1;->o0ooOO0:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lz2/i1;->OooOOOo()Lz2/i1;

    move-result-object v0

    invoke-virtual {v0}, Lz2/i1;->OooOo0()Lz2/i1;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lz2/i1;->o00ooo:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget v0, p0, Lz2/i1;->OoooOoO:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lz2/i1;->OoooOoO:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lz2/i1;->ooOO:Z

    const v2, -0x20001

    and-int/2addr v0, v2

    iput v0, p0, Lz2/i1;->OoooOoO:I

    iput-boolean v1, p0, Lz2/i1;->o00O0O:Z

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    iput v0, p0, Lz2/i1;->OoooOoO:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lz2/i1;->o0OOO0o:Z

    invoke-direct {p0}, Lz2/i1;->o000000()Lz2/i1;

    move-result-object v0

    return-object v0
.end method

.method public OooOo00()Lz2/i1;
    .locals 2
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    sget-object v0, Lz2/x;->OooO0O0:Lz2/o0O0OO0;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0, v1}, Lz2/i1;->o000000O(Lz2/o0O0OO0;Ljava/lang/Object;)Lz2/i1;

    move-result-object v0

    return-object v0
.end method

.method public OooOo0O(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Lz2/i1;
    .locals 1
    .param p1    # Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;",
            ")TT;"
        }
    .end annotation

    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;->OooO0oo:Lz2/o0O0OO0;

    invoke-static {p1}, Lz2/r2;->OooO0Oo(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lz2/i1;->o000000O(Lz2/o0O0OO0;Ljava/lang/Object;)Lz2/i1;

    move-result-object p1

    return-object p1
.end method

.method public OooOo0o(Landroid/graphics/Bitmap$CompressFormat;)Lz2/i1;
    .locals 1
    .param p1    # Landroid/graphics/Bitmap$CompressFormat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap$CompressFormat;",
            ")TT;"
        }
    .end annotation

    sget-object v0, Lz2/ooooO0O0;->OooO0OO:Lz2/o0O0OO0;

    invoke-static {p1}, Lz2/r2;->OooO0Oo(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lz2/i1;->o000000O(Lz2/o0O0OO0;Ljava/lang/Object;)Lz2/i1;

    move-result-object p1

    return-object p1
.end method

.method public OooOoO(Landroid/graphics/drawable/Drawable;)Lz2/i1;
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            ")TT;"
        }
    .end annotation

    iget-boolean v0, p0, Lz2/i1;->o0ooOO0:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lz2/i1;->OooOOOo()Lz2/i1;

    move-result-object v0

    invoke-virtual {v0, p1}, Lz2/i1;->OooOoO(Landroid/graphics/drawable/Drawable;)Lz2/i1;

    move-result-object p1

    return-object p1

    :cond_0
    iput-object p1, p0, Lz2/i1;->OooooO0:Landroid/graphics/drawable/Drawable;

    iget p1, p0, Lz2/i1;->OoooOoO:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Lz2/i1;->OoooOoO:I

    const/4 v0, 0x0

    iput v0, p0, Lz2/i1;->OooooOO:I

    and-int/lit8 p1, p1, -0x21

    iput p1, p0, Lz2/i1;->OoooOoO:I

    invoke-direct {p0}, Lz2/i1;->o000000()Lz2/i1;

    move-result-object p1

    return-object p1
.end method

.method public OooOoO0(I)Lz2/i1;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iget-boolean v0, p0, Lz2/i1;->o0ooOO0:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lz2/i1;->OooOOOo()Lz2/i1;

    move-result-object v0

    invoke-virtual {v0, p1}, Lz2/i1;->OooOoO0(I)Lz2/i1;

    move-result-object p1

    return-object p1

    :cond_0
    iput p1, p0, Lz2/i1;->OooooOO:I

    iget p1, p0, Lz2/i1;->OoooOoO:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Lz2/i1;->OoooOoO:I

    const/4 v0, 0x0

    iput-object v0, p0, Lz2/i1;->OooooO0:Landroid/graphics/drawable/Drawable;

    and-int/lit8 p1, p1, -0x11

    iput p1, p0, Lz2/i1;->OoooOoO:I

    invoke-direct {p0}, Lz2/i1;->o000000()Lz2/i1;

    move-result-object p1

    return-object p1
.end method

.method public OooOoOO(I)Lz2/i1;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iget-boolean v0, p0, Lz2/i1;->o0ooOO0:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lz2/i1;->OooOOOo()Lz2/i1;

    move-result-object v0

    invoke-virtual {v0, p1}, Lz2/i1;->OooOoOO(I)Lz2/i1;

    move-result-object p1

    return-object p1

    :cond_0
    iput p1, p0, Lz2/i1;->o00Ooo:I

    iget p1, p0, Lz2/i1;->OoooOoO:I

    or-int/lit16 p1, p1, 0x4000

    iput p1, p0, Lz2/i1;->OoooOoO:I

    const/4 v0, 0x0

    iput-object v0, p0, Lz2/i1;->o00Oo0:Landroid/graphics/drawable/Drawable;

    and-int/lit16 p1, p1, -0x2001

    iput p1, p0, Lz2/i1;->OoooOoO:I

    invoke-direct {p0}, Lz2/i1;->o000000()Lz2/i1;

    move-result-object p1

    return-object p1
.end method

.method public OooOoo()Lz2/i1;
    .locals 2
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;->OooO00o:Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;

    new-instance v1, Lz2/oOo0o00;

    invoke-direct {v1}, Lz2/oOo0o00;-><init>()V

    invoke-direct {p0, v0, v1}, Lz2/i1;->oo0o0Oo(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lz2/o0O0o000;)Lz2/i1;

    move-result-object v0

    return-object v0
.end method

.method public OooOoo0(Landroid/graphics/drawable/Drawable;)Lz2/i1;
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            ")TT;"
        }
    .end annotation

    iget-boolean v0, p0, Lz2/i1;->o0ooOO0:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lz2/i1;->OooOOOo()Lz2/i1;

    move-result-object v0

    invoke-virtual {v0, p1}, Lz2/i1;->OooOoo0(Landroid/graphics/drawable/Drawable;)Lz2/i1;

    move-result-object p1

    return-object p1

    :cond_0
    iput-object p1, p0, Lz2/i1;->o00Oo0:Landroid/graphics/drawable/Drawable;

    iget p1, p0, Lz2/i1;->OoooOoO:I

    or-int/lit16 p1, p1, 0x2000

    iput p1, p0, Lz2/i1;->OoooOoO:I

    const/4 v0, 0x0

    iput v0, p0, Lz2/i1;->o00Ooo:I

    and-int/lit16 p1, p1, -0x4001

    iput p1, p0, Lz2/i1;->OoooOoO:I

    invoke-direct {p0}, Lz2/i1;->o000000()Lz2/i1;

    move-result-object p1

    return-object p1
.end method

.method public OooOooO(Lcom/bumptech/glide/load/DecodeFormat;)Lz2/i1;
    .locals 2
    .param p1    # Lcom/bumptech/glide/load/DecodeFormat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/DecodeFormat;",
            ")TT;"
        }
    .end annotation

    invoke-static {p1}, Lz2/r2;->OooO0Oo(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lz2/oOOOoo00;->OooO0oO:Lz2/o0O0OO0;

    invoke-virtual {p0, v0, p1}, Lz2/i1;->o000000O(Lz2/o0O0OO0;Ljava/lang/Object;)Lz2/i1;

    move-result-object v0

    sget-object v1, Lz2/x;->OooO00o:Lz2/o0O0OO0;

    invoke-virtual {v0, v1, p1}, Lz2/i1;->o000000O(Lz2/o0O0OO0;Ljava/lang/Object;)Lz2/i1;

    move-result-object p1

    return-object p1
.end method

.method public OooOooo(J)Lz2/i1;
    .locals 1
    .param p1    # J
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TT;"
        }
    .end annotation

    sget-object v0, Lz2/d;->OooO0oO:Lz2/o0O0OO0;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lz2/i1;->o000000O(Lz2/o0O0OO0;Ljava/lang/Object;)Lz2/i1;

    move-result-object p1

    return-object p1
.end method

.method public final Oooo()I
    .locals 1

    iget v0, p0, Lz2/i1;->Oooooo0:I

    return v0
.end method

.method public final Oooo0()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lz2/i1;->o00Oo0:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final Oooo000()Lz2/o0oo0000;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lz2/i1;->Ooooo00:Lz2/o0oo0000;

    return-object v0
.end method

.method public final Oooo00O()I
    .locals 1

    iget v0, p0, Lz2/i1;->OooooOO:I

    return v0
.end method

.method public final Oooo00o()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lz2/i1;->OooooO0:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final Oooo0O0()I
    .locals 1

    iget v0, p0, Lz2/i1;->o00Ooo:I

    return v0
.end method

.method public final Oooo0OO()Z
    .locals 1

    iget-boolean v0, p0, Lz2/i1;->o0ooOoO:Z

    return v0
.end method

.method public final Oooo0o()I
    .locals 1

    iget v0, p0, Lz2/i1;->OoooooO:I

    return v0
.end method

.method public final Oooo0o0()Lz2/o0O0OOO0;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lz2/i1;->o00o0O:Lz2/o0O0OOO0;

    return-object v0
.end method

.method public final Oooo0oO()I
    .locals 1

    iget v0, p0, Lz2/i1;->Ooooooo:I

    return v0
.end method

.method public final Oooo0oo()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lz2/i1;->OooooOo:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final OoooO()F
    .locals 1

    iget v0, p0, Lz2/i1;->OoooOoo:F

    return v0
.end method

.method public final OoooO0()Ljava/lang/Class;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lz2/i1;->oo000o:Ljava/lang/Class;

    return-object v0
.end method

.method public final OoooO00()Lcom/bumptech/glide/Priority;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lz2/i1;->Ooooo0o:Lcom/bumptech/glide/Priority;

    return-object v0
.end method

.method public final OoooO0O()Lz2/o0O0O0Oo;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lz2/i1;->o0OoOo0:Lz2/o0O0O0Oo;

    return-object v0
.end method

.method public final OoooOO0()Landroid/content/res/Resources$Theme;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lz2/i1;->o00oO0O:Landroid/content/res/Resources$Theme;

    return-object v0
.end method

.method public final OoooOOO()Z
    .locals 1

    iget-boolean v0, p0, Lz2/i1;->o0Oo0oo:Z

    return v0
.end method

.method public final OoooOOo()Z
    .locals 1

    iget-boolean v0, p0, Lz2/i1;->o0ooOOo:Z

    return v0
.end method

.method public OoooOo0()Z
    .locals 1

    iget-boolean v0, p0, Lz2/i1;->o0ooOO0:Z

    return v0
.end method

.method public final OoooOoO()Z
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lz2/i1;->OooooOO(I)Z

    move-result v0

    return v0
.end method

.method public final OoooOoo()Z
    .locals 1

    iget-boolean v0, p0, Lz2/i1;->o00oO0o:Z

    return v0
.end method

.method public final Ooooo00()Z
    .locals 1

    iget-boolean v0, p0, Lz2/i1;->Oooooo:Z

    return v0
.end method

.method public final Ooooo0o()Z
    .locals 1

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lz2/i1;->OooooOO(I)Z

    move-result v0

    return v0
.end method

.method public OooooO0()Z
    .locals 1

    iget-boolean v0, p0, Lz2/i1;->o0OOO0o:Z

    return v0
.end method

.method public final Oooooo()Z
    .locals 1

    iget-boolean v0, p0, Lz2/i1;->o00O0O:Z

    return v0
.end method

.method public final Oooooo0()Z
    .locals 1

    const/16 v0, 0x100

    invoke-direct {p0, v0}, Lz2/i1;->OooooOO(I)Z

    move-result v0

    return v0
.end method

.method public final OoooooO()Z
    .locals 1

    iget-boolean v0, p0, Lz2/i1;->ooOO:Z

    return v0
.end method

.method public final Ooooooo()Z
    .locals 1

    const/16 v0, 0x800

    invoke-direct {p0, v0}, Lz2/i1;->OooooOO(I)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lz2/i1;->OooOOOo()Lz2/i1;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lz2/i1;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lz2/i1;

    iget v0, p1, Lz2/i1;->OoooOoo:F

    iget v2, p0, Lz2/i1;->OoooOoo:F

    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lz2/i1;->OooooOO:I

    iget v2, p1, Lz2/i1;->OooooOO:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lz2/i1;->OooooO0:Landroid/graphics/drawable/Drawable;

    iget-object v2, p1, Lz2/i1;->OooooO0:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v2}, Lz2/t2;->OooO0Oo(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lz2/i1;->Oooooo0:I

    iget v2, p1, Lz2/i1;->Oooooo0:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lz2/i1;->OooooOo:Landroid/graphics/drawable/Drawable;

    iget-object v2, p1, Lz2/i1;->OooooOo:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v2}, Lz2/t2;->OooO0Oo(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lz2/i1;->o00Ooo:I

    iget v2, p1, Lz2/i1;->o00Ooo:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lz2/i1;->o00Oo0:Landroid/graphics/drawable/Drawable;

    iget-object v2, p1, Lz2/i1;->o00Oo0:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v2}, Lz2/t2;->OooO0Oo(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lz2/i1;->Oooooo:Z

    iget-boolean v2, p1, Lz2/i1;->Oooooo:Z

    if-ne v0, v2, :cond_0

    iget v0, p0, Lz2/i1;->OoooooO:I

    iget v2, p1, Lz2/i1;->OoooooO:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Lz2/i1;->Ooooooo:I

    iget v2, p1, Lz2/i1;->Ooooooo:I

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lz2/i1;->ooOO:Z

    iget-boolean v2, p1, Lz2/i1;->ooOO:Z

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lz2/i1;->o00O0O:Z

    iget-boolean v2, p1, Lz2/i1;->o00O0O:Z

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lz2/i1;->o0ooOOo:Z

    iget-boolean v2, p1, Lz2/i1;->o0ooOOo:Z

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lz2/i1;->o0ooOoO:Z

    iget-boolean v2, p1, Lz2/i1;->o0ooOoO:Z

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lz2/i1;->Ooooo00:Lz2/o0oo0000;

    iget-object v2, p1, Lz2/i1;->Ooooo00:Lz2/o0oo0000;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lz2/i1;->Ooooo0o:Lcom/bumptech/glide/Priority;

    iget-object v2, p1, Lz2/i1;->Ooooo0o:Lcom/bumptech/glide/Priority;

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lz2/i1;->o00o0O:Lz2/o0O0OOO0;

    iget-object v2, p1, Lz2/i1;->o00o0O:Lz2/o0O0OOO0;

    invoke-virtual {v0, v2}, Lz2/o0O0OOO0;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lz2/i1;->o00ooo:Ljava/util/Map;

    iget-object v2, p1, Lz2/i1;->o00ooo:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lz2/i1;->oo000o:Ljava/lang/Class;

    iget-object v2, p1, Lz2/i1;->oo000o:Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lz2/i1;->o0OoOo0:Lz2/o0O0O0Oo;

    iget-object v2, p1, Lz2/i1;->o0OoOo0:Lz2/o0O0O0Oo;

    invoke-static {v0, v2}, Lz2/t2;->OooO0Oo(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lz2/i1;->o00oO0O:Landroid/content/res/Resources$Theme;

    iget-object p1, p1, Lz2/i1;->o00oO0O:Landroid/content/res/Resources$Theme;

    invoke-static {v0, p1}, Lz2/t2;->OooO0Oo(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lz2/i1;->OoooOoo:F

    invoke-static {v0}, Lz2/t2;->OooOO0o(F)I

    move-result v0

    iget v1, p0, Lz2/i1;->OooooOO:I

    invoke-static {v1, v0}, Lz2/t2;->OooOOOO(II)I

    move-result v0

    iget-object v1, p0, Lz2/i1;->OooooO0:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v0}, Lz2/t2;->OooOOOo(Ljava/lang/Object;I)I

    move-result v0

    iget v1, p0, Lz2/i1;->Oooooo0:I

    invoke-static {v1, v0}, Lz2/t2;->OooOOOO(II)I

    move-result v0

    iget-object v1, p0, Lz2/i1;->OooooOo:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v0}, Lz2/t2;->OooOOOo(Ljava/lang/Object;I)I

    move-result v0

    iget v1, p0, Lz2/i1;->o00Ooo:I

    invoke-static {v1, v0}, Lz2/t2;->OooOOOO(II)I

    move-result v0

    iget-object v1, p0, Lz2/i1;->o00Oo0:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v0}, Lz2/t2;->OooOOOo(Ljava/lang/Object;I)I

    move-result v0

    iget-boolean v1, p0, Lz2/i1;->Oooooo:Z

    invoke-static {v1, v0}, Lz2/t2;->OooOOo(ZI)I

    move-result v0

    iget v1, p0, Lz2/i1;->OoooooO:I

    invoke-static {v1, v0}, Lz2/t2;->OooOOOO(II)I

    move-result v0

    iget v1, p0, Lz2/i1;->Ooooooo:I

    invoke-static {v1, v0}, Lz2/t2;->OooOOOO(II)I

    move-result v0

    iget-boolean v1, p0, Lz2/i1;->ooOO:Z

    invoke-static {v1, v0}, Lz2/t2;->OooOOo(ZI)I

    move-result v0

    iget-boolean v1, p0, Lz2/i1;->o00O0O:Z

    invoke-static {v1, v0}, Lz2/t2;->OooOOo(ZI)I

    move-result v0

    iget-boolean v1, p0, Lz2/i1;->o0ooOOo:Z

    invoke-static {v1, v0}, Lz2/t2;->OooOOo(ZI)I

    move-result v0

    iget-boolean v1, p0, Lz2/i1;->o0ooOoO:Z

    invoke-static {v1, v0}, Lz2/t2;->OooOOo(ZI)I

    move-result v0

    iget-object v1, p0, Lz2/i1;->Ooooo00:Lz2/o0oo0000;

    invoke-static {v1, v0}, Lz2/t2;->OooOOOo(Ljava/lang/Object;I)I

    move-result v0

    iget-object v1, p0, Lz2/i1;->Ooooo0o:Lcom/bumptech/glide/Priority;

    invoke-static {v1, v0}, Lz2/t2;->OooOOOo(Ljava/lang/Object;I)I

    move-result v0

    iget-object v1, p0, Lz2/i1;->o00o0O:Lz2/o0O0OOO0;

    invoke-static {v1, v0}, Lz2/t2;->OooOOOo(Ljava/lang/Object;I)I

    move-result v0

    iget-object v1, p0, Lz2/i1;->o00ooo:Ljava/util/Map;

    invoke-static {v1, v0}, Lz2/t2;->OooOOOo(Ljava/lang/Object;I)I

    move-result v0

    iget-object v1, p0, Lz2/i1;->oo000o:Ljava/lang/Class;

    invoke-static {v1, v0}, Lz2/t2;->OooOOOo(Ljava/lang/Object;I)I

    move-result v0

    iget-object v1, p0, Lz2/i1;->o0OoOo0:Lz2/o0O0O0Oo;

    invoke-static {v1, v0}, Lz2/t2;->OooOOOo(Ljava/lang/Object;I)I

    move-result v0

    iget-object v1, p0, Lz2/i1;->o00oO0O:Landroid/content/res/Resources$Theme;

    invoke-static {v1, v0}, Lz2/t2;->OooOOOo(Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method public varargs o0000([Lz2/o0O0o000;)Lz2/i1;
    .locals 2
    .param p1    # [Lz2/o0O0o000;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lz2/o0O0o000<",
            "Landroid/graphics/Bitmap;",
            ">;)TT;"
        }
    .end annotation

    array-length v0, p1

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    new-instance v0, Lz2/o0O0O0o0;

    invoke-direct {v0, p1}, Lz2/o0O0O0o0;-><init>([Lz2/o0O0o000;)V

    invoke-virtual {p0, v0, v1}, Lz2/i1;->o00000o0(Lz2/o0O0o000;Z)Lz2/i1;

    move-result-object p1

    return-object p1

    :cond_0
    array-length v0, p1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-virtual {p0, p1}, Lz2/i1;->o00000Oo(Lz2/o0O0o000;)Lz2/i1;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-direct {p0}, Lz2/i1;->o000000()Lz2/i1;

    move-result-object p1

    return-object p1
.end method

.method public o00000(F)Lz2/i1;
    .locals 1
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    iget-boolean v0, p0, Lz2/i1;->o0ooOO0:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lz2/i1;->OooOOOo()Lz2/i1;

    move-result-object v0

    invoke-virtual {v0, p1}, Lz2/i1;->o00000(F)Lz2/i1;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_1

    iput p1, p0, Lz2/i1;->OoooOoo:F

    iget p1, p0, Lz2/i1;->OoooOoO:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lz2/i1;->OoooOoO:I

    invoke-direct {p0}, Lz2/i1;->o000000()Lz2/i1;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "sizeMultiplier must be between 0 and 1"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public o000000O(Lz2/o0O0OO0;Ljava/lang/Object;)Lz2/i1;
    .locals 1
    .param p1    # Lz2/o0O0OO0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y:",
            "Ljava/lang/Object;",
            ">(",
            "Lz2/o0O0OO0<",
            "TY;>;TY;)TT;"
        }
    .end annotation

    iget-boolean v0, p0, Lz2/i1;->o0ooOO0:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lz2/i1;->OooOOOo()Lz2/i1;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lz2/i1;->o000000O(Lz2/o0O0OO0;Ljava/lang/Object;)Lz2/i1;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {p1}, Lz2/r2;->OooO0Oo(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lz2/r2;->OooO0Oo(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lz2/i1;->o00o0O:Lz2/o0O0OOO0;

    invoke-virtual {v0, p1, p2}, Lz2/o0O0OOO0;->OooO0o0(Lz2/o0O0OO0;Ljava/lang/Object;)Lz2/o0O0OOO0;

    invoke-direct {p0}, Lz2/i1;->o000000()Lz2/i1;

    move-result-object p1

    return-object p1
.end method

.method public o000000o(Lz2/o0O0O0Oo;)Lz2/i1;
    .locals 1
    .param p1    # Lz2/o0O0O0Oo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/o0O0O0Oo;",
            ")TT;"
        }
    .end annotation

    iget-boolean v0, p0, Lz2/i1;->o0ooOO0:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lz2/i1;->OooOOOo()Lz2/i1;

    move-result-object v0

    invoke-virtual {v0, p1}, Lz2/i1;->o000000o(Lz2/o0O0O0Oo;)Lz2/i1;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {p1}, Lz2/r2;->OooO0Oo(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lz2/o0O0O0Oo;

    iput-object p1, p0, Lz2/i1;->o0OoOo0:Lz2/o0O0O0Oo;

    iget p1, p0, Lz2/i1;->OoooOoO:I

    or-int/lit16 p1, p1, 0x400

    iput p1, p0, Lz2/i1;->OoooOoO:I

    invoke-direct {p0}, Lz2/i1;->o000000()Lz2/i1;

    move-result-object p1

    return-object p1
.end method

.method public o00000O(Landroid/content/res/Resources$Theme;)Lz2/i1;
    .locals 1
    .param p1    # Landroid/content/res/Resources$Theme;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources$Theme;",
            ")TT;"
        }
    .end annotation

    iget-boolean v0, p0, Lz2/i1;->o0ooOO0:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lz2/i1;->OooOOOo()Lz2/i1;

    move-result-object v0

    invoke-virtual {v0, p1}, Lz2/i1;->o00000O(Landroid/content/res/Resources$Theme;)Lz2/i1;

    move-result-object p1

    return-object p1

    :cond_0
    iput-object p1, p0, Lz2/i1;->o00oO0O:Landroid/content/res/Resources$Theme;

    iget p1, p0, Lz2/i1;->OoooOoO:I

    const v0, 0x8000

    or-int/2addr p1, v0

    iput p1, p0, Lz2/i1;->OoooOoO:I

    invoke-direct {p0}, Lz2/i1;->o000000()Lz2/i1;

    move-result-object p1

    return-object p1
.end method

.method public o00000O0(Z)Lz2/i1;
    .locals 2
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    iget-boolean v0, p0, Lz2/i1;->o0ooOO0:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lz2/i1;->OooOOOo()Lz2/i1;

    move-result-object p1

    invoke-virtual {p1, v1}, Lz2/i1;->o00000O0(Z)Lz2/i1;

    move-result-object p1

    return-object p1

    :cond_0
    xor-int/2addr p1, v1

    iput-boolean p1, p0, Lz2/i1;->Oooooo:Z

    iget p1, p0, Lz2/i1;->OoooOoO:I

    or-int/lit16 p1, p1, 0x100

    iput p1, p0, Lz2/i1;->OoooOoO:I

    invoke-direct {p0}, Lz2/i1;->o000000()Lz2/i1;

    move-result-object p1

    return-object p1
.end method

.method public o00000OO(I)Lz2/i1;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    sget-object v0, Lz2/oOO0;->OooO0O0:Lz2/o0O0OO0;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lz2/i1;->o000000O(Lz2/o0O0OO0;Ljava/lang/Object;)Lz2/i1;

    move-result-object p1

    return-object p1
.end method

.method public o00000Oo(Lz2/o0O0o000;)Lz2/i1;
    .locals 1
    .param p1    # Lz2/o0O0o000;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/o0O0o000<",
            "Landroid/graphics/Bitmap;",
            ">;)TT;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lz2/i1;->o00000o0(Lz2/o0O0o000;Z)Lz2/i1;

    move-result-object p1

    return-object p1
.end method

.method public o00000o0(Lz2/o0O0o000;Z)Lz2/i1;
    .locals 2
    .param p1    # Lz2/o0O0o000;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/o0O0o000<",
            "Landroid/graphics/Bitmap;",
            ">;Z)TT;"
        }
    .end annotation

    iget-boolean v0, p0, Lz2/i1;->o0ooOO0:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lz2/i1;->OooOOOo()Lz2/i1;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lz2/i1;->o00000o0(Lz2/o0O0o000;Z)Lz2/i1;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Lz2/oOOo0000;

    invoke-direct {v0, p1, p2}, Lz2/oOOo0000;-><init>(Lz2/o0O0o000;Z)V

    const-class v1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, v1, p1, p2}, Lz2/i1;->o00000oo(Ljava/lang/Class;Lz2/o0O0o000;Z)Lz2/i1;

    const-class v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1, v0, p2}, Lz2/i1;->o00000oo(Ljava/lang/Class;Lz2/o0O0o000;Z)Lz2/i1;

    const-class v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Lz2/oOOo0000;->OooO0OO()Lz2/o0O0o000;

    move-result-object v0

    invoke-virtual {p0, v1, v0, p2}, Lz2/i1;->o00000oo(Ljava/lang/Class;Lz2/o0O0o000;Z)Lz2/i1;

    const-class v0, Lz2/r;

    new-instance v1, Lz2/u;

    invoke-direct {v1, p1}, Lz2/u;-><init>(Lz2/o0O0o000;)V

    invoke-virtual {p0, v0, v1, p2}, Lz2/i1;->o00000oo(Ljava/lang/Class;Lz2/o0O0o000;Z)Lz2/i1;

    invoke-direct {p0}, Lz2/i1;->o000000()Lz2/i1;

    move-result-object p1

    return-object p1
.end method

.method public o00000oO(Ljava/lang/Class;Lz2/o0O0o000;)Lz2/i1;
    .locals 1
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lz2/o0O0o000;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TY;>;",
            "Lz2/o0O0o000<",
            "TY;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lz2/i1;->o00000oo(Ljava/lang/Class;Lz2/o0O0o000;Z)Lz2/i1;

    move-result-object p1

    return-object p1
.end method

.method public o00000oo(Ljava/lang/Class;Lz2/o0O0o000;Z)Lz2/i1;
    .locals 1
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lz2/o0O0o000;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TY;>;",
            "Lz2/o0O0o000<",
            "TY;>;Z)TT;"
        }
    .end annotation

    iget-boolean v0, p0, Lz2/i1;->o0ooOO0:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lz2/i1;->OooOOOo()Lz2/i1;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lz2/i1;->o00000oo(Ljava/lang/Class;Lz2/o0O0o000;Z)Lz2/i1;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {p1}, Lz2/r2;->OooO0Oo(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lz2/r2;->OooO0Oo(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lz2/i1;->o00ooo:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget p1, p0, Lz2/i1;->OoooOoO:I

    or-int/lit16 p1, p1, 0x800

    iput p1, p0, Lz2/i1;->OoooOoO:I

    const/4 p2, 0x1

    iput-boolean p2, p0, Lz2/i1;->o00O0O:Z

    const/high16 v0, 0x10000

    or-int/2addr p1, v0

    iput p1, p0, Lz2/i1;->OoooOoO:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lz2/i1;->o0OOO0o:Z

    if-eqz p3, :cond_1

    const/high16 p3, 0x20000

    or-int/2addr p1, p3

    iput p1, p0, Lz2/i1;->OoooOoO:I

    iput-boolean p2, p0, Lz2/i1;->ooOO:Z

    :cond_1
    invoke-direct {p0}, Lz2/i1;->o000000()Lz2/i1;

    move-result-object p1

    return-object p1
.end method

.method public varargs o0000O00([Lz2/o0O0o000;)Lz2/i1;
    .locals 1
    .param p1    # [Lz2/o0O0o000;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lz2/o0O0o000<",
            "Landroid/graphics/Bitmap;",
            ">;)TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lz2/o0O0O0o0;

    invoke-direct {v0, p1}, Lz2/o0O0O0o0;-><init>([Lz2/o0O0o000;)V

    const/4 p1, 0x1

    invoke-virtual {p0, v0, p1}, Lz2/i1;->o00000o0(Lz2/o0O0o000;Z)Lz2/i1;

    move-result-object p1

    return-object p1
.end method

.method public final o0000Ooo(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lz2/o0O0o000;)Lz2/i1;
    .locals 1
    .param p1    # Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lz2/o0O0o000;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;",
            "Lz2/o0O0o000<",
            "Landroid/graphics/Bitmap;",
            ">;)TT;"
        }
    .end annotation

    iget-boolean v0, p0, Lz2/i1;->o0ooOO0:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lz2/i1;->OooOOOo()Lz2/i1;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lz2/i1;->o0000Ooo(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lz2/o0O0o000;)Lz2/i1;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0, p1}, Lz2/i1;->OooOo0O(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Lz2/i1;

    invoke-virtual {p0, p2}, Lz2/i1;->o00000Oo(Lz2/o0O0o000;)Lz2/i1;

    move-result-object p1

    return-object p1
.end method

.method public o0000oO(Z)Lz2/i1;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    iget-boolean v0, p0, Lz2/i1;->o0ooOO0:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lz2/i1;->OooOOOo()Lz2/i1;

    move-result-object v0

    invoke-virtual {v0, p1}, Lz2/i1;->o0000oO(Z)Lz2/i1;

    move-result-object p1

    return-object p1

    :cond_0
    iput-boolean p1, p0, Lz2/i1;->o0ooOOo:Z

    iget p1, p0, Lz2/i1;->OoooOoO:I

    const/high16 v0, 0x40000

    or-int/2addr p1, v0

    iput p1, p0, Lz2/i1;->OoooOoO:I

    invoke-direct {p0}, Lz2/i1;->o000000()Lz2/i1;

    move-result-object p1

    return-object p1
.end method

.method public o0000oo(Z)Lz2/i1;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    iget-boolean v0, p0, Lz2/i1;->o0ooOO0:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lz2/i1;->OooOOOo()Lz2/i1;

    move-result-object v0

    invoke-virtual {v0, p1}, Lz2/i1;->o0000oo(Z)Lz2/i1;

    move-result-object p1

    return-object p1

    :cond_0
    iput-boolean p1, p0, Lz2/i1;->o0Oo0oo:Z

    iget p1, p0, Lz2/i1;->OoooOoO:I

    const/high16 v0, 0x100000

    or-int/2addr p1, v0

    iput p1, p0, Lz2/i1;->OoooOoO:I

    invoke-direct {p0}, Lz2/i1;->o000000()Lz2/i1;

    move-result-object p1

    return-object p1
.end method

.method public final o000oOoO()Ljava/util/Map;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lz2/o0O0o000<",
            "*>;>;"
        }
    .end annotation

    iget-object v0, p0, Lz2/i1;->o00ooo:Ljava/util/Map;

    return-object v0
.end method

.method public o00O0O(Z)Lz2/i1;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    iget-boolean v0, p0, Lz2/i1;->o0ooOO0:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lz2/i1;->OooOOOo()Lz2/i1;

    move-result-object v0

    invoke-virtual {v0, p1}, Lz2/i1;->o00O0O(Z)Lz2/i1;

    move-result-object p1

    return-object p1

    :cond_0
    iput-boolean p1, p0, Lz2/i1;->o0ooOoO:Z

    iget p1, p0, Lz2/i1;->OoooOoO:I

    const/high16 v0, 0x80000

    or-int/2addr p1, v0

    iput p1, p0, Lz2/i1;->OoooOoO:I

    invoke-direct {p0}, Lz2/i1;->o000000()Lz2/i1;

    move-result-object p1

    return-object p1
.end method

.method public o00Oo0()Lz2/i1;
    .locals 2
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;->OooO0O0:Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;

    new-instance v1, Lz2/oOOO00o0;

    invoke-direct {v1}, Lz2/oOOO00o0;-><init>()V

    invoke-virtual {p0, v0, v1}, Lz2/i1;->o00oO0O(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lz2/o0O0o000;)Lz2/i1;

    move-result-object v0

    return-object v0
.end method

.method public o00Ooo()Lz2/i1;
    .locals 2
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;->OooO0o0:Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;

    new-instance v1, Lz2/oOOO0O0o;

    invoke-direct {v1}, Lz2/oOOO0O0o;-><init>()V

    invoke-direct {p0, v0, v1}, Lz2/i1;->oo000o(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lz2/o0O0o000;)Lz2/i1;

    move-result-object v0

    return-object v0
.end method

.method public o00o0O()Lz2/i1;
    .locals 2
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;->OooO0O0:Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;

    new-instance v1, Lz2/oOOO0OO0;

    invoke-direct {v1}, Lz2/oOOO0OO0;-><init>()V

    invoke-virtual {p0, v0, v1}, Lz2/i1;->o00oO0O(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lz2/o0O0o000;)Lz2/i1;

    move-result-object v0

    return-object v0
.end method

.method public final o00oO0O(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lz2/o0O0o000;)Lz2/i1;
    .locals 1
    .param p1    # Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lz2/o0O0o000;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;",
            "Lz2/o0O0o000<",
            "Landroid/graphics/Bitmap;",
            ">;)TT;"
        }
    .end annotation

    iget-boolean v0, p0, Lz2/i1;->o0ooOO0:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lz2/i1;->OooOOOo()Lz2/i1;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lz2/i1;->o00oO0O(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lz2/o0O0o000;)Lz2/i1;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0, p1}, Lz2/i1;->OooOo0O(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Lz2/i1;

    const/4 p1, 0x0

    invoke-virtual {p0, p2, p1}, Lz2/i1;->o00000o0(Lz2/o0O0o000;Z)Lz2/i1;

    move-result-object p1

    return-object p1
.end method

.method public o00oO0o(Lz2/o0O0o000;)Lz2/i1;
    .locals 1
    .param p1    # Lz2/o0O0o000;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/o0O0o000<",
            "Landroid/graphics/Bitmap;",
            ">;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lz2/i1;->o00000o0(Lz2/o0O0o000;Z)Lz2/i1;

    move-result-object p1

    return-object p1
.end method

.method public o00ooo()Lz2/i1;
    .locals 2
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;->OooO00o:Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;

    new-instance v1, Lz2/oOo0o00;

    invoke-direct {v1}, Lz2/oOo0o00;-><init>()V

    invoke-direct {p0, v0, v1}, Lz2/i1;->oo000o(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lz2/o0O0o000;)Lz2/i1;

    move-result-object v0

    return-object v0
.end method

.method public o0OO00O(Lcom/bumptech/glide/Priority;)Lz2/i1;
    .locals 1
    .param p1    # Lcom/bumptech/glide/Priority;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/Priority;",
            ")TT;"
        }
    .end annotation

    iget-boolean v0, p0, Lz2/i1;->o0ooOO0:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lz2/i1;->OooOOOo()Lz2/i1;

    move-result-object v0

    invoke-virtual {v0, p1}, Lz2/i1;->o0OO00O(Lcom/bumptech/glide/Priority;)Lz2/i1;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {p1}, Lz2/r2;->OooO0Oo(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/Priority;

    iput-object p1, p0, Lz2/i1;->Ooooo0o:Lcom/bumptech/glide/Priority;

    iget p1, p0, Lz2/i1;->OoooOoO:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lz2/i1;->OoooOoO:I

    invoke-direct {p0}, Lz2/i1;->o000000()Lz2/i1;

    move-result-object p1

    return-object p1
.end method

.method public o0OOO0o(I)Lz2/i1;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iget-boolean v0, p0, Lz2/i1;->o0ooOO0:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lz2/i1;->OooOOOo()Lz2/i1;

    move-result-object v0

    invoke-virtual {v0, p1}, Lz2/i1;->o0OOO0o(I)Lz2/i1;

    move-result-object p1

    return-object p1

    :cond_0
    iput p1, p0, Lz2/i1;->Oooooo0:I

    iget p1, p0, Lz2/i1;->OoooOoO:I

    or-int/lit16 p1, p1, 0x80

    iput p1, p0, Lz2/i1;->OoooOoO:I

    const/4 v0, 0x0

    iput-object v0, p0, Lz2/i1;->OooooOo:Landroid/graphics/drawable/Drawable;

    and-int/lit8 p1, p1, -0x41

    iput p1, p0, Lz2/i1;->OoooOoO:I

    invoke-direct {p0}, Lz2/i1;->o000000()Lz2/i1;

    move-result-object p1

    return-object p1
.end method

.method public o0Oo0oo(Landroid/graphics/drawable/Drawable;)Lz2/i1;
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            ")TT;"
        }
    .end annotation

    iget-boolean v0, p0, Lz2/i1;->o0ooOO0:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lz2/i1;->OooOOOo()Lz2/i1;

    move-result-object v0

    invoke-virtual {v0, p1}, Lz2/i1;->o0Oo0oo(Landroid/graphics/drawable/Drawable;)Lz2/i1;

    move-result-object p1

    return-object p1

    :cond_0
    iput-object p1, p0, Lz2/i1;->OooooOo:Landroid/graphics/drawable/Drawable;

    iget p1, p0, Lz2/i1;->OoooOoO:I

    or-int/lit8 p1, p1, 0x40

    iput p1, p0, Lz2/i1;->OoooOoO:I

    const/4 v0, 0x0

    iput v0, p0, Lz2/i1;->Oooooo0:I

    and-int/lit16 p1, p1, -0x81

    iput p1, p0, Lz2/i1;->OoooOoO:I

    invoke-direct {p0}, Lz2/i1;->o000000()Lz2/i1;

    move-result-object p1

    return-object p1
.end method

.method public final o0OoOo0()Z
    .locals 2

    iget v0, p0, Lz2/i1;->Ooooooo:I

    iget v1, p0, Lz2/i1;->OoooooO:I

    invoke-static {v0, v1}, Lz2/t2;->OooOo0O(II)Z

    move-result v0

    return v0
.end method

.method public o0ooOO0(Ljava/lang/Class;Lz2/o0O0o000;)Lz2/i1;
    .locals 1
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lz2/o0O0o000;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TY;>;",
            "Lz2/o0O0o000<",
            "TY;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lz2/i1;->o00000oo(Ljava/lang/Class;Lz2/o0O0o000;Z)Lz2/i1;

    move-result-object p1

    return-object p1
.end method

.method public o0ooOOo(I)Lz2/i1;
    .locals 0
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    invoke-virtual {p0, p1, p1}, Lz2/i1;->o0ooOoO(II)Lz2/i1;

    move-result-object p1

    return-object p1
.end method

.method public o0ooOoO(II)Lz2/i1;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)TT;"
        }
    .end annotation

    iget-boolean v0, p0, Lz2/i1;->o0ooOO0:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lz2/i1;->OooOOOo()Lz2/i1;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lz2/i1;->o0ooOoO(II)Lz2/i1;

    move-result-object p1

    return-object p1

    :cond_0
    iput p1, p0, Lz2/i1;->Ooooooo:I

    iput p2, p0, Lz2/i1;->OoooooO:I

    iget p1, p0, Lz2/i1;->OoooOoO:I

    or-int/lit16 p1, p1, 0x200

    iput p1, p0, Lz2/i1;->OoooOoO:I

    invoke-direct {p0}, Lz2/i1;->o000000()Lz2/i1;

    move-result-object p1

    return-object p1
.end method

.method public ooOO()Lz2/i1;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lz2/i1;->o00oO0o:Z

    invoke-direct {p0}, Lz2/i1;->o000OOo()Lz2/i1;

    move-result-object v0

    return-object v0
.end method
