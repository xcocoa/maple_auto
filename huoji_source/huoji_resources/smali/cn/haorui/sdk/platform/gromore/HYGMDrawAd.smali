.class public Lcn/haorui/sdk/platform/gromore/HYGMDrawAd;
.super Lcom/bytedance/msdk/api/v2/ad/custom/draw/GMCustomDrawAd;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "HYGMDrawAd"


# instance fields
.field private iDrawAd:Lcn/haorui/sdk/core/ad/draw/IDrawAd;


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/core/ad/draw/IDrawAd;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/msdk/api/v2/ad/custom/draw/GMCustomDrawAd;-><init>()V

    iput-object p1, p0, Lcn/haorui/sdk/platform/gromore/HYGMDrawAd;->iDrawAd:Lcn/haorui/sdk/core/ad/draw/IDrawAd;

    invoke-virtual {p0}, Lcn/haorui/sdk/platform/gromore/HYGMDrawAd;->getInteractionType()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/bytedance/msdk/api/v2/ad/custom/draw/GMCustomDrawAd;->setInteractionType(I)V

    return-void
.end method


# virtual methods
.method public getExpressView()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcn/haorui/sdk/platform/gromore/HYGMDrawAd;->iDrawAd:Lcn/haorui/sdk/core/ad/draw/IDrawAd;

    invoke-interface {v0}, Lcn/haorui/sdk/core/ad/IAd;->getAdView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getExpressView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HYGMDrawAd"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public getInteractionType()I
    .locals 2

    iget-object v0, p0, Lcn/haorui/sdk/platform/gromore/HYGMDrawAd;->iDrawAd:Lcn/haorui/sdk/core/ad/draw/IDrawAd;

    invoke-interface {v0}, Lcn/haorui/sdk/core/ad/draw/IDrawAd;->getInteractionType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x4

    return v0

    :cond_0
    const/4 v0, 0x2

    return v0
.end method

.method public registerViewForInteraction(Landroid/app/Activity;Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMViewBinder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMViewBinder;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0, p2}, Lcn/haorui/sdk/platform/gromore/HYGMDrawAd;->showAd(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public showAd(Landroid/view/ViewGroup;)V
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/platform/gromore/HYGMDrawAd;->iDrawAd:Lcn/haorui/sdk/core/ad/draw/IDrawAd;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcn/haorui/sdk/core/ad/draw/IDrawAd;->showAd(Landroid/view/ViewGroup;)V

    :cond_0
    return-void
.end method
