.class public final Lz2/w00$OooO00o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/d10;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz2/w00;->OooO0oo(Ljava/io/OutputStream;Lz2/f10;)Lz2/d10;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OoooOoO:Lz2/f10;

.field public final synthetic OoooOoo:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Lz2/f10;Ljava/io/OutputStream;)V
    .locals 0

    iput-object p1, p0, Lz2/w00$OooO00o;->OoooOoO:Lz2/f10;

    iput-object p2, p0, Lz2/w00$OooO00o;->OoooOoo:Ljava/io/OutputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OooOooO(Lz2/j00;J)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p1, Lz2/j00;->OoooOoo:J

    const-wide/16 v2, 0x0

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lz2/h10;->OooO0O0(JJJ)V

    :cond_0
    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_1

    iget-object v0, p0, Lz2/w00$OooO00o;->OoooOoO:Lz2/f10;

    invoke-virtual {v0}, Lz2/f10;->OooO0oO()V

    iget-object v0, p1, Lz2/j00;->OoooOoO:Lz2/b10;

    iget v1, v0, Lz2/b10;->OooO0OO:I

    iget v2, v0, Lz2/b10;->OooO0O0:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    invoke-static {p2, p3, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v2, v1

    iget-object v1, p0, Lz2/w00$OooO00o;->OoooOoo:Ljava/io/OutputStream;

    iget-object v3, v0, Lz2/b10;->OooO00o:[B

    iget v4, v0, Lz2/b10;->OooO0O0:I

    invoke-virtual {v1, v3, v4, v2}, Ljava/io/OutputStream;->write([BII)V

    iget v1, v0, Lz2/b10;->OooO0O0:I

    add-int/2addr v1, v2

    iput v1, v0, Lz2/b10;->OooO0O0:I

    int-to-long v2, v2

    sub-long/2addr p2, v2

    iget-wide v4, p1, Lz2/j00;->OoooOoo:J

    sub-long/2addr v4, v2

    iput-wide v4, p1, Lz2/j00;->OoooOoo:J

    iget v2, v0, Lz2/b10;->OooO0OO:I

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Lz2/b10;->OooO0O0()Lz2/b10;

    move-result-object v1

    iput-object v1, p1, Lz2/j00;->OoooOoO:Lz2/b10;

    invoke-static {v0}, Lz2/c10;->OooO00o(Lz2/b10;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lz2/w00$OooO00o;->OoooOoo:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lz2/w00$OooO00o;->OoooOoo:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method public timeout()Lz2/f10;
    .locals 1

    iget-object v0, p0, Lz2/w00$OooO00o;->OoooOoO:Lz2/f10;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sink("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lz2/w00$OooO00o;->OoooOoo:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
