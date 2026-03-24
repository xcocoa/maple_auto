.class public Lcom/anythink/expressad/video/signal/factory/b;
.super Lcom/anythink/expressad/video/signal/factory/a;
.source ""


# instance fields
.field private h:Landroid/app/Activity;

.field private i:Landroid/webkit/WebView;

.field private j:Lcom/anythink/expressad/video/module/AnythinkVideoView;

.field private k:Lcom/anythink/expressad/video/module/AnythinkContainerView;

.field private l:Lcom/anythink/expressad/foundation/d/c;

.field private m:Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;

.field private n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/anythink/expressad/foundation/d/c;",
            ">;"
        }
    .end annotation
.end field

.field private o:Lcom/anythink/expressad/video/signal/c$a;

.field private p:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Lcom/anythink/expressad/video/signal/factory/a;-><init>()V

    iput-object p1, p0, Lcom/anythink/expressad/video/signal/factory/b;->h:Landroid/app/Activity;

    return-void
.end method

.method private constructor <init>(Landroid/app/Activity;Landroid/webkit/WebView;Lcom/anythink/expressad/video/module/AnythinkVideoView;Lcom/anythink/expressad/video/module/AnythinkContainerView;Lcom/anythink/expressad/foundation/d/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/anythink/expressad/video/signal/factory/a;-><init>()V

    iput-object p1, p0, Lcom/anythink/expressad/video/signal/factory/b;->h:Landroid/app/Activity;

    iput-object p2, p0, Lcom/anythink/expressad/video/signal/factory/b;->i:Landroid/webkit/WebView;

    iput-object p3, p0, Lcom/anythink/expressad/video/signal/factory/b;->j:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    iput-object p4, p0, Lcom/anythink/expressad/video/signal/factory/b;->k:Lcom/anythink/expressad/video/module/AnythinkContainerView;

    iput-object p5, p0, Lcom/anythink/expressad/video/signal/factory/b;->l:Lcom/anythink/expressad/foundation/d/c;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/webkit/WebView;Lcom/anythink/expressad/video/module/AnythinkVideoView;Lcom/anythink/expressad/video/module/AnythinkContainerView;Lcom/anythink/expressad/foundation/d/c;Lcom/anythink/expressad/video/signal/c$a;)V
    .locals 0

    invoke-direct {p0}, Lcom/anythink/expressad/video/signal/factory/a;-><init>()V

    iput-object p1, p0, Lcom/anythink/expressad/video/signal/factory/b;->h:Landroid/app/Activity;

    iput-object p2, p0, Lcom/anythink/expressad/video/signal/factory/b;->i:Landroid/webkit/WebView;

    iput-object p3, p0, Lcom/anythink/expressad/video/signal/factory/b;->j:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    iput-object p4, p0, Lcom/anythink/expressad/video/signal/factory/b;->k:Lcom/anythink/expressad/video/module/AnythinkContainerView;

    iput-object p5, p0, Lcom/anythink/expressad/video/signal/factory/b;->l:Lcom/anythink/expressad/foundation/d/c;

    iput-object p6, p0, Lcom/anythink/expressad/video/signal/factory/b;->o:Lcom/anythink/expressad/video/signal/c$a;

    invoke-virtual {p3}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->getUnitId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/expressad/video/signal/factory/b;->p:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;Landroid/webkit/WebView;)V
    .locals 0

    invoke-direct {p0}, Lcom/anythink/expressad/video/signal/factory/a;-><init>()V

    iput-object p1, p0, Lcom/anythink/expressad/video/signal/factory/b;->h:Landroid/app/Activity;

    iput-object p2, p0, Lcom/anythink/expressad/video/signal/factory/b;->m:Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;

    iput-object p3, p0, Lcom/anythink/expressad/video/signal/factory/b;->i:Landroid/webkit/WebView;

    return-void
.end method


