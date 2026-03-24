.class public final Lz2/w00$OooO0O0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/e10;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz2/w00;->OooOOO0(Ljava/io/InputStream;Lz2/f10;)Lz2/e10;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OoooOoO:Lz2/f10;

.field public final synthetic OoooOoo:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Lz2/f10;Ljava/io/InputStream;)V
    .locals 0

    iput-object p1, p0, Lz2/w00$OooO0O0;->OoooOoO:Lz2/f10;

    iput-object p2, p0, Lz2/w00$OooO0O0;->OoooOoo:Ljava/io/InputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lz2/w00$OooO0O0;->OoooOoo:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public read(Lz2/j00;J)J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_3

    if-nez v2, :cond_0

    return-wide v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lz2/w00$OooO0O0;->OoooOoO:Lz2/f10;

    invoke-virtual {v0}, Lz2/f10;->OooO0oO()V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lz2/j00;->o00000Oo(I)Lz2/b10;

    move-result-object v0

    iget v1, v0, Lz2/b10;->OooO0OO:I

    rsub-int v1, v1, 0x2000

    int-to-long v1, v1

    invoke-static {p2, p3, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    long-to-int p3, p2

    iget-object p2, p0, Lz2/w00$OooO0O0;->OoooOoo:Ljava/io/InputStream;

    iget-object v1, v0, Lz2/b10;->OooO00o:[B

    iget v2, v0, Lz2/b10;->OooO0OO:I

    invoke-virtual {p2, v1, v2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p2

    const/4 p3, -0x1

    if-ne p2, p3, :cond_1

    const-wide/16 p1, -0x1

    return-wide p1

    :cond_1
    iget p3, v0, Lz2/b10;->OooO0OO:I

    add-int/2addr p3, p2

    iput p3, v0, Lz2/b10;->OooO0OO:I

    iget-wide v0, p1, Lz2/j00;->OoooOoo:J

    int-to-long p2, p2

    add-long/2addr v0, p2

    iput-wide v0, p1, Lz2/j00;->OoooOoo:J
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p2

    :catch_0
    move-exception p1

    invoke-static {p1}, Lz2/w00;->OooO0o0(Ljava/lang/AssertionError;)Z

    move-result p2

    if-eqz p2, :cond_2

    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_2
    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "byteCount < 0: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public timeout()Lz2/f10;
    .locals 1

    iget-object v0, p0, Lz2/w00$OooO0O0;->OoooOoO:Lz2/f10;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "source("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lz2/w00$OooO0O0;->OoooOoo:Ljava/io/InputStream;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
