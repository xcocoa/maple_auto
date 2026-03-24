.class public Lz2/hd0;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public OooO00o:C

.field public OooO0O0:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Lz2/hd0;->OooO00o()V

    return-void
.end method

.method private OooO00o()V
    .locals 1

    const/4 v0, 0x1

    iput-char v0, p0, Lz2/hd0;->OooO00o:C

    const/4 v0, 0x0

    iput-boolean v0, p0, Lz2/hd0;->OooO0O0:Z

    return-void
.end method


# virtual methods
.method public OooO0O0(Lz2/hd0;)V
    .locals 1
    .param p1    # Lz2/hd0;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    invoke-direct {p0}, Lz2/hd0;->OooO00o()V

    goto :goto_0

    :cond_0
    iget-boolean v0, p1, Lz2/hd0;->OooO0O0:Z

    iput-boolean v0, p0, Lz2/hd0;->OooO0O0:Z

    iget-char p1, p1, Lz2/hd0;->OooO00o:C

    iput-char p1, p0, Lz2/hd0;->OooO00o:C

    :goto_0
    return-void
.end method

.method public OooO0OO(Z)V
    .locals 0

    iput-boolean p1, p0, Lz2/hd0;->OooO0O0:Z

    return-void
.end method

.method public OooO0Oo(I)V
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x1L
            to = 0xffffL
        .end annotation
    .end param

    const/4 v0, 0x1

    if-lt p1, v0, :cond_1

    const v1, 0xffff

    if-le p1, v1, :cond_0

    goto :goto_0

    :cond_0
    int-to-char p1, p1

    iput-char p1, p0, Lz2/hd0;->OooO00o:C

    goto :goto_1

    :cond_1
    :goto_0
    iput-char v0, p0, Lz2/hd0;->OooO00o:C

    :goto_1
    return-void
.end method
