.class public Lz2/dd0;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final OooO00o:Lpl/droidsonroids/gif/GifInfoHandle;


# direct methods
.method public constructor <init>(Lz2/ld0;)V
    .locals 1
    .param p1    # Lz2/ld0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lz2/dd0;-><init>(Lz2/ld0;Lz2/hd0;)V

    return-void
.end method

.method public constructor <init>(Lz2/ld0;Lz2/hd0;)V
    .locals 1
    .param p1    # Lz2/ld0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
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

    invoke-virtual {p1}, Lz2/ld0;->OooO0OO()Lpl/droidsonroids/gif/GifInfoHandle;

    move-result-object p1

    iput-object p1, p0, Lz2/dd0;->OooO00o:Lpl/droidsonroids/gif/GifInfoHandle;

    if-eqz p2, :cond_0

    iget-char v0, p2, Lz2/hd0;->OooO00o:C

    iget-boolean p2, p2, Lz2/hd0;->OooO0O0:Z

    invoke-virtual {p1, v0, p2}, Lpl/droidsonroids/gif/GifInfoHandle;->Oooo0OO(CZ)V

    :cond_0
    return-void
.end method

.method private OooO00o(Landroid/graphics/Bitmap;)V
    .locals 3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lz2/dd0;->OooO00o:Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-virtual {v1}, Lpl/droidsonroids/gif/GifInfoHandle;->OooOOo0()I

    move-result v1

    if-lt v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget-object v1, p0, Lz2/dd0;->OooO00o:Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-virtual {v1}, Lpl/droidsonroids/gif/GifInfoHandle;->OooO()I

    move-result v1

    if-lt v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Only Config.ARGB_8888 is supported. Current bitmap config: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Bitmap ia too small, size must be greater than or equal to GIF size"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Bitmap is recycled"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public OooO()J
    .locals 2

    iget-object v0, p0, Lz2/dd0;->OooO00o:Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-virtual {v0}, Lpl/droidsonroids/gif/GifInfoHandle;->OooOOOo()J

    move-result-wide v0

    return-wide v0
.end method

.method public OooO0O0()J
    .locals 2

    iget-object v0, p0, Lz2/dd0;->OooO00o:Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-virtual {v0}, Lpl/droidsonroids/gif/GifInfoHandle;->OooO0O0()J

    move-result-wide v0

    return-wide v0
.end method

.method public OooO0OO()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lz2/dd0;->OooO00o:Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-virtual {v0}, Lpl/droidsonroids/gif/GifInfoHandle;->OooO0OO()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public OooO0Oo()I
    .locals 1

    iget-object v0, p0, Lz2/dd0;->OooO00o:Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-virtual {v0}, Lpl/droidsonroids/gif/GifInfoHandle;->OooO0oO()I

    move-result v0

    return v0
.end method

.method public OooO0o()I
    .locals 1

    iget-object v0, p0, Lz2/dd0;->OooO00o:Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-virtual {v0}, Lpl/droidsonroids/gif/GifInfoHandle;->OooO()I

    move-result v0

    return v0
.end method

.method public OooO0o0(I)I
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    iget-object v0, p0, Lz2/dd0;->OooO00o:Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-virtual {v0, p1}, Lpl/droidsonroids/gif/GifInfoHandle;->OooO0oo(I)I

    move-result p1

    return p1
.end method

.method public OooO0oO()I
    .locals 1

    iget-object v0, p0, Lz2/dd0;->OooO00o:Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-virtual {v0}, Lpl/droidsonroids/gif/GifInfoHandle;->OooOO0()I

    move-result v0

    return v0
.end method

.method public OooO0oo()I
    .locals 1

    iget-object v0, p0, Lz2/dd0;->OooO00o:Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-virtual {v0}, Lpl/droidsonroids/gif/GifInfoHandle;->OooOOO()I

    move-result v0

    return v0
.end method

.method public OooOO0()I
    .locals 1

    iget-object v0, p0, Lz2/dd0;->OooO00o:Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-virtual {v0}, Lpl/droidsonroids/gif/GifInfoHandle;->OooOOo0()I

    move-result v0

    return v0
.end method

.method public OooOO0O()Z
    .locals 2

    iget-object v0, p0, Lz2/dd0;->OooO00o:Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-virtual {v0}, Lpl/droidsonroids/gif/GifInfoHandle;->OooOOO()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Lz2/dd0;->OooO0Oo()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public OooOO0o()V
    .locals 1

    iget-object v0, p0, Lz2/dd0;->OooO00o:Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-virtual {v0}, Lpl/droidsonroids/gif/GifInfoHandle;->OooOoOO()V

    return-void
.end method

.method public OooOOO(ILandroid/graphics/Bitmap;)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
            to = 0x7fffffffL
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p2}, Lz2/dd0;->OooO00o(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lz2/dd0;->OooO00o:Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-virtual {v0, p1, p2}, Lpl/droidsonroids/gif/GifInfoHandle;->Oooo0(ILandroid/graphics/Bitmap;)V

    return-void
.end method

.method public OooOOO0(ILandroid/graphics/Bitmap;)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
            to = 0x7fffffffL
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p2}, Lz2/dd0;->OooO00o(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lz2/dd0;->OooO00o:Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-virtual {v0, p1, p2}, Lpl/droidsonroids/gif/GifInfoHandle;->Oooo00O(ILandroid/graphics/Bitmap;)V

    return-void
.end method
