.class public Lcom/anythink/expressad/video/module/AnythinkContainerView;
.super Lcom/anythink/expressad/video/module/AnythinkBaseView;
.source ""

# interfaces
.implements Lcom/anythink/expressad/video/signal/e;
.implements Lcom/anythink/expressad/video/signal/h;


# instance fields
.field private A:I

.field private B:Z

.field private C:Z

.field private D:Z

.field private E:Z

.field private F:Z

.field private G:Z

.field private H:I

.field private I:Z

.field private J:Z

.field private K:I

.field private L:I

.field private M:I

.field private N:I

.field private O:I

.field private P:Ljava/lang/String;

.field private Q:Lcom/anythink/expressad/video/signal/factory/b;

.field private R:Lcom/anythink/expressad/video/dynview/widget/AnyThinkOrderCampView;

.field private S:Z

.field private T:Z

.field private U:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/anythink/expressad/foundation/d/c;",
            ">;"
        }
    .end annotation
.end field

.field private n:Lcom/anythink/expressad/video/module/AnythinkPlayableView;

.field private o:Lcom/anythink/expressad/video/module/AnythinkClickCTAView;

.field private p:Lcom/anythink/expressad/video/module/AnythinkClickMiniCardView;

.field private q:Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;

.field private r:Lcom/anythink/expressad/video/module/AnythinkH5EndCardView;

.field private s:Lcom/anythink/expressad/video/module/AnythinkVideoEndCoverView;

.field private t:Lcom/anythink/expressad/video/module/AnythinkVastEndCardView;

.field private u:Lcom/anythink/expressad/video/module/AnythinkLandingPageView;

.field private v:Lcom/anythink/expressad/video/module/AnythinkAlertWebview;

.field private w:Ljava/lang/String;

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/anythink/expressad/video/module/AnythinkBaseView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    iput p1, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->y:I

    iput p1, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->z:I

    iput p1, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->A:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->B:Z

    iput-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->C:Z

    iput-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->D:Z

    iput-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->E:Z

    iput-boolean p1, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->F:Z

    iput-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->G:Z

    iput-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->I:Z

    iput-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->J:Z

    iput-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->S:Z

    iput-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->T:Z

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->U:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/anythink/expressad/video/module/AnythinkBaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    iput p1, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->y:I

    iput p1, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->z:I

    iput p1, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->A:I

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->B:Z

    iput-boolean p2, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->C:Z

    iput-boolean p2, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->D:Z

    iput-boolean p2, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->E:Z

    iput-boolean p1, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->F:Z

    iput-boolean p2, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->G:Z

    iput-boolean p2, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->I:Z

    iput-boolean p2, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->J:Z

    iput-boolean p2, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->S:Z

    iput-boolean p2, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->T:Z

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->U:Ljava/util/List;

    return-void
.end method

