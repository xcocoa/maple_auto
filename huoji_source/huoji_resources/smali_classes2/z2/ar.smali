.class public final Lz2/ar;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final OooO00o:I

.field private final OooO0O0:[I

.field private final OooO0OO:[Lz2/fm;


# direct methods
.method public constructor <init>(I[IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lz2/ar;->OooO00o:I

    iput-object p2, p0, Lz2/ar;->OooO0O0:[I

    const/4 p1, 0x2

    new-array p1, p1, [Lz2/fm;

    new-instance p2, Lz2/fm;

    int-to-float p3, p3

    int-to-float p5, p5

    invoke-direct {p2, p3, p5}, Lz2/fm;-><init>(FF)V

    const/4 p3, 0x0

    aput-object p2, p1, p3

    new-instance p2, Lz2/fm;

    int-to-float p3, p4

    invoke-direct {p2, p3, p5}, Lz2/fm;-><init>(FF)V

    const/4 p3, 0x1

    aput-object p2, p1, p3

    iput-object p1, p0, Lz2/ar;->OooO0OO:[Lz2/fm;

    return-void
.end method


# virtual methods
.method public final OooO00o()[Lz2/fm;
    .locals 1

    iget-object v0, p0, Lz2/ar;->OooO0OO:[Lz2/fm;

    return-object v0
.end method

.method public final OooO0O0()[I
    .locals 1

    iget-object v0, p0, Lz2/ar;->OooO0O0:[I

    return-object v0
.end method

.method public final OooO0OO()I
    .locals 1

    iget v0, p0, Lz2/ar;->OooO00o:I

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lz2/ar;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lz2/ar;

    iget v0, p0, Lz2/ar;->OooO00o:I

    iget p1, p1, Lz2/ar;->OooO00o:I

    if-ne v0, p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 1

    iget v0, p0, Lz2/ar;->OooO00o:I

    return v0
.end method
