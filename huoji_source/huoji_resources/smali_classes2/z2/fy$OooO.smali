.class public final Lz2/fy$OooO;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/fy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "OooO"
.end annotation


# instance fields
.field public final OooO00o:Ljava/lang/String;

.field public final OooO0O0:[J

.field public final OooO0OO:[Ljava/io/File;

.field public final OooO0Oo:[Ljava/io/File;

.field public OooO0o:Lz2/fy$OooO0o;

.field public OooO0o0:Z

.field public OooO0oO:J

.field public final synthetic OooO0oo:Lz2/fy;


# direct methods
.method public constructor <init>(Lz2/fy;Ljava/lang/String;)V
    .locals 6

    iput-object p1, p0, Lz2/fy$OooO;->OooO0oo:Lz2/fy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lz2/fy$OooO;->OooO00o:Ljava/lang/String;

    iget v0, p1, Lz2/fy;->Oooooo0:I

    new-array v1, v0, [J

    iput-object v1, p0, Lz2/fy$OooO;->OooO0O0:[J

    new-array v1, v0, [Ljava/io/File;

    iput-object v1, p0, Lz2/fy$OooO;->OooO0OO:[Ljava/io/File;

    new-array v0, v0, [Ljava/io/File;

    iput-object v0, p0, Lz2/fy$OooO;->OooO0Oo:[Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 p2, 0x2e

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    const/4 v1, 0x0

    :goto_0
    iget v2, p1, Lz2/fy;->Oooooo0:I

    if-ge v1, v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lz2/fy$OooO;->OooO0OO:[Ljava/io/File;

    new-instance v3, Ljava/io/File;

    iget-object v4, p1, Lz2/fy;->OoooOoo:Ljava/io/File;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v3, v2, v1

    const-string v2, ".tmp"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lz2/fy$OooO;->OooO0Oo:[Ljava/io/File;

    new-instance v3, Ljava/io/File;

    iget-object v4, p1, Lz2/fy;->OoooOoo:Ljava/io/File;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v3, v2, v1

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->setLength(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private OooO00o([Ljava/lang/String;)Ljava/io/IOException;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected journal line: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public OooO0O0([Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v0, p1

    iget-object v1, p0, Lz2/fy$OooO;->OooO0oo:Lz2/fy;

    iget v1, v1, Lz2/fy;->Oooooo0:I

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lz2/fy$OooO;->OooO0O0:[J

    aget-object v2, p1, v0

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    aput-wide v2, v1, v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    :catch_0
    invoke-direct {p0, p1}, Lz2/fy$OooO;->OooO00o([Ljava/lang/String;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_1
    invoke-direct {p0, p1}, Lz2/fy$OooO;->OooO00o([Ljava/lang/String;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method

.method public OooO0OO()Lz2/fy$OooOO0;
    .locals 10

    iget-object v0, p0, Lz2/fy$OooO;->OooO0oo:Lz2/fy;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lz2/fy$OooO;->OooO0oo:Lz2/fy;

    iget v0, v0, Lz2/fy;->Oooooo0:I

    new-array v0, v0, [Lz2/e10;

    iget-object v1, p0, Lz2/fy$OooO;->OooO0O0:[J

    invoke-virtual {v1}, [J->clone()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, [J

    const/4 v8, 0x0

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    iget-object v2, p0, Lz2/fy$OooO;->OooO0oo:Lz2/fy;

    iget v3, v2, Lz2/fy;->Oooooo0:I

    if-ge v1, v3, :cond_0

    iget-object v2, v2, Lz2/fy;->OoooOoO:Lz2/oz;

    iget-object v3, p0, Lz2/fy$OooO;->OooO0OO:[Ljava/io/File;

    aget-object v3, v3, v1

    invoke-interface {v2, v3}, Lz2/oz;->OooO00o(Ljava/io/File;)Lz2/e10;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v9, Lz2/fy$OooOO0;

    iget-object v3, p0, Lz2/fy$OooO;->OooO00o:Ljava/lang/String;

    iget-wide v4, p0, Lz2/fy$OooO;->OooO0oO:J

    move-object v1, v9

    move-object v6, v0

    invoke-direct/range {v1 .. v7}, Lz2/fy$OooOO0;-><init>(Lz2/fy;Ljava/lang/String;J[Lz2/e10;[J)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v9

    :catch_0
    nop

    :goto_1
    iget-object v1, p0, Lz2/fy$OooO;->OooO0oo:Lz2/fy;

    iget v2, v1, Lz2/fy;->Oooooo0:I

    if-ge v8, v2, :cond_1

    aget-object v2, v0, v8

    if-eqz v2, :cond_1

    aget-object v1, v0, v8

    invoke-static {v1}, Lz2/zx;->OooO0oO(Ljava/io/Closeable;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_1
    :try_start_1
    invoke-virtual {v1, p0}, Lz2/fy;->o0OOO0o(Lz2/fy$OooO;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v0, 0x0

    return-object v0

    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public OooO0Oo(Lz2/k00;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lz2/fy$OooO;->OooO0O0:[J

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-wide v3, v0, v2

    const/16 v5, 0x20

    invoke-interface {p1, v5}, Lz2/k00;->OooOOOO(I)Lz2/k00;

    move-result-object v5

    invoke-interface {v5, v3, v4}, Lz2/k00;->OoooOoO(J)Lz2/k00;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
