.class public Lcom/anythink/nativead/api/ATNativePrepareInfo;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public adFromView:Landroid/view/View;

.field public adLogoView:Landroid/view/View;

.field public choiceViewLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

.field private final clickViewList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public closeView:Landroid/view/View;

.field public ctaView:Landroid/view/View;

.field public descView:Landroid/view/View;

.field private domainView:Landroid/view/View;

.field public iconView:Landroid/view/View;

.field public mainImageView:Landroid/view/View;

.field public parentView:Landroid/view/View;

.field public titleView:Landroid/view/View;

.field private warningView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/anythink/nativead/api/ATNativePrepareInfo;->clickViewList:Ljava/util/List;

    return-void
.end method

.method private declared-synchronized addClickView(Landroid/view/View;)V
    .locals 1

    monitor-enter p0

    if-nez p1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/anythink/nativead/api/ATNativePrepareInfo;->clickViewList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/anythink/nativead/api/ATNativePrepareInfo;->closeView:Landroid/view/View;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    if-ne v0, p1, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/anythink/nativead/api/ATNativePrepareInfo;->clickViewList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public getAdFromView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/anythink/nativead/api/ATNativePrepareInfo;->adFromView:Landroid/view/View;

    return-object v0
.end method

.method public getAdLogoView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/anythink/nativead/api/ATNativePrepareInfo;->adLogoView:Landroid/view/View;

    return-object v0
.end method

.method public getChoiceViewLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .locals 1

    iget-object v0, p0, Lcom/anythink/nativead/api/ATNativePrepareInfo;->choiceViewLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    return-object v0
.end method

.method public getClickViewList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/anythink/nativead/api/ATNativePrepareInfo;->clickViewList:Ljava/util/List;

    return-object v0
.end method

.method public getCloseView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/anythink/nativead/api/ATNativePrepareInfo;->closeView:Landroid/view/View;

    return-object v0
.end method

.method public getCtaView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/anythink/nativead/api/ATNativePrepareInfo;->ctaView:Landroid/view/View;

    return-object v0
.end method

.method public getDescView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/anythink/nativead/api/ATNativePrepareInfo;->descView:Landroid/view/View;

    return-object v0
.end method

.method public getDomainView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/anythink/nativead/api/ATNativePrepareInfo;->domainView:Landroid/view/View;

    return-object v0
.end method

.method public getIconView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/anythink/nativead/api/ATNativePrepareInfo;->iconView:Landroid/view/View;

    return-object v0
.end method

.method public getMainImageView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/anythink/nativead/api/ATNativePrepareInfo;->mainImageView:Landroid/view/View;

    return-object v0
.end method

.method public getParentView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/anythink/nativead/api/ATNativePrepareInfo;->parentView:Landroid/view/View;

    return-object v0
.end method

.method public getTitleView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/anythink/nativead/api/ATNativePrepareInfo;->titleView:Landroid/view/View;

    return-object v0
.end method

.method public getWarningView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/anythink/nativead/api/ATNativePrepareInfo;->warningView:Landroid/view/View;

    return-object v0
.end method

.method public setAdFromView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/nativead/api/ATNativePrepareInfo;->adFromView:Landroid/view/View;

    return-void
.end method

.method public setAdLogoView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/nativead/api/ATNativePrepareInfo;->adLogoView:Landroid/view/View;

    return-void
.end method

.method public setChoiceViewLayoutParams(Landroid/widget/FrameLayout$LayoutParams;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/nativead/api/ATNativePrepareInfo;->choiceViewLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    return-void
.end method

.method public setClickViewList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/anythink/nativead/api/ATNativePrepareInfo;->addClickView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setCloseView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/nativead/api/ATNativePrepareInfo;->closeView:Landroid/view/View;

    return-void
.end method

.method public setCtaView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/nativead/api/ATNativePrepareInfo;->ctaView:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/anythink/nativead/api/ATNativePrepareInfo;->addClickView(Landroid/view/View;)V

    return-void
.end method

.method public setDescView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/nativead/api/ATNativePrepareInfo;->descView:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/anythink/nativead/api/ATNativePrepareInfo;->addClickView(Landroid/view/View;)V

    return-void
.end method

.method public setDomainView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/nativead/api/ATNativePrepareInfo;->domainView:Landroid/view/View;

    return-void
.end method

.method public setIconView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/nativead/api/ATNativePrepareInfo;->iconView:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/anythink/nativead/api/ATNativePrepareInfo;->addClickView(Landroid/view/View;)V

    return-void
.end method

.method public setMainImageView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/nativead/api/ATNativePrepareInfo;->mainImageView:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/anythink/nativead/api/ATNativePrepareInfo;->addClickView(Landroid/view/View;)V

    return-void
.end method

.method public setParentView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/nativead/api/ATNativePrepareInfo;->parentView:Landroid/view/View;

    return-void
.end method

.method public setTitleView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/nativead/api/ATNativePrepareInfo;->titleView:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/anythink/nativead/api/ATNativePrepareInfo;->addClickView(Landroid/view/View;)V

    return-void
.end method

.method public setWarningView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/nativead/api/ATNativePrepareInfo;->warningView:Landroid/view/View;

    return-void
.end method
