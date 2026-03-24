.class public Lz2/d6;
.super Lz2/o0O0o;
.source ""

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TranscodeType:",
        "Ljava/lang/Object;",
        ">",
        "Lz2/o0O0o<",
        "TTranscodeType;>;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Class;Lz2/o0O0o;)V
    .locals 0
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lz2/o0O0o;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TTranscodeType;>;",
            "Lz2/o0O0o<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lz2/o0O0o;-><init>(Ljava/lang/Class;Lz2/o0O0o;)V

    return-void
.end method

.method public constructor <init>(Lz2/o00Oo00;Lz2/o0;Ljava/lang/Class;Landroid/content/Context;)V
    .locals 0
    .param p1    # Lz2/o00Oo00;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lz2/o0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/o00Oo00;",
            "Lz2/o0;",
            "Ljava/lang/Class<",
            "TTranscodeType;>;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3, p4}, Lz2/o0O0o;-><init>(Lz2/o00Oo00;Lz2/o0;Ljava/lang/Class;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic OooO(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lz2/d6;->o000oo0O(Ljava/lang/String;)Lz2/d6;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic OooO00o(Ljava/net/URL;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/net/URL;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lz2/d6;->o000oo0o(Ljava/net/URL;)Lz2/d6;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic OooO0O0(Landroid/net/Uri;)Ljava/lang/Object;
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lz2/d6;->o000o0oo(Landroid/net/Uri;)Lz2/d6;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic OooO0OO([B)Ljava/lang/Object;
    .locals 0
    .param p1    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lz2/d6;->o000oo([B)Lz2/d6;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic OooO0Oo(Ljava/io/File;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/io/File;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lz2/d6;->o000oOoo(Ljava/io/File;)Lz2/d6;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic OooO0o(Landroid/graphics/Bitmap;)Ljava/lang/Object;
    .locals 0
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lz2/d6;->o000o0o(Landroid/graphics/Bitmap;)Lz2/d6;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic OooO0o0(Landroid/graphics/drawable/Drawable;)Ljava/lang/Object;
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lz2/d6;->o000o0oO(Landroid/graphics/drawable/Drawable;)Lz2/d6;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic OooO0oO(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lz2/d6;->o000oo0(Ljava/lang/Object;)Lz2/d6;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic OooO0oo(Ljava/lang/Integer;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation

        .annotation build Landroidx/annotation/Nullable;
        .end annotation

        .annotation build Landroidx/annotation/RawRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lz2/d6;->o000oo00(Ljava/lang/Integer;)Lz2/d6;

    move-result-object p1

    return-object p1
.end method

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

    invoke-virtual {p0, p1}, Lz2/d6;->o000OO0o(Lz2/i1;)Lz2/d6;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic OooOOO()Lz2/i1;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Lz2/d6;->o000OOo0()Lz2/d6;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic OooOOO0()Lz2/i1;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Lz2/d6;->o000OOO()Lz2/d6;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic OooOOOO()Lz2/i1;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Lz2/d6;->o000OOoO()Lz2/d6;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic OooOOOo()Lz2/i1;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    invoke-virtual {p0}, Lz2/d6;->o000Oo00()Lz2/d6;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic OooOOo()Lz2/i1;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Lz2/d6;->o000Oo0o()Lz2/d6;

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

    invoke-virtual {p0, p1}, Lz2/d6;->o000Oo0O(Ljava/lang/Class;)Lz2/d6;

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

    invoke-virtual {p0, p1}, Lz2/d6;->o000Oo(Lz2/o0oo0000;)Lz2/d6;

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

    invoke-virtual {p0, p1}, Lz2/d6;->o000Oooo(I)Lz2/d6;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic OooOo0()Lz2/i1;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Lz2/d6;->o000OoOo()Lz2/d6;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic OooOo00()Lz2/i1;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Lz2/d6;->o000OoOO()Lz2/d6;

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

    invoke-virtual {p0, p1}, Lz2/d6;->o000Ooo0(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Lz2/d6;

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

    invoke-virtual {p0, p1}, Lz2/d6;->o000OooO(Landroid/graphics/Bitmap$CompressFormat;)Lz2/d6;

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

    invoke-virtual {p0, p1}, Lz2/d6;->o000o00(Landroid/graphics/drawable/Drawable;)Lz2/d6;

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

    invoke-virtual {p0, p1}, Lz2/d6;->o000o000(I)Lz2/d6;

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

    invoke-virtual {p0, p1}, Lz2/d6;->o000o00o(I)Lz2/d6;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic OooOoo()Lz2/i1;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Lz2/d6;->o000o0O0()Lz2/d6;

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

    invoke-virtual {p0, p1}, Lz2/d6;->oooo00o(Landroid/graphics/drawable/Drawable;)Lz2/d6;

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

    invoke-virtual {p0, p1}, Lz2/d6;->o000o0O(Lcom/bumptech/glide/load/DecodeFormat;)Lz2/d6;

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

    invoke-virtual {p0, p1, p2}, Lz2/d6;->o000o0OO(J)Lz2/d6;

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

    invoke-virtual {p0}, Lz2/d6;->o000Oo00()Lz2/d6;

    move-result-object v0

    return-object v0
.end method

.method public o00(I)Lz2/d6;
    .locals 0
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lz2/d6<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lz2/i1;->o0ooOOo(I)Lz2/i1;

    move-result-object p1

    check-cast p1, Lz2/d6;

    return-object p1
.end method

.method public bridge synthetic o000(Landroid/graphics/drawable/Drawable;)Lz2/o0O0o;
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lz2/d6;->o000o0oO(Landroid/graphics/drawable/Drawable;)Lz2/d6;

    move-result-object p1

    return-object p1
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

    invoke-virtual {p0, p1}, Lz2/d6;->o00O0O00([Lz2/o0O0o000;)Lz2/d6;

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

    invoke-virtual {p0, p1}, Lz2/d6;->o00O00O(F)Lz2/d6;

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

    invoke-virtual {p0, p1, p2}, Lz2/d6;->o00O000o(Lz2/o0O0OO0;Ljava/lang/Object;)Lz2/d6;

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

    invoke-virtual {p0, p1}, Lz2/d6;->o00O00(Lz2/o0O0O0Oo;)Lz2/d6;

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

    invoke-virtual {p0, p1}, Lz2/d6;->o00O00OO(Landroid/content/res/Resources$Theme;)Lz2/d6;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic o00000O0(Z)Lz2/i1;
    .locals 0
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lz2/d6;->oOO00O(Z)Lz2/d6;

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

    invoke-virtual {p0, p1}, Lz2/d6;->o00O00oO(I)Lz2/d6;

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

    invoke-virtual {p0, p1}, Lz2/d6;->oo00o(Lz2/o0O0o000;)Lz2/d6;

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

    invoke-virtual {p0, p1, p2}, Lz2/d6;->o00O0(Ljava/lang/Class;Lz2/o0O0o000;)Lz2/d6;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic o0000O0(Lz2/o1;)Lz2/o0O0o;
    .locals 0
    .param p1    # Lz2/o1;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lz2/d6;->o0OoO0o(Lz2/o1;)Lz2/d6;

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

    invoke-virtual {p0, p1}, Lz2/d6;->o00O0O0([Lz2/o0O0o000;)Lz2/d6;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic o0000O0O(Lz2/i1;)Lz2/o0O0o;
    .locals 0
    .param p1    # Lz2/i1;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lz2/d6;->o000OO0o(Lz2/i1;)Lz2/d6;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic o0000OO()Lz2/o0O0o;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    invoke-virtual {p0}, Lz2/d6;->o000Oo00()Lz2/d6;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic o0000Oo()Lz2/o0O0o;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Lz2/d6;->o000o0Oo()Lz2/d6;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic o0000Oo0(Lz2/o0O0o;)Lz2/o0O0o;
    .locals 0
    .param p1    # Lz2/o0O0o;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lz2/d6;->o000o00O(Lz2/o0O0o;)Lz2/d6;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic o0000oO(Z)Lz2/i1;
    .locals 0
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lz2/d6;->o00O0OO0(Z)Lz2/d6;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic o0000oo(Z)Lz2/i1;
    .locals 0
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lz2/d6;->o00O0O0o(Z)Lz2/d6;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic o0000oo0(Lz2/o1;)Lz2/o0O0o;
    .locals 0
    .param p1    # Lz2/o1;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lz2/d6;->o000o0o0(Lz2/o1;)Lz2/d6;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic o0000ooO(Landroid/graphics/Bitmap;)Lz2/o0O0o;
    .locals 0
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lz2/d6;->o000o0o(Landroid/graphics/Bitmap;)Lz2/d6;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic o000O([Lz2/o0O0o;)Lz2/o0O0o;
    .locals 0
    .param p1    # [Lz2/o0O0o;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    invoke-virtual {p0, p1}, Lz2/d6;->o00O00o([Lz2/o0O0o;)Lz2/d6;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic o000O00([B)Lz2/o0O0o;
    .locals 0
    .param p1    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lz2/d6;->o000oo([B)Lz2/d6;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic o000O000(Landroid/net/Uri;)Lz2/o0O0o;
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lz2/d6;->o000o0oo(Landroid/net/Uri;)Lz2/d6;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic o000O0O(Ljava/lang/String;)Lz2/o0O0o;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lz2/d6;->o000oo0O(Ljava/lang/String;)Lz2/d6;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic o000O0o(Ljava/lang/Integer;)Lz2/o0O0o;
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation

        .annotation build Landroidx/annotation/Nullable;
        .end annotation

        .annotation build Landroidx/annotation/RawRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lz2/d6;->o000oo00(Ljava/lang/Integer;)Lz2/d6;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic o000O0oO(F)Lz2/o0O0o;
    .locals 0
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lz2/d6;->o00O00Oo(F)Lz2/d6;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic o000O0oo(Lz2/o0O0o;)Lz2/o0O0o;
    .locals 0
    .param p1    # Lz2/o0O0o;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lz2/d6;->o00O00o0(Lz2/o0O0o;)Lz2/d6;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic o000OO00(Lz2/o0O00000;)Lz2/o0O0o;
    .locals 0
    .param p1    # Lz2/o0O00000;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lz2/d6;->o00O0O0O(Lz2/o0O00000;)Lz2/d6;

    move-result-object p1

    return-object p1
.end method

.method public o000OO0o(Lz2/i1;)Lz2/d6;
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
            "Lz2/d6<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lz2/o0O0o;->o0000O0O(Lz2/i1;)Lz2/o0O0o;

    move-result-object p1

    check-cast p1, Lz2/d6;

    return-object p1
.end method

.method public o000OOO()Lz2/d6;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lz2/d6<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-super {p0}, Lz2/i1;->OooOOO0()Lz2/i1;

    move-result-object v0

    check-cast v0, Lz2/d6;

    return-object v0
.end method

.method public o000OOo0()Lz2/d6;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lz2/d6<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-super {p0}, Lz2/i1;->OooOOO()Lz2/i1;

    move-result-object v0

    check-cast v0, Lz2/d6;

    return-object v0
.end method

.method public o000OOoO()Lz2/d6;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lz2/d6<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-super {p0}, Lz2/i1;->OooOOOO()Lz2/i1;

    move-result-object v0

    check-cast v0, Lz2/d6;

    return-object v0
.end method

.method public o000Oo(Lz2/o0oo0000;)Lz2/d6;
    .locals 0
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
            ")",
            "Lz2/d6<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lz2/i1;->OooOOoo(Lz2/o0oo0000;)Lz2/i1;

    move-result-object p1

    check-cast p1, Lz2/d6;

    return-object p1
.end method

.method public bridge synthetic o000Oo0(Ljava/net/URL;)Lz2/o0O0o;
    .locals 0
    .param p1    # Ljava/net/URL;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lz2/d6;->o000oo0o(Ljava/net/URL;)Lz2/d6;

    move-result-object p1

    return-object p1
.end method

.method public o000Oo00()Lz2/d6;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lz2/d6<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-super {p0}, Lz2/o0O0o;->o0000OO()Lz2/o0O0o;

    move-result-object v0

    check-cast v0, Lz2/d6;

    return-object v0
.end method

.method public o000Oo0O(Ljava/lang/Class;)Lz2/d6;
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
            "Lz2/d6<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lz2/i1;->OooOOo0(Ljava/lang/Class;)Lz2/i1;

    move-result-object p1

    check-cast p1, Lz2/d6;

    return-object p1
.end method

.method public o000Oo0o()Lz2/d6;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lz2/d6<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-super {p0}, Lz2/i1;->OooOOo()Lz2/i1;

    move-result-object v0

    check-cast v0, Lz2/d6;

    return-object v0
.end method

.method public bridge synthetic o000OoO(Ljava/io/File;)Lz2/o0O0o;
    .locals 0
    .param p1    # Ljava/io/File;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lz2/d6;->o000oOoo(Ljava/io/File;)Lz2/d6;

    move-result-object p1

    return-object p1
.end method

.method public o000OoOO()Lz2/d6;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lz2/d6<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-super {p0}, Lz2/i1;->OooOo00()Lz2/i1;

    move-result-object v0

    check-cast v0, Lz2/d6;

    return-object v0
.end method

.method public o000OoOo()Lz2/d6;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lz2/d6<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-super {p0}, Lz2/i1;->OooOo0()Lz2/i1;

    move-result-object v0

    check-cast v0, Lz2/d6;

    return-object v0
.end method

.method public bridge synthetic o000Ooo(Ljava/lang/Object;)Lz2/o0O0o;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lz2/d6;->o000oo0(Ljava/lang/Object;)Lz2/d6;

    move-result-object p1

    return-object p1
.end method

.method public o000Ooo0(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Lz2/d6;
    .locals 0
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
            ")",
            "Lz2/d6<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lz2/i1;->OooOo0O(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Lz2/i1;

    move-result-object p1

    check-cast p1, Lz2/d6;

    return-object p1
.end method

.method public o000OooO(Landroid/graphics/Bitmap$CompressFormat;)Lz2/d6;
    .locals 0
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
            ")",
            "Lz2/d6<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lz2/i1;->OooOo0o(Landroid/graphics/Bitmap$CompressFormat;)Lz2/i1;

    move-result-object p1

    check-cast p1, Lz2/d6;

    return-object p1
.end method

.method public o000Oooo(I)Lz2/d6;
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lz2/d6<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lz2/i1;->OooOo(I)Lz2/i1;

    move-result-object p1

    check-cast p1, Lz2/d6;

    return-object p1
.end method

.method public o000o00(Landroid/graphics/drawable/Drawable;)Lz2/d6;
    .locals 0
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
            ")",
            "Lz2/d6<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lz2/i1;->OooOoO(Landroid/graphics/drawable/Drawable;)Lz2/i1;

    move-result-object p1

    check-cast p1, Lz2/d6;

    return-object p1
.end method

.method public o000o000(I)Lz2/d6;
    .locals 0
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
            "(I)",
            "Lz2/d6<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lz2/i1;->OooOoO0(I)Lz2/i1;

    move-result-object p1

    check-cast p1, Lz2/d6;

    return-object p1
.end method

.method public o000o00O(Lz2/o0O0o;)Lz2/d6;
    .locals 0
    .param p1    # Lz2/o0O0o;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/o0O0o<",
            "TTranscodeType;>;)",
            "Lz2/d6<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lz2/o0O0o;->o0000Oo0(Lz2/o0O0o;)Lz2/o0O0o;

    move-result-object p1

    check-cast p1, Lz2/d6;

    return-object p1
.end method

.method public o000o00o(I)Lz2/d6;
    .locals 0
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
            "(I)",
            "Lz2/d6<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lz2/i1;->OooOoOO(I)Lz2/i1;

    move-result-object p1

    check-cast p1, Lz2/d6;

    return-object p1
.end method

.method public o000o0O(Lcom/bumptech/glide/load/DecodeFormat;)Lz2/d6;
    .locals 0
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
            ")",
            "Lz2/d6<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lz2/i1;->OooOooO(Lcom/bumptech/glide/load/DecodeFormat;)Lz2/i1;

    move-result-object p1

    check-cast p1, Lz2/d6;

    return-object p1
.end method

.method public o000o0O0()Lz2/d6;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lz2/d6<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-super {p0}, Lz2/i1;->OooOoo()Lz2/i1;

    move-result-object v0

    check-cast v0, Lz2/d6;

    return-object v0
.end method

.method public o000o0OO(J)Lz2/d6;
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lz2/d6<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lz2/i1;->OooOooo(J)Lz2/i1;

    move-result-object p1

    check-cast p1, Lz2/d6;

    return-object p1
.end method

.method public o000o0Oo()Lz2/d6;
    .locals 2
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lz2/d6<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    new-instance v0, Lz2/d6;

    const-class v1, Ljava/io/File;

    invoke-direct {v0, v1, p0}, Lz2/d6;-><init>(Ljava/lang/Class;Lz2/o0O0o;)V

    sget-object v1, Lz2/o0O0o;->o0000oO0:Lz2/p1;

    invoke-virtual {v0, v1}, Lz2/d6;->o000OO0o(Lz2/i1;)Lz2/d6;

    move-result-object v0

    return-object v0
.end method

.method public o000o0o(Landroid/graphics/Bitmap;)Lz2/d6;
    .locals 0
    .param p1    # Landroid/graphics/Bitmap;
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
            "Landroid/graphics/Bitmap;",
            ")",
            "Lz2/d6<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lz2/o0O0o;->o0000ooO(Landroid/graphics/Bitmap;)Lz2/o0O0o;

    move-result-object p1

    check-cast p1, Lz2/d6;

    return-object p1
.end method

.method public o000o0o0(Lz2/o1;)Lz2/d6;
    .locals 0
    .param p1    # Lz2/o1;
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
            "Lz2/o1<",
            "TTranscodeType;>;)",
            "Lz2/d6<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lz2/o0O0o;->o0000oo0(Lz2/o1;)Lz2/o0O0o;

    move-result-object p1

    check-cast p1, Lz2/d6;

    return-object p1
.end method

.method public o000o0oO(Landroid/graphics/drawable/Drawable;)Lz2/d6;
    .locals 0
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
            ")",
            "Lz2/d6<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lz2/o0O0o;->o000(Landroid/graphics/drawable/Drawable;)Lz2/o0O0o;

    move-result-object p1

    check-cast p1, Lz2/d6;

    return-object p1
.end method

.method public o000o0oo(Landroid/net/Uri;)Lz2/d6;
    .locals 0
    .param p1    # Landroid/net/Uri;
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
            "Landroid/net/Uri;",
            ")",
            "Lz2/d6<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lz2/o0O0o;->o000O000(Landroid/net/Uri;)Lz2/o0O0o;

    move-result-object p1

    check-cast p1, Lz2/d6;

    return-object p1
.end method

.method public o000oOoo(Ljava/io/File;)Lz2/d6;
    .locals 0
    .param p1    # Ljava/io/File;
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
            "Ljava/io/File;",
            ")",
            "Lz2/d6<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lz2/o0O0o;->o000OoO(Ljava/io/File;)Lz2/o0O0o;

    move-result-object p1

    check-cast p1, Lz2/d6;

    return-object p1
.end method

.method public o000oo([B)Lz2/d6;
    .locals 0
    .param p1    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Lz2/d6<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lz2/o0O0o;->o000O00([B)Lz2/o0O0o;

    move-result-object p1

    check-cast p1, Lz2/d6;

    return-object p1
.end method

.method public o000oo0(Ljava/lang/Object;)Lz2/d6;
    .locals 0
    .param p1    # Ljava/lang/Object;
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
            "Ljava/lang/Object;",
            ")",
            "Lz2/d6<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lz2/o0O0o;->o000Ooo(Ljava/lang/Object;)Lz2/o0O0o;

    move-result-object p1

    check-cast p1, Lz2/d6;

    return-object p1
.end method

.method public o000oo00(Ljava/lang/Integer;)Lz2/d6;
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation

        .annotation build Landroidx/annotation/Nullable;
        .end annotation

        .annotation build Landroidx/annotation/RawRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")",
            "Lz2/d6<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lz2/o0O0o;->o000O0o(Ljava/lang/Integer;)Lz2/o0O0o;

    move-result-object p1

    check-cast p1, Lz2/d6;

    return-object p1
.end method

.method public o000oo0O(Ljava/lang/String;)Lz2/d6;
    .locals 0
    .param p1    # Ljava/lang/String;
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
            "Ljava/lang/String;",
            ")",
            "Lz2/d6<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lz2/o0O0o;->o000O0O(Ljava/lang/String;)Lz2/o0O0o;

    move-result-object p1

    check-cast p1, Lz2/d6;

    return-object p1
.end method

.method public o000oo0o(Ljava/net/URL;)Lz2/d6;
    .locals 0
    .param p1    # Ljava/net/URL;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            ")",
            "Lz2/d6<",
            "TTranscodeType;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-super {p0, p1}, Lz2/o0O0o;->o000Oo0(Ljava/net/URL;)Lz2/o0O0o;

    move-result-object p1

    check-cast p1, Lz2/d6;

    return-object p1
.end method

.method public o000ooO()Lz2/d6;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lz2/d6<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-super {p0}, Lz2/i1;->o00Oo0()Lz2/i1;

    move-result-object v0

    check-cast v0, Lz2/d6;

    return-object v0
.end method

.method public o000ooO0(Z)Lz2/d6;
    .locals 0
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lz2/d6<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lz2/i1;->o00O0O(Z)Lz2/i1;

    move-result-object p1

    check-cast p1, Lz2/d6;

    return-object p1
.end method

.method public o000ooOO()Lz2/d6;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lz2/d6<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-super {p0}, Lz2/i1;->o00Ooo()Lz2/i1;

    move-result-object v0

    check-cast v0, Lz2/d6;

    return-object v0
.end method

.method public o000ooo()Lz2/d6;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lz2/d6<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-super {p0}, Lz2/i1;->o00ooo()Lz2/i1;

    move-result-object v0

    check-cast v0, Lz2/d6;

    return-object v0
.end method

.method public o000ooo0()Lz2/d6;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lz2/d6<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-super {p0}, Lz2/i1;->o00o0O()Lz2/i1;

    move-result-object v0

    check-cast v0, Lz2/d6;

    return-object v0
.end method

.method public o000oooO(Lz2/o0O0o000;)Lz2/d6;
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
            "Lz2/d6<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lz2/i1;->o00oO0o(Lz2/o0O0o000;)Lz2/i1;

    move-result-object p1

    check-cast p1, Lz2/d6;

    return-object p1
.end method

.method public o000oooo(Ljava/lang/Class;Lz2/o0O0o000;)Lz2/d6;
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
            "Lz2/d6<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lz2/i1;->o0ooOO0(Ljava/lang/Class;Lz2/o0O0o000;)Lz2/i1;

    move-result-object p1

    check-cast p1, Lz2/d6;

    return-object p1
.end method

.method public o00O0(Ljava/lang/Class;Lz2/o0O0o000;)Lz2/d6;
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
            "Lz2/d6<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lz2/i1;->o00000oO(Ljava/lang/Class;Lz2/o0O0o000;)Lz2/i1;

    move-result-object p1

    check-cast p1, Lz2/d6;

    return-object p1
.end method

.method public o00O00(Lz2/o0O0O0Oo;)Lz2/d6;
    .locals 0
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
            ")",
            "Lz2/d6<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lz2/i1;->o000000o(Lz2/o0O0O0Oo;)Lz2/i1;

    move-result-object p1

    check-cast p1, Lz2/d6;

    return-object p1
.end method

.method public o00O000(Lcom/bumptech/glide/Priority;)Lz2/d6;
    .locals 0
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
            ")",
            "Lz2/d6<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lz2/i1;->o0OO00O(Lcom/bumptech/glide/Priority;)Lz2/i1;

    move-result-object p1

    check-cast p1, Lz2/d6;

    return-object p1
.end method

.method public o00O0000(II)Lz2/d6;
    .locals 0
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lz2/d6<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lz2/i1;->o0ooOoO(II)Lz2/i1;

    move-result-object p1

    check-cast p1, Lz2/d6;

    return-object p1
.end method

.method public o00O000o(Lz2/o0O0OO0;Ljava/lang/Object;)Lz2/d6;
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
            "Lz2/d6<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lz2/i1;->o000000O(Lz2/o0O0OO0;Ljava/lang/Object;)Lz2/i1;

    move-result-object p1

    check-cast p1, Lz2/d6;

    return-object p1
.end method

.method public o00O00O(F)Lz2/d6;
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lz2/d6<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lz2/i1;->o00000(F)Lz2/i1;

    move-result-object p1

    check-cast p1, Lz2/d6;

    return-object p1
.end method

.method public o00O00OO(Landroid/content/res/Resources$Theme;)Lz2/d6;
    .locals 0
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
            ")",
            "Lz2/d6<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lz2/i1;->o00000O(Landroid/content/res/Resources$Theme;)Lz2/i1;

    move-result-object p1

    check-cast p1, Lz2/d6;

    return-object p1
.end method

.method public o00O00Oo(F)Lz2/d6;
    .locals 0
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lz2/d6<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lz2/o0O0o;->o000O0oO(F)Lz2/o0O0o;

    move-result-object p1

    check-cast p1, Lz2/d6;

    return-object p1
.end method

.method public final varargs o00O00o([Lz2/o0O0o;)Lz2/d6;
    .locals 0
    .param p1    # [Lz2/o0O0o;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lz2/o0O0o<",
            "TTranscodeType;>;)",
            "Lz2/d6<",
            "TTranscodeType;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    invoke-super {p0, p1}, Lz2/o0O0o;->o000O([Lz2/o0O0o;)Lz2/o0O0o;

    move-result-object p1

    check-cast p1, Lz2/d6;

    return-object p1
.end method

.method public o00O00o0(Lz2/o0O0o;)Lz2/d6;
    .locals 0
    .param p1    # Lz2/o0O0o;
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
            "Lz2/o0O0o<",
            "TTranscodeType;>;)",
            "Lz2/d6<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lz2/o0O0o;->o000O0oo(Lz2/o0O0o;)Lz2/o0O0o;

    move-result-object p1

    check-cast p1, Lz2/d6;

    return-object p1
.end method

.method public o00O00oO(I)Lz2/d6;
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lz2/d6<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lz2/i1;->o00000OO(I)Lz2/i1;

    move-result-object p1

    check-cast p1, Lz2/d6;

    return-object p1
.end method

.method public bridge synthetic o00O0O(Z)Lz2/i1;
    .locals 0
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lz2/d6;->o000ooO0(Z)Lz2/d6;

    move-result-object p1

    return-object p1
.end method

.method public varargs o00O0O0([Lz2/o0O0o000;)Lz2/d6;
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
            "Lz2/d6<",
            "TTranscodeType;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-super {p0, p1}, Lz2/i1;->o0000O00([Lz2/o0O0o000;)Lz2/i1;

    move-result-object p1

    check-cast p1, Lz2/d6;

    return-object p1
.end method

.method public varargs o00O0O00([Lz2/o0O0o000;)Lz2/d6;
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
            "Lz2/d6<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lz2/i1;->o0000([Lz2/o0O0o000;)Lz2/i1;

    move-result-object p1

    check-cast p1, Lz2/d6;

    return-object p1
.end method

.method public o00O0O0O(Lz2/o0O00000;)Lz2/d6;
    .locals 0
    .param p1    # Lz2/o0O00000;
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
            "Lz2/o0O00000<",
            "*-TTranscodeType;>;)",
            "Lz2/d6<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lz2/o0O0o;->o000OO00(Lz2/o0O00000;)Lz2/o0O0o;

    move-result-object p1

    check-cast p1, Lz2/d6;

    return-object p1
.end method

.method public o00O0O0o(Z)Lz2/d6;
    .locals 0
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lz2/d6<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lz2/i1;->o0000oo(Z)Lz2/i1;

    move-result-object p1

    check-cast p1, Lz2/d6;

    return-object p1
.end method

.method public o00O0OO0(Z)Lz2/d6;
    .locals 0
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lz2/d6<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lz2/i1;->o0000oO(Z)Lz2/i1;

    move-result-object p1

    check-cast p1, Lz2/d6;

    return-object p1
.end method

.method public bridge synthetic o00Oo0()Lz2/i1;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Lz2/d6;->o000ooO()Lz2/d6;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic o00Ooo()Lz2/i1;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Lz2/d6;->o000ooOO()Lz2/d6;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic o00o0O()Lz2/i1;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Lz2/d6;->o000ooo0()Lz2/d6;

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

    invoke-virtual {p0, p1}, Lz2/d6;->o000oooO(Lz2/o0O0o000;)Lz2/d6;

    move-result-object p1

    return-object p1
.end method

.method public o00oOoo(Landroid/graphics/drawable/Drawable;)Lz2/d6;
    .locals 0
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
            ")",
            "Lz2/d6<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lz2/i1;->o0Oo0oo(Landroid/graphics/drawable/Drawable;)Lz2/i1;

    move-result-object p1

    check-cast p1, Lz2/d6;

    return-object p1
.end method

.method public bridge synthetic o00ooo()Lz2/i1;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Lz2/d6;->o000ooo()Lz2/d6;

    move-result-object v0

    return-object v0
.end method

.method public o0O0ooO(I)Lz2/d6;
    .locals 0
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
            "(I)",
            "Lz2/d6<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lz2/i1;->o0OOO0o(I)Lz2/i1;

    move-result-object p1

    check-cast p1, Lz2/d6;

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

    invoke-virtual {p0, p1}, Lz2/d6;->o00O000(Lcom/bumptech/glide/Priority;)Lz2/d6;

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

    invoke-virtual {p0, p1}, Lz2/d6;->o0O0ooO(I)Lz2/d6;

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

    invoke-virtual {p0, p1}, Lz2/d6;->o00oOoo(Landroid/graphics/drawable/Drawable;)Lz2/d6;

    move-result-object p1

    return-object p1
.end method

.method public o0OoO0o(Lz2/o1;)Lz2/d6;
    .locals 0
    .param p1    # Lz2/o1;
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
            "Lz2/o1<",
            "TTranscodeType;>;)",
            "Lz2/d6<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lz2/o0O0o;->o0000O0(Lz2/o1;)Lz2/o0O0o;

    move-result-object p1

    check-cast p1, Lz2/d6;

    return-object p1
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

    invoke-virtual {p0, p1, p2}, Lz2/d6;->o000oooo(Ljava/lang/Class;Lz2/o0O0o000;)Lz2/d6;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic o0ooOOo(I)Lz2/i1;
    .locals 0
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lz2/d6;->o00(I)Lz2/d6;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic o0ooOoO(II)Lz2/i1;
    .locals 0
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lz2/d6;->o00O0000(II)Lz2/d6;

    move-result-object p1

    return-object p1
.end method

.method public oOO00O(Z)Lz2/d6;
    .locals 0
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lz2/d6<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lz2/i1;->o00000O0(Z)Lz2/i1;

    move-result-object p1

    check-cast p1, Lz2/d6;

    return-object p1
.end method

.method public oo00o(Lz2/o0O0o000;)Lz2/d6;
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
            "Lz2/d6<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lz2/i1;->o00000Oo(Lz2/o0O0o000;)Lz2/i1;

    move-result-object p1

    check-cast p1, Lz2/d6;

    return-object p1
.end method

.method public oooo00o(Landroid/graphics/drawable/Drawable;)Lz2/d6;
    .locals 0
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
            ")",
            "Lz2/d6<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lz2/i1;->OooOoo0(Landroid/graphics/drawable/Drawable;)Lz2/i1;

    move-result-object p1

    check-cast p1, Lz2/d6;

    return-object p1
.end method
