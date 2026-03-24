.class public final Lz2/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/o0O0OOOo;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz2/b$OooO00o;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lz2/o0O0OOOo<",
        "Landroid/graphics/Bitmap;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic OooO00o(Ljava/lang/Object;Lz2/o0O0OOO0;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lz2/o0O0OOO0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lz2/b;->OooO0Oo(Landroid/graphics/Bitmap;Lz2/o0O0OOO0;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic OooO0O0(Ljava/lang/Object;IILz2/o0O0OOO0;)Lz2/oO0Ooooo;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lz2/o0O0OOO0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2, p3, p4}, Lz2/b;->OooO0OO(Landroid/graphics/Bitmap;IILz2/o0O0OOO0;)Lz2/oO0Ooooo;

    move-result-object p1

    return-object p1
.end method

.method public OooO0OO(Landroid/graphics/Bitmap;IILz2/o0O0OOO0;)Lz2/oO0Ooooo;
    .locals 0
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lz2/o0O0OOO0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "II",
            "Lz2/o0O0OOO0;",
            ")",
            "Lz2/oO0Ooooo<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    new-instance p2, Lz2/b$OooO00o;

    invoke-direct {p2, p1}, Lz2/b$OooO00o;-><init>(Landroid/graphics/Bitmap;)V

    return-object p2
.end method

.method public OooO0Oo(Landroid/graphics/Bitmap;Lz2/o0O0OOO0;)Z
    .locals 0
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lz2/o0O0OOO0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 p1, 0x1

    return p1
.end method
