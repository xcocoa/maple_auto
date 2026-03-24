.class public Lmobi/oneway/export/g/d;
.super Ljava/io/OutputStream;
.source ""


# instance fields
.field private a:Ljava/io/OutputStream;

.field private b:I

.field private c:I

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1

    const/16 v0, 0x4c

    invoke-direct {p0, p1, v0}, Lmobi/oneway/export/g/d;-><init>(Ljava/io/OutputStream;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;I)V
    .locals 1

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lmobi/oneway/export/g/d;->a:Ljava/io/OutputStream;

    const/4 v0, 0x0

    iput v0, p0, Lmobi/oneway/export/g/d;->b:I

    iput v0, p0, Lmobi/oneway/export/g/d;->c:I

    iput v0, p0, Lmobi/oneway/export/g/d;->d:I

    iput v0, p0, Lmobi/oneway/export/g/d;->e:I

    iput-object p1, p0, Lmobi/oneway/export/g/d;->a:Ljava/io/OutputStream;

    iput p2, p0, Lmobi/oneway/export/g/d;->e:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    iget v0, p0, Lmobi/oneway/export/g/d;->c:I

    if-gtz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lmobi/oneway/export/g/d;->e:I

    const/4 v1, 0x0

    if-lez v0, :cond_1

    iget v2, p0, Lmobi/oneway/export/g/d;->d:I

    if-ne v2, v0, :cond_1

    iget-object v0, p0, Lmobi/oneway/export/g/d;->a:Ljava/io/OutputStream;

    const-string v2, "\r\n"

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write([B)V

    iput v1, p0, Lmobi/oneway/export/g/d;->d:I

    :cond_1
    sget-object v0, Lmobi/oneway/export/g/q;->a:Ljava/lang/String;

    iget v2, p0, Lmobi/oneway/export/g/d;->b:I

    shl-int/lit8 v2, v2, 0x8

    ushr-int/lit8 v2, v2, 0x1a

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    sget-object v2, Lmobi/oneway/export/g/q;->a:Ljava/lang/String;

    iget v3, p0, Lmobi/oneway/export/g/d;->b:I

    shl-int/lit8 v3, v3, 0xe

    ushr-int/lit8 v3, v3, 0x1a

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    iget v3, p0, Lmobi/oneway/export/g/d;->c:I

    const/4 v4, 0x2

    if-ge v3, v4, :cond_2

    sget-char v3, Lmobi/oneway/export/g/q;->b:C

    goto :goto_0

    :cond_2
    sget-object v3, Lmobi/oneway/export/g/q;->a:Ljava/lang/String;

    iget v4, p0, Lmobi/oneway/export/g/d;->b:I

    shl-int/lit8 v4, v4, 0x14

    ushr-int/lit8 v4, v4, 0x1a

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    :goto_0
    iget v4, p0, Lmobi/oneway/export/g/d;->c:I

    const/4 v5, 0x3

    if-ge v4, v5, :cond_3

    sget-char v4, Lmobi/oneway/export/g/q;->b:C

    goto :goto_1

    :cond_3
    sget-object v4, Lmobi/oneway/export/g/q;->a:Ljava/lang/String;

    iget v5, p0, Lmobi/oneway/export/g/d;->b:I

    shl-int/lit8 v5, v5, 0x1a

    ushr-int/lit8 v5, v5, 0x1a

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    :goto_1
    iget-object v5, p0, Lmobi/oneway/export/g/d;->a:Ljava/io/OutputStream;

    invoke-virtual {v5, v0}, Ljava/io/OutputStream;->write(I)V

    iget-object v0, p0, Lmobi/oneway/export/g/d;->a:Ljava/io/OutputStream;

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write(I)V

    iget-object v0, p0, Lmobi/oneway/export/g/d;->a:Ljava/io/OutputStream;

    invoke-virtual {v0, v3}, Ljava/io/OutputStream;->write(I)V

    iget-object v0, p0, Lmobi/oneway/export/g/d;->a:Ljava/io/OutputStream;

    invoke-virtual {v0, v4}, Ljava/io/OutputStream;->write(I)V

    iget v0, p0, Lmobi/oneway/export/g/d;->d:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lmobi/oneway/export/g/d;->d:I

    iput v1, p0, Lmobi/oneway/export/g/d;->c:I

    iput v1, p0, Lmobi/oneway/export/g/d;->b:I

    return-void
.end method

.method public close()V
    .locals 1

    invoke-virtual {p0}, Lmobi/oneway/export/g/d;->a()V

    iget-object v0, p0, Lmobi/oneway/export/g/d;->a:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method public write(I)V
    .locals 2

    and-int/lit16 p1, p1, 0xff

    iget v0, p0, Lmobi/oneway/export/g/d;->c:I

    mul-int/lit8 v1, v0, 0x8

    rsub-int/lit8 v1, v1, 0x10

    shl-int/2addr p1, v1

    iget v1, p0, Lmobi/oneway/export/g/d;->b:I

    or-int/2addr p1, v1

    iput p1, p0, Lmobi/oneway/export/g/d;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmobi/oneway/export/g/d;->c:I

    const/4 p1, 0x3

    if-ne v0, p1, :cond_0

    invoke-virtual {p0}, Lmobi/oneway/export/g/d;->a()V

    :cond_0
    return-void
.end method
