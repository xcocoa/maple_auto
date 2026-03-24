.class public Lcom/anythink/network/onlineapi/OnlineApiATNativeAd;
.super Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;
.source ""


# instance fields
.field public a:Lcom/anythink/basead/d/h;

.field public b:Landroid/content/Context;

.field public c:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/anythink/basead/d/h;)V
    .locals 2

    invoke-direct {p0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/network/onlineapi/OnlineApiATNativeAd;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/anythink/network/onlineapi/OnlineApiATNativeAd;->a:Lcom/anythink/basead/d/h;

    new-instance p1, Lcom/anythink/network/onlineapi/OnlineApiATNativeAd$1;

    invoke-direct {p1, p0}, Lcom/anythink/network/onlineapi/OnlineApiATNativeAd$1;-><init>(Lcom/anythink/network/onlineapi/OnlineApiATNativeAd;)V

    invoke-virtual {p2, p1}, Lcom/anythink/basead/d/h;->a(Lcom/anythink/basead/e/a;)V

    iget-object p1, p0, Lcom/anythink/network/onlineapi/OnlineApiATNativeAd;->a:Lcom/anythink/basead/d/h;

    invoke-virtual {p1}, Lcom/anythink/basead/d/h;->a()Lcom/anythink/core/common/f/l;

    move-result-object p1

    invoke-static {p1}, Lcom/anythink/basead/b;->a(Lcom/anythink/core/common/f/l;)Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->setNetworkInfoMap(Ljava/util/Map;)V

    iget-object p1, p0, Lcom/anythink/network/onlineapi/OnlineApiATNativeAd;->a:Lcom/anythink/basead/d/h;

    invoke-virtual {p1}, Lcom/anythink/basead/d/h;->g()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->setAdChoiceIconUrl(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/anythink/network/onlineapi/OnlineApiATNativeAd;->a:Lcom/anythink/basead/d/h;

    invoke-virtual {p1}, Lcom/anythink/basead/d/h;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->setTitle(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/anythink/network/onlineapi/OnlineApiATNativeAd;->a:Lcom/anythink/basead/d/h;

    invoke-virtual {p1}, Lcom/anythink/basead/d/h;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->setDescriptionText(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/anythink/network/onlineapi/OnlineApiATNativeAd;->a:Lcom/anythink/basead/d/h;

    invoke-virtual {p1}, Lcom/anythink/basead/d/h;->e()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->setIconImageUrl(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/anythink/network/onlineapi/OnlineApiATNativeAd;->a:Lcom/anythink/basead/d/h;

    invoke-virtual {p1}, Lcom/anythink/basead/d/h;->f()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->setMainImageUrl(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/anythink/network/onlineapi/OnlineApiATNativeAd;->a:Lcom/anythink/basead/d/h;

    invoke-virtual {p1}, Lcom/anythink/basead/d/h;->d()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->setCallToActionText(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/anythink/network/onlineapi/OnlineApiATNativeAd;->a:Lcom/anythink/basead/d/h;

    invoke-virtual {p1}, Lcom/anythink/basead/d/h;->n()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/anythink/network/adx/AdxAppDownloadInfo;

    iget-object p2, p0, Lcom/anythink/network/onlineapi/OnlineApiATNativeAd;->a:Lcom/anythink/basead/d/h;

    invoke-direct {p1, p2}, Lcom/anythink/network/adx/AdxAppDownloadInfo;-><init>(Lcom/anythink/basead/d/h;)V

    invoke-virtual {p0, p1}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->setAdAppInfo(Lcom/anythink/core/api/ATAdAppInfo;)V

    :cond_0
    iget-object p1, p0, Lcom/anythink/network/onlineapi/OnlineApiATNativeAd;->a:Lcom/anythink/basead/d/h;

    invoke-virtual {p1}, Lcom/anythink/basead/d/h;->w()I

    move-result p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->setNativeInteractionType(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p2}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->setNativeInteractionType(I)V

    :goto_0
    iget-object p1, p0, Lcom/anythink/network/onlineapi/OnlineApiATNativeAd;->a:Lcom/anythink/basead/d/h;

    invoke-virtual {p1}, Lcom/anythink/basead/d/h;->u()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->setMainImageWidth(I)V

    iget-object p1, p0, Lcom/anythink/network/onlineapi/OnlineApiATNativeAd;->a:Lcom/anythink/basead/d/h;

    invoke-virtual {p1}, Lcom/anythink/basead/d/h;->v()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->setMainImageHeight(I)V

    return-void
.end method


# virtual methods
.method public clear(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/anythink/network/onlineapi/OnlineApiATNativeAd;->a:Lcom/anythink/basead/d/h;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/anythink/basead/d/h;->p()V

    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 2

    iget-object v0, p0, Lcom/anythink/network/onlineapi/OnlineApiATNativeAd;->a:Lcom/anythink/basead/d/h;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/anythink/basead/d/h;->a(Lcom/anythink/basead/e/a;)V

    iget-object v0, p0, Lcom/anythink/network/onlineapi/OnlineApiATNativeAd;->a:Lcom/anythink/basead/d/h;

    invoke-virtual {v0}, Lcom/anythink/basead/d/h;->q()V

    :cond_0
    return-void
.end method

.method public varargs getAdMediaView([Ljava/lang/Object;)Landroid/view/View;
    .locals 3

    iget-object p1, p0, Lcom/anythink/network/onlineapi/OnlineApiATNativeAd;->c:Landroid/view/View;

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/anythink/network/onlineapi/OnlineApiATNativeAd;->a:Lcom/anythink/basead/d/h;

    iget-object v0, p0, Lcom/anythink/network/onlineapi/OnlineApiATNativeAd;->b:Landroid/content/Context;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/anythink/basead/d/h;->a(Landroid/content/Context;ZLcom/anythink/basead/ui/BaseMediaATView$a;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/network/onlineapi/OnlineApiATNativeAd;->c:Landroid/view/View;

    :cond_0
    iget-object p1, p0, Lcom/anythink/network/onlineapi/OnlineApiATNativeAd;->c:Landroid/view/View;

    return-object p1
.end method

.method public getCustomAdContainer()Landroid/view/ViewGroup;
    .locals 2

    iget-object v0, p0, Lcom/anythink/network/onlineapi/OnlineApiATNativeAd;->a:Lcom/anythink/basead/d/h;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/anythink/basead/ui/OwnNativeATView;

    iget-object v1, p0, Lcom/anythink/network/onlineapi/OnlineApiATNativeAd;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/anythink/basead/ui/OwnNativeATView;-><init>(Landroid/content/Context;)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDownloadStatus()I
    .locals 1

    iget-object v0, p0, Lcom/anythink/network/onlineapi/OnlineApiATNativeAd;->a:Lcom/anythink/basead/d/h;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/basead/d/h;->x()I

    move-result v0

    if-ltz v0, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public prepare(Landroid/view/View;Lcom/anythink/nativead/api/ATNativePrepareInfo;)V
    .locals 3

    iget-object v0, p0, Lcom/anythink/network/onlineapi/OnlineApiATNativeAd;->a:Lcom/anythink/basead/d/h;

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/anythink/nativead/api/ATNativePrepareInfo;->getClickViewList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    instance-of v2, p2, Lcom/anythink/nativead/api/ATNativePrepareExInfo;

    if-eqz v2, :cond_0

    check-cast p2, Lcom/anythink/nativead/api/ATNativePrepareExInfo;

    invoke-virtual {p2}, Lcom/anythink/nativead/api/ATNativePrepareExInfo;->getCreativeClickViewList()Ljava/util/List;

    move-result-object v1

    :cond_0
    iget-object p2, p0, Lcom/anythink/network/onlineapi/OnlineApiATNativeAd;->a:Lcom/anythink/basead/d/h;

    invoke-virtual {p2, p1, v0, v1}, Lcom/anythink/basead/d/h;->a(Landroid/view/View;Ljava/util/List;Ljava/util/List;)V

    :cond_1
    return-void
.end method
