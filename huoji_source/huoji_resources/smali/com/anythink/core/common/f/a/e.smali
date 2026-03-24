.class public final Lcom/anythink/core/common/f/a/e;
.super Lcom/anythink/core/api/BaseAd;
.source ""

# interfaces
.implements Lcom/anythink/core/common/f/a/a;
.implements Ljava/io/Serializable;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:Lcom/anythink/core/api/BaseAd;

.field private g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/anythink/core/api/BaseAd;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/anythink/core/api/BaseAd;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/anythink/core/api/BaseAd;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/anythink/core/common/f/a/e;->a:I

    const/4 v1, 0x5

    iput v1, p0, Lcom/anythink/core/common/f/a/e;->b:I

    iput v0, p0, Lcom/anythink/core/common/f/a/e;->c:I

    iput v1, p0, Lcom/anythink/core/common/f/a/e;->e:I

    iput-object p1, p0, Lcom/anythink/core/common/f/a/e;->f:Lcom/anythink/core/api/BaseAd;

    iput-object p2, p0, Lcom/anythink/core/common/f/a/e;->g:Ljava/util/Map;

    const-string p1, "orientation"

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/anythink/core/common/f/a/e;->a:I

    :cond_0
    const-string p1, "countdown"

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/anythink/core/common/f/a/e;->b:I

    :cond_1
    const-string p1, "allows_skip"

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/anythink/core/common/f/a/e;->c:I

    :cond_2
    const-string p1, "button_type"

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/anythink/core/common/f/a/e;->d:I

    :cond_3
    const-string p1, "s_c_t"

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/anythink/core/common/f/a/e;->e:I

    :cond_4
    return-void
.end method

