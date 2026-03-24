.class public abstract Lcom/anythink/splashad/a/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/core/common/b/a;


# instance fields
.field private volatile isAdTimeout:Z

.field private volatile mHasReturn:Z

.field private mRequestId:Ljava/lang/String;

.field private final timeOutHandler:Lcom/anythink/core/common/m/a;

.field private final timeoutRunnable:Lcom/anythink/core/common/m/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anythink/splashad/a/b;->mHasReturn:Z

    iput-boolean v0, p0, Lcom/anythink/splashad/a/b;->isAdTimeout:Z

    invoke-static {}, Lcom/anythink/core/common/m/d;->a()Lcom/anythink/core/common/m/a;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/splashad/a/b;->timeOutHandler:Lcom/anythink/core/common/m/a;

    new-instance v0, Lcom/anythink/splashad/a/b$1;

    invoke-direct {v0, p0}, Lcom/anythink/splashad/a/b$1;-><init>(Lcom/anythink/splashad/a/b;)V

    iput-object v0, p0, Lcom/anythink/splashad/a/b;->timeoutRunnable:Lcom/anythink/core/common/m/b;

    return-void
.end method

.method public static synthetic access$000(Lcom/anythink/splashad/a/b;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/anythink/splashad/a/b;->mHasReturn:Z

    return p0
.end method

.method public static synthetic access$102(Lcom/anythink/splashad/a/b;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/anythink/splashad/a/b;->isAdTimeout:Z

    return p1
.end method

.method public static synthetic access$200(Lcom/anythink/splashad/a/b;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/anythink/splashad/a/b;->mRequestId:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public onAdLoadFail(Lcom/anythink/core/api/AdError;)V
    .locals 2

    iget-object v0, p0, Lcom/anythink/splashad/a/b;->timeOutHandler:Lcom/anythink/core/common/m/a;

    iget-object v1, p0, Lcom/anythink/splashad/a/b;->timeoutRunnable:Lcom/anythink/core/common/m/b;

    invoke-interface {v0, v1}, Lcom/anythink/core/common/m/a;->b(Lcom/anythink/core/common/m/b;)V

    iget-boolean v0, p0, Lcom/anythink/splashad/a/b;->mHasReturn:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/splashad/a/b;->mHasReturn:Z

    iget-object v0, p0, Lcom/anythink/splashad/a/b;->mRequestId:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/anythink/splashad/a/b;->onNoAdError(Ljava/lang/String;Lcom/anythink/core/api/AdError;)V

    :cond_0
    return-void
.end method

.method public onAdLoaded()V
    .locals 2

    iget-object v0, p0, Lcom/anythink/splashad/a/b;->timeOutHandler:Lcom/anythink/core/common/m/a;

    iget-object v1, p0, Lcom/anythink/splashad/a/b;->timeoutRunnable:Lcom/anythink/core/common/m/b;

    invoke-interface {v0, v1}, Lcom/anythink/core/common/m/a;->b(Lcom/anythink/core/common/m/b;)V

    iget-boolean v0, p0, Lcom/anythink/splashad/a/b;->mHasReturn:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/splashad/a/b;->mHasReturn:Z

    iget-object v0, p0, Lcom/anythink/splashad/a/b;->mRequestId:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/anythink/splashad/a/b;->isAdTimeout:Z

    invoke-virtual {p0, v0, v1}, Lcom/anythink/splashad/a/b;->onAdLoaded(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public abstract onAdLoaded(Ljava/lang/String;Z)V
.end method

.method public abstract onNoAdError(Ljava/lang/String;Lcom/anythink/core/api/AdError;)V
.end method

.method public abstract onTimeout(Ljava/lang/String;)V
.end method

.method public setRequestId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/splashad/a/b;->mRequestId:Ljava/lang/String;

    return-void
.end method

.method public startCountDown(I)V
    .locals 4

    iget-object v0, p0, Lcom/anythink/splashad/a/b;->timeOutHandler:Lcom/anythink/core/common/m/a;

    iget-object v1, p0, Lcom/anythink/splashad/a/b;->timeoutRunnable:Lcom/anythink/core/common/m/b;

    int-to-long v2, p1

    const/4 p1, 0x0

    invoke-interface {v0, v1, v2, v3, p1}, Lcom/anythink/core/common/m/a;->a(Lcom/anythink/core/common/m/b;JZ)V

    return-void
.end method
