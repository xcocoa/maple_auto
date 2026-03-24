.class public final Lcom/anythink/splashad/a/c$1$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/splashad/a/c$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;

.field public final synthetic b:Lcom/anythink/core/common/f/h;

.field public final synthetic c:Lcom/anythink/splashad/a/c$1;


# direct methods
.method public constructor <init>(Lcom/anythink/splashad/a/c$1;Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;Lcom/anythink/core/common/f/h;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/splashad/a/c$1$1;->c:Lcom/anythink/splashad/a/c$1;

    iput-object p2, p0, Lcom/anythink/splashad/a/c$1$1;->a:Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;

    iput-object p3, p0, Lcom/anythink/splashad/a/c$1$1;->b:Lcom/anythink/core/common/f/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 19

    move-object/from16 v0, p0

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/n;->b()Lcom/anythink/core/api/IExHandler;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, v0, Lcom/anythink/splashad/a/c$1$1;->a:Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;

    const/4 v3, 0x0

    iget-object v4, v0, Lcom/anythink/splashad/a/c$1$1;->c:Lcom/anythink/splashad/a/c$1;

    iget-object v4, v4, Lcom/anythink/splashad/a/c$1;->e:Lcom/anythink/core/api/ATEventInterface;

    invoke-interface {v1, v2, v3, v4}, Lcom/anythink/core/api/IExHandler;->createDownloadListener(Lcom/anythink/core/api/ATBaseAdAdapter;Lcom/anythink/core/api/BaseAd;Lcom/anythink/core/api/ATEventInterface;)Lcom/anythink/core/api/ATEventInterface;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/anythink/core/api/ATBaseAdAdapter;->setAdDownloadListener(Lcom/anythink/core/api/ATEventInterface;)V

    :cond_0
    iget-object v1, v0, Lcom/anythink/splashad/a/c$1$1;->c:Lcom/anythink/splashad/a/c$1;

    iget-object v1, v1, Lcom/anythink/splashad/a/c$1;->f:Lcom/anythink/splashad/api/ATSplashSkipInfo;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/anythink/splashad/api/ATSplashSkipInfo;->canUseCustomSkipView()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iget-object v2, v0, Lcom/anythink/splashad/a/c$1$1;->a:Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;

    invoke-virtual {v2}, Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;->isSupportCustomSkipView()Z

    move-result v9

    if-eqz v1, :cond_2

    if-eqz v9, :cond_2

    iget-object v2, v0, Lcom/anythink/splashad/a/c$1$1;->c:Lcom/anythink/splashad/a/c$1;

    iget-object v3, v2, Lcom/anythink/splashad/a/c$1;->f:Lcom/anythink/splashad/api/ATSplashSkipInfo;

    iget-object v2, v2, Lcom/anythink/splashad/a/c$1;->g:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Lcom/anythink/splashad/api/ATSplashSkipInfo;->setContainer(Landroid/view/ViewGroup;)V

    iget-object v2, v0, Lcom/anythink/splashad/a/c$1$1;->a:Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;

    iget-object v3, v0, Lcom/anythink/splashad/a/c$1$1;->c:Lcom/anythink/splashad/a/c$1;

    iget-object v3, v3, Lcom/anythink/splashad/a/c$1;->f:Lcom/anythink/splashad/api/ATSplashSkipInfo;

    invoke-virtual {v2, v3}, Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;->setSplashSkipInfo(Lcom/anythink/splashad/api/ATSplashSkipInfo;)V

    :cond_2
    new-instance v10, Lcom/anythink/splashad/a/h;

    iget-object v2, v0, Lcom/anythink/splashad/a/c$1$1;->a:Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;

    iget-object v3, v0, Lcom/anythink/splashad/a/c$1$1;->c:Lcom/anythink/splashad/a/c$1;

    iget-object v3, v3, Lcom/anythink/splashad/a/c$1;->h:Lcom/anythink/splashad/a/a;

    invoke-direct {v10, v2, v3}, Lcom/anythink/splashad/a/h;-><init>(Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;Lcom/anythink/splashad/a/a;)V

    iget-object v2, v0, Lcom/anythink/splashad/a/c$1$1;->a:Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;

    invoke-virtual {v2}, Lcom/anythink/core/api/ATBaseAdAdapter;->getMixedFormatAdType()I

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, v0, Lcom/anythink/splashad/a/c$1$1;->c:Lcom/anythink/splashad/a/c$1;

    iget-object v3, v2, Lcom/anythink/splashad/a/c$1;->j:Lcom/anythink/splashad/a/c;

    iget-object v4, v2, Lcom/anythink/splashad/a/c$1;->b:Landroid/app/Activity;

    iget-object v5, v2, Lcom/anythink/splashad/a/c$1;->g:Landroid/view/ViewGroup;

    iget-object v2, v2, Lcom/anythink/splashad/a/c$1;->a:Lcom/anythink/core/common/f/b;

    invoke-virtual {v2}, Lcom/anythink/core/common/f/b;->e()Lcom/anythink/core/api/BaseAd;

    move-result-object v7

    iget-object v8, v0, Lcom/anythink/splashad/a/c$1$1;->b:Lcom/anythink/core/common/f/h;

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v10

    move v6, v1

    invoke-static/range {v2 .. v8}, Lcom/anythink/splashad/a/c;->a(Lcom/anythink/splashad/a/c;Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/anythink/splashad/a/h;ZLcom/anythink/core/api/BaseAd;Lcom/anythink/core/common/f/h;)V

    goto :goto_1

    :cond_3
    iget-object v2, v0, Lcom/anythink/splashad/a/c$1$1;->a:Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;

    iget-object v3, v0, Lcom/anythink/splashad/a/c$1$1;->c:Lcom/anythink/splashad/a/c$1;

    iget-object v4, v3, Lcom/anythink/splashad/a/c$1;->b:Landroid/app/Activity;

    iget-object v3, v3, Lcom/anythink/splashad/a/c$1;->g:Landroid/view/ViewGroup;

    new-instance v5, Lcom/anythink/splashad/a/g;

    invoke-direct {v5, v10}, Lcom/anythink/splashad/a/g;-><init>(Lcom/anythink/splashad/a/h;)V

    invoke-virtual {v2, v4, v3, v5}, Lcom/anythink/core/api/ATBaseAdAdapter;->internalShow(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/anythink/core/api/ATCommonImpressionListener;)V

    :goto_1
    iget-object v2, v0, Lcom/anythink/splashad/a/c$1$1;->a:Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;

    invoke-virtual {v2}, Lcom/anythink/core/common/b/d;->getTrackingInfo()Lcom/anythink/core/common/f/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/core/common/f/au;->ai()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2}, Lcom/anythink/core/common/f/au;->ah()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2}, Lcom/anythink/core/common/f/h;->F()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2}, Lcom/anythink/core/common/f/h;->P()I

    move-result v15

    const/16 v16, 0x4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v4, v0, Lcom/anythink/splashad/a/c$1$1;->c:Lcom/anythink/splashad/a/c$1;

    iget-wide v4, v4, Lcom/anythink/splashad/a/c$1;->i:J

    sub-long v17, v2, v4

    const-string v11, "4"

    invoke-static/range {v11 .. v18}, Lcom/anythink/core/common/n/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJ)V

    if-eqz v1, :cond_6

    iget-object v1, v0, Lcom/anythink/splashad/a/c$1$1;->c:Lcom/anythink/splashad/a/c$1;

    iget-object v1, v1, Lcom/anythink/splashad/a/c$1;->f:Lcom/anythink/splashad/api/ATSplashSkipInfo;

    invoke-virtual {v1}, Lcom/anythink/splashad/api/ATSplashSkipInfo;->getATSplashSkipAdListener()Lcom/anythink/splashad/api/ATSplashSkipAdListener;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-interface {v1, v9}, Lcom/anythink/splashad/api/ATSplashSkipAdListener;->isSupportCustomSkipView(Z)V

    :cond_4
    if-eqz v9, :cond_5

    iget-object v1, v0, Lcom/anythink/splashad/a/c$1$1;->c:Lcom/anythink/splashad/a/c$1;

    iget-object v1, v1, Lcom/anythink/splashad/a/c$1;->f:Lcom/anythink/splashad/api/ATSplashSkipInfo;

    invoke-virtual {v1}, Lcom/anythink/splashad/api/ATSplashSkipInfo;->getSkipView()Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/anythink/splashad/a/c$1$1$1;

    invoke-direct {v2, v0, v10}, Lcom/anythink/splashad/a/c$1$1$1;-><init>(Lcom/anythink/splashad/a/c$1$1;Lcom/anythink/splashad/a/h;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    return-void

    :cond_6
    iget-object v1, v0, Lcom/anythink/splashad/a/c$1$1;->c:Lcom/anythink/splashad/a/c$1;

    iget-object v1, v1, Lcom/anythink/splashad/a/c$1;->f:Lcom/anythink/splashad/api/ATSplashSkipInfo;

    if-eqz v1, :cond_7

    const-string v1, "anythink"

    const-string v2, "This AdSource does\'t support \'Custom SkipView\' or \'SkipView\' is null."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return-void
.end method
