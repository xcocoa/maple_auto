.class public Lz2/q00;
.super Lz2/f10;
.source ""


# instance fields
.field private OooO0o0:Lz2/f10;


# direct methods
.method public constructor <init>(Lz2/f10;)V
    .locals 1

    invoke-direct {p0}, Lz2/f10;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lz2/q00;->OooO0o0:Lz2/f10;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "delegate == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public OooO()J
    .locals 2

    iget-object v0, p0, Lz2/q00;->OooO0o0:Lz2/f10;

    invoke-virtual {v0}, Lz2/f10;->OooO()J

    move-result-wide v0

    return-wide v0
.end method

.method public OooO00o()Lz2/f10;
    .locals 1

    iget-object v0, p0, Lz2/q00;->OooO0o0:Lz2/f10;

    invoke-virtual {v0}, Lz2/f10;->OooO00o()Lz2/f10;

    move-result-object v0

    return-object v0
.end method

.method public OooO0O0()Lz2/f10;
    .locals 1

    iget-object v0, p0, Lz2/q00;->OooO0o0:Lz2/f10;

    invoke-virtual {v0}, Lz2/f10;->OooO0O0()Lz2/f10;

    move-result-object v0

    return-object v0
.end method

.method public OooO0Oo()J
    .locals 2

    iget-object v0, p0, Lz2/q00;->OooO0o0:Lz2/f10;

    invoke-virtual {v0}, Lz2/f10;->OooO0Oo()J

    move-result-wide v0

    return-wide v0
.end method

.method public OooO0o()Z
    .locals 1

    iget-object v0, p0, Lz2/q00;->OooO0o0:Lz2/f10;

    invoke-virtual {v0}, Lz2/f10;->OooO0o()Z

    move-result v0

    return v0
.end method

.method public OooO0o0(J)Lz2/f10;
    .locals 1

    iget-object v0, p0, Lz2/q00;->OooO0o0:Lz2/f10;

    invoke-virtual {v0, p1, p2}, Lz2/f10;->OooO0o0(J)Lz2/f10;

    move-result-object p1

    return-object p1
.end method

.method public OooO0oO()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lz2/q00;->OooO0o0:Lz2/f10;

    invoke-virtual {v0}, Lz2/f10;->OooO0oO()V

    return-void
.end method

.method public OooO0oo(JLjava/util/concurrent/TimeUnit;)Lz2/f10;
    .locals 1

    iget-object v0, p0, Lz2/q00;->OooO0o0:Lz2/f10;

    invoke-virtual {v0, p1, p2, p3}, Lz2/f10;->OooO0oo(JLjava/util/concurrent/TimeUnit;)Lz2/f10;

    move-result-object p1

    return-object p1
.end method

.method public final OooOO0O()Lz2/f10;
    .locals 1

    iget-object v0, p0, Lz2/q00;->OooO0o0:Lz2/f10;

    return-object v0
.end method

.method public final OooOO0o(Lz2/f10;)Lz2/q00;
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lz2/q00;->OooO0o0:Lz2/f10;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "delegate == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
