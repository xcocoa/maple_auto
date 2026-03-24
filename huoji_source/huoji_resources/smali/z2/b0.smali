.class public final Lz2/b0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/d0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lz2/d0<",
        "Landroid/graphics/drawable/Drawable;",
        "[B>;"
    }
.end annotation


# instance fields
.field private final OooO00o:Lz2/oO000o00;

.field private final OooO0O0:Lz2/d0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz2/d0<",
            "Landroid/graphics/Bitmap;",
            "[B>;"
        }
    .end annotation
.end field

.field private final OooO0OO:Lz2/d0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz2/d0<",
            "Lz2/r;",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lz2/oO000o00;Lz2/d0;Lz2/d0;)V
    .locals 0
    .param p1    # Lz2/oO000o00;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lz2/d0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lz2/d0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/oO000o00;",
            "Lz2/d0<",
            "Landroid/graphics/Bitmap;",
            "[B>;",
            "Lz2/d0<",
            "Lz2/r;",
            "[B>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz2/b0;->OooO00o:Lz2/oO000o00;

    iput-object p2, p0, Lz2/b0;->OooO0O0:Lz2/d0;

    iput-object p3, p0, Lz2/b0;->OooO0OO:Lz2/d0;

    return-void
.end method

.method private static OooO0O0(Lz2/oO0Ooooo;)Lz2/oO0Ooooo;
    .locals 0
    .param p0    # Lz2/oO0Ooooo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/oO0Ooooo<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)",
            "Lz2/oO0Ooooo<",
            "Lz2/r;",
            ">;"
        }
    .end annotation

    return-object p0
.end method


# virtual methods
.method public OooO00o(Lz2/oO0Ooooo;Lz2/o0O0OOO0;)Lz2/oO0Ooooo;
    .locals 2
    .param p1    # Lz2/oO0Ooooo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lz2/o0O0OOO0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/oO0Ooooo<",
            "Landroid/graphics/drawable/Drawable;",
            ">;",
            "Lz2/o0O0OOO0;",
            ")",
            "Lz2/oO0Ooooo<",
            "[B>;"
        }
    .end annotation

    invoke-interface {p1}, Lz2/oO0Ooooo;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_0

    iget-object p1, p0, Lz2/b0;->OooO0O0:Lz2/d0;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lz2/b0;->OooO00o:Lz2/oO000o00;

    invoke-static {v0, v1}, Lz2/oOO;->OooO0Oo(Landroid/graphics/Bitmap;Lz2/oO000o00;)Lz2/oOO;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Lz2/d0;->OooO00o(Lz2/oO0Ooooo;Lz2/o0O0OOO0;)Lz2/oO0Ooooo;

    move-result-object p1

    return-object p1

    :cond_0
    instance-of v0, v0, Lz2/r;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lz2/b0;->OooO0OO:Lz2/d0;

    invoke-static {p1}, Lz2/b0;->OooO0O0(Lz2/oO0Ooooo;)Lz2/oO0Ooooo;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lz2/d0;->OooO00o(Lz2/oO0Ooooo;Lz2/o0O0OOO0;)Lz2/oO0Ooooo;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
