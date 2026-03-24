.class public Lz2/js;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final OooO0OO:I = 0x5


# instance fields
.field private final OooO00o:Lz2/gs;

.field private final OooO0O0:[Lz2/hs;


# direct methods
.method public constructor <init>(Lz2/gs;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lz2/gs;

    invoke-direct {v0, p1}, Lz2/gs;-><init>(Lz2/gs;)V

    iput-object v0, p0, Lz2/js;->OooO00o:Lz2/gs;

    invoke-virtual {p1}, Lz2/gs;->OooO0o0()I

    move-result v0

    invoke-virtual {p1}, Lz2/gs;->OooO0oO()I

    move-result p1

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x1

    new-array p1, v0, [Lz2/hs;

    iput-object p1, p0, Lz2/js;->OooO0O0:[Lz2/hs;

    return-void
.end method


# virtual methods
.method public final OooO00o()Lz2/gs;
    .locals 1

    iget-object v0, p0, Lz2/js;->OooO00o:Lz2/gs;

    return-object v0
.end method

.method public final OooO0O0(I)Lz2/hs;
    .locals 1

    iget-object v0, p0, Lz2/js;->OooO0O0:[Lz2/hs;

    invoke-virtual {p0, p1}, Lz2/js;->OooO0o0(I)I

    move-result p1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final OooO0OO(I)Lz2/hs;
    .locals 4

    invoke-virtual {p0, p1}, Lz2/js;->OooO0O0(I)Lz2/hs;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_3

    invoke-virtual {p0, p1}, Lz2/js;->OooO0o0(I)I

    move-result v1

    sub-int/2addr v1, v0

    if-ltz v1, :cond_1

    iget-object v2, p0, Lz2/js;->OooO0O0:[Lz2/hs;

    aget-object v1, v2, v1

    if-eqz v1, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {p0, p1}, Lz2/js;->OooO0o0(I)I

    move-result v1

    add-int/2addr v1, v0

    iget-object v2, p0, Lz2/js;->OooO0O0:[Lz2/hs;

    array-length v3, v2

    if-ge v1, v3, :cond_2

    aget-object v1, v2, v1

    if-eqz v1, :cond_2

    return-object v1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public final OooO0Oo()[Lz2/hs;
    .locals 1

    iget-object v0, p0, Lz2/js;->OooO0O0:[Lz2/hs;

    return-object v0
.end method

.method public final OooO0o(ILz2/hs;)V
    .locals 1

    iget-object v0, p0, Lz2/js;->OooO0O0:[Lz2/hs;

    invoke-virtual {p0, p1}, Lz2/js;->OooO0o0(I)I

    move-result p1

    aput-object p2, v0, p1

    return-void
.end method

.method public final OooO0o0(I)I
    .locals 1

    iget-object v0, p0, Lz2/js;->OooO00o:Lz2/gs;

    invoke-virtual {v0}, Lz2/gs;->OooO0oO()I

    move-result v0

    sub-int/2addr p1, v0

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 11

    new-instance v0, Ljava/util/Formatter;

    invoke-direct {v0}, Ljava/util/Formatter;-><init>()V

    :try_start_0
    iget-object v1, p0, Lz2/js;->OooO0O0:[Lz2/hs;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v6, v1, v4

    const/4 v7, 0x1

    if-nez v6, :cond_0

    const-string v6, "%3d:    |   %n"

    new-array v7, v7, [Ljava/lang/Object;

    add-int/lit8 v8, v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v7, v3

    invoke-virtual {v0, v6, v7}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move v5, v8

    goto :goto_1

    :cond_0
    const-string v8, "%3d: %3d|%3d%n"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    add-int/lit8 v10, v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v9, v3

    invoke-virtual {v6}, Lz2/hs;->OooO0OO()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v9, v7

    const/4 v5, 0x2

    invoke-virtual {v6}, Lz2/hs;->OooO0o0()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v9, v5

    invoke-virtual {v0, v8, v9}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move v5, v10

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/util/Formatter;->close()V

    return-object v1

    :catchall_0
    move-exception v1

    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v2

    :try_start_2
    invoke-virtual {v0}, Ljava/util/Formatter;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v2
.end method
