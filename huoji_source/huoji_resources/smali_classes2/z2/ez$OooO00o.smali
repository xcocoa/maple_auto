.class public final Lz2/ez$OooO00o;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/ez;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OooO00o"
.end annotation


# instance fields
.field private final OooO00o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lz2/dz;",
            ">;"
        }
    .end annotation
.end field

.field private final OooO0O0:Lz2/l00;

.field private final OooO0OO:I

.field private OooO0Oo:I

.field public OooO0o:I

.field public OooO0o0:[Lz2/dz;

.field public OooO0oO:I

.field public OooO0oo:I


# direct methods
.method public constructor <init>(IILz2/e10;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lz2/ez$OooO00o;->OooO00o:Ljava/util/List;

    const/16 v0, 0x8

    new-array v0, v0, [Lz2/dz;

    iput-object v0, p0, Lz2/ez$OooO00o;->OooO0o0:[Lz2/dz;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lz2/ez$OooO00o;->OooO0o:I

    const/4 v0, 0x0

    iput v0, p0, Lz2/ez$OooO00o;->OooO0oO:I

    iput v0, p0, Lz2/ez$OooO00o;->OooO0oo:I

    iput p1, p0, Lz2/ez$OooO00o;->OooO0OO:I

    iput p2, p0, Lz2/ez$OooO00o;->OooO0Oo:I

    invoke-static {p3}, Lz2/w00;->OooO0Oo(Lz2/e10;)Lz2/l00;

    move-result-object p1

    iput-object p1, p0, Lz2/ez$OooO00o;->OooO0O0:Lz2/l00;

    return-void
.end method

.method public constructor <init>(ILz2/e10;)V
    .locals 0

    invoke-direct {p0, p1, p1, p2}, Lz2/ez$OooO00o;-><init>(IILz2/e10;)V

    return-void
.end method

.method private OooO00o()V
    .locals 2

    iget v0, p0, Lz2/ez$OooO00o;->OooO0Oo:I

    iget v1, p0, Lz2/ez$OooO00o;->OooO0oo:I

    if-ge v0, v1, :cond_1

    if-nez v0, :cond_0

    invoke-direct {p0}, Lz2/ez$OooO00o;->OooO0O0()V

    goto :goto_0

    :cond_0
    sub-int/2addr v1, v0

    invoke-direct {p0, v1}, Lz2/ez$OooO00o;->OooO0Oo(I)I

    :cond_1
    :goto_0
    return-void
.end method

.method private OooO0O0()V
    .locals 2

    iget-object v0, p0, Lz2/ez$OooO00o;->OooO0o0:[Lz2/dz;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lz2/ez$OooO00o;->OooO0o0:[Lz2/dz;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lz2/ez$OooO00o;->OooO0o:I

    const/4 v0, 0x0

    iput v0, p0, Lz2/ez$OooO00o;->OooO0oO:I

    iput v0, p0, Lz2/ez$OooO00o;->OooO0oo:I

    return-void
.end method

.method private OooO0OO(I)I
    .locals 1

    iget v0, p0, Lz2/ez$OooO00o;->OooO0o:I

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, p1

    return v0
.end method

.method private OooO0Oo(I)I
    .locals 4

    const/4 v0, 0x0

    if-lez p1, :cond_1

    iget-object v1, p0, Lz2/ez$OooO00o;->OooO0o0:[Lz2/dz;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    iget v2, p0, Lz2/ez$OooO00o;->OooO0o:I

    if-lt v1, v2, :cond_0

    if-lez p1, :cond_0

    iget-object v2, p0, Lz2/ez$OooO00o;->OooO0o0:[Lz2/dz;

    aget-object v3, v2, v1

    iget v3, v3, Lz2/dz;->OooO0OO:I

    sub-int/2addr p1, v3

    iget v3, p0, Lz2/ez$OooO00o;->OooO0oo:I

    aget-object v2, v2, v1

    iget v2, v2, Lz2/dz;->OooO0OO:I

    sub-int/2addr v3, v2

    iput v3, p0, Lz2/ez$OooO00o;->OooO0oo:I

    iget v2, p0, Lz2/ez$OooO00o;->OooO0oO:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lz2/ez$OooO00o;->OooO0oO:I

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lz2/ez$OooO00o;->OooO0o0:[Lz2/dz;

    add-int/lit8 v1, v2, 0x1

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v2, v0

    iget v3, p0, Lz2/ez$OooO00o;->OooO0oO:I

    invoke-static {p1, v1, p1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lz2/ez$OooO00o;->OooO0o:I

    add-int/2addr p1, v0

    iput p1, p0, Lz2/ez$OooO00o;->OooO0o:I

    :cond_1
    return v0
.end method

.method private OooO0o(I)Lokio/ByteString;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lz2/ez$OooO00o;->OooO0oo(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lz2/ez;->OooO0o0:[Lz2/dz;

    aget-object p1, v0, p1

    :goto_0
    iget-object p1, p1, Lz2/dz;->OooO00o:Lokio/ByteString;

    return-object p1

    :cond_0
    sget-object v0, Lz2/ez;->OooO0o0:[Lz2/dz;

    array-length v0, v0

    sub-int v0, p1, v0

    invoke-direct {p0, v0}, Lz2/ez$OooO00o;->OooO0OO(I)I

    move-result v0

    if-ltz v0, :cond_1

    iget-object v1, p0, Lz2/ez$OooO00o;->OooO0o0:[Lz2/dz;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-object p1, v1, v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Header index too large "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private OooO0oO(ILz2/dz;)V
    .locals 5

    iget-object v0, p0, Lz2/ez$OooO00o;->OooO00o:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v0, p2, Lz2/dz;->OooO0OO:I

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    iget-object v2, p0, Lz2/ez$OooO00o;->OooO0o0:[Lz2/dz;

    invoke-direct {p0, p1}, Lz2/ez$OooO00o;->OooO0OO(I)I

    move-result v3

    aget-object v2, v2, v3

    iget v2, v2, Lz2/dz;->OooO0OO:I

    sub-int/2addr v0, v2

    :cond_0
    iget v2, p0, Lz2/ez$OooO00o;->OooO0Oo:I

    if-le v0, v2, :cond_1

    invoke-direct {p0}, Lz2/ez$OooO00o;->OooO0O0()V

    return-void

    :cond_1
    iget v3, p0, Lz2/ez$OooO00o;->OooO0oo:I

    add-int/2addr v3, v0

    sub-int/2addr v3, v2

    invoke-direct {p0, v3}, Lz2/ez$OooO00o;->OooO0Oo(I)I

    move-result v2

    if-ne p1, v1, :cond_3

    iget p1, p0, Lz2/ez$OooO00o;->OooO0oO:I

    add-int/lit8 p1, p1, 0x1

    iget-object v1, p0, Lz2/ez$OooO00o;->OooO0o0:[Lz2/dz;

    array-length v2, v1

    if-le p1, v2, :cond_2

    array-length p1, v1

    mul-int/lit8 p1, p1, 0x2

    new-array p1, p1, [Lz2/dz;

    const/4 v2, 0x0

    array-length v3, v1

    array-length v4, v1

    invoke-static {v1, v2, p1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lz2/ez$OooO00o;->OooO0o0:[Lz2/dz;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lz2/ez$OooO00o;->OooO0o:I

    iput-object p1, p0, Lz2/ez$OooO00o;->OooO0o0:[Lz2/dz;

    :cond_2
    iget p1, p0, Lz2/ez$OooO00o;->OooO0o:I

    add-int/lit8 v1, p1, -0x1

    iput v1, p0, Lz2/ez$OooO00o;->OooO0o:I

    iget-object v1, p0, Lz2/ez$OooO00o;->OooO0o0:[Lz2/dz;

    aput-object p2, v1, p1

    iget p1, p0, Lz2/ez$OooO00o;->OooO0oO:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lz2/ez$OooO00o;->OooO0oO:I

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1}, Lz2/ez$OooO00o;->OooO0OO(I)I

    move-result v1

    add-int/2addr v1, v2

    add-int/2addr p1, v1

    iget-object v1, p0, Lz2/ez$OooO00o;->OooO0o0:[Lz2/dz;

    aput-object p2, v1, p1

    :goto_0
    iget p1, p0, Lz2/ez$OooO00o;->OooO0oo:I

    add-int/2addr p1, v0

    iput p1, p0, Lz2/ez$OooO00o;->OooO0oo:I

    return-void
.end method

.method private OooO0oo(I)Z
    .locals 2

    const/4 v0, 0x1

    if-ltz p1, :cond_0

    sget-object v1, Lz2/ez;->OooO0o0:[Lz2/dz;

    array-length v1, v1

    sub-int/2addr v1, v0

    if-gt p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private OooOO0()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lz2/ez$OooO00o;->OooO0O0:Lz2/l00;

    invoke-interface {v0}, Lz2/l00;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method private OooOOO0(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lz2/ez$OooO00o;->OooO0oo(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lz2/ez;->OooO0o0:[Lz2/dz;

    aget-object p1, v0, p1

    iget-object v0, p0, Lz2/ez$OooO00o;->OooO00o:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    sget-object v0, Lz2/ez;->OooO0o0:[Lz2/dz;

    array-length v0, v0

    sub-int v0, p1, v0

    invoke-direct {p0, v0}, Lz2/ez$OooO00o;->OooO0OO(I)I

    move-result v0

    if-ltz v0, :cond_1

    iget-object v1, p0, Lz2/ez$OooO00o;->OooO0o0:[Lz2/dz;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    iget-object p1, p0, Lz2/ez$OooO00o;->OooO00o:Ljava/util/List;

    aget-object v0, v1, v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Header index too large "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private OooOOOO(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lz2/ez$OooO00o;->OooO0o(I)Lokio/ByteString;

    move-result-object p1

    invoke-virtual {p0}, Lz2/ez$OooO00o;->OooOO0O()Lokio/ByteString;

    move-result-object v0

    new-instance v1, Lz2/dz;

    invoke-direct {v1, p1, v0}, Lz2/dz;-><init>(Lokio/ByteString;Lokio/ByteString;)V

    const/4 p1, -0x1

    invoke-direct {p0, p1, v1}, Lz2/ez$OooO00o;->OooO0oO(ILz2/dz;)V

    return-void
.end method

.method private OooOOOo()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lz2/ez$OooO00o;->OooOO0O()Lokio/ByteString;

    move-result-object v0

    invoke-static {v0}, Lz2/ez;->OooO00o(Lokio/ByteString;)Lokio/ByteString;

    move-result-object v0

    invoke-virtual {p0}, Lz2/ez$OooO00o;->OooOO0O()Lokio/ByteString;

    move-result-object v1

    new-instance v2, Lz2/dz;

    invoke-direct {v2, v0, v1}, Lz2/dz;-><init>(Lokio/ByteString;Lokio/ByteString;)V

    const/4 v0, -0x1

    invoke-direct {p0, v0, v2}, Lz2/ez$OooO00o;->OooO0oO(ILz2/dz;)V

    return-void
.end method

.method private OooOOo()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lz2/ez$OooO00o;->OooOO0O()Lokio/ByteString;

    move-result-object v0

    invoke-static {v0}, Lz2/ez;->OooO00o(Lokio/ByteString;)Lokio/ByteString;

    move-result-object v0

    invoke-virtual {p0}, Lz2/ez$OooO00o;->OooOO0O()Lokio/ByteString;

    move-result-object v1

    iget-object v2, p0, Lz2/ez$OooO00o;->OooO00o:Ljava/util/List;

    new-instance v3, Lz2/dz;

    invoke-direct {v3, v0, v1}, Lz2/dz;-><init>(Lokio/ByteString;Lokio/ByteString;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private OooOOo0(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lz2/ez$OooO00o;->OooO0o(I)Lokio/ByteString;

    move-result-object p1

    invoke-virtual {p0}, Lz2/ez$OooO00o;->OooOO0O()Lokio/ByteString;

    move-result-object v0

    iget-object v1, p0, Lz2/ez$OooO00o;->OooO00o:Ljava/util/List;

    new-instance v2, Lz2/dz;

    invoke-direct {v2, p1, v0}, Lz2/dz;-><init>(Lokio/ByteString;Lokio/ByteString;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public OooO()I
    .locals 1

    iget v0, p0, Lz2/ez$OooO00o;->OooO0Oo:I

    return v0
.end method

.method public OooO0o0()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lz2/dz;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lz2/ez$OooO00o;->OooO00o:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lz2/ez$OooO00o;->OooO00o:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    return-object v0
.end method

.method public OooOO0O()Lokio/ByteString;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lz2/ez$OooO00o;->OooOO0()I

    move-result v0

    and-int/lit16 v1, v0, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x7f

    invoke-virtual {p0, v0, v2}, Lz2/ez$OooO00o;->OooOOO(II)I

    move-result v0

    if-eqz v1, :cond_1

    invoke-static {}, Lz2/lz;->OooO0o()Lz2/lz;

    move-result-object v1

    iget-object v2, p0, Lz2/ez$OooO00o;->OooO0O0:Lz2/l00;

    int-to-long v3, v0

    invoke-interface {v2, v3, v4}, Lz2/l00;->Oooo0oO(J)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lz2/lz;->OooO0OO([B)[B

    move-result-object v0

    invoke-static {v0}, Lokio/ByteString;->of([B)Lokio/ByteString;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v1, p0, Lz2/ez$OooO00o;->OooO0O0:Lz2/l00;

    int-to-long v2, v0

    invoke-interface {v1, v2, v3}, Lz2/l00;->OooO0Oo(J)Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public OooOO0o()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    iget-object v0, p0, Lz2/ez$OooO00o;->OooO0O0:Lz2/l00;

    invoke-interface {v0}, Lz2/l00;->OooOOO()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lz2/ez$OooO00o;->OooO0O0:Lz2/l00;

    invoke-interface {v0}, Lz2/l00;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x80

    if-eq v0, v1, :cond_7

    and-int/lit16 v2, v0, 0x80

    if-ne v2, v1, :cond_0

    const/16 v1, 0x7f

    invoke-virtual {p0, v0, v1}, Lz2/ez$OooO00o;->OooOOO(II)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lz2/ez$OooO00o;->OooOOO0(I)V

    goto :goto_0

    :cond_0
    const/16 v1, 0x40

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lz2/ez$OooO00o;->OooOOOo()V

    goto :goto_0

    :cond_1
    and-int/lit8 v2, v0, 0x40

    if-ne v2, v1, :cond_2

    const/16 v1, 0x3f

    invoke-virtual {p0, v0, v1}, Lz2/ez$OooO00o;->OooOOO(II)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lz2/ez$OooO00o;->OooOOOO(I)V

    goto :goto_0

    :cond_2
    and-int/lit8 v1, v0, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_4

    const/16 v1, 0x1f

    invoke-virtual {p0, v0, v1}, Lz2/ez$OooO00o;->OooOOO(II)I

    move-result v0

    iput v0, p0, Lz2/ez$OooO00o;->OooO0Oo:I

    if-ltz v0, :cond_3

    iget v1, p0, Lz2/ez$OooO00o;->OooO0OO:I

    if-gt v0, v1, :cond_3

    invoke-direct {p0}, Lz2/ez$OooO00o;->OooO00o()V

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid dynamic table size update "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lz2/ez$OooO00o;->OooO0Oo:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    const/16 v1, 0x10

    if-eq v0, v1, :cond_6

    if-nez v0, :cond_5

    goto :goto_1

    :cond_5
    const/16 v1, 0xf

    invoke-virtual {p0, v0, v1}, Lz2/ez$OooO00o;->OooOOO(II)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lz2/ez$OooO00o;->OooOOo0(I)V

    goto :goto_0

    :cond_6
    :goto_1
    invoke-direct {p0}, Lz2/ez$OooO00o;->OooOOo()V

    goto/16 :goto_0

    :cond_7
    new-instance v0, Ljava/io/IOException;

    const-string v1, "index == 0"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    return-void
.end method

.method public OooOOO(II)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/2addr p1, p2

    if-ge p1, p2, :cond_0

    return p1

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0}, Lz2/ez$OooO00o;->OooOO0()I

    move-result v0

    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_1

    and-int/lit8 v0, v0, 0x7f

    shl-int/2addr v0, p1

    add-int/2addr p2, v0

    add-int/lit8 p1, p1, 0x7

    goto :goto_0

    :cond_1
    shl-int p1, v0, p1

    add-int/2addr p2, p1

    return p2
.end method
