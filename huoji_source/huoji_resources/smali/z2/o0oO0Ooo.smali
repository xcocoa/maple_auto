.class public Lz2/o0oO0Ooo;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final OooOOO:I = 0x0

.field public static final OooOOOO:I = -0x1


# instance fields
.field public OooO:I

.field public OooO00o:[I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field public OooO0O0:I

.field public OooO0OO:I

.field public OooO0Oo:Lz2/o0O00OOO;

.field public OooO0o:I

.field public final OooO0o0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lz2/o0O00OOO;",
            ">;"
        }
    .end annotation
.end field

.field public OooO0oO:I

.field public OooO0oo:Z

.field public OooOO0:I

.field public OooOO0O:I

.field public OooOO0o:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field public OooOOO0:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lz2/o0oO0Ooo;->OooO00o:[I

    const/4 v0, 0x0

    iput v0, p0, Lz2/o0oO0Ooo;->OooO0O0:I

    iput v0, p0, Lz2/o0oO0Ooo;->OooO0OO:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lz2/o0oO0Ooo;->OooO0o0:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Lz2/o0oO0Ooo;->OooOOO0:I

    return-void
.end method


# virtual methods
.method public OooO00o()I
    .locals 1

    iget v0, p0, Lz2/o0oO0Ooo;->OooO0oO:I

    return v0
.end method

.method public OooO0O0()I
    .locals 1

    iget v0, p0, Lz2/o0oO0Ooo;->OooO0OO:I

    return v0
.end method

.method public OooO0OO()I
    .locals 1

    iget v0, p0, Lz2/o0oO0Ooo;->OooO0O0:I

    return v0
.end method

.method public OooO0Oo()I
    .locals 1

    iget v0, p0, Lz2/o0oO0Ooo;->OooO0o:I

    return v0
.end method
