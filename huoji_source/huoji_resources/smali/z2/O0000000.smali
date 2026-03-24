.class public Lz2/O0000000;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/o0O0OOOo;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lz2/o0O0OOOo<",
        "Landroid/net/Uri;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final OooO00o:Lz2/k;

.field private final OooO0O0:Lz2/oO000o00;


# direct methods
.method public constructor <init>(Lz2/k;Lz2/oO000o00;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz2/O0000000;->OooO00o:Lz2/k;

    iput-object p2, p0, Lz2/O0000000;->OooO0O0:Lz2/oO000o00;

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

    check-cast p1, Landroid/net/Uri;

    invoke-virtual {p0, p1, p2}, Lz2/O0000000;->OooO0Oo(Landroid/net/Uri;Lz2/o0O0OOO0;)Z

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
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p1, Landroid/net/Uri;

    invoke-virtual {p0, p1, p2, p3, p4}, Lz2/O0000000;->OooO0OO(Landroid/net/Uri;IILz2/o0O0OOO0;)Lz2/oO0Ooooo;

    move-result-object p1

    return-object p1
.end method

.method public OooO0OO(Landroid/net/Uri;IILz2/o0O0OOO0;)Lz2/oO0Ooooo;
    .locals 1
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lz2/o0O0OOO0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "II",
            "Lz2/o0O0OOO0;",
            ")",
            "Lz2/oO0Ooooo<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lz2/O0000000;->OooO00o:Lz2/k;

    invoke-virtual {v0, p1, p2, p3, p4}, Lz2/k;->OooO0OO(Landroid/net/Uri;IILz2/o0O0OOO0;)Lz2/oO0Ooooo;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-interface {p1}, Lz2/oO0Ooooo;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/Drawable;

    iget-object p4, p0, Lz2/O0000000;->OooO0O0:Lz2/oO000o00;

    invoke-static {p4, p1, p2, p3}, Lz2/oOOOOo0O;->OooO00o(Lz2/oO000o00;Landroid/graphics/drawable/Drawable;II)Lz2/oO0Ooooo;

    move-result-object p1

    return-object p1
.end method

.method public OooO0Oo(Landroid/net/Uri;Lz2/o0O0OOO0;)Z
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lz2/o0O0OOO0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.resource"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
