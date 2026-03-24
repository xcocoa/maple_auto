.class public Lz2/v;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz2/v$OooO0o;,
        Lz2/v$OooO00o;,
        Lz2/v$OooO0OO;,
        Lz2/v$OooO0O0;
    }
.end annotation


# instance fields
.field private OooO:Lz2/o0O0o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz2/o0O0o<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final OooO00o:Lz2/o0O00OO;

.field private final OooO0O0:Landroid/os/Handler;

.field private final OooO0OO:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lz2/v$OooO0O0;",
            ">;"
        }
    .end annotation
.end field

.field public final OooO0Oo:Lz2/o0;

.field private OooO0o:Z

.field private final OooO0o0:Lz2/oO000o00;

.field private OooO0oO:Z

.field private OooO0oo:Z

.field private OooOO0:Lz2/v$OooO00o;

.field private OooOO0O:Z

.field private OooOO0o:Lz2/v$OooO00o;

.field private OooOOO:Lz2/o0O0o000;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz2/o0O0o000<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private OooOOO0:Landroid/graphics/Bitmap;

.field private OooOOOO:Lz2/v$OooO00o;

.field private OooOOOo:Lz2/v$OooO0o;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lz2/o00Oo00;Lz2/o0O00OO;IILz2/o0O0o000;Landroid/graphics/Bitmap;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/o00Oo00;",
            "Lz2/o0O00OO;",
            "II",
            "Lz2/o0O0o000<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Lz2/o00Oo00;->OooO0oO()Lz2/oO000o00;

    move-result-object v1

    invoke-virtual {p1}, Lz2/o00Oo00;->OooO()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lz2/o00Oo00;->OooOooO(Landroid/content/Context;)Lz2/o0;

    move-result-object v2

    invoke-virtual {p1}, Lz2/o00Oo00;->OooO()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lz2/o00Oo00;->OooOooO(Landroid/content/Context;)Lz2/o0;

    move-result-object p1

    invoke-static {p1, p3, p4}, Lz2/v;->OooOO0o(Lz2/o0;II)Lz2/o0O0o;

    move-result-object v5

    const/4 v4, 0x0

    move-object v0, p0

    move-object v3, p2

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lz2/v;-><init>(Lz2/oO000o00;Lz2/o0;Lz2/o0O00OO;Landroid/os/Handler;Lz2/o0O0o;Lz2/o0O0o000;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public constructor <init>(Lz2/oO000o00;Lz2/o0;Lz2/o0O00OO;Landroid/os/Handler;Lz2/o0O0o;Lz2/o0O0o000;Landroid/graphics/Bitmap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/oO000o00;",
            "Lz2/o0;",
            "Lz2/o0O00OO;",
            "Landroid/os/Handler;",
            "Lz2/o0O0o<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lz2/o0O0o000<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lz2/v;->OooO0OO:Ljava/util/List;

    iput-object p2, p0, Lz2/v;->OooO0Oo:Lz2/o0;

    if-nez p4, :cond_0

    new-instance p4, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    new-instance v0, Lz2/v$OooO0OO;

    invoke-direct {v0, p0}, Lz2/v$OooO0OO;-><init>(Lz2/v;)V

    invoke-direct {p4, p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    :cond_0
    iput-object p1, p0, Lz2/v;->OooO0o0:Lz2/oO000o00;

    iput-object p4, p0, Lz2/v;->OooO0O0:Landroid/os/Handler;

    iput-object p5, p0, Lz2/v;->OooO:Lz2/o0O0o;

    iput-object p3, p0, Lz2/v;->OooO00o:Lz2/o0O00OO;

    invoke-virtual {p0, p6, p7}, Lz2/v;->OooOOo(Lz2/o0O0o000;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private static OooO0oO()Lz2/o0O0O0Oo;
    .locals 3

    new-instance v0, Lz2/g2;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v1}, Lz2/g2;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method private OooO0oo()I
    .locals 3

    invoke-virtual {p0}, Lz2/v;->OooO0OO()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lz2/v;->OooO0OO()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lz2/v;->OooO0OO()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lz2/t2;->OooO0oO(IILandroid/graphics/Bitmap$Config;)I

    move-result v0

    return v0
.end method

.method private static OooOO0o(Lz2/o0;II)Lz2/o0O0o;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/o0;",
            "II)",
            "Lz2/o0O0o<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lz2/o0;->OooOOO0()Lz2/o0O0o;

    move-result-object p0

    sget-object v0, Lz2/o0oo0000;->OooO0O0:Lz2/o0oo0000;

    invoke-static {v0}, Lz2/p1;->o0000OO(Lz2/o0oo0000;)Lz2/p1;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lz2/i1;->o0000oo(Z)Lz2/i1;

    move-result-object v0

    check-cast v0, Lz2/p1;

    invoke-virtual {v0, v1}, Lz2/i1;->o00000O0(Z)Lz2/i1;

    move-result-object v0

    check-cast v0, Lz2/p1;

    invoke-virtual {v0, p1, p2}, Lz2/i1;->o0ooOoO(II)Lz2/i1;

    move-result-object p1

    invoke-virtual {p0, p1}, Lz2/o0O0o;->o0000O0O(Lz2/i1;)Lz2/o0O0o;

    move-result-object p0

    return-object p0
.end method

.method private OooOOOO()V
    .locals 5

    iget-boolean v0, p0, Lz2/v;->OooO0o:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lz2/v;->OooO0oO:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-boolean v0, p0, Lz2/v;->OooO0oo:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lz2/v;->OooOOOO:Lz2/v$OooO00o;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const-string v3, "Pending target must be null when starting from the first frame"

    invoke-static {v0, v3}, Lz2/r2;->OooO00o(ZLjava/lang/String;)V

    iget-object v0, p0, Lz2/v;->OooO00o:Lz2/o0O00OO;

    invoke-interface {v0}, Lz2/o0O00OO;->OooO0oo()V

    iput-boolean v2, p0, Lz2/v;->OooO0oo:Z

    :cond_2
    iget-object v0, p0, Lz2/v;->OooOOOO:Lz2/v$OooO00o;

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    iput-object v1, p0, Lz2/v;->OooOOOO:Lz2/v$OooO00o;

    invoke-virtual {p0, v0}, Lz2/v;->OooOOOo(Lz2/v$OooO00o;)V

    return-void

    :cond_3
    iput-boolean v1, p0, Lz2/v;->OooO0oO:Z

    iget-object v0, p0, Lz2/v;->OooO00o:Lz2/o0O00OO;

    invoke-interface {v0}, Lz2/o0O00OO;->OooO0o0()I

    move-result v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    int-to-long v3, v0

    add-long/2addr v1, v3

    iget-object v0, p0, Lz2/v;->OooO00o:Lz2/o0O00OO;

    invoke-interface {v0}, Lz2/o0O00OO;->OooO0O0()V

    new-instance v0, Lz2/v$OooO00o;

    iget-object v3, p0, Lz2/v;->OooO0O0:Landroid/os/Handler;

    iget-object v4, p0, Lz2/v;->OooO00o:Lz2/o0O00OO;

    invoke-interface {v4}, Lz2/o0O00OO;->OooOO0()I

    move-result v4

    invoke-direct {v0, v3, v4, v1, v2}, Lz2/v$OooO00o;-><init>(Landroid/os/Handler;IJ)V

    iput-object v0, p0, Lz2/v;->OooOO0o:Lz2/v$OooO00o;

    iget-object v0, p0, Lz2/v;->OooO:Lz2/o0O0o;

    invoke-static {}, Lz2/v;->OooO0oO()Lz2/o0O0O0Oo;

    move-result-object v1

    invoke-static {v1}, Lz2/p1;->o000OoO(Lz2/o0O0O0Oo;)Lz2/p1;

    move-result-object v1

    invoke-virtual {v0, v1}, Lz2/o0O0o;->o0000O0O(Lz2/i1;)Lz2/o0O0o;

    move-result-object v0

    iget-object v1, p0, Lz2/v;->OooO00o:Lz2/o0O00OO;

    invoke-virtual {v0, v1}, Lz2/o0O0o;->o000Ooo(Ljava/lang/Object;)Lz2/o0O0o;

    move-result-object v0

    iget-object v1, p0, Lz2/v;->OooOO0o:Lz2/v$OooO00o;

    invoke-virtual {v0, v1}, Lz2/o0O0o;->o0000o0o(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    :cond_4
    :goto_1
    return-void
.end method

.method private OooOOo0()V
    .locals 2

    iget-object v0, p0, Lz2/v;->OooOOO0:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lz2/v;->OooO0o0:Lz2/oO000o00;

    invoke-interface {v1, v0}, Lz2/oO000o00;->OooO0Oo(Landroid/graphics/Bitmap;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lz2/v;->OooOOO0:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method private OooOo0()V
    .locals 1

    iget-boolean v0, p0, Lz2/v;->OooO0o:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lz2/v;->OooO0o:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lz2/v;->OooOO0O:Z

    invoke-direct {p0}, Lz2/v;->OooOOOO()V

    return-void
.end method

.method private OooOo0O()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lz2/v;->OooO0o:Z

    return-void
.end method


# virtual methods
.method public OooO()Lz2/o0O0o000;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lz2/o0O0o000<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lz2/v;->OooOOO:Lz2/o0O0o000;

    return-object v0
.end method

.method public OooO00o()V
    .locals 3

    iget-object v0, p0, Lz2/v;->OooO0OO:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-direct {p0}, Lz2/v;->OooOOo0()V

    invoke-direct {p0}, Lz2/v;->OooOo0O()V

    iget-object v0, p0, Lz2/v;->OooOO0:Lz2/v$OooO00o;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lz2/v;->OooO0Oo:Lz2/o0;

    invoke-virtual {v2, v0}, Lz2/o0;->OooOOo(Lcom/bumptech/glide/request/target/Target;)V

    iput-object v1, p0, Lz2/v;->OooOO0:Lz2/v$OooO00o;

    :cond_0
    iget-object v0, p0, Lz2/v;->OooOO0o:Lz2/v$OooO00o;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lz2/v;->OooO0Oo:Lz2/o0;

    invoke-virtual {v2, v0}, Lz2/o0;->OooOOo(Lcom/bumptech/glide/request/target/Target;)V

    iput-object v1, p0, Lz2/v;->OooOO0o:Lz2/v$OooO00o;

    :cond_1
    iget-object v0, p0, Lz2/v;->OooOOOO:Lz2/v$OooO00o;

    if-eqz v0, :cond_2

    iget-object v2, p0, Lz2/v;->OooO0Oo:Lz2/o0;

    invoke-virtual {v2, v0}, Lz2/o0;->OooOOo(Lcom/bumptech/glide/request/target/Target;)V

    iput-object v1, p0, Lz2/v;->OooOOOO:Lz2/v$OooO00o;

    :cond_2
    iget-object v0, p0, Lz2/v;->OooO00o:Lz2/o0O00OO;

    invoke-interface {v0}, Lz2/o0O00OO;->clear()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lz2/v;->OooOO0O:Z

    return-void
.end method

.method public OooO0O0()Ljava/nio/ByteBuffer;
    .locals 1

    iget-object v0, p0, Lz2/v;->OooO00o:Lz2/o0O00OO;

    invoke-interface {v0}, Lz2/o0O00OO;->getData()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public OooO0OO()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lz2/v;->OooOO0:Lz2/v$OooO00o;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lz2/v$OooO00o;->OooO00o()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lz2/v;->OooOOO0:Landroid/graphics/Bitmap;

    :goto_0
    return-object v0
.end method

.method public OooO0Oo()I
    .locals 1

    iget-object v0, p0, Lz2/v;->OooOO0:Lz2/v$OooO00o;

    if-eqz v0, :cond_0

    iget v0, v0, Lz2/v$OooO00o;->OoooOoo:I

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public OooO0o()I
    .locals 1

    iget-object v0, p0, Lz2/v;->OooO00o:Lz2/o0O00OO;

    invoke-interface {v0}, Lz2/o0O00OO;->OooO0Oo()I

    move-result v0

    return v0
.end method

.method public OooO0o0()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lz2/v;->OooOOO0:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public OooOO0()I
    .locals 1

    invoke-virtual {p0}, Lz2/v;->OooO0OO()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    return v0
.end method

.method public OooOO0O()I
    .locals 1

    iget-object v0, p0, Lz2/v;->OooO00o:Lz2/o0O00OO;

    invoke-interface {v0}, Lz2/o0O00OO;->OooOOOo()I

    move-result v0

    return v0
.end method

.method public OooOOO()I
    .locals 1

    invoke-virtual {p0}, Lz2/v;->OooO0OO()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    return v0
.end method

.method public OooOOO0()I
    .locals 2

    iget-object v0, p0, Lz2/v;->OooO00o:Lz2/o0O00OO;

    invoke-interface {v0}, Lz2/o0O00OO;->OooOOOO()I

    move-result v0

    invoke-direct {p0}, Lz2/v;->OooO0oo()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public OooOOOo(Lz2/v$OooO00o;)V
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lz2/v;->OooOOOo:Lz2/v$OooO0o;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lz2/v$OooO0o;->OooO00o()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lz2/v;->OooO0oO:Z

    iget-boolean v0, p0, Lz2/v;->OooOO0O:Z

    const/4 v1, 0x2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lz2/v;->OooO0O0:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_1
    iget-boolean v0, p0, Lz2/v;->OooO0o:Z

    if-nez v0, :cond_2

    iput-object p1, p0, Lz2/v;->OooOOOO:Lz2/v$OooO00o;

    return-void

    :cond_2
    invoke-virtual {p1}, Lz2/v$OooO00o;->OooO00o()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lz2/v;->OooOOo0()V

    iget-object v0, p0, Lz2/v;->OooOO0:Lz2/v$OooO00o;

    iput-object p1, p0, Lz2/v;->OooOO0:Lz2/v$OooO00o;

    iget-object p1, p0, Lz2/v;->OooO0OO:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-ltz p1, :cond_3

    iget-object v2, p0, Lz2/v;->OooO0OO:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lz2/v$OooO0O0;

    invoke-interface {v2}, Lz2/v$OooO0O0;->OooO00o()V

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_4

    iget-object p1, p0, Lz2/v;->OooO0O0:Landroid/os/Handler;

    invoke-virtual {p1, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_4
    invoke-direct {p0}, Lz2/v;->OooOOOO()V

    return-void
.end method

.method public OooOOo(Lz2/o0O0o000;Landroid/graphics/Bitmap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/o0O0o000<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    invoke-static {p1}, Lz2/r2;->OooO0Oo(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz2/o0O0o000;

    iput-object v0, p0, Lz2/v;->OooOOO:Lz2/o0O0o000;

    invoke-static {p2}, Lz2/r2;->OooO0Oo(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/Bitmap;

    iput-object p2, p0, Lz2/v;->OooOOO0:Landroid/graphics/Bitmap;

    iget-object p2, p0, Lz2/v;->OooO:Lz2/o0O0o;

    new-instance v0, Lz2/p1;

    invoke-direct {v0}, Lz2/p1;-><init>()V

    invoke-virtual {v0, p1}, Lz2/i1;->o00000Oo(Lz2/o0O0o000;)Lz2/i1;

    move-result-object p1

    invoke-virtual {p2, p1}, Lz2/o0O0o;->o0000O0O(Lz2/i1;)Lz2/o0O0o;

    move-result-object p1

    iput-object p1, p0, Lz2/v;->OooO:Lz2/o0O0o;

    return-void
.end method

.method public OooOOoo()V
    .locals 3

    iget-boolean v0, p0, Lz2/v;->OooO0o:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "Can\'t restart a running animation"

    invoke-static {v0, v2}, Lz2/r2;->OooO00o(ZLjava/lang/String;)V

    iput-boolean v1, p0, Lz2/v;->OooO0oo:Z

    iget-object v0, p0, Lz2/v;->OooOOOO:Lz2/v$OooO00o;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lz2/v;->OooO0Oo:Lz2/o0;

    invoke-virtual {v1, v0}, Lz2/o0;->OooOOo(Lcom/bumptech/glide/request/target/Target;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lz2/v;->OooOOOO:Lz2/v$OooO00o;

    :cond_0
    return-void
.end method

.method public OooOo(Lz2/v$OooO0O0;)V
    .locals 1

    iget-object v0, p0, Lz2/v;->OooO0OO:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lz2/v;->OooO0OO:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lz2/v;->OooOo0O()V

    :cond_0
    return-void
.end method

.method public OooOo00(Lz2/v$OooO0o;)V
    .locals 0
    .param p1    # Lz2/v$OooO0o;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iput-object p1, p0, Lz2/v;->OooOOOo:Lz2/v$OooO0o;

    return-void
.end method

.method public OooOo0o(Lz2/v$OooO0O0;)V
    .locals 2

    iget-boolean v0, p0, Lz2/v;->OooOO0O:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lz2/v;->OooO0OO:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lz2/v;->OooO0OO:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    iget-object v1, p0, Lz2/v;->OooO0OO:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lz2/v;->OooOo0()V

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot subscribe twice in a row"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot subscribe to a cleared frame loader"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
