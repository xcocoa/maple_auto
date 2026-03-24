.class public Lz2/p1;
.super Lz2/i1;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lz2/i1<",
        "Lz2/p1;",
        ">;"
    }
.end annotation


# static fields
.field private static o0000O:Lz2/p1;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private static o0000O0O:Lz2/p1;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private static o0000OO:Lz2/p1;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private static o0000OO0:Lz2/p1;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private static o0000OOO:Lz2/p1;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private static o0000OOo:Lz2/p1;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private static o0000Oo0:Lz2/p1;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private static o000OO:Lz2/p1;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lz2/i1;-><init>()V

    return-void
.end method

.method public static o000(Landroid/graphics/drawable/Drawable;)Lz2/p1;
    .locals 1
    .param p0    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lz2/p1;

    invoke-direct {v0}, Lz2/p1;-><init>()V

    invoke-virtual {v0, p0}, Lz2/i1;->o0Oo0oo(Landroid/graphics/drawable/Drawable;)Lz2/i1;

    move-result-object p0

    check-cast p0, Lz2/p1;

    return-object p0
.end method

.method public static o0000O()Lz2/p1;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object v0, Lz2/p1;->o0000OOO:Lz2/p1;

    if-nez v0, :cond_0

    new-instance v0, Lz2/p1;

    invoke-direct {v0}, Lz2/p1;-><init>()V

    invoke-virtual {v0}, Lz2/i1;->OooOOOO()Lz2/i1;

    move-result-object v0

    check-cast v0, Lz2/p1;

    invoke-virtual {v0}, Lz2/i1;->OooOO0o()Lz2/i1;

    move-result-object v0

    check-cast v0, Lz2/p1;

    sput-object v0, Lz2/p1;->o0000OOO:Lz2/p1;

    :cond_0
    sget-object v0, Lz2/p1;->o0000OOO:Lz2/p1;

    return-object v0
.end method

.method public static o0000O0(Lz2/o0O0o000;)Lz2/p1;
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
            "Lz2/p1;"
        }
    .end annotation

    new-instance v0, Lz2/p1;

    invoke-direct {v0}, Lz2/p1;-><init>()V

    invoke-virtual {v0, p0}, Lz2/i1;->o00000Oo(Lz2/o0O0o000;)Lz2/i1;

    move-result-object p0

    check-cast p0, Lz2/p1;

    return-object p0
.end method

.method public static o0000O0O()Lz2/p1;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object v0, Lz2/p1;->o0000OO:Lz2/p1;

    if-nez v0, :cond_0

    new-instance v0, Lz2/p1;

    invoke-direct {v0}, Lz2/p1;-><init>()V

    invoke-virtual {v0}, Lz2/i1;->OooOOO0()Lz2/i1;

    move-result-object v0

    check-cast v0, Lz2/p1;

    invoke-virtual {v0}, Lz2/i1;->OooOO0o()Lz2/i1;

    move-result-object v0

    check-cast v0, Lz2/p1;

    sput-object v0, Lz2/p1;->o0000OO:Lz2/p1;

    :cond_0
    sget-object v0, Lz2/p1;->o0000OO:Lz2/p1;

    return-object v0
.end method

.method public static o0000OO(Lz2/o0oo0000;)Lz2/p1;
    .locals 1
    .param p0    # Lz2/o0oo0000;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lz2/p1;

    invoke-direct {v0}, Lz2/p1;-><init>()V

    invoke-virtual {v0, p0}, Lz2/i1;->OooOOoo(Lz2/o0oo0000;)Lz2/i1;

    move-result-object p0

    check-cast p0, Lz2/p1;

    return-object p0
.end method

.method public static o0000OO0(Ljava/lang/Class;)Lz2/p1;
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
            "Lz2/p1;"
        }
    .end annotation

    new-instance v0, Lz2/p1;

    invoke-direct {v0}, Lz2/p1;-><init>()V

    invoke-virtual {v0, p0}, Lz2/i1;->OooOOo0(Ljava/lang/Class;)Lz2/i1;

    move-result-object p0

    check-cast p0, Lz2/p1;

    return-object p0
.end method

