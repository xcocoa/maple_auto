.class public final Lz2/w;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/o0O0OOOo;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lz2/o0O0OOOo<",
        "Lz2/o0O00OO;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final OooO00o:Lz2/oO000o00;


# direct methods
.method public constructor <init>(Lz2/oO000o00;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz2/w;->OooO00o:Lz2/oO000o00;

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

    check-cast p1, Lz2/o0O00OO;

    invoke-virtual {p0, p1, p2}, Lz2/w;->OooO0Oo(Lz2/o0O00OO;Lz2/o0O0OOO0;)Z

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

    check-cast p1, Lz2/o0O00OO;

    invoke-virtual {p0, p1, p2, p3, p4}, Lz2/w;->OooO0OO(Lz2/o0O00OO;IILz2/o0O0OOO0;)Lz2/oO0Ooooo;

    move-result-object p1

    return-object p1
.end method

.method public OooO0OO(Lz2/o0O00OO;IILz2/o0O0OOO0;)Lz2/oO0Ooooo;
    .locals 0
    .param p1    # Lz2/o0O00OO;
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
            "Lz2/o0O00OO;",
            "II",
            "Lz2/o0O0OOO0;",
            ")",
            "Lz2/oO0Ooooo<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    invoke-interface {p1}, Lz2/o0O00OO;->OooO00o()Landroid/graphics/Bitmap;

    move-result-object p1

    iget-object p2, p0, Lz2/w;->OooO00o:Lz2/oO000o00;

    invoke-static {p1, p2}, Lz2/oOO;->OooO0Oo(Landroid/graphics/Bitmap;Lz2/oO000o00;)Lz2/oOO;

    move-result-object p1

    return-object p1
.end method

.method public OooO0Oo(Lz2/o0O00OO;Lz2/o0O0OOO0;)Z
    .locals 0
    .param p1    # Lz2/o0O00OO;
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
