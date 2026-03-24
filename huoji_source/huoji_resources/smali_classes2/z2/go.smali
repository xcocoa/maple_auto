.class public final Lz2/go;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final OooO:I

.field private final OooO00o:[B

.field private OooO0O0:I

.field private final OooO0OO:Ljava/lang/String;

.field private final OooO0Oo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field private OooO0o:Ljava/lang/Integer;

.field private final OooO0o0:Ljava/lang/String;

.field private OooO0oO:Ljava/lang/Integer;

.field private OooO0oo:Ljava/lang/Object;

.field private final OooOO0:I


# direct methods
.method public constructor <init>([BLjava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "[B>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v5, -0x1

    const/4 v6, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lz2/go;-><init>([BLjava/lang/String;Ljava/util/List;Ljava/lang/String;II)V

    return-void
.end method

.method public constructor <init>([BLjava/lang/String;Ljava/util/List;Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "[B>;",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz2/go;->OooO00o:[B

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    array-length p1, p1

    mul-int/lit8 p1, p1, 0x8

    :goto_0
    iput p1, p0, Lz2/go;->OooO0O0:I

    iput-object p2, p0, Lz2/go;->OooO0OO:Ljava/lang/String;

    iput-object p3, p0, Lz2/go;->OooO0Oo:Ljava/util/List;

    iput-object p4, p0, Lz2/go;->OooO0o0:Ljava/lang/String;

    iput p6, p0, Lz2/go;->OooO:I

    iput p5, p0, Lz2/go;->OooOO0:I

    return-void
.end method


# virtual methods
.method public final OooO()I
    .locals 1

    iget v0, p0, Lz2/go;->OooOO0:I

    return v0
.end method

.method public final OooO00o()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    iget-object v0, p0, Lz2/go;->OooO0Oo:Ljava/util/List;

    return-object v0
.end method

.method public final OooO0O0()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lz2/go;->OooO0o0:Ljava/lang/String;

    return-object v0
.end method

.method public final OooO0OO()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lz2/go;->OooO0oO:Ljava/lang/Integer;

    return-object v0
.end method

.method public final OooO0Oo()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lz2/go;->OooO0o:Ljava/lang/Integer;

    return-object v0
.end method

.method public final OooO0o()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lz2/go;->OooO0oo:Ljava/lang/Object;

    return-object v0
.end method

.method public final OooO0o0()I
    .locals 1

    iget v0, p0, Lz2/go;->OooO0O0:I

    return v0
.end method

.method public final OooO0oO()[B
    .locals 1

    iget-object v0, p0, Lz2/go;->OooO00o:[B

    return-object v0
.end method

.method public final OooO0oo()I
    .locals 1

    iget v0, p0, Lz2/go;->OooO:I

    return v0
.end method

.method public final OooOO0()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lz2/go;->OooO0OO:Ljava/lang/String;

    return-object v0
.end method

.method public final OooOO0O()Z
    .locals 1

    iget v0, p0, Lz2/go;->OooO:I

    if-ltz v0, :cond_0

    iget v0, p0, Lz2/go;->OooOO0:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final OooOO0o(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lz2/go;->OooO0oO:Ljava/lang/Integer;

    return-void
.end method

.method public final OooOOO(I)V
    .locals 0

    iput p1, p0, Lz2/go;->OooO0O0:I

    return-void
.end method

.method public final OooOOO0(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lz2/go;->OooO0o:Ljava/lang/Integer;

    return-void
.end method

.method public final OooOOOO(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lz2/go;->OooO0oo:Ljava/lang/Object;

    return-void
.end method
