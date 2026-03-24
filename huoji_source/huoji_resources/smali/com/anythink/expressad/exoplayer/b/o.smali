.class public final Lcom/anythink/expressad/exoplayer/b/o;
.super Lcom/anythink/expressad/exoplayer/f/b;
.source ""

# interfaces
.implements Lcom/anythink/expressad/exoplayer/k/n;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/expressad/exoplayer/b/o$a;
    }
.end annotation


# instance fields
.field private A:I

.field private B:I

.field private C:J

.field private D:Z

.field private E:Z

.field private final r:Landroid/content/Context;

.field private final s:Lcom/anythink/expressad/exoplayer/b/g$a;

.field private final t:Lcom/anythink/expressad/exoplayer/b/h;

.field private u:I

.field private v:Z

.field private w:Z

.field private x:Landroid/media/MediaFormat;

.field private y:I

.field private z:I


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/anythink/expressad/exoplayer/f/c;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/anythink/expressad/exoplayer/b/o;-><init>(Landroid/content/Context;Lcom/anythink/expressad/exoplayer/f/c;Lcom/anythink/expressad/exoplayer/d/g;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/anythink/expressad/exoplayer/f/c;Landroid/os/Handler;Lcom/anythink/expressad/exoplayer/b/g;)V
    .locals 6
    .param p3    # Landroid/os/Handler;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/anythink/expressad/exoplayer/b/g;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/anythink/expressad/exoplayer/b/o;-><init>(Landroid/content/Context;Lcom/anythink/expressad/exoplayer/f/c;Lcom/anythink/expressad/exoplayer/d/g;Landroid/os/Handler;Lcom/anythink/expressad/exoplayer/b/g;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/anythink/expressad/exoplayer/f/c;Lcom/anythink/expressad/exoplayer/d/g;)V
    .locals 6
    .param p3    # Lcom/anythink/expressad/exoplayer/d/g;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/anythink/expressad/exoplayer/f/c;",
            "Lcom/anythink/expressad/exoplayer/d/g<",
            "Lcom/anythink/expressad/exoplayer/d/k;",
            ">;)V"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/anythink/expressad/exoplayer/b/o;-><init>(Landroid/content/Context;Lcom/anythink/expressad/exoplayer/f/c;Lcom/anythink/expressad/exoplayer/d/g;Landroid/os/Handler;Lcom/anythink/expressad/exoplayer/b/g;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/anythink/expressad/exoplayer/f/c;Lcom/anythink/expressad/exoplayer/d/g;Landroid/os/Handler;Lcom/anythink/expressad/exoplayer/b/g;)V
    .locals 9
    .param p3    # Lcom/anythink/expressad/exoplayer/d/g;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/os/Handler;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/anythink/expressad/exoplayer/b/g;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/anythink/expressad/exoplayer/f/c;",
            "Lcom/anythink/expressad/exoplayer/d/g<",
            "Lcom/anythink/expressad/exoplayer/d/k;",
            ">;",
            "Landroid/os/Handler;",
            "Lcom/anythink/expressad/exoplayer/b/g;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v8, v0, [Lcom/anythink/expressad/exoplayer/b/f;

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v8}, Lcom/anythink/expressad/exoplayer/b/o;-><init>(Landroid/content/Context;Lcom/anythink/expressad/exoplayer/f/c;Lcom/anythink/expressad/exoplayer/d/g;Landroid/os/Handler;Lcom/anythink/expressad/exoplayer/b/g;Lcom/anythink/expressad/exoplayer/b/c;[Lcom/anythink/expressad/exoplayer/b/f;)V

    return-void
.end method

.method public varargs constructor <init>(Landroid/content/Context;Lcom/anythink/expressad/exoplayer/f/c;Lcom/anythink/expressad/exoplayer/d/g;Landroid/os/Handler;Lcom/anythink/expressad/exoplayer/b/g;Lcom/anythink/expressad/exoplayer/b/c;[Lcom/anythink/expressad/exoplayer/b/f;)V
    .locals 7
    .param p3    # Lcom/anythink/expressad/exoplayer/d/g;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/os/Handler;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/anythink/expressad/exoplayer/b/g;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Lcom/anythink/expressad/exoplayer/b/c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/anythink/expressad/exoplayer/f/c;",
            "Lcom/anythink/expressad/exoplayer/d/g<",
            "Lcom/anythink/expressad/exoplayer/d/k;",
            ">;",
            "Landroid/os/Handler;",
            "Lcom/anythink/expressad/exoplayer/b/g;",
            "Lcom/anythink/expressad/exoplayer/b/c;",
            "[",
            "Lcom/anythink/expressad/exoplayer/b/f;",
            ")V"
        }
    .end annotation

    new-instance v6, Lcom/anythink/expressad/exoplayer/b/l;

    invoke-direct {v6, p6, p7}, Lcom/anythink/expressad/exoplayer/b/l;-><init>(Lcom/anythink/expressad/exoplayer/b/c;[Lcom/anythink/expressad/exoplayer/b/f;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/anythink/expressad/exoplayer/b/o;-><init>(Landroid/content/Context;Lcom/anythink/expressad/exoplayer/f/c;Lcom/anythink/expressad/exoplayer/d/g;Landroid/os/Handler;Lcom/anythink/expressad/exoplayer/b/g;Lcom/anythink/expressad/exoplayer/b/h;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/anythink/expressad/exoplayer/f/c;Lcom/anythink/expressad/exoplayer/d/g;Landroid/os/Handler;Lcom/anythink/expressad/exoplayer/b/g;Lcom/anythink/expressad/exoplayer/b/h;)V
    .locals 2
    .param p3    # Lcom/anythink/expressad/exoplayer/d/g;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/os/Handler;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/anythink/expressad/exoplayer/b/g;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/anythink/expressad/exoplayer/f/c;",
            "Lcom/anythink/expressad/exoplayer/d/g<",
            "Lcom/anythink/expressad/exoplayer/d/k;",
            ">;",
            "Landroid/os/Handler;",
            "Lcom/anythink/expressad/exoplayer/b/g;",
            "Lcom/anythink/expressad/exoplayer/b/h;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, p2, p3, v1}, Lcom/anythink/expressad/exoplayer/f/b;-><init>(ILcom/anythink/expressad/exoplayer/f/c;Lcom/anythink/expressad/exoplayer/d/g;Z)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/b/o;->r:Landroid/content/Context;

    iput-object p6, p0, Lcom/anythink/expressad/exoplayer/b/o;->t:Lcom/anythink/expressad/exoplayer/b/h;

    new-instance p1, Lcom/anythink/expressad/exoplayer/b/g$a;

    invoke-direct {p1, p4, p5}, Lcom/anythink/expressad/exoplayer/b/g$a;-><init>(Landroid/os/Handler;Lcom/anythink/expressad/exoplayer/b/g;)V

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/b/o;->s:Lcom/anythink/expressad/exoplayer/b/g$a;

    new-instance p1, Lcom/anythink/expressad/exoplayer/b/o$a;

    invoke-direct {p1, p0, v1}, Lcom/anythink/expressad/exoplayer/b/o$a;-><init>(Lcom/anythink/expressad/exoplayer/b/o;B)V

    invoke-interface {p6, p1}, Lcom/anythink/expressad/exoplayer/b/h;->a(Lcom/anythink/expressad/exoplayer/b/h$c;)V

    return-void
.end method

.method private static C()V
    .locals 0

    return-void
.end method

.method private static D()V
    .locals 0

    return-void
.end method

.method private static E()V
    .locals 0

    return-void
.end method

.method private F()V
    .locals 5

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/b/o;->t:Lcom/anythink/expressad/exoplayer/b/h;

    invoke-virtual {p0}, Lcom/anythink/expressad/exoplayer/b/o;->v()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/anythink/expressad/exoplayer/b/h;->a(Z)J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-boolean v2, p0, Lcom/anythink/expressad/exoplayer/b/o;->E:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v2, p0, Lcom/anythink/expressad/exoplayer/b/o;->C:J

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    :goto_0
    iput-wide v0, p0, Lcom/anythink/expressad/exoplayer/b/o;->C:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anythink/expressad/exoplayer/b/o;->E:Z

    :cond_1
    return-void
.end method

.method private a(Lcom/anythink/expressad/exoplayer/f/a;Lcom/anythink/expressad/exoplayer/m;)I
    .locals 2

    sget v0, Lcom/anythink/expressad/exoplayer/k/af;->a:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_1

    iget-object p1, p1, Lcom/anythink/expressad/exoplayer/f/a;->c:Ljava/lang/String;

    const-string v1, "OMX.google.raw.decoder"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    const/16 v1, 0x17

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/b/o;->r:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "android.software.leanback"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    if-eqz p1, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    iget p1, p2, Lcom/anythink/expressad/exoplayer/m;->i:I

    return p1
.end method

.method private static a(Lcom/anythink/expressad/exoplayer/m;Ljava/lang/String;I)Landroid/media/MediaFormat;
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    new-instance v0, Landroid/media/MediaFormat;

    invoke-direct {v0}, Landroid/media/MediaFormat;-><init>()V

    const-string v1, "mime"

    invoke-virtual {v0, v1, p1}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    iget p1, p0, Lcom/anythink/expressad/exoplayer/m;->u:I

    const-string v1, "channel-count"

    invoke-virtual {v0, v1, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    iget p1, p0, Lcom/anythink/expressad/exoplayer/m;->v:I

    const-string v1, "sample-rate"

    invoke-virtual {v0, v1, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    iget-object p0, p0, Lcom/anythink/expressad/exoplayer/m;->j:Ljava/util/List;

    invoke-static {v0, p0}, Lcom/anythink/expressad/exoplayer/f/e;->a(Landroid/media/MediaFormat;Ljava/util/List;)V

    const-string p0, "max-input-size"

    invoke-static {v0, p0, p2}, Lcom/anythink/expressad/exoplayer/f/e;->a(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    sget p0, Lcom/anythink/expressad/exoplayer/k/af;->a:I

    const/16 p1, 0x17

    if-lt p0, p1, :cond_0

    const/4 p0, 0x0

    const-string p1, "priority"

    invoke-virtual {v0, p1, p0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_0
    return-object v0
.end method

.method public static synthetic a(Lcom/anythink/expressad/exoplayer/b/o;)Lcom/anythink/expressad/exoplayer/b/g$a;
    .locals 0

    iget-object p0, p0, Lcom/anythink/expressad/exoplayer/b/o;->s:Lcom/anythink/expressad/exoplayer/b/g$a;

    return-object p0
.end method

.method private static a(Lcom/anythink/expressad/exoplayer/m;Lcom/anythink/expressad/exoplayer/m;)Z
    .locals 2

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/m;->h:Ljava/lang/String;

    iget-object v1, p1, Lcom/anythink/expressad/exoplayer/m;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/anythink/expressad/exoplayer/m;->u:I

    iget v1, p1, Lcom/anythink/expressad/exoplayer/m;->u:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/anythink/expressad/exoplayer/m;->v:I

    iget v1, p1, Lcom/anythink/expressad/exoplayer/m;->v:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/anythink/expressad/exoplayer/m;->x:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/anythink/expressad/exoplayer/m;->y:I

    if-nez v0, :cond_0

    iget v0, p1, Lcom/anythink/expressad/exoplayer/m;->x:I

    if-nez v0, :cond_0

    iget v0, p1, Lcom/anythink/expressad/exoplayer/m;->y:I

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/anythink/expressad/exoplayer/m;->b(Lcom/anythink/expressad/exoplayer/m;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p1}, Lcom/anythink/expressad/exoplayer/k/o;->e(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/b/o;->t:Lcom/anythink/expressad/exoplayer/b/h;

    invoke-interface {v0, p1}, Lcom/anythink/expressad/exoplayer/b/h;->a(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private b(Lcom/anythink/expressad/exoplayer/f/a;Lcom/anythink/expressad/exoplayer/m;)I
    .locals 2

    sget v0, Lcom/anythink/expressad/exoplayer/k/af;->a:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_1

    iget-object p1, p1, Lcom/anythink/expressad/exoplayer/f/a;->c:Ljava/lang/String;

    const-string v1, "OMX.google.raw.decoder"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    const/16 v1, 0x17

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/b/o;->r:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "android.software.leanback"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    if-eqz p1, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    iget p1, p2, Lcom/anythink/expressad/exoplayer/m;->i:I

    return p1
.end method

.method public static synthetic b(Lcom/anythink/expressad/exoplayer/b/o;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/expressad/exoplayer/b/o;->E:Z

    return v0
.end method

.method private static b(Ljava/lang/String;)Z
    .locals 2

    sget v0, Lcom/anythink/expressad/exoplayer/k/af;->a:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_1

    const-string v0, "OMX.SEC.aac.dec"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/anythink/expressad/exoplayer/k/af;->c:Ljava/lang/String;

    const-string v0, "samsung"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/anythink/expressad/exoplayer/k/af;->b:Ljava/lang/String;

    const-string v0, "zeroflte"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "herolte"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "heroqlte"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final a(Lcom/anythink/expressad/exoplayer/f/a;Lcom/anythink/expressad/exoplayer/m;Lcom/anythink/expressad/exoplayer/m;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final a(Lcom/anythink/expressad/exoplayer/f/c;Lcom/anythink/expressad/exoplayer/d/g;Lcom/anythink/expressad/exoplayer/m;)I
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/anythink/expressad/exoplayer/f/c;",
            "Lcom/anythink/expressad/exoplayer/d/g<",
            "Lcom/anythink/expressad/exoplayer/d/k;",
            ">;",
            "Lcom/anythink/expressad/exoplayer/m;",
            ")I"
        }
    .end annotation

    iget-object v0, p3, Lcom/anythink/expressad/exoplayer/m;->h:Ljava/lang/String;

    invoke-static {v0}, Lcom/anythink/expressad/exoplayer/k/o;->a(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    sget v1, Lcom/anythink/expressad/exoplayer/k/af;->a:I

    const/16 v3, 0x15

    if-lt v1, v3, :cond_1

    const/16 v1, 0x20

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iget-object v4, p3, Lcom/anythink/expressad/exoplayer/m;->k:Lcom/anythink/expressad/exoplayer/d/e;

    invoke-static {p2, v4}, Lcom/anythink/expressad/exoplayer/a;->a(Lcom/anythink/expressad/exoplayer/d/g;Lcom/anythink/expressad/exoplayer/d/e;)Z

    move-result p2

    const/4 v4, 0x4

    if-eqz p2, :cond_2

    invoke-direct {p0, v0}, Lcom/anythink/expressad/exoplayer/b/o;->a(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {p1}, Lcom/anythink/expressad/exoplayer/f/c;->a()Lcom/anythink/expressad/exoplayer/f/a;

    move-result-object v5

    if-eqz v5, :cond_2

    or-int/lit8 p1, v1, 0x8

    or-int/2addr p1, v4

    return p1

    :cond_2
    const-string v5, "audio/raw"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/anythink/expressad/exoplayer/b/o;->t:Lcom/anythink/expressad/exoplayer/b/h;

    iget v7, p3, Lcom/anythink/expressad/exoplayer/m;->w:I

    invoke-interface {v5, v7}, Lcom/anythink/expressad/exoplayer/b/h;->a(I)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_3
    iget-object v5, p0, Lcom/anythink/expressad/exoplayer/b/o;->t:Lcom/anythink/expressad/exoplayer/b/h;

    const/4 v7, 0x2

    invoke-interface {v5, v7}, Lcom/anythink/expressad/exoplayer/b/h;->a(I)Z

    move-result v5

    if-nez v5, :cond_5

    :cond_4
    return v6

    :cond_5
    iget-object v5, p3, Lcom/anythink/expressad/exoplayer/m;->k:Lcom/anythink/expressad/exoplayer/d/e;

    if-eqz v5, :cond_6

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_1
    iget v10, v5, Lcom/anythink/expressad/exoplayer/d/e;->b:I

    if-ge v8, v10, :cond_7

    invoke-virtual {v5, v8}, Lcom/anythink/expressad/exoplayer/d/e;->a(I)Lcom/anythink/expressad/exoplayer/d/e$a;

    move-result-object v10

    iget-boolean v10, v10, Lcom/anythink/expressad/exoplayer/d/e$a;->d:Z

    or-int/2addr v9, v10

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_6
    const/4 v9, 0x0

    :cond_7
    invoke-interface {p1, v0, v9}, Lcom/anythink/expressad/exoplayer/f/c;->a(Ljava/lang/String;Z)Lcom/anythink/expressad/exoplayer/f/a;

    move-result-object v5

    if-nez v5, :cond_9

    if-eqz v9, :cond_8

    invoke-interface {p1, v0, v2}, Lcom/anythink/expressad/exoplayer/f/c;->a(Ljava/lang/String;Z)Lcom/anythink/expressad/exoplayer/f/a;

    move-result-object p1

    if-eqz p1, :cond_8

    return v7

    :cond_8
    return v6

    :cond_9
    if-nez p2, :cond_a

    return v7

    :cond_a
    sget p1, Lcom/anythink/expressad/exoplayer/k/af;->a:I

    if-lt p1, v3, :cond_c

    iget p1, p3, Lcom/anythink/expressad/exoplayer/m;->v:I

    const/4 p2, -0x1

    if-eq p1, p2, :cond_b

    invoke-virtual {v5, p1}, Lcom/anythink/expressad/exoplayer/f/a;->a(I)Z

    move-result p1

    if-eqz p1, :cond_d

    :cond_b
    iget p1, p3, Lcom/anythink/expressad/exoplayer/m;->u:I

    if-eq p1, p2, :cond_c

    invoke-virtual {v5, p1}, Lcom/anythink/expressad/exoplayer/f/a;->b(I)Z

    move-result p1

    if-eqz p1, :cond_d

    :cond_c
    const/4 v2, 0x1

    :cond_d
    if-eqz v2, :cond_e

    goto :goto_2

    :cond_e
    const/4 v4, 0x3

    :goto_2
    or-int/lit8 p1, v1, 0x8

    or-int/2addr p1, v4

    return p1
.end method

.method public final a(Lcom/anythink/expressad/exoplayer/f/c;Lcom/anythink/expressad/exoplayer/m;Z)Lcom/anythink/expressad/exoplayer/f/a;
    .locals 1

    iget-object v0, p2, Lcom/anythink/expressad/exoplayer/m;->h:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/anythink/expressad/exoplayer/b/o;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/anythink/expressad/exoplayer/f/c;->a()Lcom/anythink/expressad/exoplayer/f/a;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/anythink/expressad/exoplayer/f/b;->a(Lcom/anythink/expressad/exoplayer/f/c;Lcom/anythink/expressad/exoplayer/m;Z)Lcom/anythink/expressad/exoplayer/f/a;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/anythink/expressad/exoplayer/v;)Lcom/anythink/expressad/exoplayer/v;
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/b/o;->t:Lcom/anythink/expressad/exoplayer/b/h;

    invoke-interface {v0, p1}, Lcom/anythink/expressad/exoplayer/b/h;->a(Lcom/anythink/expressad/exoplayer/v;)Lcom/anythink/expressad/exoplayer/v;

    move-result-object p1

    return-object p1
.end method

.method public final a(ILjava/lang/Object;)V
    .locals 1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/anythink/expressad/exoplayer/a;->a(ILjava/lang/Object;)V

    return-void

    :cond_0
    check-cast p2, Lcom/anythink/expressad/exoplayer/b/b;

    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/b/o;->t:Lcom/anythink/expressad/exoplayer/b/h;

    invoke-interface {p1, p2}, Lcom/anythink/expressad/exoplayer/b/h;->a(Lcom/anythink/expressad/exoplayer/b/b;)V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/b/o;->t:Lcom/anythink/expressad/exoplayer/b/h;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-interface {p1, p2}, Lcom/anythink/expressad/exoplayer/b/h;->a(F)V

    return-void
.end method

.method public final a(JZ)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/anythink/expressad/exoplayer/f/b;->a(JZ)V

    iget-object p3, p0, Lcom/anythink/expressad/exoplayer/b/o;->t:Lcom/anythink/expressad/exoplayer/b/h;

    invoke-interface {p3}, Lcom/anythink/expressad/exoplayer/b/h;->i()V

    iput-wide p1, p0, Lcom/anythink/expressad/exoplayer/b/o;->C:J

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/anythink/expressad/exoplayer/b/o;->D:Z

    iput-boolean p1, p0, Lcom/anythink/expressad/exoplayer/b/o;->E:Z

    return-void
.end method

.method public final a(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .locals 7

    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/b/o;->x:Landroid/media/MediaFormat;

    if-eqz p1, :cond_0

    const-string p2, "mime"

    invoke-virtual {p1, p2}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/anythink/expressad/exoplayer/k/o;->e(Ljava/lang/String;)I

    move-result p1

    iget-object p2, p0, Lcom/anythink/expressad/exoplayer/b/o;->x:Landroid/media/MediaFormat;

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/anythink/expressad/exoplayer/b/o;->y:I

    :goto_0
    move v1, p1

    const-string p1, "channel-count"

    invoke-virtual {p2, p1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    const-string p1, "sample-rate"

    invoke-virtual {p2, p1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v3

    iget-boolean p1, p0, Lcom/anythink/expressad/exoplayer/b/o;->w:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x6

    if-ne v2, p1, :cond_1

    iget p2, p0, Lcom/anythink/expressad/exoplayer/b/o;->z:I

    if-ge p2, p1, :cond_1

    new-array p1, p2, [I

    const/4 p2, 0x0

    :goto_1
    iget v0, p0, Lcom/anythink/expressad/exoplayer/b/o;->z:I

    if-ge p2, v0, :cond_2

    aput p2, p1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :cond_2
    move-object v4, p1

    :try_start_0
    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/b/o;->t:Lcom/anythink/expressad/exoplayer/b/h;

    iget v5, p0, Lcom/anythink/expressad/exoplayer/b/o;->A:I

    iget v6, p0, Lcom/anythink/expressad/exoplayer/b/o;->B:I

    invoke-interface/range {v0 .. v6}, Lcom/anythink/expressad/exoplayer/b/h;->a(III[III)V
    :try_end_0
    .catch Lcom/anythink/expressad/exoplayer/b/h$a; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0}, Lcom/anythink/expressad/exoplayer/a;->s()I

    move-result p2

    invoke-static {p1, p2}, Lcom/anythink/expressad/exoplayer/g;->a(Ljava/lang/Exception;I)Lcom/anythink/expressad/exoplayer/g;

    move-result-object p1

    throw p1
.end method

.method public final a(Lcom/anythink/expressad/exoplayer/c/e;)V
    .locals 5

    iget-boolean v0, p0, Lcom/anythink/expressad/exoplayer/b/o;->D:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/anythink/expressad/exoplayer/c/a;->b()Z

    move-result v0

    if-nez v0, :cond_1

    iget-wide v0, p1, Lcom/anythink/expressad/exoplayer/c/e;->f:J

    iget-wide v2, p0, Lcom/anythink/expressad/exoplayer/b/o;->C:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/32 v2, 0x7a120

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    iget-wide v0, p1, Lcom/anythink/expressad/exoplayer/c/e;->f:J

    iput-wide v0, p0, Lcom/anythink/expressad/exoplayer/b/o;->C:J

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/anythink/expressad/exoplayer/b/o;->D:Z

    :cond_1
    return-void
.end method

.method public final a(Lcom/anythink/expressad/exoplayer/f/a;Landroid/media/MediaCodec;Lcom/anythink/expressad/exoplayer/m;Landroid/media/MediaCrypto;)V
    .locals 7

    invoke-virtual {p0}, Lcom/anythink/expressad/exoplayer/a;->q()[Lcom/anythink/expressad/exoplayer/m;

    sget v0, Lcom/anythink/expressad/exoplayer/k/af;->a:I

    const/16 v1, 0x17

    const/4 v2, 0x1

    const/16 v3, 0x18

    const/4 v4, 0x0

    if-ge v0, v3, :cond_1

    iget-object v5, p1, Lcom/anythink/expressad/exoplayer/f/a;->c:Ljava/lang/String;

    const-string v6, "OMX.google.raw.decoder"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    if-ne v0, v1, :cond_0

    iget-object v5, p0, Lcom/anythink/expressad/exoplayer/b/o;->r:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    if-eqz v5, :cond_0

    const-string v6, "android.software.leanback"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x0

    goto :goto_0

    :cond_0
    const/4 v5, 0x1

    :goto_0
    if-eqz v5, :cond_1

    const/4 v5, -0x1

    goto :goto_1

    :cond_1
    iget v5, p3, Lcom/anythink/expressad/exoplayer/m;->i:I

    :goto_1
    iput v5, p0, Lcom/anythink/expressad/exoplayer/b/o;->u:I

    iget-object v5, p1, Lcom/anythink/expressad/exoplayer/f/a;->c:Ljava/lang/String;

    if-ge v0, v3, :cond_2

    const-string v3, "OMX.SEC.aac.dec"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Lcom/anythink/expressad/exoplayer/k/af;->c:Ljava/lang/String;

    const-string v5, "samsung"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Lcom/anythink/expressad/exoplayer/k/af;->b:Ljava/lang/String;

    const-string v5, "zeroflte"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "herolte"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "heroqlte"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :cond_3
    :goto_2
    iput-boolean v2, p0, Lcom/anythink/expressad/exoplayer/b/o;->w:Z

    iget-boolean v2, p1, Lcom/anythink/expressad/exoplayer/f/a;->i:Z

    iput-boolean v2, p0, Lcom/anythink/expressad/exoplayer/b/o;->v:Z

    iget-object p1, p1, Lcom/anythink/expressad/exoplayer/f/a;->d:Ljava/lang/String;

    if-nez p1, :cond_4

    const-string p1, "audio/raw"

    :cond_4
    iget v2, p0, Lcom/anythink/expressad/exoplayer/b/o;->u:I

    new-instance v3, Landroid/media/MediaFormat;

    invoke-direct {v3}, Landroid/media/MediaFormat;-><init>()V

    const-string v5, "mime"

    invoke-virtual {v3, v5, p1}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    iget p1, p3, Lcom/anythink/expressad/exoplayer/m;->u:I

    const-string v6, "channel-count"

    invoke-virtual {v3, v6, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    iget p1, p3, Lcom/anythink/expressad/exoplayer/m;->v:I

    const-string v6, "sample-rate"

    invoke-virtual {v3, v6, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    iget-object p1, p3, Lcom/anythink/expressad/exoplayer/m;->j:Ljava/util/List;

    invoke-static {v3, p1}, Lcom/anythink/expressad/exoplayer/f/e;->a(Landroid/media/MediaFormat;Ljava/util/List;)V

    const-string p1, "max-input-size"

    invoke-static {v3, p1, v2}, Lcom/anythink/expressad/exoplayer/f/e;->a(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    if-lt v0, v1, :cond_5

    const-string p1, "priority"

    invoke-virtual {v3, p1, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_5
    const/4 p1, 0x0

    invoke-virtual {p2, v3, p1, p4, v4}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    iget-boolean p2, p0, Lcom/anythink/expressad/exoplayer/b/o;->v:Z

    if-eqz p2, :cond_6

    iput-object v3, p0, Lcom/anythink/expressad/exoplayer/b/o;->x:Landroid/media/MediaFormat;

    iget-object p1, p3, Lcom/anythink/expressad/exoplayer/m;->h:Ljava/lang/String;

    invoke-virtual {v3, v5, p1}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_6
    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/b/o;->x:Landroid/media/MediaFormat;

    return-void
.end method

.method public final a(Ljava/lang/String;JJ)V
    .locals 6

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/b/o;->s:Lcom/anythink/expressad/exoplayer/b/g$a;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/anythink/expressad/exoplayer/b/g$a;->a(Ljava/lang/String;JJ)V

    return-void
.end method

.method public final a(Z)V
    .locals 1

    invoke-super {p0, p1}, Lcom/anythink/expressad/exoplayer/f/b;->a(Z)V

    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/b/o;->s:Lcom/anythink/expressad/exoplayer/b/g$a;

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/f/b;->q:Lcom/anythink/expressad/exoplayer/c/d;

    invoke-virtual {p1, v0}, Lcom/anythink/expressad/exoplayer/b/g$a;->a(Lcom/anythink/expressad/exoplayer/c/d;)V

    invoke-virtual {p0}, Lcom/anythink/expressad/exoplayer/a;->r()Lcom/anythink/expressad/exoplayer/aa;

    move-result-object p1

    iget p1, p1, Lcom/anythink/expressad/exoplayer/aa;->b:I

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/b/o;->t:Lcom/anythink/expressad/exoplayer/b/h;

    invoke-interface {v0, p1}, Lcom/anythink/expressad/exoplayer/b/h;->c(I)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/b/o;->t:Lcom/anythink/expressad/exoplayer/b/h;

    invoke-interface {p1}, Lcom/anythink/expressad/exoplayer/b/h;->g()V

    return-void
.end method

.method public final a(JJLandroid/media/MediaCodec;Ljava/nio/ByteBuffer;IIJZ)Z
    .locals 0

    iget-boolean p1, p0, Lcom/anythink/expressad/exoplayer/b/o;->v:Z

    const/4 p2, 0x0

    const/4 p3, 0x1

    if-eqz p1, :cond_0

    and-int/lit8 p1, p8, 0x2

    if-eqz p1, :cond_0

    invoke-virtual {p5, p7, p2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    return p3

    :cond_0
    if-eqz p11, :cond_1

    invoke-virtual {p5, p7, p2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/f/b;->q:Lcom/anythink/expressad/exoplayer/c/d;

    iget p2, p1, Lcom/anythink/expressad/exoplayer/c/d;->f:I

    add-int/2addr p2, p3

    iput p2, p1, Lcom/anythink/expressad/exoplayer/c/d;->f:I

    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/b/o;->t:Lcom/anythink/expressad/exoplayer/b/h;

    invoke-interface {p1}, Lcom/anythink/expressad/exoplayer/b/h;->b()V

    return p3

    :cond_1
    :try_start_0
    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/b/o;->t:Lcom/anythink/expressad/exoplayer/b/h;

    invoke-interface {p1, p6, p9, p10}, Lcom/anythink/expressad/exoplayer/b/h;->a(Ljava/nio/ByteBuffer;J)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p5, p7, p2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/f/b;->q:Lcom/anythink/expressad/exoplayer/c/d;

    iget p2, p1, Lcom/anythink/expressad/exoplayer/c/d;->e:I

    add-int/2addr p2, p3

    iput p2, p1, Lcom/anythink/expressad/exoplayer/c/d;->e:I
    :try_end_0
    .catch Lcom/anythink/expressad/exoplayer/b/h$b; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/anythink/expressad/exoplayer/b/h$d; {:try_start_0 .. :try_end_0} :catch_0

    return p3

    :cond_2
    return p2

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    invoke-virtual {p0}, Lcom/anythink/expressad/exoplayer/a;->s()I

    move-result p2

    invoke-static {p1, p2}, Lcom/anythink/expressad/exoplayer/g;->a(Ljava/lang/Exception;I)Lcom/anythink/expressad/exoplayer/g;

    move-result-object p1

    throw p1
.end method

.method public final b(Lcom/anythink/expressad/exoplayer/m;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/anythink/expressad/exoplayer/f/b;->b(Lcom/anythink/expressad/exoplayer/m;)V

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/b/o;->s:Lcom/anythink/expressad/exoplayer/b/g$a;

    invoke-virtual {v0, p1}, Lcom/anythink/expressad/exoplayer/b/g$a;->a(Lcom/anythink/expressad/exoplayer/m;)V

    iget-object v0, p1, Lcom/anythink/expressad/exoplayer/m;->h:Ljava/lang/String;

    const-string v1, "audio/raw"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/anythink/expressad/exoplayer/m;->w:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    iput v0, p0, Lcom/anythink/expressad/exoplayer/b/o;->y:I

    iget v0, p1, Lcom/anythink/expressad/exoplayer/m;->u:I

    iput v0, p0, Lcom/anythink/expressad/exoplayer/b/o;->z:I

    iget v0, p1, Lcom/anythink/expressad/exoplayer/m;->x:I

    iput v0, p0, Lcom/anythink/expressad/exoplayer/b/o;->A:I

    iget p1, p1, Lcom/anythink/expressad/exoplayer/m;->y:I

    iput p1, p0, Lcom/anythink/expressad/exoplayer/b/o;->B:I

    return-void
.end method

.method public final c()Lcom/anythink/expressad/exoplayer/k/n;
    .locals 0

    return-object p0
.end method

.method public final d()J
    .locals 2

    invoke-virtual {p0}, Lcom/anythink/expressad/exoplayer/a;->a_()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/anythink/expressad/exoplayer/b/o;->F()V

    :cond_0
    iget-wide v0, p0, Lcom/anythink/expressad/exoplayer/b/o;->C:J

    return-wide v0
.end method

.method public final e()Lcom/anythink/expressad/exoplayer/v;
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/b/o;->t:Lcom/anythink/expressad/exoplayer/b/h;

    invoke-interface {v0}, Lcom/anythink/expressad/exoplayer/b/h;->f()Lcom/anythink/expressad/exoplayer/v;

    move-result-object v0

    return-object v0
.end method

.method public final n()V
    .locals 1

    invoke-super {p0}, Lcom/anythink/expressad/exoplayer/f/b;->n()V

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/b/o;->t:Lcom/anythink/expressad/exoplayer/b/h;

    invoke-interface {v0}, Lcom/anythink/expressad/exoplayer/b/h;->a()V

    return-void
.end method

.method public final o()V
    .locals 1

    invoke-direct {p0}, Lcom/anythink/expressad/exoplayer/b/o;->F()V

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/b/o;->t:Lcom/anythink/expressad/exoplayer/b/h;

    invoke-interface {v0}, Lcom/anythink/expressad/exoplayer/b/h;->h()V

    invoke-super {p0}, Lcom/anythink/expressad/exoplayer/f/b;->o()V

    return-void
.end method

.method public final p()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/b/o;->t:Lcom/anythink/expressad/exoplayer/b/h;

    invoke-interface {v0}, Lcom/anythink/expressad/exoplayer/b/h;->j()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-super {p0}, Lcom/anythink/expressad/exoplayer/f/b;->p()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/b/o;->s:Lcom/anythink/expressad/exoplayer/b/g$a;

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/f/b;->q:Lcom/anythink/expressad/exoplayer/c/d;

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/exoplayer/b/g$a;->b(Lcom/anythink/expressad/exoplayer/c/d;)V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/b/o;->s:Lcom/anythink/expressad/exoplayer/b/g$a;

    iget-object v2, p0, Lcom/anythink/expressad/exoplayer/f/b;->q:Lcom/anythink/expressad/exoplayer/c/d;

    invoke-virtual {v1, v2}, Lcom/anythink/expressad/exoplayer/b/g$a;->b(Lcom/anythink/expressad/exoplayer/c/d;)V

    throw v0

    :catchall_1
    move-exception v0

    :try_start_2
    invoke-super {p0}, Lcom/anythink/expressad/exoplayer/f/b;->p()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/b/o;->s:Lcom/anythink/expressad/exoplayer/b/g$a;

    iget-object v2, p0, Lcom/anythink/expressad/exoplayer/f/b;->q:Lcom/anythink/expressad/exoplayer/c/d;

    invoke-virtual {v1, v2}, Lcom/anythink/expressad/exoplayer/b/g$a;->b(Lcom/anythink/expressad/exoplayer/c/d;)V

    throw v0

    :catchall_2
    move-exception v0

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/b/o;->s:Lcom/anythink/expressad/exoplayer/b/g$a;

    iget-object v2, p0, Lcom/anythink/expressad/exoplayer/f/b;->q:Lcom/anythink/expressad/exoplayer/c/d;

    invoke-virtual {v1, v2}, Lcom/anythink/expressad/exoplayer/b/g$a;->b(Lcom/anythink/expressad/exoplayer/c/d;)V

    throw v0
.end method

.method public final u()Z
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/b/o;->t:Lcom/anythink/expressad/exoplayer/b/h;

    invoke-interface {v0}, Lcom/anythink/expressad/exoplayer/b/h;->e()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0}, Lcom/anythink/expressad/exoplayer/f/b;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final v()Z
    .locals 1

    invoke-super {p0}, Lcom/anythink/expressad/exoplayer/f/b;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/b/o;->t:Lcom/anythink/expressad/exoplayer/b/h;

    invoke-interface {v0}, Lcom/anythink/expressad/exoplayer/b/h;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final w()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/b/o;->t:Lcom/anythink/expressad/exoplayer/b/h;

    invoke-interface {v0}, Lcom/anythink/expressad/exoplayer/b/h;->c()V
    :try_end_0
    .catch Lcom/anythink/expressad/exoplayer/b/h$d; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/anythink/expressad/exoplayer/a;->s()I

    move-result v1

    invoke-static {v0, v1}, Lcom/anythink/expressad/exoplayer/g;->a(Ljava/lang/Exception;I)Lcom/anythink/expressad/exoplayer/g;

    move-result-object v0

    throw v0
.end method
