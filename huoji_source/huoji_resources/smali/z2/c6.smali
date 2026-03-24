.class public final Lz2/c6;
.super Lz2/p1;
.source ""

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static o0000Oo:Lz2/c6;

.field private static o0000OoO:Lz2/c6;

.field private static o0000o:Lz2/c6;

.field private static o0000o0:Lz2/c6;

.field private static o0000o0O:Lz2/c6;

.field private static o0000o0o:Lz2/c6;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lz2/p1;-><init>()V

    return-void
.end method

.method public static o00(I)Lz2/c6;
    .locals 1
    .param p0    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lz2/c6;

    invoke-direct {v0}, Lz2/c6;-><init>()V

    invoke-virtual {v0, p0}, Lz2/c6;->o000oooO(I)Lz2/c6;

    move-result-object p0

    return-object p0
.end method

.method public static o000O00O(Lz2/o0O0o000;)Lz2/c6;
    .locals 1
    .param p0    # Lz2/o0O0o000;
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
            ">;)",
            "Lz2/c6;"
        }
    .end annotation

    new-instance v0, Lz2/c6;

    invoke-direct {v0}, Lz2/c6;-><init>()V

    invoke-virtual {v0, p0}, Lz2/c6;->oo00o(Lz2/o0O0o000;)Lz2/c6;

    move-result-object p0

    return-object p0
.end method

.method public static o000O0O0()Lz2/c6;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object v0, Lz2/c6;->o0000OoO:Lz2/c6;

    if-nez v0, :cond_0

    new-instance v0, Lz2/c6;

    invoke-direct {v0}, Lz2/c6;-><init>()V

    invoke-virtual {v0}, Lz2/c6;->o000OO0O()Lz2/c6;

    move-result-object v0

    invoke-virtual {v0}, Lz2/c6;->o000O00()Lz2/c6;

    move-result-object v0

    sput-object v0, Lz2/c6;->o0000OoO:Lz2/c6;

    :cond_0
    sget-object v0, Lz2/c6;->o0000OoO:Lz2/c6;

    return-object v0
.end method

.method public static o000O0Oo()Lz2/c6;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object v0, Lz2/c6;->o0000o0:Lz2/c6;

    if-nez v0, :cond_0

    new-instance v0, Lz2/c6;

    invoke-direct {v0}, Lz2/c6;-><init>()V

    invoke-virtual {v0}, Lz2/c6;->o000O0()Lz2/c6;

    move-result-object v0

    invoke-virtual {v0}, Lz2/c6;->o000O00()Lz2/c6;

    move-result-object v0

    sput-object v0, Lz2/c6;->o0000o0:Lz2/c6;

    :cond_0
    sget-object v0, Lz2/c6;->o0000o0:Lz2/c6;

    return-object v0
.end method

.method public static o000O0oO()Lz2/c6;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object v0, Lz2/c6;->o0000o0O:Lz2/c6;

    if-nez v0, :cond_0

    new-instance v0, Lz2/c6;

    invoke-direct {v0}, Lz2/c6;-><init>()V

    invoke-virtual {v0}, Lz2/c6;->o000O0o0()Lz2/c6;

    move-result-object v0

    invoke-virtual {v0}, Lz2/c6;->o000O00()Lz2/c6;

    move-result-object v0

    sput-object v0, Lz2/c6;->o0000o0O:Lz2/c6;

    :cond_0
    sget-object v0, Lz2/c6;->o0000o0O:Lz2/c6;

    return-object v0
.end method

.method public static o000OO00(Ljava/lang/Class;)Lz2/c6;
    .locals 1
    .param p0    # Ljava/lang/Class;
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
            "*>;)",
            "Lz2/c6;"
        }
    .end annotation

    new-instance v0, Lz2/c6;

    invoke-direct {v0}, Lz2/c6;-><init>()V

    invoke-virtual {v0, p0}, Lz2/c6;->o000O(Ljava/lang/Class;)Lz2/c6;

    move-result-object p0

    return-object p0
.end method

.method public static o000OOO(Lz2/o0oo0000;)Lz2/c6;
    .locals 1
    .param p0    # Lz2/o0oo0000;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lz2/c6;

    invoke-direct {v0}, Lz2/c6;-><init>()V

    invoke-virtual {v0, p0}, Lz2/c6;->o000OO0o(Lz2/o0oo0000;)Lz2/c6;

    move-result-object p0

    return-object p0
