.class public Lcom/anythink/expressad/video/signal/factory/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/expressad/video/signal/factory/IJSFactory;


# instance fields
.field public a:Lcom/anythink/expressad/video/signal/a;

.field public b:Lcom/anythink/expressad/video/signal/c;

.field public c:Lcom/anythink/expressad/video/signal/j;

.field public d:Lcom/anythink/expressad/video/signal/g;

.field public e:Lcom/anythink/expressad/video/signal/e;

.field public f:Lcom/anythink/expressad/video/signal/i;

.field public g:Lcom/anythink/expressad/video/signal/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getActivityProxy()Lcom/anythink/expressad/video/signal/a;
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/video/signal/factory/a;->a:Lcom/anythink/expressad/video/signal/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/anythink/expressad/video/signal/a/a;

    invoke-direct {v0}, Lcom/anythink/expressad/video/signal/a/a;-><init>()V

    iput-object v0, p0, Lcom/anythink/expressad/video/signal/factory/a;->a:Lcom/anythink/expressad/video/signal/a;

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/video/signal/factory/a;->a:Lcom/anythink/expressad/video/signal/a;

    return-object v0
.end method

.method public getIJSRewardVideoV1()Lcom/anythink/expressad/video/signal/i;
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/video/signal/factory/a;->f:Lcom/anythink/expressad/video/signal/i;

    if-nez v0, :cond_0

    new-instance v0, Lcom/anythink/expressad/video/signal/a/f;

    invoke-direct {v0}, Lcom/anythink/expressad/video/signal/a/f;-><init>()V

    iput-object v0, p0, Lcom/anythink/expressad/video/signal/factory/a;->f:Lcom/anythink/expressad/video/signal/i;

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/video/signal/factory/a;->f:Lcom/anythink/expressad/video/signal/i;

    return-object v0
.end method

.method public getJSBTModule()Lcom/anythink/expressad/video/signal/b;
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/video/signal/factory/a;->g:Lcom/anythink/expressad/video/signal/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/anythink/expressad/video/signal/a/b;

    invoke-direct {v0}, Lcom/anythink/expressad/video/signal/a/b;-><init>()V

    iput-object v0, p0, Lcom/anythink/expressad/video/signal/factory/a;->g:Lcom/anythink/expressad/video/signal/b;

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/video/signal/factory/a;->g:Lcom/anythink/expressad/video/signal/b;

    return-object v0
.end method

.method public getJSCommon()Lcom/anythink/expressad/video/signal/c;
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/video/signal/factory/a;->b:Lcom/anythink/expressad/video/signal/c;

    if-nez v0, :cond_0

    new-instance v0, Lcom/anythink/expressad/video/signal/a/c;

    invoke-direct {v0}, Lcom/anythink/expressad/video/signal/a/c;-><init>()V

    iput-object v0, p0, Lcom/anythink/expressad/video/signal/factory/a;->b:Lcom/anythink/expressad/video/signal/c;

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/video/signal/factory/a;->b:Lcom/anythink/expressad/video/signal/c;

    return-object v0
.end method

.method public getJSContainerModule()Lcom/anythink/expressad/video/signal/e;
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/video/signal/factory/a;->e:Lcom/anythink/expressad/video/signal/e;

    if-nez v0, :cond_0

    new-instance v0, Lcom/anythink/expressad/video/signal/a/d;

    invoke-direct {v0}, Lcom/anythink/expressad/video/signal/a/d;-><init>()V

    iput-object v0, p0, Lcom/anythink/expressad/video/signal/factory/a;->e:Lcom/anythink/expressad/video/signal/e;

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/video/signal/factory/a;->e:Lcom/anythink/expressad/video/signal/e;

    return-object v0
.end method

.method public getJSNotifyProxy()Lcom/anythink/expressad/video/signal/g;
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/video/signal/factory/a;->d:Lcom/anythink/expressad/video/signal/g;

    if-nez v0, :cond_0

    new-instance v0, Lcom/anythink/expressad/video/signal/a/e;

    invoke-direct {v0}, Lcom/anythink/expressad/video/signal/a/e;-><init>()V

    iput-object v0, p0, Lcom/anythink/expressad/video/signal/factory/a;->d:Lcom/anythink/expressad/video/signal/g;

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/video/signal/factory/a;->d:Lcom/anythink/expressad/video/signal/g;

    return-object v0
.end method

.method public getJSVideoModule()Lcom/anythink/expressad/video/signal/j;
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/video/signal/factory/a;->c:Lcom/anythink/expressad/video/signal/j;

    if-nez v0, :cond_0

    new-instance v0, Lcom/anythink/expressad/video/signal/a/g;

    invoke-direct {v0}, Lcom/anythink/expressad/video/signal/a/g;-><init>()V

    iput-object v0, p0, Lcom/anythink/expressad/video/signal/factory/a;->c:Lcom/anythink/expressad/video/signal/j;

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/video/signal/factory/a;->c:Lcom/anythink/expressad/video/signal/j;

    return-object v0
.end method