.method private varargs a(Landroid/content/res/Configuration;[Lcom/anythink/expressad/video/module/AnythinkBaseView;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x8

    if-ge v0, v1, :cond_2

    aget-object v1, p2, v0

    if-eqz v1, :cond_0

    instance-of v2, v1, Lcom/anythink/expressad/video/module/AnythinkClickMiniCardView;

    if-eqz v2, :cond_0

    :goto_1
    invoke-virtual {v1, p1}, Lcom/anythink/expressad/video/module/AnythinkBaseView;->onSelfConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_2

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->isLast()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static a(Landroid/view/View;)V
    .locals 1

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    :cond_0
    :goto_0
    return-void
.end method

.method public static synthetic a(Lcom/anythink/expressad/video/module/AnythinkContainerView;Lcom/anythink/expressad/video/signal/factory/b;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->a(Lcom/anythink/expressad/video/signal/factory/b;Ljava/lang/Integer;)V

    return-void
.end method

.method private varargs a(Lcom/anythink/expressad/video/module/a/a;[Lcom/anythink/expressad/video/module/AnythinkBaseView;)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x8

    if-ge v0, v1, :cond_2

    aget-object v1, p2, v0

    if-eqz v1, :cond_1

    instance-of v2, v1, Lcom/anythink/expressad/video/module/AnythinkClickMiniCardView;

    if-eqz v2, :cond_0

    new-instance v2, Lcom/anythink/expressad/video/module/a/a/g;

    iget-object v3, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->p:Lcom/anythink/expressad/video/module/AnythinkClickMiniCardView;

    invoke-direct {v2, v3, p1}, Lcom/anythink/expressad/video/module/a/a/g;-><init>(Lcom/anythink/expressad/video/module/AnythinkClickMiniCardView;Lcom/anythink/expressad/video/module/a/a;)V

    goto :goto_1

    :cond_0
    new-instance v2, Lcom/anythink/expressad/video/module/a/a/i;

    invoke-direct {v2, p1}, Lcom/anythink/expressad/video/module/a/a/i;-><init>(Lcom/anythink/expressad/video/module/a/a;)V

    :goto_1
    invoke-virtual {v1, v2}, Lcom/anythink/expressad/video/module/AnythinkBaseView;->setNotifyListener(Lcom/anythink/expressad/video/module/a/a;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private a(Lcom/anythink/expressad/video/signal/factory/b;)V
    .locals 3

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->n:Lcom/anythink/expressad/video/module/AnythinkPlayableView;

    if-nez v0, :cond_0

    new-instance v0, Lcom/anythink/expressad/video/module/AnythinkPlayableView;

    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/anythink/expressad/video/module/AnythinkPlayableView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->n:Lcom/anythink/expressad/video/module/AnythinkPlayableView;

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->n:Lcom/anythink/expressad/video/module/AnythinkPlayableView;

    iget v1, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->z:I

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/video/module/AnythinkH5EndCardView;->setCloseDelayShowTime(I)V

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->n:Lcom/anythink/expressad/video/module/AnythinkPlayableView;

    iget v1, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->A:I

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/video/module/AnythinkH5EndCardView;->setPlayCloseBtnTm(I)V

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->n:Lcom/anythink/expressad/video/module/AnythinkPlayableView;

    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/video/module/AnythinkBaseView;->setCampaign(Lcom/anythink/expressad/foundation/d/c;)V

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->n:Lcom/anythink/expressad/video/module/AnythinkPlayableView;

    new-instance v1, Lcom/anythink/expressad/video/module/AnythinkContainerView$4;

    iget-object v2, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->e:Lcom/anythink/expressad/video/module/a/a;

    invoke-direct {v1, p0, v2}, Lcom/anythink/expressad/video/module/AnythinkContainerView$4;-><init>(Lcom/anythink/expressad/video/module/AnythinkContainerView;Lcom/anythink/expressad/video/module/a/a;)V

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/video/module/AnythinkBaseView;->setNotifyListener(Lcom/anythink/expressad/video/module/a/a;)V

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->n:Lcom/anythink/expressad/video/module/AnythinkPlayableView;

    invoke-virtual {v0, p1}, Lcom/anythink/expressad/video/module/AnythinkPlayableView;->preLoadData(Lcom/anythink/expressad/video/signal/factory/b;)V

    return-void
.end method

.method private a(Lcom/anythink/expressad/video/signal/factory/b;Ljava/lang/Integer;)V
    .locals 11

    iput-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->Q:Lcom/anythink/expressad/video/signal/factory/b;

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    if-eqz v0, :cond_f

    if-nez p2, :cond_0

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->F()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    :cond_0
    invoke-virtual {p0}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->isLast()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->p()V

    :cond_1
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_f

    const/4 v1, 0x3

    if-eq p2, v1, :cond_d

    const/4 v1, 0x4

    if-eq p2, v1, :cond_b

    const/4 v1, 0x5

    if-eq p2, v1, :cond_f

    iget p2, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->y:I

    const/4 v2, 0x2

    if-ne p2, v2, :cond_6

    iget-object p2, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {p2}, Lcom/anythink/expressad/foundation/d/c;->j()Z

    move-result p2

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->I()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/expressad/foundation/h/t;->f(Ljava/lang/String;)Z

    move-result v0

    iget-object v3, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    if-eqz v3, :cond_2

    if-eqz p2, :cond_2

    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-virtual {v3}, Lcom/anythink/expressad/foundation/d/c;->f()I

    move-result p2

    if-eq p2, v2, :cond_5

    iget-object p2, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->r:Lcom/anythink/expressad/video/module/AnythinkH5EndCardView;

    if-nez p2, :cond_3

    new-instance p2, Lcom/anythink/expressad/video/module/AnythinkH5EndCardView;

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->a:Landroid/content/Context;

    invoke-direct {p2, v0}, Lcom/anythink/expressad/video/module/AnythinkH5EndCardView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->r:Lcom/anythink/expressad/video/module/AnythinkH5EndCardView;

    :cond_3
    iget-object p2, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {p2}, Lcom/anythink/expressad/foundation/d/c;->k()I

    move-result p2

    if-ne p2, v1, :cond_4

    iget-object p2, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->e:Lcom/anythink/expressad/video/module/a/a;

    if-eqz p2, :cond_4

    instance-of v0, p2, Lcom/anythink/expressad/video/module/a/a/k;

    if-eqz v0, :cond_4

    check-cast p2, Lcom/anythink/expressad/video/module/a/a/k;

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {p2, v0}, Lcom/anythink/expressad/video/module/a/a/k;->a(Lcom/anythink/expressad/foundation/d/c;)V

    :cond_4
    iget-object p2, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->r:Lcom/anythink/expressad/video/module/AnythinkH5EndCardView;

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {p2, v0}, Lcom/anythink/expressad/video/module/AnythinkBaseView;->setCampaign(Lcom/anythink/expressad/foundation/d/c;)V

    iget-object p2, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->r:Lcom/anythink/expressad/video/module/AnythinkH5EndCardView;

    iget v0, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->z:I

    invoke-virtual {p2, v0}, Lcom/anythink/expressad/video/module/AnythinkH5EndCardView;->setCloseDelayShowTime(I)V

    iget-object p2, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->r:Lcom/anythink/expressad/video/module/AnythinkH5EndCardView;

    new-instance v0, Lcom/anythink/expressad/video/module/a/a/i;

    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->e:Lcom/anythink/expressad/video/module/a/a;

    invoke-direct {v0, v1}, Lcom/anythink/expressad/video/module/a/a/i;-><init>(Lcom/anythink/expressad/video/module/a/a;)V

    invoke-virtual {p2, v0}, Lcom/anythink/expressad/video/module/AnythinkBaseView;->setNotifyListener(Lcom/anythink/expressad/video/module/a/a;)V

    iget-object p2, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->r:Lcom/anythink/expressad/video/module/AnythinkH5EndCardView;

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->w:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/anythink/expressad/video/module/AnythinkH5EndCardView;->setUnitId(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->r:Lcom/anythink/expressad/video/module/AnythinkH5EndCardView;

    iget-object v2, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->P:Ljava/lang/String;

    iget v3, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->K:I

    iget v4, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->L:I

    iget v5, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->M:I

    iget v6, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->N:I

    invoke-virtual/range {v1 .. v6}, Lcom/anythink/expressad/video/module/AnythinkH5EndCardView;->setNotchValue(Ljava/lang/String;IIII)V

    iget-object p2, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->r:Lcom/anythink/expressad/video/module/AnythinkH5EndCardView;

    invoke-virtual {p2, p1}, Lcom/anythink/expressad/video/module/AnythinkH5EndCardView;->preLoadData(Lcom/anythink/expressad/video/signal/factory/b;)V

    iget-boolean p1, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->D:Z

    if-nez p1, :cond_5

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "showTransparent = "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->D:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " addview"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->r:Lcom/anythink/expressad/video/module/AnythinkH5EndCardView;

    invoke-virtual {p0, p1}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->addView(Landroid/view/View;)V

    :cond_5
    return-void

    :cond_6
    iget-object p2, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    const/4 v1, 0x0

    if-eqz p2, :cond_7

    invoke-virtual {p2}, Lcom/anythink/expressad/foundation/d/c;->M()Lcom/anythink/expressad/foundation/d/c$c;

    move-result-object p2

    if-eqz p2, :cond_7

    iget-object p2, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {p2}, Lcom/anythink/expressad/foundation/d/c;->M()Lcom/anythink/expressad/foundation/d/c$c;

    move-result-object p2

    invoke-virtual {p2}, Lcom/anythink/expressad/foundation/d/c$c;->c()I

    move-result p2

    move v9, p2

    goto :goto_0

    :cond_7
    const/4 v9, 0x0

    :goto_0
    iget-object p2, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->q:Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;

    if-nez p2, :cond_a

    if-nez p2, :cond_a

    iget-object p2, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {p2}, Lcom/anythink/expressad/foundation/d/c;->j()Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-direct {p0}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->q()V

    goto :goto_2

    :cond_8
    new-instance p2, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;

    iget-object v4, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->a:Landroid/content/Context;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, -0x1

    iget-object v3, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v3}, Lcom/anythink/expressad/foundation/d/c;->f()I

    move-result v3

    if-ne v3, v2, :cond_9

    const/4 v8, 0x1

    goto :goto_1

    :cond_9
    const/4 v8, 0x0

    :goto_1
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->as()I

    move-result v10

    move-object v3, p2

    invoke-direct/range {v3 .. v10}, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ZIZII)V

    iput-object p2, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->q:Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {p2, v0}, Lcom/anythink/expressad/video/module/AnythinkBaseView;->setCampaign(Lcom/anythink/expressad/foundation/d/c;)V

    :cond_a
    :goto_2
    iget-object p2, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->q:Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;

    invoke-virtual {p2}, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->setLayout()V

    iget-object p2, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->q:Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {p2, v0}, Lcom/anythink/expressad/video/module/AnythinkBaseView;->setCampaign(Lcom/anythink/expressad/foundation/d/c;)V

    iget-object p2, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->q:Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->w:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->setUnitId(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->q:Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;

    iget v0, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->z:I

    invoke-virtual {p2, v0}, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->setCloseBtnDelay(I)V

    iget-object p2, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->q:Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;

    new-instance v0, Lcom/anythink/expressad/video/module/a/a/i;

    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->e:Lcom/anythink/expressad/video/module/a/a;

    invoke-direct {v0, v1}, Lcom/anythink/expressad/video/module/a/a/i;-><init>(Lcom/anythink/expressad/video/module/a/a;)V

    invoke-virtual {p2, v0}, Lcom/anythink/expressad/video/module/AnythinkBaseView;->setNotifyListener(Lcom/anythink/expressad/video/module/a/a;)V

    iget-object p2, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->q:Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;

    invoke-virtual {p2, p1}, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->preLoadData(Lcom/anythink/expressad/video/signal/factory/b;)V

    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->q:Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;

    iget p2, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->K:I

    iget v0, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->L:I

    iget v1, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->M:I

    iget v2, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->N:I

    invoke-virtual {p1, p2, v0, v1, v2}, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->setNotchPadding(IIII)V

    return-void

    :cond_b
    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->u:Lcom/anythink/expressad/video/module/AnythinkLandingPageView;

    if-nez p1, :cond_c

    new-instance p1, Lcom/anythink/expressad/video/module/AnythinkLandingPageView;

    iget-object p2, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->a:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/anythink/expressad/video/module/AnythinkLandingPageView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->u:Lcom/anythink/expressad/video/module/AnythinkLandingPageView;

    :cond_c
    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->u:Lcom/anythink/expressad/video/module/AnythinkLandingPageView;

    iget-object p2, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {p1, p2}, Lcom/anythink/expressad/video/module/AnythinkBaseView;->setCampaign(Lcom/anythink/expressad/foundation/d/c;)V

    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->u:Lcom/anythink/expressad/video/module/AnythinkLandingPageView;

    new-instance p2, Lcom/anythink/expressad/video/module/a/a/i;

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->e:Lcom/anythink/expressad/video/module/a/a;

    invoke-direct {p2, v0}, Lcom/anythink/expressad/video/module/a/a/i;-><init>(Lcom/anythink/expressad/video/module/a/a;)V

    invoke-virtual {p1, p2}, Lcom/anythink/expressad/video/module/AnythinkBaseView;->setNotifyListener(Lcom/anythink/expressad/video/module/a/a;)V

    goto :goto_3

    :cond_d
    iget-object p2, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->t:Lcom/anythink/expressad/video/module/AnythinkVastEndCardView;

    if-nez p2, :cond_e

    new-instance p2, Lcom/anythink/expressad/video/module/AnythinkVastEndCardView;

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->a:Landroid/content/Context;

    invoke-direct {p2, v0}, Lcom/anythink/expressad/video/module/AnythinkVastEndCardView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->t:Lcom/anythink/expressad/video/module/AnythinkVastEndCardView;

    :cond_e
    iget-object p2, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->t:Lcom/anythink/expressad/video/module/AnythinkVastEndCardView;

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {p2, v0}, Lcom/anythink/expressad/video/module/AnythinkBaseView;->setCampaign(Lcom/anythink/expressad/foundation/d/c;)V

    iget-object p2, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->t:Lcom/anythink/expressad/video/module/AnythinkVastEndCardView;

    new-instance v0, Lcom/anythink/expressad/video/module/a/a/l;

    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->e:Lcom/anythink/expressad/video/module/a/a;

    invoke-direct {v0, v1}, Lcom/anythink/expressad/video/module/a/a/l;-><init>(Lcom/anythink/expressad/video/module/a/a;)V

    invoke-virtual {p2, v0}, Lcom/anythink/expressad/video/module/AnythinkBaseView;->setNotifyListener(Lcom/anythink/expressad/video/module/a/a;)V

    iget-object p2, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->t:Lcom/anythink/expressad/video/module/AnythinkVastEndCardView;

    invoke-virtual {p2, p1}, Lcom/anythink/expressad/video/module/AnythinkVastEndCardView;->preLoadData(Lcom/anythink/expressad/video/signal/factory/b;)V

    :cond_f
    :goto_3
    return-void
.end method

.method private varargs a([Lcom/anythink/expressad/video/module/AnythinkH5EndCardView;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    aget-object v1, p1, v0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->isLast()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/anythink/expressad/video/module/AnythinkH5EndCardView;->webviewshow()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private a()Z
    .locals 3

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private b()V
    .locals 3

    invoke-virtual {p0}, Lcom/anythink/expressad/video/module/AnythinkBaseView;->setWrapContent()V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v1, v0, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0xc

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    :cond_0
    return-void
.end method

.method private b(I)V
    .locals 2

    const/4 v0, -0x3

    if-eq p1, v0, :cond_3

    const/4 v0, -0x2

    if-eq p1, v0, :cond_1

    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->o:Lcom/anythink/expressad/video/module/AnythinkClickCTAView;

    if-nez p1, :cond_0

    new-instance p1, Lcom/anythink/expressad/video/module/AnythinkClickCTAView;

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->a:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/anythink/expressad/video/module/AnythinkClickCTAView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->o:Lcom/anythink/expressad/video/module/AnythinkClickCTAView;

    :cond_0
    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->o:Lcom/anythink/expressad/video/module/AnythinkClickCTAView;

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {p1, v0}, Lcom/anythink/expressad/video/module/AnythinkBaseView;->setCampaign(Lcom/anythink/expressad/foundation/d/c;)V

    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->o:Lcom/anythink/expressad/video/module/AnythinkClickCTAView;

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->w:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/anythink/expressad/video/module/AnythinkClickCTAView;->setUnitId(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->o:Lcom/anythink/expressad/video/module/AnythinkClickCTAView;

    new-instance v0, Lcom/anythink/expressad/video/module/a/a/i;

    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->e:Lcom/anythink/expressad/video/module/a/a;

    invoke-direct {v0, v1}, Lcom/anythink/expressad/video/module/a/a/i;-><init>(Lcom/anythink/expressad/video/module/a/a;)V

    invoke-virtual {p1, v0}, Lcom/anythink/expressad/video/module/AnythinkBaseView;->setNotifyListener(Lcom/anythink/expressad/video/module/a/a;)V

    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->o:Lcom/anythink/expressad/video/module/AnythinkClickCTAView;

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->Q:Lcom/anythink/expressad/video/signal/factory/b;

    invoke-virtual {p1, v0}, Lcom/anythink/expressad/video/module/AnythinkClickCTAView;->preLoadData(Lcom/anythink/expressad/video/signal/factory/b;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->F()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->p:Lcom/anythink/expressad/video/module/AnythinkClickMiniCardView;

    if-nez p1, :cond_2

    new-instance p1, Lcom/anythink/expressad/video/module/AnythinkClickMiniCardView;

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->a:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/anythink/expressad/video/module/AnythinkClickMiniCardView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->p:Lcom/anythink/expressad/video/module/AnythinkClickMiniCardView;

    :cond_2
    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->p:Lcom/anythink/expressad/video/module/AnythinkClickMiniCardView;

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {p1, v0}, Lcom/anythink/expressad/video/module/AnythinkBaseView;->setCampaign(Lcom/anythink/expressad/foundation/d/c;)V

    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->p:Lcom/anythink/expressad/video/module/AnythinkClickMiniCardView;

    new-instance v0, Lcom/anythink/expressad/video/module/a/a/g;

    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->e:Lcom/anythink/expressad/video/module/a/a;

    invoke-direct {v0, p1, v1}, Lcom/anythink/expressad/video/module/a/a/g;-><init>(Lcom/anythink/expressad/video/module/AnythinkClickMiniCardView;Lcom/anythink/expressad/video/module/a/a;)V

    invoke-virtual {p1, v0}, Lcom/anythink/expressad/video/module/AnythinkBaseView;->setNotifyListener(Lcom/anythink/expressad/video/module/a/a;)V

    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->p:Lcom/anythink/expressad/video/module/AnythinkClickMiniCardView;

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->Q:Lcom/anythink/expressad/video/signal/factory/b;

    invoke-virtual {p1, v0}, Lcom/anythink/expressad/video/module/AnythinkClickMiniCardView;->preLoadData(Lcom/anythink/expressad/video/signal/factory/b;)V

    invoke-virtual {p0}, Lcom/anythink/expressad/video/module/AnythinkBaseView;->setMatchParent()V

    invoke-direct {p0}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->m()V

    invoke-direct {p0}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->p()V

    :cond_3
    :goto_0
    return-void
.end method

.method private b(Lcom/anythink/expressad/video/signal/factory/b;)V
    .locals 3

    iput-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->Q:Lcom/anythink/expressad/video/signal/factory/b;

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->s:Lcom/anythink/expressad/video/module/AnythinkVideoEndCoverView;

    if-nez v0, :cond_0

    new-instance v0, Lcom/anythink/expressad/video/module/AnythinkVideoEndCoverView;

    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/anythink/expressad/video/module/AnythinkVideoEndCoverView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->s:Lcom/anythink/expressad/video/module/AnythinkVideoEndCoverView;

    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/video/module/AnythinkBaseView;->setCampaign(Lcom/anythink/expressad/foundation/d/c;)V

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->s:Lcom/anythink/expressad/video/module/AnythinkVideoEndCoverView;

    new-instance v1, Lcom/anythink/expressad/video/module/a/a/i;

    iget-object v2, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->e:Lcom/anythink/expressad/video/module/a/a;

    invoke-direct {v1, v2}, Lcom/anythink/expressad/video/module/a/a/i;-><init>(Lcom/anythink/expressad/video/module/a/a;)V

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/video/module/AnythinkBaseView;->setNotifyListener(Lcom/anythink/expressad/video/module/a/a;)V

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->s:Lcom/anythink/expressad/video/module/AnythinkVideoEndCoverView;

    invoke-virtual {v0, p1}, Lcom/anythink/expressad/video/module/AnythinkVideoEndCoverView;->preLoadData(Lcom/anythink/expressad/video/signal/factory/b;)V

    :cond_0
    return-void
.end method

.method private varargs b([Lcom/anythink/expressad/video/module/AnythinkH5EndCardView;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    aget-object v1, p1, v0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/anythink/expressad/video/module/AnythinkH5EndCardView;->orientation(Landroid/content/res/Configuration;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private e()V
    .locals 2

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->j()Z

    move-result v0

    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/c;->I()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/anythink/expressad/foundation/h/t;->f(Ljava/lang/String;)Z

    move-result v1

    if-eqz v0, :cond_0

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->i()V

    return-void

    :cond_0
    iget v0, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->y:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->I:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->h()V

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->i()V

    return-void
.end method

.method private f()V
    .locals 3

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->t:Lcom/anythink/expressad/video/module/AnythinkVastEndCardView;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->Q:Lcom/anythink/expressad/video/signal/factory/b;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->a(Lcom/anythink/expressad/video/signal/factory/b;Ljava/lang/Integer;)V

    :cond_0
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xd

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->t:Lcom/anythink/expressad/video/module/AnythinkVastEndCardView;

    invoke-virtual {p0, v1, v0}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->t:Lcom/anythink/expressad/video/module/AnythinkVastEndCardView;

    invoke-virtual {v0}, Lcom/anythink/expressad/video/module/AnythinkVastEndCardView;->notifyShowListener()V

    return-void
.end method

.method private g()V
    .locals 2

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->u:Lcom/anythink/expressad/video/module/AnythinkLandingPageView;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->Q:Lcom/anythink/expressad/video/signal/factory/b;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->a(Lcom/anythink/expressad/video/signal/factory/b;Ljava/lang/Integer;)V

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->u:Lcom/anythink/expressad/video/module/AnythinkLandingPageView;

    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->w:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/video/module/AnythinkH5EndCardView;->setUnitId(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->u:Lcom/anythink/expressad/video/module/AnythinkLandingPageView;

    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->Q:Lcom/anythink/expressad/video/signal/factory/b;

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/video/module/AnythinkLandingPageView;->preLoadData(Lcom/anythink/expressad/video/signal/factory/b;)V

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->u:Lcom/anythink/expressad/video/module/AnythinkLandingPageView;

    invoke-virtual {p0, v0}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->addView(Landroid/view/View;)V

    return-void
.end method

.method private h()V
    .locals 7

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->r:Lcom/anythink/expressad/video/module/AnythinkH5EndCardView;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->Q:Lcom/anythink/expressad/video/signal/factory/b;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->a(Lcom/anythink/expressad/video/signal/factory/b;Ljava/lang/Integer;)V

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->r:Lcom/anythink/expressad/video/module/AnythinkH5EndCardView;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/anythink/expressad/video/module/AnythinkH5EndCardView;->isLoadSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->I:Z

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->r:Lcom/anythink/expressad/video/module/AnythinkH5EndCardView;

    invoke-virtual {p0, v0}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->addView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->webviewshow()V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->r:Lcom/anythink/expressad/video/module/AnythinkH5EndCardView;

    invoke-virtual {v0}, Lcom/anythink/expressad/video/module/AnythinkH5EndCardView;->excuteTask()V

    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->r:Lcom/anythink/expressad/video/module/AnythinkH5EndCardView;

    iget-object v2, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->P:Ljava/lang/String;

    iget v3, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->K:I

    iget v4, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->L:I

    iget v5, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->M:I

    iget v6, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->N:I

    invoke-virtual/range {v1 .. v6}, Lcom/anythink/expressad/video/module/AnythinkH5EndCardView;->setNotchValue(Ljava/lang/String;IIII)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->i()V

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->r:Lcom/anythink/expressad/video/module/AnythinkH5EndCardView;

    if-eqz v0, :cond_2

    const/4 v2, 0x3

    const-string v3, "timeout"

    invoke-virtual {v0, v3, v2}, Lcom/anythink/expressad/video/module/AnythinkH5EndCardView;->reportRenderResult(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->r:Lcom/anythink/expressad/video/module/AnythinkH5EndCardView;

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/video/module/AnythinkH5EndCardView;->setError(Z)V

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->r:Lcom/anythink/expressad/video/module/AnythinkH5EndCardView;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->w:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/video/module/AnythinkH5EndCardView;->setUnitId(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method private i()V
    .locals 3

    const/4 v0, 0x1

    iput v0, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->y:I

    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->q:Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->Q:Lcom/anythink/expressad/video/signal/factory/b;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->a(Lcom/anythink/expressad/video/signal/factory/b;Ljava/lang/Integer;)V

    :cond_0
    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->q:Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;

    invoke-virtual {p0, v1}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->addView(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->q:Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;

    invoke-virtual {v1}, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->notifyShowListener()V

    iput-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->T:Z

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->bringToFront()V

    return-void
.end method

.method private j()V
    .locals 4

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->s:Lcom/anythink/expressad/video/module/AnythinkVideoEndCoverView;

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->Q:Lcom/anythink/expressad/video/signal/factory/b;

    iput-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->Q:Lcom/anythink/expressad/video/signal/factory/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/anythink/expressad/video/module/AnythinkVideoEndCoverView;

    iget-object v2, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->a:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/anythink/expressad/video/module/AnythinkVideoEndCoverView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->s:Lcom/anythink/expressad/video/module/AnythinkVideoEndCoverView;

    iget-object v2, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v0, v2}, Lcom/anythink/expressad/video/module/AnythinkBaseView;->setCampaign(Lcom/anythink/expressad/foundation/d/c;)V

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->s:Lcom/anythink/expressad/video/module/AnythinkVideoEndCoverView;

    new-instance v2, Lcom/anythink/expressad/video/module/a/a/i;

    iget-object v3, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->e:Lcom/anythink/expressad/video/module/a/a;

    invoke-direct {v2, v3}, Lcom/anythink/expressad/video/module/a/a/i;-><init>(Lcom/anythink/expressad/video/module/a/a;)V

    invoke-virtual {v0, v2}, Lcom/anythink/expressad/video/module/AnythinkBaseView;->setNotifyListener(Lcom/anythink/expressad/video/module/a/a;)V

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->s:Lcom/anythink/expressad/video/module/AnythinkVideoEndCoverView;

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/video/module/AnythinkVideoEndCoverView;->preLoadData(Lcom/anythink/expressad/video/signal/factory/b;)V

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->s:Lcom/anythink/expressad/video/module/AnythinkVideoEndCoverView;

    invoke-virtual {p0, v0}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->addView(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->T:Z

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->bringToFront()V

    return-void
.end method

.method private k()V
    .locals 8

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->n:Lcom/anythink/expressad/video/module/AnythinkPlayableView;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->Q:Lcom/anythink/expressad/video/signal/factory/b;

    invoke-virtual {p0, v0}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->preLoadData(Lcom/anythink/expressad/video/signal/factory/b;)V

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->n:Lcom/anythink/expressad/video/module/AnythinkPlayableView;

    invoke-virtual {p0, v0}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->n:Lcom/anythink/expressad/video/module/AnythinkPlayableView;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->w:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/video/module/AnythinkH5EndCardView;->setUnitId(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->H()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->J()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->n:Lcom/anythink/expressad/video/module/AnythinkPlayableView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/video/module/AnythinkH5EndCardView;->setCloseVisible(I)V

    :cond_1
    iget-object v2, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->n:Lcom/anythink/expressad/video/module/AnythinkPlayableView;

    iget-object v3, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->P:Ljava/lang/String;

    iget v4, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->K:I

    iget v5, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->L:I

    iget v6, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->M:I

    iget v7, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->N:I

    invoke-virtual/range {v2 .. v7}, Lcom/anythink/expressad/video/module/AnythinkH5EndCardView;->setNotchValue(Ljava/lang/String;IIII)V

    :cond_2
    return-void
.end method

.method private l()V
    .locals 3

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->o:Lcom/anythink/expressad/video/module/AnythinkClickCTAView;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    invoke-direct {p0, v1}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->b(I)V

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->o:Lcom/anythink/expressad/video/module/AnythinkClickCTAView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xc

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->o:Lcom/anythink/expressad/video/module/AnythinkClickCTAView;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-void
.end method

.method private m()V
    .locals 3

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->p:Lcom/anythink/expressad/video/module/AnythinkClickMiniCardView;

    if-nez v0, :cond_0

    const/4 v0, -0x2

    invoke-direct {p0, v0}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->b(I)V

    :cond_0
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xd

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-boolean v1, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->D:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->F:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->F:Z

    const/4 v1, 0x1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    :cond_1
    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->p:Lcom/anythink/expressad/video/module/AnythinkClickMiniCardView;

    invoke-virtual {p0, v1, v0}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private n()V
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->v:Lcom/anythink/expressad/video/module/AnythinkAlertWebview;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->o()V

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->v:Lcom/anythink/expressad/video/module/AnythinkAlertWebview;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->v:Lcom/anythink/expressad/video/module/AnythinkAlertWebview;

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    :cond_1
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->v:Lcom/anythink/expressad/video/module/AnythinkAlertWebview;

    invoke-virtual {p0, v0}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->addView(Landroid/view/View;)V

    return-void
.end method

.method private o()V
    .locals 2

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->v:Lcom/anythink/expressad/video/module/AnythinkAlertWebview;

    if-nez v0, :cond_0

    new-instance v0, Lcom/anythink/expressad/video/module/AnythinkAlertWebview;

    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/anythink/expressad/video/module/AnythinkAlertWebview;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->v:Lcom/anythink/expressad/video/module/AnythinkAlertWebview;

    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->w:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/video/module/AnythinkH5EndCardView;->setUnitId(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->v:Lcom/anythink/expressad/video/module/AnythinkAlertWebview;

    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/video/module/AnythinkBaseView;->setCampaign(Lcom/anythink/expressad/foundation/d/c;)V

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->v:Lcom/anythink/expressad/video/module/AnythinkAlertWebview;

    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->Q:Lcom/anythink/expressad/video/signal/factory/b;

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/video/module/AnythinkAlertWebview;->preLoadData(Lcom/anythink/expressad/video/signal/factory/b;)V

    return-void
.end method

.method private p()V
    .locals 5

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->C:Z

    iput-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->T:Z

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_1

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v4, v3, Lcom/anythink/expressad/video/module/AnythinkContainerView;

    if-nez v4, :cond_0

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private q()V
    .locals 11

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->I()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/16 v2, 0x194

    if-nez v1, :cond_1

    :try_start_0
    const-string v1, "ecid"

    invoke-static {v0, v1}, Lcom/anythink/expressad/foundation/h/x;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v7, v2

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    :cond_1
    const/16 v7, 0x194

    :goto_0
    new-instance v0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;

    iget-object v4, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->a:Landroid/content/Context;

    const/4 v5, 0x0

    const/4 v6, 0x1

    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/c;->f()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    const/4 v1, 0x1

    const/4 v8, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    const/4 v8, 0x0

    :goto_1
    iget v9, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->l:I

    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/c;->as()I

    move-result v10

    move-object v3, v0

    invoke-direct/range {v3 .. v10}, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ZIZII)V

    iput-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->q:Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->k()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->e:Lcom/anythink/expressad/video/module/a/a;

    if-eqz v0, :cond_3

    instance-of v1, v0, Lcom/anythink/expressad/video/module/a/a/k;

    if-eqz v1, :cond_3

    check-cast v0, Lcom/anythink/expressad/video/module/a/a/k;

    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/video/module/a/a/k;->a(Lcom/anythink/expressad/foundation/d/c;)V

    :cond_3
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->q:Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;

    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/video/module/AnythinkBaseView;->setCampaign(Lcom/anythink/expressad/foundation/d/c;)V

    return-void
.end method


# virtual methods
.method public addOrderViewData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/anythink/expressad/foundation/d/c;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->U:Ljava/util/List;

    return-void
.end method

.method public addView(Landroid/view/View;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->a(Landroid/view/View;)V

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->a(Landroid/view/View;)V

    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public canBackPress()Z
    .locals 2

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->q:Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->r:Lcom/anythink/expressad/video/module/AnythinkH5EndCardView;

    if-eqz v0, :cond_1

    :goto_0
    invoke-virtual {v0}, Lcom/anythink/expressad/video/module/AnythinkH5EndCardView;->canBackPress()Z

    move-result v1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->u:Lcom/anythink/expressad/video/module/AnythinkLandingPageView;

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->n:Lcom/anythink/expressad/video/module/AnythinkPlayableView;

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    :goto_1
    return v1
.end method

.method public configurationChanged(III)V
    .locals 0

    iget-object p3, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->p:Lcom/anythink/expressad/video/module/AnythinkClickMiniCardView;

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result p3

    if-nez p3, :cond_0

    iget-object p3, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->p:Lcom/anythink/expressad/video/module/AnythinkClickMiniCardView;

    invoke-virtual {p3, p1, p2}, Lcom/anythink/expressad/video/module/AnythinkClickMiniCardView;->resizeMiniCard(II)V

    :cond_0
    return-void
.end method

.method public defaultShow()V
    .locals 0

    invoke-super {p0}, Lcom/anythink/expressad/video/module/AnythinkBaseView;->defaultShow()V

    return-void
.end method

.method public endCardShowing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->B:Z

    return v0
.end method

.method public endcardIsPlayable()Z
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->r:Lcom/anythink/expressad/video/module/AnythinkH5EndCardView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/expressad/video/module/AnythinkH5EndCardView;->isPlayable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getH5EndCardView()Lcom/anythink/expressad/video/module/AnythinkH5EndCardView;
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->r:Lcom/anythink/expressad/video/module/AnythinkH5EndCardView;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->n:Lcom/anythink/expressad/video/module/AnythinkPlayableView;

    :cond_0
    return-object v0
.end method

.method public getReSetCampaign()Lcom/anythink/expressad/foundation/d/c;
    .locals 6

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->j()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->I()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->U:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_3

    iget-object v4, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->U:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->U:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v4}, Lcom/anythink/expressad/out/j;->aZ()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v5}, Lcom/anythink/expressad/out/j;->aZ()Ljava/lang/String;

    move-result-object v5

    if-ne v4, v5, :cond_2

    add-int/lit8 v2, v3, -0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    if-ltz v2, :cond_4

    if-ge v2, v0, :cond_4

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->U:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->U:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/expressad/foundation/d/c;

    return-object v0

    :cond_4
    return-object v1
.end method

.method public getShowingTransparent()Z
    .locals 1

    iget-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->D:Z

    return v0
.end method

.method public getUnitID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->w:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoInteractiveType()I
    .locals 1

    iget v0, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->x:I

    return v0
.end method

.method public getVideoSkipTime()I
    .locals 1

    iget v0, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->H:I

    return v0
.end method

.method public handlerPlayableException(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->r:Lcom/anythink/expressad/video/module/AnythinkH5EndCardView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/anythink/expressad/video/module/AnythinkH5EndCardView;->handlerPlayableException(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->I:Z

    if-eqz p1, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->e()V

    :cond_1
    return-void
.end method

.method public hideAlertWebview()V
    .locals 3

    invoke-virtual {p0}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->isLast()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->S:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->T:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->p()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->S:Z

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->v:Lcom/anythink/expressad/video/module/AnythinkAlertWebview;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->v:Lcom/anythink/expressad/video/module/AnythinkAlertWebview;

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->o:Lcom/anythink/expressad/video/module/AnythinkClickCTAView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/anythink/expressad/video/module/AnythinkBaseView;->setWrapContent()V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v1, v0, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0xc

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    :cond_1
    return-void
.end method

.method public init(Landroid/content/Context;)V
    .locals 0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method public install(Lcom/anythink/expressad/foundation/d/c;)V
    .locals 2

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->e:Lcom/anythink/expressad/video/module/a/a;

    const/16 v1, 0x69

    invoke-interface {v0, v1, p1}, Lcom/anythink/expressad/video/module/a/a;->a(ILjava/lang/Object;)V

    return-void
.end method

.method public isLast()Z
    .locals 2

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public ivRewardAdsWithoutVideo(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->e:Lcom/anythink/expressad/video/module/a/a;

    const/16 v1, 0x67

    invoke-interface {v0, v1, p1}, Lcom/anythink/expressad/video/module/a/a;->a(ILjava/lang/Object;)V

    return-void
.end method

.method public miniCardLoaded()Z
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->p:Lcom/anythink/expressad/video/module/AnythinkClickMiniCardView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/expressad/video/module/AnythinkH5EndCardView;->isLoadSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public miniCardShowing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->C:Z

    return v0
.end method

.method public notifyCloseBtn(I)V
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->n:Lcom/anythink/expressad/video/module/AnythinkPlayableView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/anythink/expressad/video/module/AnythinkH5EndCardView;->notifyCloseBtn(I)V

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->r:Lcom/anythink/expressad/video/module/AnythinkH5EndCardView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/anythink/expressad/video/module/AnythinkH5EndCardView;->notifyCloseBtn(I)V

    :cond_1
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/anythink/expressad/video/module/AnythinkBaseView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const/16 v0, 0x8

    new-array v1, v0, [Lcom/anythink/expressad/video/module/AnythinkBaseView;

    iget-object v2, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->n:Lcom/anythink/expressad/video/module/AnythinkPlayableView;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->o:Lcom/anythink/expressad/video/module/AnythinkClickCTAView;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->p:Lcom/anythink/expressad/video/module/AnythinkClickMiniCardView;

    const/4 v4, 0x2

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->q:Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;

    const/4 v4, 0x3

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->r:Lcom/anythink/expressad/video/module/AnythinkH5EndCardView;

    const/4 v4, 0x4

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->t:Lcom/anythink/expressad/video/module/AnythinkVastEndCardView;

    const/4 v4, 0x5

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->u:Lcom/anythink/expressad/video/module/AnythinkLandingPageView;

    const/4 v4, 0x6

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->s:Lcom/anythink/expressad/video/module/AnythinkVideoEndCoverView;

    const/4 v4, 0x7

    aput-object v2, v1, v4

    :goto_0
    if-ge v3, v0, :cond_2

    aget-object v2, v1, v3

    if-eqz v2, :cond_0

    instance-of v4, v2, Lcom/anythink/expressad/video/module/AnythinkClickMiniCardView;

    if-eqz v4, :cond_0

    :goto_1
    invoke-virtual {v2, p1}, Lcom/anythink/expressad/video/module/AnythinkBaseView;->onSelfConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_2

    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->isLast()Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onEndcardBackPress()V
    .locals 3

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->q:Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;

    const-string v1, ""

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->t:Lcom/anythink/expressad/video/module/AnythinkVastEndCardView;

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->u:Lcom/anythink/expressad/video/module/AnythinkLandingPageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->e:Lcom/anythink/expressad/video/module/a/a;

    const/16 v2, 0x67

    :goto_0
    invoke-interface {v0, v2, v1}, Lcom/anythink/expressad/video/module/a/a;->a(ILjava/lang/Object;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->r:Lcom/anythink/expressad/video/module/AnythinkH5EndCardView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/anythink/expressad/video/module/AnythinkH5EndCardView;->onBackPress()V

    :cond_2
    return-void

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->e:Lcom/anythink/expressad/video/module/a/a;

    const/16 v2, 0x68

    goto :goto_0
.end method

.method public onMiniEndcardBackPress()V
    .locals 3

    iget-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->C:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->e:Lcom/anythink/expressad/video/module/a/a;

    const/16 v1, 0x6b

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lcom/anythink/expressad/video/module/a/a;->a(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onPlayableBackPress()V
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->n:Lcom/anythink/expressad/video/module/AnythinkPlayableView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/expressad/video/module/AnythinkPlayableView;->onBackPress()V

    :cond_0
    return-void
.end method

.method public orientation(Landroid/content/res/Configuration;)V
    .locals 4

    const/4 p1, 0x4

    new-array v0, p1, [Lcom/anythink/expressad/video/module/AnythinkH5EndCardView;

    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->n:Lcom/anythink/expressad/video/module/AnythinkPlayableView;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->p:Lcom/anythink/expressad/video/module/AnythinkClickMiniCardView;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->r:Lcom/anythink/expressad/video/module/AnythinkH5EndCardView;

    const/4 v3, 0x2

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->v:Lcom/anythink/expressad/video/module/AnythinkAlertWebview;

    const/4 v3, 0x3

    aput-object v1, v0, v3

    :goto_0
    if-ge v2, p1, :cond_1

    aget-object v1, v0, v2

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/anythink/expressad/video/module/AnythinkH5EndCardView;->orientation(Landroid/content/res/Configuration;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public preLoadData(Lcom/anythink/expressad/video/signal/factory/b;)V
    .locals 4

    iput-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->Q:Lcom/anythink/expressad/video/signal/factory/b;

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->J()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->n:Lcom/anythink/expressad/video/module/AnythinkPlayableView;

    if-nez v0, :cond_0

    new-instance v0, Lcom/anythink/expressad/video/module/AnythinkPlayableView;

    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/anythink/expressad/video/module/AnythinkPlayableView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->n:Lcom/anythink/expressad/video/module/AnythinkPlayableView;

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->n:Lcom/anythink/expressad/video/module/AnythinkPlayableView;

    iget v1, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->z:I

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/video/module/AnythinkH5EndCardView;->setCloseDelayShowTime(I)V

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->n:Lcom/anythink/expressad/video/module/AnythinkPlayableView;

    iget v1, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->A:I

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/video/module/AnythinkH5EndCardView;->setPlayCloseBtnTm(I)V

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->n:Lcom/anythink/expressad/video/module/AnythinkPlayableView;

    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/video/module/AnythinkBaseView;->setCampaign(Lcom/anythink/expressad/foundation/d/c;)V

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->n:Lcom/anythink/expressad/video/module/AnythinkPlayableView;

    new-instance v1, Lcom/anythink/expressad/video/module/AnythinkContainerView$4;

    iget-object v2, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->e:Lcom/anythink/expressad/video/module/a/a;

    invoke-direct {v1, p0, v2}, Lcom/anythink/expressad/video/module/AnythinkContainerView$4;-><init>(Lcom/anythink/expressad/video/module/AnythinkContainerView;Lcom/anythink/expressad/video/module/a/a;)V

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/video/module/AnythinkBaseView;->setNotifyListener(Lcom/anythink/expressad/video/module/a/a;)V

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->n:Lcom/anythink/expressad/video/module/AnythinkPlayableView;

    invoke-virtual {v0, p1}, Lcom/anythink/expressad/video/module/AnythinkPlayableView;->preLoadData(Lcom/anythink/expressad/video/signal/factory/b;)V

    goto :goto_1

    :cond_1
    iget v0, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->x:I

    invoke-direct {p0, v0}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->b(I)V

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->F()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->a(Lcom/anythink/expressad/video/signal/factory/b;Ljava/lang/Integer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/anythink/expressad/video/module/AnythinkContainerView$1;

    invoke-direct {v1, p0, p1}, Lcom/anythink/expressad/video/module/AnythinkContainerView$1;-><init>(Lcom/anythink/expressad/video/module/AnythinkContainerView;Lcom/anythink/expressad/video/signal/factory/b;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    :goto_0
    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->I()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/anythink/expressad/foundation/h/t;->f(Ljava/lang/String;)Z

    goto :goto_1

    :cond_2
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/anythink/expressad/video/module/AnythinkContainerView$2;

    invoke-direct {v1, p0, p1}, Lcom/anythink/expressad/video/module/AnythinkContainerView$2;-><init>(Lcom/anythink/expressad/video/module/AnythinkContainerView;Lcom/anythink/expressad/video/signal/factory/b;)V

    invoke-virtual {p0}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->getVideoSkipTime()I

    move-result p1

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_1
    invoke-direct {p0}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->o()V

    :cond_3
    return-void
.end method

.method public readyStatus(I)V
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->r:Lcom/anythink/expressad/video/module/AnythinkH5EndCardView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/anythink/expressad/video/module/AnythinkH5EndCardView;->readyStatus(I)V

    :cond_0
    return-void
.end method

.method public release()V
    .locals 2

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->r:Lcom/anythink/expressad/video/module/AnythinkH5EndCardView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/expressad/video/module/AnythinkH5EndCardView;->release()V

    iput-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->r:Lcom/anythink/expressad/video/module/AnythinkH5EndCardView;

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->n:Lcom/anythink/expressad/video/module/AnythinkPlayableView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/anythink/expressad/video/module/AnythinkH5EndCardView;->release()V

    :cond_1
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->u:Lcom/anythink/expressad/video/module/AnythinkLandingPageView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/anythink/expressad/video/module/AnythinkH5EndCardView;->release()V

    :cond_2
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->q:Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->clearMoreOfferBitmap()V

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->q:Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;

    invoke-virtual {v0}, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->release()V

    :cond_3
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->e:Lcom/anythink/expressad/video/module/a/a;

    if-eqz v0, :cond_4

    iput-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->e:Lcom/anythink/expressad/video/module/a/a;

    :cond_4
    return-void
.end method

.method public resizeMiniCard(III)V
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->p:Lcom/anythink/expressad/video/module/AnythinkClickMiniCardView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/anythink/expressad/video/module/AnythinkClickMiniCardView;->resizeMiniCard(II)V

    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->p:Lcom/anythink/expressad/video/module/AnythinkClickMiniCardView;

    invoke-virtual {p1, p3}, Lcom/anythink/expressad/video/module/AnythinkClickMiniCardView;->setRadius(I)V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    invoke-virtual {p0}, Lcom/anythink/expressad/video/module/AnythinkBaseView;->setMatchParent()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->T:Z

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->bringToFront()V

    invoke-direct {p0}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->m()V

    :cond_0
    return-void
.end method

.method public setAnythinkClickMiniCardViewTransparent()V
    .locals 2

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->p:Lcom/anythink/expressad/video/module/AnythinkClickMiniCardView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/expressad/video/module/AnythinkClickMiniCardView;->setAnythinkClickMiniCardViewTransparent()V

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->p:Lcom/anythink/expressad/video/module/AnythinkClickMiniCardView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/video/module/AnythinkClickMiniCardView;->setAnythinkClickMiniCardViewClickable(Z)V

    :cond_0
    return-void
.end method

.method public setCloseDelayTime(I)V
    .locals 0

    iput p1, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->z:I

    return-void
.end method

.method public setEndscreenType(I)V
    .locals 0

    iput p1, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->y:I

    return-void
.end method

.method public setJSFactory(Lcom/anythink/expressad/video/signal/factory/b;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->Q:Lcom/anythink/expressad/video/signal/factory/b;

    return-void
.end method

.method public setNotchPadding(IIIII)V
    .locals 10

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NOTCH ContainerView "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x2

    aput-object v2, v1, v4

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x3

    aput-object v2, v1, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x4

    aput-object v2, v1, v4

    const-string v2, "%1s-%2s-%3s-%4s-%5s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iput p1, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->O:I

    iput p2, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->K:I

    iput p3, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->L:I

    iput p4, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->M:I

    iput p5, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->N:I

    invoke-static {p1, p2, p3, p4, p5}, Lcom/anythink/expressad/foundation/h/h;->a(IIIII)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->P:Ljava/lang/String;

    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->q:Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2, p3, p4, p5}, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->setNotchPadding(IIII)V

    :cond_0
    iget-object v4, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->r:Lcom/anythink/expressad/video/module/AnythinkH5EndCardView;

    const-string p1, "oncutoutfetched"

    if-eqz v4, :cond_1

    iget-object v0, v4, Lcom/anythink/expressad/video/module/AnythinkH5EndCardView;->s:Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;

    if-eqz v0, :cond_1

    iget-object v5, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->P:Ljava/lang/String;

    move v6, p2

    move v7, p3

    move v8, p4

    move v9, p5

    invoke-virtual/range {v4 .. v9}, Lcom/anythink/expressad/video/module/AnythinkH5EndCardView;->setNotchValue(Ljava/lang/String;IIII)V

    invoke-static {}, Lcom/anythink/expressad/atsignalcommon/windvane/j;->a()Lcom/anythink/expressad/atsignalcommon/windvane/j;

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->r:Lcom/anythink/expressad/video/module/AnythinkH5EndCardView;

    iget-object v0, v0, Lcom/anythink/expressad/video/module/AnythinkH5EndCardView;->s:Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;

    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->P:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/anythink/expressad/atsignalcommon/windvane/j;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v4, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->n:Lcom/anythink/expressad/video/module/AnythinkPlayableView;

    if-eqz v4, :cond_2

    iget-object v0, v4, Lcom/anythink/expressad/video/module/AnythinkH5EndCardView;->s:Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;

    if-eqz v0, :cond_2

    iget-object v5, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->P:Ljava/lang/String;

    move v6, p2

    move v7, p3

    move v8, p4

    move v9, p5

    invoke-virtual/range {v4 .. v9}, Lcom/anythink/expressad/video/module/AnythinkH5EndCardView;->setNotchValue(Ljava/lang/String;IIII)V

    invoke-static {}, Lcom/anythink/expressad/atsignalcommon/windvane/j;->a()Lcom/anythink/expressad/atsignalcommon/windvane/j;

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->n:Lcom/anythink/expressad/video/module/AnythinkPlayableView;

    iget-object v0, v0, Lcom/anythink/expressad/video/module/AnythinkH5EndCardView;->s:Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;

    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->P:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/anythink/expressad/atsignalcommon/windvane/j;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->R:Lcom/anythink/expressad/video/dynview/widget/AnyThinkOrderCampView;

    if-eqz p1, :cond_3

    invoke-virtual {p1, p2, p3, p4, p5}, Lcom/anythink/expressad/video/dynview/widget/AnyThinkOrderCampView;->setNotchPadding(IIII)V

    :cond_3
    return-void
.end method

.method public setNotifyListener(Lcom/anythink/expressad/video/module/a/a;)V
    .locals 6

    invoke-super {p0, p1}, Lcom/anythink/expressad/video/module/AnythinkBaseView;->setNotifyListener(Lcom/anythink/expressad/video/module/a/a;)V

    const/16 v0, 0x8

    new-array v1, v0, [Lcom/anythink/expressad/video/module/AnythinkBaseView;

    iget-object v2, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->n:Lcom/anythink/expressad/video/module/AnythinkPlayableView;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->o:Lcom/anythink/expressad/video/module/AnythinkClickCTAView;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->p:Lcom/anythink/expressad/video/module/AnythinkClickMiniCardView;

    const/4 v4, 0x2

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->q:Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;

    const/4 v4, 0x3

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->r:Lcom/anythink/expressad/video/module/AnythinkH5EndCardView;

    const/4 v4, 0x4

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->t:Lcom/anythink/expressad/video/module/AnythinkVastEndCardView;

    const/4 v4, 0x5

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->u:Lcom/anythink/expressad/video/module/AnythinkLandingPageView;

    const/4 v4, 0x6

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->s:Lcom/anythink/expressad/video/module/AnythinkVideoEndCoverView;

    const/4 v4, 0x7

    aput-object v2, v1, v4

    :goto_0
    if-ge v3, v0, :cond_2

    aget-object v2, v1, v3

    if-eqz v2, :cond_1

    instance-of v4, v2, Lcom/anythink/expressad/video/module/AnythinkClickMiniCardView;

    if-eqz v4, :cond_0

    new-instance v4, Lcom/anythink/expressad/video/module/a/a/g;

    iget-object v5, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->p:Lcom/anythink/expressad/video/module/AnythinkClickMiniCardView;

    invoke-direct {v4, v5, p1}, Lcom/anythink/expressad/video/module/a/a/g;-><init>(Lcom/anythink/expressad/video/module/AnythinkClickMiniCardView;Lcom/anythink/expressad/video/module/a/a;)V

    goto :goto_1

    :cond_0
    new-instance v4, Lcom/anythink/expressad/video/module/a/a/i;

    invoke-direct {v4, p1}, Lcom/anythink/expressad/video/module/a/a/i;-><init>(Lcom/anythink/expressad/video/module/a/a;)V

    :goto_1
    invoke-virtual {v2, v4}, Lcom/anythink/expressad/video/module/AnythinkBaseView;->setNotifyListener(Lcom/anythink/expressad/video/module/a/a;)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setOnPause()V
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->q:Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->setOnPause()V

    :cond_0
    return-void
.end method

.method public setOnResume()V
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->q:Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->setOnResume()V

    :cond_0
    return-void
.end method

.method public setPlayCloseBtnTm(I)V
    .locals 0

    iput p1, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->A:I

    return-void
.end method

.method public setRewardStatus(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->J:Z

    return-void
.end method

.method public setShowingTransparent(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->D:Z

    return-void
.end method

.method public setUnitID(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->w:Ljava/lang/String;

    return-void
.end method

.method public setVideoInteractiveType(I)V
    .locals 2

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-static {v0}, Lcom/anythink/expressad/video/dynview/i/c;->a(Lcom/anythink/expressad/foundation/d/c;)I

    move-result v0

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    iput p1, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->x:I

    return-void

    :cond_0
    iput v0, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->x:I

    return-void

    :cond_1
    iput p1, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->x:I

    return-void
.end method

.method public setVideoSkipTime(I)V
    .locals 0

    iput p1, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->H:I

    return-void
.end method

.method public showAlertWebView()Z
    .locals 4

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->v:Lcom/anythink/expressad/video/module/AnythinkAlertWebview;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/anythink/expressad/video/module/AnythinkH5EndCardView;->isLoadSuccess()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/anythink/expressad/video/module/AnythinkBaseView;->setMatchParent()V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->T:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->bringToFront()V

    iput-boolean v3, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->S:Z

    :cond_1
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->p:Lcom/anythink/expressad/video/module/AnythinkClickMiniCardView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->v:Lcom/anythink/expressad/video/module/AnythinkAlertWebview;

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->o()V

    :cond_3
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->v:Lcom/anythink/expressad/video/module/AnythinkAlertWebview;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->v:Lcom/anythink/expressad/video/module/AnythinkAlertWebview;

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    :cond_4
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->v:Lcom/anythink/expressad/video/module/AnythinkAlertWebview;

    invoke-virtual {p0, v0}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->v:Lcom/anythink/expressad/video/module/AnythinkAlertWebview;

    invoke-virtual {v0}, Lcom/anythink/expressad/video/module/AnythinkAlertWebview;->webviewshow()V

    return v3

    :cond_5
    return v1
.end method

.method public showEndcard(I)V
    .locals 4

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    const-string v2, ""

    if-eq p1, v1, :cond_7

    const/16 v3, 0x64

    if-eq p1, v3, :cond_5

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    invoke-virtual {p0}, Lcom/anythink/expressad/video/module/AnythinkBaseView;->setMatchParent()V

    iput-boolean v1, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->T:Z

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->bringToFront()V

    invoke-direct {p0}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->e()V

    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->e:Lcom/anythink/expressad/video/module/a/a;

    const/16 v0, 0x75

    goto/16 :goto_1

    :cond_0
    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->e:Lcom/anythink/expressad/video/module/a/a;

    const/16 v0, 0x6a

    goto/16 :goto_1

    :cond_1
    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->e:Lcom/anythink/expressad/video/module/a/a;

    const/16 v3, 0x71

    invoke-interface {p1, v3, v2}, Lcom/anythink/expressad/video/module/a/a;->a(ILjava/lang/Object;)V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    invoke-virtual {p0}, Lcom/anythink/expressad/video/module/AnythinkBaseView;->setMatchParent()V

    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->u:Lcom/anythink/expressad/video/module/AnythinkLandingPageView;

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->Q:Lcom/anythink/expressad/video/signal/factory/b;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->a(Lcom/anythink/expressad/video/signal/factory/b;Ljava/lang/Integer;)V

    :cond_2
    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->u:Lcom/anythink/expressad/video/module/AnythinkLandingPageView;

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->w:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/anythink/expressad/video/module/AnythinkH5EndCardView;->setUnitId(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->u:Lcom/anythink/expressad/video/module/AnythinkLandingPageView;

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->Q:Lcom/anythink/expressad/video/signal/factory/b;

    invoke-virtual {p1, v0}, Lcom/anythink/expressad/video/module/AnythinkLandingPageView;->preLoadData(Lcom/anythink/expressad/video/signal/factory/b;)V

    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->u:Lcom/anythink/expressad/video/module/AnythinkLandingPageView;

    invoke-virtual {p0, p1}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    invoke-virtual {p0}, Lcom/anythink/expressad/video/module/AnythinkBaseView;->setMatchParent()V

    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->t:Lcom/anythink/expressad/video/module/AnythinkVastEndCardView;

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->Q:Lcom/anythink/expressad/video/signal/factory/b;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->a(Lcom/anythink/expressad/video/signal/factory/b;Ljava/lang/Integer;)V

    :cond_4
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xd

    invoke-virtual {p1, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->t:Lcom/anythink/expressad/video/module/AnythinkVastEndCardView;

    invoke-virtual {p0, v0, p1}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->t:Lcom/anythink/expressad/video/module/AnythinkVastEndCardView;

    invoke-virtual {p1}, Lcom/anythink/expressad/video/module/AnythinkVastEndCardView;->notifyShowListener()V

    :goto_0
    iput-boolean v1, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->T:Z

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->bringToFront()V

    goto :goto_2

    :cond_5
    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->J()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_6

    iput-boolean v1, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->E:Z

    :cond_6
    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->n:Lcom/anythink/expressad/video/module/AnythinkPlayableView;

    invoke-static {p1}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->a(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/anythink/expressad/video/module/AnythinkBaseView;->setMatchParent()V

    invoke-direct {p0}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->i()V

    goto :goto_2

    :cond_7
    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->e:Lcom/anythink/expressad/video/module/a/a;

    const/16 v0, 0x68

    :goto_1
    invoke-interface {p1, v0, v2}, Lcom/anythink/expressad/video/module/a/a;->a(ILjava/lang/Object;)V

    :cond_8
    :goto_2
    iput-boolean v1, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->B:Z

    return-void
.end method

.method public showMiniCard(IIIII)V
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->p:Lcom/anythink/expressad/video/module/AnythinkClickMiniCardView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/anythink/expressad/video/module/AnythinkClickMiniCardView;->setMiniCardLocation(IIII)V

    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->p:Lcom/anythink/expressad/video/module/AnythinkClickMiniCardView;

    invoke-virtual {p1, p5}, Lcom/anythink/expressad/video/module/AnythinkClickMiniCardView;->setRadius(I)V

    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->p:Lcom/anythink/expressad/video/module/AnythinkClickMiniCardView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Lcom/anythink/expressad/video/module/AnythinkH5EndCardView;->setCloseVisible(I)V

    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->p:Lcom/anythink/expressad/video/module/AnythinkClickMiniCardView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    invoke-virtual {p0}, Lcom/anythink/expressad/video/module/AnythinkBaseView;->setMatchParent()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->T:Z

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->bringToFront()V

    invoke-direct {p0}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->m()V

    iget-boolean p2, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->G:Z

    if-nez p2, :cond_0

    iput-boolean p1, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->G:Z

    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->e:Lcom/anythink/expressad/video/module/a/a;

    const/16 p2, 0x6d

    const-string p3, ""

    invoke-interface {p1, p2, p3}, Lcom/anythink/expressad/video/module/a/a;->a(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->e:Lcom/anythink/expressad/video/module/a/a;

    const/16 p2, 0x75

    invoke-interface {p1, p2, p3}, Lcom/anythink/expressad/video/module/a/a;->a(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public showOrderCampView()V
    .locals 5

    new-instance v0, Lcom/anythink/expressad/video/dynview/widget/AnyThinkOrderCampView;

    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/anythink/expressad/video/dynview/widget/AnyThinkOrderCampView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->R:Lcom/anythink/expressad/video/dynview/widget/AnyThinkOrderCampView;

    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->U:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/video/dynview/widget/AnyThinkOrderCampView;->setCampaignExes(Ljava/util/List;)V

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->e:Lcom/anythink/expressad/video/module/a/a;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/anythink/expressad/video/module/a/a/k;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/anythink/expressad/video/module/a/a/k;

    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->U:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/video/module/a/a/k;->a(Ljava/util/List;)V

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->R:Lcom/anythink/expressad/video/dynview/widget/AnyThinkOrderCampView;

    new-instance v1, Lcom/anythink/expressad/video/module/a/a/i;

    iget-object v2, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->e:Lcom/anythink/expressad/video/module/a/a;

    invoke-direct {v1, v2}, Lcom/anythink/expressad/video/module/a/a/i;-><init>(Lcom/anythink/expressad/video/module/a/a;)V

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/video/module/AnythinkBaseView;->setNotifyListener(Lcom/anythink/expressad/video/module/a/a;)V

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->R:Lcom/anythink/expressad/video/dynview/widget/AnyThinkOrderCampView;

    iget-boolean v1, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->J:Z

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/video/dynview/widget/AnyThinkOrderCampView;->setRewarded(Z)V

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->R:Lcom/anythink/expressad/video/dynview/widget/AnyThinkOrderCampView;

    iget v1, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->K:I

    iget v2, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->L:I

    iget v3, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->M:I

    iget v4, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->N:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/anythink/expressad/video/dynview/widget/AnyThinkOrderCampView;->setNotchPadding(IIII)V

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->R:Lcom/anythink/expressad/video/dynview/widget/AnyThinkOrderCampView;

    new-instance v1, Lcom/anythink/expressad/video/module/AnythinkContainerView$3;

    invoke-direct {v1, p0}, Lcom/anythink/expressad/video/module/AnythinkContainerView$3;-><init>(Lcom/anythink/expressad/video/module/AnythinkContainerView;)V

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/video/dynview/widget/AnyThinkOrderCampView;->setCampOrderViewBuildCallback(Lcom/anythink/expressad/video/dynview/f/b;)V

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->R:Lcom/anythink/expressad/video/dynview/widget/AnyThinkOrderCampView;

    invoke-virtual {v0, p0}, Lcom/anythink/expressad/video/dynview/widget/AnyThinkOrderCampView;->createView(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public showPlayableView()V
    .locals 8

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->E:Z

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    invoke-virtual {p0}, Lcom/anythink/expressad/video/module/AnythinkBaseView;->setMatchParent()V

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->n:Lcom/anythink/expressad/video/module/AnythinkPlayableView;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->Q:Lcom/anythink/expressad/video/signal/factory/b;

    invoke-virtual {p0, v0}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->preLoadData(Lcom/anythink/expressad/video/signal/factory/b;)V

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->n:Lcom/anythink/expressad/video/module/AnythinkPlayableView;

    invoke-virtual {p0, v0}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->n:Lcom/anythink/expressad/video/module/AnythinkPlayableView;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->w:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/video/module/AnythinkH5EndCardView;->setUnitId(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->H()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->J()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->n:Lcom/anythink/expressad/video/module/AnythinkPlayableView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/video/module/AnythinkH5EndCardView;->setCloseVisible(I)V

    :cond_1
    iget-object v2, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->n:Lcom/anythink/expressad/video/module/AnythinkPlayableView;

    iget-object v3, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->P:Ljava/lang/String;

    iget v4, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->K:I

    iget v5, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->L:I

    iget v6, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->M:I

    iget v7, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->N:I

    invoke-virtual/range {v2 .. v7}, Lcom/anythink/expressad/video/module/AnythinkH5EndCardView;->setNotchValue(Ljava/lang/String;IIII)V

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->T:Z

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->bringToFront()V

    :cond_3
    return-void
.end method

.method public showVideoClickView(I)V
    .locals 3

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    if-eqz v0, :cond_12

    const/4 v0, -0x1

    if-eq p1, v0, :cond_11

    const/4 v1, 0x1

    if-eq p1, v1, :cond_9

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->o:Lcom/anythink/expressad/video/module/AnythinkClickCTAView;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->o:Lcom/anythink/expressad/video/module/AnythinkClickCTAView;

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    :cond_1
    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->v:Lcom/anythink/expressad/video/module/AnythinkAlertWebview;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_2

    return-void

    :cond_2
    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->p:Lcom/anythink/expressad/video/module/AnythinkClickMiniCardView;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-nez p1, :cond_4

    :cond_3
    :try_start_0
    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->J()I

    move-result p1

    if-ne p1, v1, :cond_4

    invoke-virtual {p0}, Lcom/anythink/expressad/video/module/AnythinkBaseView;->setMatchParent()V

    invoke-direct {p0}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->m()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->miniCardLoaded()Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->r:Lcom/anythink/expressad/video/module/AnythinkH5EndCardView;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->r:Lcom/anythink/expressad/video/module/AnythinkH5EndCardView;

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    :cond_5
    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->e:Lcom/anythink/expressad/video/module/a/a;

    const/16 v0, 0x70

    const-string v2, ""

    invoke-interface {p1, v0, v2}, Lcom/anythink/expressad/video/module/a/a;->a(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->aw()Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->ax()V

    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-static {p1, v0}, Lcom/anythink/expressad/video/module/b/a;->e(Landroid/content/Context;Lcom/anythink/expressad/foundation/d/c;)V

    :cond_6
    iget-boolean p1, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->D:Z

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->e:Lcom/anythink/expressad/video/module/a/a;

    const/16 v0, 0x73

    invoke-interface {p1, v0, v2}, Lcom/anythink/expressad/video/module/a/a;->a(ILjava/lang/Object;)V

    goto :goto_1

    :cond_7
    iput-boolean v1, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->T:Z

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->bringToFront()V

    invoke-virtual {p0}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->webviewshow()V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :goto_1
    iput-boolean v1, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->C:Z

    return-void

    :cond_8
    invoke-direct {p0}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->p()V

    goto/16 :goto_3

    :cond_9
    iget-boolean p1, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->B:Z

    if-eqz p1, :cond_a

    return-void

    :cond_a
    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->r:Lcom/anythink/expressad/video/module/AnythinkH5EndCardView;

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->r:Lcom/anythink/expressad/video/module/AnythinkH5EndCardView;

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    :cond_b
    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->p:Lcom/anythink/expressad/video/module/AnythinkClickMiniCardView;

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->p:Lcom/anythink/expressad/video/module/AnythinkClickMiniCardView;

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    :cond_c
    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->o:Lcom/anythink/expressad/video/module/AnythinkClickCTAView;

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-nez p1, :cond_10

    :cond_d
    :try_start_1
    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    if-eqz p1, :cond_10

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->J()I

    move-result p1

    if-ne p1, v1, :cond_10

    iput-boolean v1, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->T:Z

    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->o:Lcom/anythink/expressad/video/module/AnythinkClickCTAView;

    if-nez p1, :cond_e

    invoke-direct {p0, v0}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->b(I)V

    :cond_e
    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->o:Lcom/anythink/expressad/video/module/AnythinkClickCTAView;

    if-eqz p1, :cond_10

    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->j()Z

    move-result p1

    if-nez p1, :cond_10

    :cond_f
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {p1, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xc

    invoke-virtual {p1, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->o:Lcom/anythink/expressad/video/module/AnythinkClickCTAView;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_10
    :goto_2
    invoke-virtual {p0}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->isLast()Z

    move-result p1

    if-eqz p1, :cond_12

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->bringToFront()V

    return-void

    :cond_11
    invoke-virtual {p0}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->isLast()Z

    move-result p1

    if-nez p1, :cond_12

    invoke-virtual {p0}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->endCardShowing()Z

    move-result p1

    if-nez p1, :cond_12

    invoke-direct {p0}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->p()V

    :cond_12
    :goto_3
    return-void
.end method

.method public showVideoEndCover()V
    .locals 4

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    invoke-virtual {p0}, Lcom/anythink/expressad/video/module/AnythinkBaseView;->setMatchParent()V

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->s:Lcom/anythink/expressad/video/module/AnythinkVideoEndCoverView;

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->Q:Lcom/anythink/expressad/video/signal/factory/b;

    iput-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->Q:Lcom/anythink/expressad/video/signal/factory/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/anythink/expressad/video/module/AnythinkVideoEndCoverView;

    iget-object v2, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->a:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/anythink/expressad/video/module/AnythinkVideoEndCoverView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->s:Lcom/anythink/expressad/video/module/AnythinkVideoEndCoverView;

    iget-object v2, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v0, v2}, Lcom/anythink/expressad/video/module/AnythinkBaseView;->setCampaign(Lcom/anythink/expressad/foundation/d/c;)V

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->s:Lcom/anythink/expressad/video/module/AnythinkVideoEndCoverView;

    new-instance v2, Lcom/anythink/expressad/video/module/a/a/i;

    iget-object v3, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->e:Lcom/anythink/expressad/video/module/a/a;

    invoke-direct {v2, v3}, Lcom/anythink/expressad/video/module/a/a/i;-><init>(Lcom/anythink/expressad/video/module/a/a;)V

    invoke-virtual {v0, v2}, Lcom/anythink/expressad/video/module/AnythinkBaseView;->setNotifyListener(Lcom/anythink/expressad/video/module/a/a;)V

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->s:Lcom/anythink/expressad/video/module/AnythinkVideoEndCoverView;

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/video/module/AnythinkVideoEndCoverView;->preLoadData(Lcom/anythink/expressad/video/signal/factory/b;)V

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->s:Lcom/anythink/expressad/video/module/AnythinkVideoEndCoverView;

    invoke-virtual {p0, v0}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->addView(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->T:Z

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->bringToFront()V

    return-void
.end method

.method public toggleCloseBtn(I)V
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->n:Lcom/anythink/expressad/video/module/AnythinkPlayableView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/anythink/expressad/video/module/AnythinkH5EndCardView;->toggleCloseBtn(I)V

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->r:Lcom/anythink/expressad/video/module/AnythinkH5EndCardView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/anythink/expressad/video/module/AnythinkH5EndCardView;->toggleCloseBtn(I)V

    :cond_1
    return-void
.end method

.method public triggerCloseBtn(Ljava/lang/String;)V
    .locals 2

    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->e:Lcom/anythink/expressad/video/module/a/a;

    const/16 v0, 0x7a

    const-string v1, ""

    invoke-interface {p1, v0, v1}, Lcom/anythink/expressad/video/module/a/a;->a(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->e:Lcom/anythink/expressad/video/module/a/a;

    const/16 v0, 0x68

    invoke-interface {p1, v0, v1}, Lcom/anythink/expressad/video/module/a/a;->a(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public webviewshow()V
    .locals 5

    const/4 v0, 0x4

    new-array v1, v0, [Lcom/anythink/expressad/video/module/AnythinkH5EndCardView;

    iget-object v2, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->n:Lcom/anythink/expressad/video/module/AnythinkPlayableView;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->p:Lcom/anythink/expressad/video/module/AnythinkClickMiniCardView;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->r:Lcom/anythink/expressad/video/module/AnythinkH5EndCardView;

    const/4 v4, 0x2

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/anythink/expressad/video/module/AnythinkContainerView;->v:Lcom/anythink/expressad/video/module/AnythinkAlertWebview;

    const/4 v4, 0x3

    aput-object v2, v1, v4

    :goto_0
    if-ge v3, v0, :cond_1

    aget-object v2, v1, v3

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->isLast()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v2}, Lcom/anythink/expressad/video/module/AnythinkH5EndCardView;->webviewshow()V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
