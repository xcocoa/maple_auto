.class public Lcom/anythink/basead/ui/animplayerview/AlbumScaleAnimPlayerView;
.super Lcom/anythink/basead/ui/animplayerview/BaseMainAnimPlayerView;
.source ""


# instance fields
.field private A:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private B:Landroid/graphics/Paint;

.field private y:Lcom/anythink/basead/ui/animplayerview/c;

.field private z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/anythink/basead/ui/animplayerview/AlbumScaleAnimPlayerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/anythink/basead/ui/animplayerview/AlbumScaleAnimPlayerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/anythink/basead/ui/animplayerview/BaseMainAnimPlayerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static synthetic a(Lcom/anythink/basead/ui/animplayerview/AlbumScaleAnimPlayerView;)Lcom/anythink/basead/ui/animplayerview/c;
    .locals 0

    iget-object p0, p0, Lcom/anythink/basead/ui/animplayerview/AlbumScaleAnimPlayerView;->y:Lcom/anythink/basead/ui/animplayerview/c;

    return-object p0
.end method

.method public static synthetic a(Lcom/anythink/basead/ui/animplayerview/AlbumScaleAnimPlayerView;Lcom/anythink/basead/ui/animplayerview/c;)Lcom/anythink/basead/ui/animplayerview/c;
    .locals 0

    iput-object p1, p0, Lcom/anythink/basead/ui/animplayerview/AlbumScaleAnimPlayerView;->y:Lcom/anythink/basead/ui/animplayerview/c;

    return-object p1
.end method

.method public static synthetic b(Lcom/anythink/basead/ui/animplayerview/AlbumScaleAnimPlayerView;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/anythink/basead/ui/animplayerview/AlbumScaleAnimPlayerView;->A:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic c(Lcom/anythink/basead/ui/animplayerview/AlbumScaleAnimPlayerView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/anythink/basead/ui/animplayerview/AlbumScaleAnimPlayerView;->z:Z

    return p0
.end method

.method public static synthetic d(Lcom/anythink/basead/ui/animplayerview/AlbumScaleAnimPlayerView;)Z
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anythink/basead/ui/animplayerview/AlbumScaleAnimPlayerView;->z:Z

    return v0
.end method

.method private j()V
    .locals 9

    const/4 v0, 0x2

    new-array v6, v0, [I

    const-string v1, "#DF4B32"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    aput v1, v6, v2

    const-string v1, "#800915"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    aput v1, v6, v2

    new-array v7, v0, [F

    fill-array-data v7, :array_0

    new-instance v0, Landroid/graphics/LinearGradient;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v1

    int-to-float v4, v1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v1

    int-to-float v5, v1

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/anythink/basead/ui/animplayerview/AlbumScaleAnimPlayerView;->B:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private k()V
    .locals 5

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/common/res/b;->a(Landroid/content/Context;)Lcom/anythink/core/common/res/b;

    move-result-object v0

    new-instance v1, Lcom/anythink/core/common/res/e;

    iget-object v2, p0, Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView;->e:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-direct {v1, v3, v2}, Lcom/anythink/core/common/res/e;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    new-instance v4, Lcom/anythink/basead/ui/animplayerview/AlbumScaleAnimPlayerView$1;

    invoke-direct {v4, p0}, Lcom/anythink/basead/ui/animplayerview/AlbumScaleAnimPlayerView$1;-><init>(Lcom/anythink/basead/ui/animplayerview/AlbumScaleAnimPlayerView;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/anythink/core/common/res/b;->a(Lcom/anythink/core/common/res/e;IILcom/anythink/core/common/res/b$a;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/AlbumScaleAnimPlayerView;->y:Lcom/anythink/basead/ui/animplayerview/c;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/anythink/basead/ui/animplayerview/b;->start()V

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/basead/ui/animplayerview/AlbumScaleAnimPlayerView;->z:Z

    return-void
.end method

.method public final a(Landroid/content/Context;)V
    .locals 9

    const/4 p1, 0x2

    new-array v5, p1, [I

    const-string v0, "#DF4B32"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    aput v0, v5, v1

    const-string v0, "#800915"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    const/4 v8, 0x1

    aput v0, v5, v8

    new-array v6, p1, [F

    fill-array-data v6, :array_0

    new-instance p1, Landroid/graphics/LinearGradient;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v0

    int-to-float v4, v0

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/anythink/basead/ui/animplayerview/AlbumScaleAnimPlayerView;->B:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/anythink/core/common/res/b;->a(Landroid/content/Context;)Lcom/anythink/core/common/res/b;

    move-result-object p1

    new-instance v0, Lcom/anythink/core/common/res/e;

    iget-object v1, p0, Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView;->e:Ljava/lang/String;

    invoke-direct {v0, v8, v1}, Lcom/anythink/core/common/res/e;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    new-instance v3, Lcom/anythink/basead/ui/animplayerview/AlbumScaleAnimPlayerView$1;

    invoke-direct {v3, p0}, Lcom/anythink/basead/ui/animplayerview/AlbumScaleAnimPlayerView$1;-><init>(Lcom/anythink/basead/ui/animplayerview/AlbumScaleAnimPlayerView;)V

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/anythink/core/common/res/b;->a(Lcom/anythink/core/common/res/e;IILcom/anythink/core/common/res/b$a;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/AlbumScaleAnimPlayerView;->y:Lcom/anythink/basead/ui/animplayerview/c;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/anythink/basead/ui/animplayerview/b;->pause()V

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/AlbumScaleAnimPlayerView;->y:Lcom/anythink/basead/ui/animplayerview/c;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/anythink/basead/ui/animplayerview/b;->stop()V

    :cond_0
    return-void
.end method

.method public final d()V
    .locals 1

    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/AlbumScaleAnimPlayerView;->y:Lcom/anythink/basead/ui/animplayerview/c;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/anythink/basead/ui/animplayerview/c;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anythink/basead/ui/animplayerview/AlbumScaleAnimPlayerView;->y:Lcom/anythink/basead/ui/animplayerview/c;

    :cond_0
    return-void
.end method

.method public final e()I
    .locals 1

    const/16 v0, 0xfa0

    return v0
.end method

.method public init(Lcom/anythink/core/common/f/l;Lcom/anythink/core/common/f/m;ZLjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/anythink/core/common/f/l;",
            "Lcom/anythink/core/common/f/m;",
            "Z",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    iput-object p4, p0, Lcom/anythink/basead/ui/animplayerview/AlbumScaleAnimPlayerView;->A:Ljava/util/List;

    invoke-super {p0, p1, p2, p3, p4}, Lcom/anythink/basead/ui/animplayerview/BaseMainAnimPlayerView;->init(Lcom/anythink/core/common/f/l;Lcom/anythink/core/common/f/m;ZLjava/util/List;)V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/AlbumScaleAnimPlayerView;->B:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v0

    int-to-float v5, v0

    iget-object v6, p0, Lcom/anythink/basead/ui/animplayerview/AlbumScaleAnimPlayerView;->B:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method
