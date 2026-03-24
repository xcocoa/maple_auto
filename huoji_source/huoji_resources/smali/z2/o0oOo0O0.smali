.class public final Lz2/o0oOo0O0;
.super Ljava/io/OutputStream;
.source ""


# instance fields
.field private final OoooOoO:Ljava/io/OutputStream;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private OoooOoo:[B

.field private Ooooo00:Lz2/oO0OOo0o;

.field private Ooooo0o:I


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Lz2/oO0OOo0o;)V
    .locals 1
    .param p1    # Ljava/io/OutputStream;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lz2/oO0OOo0o;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/high16 v0, 0x10000

    invoke-direct {p0, p1, p2, v0}, Lz2/o0oOo0O0;-><init>(Ljava/io/OutputStream;Lz2/oO0OOo0o;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Lz2/oO0OOo0o;I)V
    .locals 0
    .param p1    # Ljava/io/OutputStream;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    iput-object p1, p0, Lz2/o0oOo0O0;->OoooOoO:Ljava/io/OutputStream;

    iput-object p2, p0, Lz2/o0oOo0O0;->Ooooo00:Lz2/oO0OOo0o;

    const-class p1, [B

    invoke-interface {p2, p3, p1}, Lz2/oO0OOo0o;->OooO0o0(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lz2/o0oOo0O0;->OoooOoo:[B

    return-void
.end method

.method private OooOO0()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lz2/o0oOo0O0;->Ooooo0o:I

    if-lez v0, :cond_0

    iget-object v1, p0, Lz2/o0oOo0O0;->OoooOoO:Ljava/io/OutputStream;

    iget-object v2, p0, Lz2/o0oOo0O0;->OoooOoo:[B

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Ljava/io/OutputStream;->write([BII)V

    iput v3, p0, Lz2/o0oOo0O0;->Ooooo0o:I

    :cond_0
    return-void
.end method

.method private OooooOo()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lz2/o0oOo0O0;->Ooooo0o:I

    iget-object v1, p0, Lz2/o0oOo0O0;->OoooOoo:[B

    array-length v1, v1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lz2/o0oOo0O0;->OooOO0()V

    :cond_0
    return-void
.end method

.method private Oooooo0()V
    .locals 2

    iget-object v0, p0, Lz2/o0oOo0O0;->OoooOoo:[B

    if-eqz v0, :cond_0

    iget-object v1, p0, Lz2/o0oOo0O0;->Ooooo00:Lz2/oO0OOo0o;

    invoke-interface {v1, v0}, Lz2/oO0OOo0o;->put(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lz2/o0oOo0O0;->OoooOoo:[B

    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lz2/o0oOo0O0;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lz2/o0oOo0O0;->OoooOoO:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    invoke-direct {p0}, Lz2/o0oOo0O0;->Oooooo0()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lz2/o0oOo0O0;->OoooOoO:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    throw v0
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lz2/o0oOo0O0;->OooOO0()V

    iget-object v0, p0, Lz2/o0oOo0O0;->OoooOoO:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method public write(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lz2/o0oOo0O0;->OoooOoo:[B

    iget v1, p0, Lz2/o0oOo0O0;->Ooooo0o:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lz2/o0oOo0O0;->Ooooo0o:I

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    invoke-direct {p0}, Lz2/o0oOo0O0;->OooooOo()V

    return-void
.end method

.method public write([B)V
    .locals 2
    .param p1    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lz2/o0oOo0O0;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 5
    .param p1    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :cond_0
    sub-int v1, p3, v0

    add-int v2, p2, v0

    iget v3, p0, Lz2/o0oOo0O0;->Ooooo0o:I

    if-nez v3, :cond_1

    iget-object v4, p0, Lz2/o0oOo0O0;->OoooOoo:[B

    array-length v4, v4

    if-lt v1, v4, :cond_1

    iget-object p2, p0, Lz2/o0oOo0O0;->OoooOoO:Ljava/io/OutputStream;

    invoke-virtual {p2, p1, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    return-void

    :cond_1
    iget-object v4, p0, Lz2/o0oOo0O0;->OoooOoo:[B

    array-length v4, v4

    sub-int/2addr v4, v3

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v3, p0, Lz2/o0oOo0O0;->OoooOoo:[B

    iget v4, p0, Lz2/o0oOo0O0;->Ooooo0o:I

    invoke-static {p1, v2, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, p0, Lz2/o0oOo0O0;->Ooooo0o:I

    add-int/2addr v2, v1

    iput v2, p0, Lz2/o0oOo0O0;->Ooooo0o:I

    add-int/2addr v0, v1

    invoke-direct {p0}, Lz2/o0oOo0O0;->OooooOo()V

    if-lt v0, p3, :cond_0

    return-void
.end method
