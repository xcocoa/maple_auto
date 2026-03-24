.class public final Lz2/oo00;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/oO0Ooooo;
.implements Lz2/oO0000o0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lz2/oO0Ooooo<",
        "Landroid/graphics/drawable/BitmapDrawable;",
        ">;",
        "Lz2/oO0000o0;"
    }
.end annotation


# instance fields
.field private final OoooOoO:Landroid/content/res/Resources;

.field private final OoooOoo:Lz2/oO0Ooooo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz2/oO0Ooooo<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/res/Resources;Lz2/oO0Ooooo;)V
    .locals 0
    .param p1    # Landroid/content/res/Resources;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lz2/oO0Ooooo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Lz2/oO0Ooooo<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lz2/r2;->OooO0Oo(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/res/Resources;

    iput-object p1, p0, Lz2/oo00;->OoooOoO:Landroid/content/res/Resources;

    invoke-static {p2}, Lz2/r2;->OooO0Oo(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lz2/oO0Ooooo;

    iput-object p1, p0, Lz2/oo00;->OoooOoo:Lz2/oO0Ooooo;

    return-void
.end method

.method public static OooO0Oo(Landroid/content/res/Resources;Lz2/oO0Ooooo;)Lz2/oO0Ooooo;
    .locals 1
    .param p0    # Landroid/content/res/Resources;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lz2/oO0Ooooo;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Lz2/oO0Ooooo<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lz2/oO0Ooooo<",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lz2/oo00;

    invoke-direct {v0, p0, p1}, Lz2/oo00;-><init>(Landroid/content/res/Resources;Lz2/oO0Ooooo;)V

    return-object v0
.end method

.method public static OooO0o(Landroid/content/res/Resources;Lz2/oO000o00;Landroid/graphics/Bitmap;)Lz2/oo00;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p2, p1}, Lz2/oOO;->OooO0Oo(Landroid/graphics/Bitmap;Lz2/oO000o00;)Lz2/oOO;

    move-result-object p1

    invoke-static {p0, p1}, Lz2/oo00;->OooO0Oo(Landroid/content/res/Resources;Lz2/oO0Ooooo;)Lz2/oO0Ooooo;

    move-result-object p0

    check-cast p0, Lz2/oo00;

    return-object p0
.end method

.method public static OooO0o0(Landroid/content/Context;Landroid/graphics/Bitmap;)Lz2/oo00;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {p0}, Lz2/o00Oo00;->OooO0Oo(Landroid/content/Context;)Lz2/o00Oo00;

    move-result-object p0

    invoke-virtual {p0}, Lz2/o00Oo00;->OooO0oO()Lz2/oO000o00;

    move-result-object p0

    invoke-static {p1, p0}, Lz2/oOO;->OooO0Oo(Landroid/graphics/Bitmap;Lz2/oO000o00;)Lz2/oOO;

    move-result-object p0

    invoke-static {v0, p0}, Lz2/oo00;->OooO0Oo(Landroid/content/res/Resources;Lz2/oO0Ooooo;)Lz2/oO0Ooooo;

    move-result-object p0

    check-cast p0, Lz2/oo00;

    return-object p0
.end method


# virtual methods
.method public OooO00o()V
    .locals 2

    iget-object v0, p0, Lz2/oo00;->OoooOoo:Lz2/oO0Ooooo;

    instance-of v1, v0, Lz2/oO0000o0;

    if-eqz v1, :cond_0

    check-cast v0, Lz2/oO0000o0;

    invoke-interface {v0}, Lz2/oO0000o0;->OooO00o()V

    :cond_0
    return-void
.end method

.method public OooO0O0()Ljava/lang/Class;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;"
        }
    .end annotation

    const-class v0, Landroid/graphics/drawable/BitmapDrawable;

    return-object v0
.end method

.method public OooO0OO()Landroid/graphics/drawable/BitmapDrawable;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lz2/oo00;->OoooOoO:Landroid/content/res/Resources;

    iget-object v2, p0, Lz2/oo00;->OoooOoo:Lz2/oO0Ooooo;

    invoke-interface {v2}, Lz2/oO0Ooooo;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Lz2/oo00;->OooO0OO()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    return-object v0
.end method

.method public getSize()I
    .locals 1

    iget-object v0, p0, Lz2/oo00;->OoooOoo:Lz2/oO0Ooooo;

    invoke-interface {v0}, Lz2/oO0Ooooo;->getSize()I

    move-result v0

    return v0
.end method

.method public recycle()V
    .locals 1

    iget-object v0, p0, Lz2/oo00;->OoooOoo:Lz2/oO0Ooooo;

    invoke-interface {v0}, Lz2/oO0Ooooo;->recycle()V

    return-void
.end method