.method private a(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "orientation"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/anythink/core/common/f/a/e;->a:I

    :cond_0
    const-string v0, "countdown"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/anythink/core/common/f/a/e;->b:I

    :cond_1
    const-string v0, "allows_skip"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/anythink/core/common/f/a/e;->c:I

    :cond_2
    const-string v0, "button_type"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/anythink/core/common/f/a/e;->d:I

    :cond_3
    const-string v0, "s_c_t"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/anythink/core/common/f/a/e;->e:I

    :cond_4
    return-void
.end method

.method private j()Z
    .locals 1

    invoke-virtual {p0}, Lcom/anythink/core/common/f/a/e;->i()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/anythink/core/common/f/a/e;->a:I

    return v0
.end method

.method public final b()J
    .locals 2

    iget v0, p0, Lcom/anythink/core/common/f/a/e;->b:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public final c()I
    .locals 3

    iget v0, p0, Lcom/anythink/core/common/f/a/e;->c:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    return v2

    :cond_1
    return v1
.end method

.method public final clear(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/common/f/a/e;->f:Lcom/anythink/core/api/BaseAd;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/anythink/core/api/BaseAd;->clear(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public final d()I
    .locals 3

    iget v0, p0, Lcom/anythink/core/common/f/a/e;->d:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    return v2

    :cond_0
    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final destroy()V
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/common/f/a/e;->f:Lcom/anythink/core/api/BaseAd;

    invoke-virtual {v0}, Lcom/anythink/core/api/BaseAd;->destroy()V

    return-void
.end method

.method public final e()I
    .locals 1

    iget v0, p0, Lcom/anythink/core/common/f/a/e;->e:I

    return v0
.end method

.method public final f()I
    .locals 2

    iget-object v0, p0, Lcom/anythink/core/common/f/a/e;->f:Lcom/anythink/core/api/BaseAd;

    invoke-virtual {v0}, Lcom/anythink/core/api/BaseAd;->getDetail()Lcom/anythink/core/common/f/h;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/anythink/core/common/f/a/e;->f:Lcom/anythink/core/api/BaseAd;

    invoke-virtual {v0}, Lcom/anythink/core/api/BaseAd;->getDetail()Lcom/anythink/core/common/f/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/f/h;->P()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/anythink/core/common/f/a/e;->g:Ljava/util/Map;

    const-string v1, "video_muted"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public final g()I
    .locals 2

    iget-object v0, p0, Lcom/anythink/core/common/f/a/e;->g:Ljava/util/Map;

    if-eqz v0, :cond_0

    const-string v1, "bn_template_id"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/core/common/f/a/e;->g:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public final getAdAppInfo()Lcom/anythink/core/api/ATAdAppInfo;
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/common/f/a/e;->f:Lcom/anythink/core/api/BaseAd;

    invoke-interface {v0}, Lcom/anythink/core/api/IATThirdPartyMaterial;->getAdAppInfo()Lcom/anythink/core/api/ATAdAppInfo;

    move-result-object v0

    return-object v0
.end method

.method public final getAdChoiceIconUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/common/f/a/e;->f:Lcom/anythink/core/api/BaseAd;

    invoke-interface {v0}, Lcom/anythink/core/api/IATThirdPartyMaterial;->getAdChoiceIconUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getAdFrom()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/common/f/a/e;->f:Lcom/anythink/core/api/BaseAd;

    invoke-interface {v0}, Lcom/anythink/core/api/IATThirdPartyMaterial;->getAdFrom()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getAdIconView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/common/f/a/e;->f:Lcom/anythink/core/api/BaseAd;

    invoke-interface {v0}, Lcom/anythink/core/api/IATThirdPartyMaterial;->getAdIconView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final getAdLogo()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/common/f/a/e;->f:Lcom/anythink/core/api/BaseAd;

    invoke-interface {v0}, Lcom/anythink/core/api/IATThirdPartyMaterial;->getAdLogo()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public final getAdLogoView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/common/f/a/e;->f:Lcom/anythink/core/api/BaseAd;

    invoke-interface {v0}, Lcom/anythink/core/api/IATThirdPartyMaterial;->getAdLogoView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final varargs getAdMediaView([Ljava/lang/Object;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/common/f/a/e;->f:Lcom/anythink/core/api/BaseAd;

    invoke-interface {v0, p1}, Lcom/anythink/core/api/IATThirdPartyMaterial;->getAdMediaView([Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final getAdType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/common/f/a/e;->f:Lcom/anythink/core/api/BaseAd;

    invoke-interface {v0}, Lcom/anythink/core/api/IATThirdPartyMaterial;->getAdType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getAdvertiserInfoOperate()Lcom/anythink/core/api/IATAdvertiserInfoOperate;
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/common/f/a/e;->f:Lcom/anythink/core/api/BaseAd;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/anythink/core/api/IATThirdPartyMaterial;->getAdvertiserInfoOperate()Lcom/anythink/core/api/IATAdvertiserInfoOperate;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getAdvertiserName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/common/f/a/e;->f:Lcom/anythink/core/api/BaseAd;

    invoke-interface {v0}, Lcom/anythink/core/api/IATThirdPartyMaterial;->getAdvertiserName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getAppCommentNum()I
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/common/f/a/e;->f:Lcom/anythink/core/api/BaseAd;

    invoke-interface {v0}, Lcom/anythink/core/api/IATThirdPartyMaterial;->getAppCommentNum()I

    move-result v0

    return v0
.end method

.method public final getAppDownloadButton()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/common/f/a/e;->f:Lcom/anythink/core/api/BaseAd;

    invoke-interface {v0}, Lcom/anythink/core/api/IATThirdPartyMaterial;->getAppDownloadButton()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final getAppPrice()D
    .locals 2

    iget-object v0, p0, Lcom/anythink/core/common/f/a/e;->f:Lcom/anythink/core/api/BaseAd;

    invoke-interface {v0}, Lcom/anythink/core/api/IATThirdPartyMaterial;->getAppPrice()D

    move-result-wide v0

    return-wide v0
.end method

.method public final getCallToActionText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/common/f/a/e;->f:Lcom/anythink/core/api/BaseAd;

    invoke-interface {v0}, Lcom/anythink/core/api/IATThirdPartyMaterial;->getCallToActionText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getCustomAdContainer()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/common/f/a/e;->f:Lcom/anythink/core/api/BaseAd;

    invoke-virtual {v0}, Lcom/anythink/core/api/BaseAd;->getCustomAdContainer()Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method public final getDescriptionText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/common/f/a/e;->f:Lcom/anythink/core/api/BaseAd;

    invoke-interface {v0}, Lcom/anythink/core/api/IATThirdPartyMaterial;->getDescriptionText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getDetail()Lcom/anythink/core/common/f/h;
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/common/f/a/e;->f:Lcom/anythink/core/api/BaseAd;

    invoke-virtual {v0}, Lcom/anythink/core/api/BaseAd;->getDetail()Lcom/anythink/core/common/f/h;

    move-result-object v0

    return-object v0
.end method

.method public final getDomain()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/common/f/a/e;->f:Lcom/anythink/core/api/BaseAd;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/anythink/core/api/IATThirdPartyMaterial;->getDomain()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public final getDownloadProgress()I
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/common/f/a/e;->f:Lcom/anythink/core/api/BaseAd;

    invoke-interface {v0}, Lcom/anythink/core/api/IATThirdPartyMaterial;->getDownloadProgress()I

    move-result v0

    return v0
.end method

.method public final getDownloadStatus()I
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/common/f/a/e;->f:Lcom/anythink/core/api/BaseAd;

    invoke-interface {v0}, Lcom/anythink/core/api/IATThirdPartyMaterial;->getDownloadStatus()I

    move-result v0

    return v0
.end method

.method public final getIconImageUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/common/f/a/e;->f:Lcom/anythink/core/api/BaseAd;

    invoke-interface {v0}, Lcom/anythink/core/api/IATThirdPartyMaterial;->getIconImageUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getImageUrlList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/anythink/core/common/f/a/e;->f:Lcom/anythink/core/api/BaseAd;

    invoke-interface {v0}, Lcom/anythink/core/api/IATThirdPartyMaterial;->getImageUrlList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getMainImageHeight()I
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/common/f/a/e;->f:Lcom/anythink/core/api/BaseAd;

    invoke-interface {v0}, Lcom/anythink/core/api/IATThirdPartyMaterial;->getMainImageHeight()I

    move-result v0

    return v0
.end method

.method public final getMainImageUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/common/f/a/e;->f:Lcom/anythink/core/api/BaseAd;

    invoke-interface {v0}, Lcom/anythink/core/api/IATThirdPartyMaterial;->getMainImageUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getMainImageWidth()I
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/common/f/a/e;->f:Lcom/anythink/core/api/BaseAd;

    invoke-interface {v0}, Lcom/anythink/core/api/IATThirdPartyMaterial;->getMainImageWidth()I

    move-result v0

    return v0
.end method

.method public final getNativeAdInteractionType()I
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/common/f/a/e;->f:Lcom/anythink/core/api/BaseAd;

    invoke-interface {v0}, Lcom/anythink/core/api/IATThirdPartyMaterial;->getNativeAdInteractionType()I

    move-result v0

    return v0
.end method

.method public final getNativeCustomVideo()Lcom/anythink/core/api/ATCustomVideo;
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/common/f/a/e;->f:Lcom/anythink/core/api/BaseAd;

    invoke-interface {v0}, Lcom/anythink/core/api/IATThirdPartyMaterial;->getNativeCustomVideo()Lcom/anythink/core/api/ATCustomVideo;

    move-result-object v0

    return-object v0
.end method

.method public final getNativeExpressHeight()I
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/common/f/a/e;->f:Lcom/anythink/core/api/BaseAd;

    invoke-interface {v0}, Lcom/anythink/core/api/IATThirdPartyMaterial;->getNativeExpressHeight()I

    move-result v0

    return v0
.end method

.method public final getNativeExpressWidth()I
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/common/f/a/e;->f:Lcom/anythink/core/api/BaseAd;

    invoke-interface {v0}, Lcom/anythink/core/api/IATThirdPartyMaterial;->getNativeExpressWidth()I

    move-result v0

    return v0
.end method

.method public final getNativeType()I
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/common/f/a/e;->f:Lcom/anythink/core/api/BaseAd;

    invoke-interface {v0}, Lcom/anythink/core/api/IATThirdPartyMaterial;->getNativeType()I

    move-result v0

    return v0
.end method

.method public final getNetworkInfoMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/anythink/core/common/f/a/e;->f:Lcom/anythink/core/api/BaseAd;

    invoke-virtual {v0}, Lcom/anythink/core/api/BaseAd;->getNetworkInfoMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getShakeView(IILcom/anythink/core/api/ATShakeViewListener;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/common/f/a/e;->f:Lcom/anythink/core/api/BaseAd;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lcom/anythink/core/api/IATThirdPartyMaterial;->getShakeView(IILcom/anythink/core/api/ATShakeViewListener;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final getSlideView(IIILcom/anythink/core/api/ATShakeViewListener;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/common/f/a/e;->f:Lcom/anythink/core/api/BaseAd;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/anythink/core/api/IATThirdPartyMaterial;->getSlideView(IIILcom/anythink/core/api/ATShakeViewListener;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final getStarRating()Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/common/f/a/e;->f:Lcom/anythink/core/api/BaseAd;

    invoke-interface {v0}, Lcom/anythink/core/api/IATThirdPartyMaterial;->getStarRating()Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/common/f/a/e;->f:Lcom/anythink/core/api/BaseAd;

    invoke-interface {v0}, Lcom/anythink/core/api/IATThirdPartyMaterial;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getVideoDuration()D
    .locals 2

    iget-object v0, p0, Lcom/anythink/core/common/f/a/e;->f:Lcom/anythink/core/api/BaseAd;

    invoke-interface {v0}, Lcom/anythink/core/api/IATThirdPartyMaterial;->getVideoDuration()D

    move-result-wide v0

    return-wide v0
.end method

.method public final getVideoHeight()I
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/common/f/a/e;->f:Lcom/anythink/core/api/BaseAd;

    invoke-interface {v0}, Lcom/anythink/core/api/IATThirdPartyMaterial;->getVideoHeight()I

    move-result v0

    return v0
.end method

.method public final getVideoProgress()D
    .locals 2

    iget-object v0, p0, Lcom/anythink/core/common/f/a/e;->f:Lcom/anythink/core/api/BaseAd;

    invoke-interface {v0}, Lcom/anythink/core/api/IATThirdPartyMaterial;->getVideoProgress()D

    move-result-wide v0

    return-wide v0
.end method

.method public final getVideoUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/common/f/a/e;->f:Lcom/anythink/core/api/BaseAd;

    invoke-interface {v0}, Lcom/anythink/core/api/IATThirdPartyMaterial;->getVideoUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getVideoWidth()I
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/common/f/a/e;->f:Lcom/anythink/core/api/BaseAd;

    invoke-interface {v0}, Lcom/anythink/core/api/IATThirdPartyMaterial;->getVideoWidth()I

    move-result v0

    return v0
.end method

.method public final getWarning()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/common/f/a/e;->f:Lcom/anythink/core/api/BaseAd;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/anythink/core/api/IATThirdPartyMaterial;->getWarning()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public final h()[I
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iget-object v1, p0, Lcom/anythink/core/common/f/a/e;->g:Ljava/util/Map;

    if-eqz v1, :cond_0

    const-string v2, "mix_click_type"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/anythink/core/common/f/a/e;->g:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, [I

    if-eqz v2, :cond_0

    move-object v0, v1

    check-cast v0, [I

    :cond_0
    return-object v0

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x5
    .end array-data
.end method

.method public final i()I
    .locals 3

    iget-object v0, p0, Lcom/anythink/core/common/f/a/e;->g:Ljava/util/Map;

    if-eqz v0, :cond_0

    const-string v1, "close_button"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getCloseButtonVisibility() failed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final registerListener(Landroid/view/View;Ljava/util/List;Landroid/widget/FrameLayout$LayoutParams;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Landroid/widget/FrameLayout$LayoutParams;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/anythink/core/common/f/a/e;->f:Lcom/anythink/core/api/BaseAd;

    invoke-virtual {v0, p1, p2, p3}, Lcom/anythink/core/api/BaseAd;->registerListener(Landroid/view/View;Ljava/util/List;Landroid/widget/FrameLayout$LayoutParams;)V

    return-void
.end method

.method public final registerListener(Landroid/view/View;Ljava/util/List;Landroid/widget/FrameLayout$LayoutParams;Lcom/anythink/core/basead/b/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Landroid/widget/FrameLayout$LayoutParams;",
            "Lcom/anythink/core/basead/b/b;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/anythink/core/common/f/a/e;->f:Lcom/anythink/core/api/BaseAd;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/anythink/core/api/BaseAd;->registerListener(Landroid/view/View;Ljava/util/List;Landroid/widget/FrameLayout$LayoutParams;Lcom/anythink/core/basead/b/b;)V

    return-void
.end method

.method public final setNativeEventListener(Lcom/anythink/core/common/b/l;)V
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/common/f/a/e;->f:Lcom/anythink/core/api/BaseAd;

    invoke-virtual {v0, p1}, Lcom/anythink/core/api/BaseAd;->setNativeEventListener(Lcom/anythink/core/common/b/l;)V

    return-void
.end method

.method public final setNetworkInfoMap(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/anythink/core/common/f/a/e;->f:Lcom/anythink/core/api/BaseAd;

    invoke-virtual {v0, p1}, Lcom/anythink/core/api/BaseAd;->setNetworkInfoMap(Ljava/util/Map;)V

    return-void
.end method

.method public final setTrackingInfo(Lcom/anythink/core/common/f/h;)V
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/common/f/a/e;->f:Lcom/anythink/core/api/BaseAd;

    invoke-virtual {v0, p1}, Lcom/anythink/core/api/BaseAd;->setTrackingInfo(Lcom/anythink/core/common/f/h;)V

    return-void
.end method

.method public final setVideoMute(Z)V
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/common/f/a/e;->f:Lcom/anythink/core/api/BaseAd;

    invoke-virtual {v0, p1}, Lcom/anythink/core/api/BaseAd;->setVideoMute(Z)V

    return-void
.end method

.method public final supportSetPermissionClickViewList()Z
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/common/f/a/e;->f:Lcom/anythink/core/api/BaseAd;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/anythink/core/api/IATThirdPartyMaterial;->supportSetPermissionClickViewList()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final supportSetPrivacyClickViewList()Z
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/common/f/a/e;->f:Lcom/anythink/core/api/BaseAd;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/anythink/core/api/IATThirdPartyMaterial;->supportSetPrivacyClickViewList()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
