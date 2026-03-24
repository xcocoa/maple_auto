.class public Lcom/anythink/expressad/video/module/AnythinkPlayableView;
.super Lcom/anythink/expressad/video/module/AnythinkH5EndCardView;
.source ""


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/anythink/expressad/video/module/AnythinkH5EndCardView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/anythink/expressad/video/module/AnythinkH5EndCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lcom/anythink/expressad/video/module/AnythinkH5EndCardView;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/anythink/expressad/video/module/AnythinkH5EndCardView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public onBackPress()V
    .locals 0

    invoke-super {p0}, Lcom/anythink/expressad/video/module/AnythinkH5EndCardView;->onBackPress()V

    return-void
.end method

.method public preLoadData(Lcom/anythink/expressad/video/signal/factory/b;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/anythink/expressad/video/module/AnythinkH5EndCardView;->preLoadData(Lcom/anythink/expressad/video/signal/factory/b;)V

    const/4 p1, 0x1

    invoke-super {p0, p1}, Lcom/anythink/expressad/video/module/AnythinkH5EndCardView;->setLoadPlayable(Z)V

    return-void
.end method
