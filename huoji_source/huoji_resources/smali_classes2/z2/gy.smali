.class public Lz2/gy;
.super Lz2/n00;
.source ""


# instance fields
.field private OoooOoo:Z


# direct methods
.method public constructor <init>(Lz2/d10;)V
    .locals 0

    invoke-direct {p0, p1}, Lz2/n00;-><init>(Lz2/d10;)V

    return-void
.end method


# virtual methods
.method public OooOooO(Lz2/j00;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lz2/gy;->OoooOoo:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2, p3}, Lz2/j00;->skip(J)V

    return-void

    :cond_0
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lz2/n00;->OooOooO(Lz2/j00;J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 p2, 0x1

    iput-boolean p2, p0, Lz2/gy;->OoooOoo:Z

    invoke-virtual {p0, p1}, Lz2/gy;->OooooOo(Ljava/io/IOException;)V

    :goto_0
    return-void
.end method

.method public OooooOo(Ljava/io/IOException;)V
    .locals 0

    return-void
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lz2/gy;->OoooOoo:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-super {p0}, Lz2/n00;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lz2/gy;->OoooOoo:Z

    invoke-virtual {p0, v0}, Lz2/gy;->OooooOo(Ljava/io/IOException;)V

    :goto_0
    return-void
.end method

.method public flush()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lz2/gy;->OoooOoo:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-super {p0}, Lz2/n00;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lz2/gy;->OoooOoo:Z

    invoke-virtual {p0, v0}, Lz2/gy;->OooooOo(Ljava/io/IOException;)V

    :goto_0
    return-void
.end method
