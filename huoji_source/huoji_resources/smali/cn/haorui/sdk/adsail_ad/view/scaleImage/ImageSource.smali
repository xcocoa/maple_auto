.class public final Lcn/haorui/sdk/adsail_ad/view/scaleImage/ImageSource;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final ASSET_SCHEME:Ljava/lang/String; = "file:///android_asset/"

.field public static final FILE_SCHEME:Ljava/lang/String; = "file:///"


# instance fields
.field private final bitmap:Landroid/graphics/Bitmap;

.field private cached:Z

.field private final resource:Ljava/lang/Integer;

.field private sHeight:I

.field private sRegion:Landroid/graphics/Rect;

.field private sWidth:I

.field private tile:Z

.field private final uri:Landroid/net/Uri;


# direct methods
.method private constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/ImageSource;->bitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/ImageSource;->uri:Landroid/net/Uri;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/ImageSource;->resource:Ljava/lang/Integer;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/ImageSource;->tile:Z

    return-void
.end method

.method private constructor <init>(Landroid/graphics/Bitmap;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/ImageSource;->bitmap:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/ImageSource;->uri:Landroid/net/Uri;

    iput-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/ImageSource;->resource:Ljava/lang/Integer;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/ImageSource;->tile:Z

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/ImageSource;->sWidth:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    iput p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/ImageSource;->sHeight:I

    iput-boolean p2, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/ImageSource;->cached:Z

    return-void
.end method

.method private constructor <init>(Landroid/net/Uri;)V
    .locals 3
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file:///"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/io/File;

    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    :try_start_0
    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/ImageSource;->bitmap:Landroid/graphics/Bitmap;

    iput-object p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/ImageSource;->uri:Landroid/net/Uri;

    iput-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/ImageSource;->resource:Ljava/lang/Integer;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/ImageSource;->tile:Z

    return-void
.end method

.method public static asset(Ljava/lang/String;)Lcn/haorui/sdk/adsail_ad/view/scaleImage/ImageSource;
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "Asset name must not be null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file:///android_asset/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/ImageSource;->uri(Ljava/lang/String;)Lcn/haorui/sdk/adsail_ad/view/scaleImage/ImageSource;

    move-result-object p0

    return-object p0
.end method

.method public static bitmap(Landroid/graphics/Bitmap;)Lcn/haorui/sdk/adsail_ad/view/scaleImage/ImageSource;
    .locals 2
    .param p0    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "Bitmap must not be null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/ImageSource;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/ImageSource;-><init>(Landroid/graphics/Bitmap;Z)V

    return-object v0
.end method

.method public static cachedBitmap(Landroid/graphics/Bitmap;)Lcn/haorui/sdk/adsail_ad/view/scaleImage/ImageSource;
    .locals 2
    .param p0    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "Bitmap must not be null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/ImageSource;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/ImageSource;-><init>(Landroid/graphics/Bitmap;Z)V

    return-object v0
.end method

.method public static resource(I)Lcn/haorui/sdk/adsail_ad/view/scaleImage/ImageSource;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/ImageSource;

    invoke-direct {v0, p0}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/ImageSource;-><init>(I)V

    return-object v0
.end method

.method private setInvariants()V
    .locals 2

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/ImageSource;->sRegion:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/ImageSource;->tile:Z

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iput v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/ImageSource;->sWidth:I

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/ImageSource;->sRegion:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iput v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/ImageSource;->sHeight:I

    :cond_0
    return-void
.end method

.method public static uri(Landroid/net/Uri;)Lcn/haorui/sdk/adsail_ad/view/scaleImage/ImageSource;
    .locals 1
    .param p0    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "Uri must not be null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/ImageSource;

    invoke-direct {v0, p0}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/ImageSource;-><init>(Landroid/net/Uri;)V

    return-object v0
.end method

.method public static uri(Ljava/lang/String;)Lcn/haorui/sdk/adsail_ad/view/scaleImage/ImageSource;
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "Uri must not be null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file:///"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_1
    new-instance v0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/ImageSource;

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-direct {v0, p0}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/ImageSource;-><init>(Landroid/net/Uri;)V

    return-object v0
.end method


# virtual methods
.method public dimensions(II)Lcn/haorui/sdk/adsail_ad/view/scaleImage/ImageSource;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/ImageSource;->bitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    iput p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/ImageSource;->sWidth:I

    iput p2, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/ImageSource;->sHeight:I

    :cond_0
    invoke-direct {p0}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/ImageSource;->setInvariants()V

    return-object p0
.end method

.method public final getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/ImageSource;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public final getResource()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/ImageSource;->resource:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getSHeight()I
    .locals 1

    iget v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/ImageSource;->sHeight:I

    return v0
.end method

.method public final getSRegion()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/ImageSource;->sRegion:Landroid/graphics/Rect;

    return-object v0
.end method

.method public final getSWidth()I
    .locals 1

    iget v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/ImageSource;->sWidth:I

    return v0
.end method

.method public final getTile()Z
    .locals 1

    iget-boolean v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/ImageSource;->tile:Z

    return v0
.end method

.method public final getUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/ImageSource;->uri:Landroid/net/Uri;

    return-object v0
.end method

.method public final isCached()Z
    .locals 1

    iget-boolean v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/ImageSource;->cached:Z

    return v0
.end method

.method public region(Landroid/graphics/Rect;)Lcn/haorui/sdk/adsail_ad/view/scaleImage/ImageSource;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/ImageSource;->sRegion:Landroid/graphics/Rect;

    invoke-direct {p0}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/ImageSource;->setInvariants()V

    return-object p0
.end method

.method public tiling(Z)Lcn/haorui/sdk/adsail_ad/view/scaleImage/ImageSource;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-boolean p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/ImageSource;->tile:Z

    return-object p0
.end method

.method public tilingDisabled()Lcn/haorui/sdk/adsail_ad/view/scaleImage/ImageSource;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/ImageSource;->tiling(Z)Lcn/haorui/sdk/adsail_ad/view/scaleImage/ImageSource;

    move-result-object v0

    return-object v0
.end method

.method public tilingEnabled()Lcn/haorui/sdk/adsail_ad/view/scaleImage/ImageSource;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/ImageSource;->tiling(Z)Lcn/haorui/sdk/adsail_ad/view/scaleImage/ImageSource;

    move-result-object v0

    return-object v0
.end method
