.class public final Lz2/gt$OooO0O0;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/gt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OooO0O0"
.end annotation


# instance fields
.field private final OooO00o:I

.field private final OooO0O0:[Lz2/gt$OooO00o;


# direct methods
.method public varargs constructor <init>(I[Lz2/gt$OooO00o;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lz2/gt$OooO0O0;->OooO00o:I

    iput-object p2, p0, Lz2/gt$OooO0O0;->OooO0O0:[Lz2/gt$OooO00o;

    return-void
.end method


# virtual methods
.method public final OooO00o()[Lz2/gt$OooO00o;
    .locals 1

    iget-object v0, p0, Lz2/gt$OooO0O0;->OooO0O0:[Lz2/gt$OooO00o;

    return-object v0
.end method

.method public final OooO0O0()I
    .locals 1

    iget v0, p0, Lz2/gt$OooO0O0;->OooO00o:I

    return v0
.end method

.method public final OooO0OO()I
    .locals 5

    iget-object v0, p0, Lz2/gt$OooO0O0;->OooO0O0:[Lz2/gt$OooO00o;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v4, v0, v2

    invoke-virtual {v4}, Lz2/gt$OooO00o;->OooO00o()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v3
.end method

.method public final OooO0Oo()I
    .locals 2

    iget v0, p0, Lz2/gt$OooO0O0;->OooO00o:I

    invoke-virtual {p0}, Lz2/gt$OooO0O0;->OooO0OO()I

    move-result v1

    mul-int v0, v0, v1

    return v0
.end method
