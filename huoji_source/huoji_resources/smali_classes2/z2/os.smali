.class public final Lz2/os;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final OooO0o:Lz2/os;


# instance fields
.field private final OooO00o:[I

.field private final OooO0O0:[I

.field private final OooO0OO:Lz2/ps;

.field private final OooO0Oo:Lz2/ps;

.field private final OooO0o0:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lz2/os;

    const/16 v1, 0x3a1

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lz2/os;-><init>(II)V

    sput-object v0, Lz2/os;->OooO0o:Lz2/os;

    return-void
.end method

.method private constructor <init>(II)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lz2/os;->OooO0o0:I

    new-array v0, p1, [I

    iput-object v0, p0, Lz2/os;->OooO00o:[I

    new-array v0, p1, [I

    iput-object v0, p0, Lz2/os;->OooO0O0:[I

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    :goto_0
    if-ge v2, p1, :cond_0

    iget-object v4, p0, Lz2/os;->OooO00o:[I

    aput v3, v4, v2

    mul-int v3, v3, p2

    rem-int/2addr v3, p1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_1
    add-int/lit8 v2, p1, -0x1

    if-ge p2, v2, :cond_1

    iget-object v2, p0, Lz2/os;->OooO0O0:[I

    iget-object v3, p0, Lz2/os;->OooO00o:[I

    aget v3, v3, p2

    aput p2, v2, v3

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_1
    new-instance p1, Lz2/ps;

    new-array p2, v1, [I

    aput v0, p2, v0

    invoke-direct {p1, p0, p2}, Lz2/ps;-><init>(Lz2/os;[I)V

    iput-object p1, p0, Lz2/os;->OooO0OO:Lz2/ps;

    new-instance p1, Lz2/ps;

    new-array p2, v1, [I

    aput v1, p2, v0

    invoke-direct {p1, p0, p2}, Lz2/ps;-><init>(Lz2/os;[I)V

    iput-object p1, p0, Lz2/os;->OooO0Oo:Lz2/ps;

    return-void
.end method


# virtual methods
.method public final OooO(II)I
    .locals 2

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lz2/os;->OooO00o:[I

    iget-object v1, p0, Lz2/os;->OooO0O0:[I

    aget p1, v1, p1

    aget p2, v1, p2

    add-int/2addr p1, p2

    iget p2, p0, Lz2/os;->OooO0o0:I

    add-int/lit8 p2, p2, -0x1

    rem-int/2addr p1, p2

    aget p1, v0, p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final OooO00o(II)I
    .locals 0

    add-int/2addr p1, p2

    iget p2, p0, Lz2/os;->OooO0o0:I

    rem-int/2addr p1, p2

    return p1
.end method

.method public final OooO0O0(II)Lz2/ps;
    .locals 1

    if-ltz p1, :cond_1

    if-nez p2, :cond_0

    iget-object p1, p0, Lz2/os;->OooO0OO:Lz2/ps;

    return-object p1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    new-array p1, p1, [I

    const/4 v0, 0x0

    aput p2, p1, v0

    new-instance p2, Lz2/ps;

    invoke-direct {p2, p0, p1}, Lz2/ps;-><init>(Lz2/os;[I)V

    return-object p2

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public final OooO0OO(I)I
    .locals 1

    iget-object v0, p0, Lz2/os;->OooO00o:[I

    aget p1, v0, p1

    return p1
.end method

.method public final OooO0Oo()Lz2/ps;
    .locals 1

    iget-object v0, p0, Lz2/os;->OooO0Oo:Lz2/ps;

    return-object v0
.end method

.method public final OooO0o()Lz2/ps;
    .locals 1

    iget-object v0, p0, Lz2/os;->OooO0OO:Lz2/ps;

    return-object v0
.end method

.method public final OooO0o0()I
    .locals 1

    iget v0, p0, Lz2/os;->OooO0o0:I

    return v0
.end method

.method public final OooO0oO(I)I
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lz2/os;->OooO00o:[I

    iget v1, p0, Lz2/os;->OooO0o0:I

    iget-object v2, p0, Lz2/os;->OooO0O0:[I

    aget p1, v2, p1

    sub-int/2addr v1, p1

    add-int/lit8 v1, v1, -0x1

    aget p1, v0, v1

    return p1

    :cond_0
    new-instance p1, Ljava/lang/ArithmeticException;

    invoke-direct {p1}, Ljava/lang/ArithmeticException;-><init>()V

    throw p1
.end method

.method public final OooO0oo(I)I
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lz2/os;->OooO0O0:[I

    aget p1, v0, p1

    return p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public final OooOO0(II)I
    .locals 1

    iget v0, p0, Lz2/os;->OooO0o0:I

    add-int/2addr p1, v0

    sub-int/2addr p1, p2

    rem-int/2addr p1, v0

    return p1
.end method
