.class public Lz2/oOO0OOO;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/oo0OOoo;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lz2/oo0OOoo<",
        "Landroid/graphics/drawable/BitmapDrawable;",
        ">;"
    }
.end annotation


# instance fields
.field private final OooO00o:Lz2/oO000o00;

.field private final OooO0O0:Lz2/oo0OOoo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz2/oo0OOoo<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lz2/oO000o00;Lz2/oo0OOoo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/oO000o00;",
            "Lz2/oo0OOoo<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz2/oOO0OOO;->OooO00o:Lz2/oO000o00;

    iput-object p2, p0, Lz2/oOO0OOO;->OooO0O0:Lz2/oo0OOoo;

    return-void
.end method


# virtual methods
.method public bridge synthetic OooO00o(Ljava/lang/Object;Ljava/io/File;Lz2/o0O0OOO0;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/File;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lz2/o0O0OOO0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lz2/oO0Ooooo;

    invoke-virtual {p0, p1, p2, p3}, Lz2/oOO0OOO;->OooO0OO(Lz2/oO0Ooooo;Ljava/io/File;Lz2/o0O0OOO0;)Z

    move-result p1

    return p1
.end method

.method public OooO0O0(Lz2/o0O0OOO0;)Lcom/bumptech/glide/load/EncodeStrategy;
    .locals 1
    .param p1    # Lz2/o0O0OOO0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lz2/oOO0OOO;->OooO0O0:Lz2/oo0OOoo;

    invoke-interface {v0, p1}, Lz2/oo0OOoo;->OooO0O0(Lz2/o0O0OOO0;)Lcom/bumptech/glide/load/EncodeStrategy;

    move-result-object p1

    return-object p1
.end method

.method public OooO0OO(Lz2/oO0Ooooo;Ljava/io/File;Lz2/o0O0OOO0;)Z
    .locals 3
    .param p1    # Lz2/oO0Ooooo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/File;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lz2/o0O0OOO0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/oO0Ooooo<",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;",
            "Ljava/io/File;",
            "Lz2/o0O0OOO0;",
            ")Z"
        }
    .end annotation

    iget-object v0, p0, Lz2/oOO0OOO;->OooO0O0:Lz2/oo0OOoo;

    new-instance v1, Lz2/oOO;

    invoke-interface {p1}, Lz2/oO0Ooooo;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    iget-object v2, p0, Lz2/oOO0OOO;->OooO00o:Lz2/oO000o00;

    invoke-direct {v1, p1, v2}, Lz2/oOO;-><init>(Landroid/graphics/Bitmap;Lz2/oO000o00;)V

    invoke-interface {v0, v1, p2, p3}, Lz2/o0oO0O0o;->OooO00o(Ljava/lang/Object;Ljava/io/File;Lz2/o0O0OOO0;)Z

    move-result p1

    return p1
.end method