.end method

.method public static o000Oo(Landroid/graphics/Bitmap$CompressFormat;)Lz2/c6;
    .locals 1
    .param p0    # Landroid/graphics/Bitmap$CompressFormat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lz2/c6;

    invoke-direct {v0}, Lz2/c6;-><init>()V

    invoke-virtual {v0, p0}, Lz2/c6;->o000Oo0o(Landroid/graphics/Bitmap$CompressFormat;)Lz2/c6;

    move-result-object p0

    return-object p0
.end method

.method public static o000Oo0O(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Lz2/c6;
    .locals 1
    .param p0    # Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lz2/c6;

    invoke-direct {v0}, Lz2/c6;-><init>()V

    invoke-virtual {v0, p0}, Lz2/c6;->o000Oo00(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Lz2/c6;

    move-result-object p0

    return-object p0
.end method

.method public static o000OoOo(I)Lz2/c6;
    .locals 1
    .param p0    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
            to = 0x64L
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lz2/c6;

    invoke-direct {v0}, Lz2/c6;-><init>()V

    invoke-virtual {v0, p0}, Lz2/c6;->o000OoOO(I)Lz2/c6;

    move-result-object p0

    return-object p0
.end method

.method public static o000Oooo(I)Lz2/c6;
    .locals 1
    .param p0    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lz2/c6;

    invoke-direct {v0}, Lz2/c6;-><init>()V

    invoke-virtual {v0, p0}, Lz2/c6;->o000Ooo0(I)Lz2/c6;

    move-result-object p0

    return-object p0
.end method

.method public static o000o000(Landroid/graphics/drawable/Drawable;)Lz2/c6;
    .locals 1
    .param p0    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lz2/c6;

    invoke-direct {v0}, Lz2/c6;-><init>()V

    invoke-virtual {v0, p0}, Lz2/c6;->o000OooO(Landroid/graphics/drawable/Drawable;)Lz2/c6;

    move-result-object p0

    return-object p0
.end method

.method public static o000o0O(Lcom/bumptech/glide/load/DecodeFormat;)Lz2/c6;
    .locals 1
    .param p0    # Lcom/bumptech/glide/load/DecodeFormat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lz2/c6;

    invoke-direct {v0}, Lz2/c6;-><init>()V

    invoke-virtual {v0, p0}, Lz2/c6;->o000o0O0(Lcom/bumptech/glide/load/DecodeFormat;)Lz2/c6;

    move-result-object p0

    return-object p0
.end method

.method public static o000o0Oo(J)Lz2/c6;
    .locals 1
    .param p0    # J
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lz2/c6;

    invoke-direct {v0}, Lz2/c6;-><init>()V

    invoke-virtual {v0, p0, p1}, Lz2/c6;->o000o0OO(J)Lz2/c6;

    move-result-object p0

    return-object p0
.end method

.method public static o000o0o()Lz2/c6;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object v0, Lz2/c6;->o0000o:Lz2/c6;

    if-nez v0, :cond_0

    new-instance v0, Lz2/c6;

    invoke-direct {v0}, Lz2/c6;-><init>()V

    invoke-virtual {v0}, Lz2/c6;->o000OOo0()Lz2/c6;

    move-result-object v0

    invoke-virtual {v0}, Lz2/c6;->o000O00()Lz2/c6;

    move-result-object v0

    sput-object v0, Lz2/c6;->o0000o:Lz2/c6;

    :cond_0
    sget-object v0, Lz2/c6;->o0000o:Lz2/c6;

    return-object v0
.end method

.method public static o000o0oO()Lz2/c6;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object v0, Lz2/c6;->o0000o0o:Lz2/c6;

    if-nez v0, :cond_0

    new-instance v0, Lz2/c6;

    invoke-direct {v0}, Lz2/c6;-><init>()V

    invoke-virtual {v0}, Lz2/c6;->o000OOoO()Lz2/c6;

    move-result-object v0

    invoke-virtual {v0}, Lz2/c6;->o000O00()Lz2/c6;

    move-result-object v0

    sput-object v0, Lz2/c6;->o0000o0o:Lz2/c6;

    :cond_0
    sget-object v0, Lz2/c6;->o0000o0o:Lz2/c6;

    return-object v0
.end method

.method public static o000oOoo(Lz2/o0O0OO0;Ljava/lang/Object;)Lz2/c6;
    .locals 1
    .param p0    # Lz2/o0O0OO0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lz2/o0O0OO0<",
            "TT;>;TT;)",
            "Lz2/c6;"
        }
    .end annotation

    new-instance v0, Lz2/c6;

    invoke-direct {v0}, Lz2/c6;-><init>()V

    invoke-virtual {v0, p0, p1}, Lz2/c6;->o00O000(Lz2/o0O0OO0;Ljava/lang/Object;)Lz2/c6;

    move-result-object p0

    return-object p0
.end method

.method public static o000ooo(II)Lz2/c6;
    .locals 1
    .param p0    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lz2/c6;

    invoke-direct {v0}, Lz2/c6;-><init>()V

    invoke-virtual {v0, p0, p1}, Lz2/c6;->o000ooOO(II)Lz2/c6;

    move-result-object p0

    return-object p0
.end method

.method public static o000ooo0(I)Lz2/c6;
    .locals 1
    .param p0    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lz2/c6;

    invoke-direct {v0}, Lz2/c6;-><init>()V

    invoke-virtual {v0, p0}, Lz2/c6;->o000ooO(I)Lz2/c6;

    move-result-object p0

    return-object p0
.end method

.method public static o00O00(Lz2/o0O0O0Oo;)Lz2/c6;
    .locals 1
    .param p0    # Lz2/o0O0O0Oo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lz2/c6;

    invoke-direct {v0}, Lz2/c6;-><init>()V

    invoke-virtual {v0, p0}, Lz2/c6;->o00O000o(Lz2/o0O0O0Oo;)Lz2/c6;

    move-result-object p0

    return-object p0
.end method

.method public static o00O0000(Landroid/graphics/drawable/Drawable;)Lz2/c6;
    .locals 1
    .param p0    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lz2/c6;

    invoke-direct {v0}, Lz2/c6;-><init>()V

    invoke-virtual {v0, p0}, Lz2/c6;->o000oooo(Landroid/graphics/drawable/Drawable;)Lz2/c6;

    move-result-object p0

    return-object p0
.end method

.method public static o00O00Oo(Z)Lz2/c6;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lz2/c6;

    invoke-direct {v0}, Lz2/c6;-><init>()V

    invoke-virtual {v0, p0}, Lz2/c6;->o00O00OO(Z)Lz2/c6;

    move-result-object p0

    return-object p0
.end method

.method public static o00O00oO(I)Lz2/c6;
    .locals 1
    .param p0    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lz2/c6;

    invoke-direct {v0}, Lz2/c6;-><init>()V

    invoke-virtual {v0, p0}, Lz2/c6;->o00O00o(I)Lz2/c6;

    move-result-object p0

    return-object p0
.end method

.method public static o00oOoo(Lcom/bumptech/glide/Priority;)Lz2/c6;
    .locals 1
    .param p0    # Lcom/bumptech/glide/Priority;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lz2/c6;

    invoke-direct {v0}, Lz2/c6;-><init>()V

    invoke-virtual {v0, p0}, Lz2/c6;->o0O0ooO(Lcom/bumptech/glide/Priority;)Lz2/c6;

    move-result-object p0

    return-object p0
.end method

.method public static oOO00O(F)Lz2/c6;
    .locals 1
    .param p0    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lz2/c6;

    invoke-direct {v0}, Lz2/c6;-><init>()V

    invoke-virtual {v0, p0}, Lz2/c6;->o00O00O(F)Lz2/c6;

    move-result-object p0

    return-object p0
.end method

.method public static oooo00o()Lz2/c6;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object v0, Lz2/c6;->o0000Oo:Lz2/c6;

    if-nez v0, :cond_0

    new-instance v0, Lz2/c6;

    invoke-direct {v0}, Lz2/c6;-><init>()V

    invoke-virtual {v0}, Lz2/c6;->o000o00o()Lz2/c6;

    move-result-object v0

    invoke-virtual {v0}, Lz2/c6;->o000O00()Lz2/c6;

    move-result-object v0

    sput-object v0, Lz2/c6;->o0000Oo:Lz2/c6;

    :cond_0
    sget-object v0, Lz2/c6;->o0000Oo:Lz2/c6;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic OooOO0O(Lz2/i1;)Lz2/i1;
    .locals 0
    .param p1    # Lz2/i1;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lz2/c6;->o000Oo0(Lz2/i1;)Lz2/c6;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic OooOO0o()Lz2/i1;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Lz2/c6;->o000O00()Lz2/c6;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic OooOOO()Lz2/i1;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Lz2/c6;->o000OO0O()Lz2/c6;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic OooOOO0()Lz2/i1;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Lz2/c6;->o000O0()Lz2/c6;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic OooOOOO()Lz2/i1;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Lz2/c6;->o000O0o0()Lz2/c6;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic OooOOOo()Lz2/i1;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    invoke-virtual {p0}, Lz2/c6;->o000O0oo()Lz2/c6;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic OooOOo()Lz2/i1;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Lz2/c6;->o0OoO0o()Lz2/c6;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic OooOOo0(Ljava/lang/Class;)Lz2/i1;
    .locals 0
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lz2/c6;->o000O(Ljava/lang/Class;)Lz2/c6;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic OooOOoo(Lz2/o0oo0000;)Lz2/i1;
    .locals 0
    .param p1    # Lz2/o0oo0000;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lz2/c6;->o000OO0o(Lz2/o0oo0000;)Lz2/c6;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic OooOo(I)Lz2/i1;
    .locals 0
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

    invoke-virtual {p0, p1}, Lz2/c6;->o000OoOO(I)Lz2/c6;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic OooOo0()Lz2/i1;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Lz2/c6;->o000OOoO()Lz2/c6;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic OooOo00()Lz2/i1;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Lz2/c6;->o000OOo0()Lz2/c6;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic OooOo0O(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Lz2/i1;
    .locals 0
    .param p1    # Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lz2/c6;->o000Oo00(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Lz2/c6;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic OooOo0o(Landroid/graphics/Bitmap$CompressFormat;)Lz2/i1;
    .locals 0
    .param p1    # Landroid/graphics/Bitmap$CompressFormat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lz2/c6;->o000Oo0o(Landroid/graphics/Bitmap$CompressFormat;)Lz2/c6;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic OooOoO(Landroid/graphics/drawable/Drawable;)Lz2/i1;
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lz2/c6;->o000OooO(Landroid/graphics/drawable/Drawable;)Lz2/c6;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic OooOoO0(I)Lz2/i1;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lz2/c6;->o000Ooo0(I)Lz2/c6;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic OooOoOO(I)Lz2/i1;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lz2/c6;->o000o00(I)Lz2/c6;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic OooOoo()Lz2/i1;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Lz2/c6;->o000o00o()Lz2/c6;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic OooOoo0(Landroid/graphics/drawable/Drawable;)Lz2/i1;
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lz2/c6;->o000o00O(Landroid/graphics/drawable/Drawable;)Lz2/c6;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic OooOooO(Lcom/bumptech/glide/load/DecodeFormat;)Lz2/i1;
    .locals 0
    .param p1    # Lcom/bumptech/glide/load/DecodeFormat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lz2/c6;->o000o0O0(Lcom/bumptech/glide/load/DecodeFormat;)Lz2/c6;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic OooOooo(J)Lz2/i1;
    .locals 0
    .param p1    # J
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lz2/c6;->o000o0OO(J)Lz2/c6;

    move-result-object p1

    return-object p1
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

    invoke-virtual {p0}, Lz2/c6;->o000O0oo()Lz2/c6;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic o0000([Lz2/o0O0o000;)Lz2/i1;
    .locals 0
    .param p1    # [Lz2/o0O0o000;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    invoke-virtual {p0, p1}, Lz2/c6;->o00O0O00([Lz2/o0O0o000;)Lz2/c6;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic o00000(F)Lz2/i1;
    .locals 0
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

    invoke-virtual {p0, p1}, Lz2/c6;->o00O00O(F)Lz2/c6;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic o000000O(Lz2/o0O0OO0;Ljava/lang/Object;)Lz2/i1;
    .locals 0
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

    invoke-virtual {p0, p1, p2}, Lz2/c6;->o00O000(Lz2/o0O0OO0;Ljava/lang/Object;)Lz2/c6;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic o000000o(Lz2/o0O0O0Oo;)Lz2/i1;
    .locals 0
    .param p1    # Lz2/o0O0O0Oo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lz2/c6;->o00O000o(Lz2/o0O0O0Oo;)Lz2/c6;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic o00000O(Landroid/content/res/Resources$Theme;)Lz2/i1;
    .locals 0
    .param p1    # Landroid/content/res/Resources$Theme;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lz2/c6;->o00O00o0(Landroid/content/res/Resources$Theme;)Lz2/c6;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic o00000O0(Z)Lz2/i1;
    .locals 0
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lz2/c6;->o00O00OO(Z)Lz2/c6;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic o00000OO(I)Lz2/i1;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lz2/c6;->o00O00o(I)Lz2/c6;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic o00000Oo(Lz2/o0O0o000;)Lz2/i1;
    .locals 0
    .param p1    # Lz2/o0O0o000;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lz2/c6;->oo00o(Lz2/o0O0o000;)Lz2/c6;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic o00000oO(Ljava/lang/Class;Lz2/o0O0o000;)Lz2/i1;
    .locals 0
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

    invoke-virtual {p0, p1, p2}, Lz2/c6;->o00O0(Ljava/lang/Class;Lz2/o0O0o000;)Lz2/c6;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic o0000O00([Lz2/o0O0o000;)Lz2/i1;
    .locals 0
    .param p1    # [Lz2/o0O0o000;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    invoke-virtual {p0, p1}, Lz2/c6;->o00O0O0([Lz2/o0O0o000;)Lz2/c6;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic o0000oO(Z)Lz2/i1;
    .locals 0
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lz2/c6;->o00O0O0o(Z)Lz2/c6;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic o0000oo(Z)Lz2/i1;
    .locals 0
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lz2/c6;->o00O0O0O(Z)Lz2/c6;

    move-result-object p1

    return-object p1
.end method

.method public o000O(Ljava/lang/Class;)Lz2/c6;
    .locals 0
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
            "*>;)",
            "Lz2/c6;"
        }
    .end annotation

    invoke-super {p0, p1}, Lz2/i1;->OooOOo0(Ljava/lang/Class;)Lz2/i1;

    move-result-object p1

    check-cast p1, Lz2/c6;

    return-object p1
.end method

.method public o000O0()Lz2/c6;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-super {p0}, Lz2/i1;->OooOOO0()Lz2/i1;

    move-result-object v0

    check-cast v0, Lz2/c6;

    return-object v0
.end method

.method public o000O00()Lz2/c6;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-super {p0}, Lz2/i1;->OooOO0o()Lz2/i1;

    move-result-object v0

    check-cast v0, Lz2/c6;

    return-object v0
.end method

.method public o000O0o0()Lz2/c6;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-super {p0}, Lz2/i1;->OooOOOO()Lz2/i1;

    move-result-object v0

    check-cast v0, Lz2/c6;

    return-object v0
.end method

.method public o000O0oo()Lz2/c6;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    invoke-super {p0}, Lz2/i1;->OooOOOo()Lz2/i1;

    move-result-object v0

    check-cast v0, Lz2/c6;

    return-object v0
.end method

.method public o000OO0O()Lz2/c6;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-super {p0}, Lz2/i1;->OooOOO()Lz2/i1;

    move-result-object v0

    check-cast v0, Lz2/c6;

    return-object v0
.end method

.method public o000OO0o(Lz2/o0oo0000;)Lz2/c6;
    .locals 0
    .param p1    # Lz2/o0oo0000;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-super {p0, p1}, Lz2/i1;->OooOOoo(Lz2/o0oo0000;)Lz2/i1;

    move-result-object p1

    check-cast p1, Lz2/c6;

    return-object p1
.end method

.method public o000OOo0()Lz2/c6;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-super {p0}, Lz2/i1;->OooOo00()Lz2/i1;

    move-result-object v0

    check-cast v0, Lz2/c6;

    return-object v0
.end method

.method public o000OOoO()Lz2/c6;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-super {p0}, Lz2/i1;->OooOo0()Lz2/i1;

    move-result-object v0

    check-cast v0, Lz2/c6;

    return-object v0
.end method

.method public o000Oo0(Lz2/i1;)Lz2/c6;
    .locals 0
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
            "*>;)",
            "Lz2/c6;"
        }
    .end annotation

    invoke-super {p0, p1}, Lz2/i1;->OooOO0O(Lz2/i1;)Lz2/i1;

    move-result-object p1

    check-cast p1, Lz2/c6;

    return-object p1
.end method

.method public o000Oo00(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Lz2/c6;
    .locals 0
    .param p1    # Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-super {p0, p1}, Lz2/i1;->OooOo0O(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Lz2/i1;

    move-result-object p1

    check-cast p1, Lz2/c6;

    return-object p1
.end method

.method public o000Oo0o(Landroid/graphics/Bitmap$CompressFormat;)Lz2/c6;
    .locals 0
    .param p1    # Landroid/graphics/Bitmap$CompressFormat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-super {p0, p1}, Lz2/i1;->OooOo0o(Landroid/graphics/Bitmap$CompressFormat;)Lz2/i1;

    move-result-object p1

    check-cast p1, Lz2/c6;

    return-object p1
.end method

.method public o000OoOO(I)Lz2/c6;
    .locals 0
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

    invoke-super {p0, p1}, Lz2/i1;->OooOo(I)Lz2/i1;

    move-result-object p1

    check-cast p1, Lz2/c6;

    return-object p1
.end method

.method public o000Ooo0(I)Lz2/c6;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-super {p0, p1}, Lz2/i1;->OooOoO0(I)Lz2/i1;

    move-result-object p1

    check-cast p1, Lz2/c6;

    return-object p1
.end method

.method public o000OooO(Landroid/graphics/drawable/Drawable;)Lz2/c6;
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-super {p0, p1}, Lz2/i1;->OooOoO(Landroid/graphics/drawable/Drawable;)Lz2/i1;

    move-result-object p1

    check-cast p1, Lz2/c6;

    return-object p1
.end method

.method public o000o00(I)Lz2/c6;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-super {p0, p1}, Lz2/i1;->OooOoOO(I)Lz2/i1;

    move-result-object p1

    check-cast p1, Lz2/c6;

    return-object p1
.end method

.method public o000o00O(Landroid/graphics/drawable/Drawable;)Lz2/c6;
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-super {p0, p1}, Lz2/i1;->OooOoo0(Landroid/graphics/drawable/Drawable;)Lz2/i1;

    move-result-object p1

    check-cast p1, Lz2/c6;

    return-object p1
.end method

.method public o000o00o()Lz2/c6;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-super {p0}, Lz2/i1;->OooOoo()Lz2/i1;

    move-result-object v0

    check-cast v0, Lz2/c6;

    return-object v0
.end method

.method public o000o0O0(Lcom/bumptech/glide/load/DecodeFormat;)Lz2/c6;
    .locals 0
    .param p1    # Lcom/bumptech/glide/load/DecodeFormat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-super {p0, p1}, Lz2/i1;->OooOooO(Lcom/bumptech/glide/load/DecodeFormat;)Lz2/i1;

    move-result-object p1

    check-cast p1, Lz2/c6;

    return-object p1
.end method

.method public o000o0OO(J)Lz2/c6;
    .locals 0
    .param p1    # J
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-super {p0, p1, p2}, Lz2/i1;->OooOooo(J)Lz2/i1;

    move-result-object p1

    check-cast p1, Lz2/c6;

    return-object p1
.end method

.method public o000o0o0()Lz2/c6;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-super {p0}, Lz2/i1;->ooOO()Lz2/i1;

    move-result-object v0

    check-cast v0, Lz2/c6;

    return-object v0
.end method

.method public o000o0oo(Z)Lz2/c6;
    .locals 0
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-super {p0, p1}, Lz2/i1;->o00O0O(Z)Lz2/i1;

    move-result-object p1

    check-cast p1, Lz2/c6;

    return-object p1
.end method

.method public o000oo(Lz2/o0O0o000;)Lz2/c6;
    .locals 0
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
            ">;)",
            "Lz2/c6;"
        }
    .end annotation

    invoke-super {p0, p1}, Lz2/i1;->o00oO0o(Lz2/o0O0o000;)Lz2/i1;

    move-result-object p1

    check-cast p1, Lz2/c6;

    return-object p1
.end method

.method public o000oo0()Lz2/c6;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-super {p0}, Lz2/i1;->o00Ooo()Lz2/i1;

    move-result-object v0

    check-cast v0, Lz2/c6;

    return-object v0
.end method

.method public o000oo00()Lz2/c6;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-super {p0}, Lz2/i1;->o00Oo0()Lz2/i1;

    move-result-object v0

    check-cast v0, Lz2/c6;

    return-object v0
.end method

.method public o000oo0O()Lz2/c6;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-super {p0}, Lz2/i1;->o00o0O()Lz2/i1;

    move-result-object v0

    check-cast v0, Lz2/c6;

    return-object v0
.end method

.method public o000oo0o()Lz2/c6;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-super {p0}, Lz2/i1;->o00ooo()Lz2/i1;

    move-result-object v0

    check-cast v0, Lz2/c6;

    return-object v0
.end method

.method public o000ooO(I)Lz2/c6;
    .locals 0
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-super {p0, p1}, Lz2/i1;->o0ooOOo(I)Lz2/i1;

    move-result-object p1

    check-cast p1, Lz2/c6;

    return-object p1
.end method

.method public o000ooO0(Ljava/lang/Class;Lz2/o0O0o000;)Lz2/c6;
    .locals 0
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
            "TY;>;)",
            "Lz2/c6;"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lz2/i1;->o0ooOO0(Ljava/lang/Class;Lz2/o0O0o000;)Lz2/i1;

    move-result-object p1

    check-cast p1, Lz2/c6;

    return-object p1
.end method

.method public o000ooOO(II)Lz2/c6;
    .locals 0
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-super {p0, p1, p2}, Lz2/i1;->o0ooOoO(II)Lz2/i1;

    move-result-object p1

    check-cast p1, Lz2/c6;

    return-object p1
.end method

.method public o000oooO(I)Lz2/c6;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-super {p0, p1}, Lz2/i1;->o0OOO0o(I)Lz2/i1;

    move-result-object p1

    check-cast p1, Lz2/c6;

    return-object p1
.end method

.method public o000oooo(Landroid/graphics/drawable/Drawable;)Lz2/c6;
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-super {p0, p1}, Lz2/i1;->o0Oo0oo(Landroid/graphics/drawable/Drawable;)Lz2/i1;

    move-result-object p1

    check-cast p1, Lz2/c6;

    return-object p1
.end method

.method public o00O0(Ljava/lang/Class;Lz2/o0O0o000;)Lz2/c6;
    .locals 0
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
            "TY;>;)",
            "Lz2/c6;"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lz2/i1;->o00000oO(Ljava/lang/Class;Lz2/o0O0o000;)Lz2/i1;

    move-result-object p1

    check-cast p1, Lz2/c6;

    return-object p1
.end method

.method public o00O000(Lz2/o0O0OO0;Ljava/lang/Object;)Lz2/c6;
    .locals 0
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
            "TY;>;TY;)",
            "Lz2/c6;"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lz2/i1;->o000000O(Lz2/o0O0OO0;Ljava/lang/Object;)Lz2/i1;

    move-result-object p1

    check-cast p1, Lz2/c6;

    return-object p1
.end method

.method public o00O000o(Lz2/o0O0O0Oo;)Lz2/c6;
    .locals 0
    .param p1    # Lz2/o0O0O0Oo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-super {p0, p1}, Lz2/i1;->o000000o(Lz2/o0O0O0Oo;)Lz2/i1;

    move-result-object p1

    check-cast p1, Lz2/c6;

    return-object p1
.end method

.method public o00O00O(F)Lz2/c6;
    .locals 0
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

    invoke-super {p0, p1}, Lz2/i1;->o00000(F)Lz2/i1;

    move-result-object p1

    check-cast p1, Lz2/c6;

    return-object p1
.end method

.method public o00O00OO(Z)Lz2/c6;
    .locals 0
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-super {p0, p1}, Lz2/i1;->o00000O0(Z)Lz2/i1;

    move-result-object p1

    check-cast p1, Lz2/c6;

    return-object p1
.end method

.method public o00O00o(I)Lz2/c6;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-super {p0, p1}, Lz2/i1;->o00000OO(I)Lz2/i1;

    move-result-object p1

    check-cast p1, Lz2/c6;

    return-object p1
.end method

.method public o00O00o0(Landroid/content/res/Resources$Theme;)Lz2/c6;
    .locals 0
    .param p1    # Landroid/content/res/Resources$Theme;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-super {p0, p1}, Lz2/i1;->o00000O(Landroid/content/res/Resources$Theme;)Lz2/i1;

    move-result-object p1

    check-cast p1, Lz2/c6;

    return-object p1
.end method

.method public bridge synthetic o00O0O(Z)Lz2/i1;
    .locals 0
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lz2/c6;->o000o0oo(Z)Lz2/c6;

    move-result-object p1

    return-object p1
.end method

.method public final varargs o00O0O0([Lz2/o0O0o000;)Lz2/c6;
    .locals 0
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
            ">;)",
            "Lz2/c6;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    invoke-super {p0, p1}, Lz2/i1;->o0000O00([Lz2/o0O0o000;)Lz2/i1;

    move-result-object p1

    check-cast p1, Lz2/c6;

    return-object p1
.end method

.method public final varargs o00O0O00([Lz2/o0O0o000;)Lz2/c6;
    .locals 0
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
            ">;)",
            "Lz2/c6;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    invoke-super {p0, p1}, Lz2/i1;->o0000([Lz2/o0O0o000;)Lz2/i1;

    move-result-object p1

    check-cast p1, Lz2/c6;

    return-object p1
.end method

.method public o00O0O0O(Z)Lz2/c6;
    .locals 0
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-super {p0, p1}, Lz2/i1;->o0000oo(Z)Lz2/i1;

    move-result-object p1

    check-cast p1, Lz2/c6;

    return-object p1
.end method

.method public o00O0O0o(Z)Lz2/c6;
    .locals 0
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-super {p0, p1}, Lz2/i1;->o0000oO(Z)Lz2/i1;

    move-result-object p1

    check-cast p1, Lz2/c6;

    return-object p1
.end method

.method public bridge synthetic o00Oo0()Lz2/i1;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Lz2/c6;->o000oo00()Lz2/c6;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic o00Ooo()Lz2/i1;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Lz2/c6;->o000oo0()Lz2/c6;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic o00o0O()Lz2/i1;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Lz2/c6;->o000oo0O()Lz2/c6;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic o00oO0o(Lz2/o0O0o000;)Lz2/i1;
    .locals 0
    .param p1    # Lz2/o0O0o000;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lz2/c6;->o000oo(Lz2/o0O0o000;)Lz2/c6;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic o00ooo()Lz2/i1;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Lz2/c6;->o000oo0o()Lz2/c6;

    move-result-object v0

    return-object v0
.end method

.method public o0O0ooO(Lcom/bumptech/glide/Priority;)Lz2/c6;
    .locals 0
    .param p1    # Lcom/bumptech/glide/Priority;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-super {p0, p1}, Lz2/i1;->o0OO00O(Lcom/bumptech/glide/Priority;)Lz2/i1;

    move-result-object p1

    check-cast p1, Lz2/c6;

    return-object p1
.end method

.method public bridge synthetic o0OO00O(Lcom/bumptech/glide/Priority;)Lz2/i1;
    .locals 0
    .param p1    # Lcom/bumptech/glide/Priority;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lz2/c6;->o0O0ooO(Lcom/bumptech/glide/Priority;)Lz2/c6;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic o0OOO0o(I)Lz2/i1;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lz2/c6;->o000oooO(I)Lz2/c6;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic o0Oo0oo(Landroid/graphics/drawable/Drawable;)Lz2/i1;
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lz2/c6;->o000oooo(Landroid/graphics/drawable/Drawable;)Lz2/c6;

    move-result-object p1

    return-object p1
.end method

.method public o0OoO0o()Lz2/c6;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-super {p0}, Lz2/i1;->OooOOo()Lz2/i1;

    move-result-object v0

    check-cast v0, Lz2/c6;

    return-object v0
.end method

.method public bridge synthetic o0ooOO0(Ljava/lang/Class;Lz2/o0O0o000;)Lz2/i1;
    .locals 0
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

    invoke-virtual {p0, p1, p2}, Lz2/c6;->o000ooO0(Ljava/lang/Class;Lz2/o0O0o000;)Lz2/c6;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic o0ooOOo(I)Lz2/i1;
    .locals 0
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lz2/c6;->o000ooO(I)Lz2/c6;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic o0ooOoO(II)Lz2/i1;
    .locals 0
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lz2/c6;->o000ooOO(II)Lz2/c6;

    move-result-object p1

    return-object p1
.end method

.method public oo00o(Lz2/o0O0o000;)Lz2/c6;
    .locals 0
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
            ">;)",
            "Lz2/c6;"
        }
    .end annotation

    invoke-super {p0, p1}, Lz2/i1;->o00000Oo(Lz2/o0O0o000;)Lz2/i1;

    move-result-object p1

    check-cast p1, Lz2/c6;

    return-object p1
.end method

.method public bridge synthetic ooOO()Lz2/i1;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Lz2/c6;->o000o0o0()Lz2/c6;

    move-result-object v0

    return-object v0
.end method
