.class public Lz2/vv;
.super Ljava/io/OutputStream;
.source ""


# instance fields
.field private OoooOoO:Ljava/io/OutputStream;

.field private OoooOoo:I

.field private Ooooo00:I

.field private Ooooo0o:I

.field private OooooO0:I


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1

    const/16 v0, 0x4c

    invoke-direct {p0, p1, v0}, Lz2/vv;-><init>(Ljava/io/OutputStream;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;I)V
    .locals 1

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lz2/vv;->OoooOoO:Ljava/io/OutputStream;

    const/4 v0, 0x0

    iput v0, p0, Lz2/vv;->OoooOoo:I

    iput v0, p0, Lz2/vv;->Ooooo00:I

    iput v0, p0, Lz2/vv;->Ooooo0o:I

    iput v0, p0, Lz2/vv;->OooooO0:I

    iput-object p1, p0, Lz2/vv;->OoooOoO:Ljava/io/OutputStream;

    iput p2, p0, Lz2/vv;->OooooO0:I

    return-void
.end method


# virtual methods
.method public OooOO0()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lz2/vv;->Ooooo00:I

    if-lez v0, :cond_3

    iget v0, p0, Lz2/vv;->OooooO0:I

    const/4 v1, 0x0

    if-lez v0, :cond_0

    iget v2, p0, Lz2/vv;->Ooooo0o:I

    if-ne v2, v0, :cond_0

    iget-object v0, p0, Lz2/vv;->OoooOoO:Ljava/io/OutputStream;

    const-string v2, "\r\n"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write([B)V

    iput v1, p0, Lz2/vv;->Ooooo0o:I

    :cond_0
    sget-object v0, Lz2/wv;->OooO00o:Ljava/lang/String;

    iget v2, p0, Lz2/vv;->OoooOoo:I

    shl-int/lit8 v2, v2, 0x8

    ushr-int/lit8 v2, v2, 0x1a

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    sget-object v2, Lz2/wv;->OooO00o:Ljava/lang/String;

    iget v3, p0, Lz2/vv;->OoooOoo:I

    shl-int/lit8 v3, v3, 0xe

    ushr-int/lit8 v3, v3, 0x1a

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    iget v3, p0, Lz2/vv;->Ooooo00:I

    const/4 v4, 0x2

    if-ge v3, v4, :cond_1

    sget-char v3, Lz2/wv;->OooO0O0:C

    goto :goto_0

    :cond_1
    sget-object v3, Lz2/wv;->OooO00o:Ljava/lang/String;

    iget v4, p0, Lz2/vv;->OoooOoo:I

    shl-int/lit8 v4, v4, 0x14

    ushr-int/lit8 v4, v4, 0x1a

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    :goto_0
    iget v4, p0, Lz2/vv;->Ooooo00:I

    const/4 v5, 0x3

    if-ge v4, v5, :cond_2

    sget-char v4, Lz2/wv;->OooO0O0:C

    goto :goto_1

    :cond_2
    sget-object v4, Lz2/wv;->OooO00o:Ljava/lang/String;

    iget v5, p0, Lz2/vv;->OoooOoo:I

    shl-int/lit8 v5, v5, 0x1a

    ushr-int/lit8 v5, v5, 0x1a

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    :goto_1
    iget-object v5, p0, Lz2/vv;->OoooOoO:Ljava/io/OutputStream;

    invoke-virtual {v5, v0}, Ljava/io/OutputStream;->write(I)V

    iget-object v0, p0, Lz2/vv;->OoooOoO:Ljava/io/OutputStream;

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write(I)V

    iget-object v0, p0, Lz2/vv;->OoooOoO:Ljava/io/OutputStream;

    invoke-virtual {v0, v3}, Ljava/io/OutputStream;->write(I)V

    iget-object v0, p0, Lz2/vv;->OoooOoO:Ljava/io/OutputStream;

    invoke-virtual {v0, v4}, Ljava/io/OutputStream;->write(I)V

    iget v0, p0, Lz2/vv;->Ooooo0o:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lz2/vv;->Ooooo0o:I

    iput v1, p0, Lz2/vv;->Ooooo00:I

    iput v1, p0, Lz2/vv;->OoooOoo:I

    :cond_3
    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lz2/vv;->OooOO0()V

    iget-object v0, p0, Lz2/vv;->OoooOoO:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method public write(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/lit16 p1, p1, 0xff

    iget v0, p0, Lz2/vv;->Ooooo00:I

    mul-int/lit8 v1, v0, 0x8

    rsub-int/lit8 v1, v1, 0x10

    shl-int/2addr p1, v1

    iget v1, p0, Lz2/vv;->OoooOoo:I

    or-int/2addr p1, v1

    iput p1, p0, Lz2/vv;->OoooOoo:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lz2/vv;->Ooooo00:I

    const/4 p1, 0x3

    if-ne v0, p1, :cond_0

    invoke-virtual {p0}, Lz2/vv;->OooOO0()V

    :cond_0
    return-void
.end method