# virtual methods
.method public final a(Lcom/anythink/expressad/video/signal/a/j;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/video/signal/factory/a;->b:Lcom/anythink/expressad/video/signal/c;

    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/anythink/expressad/foundation/d/c;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/anythink/expressad/video/signal/factory/b;->n:Ljava/util/List;

    return-void
.end method

.method public getActivityProxy()Lcom/anythink/expressad/video/signal/a;
    .locals 2

    iget-object v0, p0, Lcom/anythink/expressad/video/signal/factory/b;->i:Landroid/webkit/WebView;

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/anythink/expressad/video/signal/factory/a;->getActivityProxy()Lcom/anythink/expressad/video/signal/a;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/anythink/expressad/video/signal/factory/a;->a:Lcom/anythink/expressad/video/signal/a;

    if-nez v1, :cond_1

    new-instance v1, Lcom/anythink/expressad/video/signal/a/h;

    invoke-direct {v1, v0}, Lcom/anythink/expressad/video/signal/a/h;-><init>(Landroid/webkit/WebView;)V

    iput-object v1, p0, Lcom/anythink/expressad/video/signal/factory/a;->a:Lcom/anythink/expressad/video/signal/a;

    :cond_1
    iget-object v0, p0, Lcom/anythink/expressad/video/signal/factory/a;->a:Lcom/anythink/expressad/video/signal/a;

    return-object v0
.end method

.method public getIJSRewardVideoV1()Lcom/anythink/expressad/video/signal/i;
    .locals 3

    iget-object v0, p0, Lcom/anythink/expressad/video/signal/factory/b;->k:Lcom/anythink/expressad/video/module/AnythinkContainerView;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/anythink/expressad/video/signal/factory/b;->h:Landroid/app/Activity;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/anythink/expressad/video/signal/factory/a;->f:Lcom/anythink/expressad/video/signal/i;

    if-nez v2, :cond_1

    new-instance v2, Lcom/anythink/expressad/video/signal/a/m;

    invoke-direct {v2, v1, v0}, Lcom/anythink/expressad/video/signal/a/m;-><init>(Landroid/app/Activity;Lcom/anythink/expressad/video/module/AnythinkContainerView;)V

    iput-object v2, p0, Lcom/anythink/expressad/video/signal/factory/a;->f:Lcom/anythink/expressad/video/signal/i;

    :cond_1
    iget-object v0, p0, Lcom/anythink/expressad/video/signal/factory/a;->f:Lcom/anythink/expressad/video/signal/i;

    return-object v0

    :cond_2
    :goto_0
    invoke-super {p0}, Lcom/anythink/expressad/video/signal/factory/a;->getIJSRewardVideoV1()Lcom/anythink/expressad/video/signal/i;

    move-result-object v0

    return-object v0
.end method

.method public getJSBTModule()Lcom/anythink/expressad/video/signal/b;
    .locals 3

    iget-object v0, p0, Lcom/anythink/expressad/video/signal/factory/b;->h:Landroid/app/Activity;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/anythink/expressad/video/signal/factory/b;->m:Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/video/signal/factory/a;->g:Lcom/anythink/expressad/video/signal/b;

    if-nez v0, :cond_1

    new-instance v0, Lcom/anythink/expressad/video/signal/a/i;

    iget-object v1, p0, Lcom/anythink/expressad/video/signal/factory/b;->h:Landroid/app/Activity;

    iget-object v2, p0, Lcom/anythink/expressad/video/signal/factory/b;->m:Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;

    invoke-direct {v0, v1, v2}, Lcom/anythink/expressad/video/signal/a/i;-><init>(Landroid/app/Activity;Lcom/anythink/expressad/video/bt/module/AnythinkBTContainer;)V

    iput-object v0, p0, Lcom/anythink/expressad/video/signal/factory/a;->g:Lcom/anythink/expressad/video/signal/b;

    :cond_1
    iget-object v0, p0, Lcom/anythink/expressad/video/signal/factory/a;->g:Lcom/anythink/expressad/video/signal/b;

    return-object v0

    :cond_2
    :goto_0
    invoke-super {p0}, Lcom/anythink/expressad/video/signal/factory/a;->getJSBTModule()Lcom/anythink/expressad/video/signal/b;

    move-result-object v0

    return-object v0
.end method

.method public getJSCommon()Lcom/anythink/expressad/video/signal/c;
    .locals 3

    iget-object v0, p0, Lcom/anythink/expressad/video/signal/factory/b;->h:Landroid/app/Activity;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/anythink/expressad/video/signal/factory/b;->l:Lcom/anythink/expressad/foundation/d/c;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/video/signal/factory/a;->b:Lcom/anythink/expressad/video/signal/c;

    if-nez v0, :cond_1

    new-instance v0, Lcom/anythink/expressad/video/signal/a/j;

    iget-object v1, p0, Lcom/anythink/expressad/video/signal/factory/b;->h:Landroid/app/Activity;

    iget-object v2, p0, Lcom/anythink/expressad/video/signal/factory/b;->l:Lcom/anythink/expressad/foundation/d/c;

    invoke-direct {v0, v1, v2}, Lcom/anythink/expressad/video/signal/a/j;-><init>(Landroid/app/Activity;Lcom/anythink/expressad/foundation/d/c;)V

    iput-object v0, p0, Lcom/anythink/expressad/video/signal/factory/a;->b:Lcom/anythink/expressad/video/signal/c;

    :cond_1
    iget-object v0, p0, Lcom/anythink/expressad/video/signal/factory/b;->l:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->k()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/anythink/expressad/video/signal/factory/b;->n:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/anythink/expressad/video/signal/factory/a;->b:Lcom/anythink/expressad/video/signal/c;

    instance-of v2, v1, Lcom/anythink/expressad/video/signal/a/j;

    if-eqz v2, :cond_2

    check-cast v1, Lcom/anythink/expressad/video/signal/a/j;

    invoke-virtual {v1, v0}, Lcom/anythink/expressad/video/signal/a/j;->a(Ljava/util/List;)V

    :cond_2
    iget-object v0, p0, Lcom/anythink/expressad/video/signal/factory/a;->b:Lcom/anythink/expressad/video/signal/c;

    iget-object v1, p0, Lcom/anythink/expressad/video/signal/factory/b;->h:Landroid/app/Activity;

    invoke-interface {v0, v1}, Lcom/anythink/expressad/video/signal/c;->a(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/anythink/expressad/video/signal/factory/a;->b:Lcom/anythink/expressad/video/signal/c;

    iget-object v1, p0, Lcom/anythink/expressad/video/signal/factory/b;->p:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/anythink/expressad/video/signal/c;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/anythink/expressad/video/signal/factory/a;->b:Lcom/anythink/expressad/video/signal/c;

    iget-object v1, p0, Lcom/anythink/expressad/video/signal/factory/b;->o:Lcom/anythink/expressad/video/signal/c$a;

    invoke-interface {v0, v1}, Lcom/anythink/expressad/video/signal/c;->a(Lcom/anythink/expressad/video/signal/c$a;)V

    iget-object v0, p0, Lcom/anythink/expressad/video/signal/factory/a;->b:Lcom/anythink/expressad/video/signal/c;

    return-object v0

    :cond_3
    :goto_0
    invoke-super {p0}, Lcom/anythink/expressad/video/signal/factory/a;->getJSCommon()Lcom/anythink/expressad/video/signal/c;

    move-result-object v0

    return-object v0
.end method

.method public getJSContainerModule()Lcom/anythink/expressad/video/signal/e;
    .locals 2

    iget-object v0, p0, Lcom/anythink/expressad/video/signal/factory/b;->k:Lcom/anythink/expressad/video/module/AnythinkContainerView;

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/anythink/expressad/video/signal/factory/a;->getJSContainerModule()Lcom/anythink/expressad/video/signal/e;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/anythink/expressad/video/signal/factory/a;->e:Lcom/anythink/expressad/video/signal/e;

    if-nez v1, :cond_1

    new-instance v1, Lcom/anythink/expressad/video/signal/a/k;

    invoke-direct {v1, v0}, Lcom/anythink/expressad/video/signal/a/k;-><init>(Lcom/anythink/expressad/video/module/AnythinkContainerView;)V

    iput-object v1, p0, Lcom/anythink/expressad/video/signal/factory/a;->e:Lcom/anythink/expressad/video/signal/e;

    :cond_1
    iget-object v0, p0, Lcom/anythink/expressad/video/signal/factory/a;->e:Lcom/anythink/expressad/video/signal/e;

    return-object v0
.end method

.method public getJSNotifyProxy()Lcom/anythink/expressad/video/signal/g;
    .locals 2

    iget-object v0, p0, Lcom/anythink/expressad/video/signal/factory/b;->i:Landroid/webkit/WebView;

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/anythink/expressad/video/signal/factory/a;->getJSNotifyProxy()Lcom/anythink/expressad/video/signal/g;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/anythink/expressad/video/signal/factory/a;->d:Lcom/anythink/expressad/video/signal/g;

    if-nez v1, :cond_1

    new-instance v1, Lcom/anythink/expressad/video/signal/a/l;

    invoke-direct {v1, v0}, Lcom/anythink/expressad/video/signal/a/l;-><init>(Landroid/webkit/WebView;)V

    iput-object v1, p0, Lcom/anythink/expressad/video/signal/factory/a;->d:Lcom/anythink/expressad/video/signal/g;

    :cond_1
    iget-object v0, p0, Lcom/anythink/expressad/video/signal/factory/a;->d:Lcom/anythink/expressad/video/signal/g;

    return-object v0
.end method

.method public getJSVideoModule()Lcom/anythink/expressad/video/signal/j;
    .locals 2

    iget-object v0, p0, Lcom/anythink/expressad/video/signal/factory/b;->j:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/anythink/expressad/video/signal/factory/a;->getJSVideoModule()Lcom/anythink/expressad/video/signal/j;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/anythink/expressad/video/signal/factory/a;->c:Lcom/anythink/expressad/video/signal/j;

    if-nez v1, :cond_1

    new-instance v1, Lcom/anythink/expressad/video/signal/a/n;

    invoke-direct {v1, v0}, Lcom/anythink/expressad/video/signal/a/n;-><init>(Lcom/anythink/expressad/video/module/AnythinkVideoView;)V

    iput-object v1, p0, Lcom/anythink/expressad/video/signal/factory/a;->c:Lcom/anythink/expressad/video/signal/j;

    :cond_1
    iget-object v0, p0, Lcom/anythink/expressad/video/signal/factory/a;->c:Lcom/anythink/expressad/video/signal/j;

    return-object v0
.end method
