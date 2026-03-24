.class public Lz2/oOO0OO;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/o0O0OOOo;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<DataType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lz2/o0O0OOOo<",
        "TDataType;",
        "Landroid/graphics/drawable/BitmapDrawable;",
        ">;"
    }
.end annotation


# instance fields
.field private final OooO00o:Lz2/o0O0OOOo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz2/o0O0OOOo<",
            "TDataType;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final OooO0O0:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lz2/o0O0OOOo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lz2/o0O0OOOo<",
            "TDataType;",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lz2/oOO0OO;-><init>(Landroid/content/res/Resources;Lz2/o0O0OOOo;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Lz2/o0O0OOOo;)V
    .locals 0
    .param p1    # Landroid/content/res/Resources;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lz2/o0O0OOOo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Lz2/o0O0OOOo<",
            "TDataType;",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lz2/r2;->OooO0Oo(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/res/Resources;

    iput-object p1, p0, Lz2/oOO0OO;->OooO0O0:Landroid/content/res/Resources;

    invoke-static {p2}, Lz2/r2;->OooO0Oo(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lz2/o0O0OOOo;

    iput-object p1, p0, Lz2/oOO0OO;->OooO00o:Lz2/o0O0OOOo;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Lz2/oO000o00;Lz2/o0O0OOOo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Lz2/oO000o00;",
            "Lz2/o0O0OOOo<",
            "TDataType;",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0, p1, p3}, Lz2/oOO0OO;-><init>(Landroid/content/res/Resources;Lz2/o0O0OOOo;)V

    return-void
.end method


# virtual methods
.method public OooO00o(Ljava/lang/Object;Lz2/o0O0OOO0;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lz2/o0O0OOO0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TDataType;",
            "Lz2/o0O0OOO0;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lz2/oOO0OO;->OooO00o:Lz2/o0O0OOOo;

    invoke-interface {v0, p1, p2}, Lz2/o0O0OOOo;->OooO00o(Ljava/lang/Object;Lz2/o0O0OOO0;)Z

    move-result p1

    return p1
.end method

.method public OooO0O0(Ljava/lang/Object;IILz2/o0O0OOO0;)Lz2/oO0Ooooo;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lz2/o0O0OOO0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TDataType;II",
            "Lz2/o0O0OOO0;",
            ")",
            "Lz2/oO0Ooooo<",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lz2/oOO0OO;->OooO00o:Lz2/o0O0OOOo;

    invoke-interface {v0, p1, p2, p3, p4}, Lz2/o0O0OOOo;->OooO0O0(Ljava/lang/Object;IILz2/o0O0OOO0;)Lz2/oO0Ooooo;

    move-result-object p1

    iget-object p2, p0, Lz2/oOO0OO;->OooO0O0:Landroid/content/res/Resources;

    invoke-static {p2, p1}, Lz2/oo00;->OooO0Oo(Landroid/content/res/Resources;Lz2/oO0Ooooo;)Lz2/oO0Ooooo;

    move-result-object p1

    return-object p1
.end method
