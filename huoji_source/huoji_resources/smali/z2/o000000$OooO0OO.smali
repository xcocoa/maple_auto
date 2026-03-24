.class public Lz2/o000000$OooO0OO;
.super Ljava/io/FilterInputStream;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/o000000;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OooO0OO"
.end annotation


# instance fields
.field private OoooOoO:I


# direct methods
.method private constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 p1, 0x0

    iput p1, p0, Lz2/o000000$OooO0OO;->OoooOoO:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/io/InputStream;Lz2/o000000$OooO00o;)V
    .locals 0

    invoke-direct {p0, p1}, Lz2/o000000$OooO0OO;-><init>(Ljava/io/InputStream;)V

    return-void
.end method

.method public static synthetic OooOO0(Lz2/o000000$OooO0OO;)I
    .locals 0

    iget p0, p0, Lz2/o000000$OooO0OO;->OoooOoO:I

    return p0
.end method


# virtual methods
.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v1, p0, Lz2/o000000$OooO0OO;->OoooOoO:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lz2/o000000$OooO0OO;->OoooOoO:I

    :cond_0
    return v0
.end method

.method public read([BII)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_0

    iget p2, p0, Lz2/o000000$OooO0OO;->OoooOoO:I

    add-int/2addr p2, p1

    iput p2, p0, Lz2/o000000$OooO0OO;->OoooOoO:I

    :cond_0
    return p1
.end method
