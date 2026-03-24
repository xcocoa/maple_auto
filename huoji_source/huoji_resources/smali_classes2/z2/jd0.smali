.class public Lz2/jd0;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final OooO00o:Lpl/droidsonroids/gif/GifInfoHandle;


# direct methods
.method public constructor <init>(Lz2/ld0;Lz2/hd0;)V
    .locals 1
    .param p2    # Lz2/hd0;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p2, :cond_0

    new-instance p2, Lz2/hd0;

    invoke-direct {p2}, Lz2/hd0;-><init>()V

    :cond_0
    invoke-virtual {p1}, Lz2/ld0;->OooO0OO()Lpl/droidsonroids/gif/GifInfoHandle;

    move-result-object p1

    iput-object p1, p0, Lz2/jd0;->OooO00o:Lpl/droidsonroids/gif/GifInfoHandle;

    iget-char v0, p2, Lz2/hd0;->OooO00o:C

    iget-boolean p2, p2, Lz2/hd0;->OooO0O0:Z

    invoke-virtual {p1, v0, p2}, Lpl/droidsonroids/gif/GifInfoHandle;->Oooo0OO(CZ)V

    invoke-virtual {p1}, Lpl/droidsonroids/gif/GifInfoHandle;->OooOo00()V

    return-void
.end method


# virtual methods
.method public OooO()V
    .locals 1

    iget-object v0, p0, Lz2/jd0;->OooO00o:Lpl/droidsonroids/gif/GifInfoHandle;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lpl/droidsonroids/gif/GifInfoHandle;->OooOoOO()V

    :cond_0
    return-void
.end method

.method public OooO00o()I
    .locals 1

    iget-object v0, p0, Lz2/jd0;->OooO00o:Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-virtual {v0}, Lpl/droidsonroids/gif/GifInfoHandle;->OooO0Oo()I

    move-result v0

    return v0
.end method

.method public OooO0O0()I
    .locals 1

    iget-object v0, p0, Lz2/jd0;->OooO00o:Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-virtual {v0}, Lpl/droidsonroids/gif/GifInfoHandle;->OooO0oO()I

    move-result v0

    return v0
.end method

.method public OooO0OO(I)I
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    iget-object v0, p0, Lz2/jd0;->OooO00o:Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-virtual {v0, p1}, Lpl/droidsonroids/gif/GifInfoHandle;->OooO0oo(I)I

    move-result p1

    return p1
.end method

.method public OooO0Oo()I
    .locals 1

    iget-object v0, p0, Lz2/jd0;->OooO00o:Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-virtual {v0}, Lpl/droidsonroids/gif/GifInfoHandle;->OooO()I

    move-result v0

    return v0
.end method

.method public OooO0o()I
    .locals 1

    iget-object v0, p0, Lz2/jd0;->OooO00o:Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-virtual {v0}, Lpl/droidsonroids/gif/GifInfoHandle;->OooOOo0()I

    move-result v0

    return v0
.end method

.method public OooO0o0()I
    .locals 1

    iget-object v0, p0, Lz2/jd0;->OooO00o:Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-virtual {v0}, Lpl/droidsonroids/gif/GifInfoHandle;->OooOOO()I

    move-result v0

    return v0
.end method

.method public OooO0oO(II)V
    .locals 1

    iget-object v0, p0, Lz2/jd0;->OooO00o:Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-virtual {v0, p1, p2}, Lpl/droidsonroids/gif/GifInfoHandle;->OooOOo(II)V

    return-void
.end method

.method public OooO0oo(II)V
    .locals 1

    iget-object v0, p0, Lz2/jd0;->OooO00o:Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-virtual {v0, p1, p2}, Lpl/droidsonroids/gif/GifInfoHandle;->OooOOoo(II)V

    return-void
.end method

.method public OooOO0(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    iget-object v0, p0, Lz2/jd0;->OooO00o:Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-virtual {v0, p1}, Lpl/droidsonroids/gif/GifInfoHandle;->Oooo00o(I)V

    return-void
.end method

.method public OooOO0O(F)V
    .locals 1
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            fromInclusive = false
        .end annotation
    .end param

    iget-object v0, p0, Lz2/jd0;->OooO00o:Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-virtual {v0, p1}, Lpl/droidsonroids/gif/GifInfoHandle;->Oooo0o0(F)V

    return-void
.end method

.method public OooOO0o()V
    .locals 1

    iget-object v0, p0, Lz2/jd0;->OooO00o:Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-virtual {v0}, Lpl/droidsonroids/gif/GifInfoHandle;->Oooo0o()V

    return-void
.end method

.method public OooOOO0()V
    .locals 1

    iget-object v0, p0, Lz2/jd0;->OooO00o:Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-virtual {v0}, Lpl/droidsonroids/gif/GifInfoHandle;->Oooo0oO()V

    return-void
.end method

.method public final finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lz2/jd0;->OooO()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method