.method public static o0000OOO(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Lz2/p1;
    .locals 1
    .param p0    # Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lz2/p1;

    invoke-direct {v0}, Lz2/p1;-><init>()V

    invoke-virtual {v0, p0}, Lz2/i1;->OooOo0O(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Lz2/i1;

    move-result-object p0

    check-cast p0, Lz2/p1;

    return-object p0
.end method

.method public static o0000OOo(Landroid/graphics/Bitmap$CompressFormat;)Lz2/p1;
    .locals 1
    .param p0    # Landroid/graphics/Bitmap$CompressFormat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lz2/p1;

    invoke-direct {v0}, Lz2/p1;-><init>()V

    invoke-virtual {v0, p0}, Lz2/i1;->OooOo0o(Landroid/graphics/Bitmap$CompressFormat;)Lz2/i1;

    move-result-object p0

    check-cast p0, Lz2/p1;

    return-object p0
.end method

.method public static o0000Oo(I)Lz2/p1;
    .locals 1
    .param p0    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lz2/p1;

    invoke-direct {v0}, Lz2/p1;-><init>()V

    invoke-virtual {v0, p0}, Lz2/i1;->OooOoO0(I)Lz2/i1;

    move-result-object p0

    check-cast p0, Lz2/p1;

    return-object p0
.end method

.method public static o0000Oo0(I)Lz2/p1;
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

    new-instance v0, Lz2/p1;

    invoke-direct {v0}, Lz2/p1;-><init>()V

    invoke-virtual {v0, p0}, Lz2/i1;->OooOo(I)Lz2/i1;

    move-result-object p0

    check-cast p0, Lz2/p1;

    return-object p0
.end method

.method public static o0000OoO(Landroid/graphics/drawable/Drawable;)Lz2/p1;
    .locals 1
    .param p0    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lz2/p1;

    invoke-direct {v0}, Lz2/p1;-><init>()V

    invoke-virtual {v0, p0}, Lz2/i1;->OooOoO(Landroid/graphics/drawable/Drawable;)Lz2/i1;

    move-result-object p0

    check-cast p0, Lz2/p1;

    return-object p0
.end method

.method public static o0000o()Lz2/p1;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object v0, Lz2/p1;->o0000Oo0:Lz2/p1;

    if-nez v0, :cond_0

    new-instance v0, Lz2/p1;

    invoke-direct {v0}, Lz2/p1;-><init>()V

    invoke-virtual {v0}, Lz2/i1;->OooOo00()Lz2/i1;

    move-result-object v0

    check-cast v0, Lz2/p1;

    invoke-virtual {v0}, Lz2/i1;->OooOO0o()Lz2/i1;

    move-result-object v0

    check-cast v0, Lz2/p1;

    sput-object v0, Lz2/p1;->o0000Oo0:Lz2/p1;

    :cond_0
    sget-object v0, Lz2/p1;->o0000Oo0:Lz2/p1;

    return-object v0
.end method

.method public static o0000o0()Lz2/p1;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object v0, Lz2/p1;->o0000O:Lz2/p1;

    if-nez v0, :cond_0

    new-instance v0, Lz2/p1;

    invoke-direct {v0}, Lz2/p1;-><init>()V

    invoke-virtual {v0}, Lz2/i1;->OooOoo()Lz2/i1;

    move-result-object v0

    check-cast v0, Lz2/p1;

    invoke-virtual {v0}, Lz2/i1;->OooOO0o()Lz2/i1;

    move-result-object v0

    check-cast v0, Lz2/p1;

    sput-object v0, Lz2/p1;->o0000O:Lz2/p1;

    :cond_0
    sget-object v0, Lz2/p1;->o0000O:Lz2/p1;

    return-object v0
.end method

.method public static o0000o0O(Lcom/bumptech/glide/load/DecodeFormat;)Lz2/p1;
    .locals 1
    .param p0    # Lcom/bumptech/glide/load/DecodeFormat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lz2/p1;

    invoke-direct {v0}, Lz2/p1;-><init>()V

    invoke-virtual {v0, p0}, Lz2/i1;->OooOooO(Lcom/bumptech/glide/load/DecodeFormat;)Lz2/i1;

    move-result-object p0

    check-cast p0, Lz2/p1;

    return-object p0
.end method

.method public static o0000o0o(J)Lz2/p1;
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

    new-instance v0, Lz2/p1;

    invoke-direct {v0}, Lz2/p1;-><init>()V

    invoke-virtual {v0, p0, p1}, Lz2/i1;->OooOooo(J)Lz2/i1;

    move-result-object p0

    check-cast p0, Lz2/p1;

    return-object p0
.end method

.method public static o0000oO0()Lz2/p1;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object v0, Lz2/p1;->o0000OOo:Lz2/p1;

    if-nez v0, :cond_0

    new-instance v0, Lz2/p1;

    invoke-direct {v0}, Lz2/p1;-><init>()V

    invoke-virtual {v0}, Lz2/i1;->OooOo0()Lz2/i1;

    move-result-object v0

    check-cast v0, Lz2/p1;

    invoke-virtual {v0}, Lz2/i1;->OooOO0o()Lz2/i1;

    move-result-object v0

    check-cast v0, Lz2/p1;

    sput-object v0, Lz2/p1;->o0000OOo:Lz2/p1;

    :cond_0
    sget-object v0, Lz2/p1;->o0000OOo:Lz2/p1;

    return-object v0
.end method

.method public static o0000oOO(Lz2/o0O0OO0;Ljava/lang/Object;)Lz2/p1;
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
            "Lz2/p1;"
        }
    .end annotation

    new-instance v0, Lz2/p1;

    invoke-direct {v0}, Lz2/p1;-><init>()V

    invoke-virtual {v0, p0, p1}, Lz2/i1;->o000000O(Lz2/o0O0OO0;Ljava/lang/Object;)Lz2/i1;

    move-result-object p0

    check-cast p0, Lz2/p1;

    return-object p0
.end method

.method public static o0000oOo(I)Lz2/p1;
    .locals 0
    .param p0    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p0, p0}, Lz2/p1;->o0000oo0(II)Lz2/p1;

    move-result-object p0

    return-object p0
.end method

.method public static o0000oo0(II)Lz2/p1;
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

    new-instance v0, Lz2/p1;

    invoke-direct {v0}, Lz2/p1;-><init>()V

    invoke-virtual {v0, p0, p1}, Lz2/i1;->o0ooOoO(II)Lz2/i1;

    move-result-object p0

    check-cast p0, Lz2/p1;

    return-object p0
.end method

.method public static o0000ooO(I)Lz2/p1;
    .locals 1
    .param p0    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lz2/p1;

    invoke-direct {v0}, Lz2/p1;-><init>()V

    invoke-virtual {v0, p0}, Lz2/i1;->o0OOO0o(I)Lz2/i1;

    move-result-object p0

    check-cast p0, Lz2/p1;

    return-object p0
.end method

.method public static o000O000(Lcom/bumptech/glide/Priority;)Lz2/p1;
    .locals 1
    .param p0    # Lcom/bumptech/glide/Priority;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lz2/p1;

    invoke-direct {v0}, Lz2/p1;-><init>()V

    invoke-virtual {v0, p0}, Lz2/i1;->o0OO00O(Lcom/bumptech/glide/Priority;)Lz2/i1;

    move-result-object p0

    check-cast p0, Lz2/p1;

    return-object p0
.end method

.method public static o000O0O(I)Lz2/p1;
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

    new-instance v0, Lz2/p1;

    invoke-direct {v0}, Lz2/p1;-><init>()V

    invoke-virtual {v0, p0}, Lz2/i1;->o00000OO(I)Lz2/i1;

    move-result-object p0

    check-cast p0, Lz2/p1;

    return-object p0
.end method

.method public static o000O0o(F)Lz2/p1;
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

    new-instance v0, Lz2/p1;

    invoke-direct {v0}, Lz2/p1;-><init>()V

    invoke-virtual {v0, p0}, Lz2/i1;->o00000(F)Lz2/i1;

    move-result-object p0

    check-cast p0, Lz2/p1;

    return-object p0
.end method

.method public static o000OO()Lz2/p1;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object v0, Lz2/p1;->o0000OO0:Lz2/p1;

    if-nez v0, :cond_0

    new-instance v0, Lz2/p1;

    invoke-direct {v0}, Lz2/p1;-><init>()V

    invoke-virtual {v0}, Lz2/i1;->OooOOO()Lz2/i1;

    move-result-object v0

    check-cast v0, Lz2/p1;

    invoke-virtual {v0}, Lz2/i1;->OooOO0o()Lz2/i1;

    move-result-object v0

    check-cast v0, Lz2/p1;

    sput-object v0, Lz2/p1;->o0000OO0:Lz2/p1;

    :cond_0
    sget-object v0, Lz2/p1;->o0000OO0:Lz2/p1;

    return-object v0
.end method

.method public static o000OoO(Lz2/o0O0O0Oo;)Lz2/p1;
    .locals 1
    .param p0    # Lz2/o0O0O0Oo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lz2/p1;

    invoke-direct {v0}, Lz2/p1;-><init>()V

    invoke-virtual {v0, p0}, Lz2/i1;->o000000o(Lz2/o0O0O0Oo;)Lz2/i1;

    move-result-object p0

    check-cast p0, Lz2/p1;

    return-object p0
.end method

.method public static o000Ooo(Z)Lz2/p1;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    if-eqz p0, :cond_1

    sget-object p0, Lz2/p1;->o0000O0O:Lz2/p1;

    if-nez p0, :cond_0

    new-instance p0, Lz2/p1;

    invoke-direct {p0}, Lz2/p1;-><init>()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lz2/i1;->o00000O0(Z)Lz2/i1;

    move-result-object p0

    check-cast p0, Lz2/p1;

    invoke-virtual {p0}, Lz2/i1;->OooOO0o()Lz2/i1;

    move-result-object p0

    check-cast p0, Lz2/p1;

    sput-object p0, Lz2/p1;->o0000O0O:Lz2/p1;

    :cond_0
    sget-object p0, Lz2/p1;->o0000O0O:Lz2/p1;

    return-object p0

    :cond_1
    sget-object p0, Lz2/p1;->o000OO:Lz2/p1;

    if-nez p0, :cond_2

    new-instance p0, Lz2/p1;

    invoke-direct {p0}, Lz2/p1;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lz2/i1;->o00000O0(Z)Lz2/i1;

    move-result-object p0

    check-cast p0, Lz2/p1;

    invoke-virtual {p0}, Lz2/i1;->OooOO0o()Lz2/i1;

    move-result-object p0

    check-cast p0, Lz2/p1;

    sput-object p0, Lz2/p1;->o000OO:Lz2/p1;

    :cond_2
    sget-object p0, Lz2/p1;->o000OO:Lz2/p1;

    return-object p0
.end method
