.class public final Lcom/anythink/basead/mraid/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/expressad/atsignalcommon/bridge/IBannerJSBridge;


# instance fields
.field public a:Lcom/anythink/basead/mraid/c;

.field public b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/anythink/basead/mraid/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Landroid/app/Activity;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/anythink/basead/mraid/a;->b:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final a(Lcom/anythink/basead/mraid/b;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/anythink/basead/mraid/a;->c:Lcom/anythink/basead/mraid/b;

    :cond_0
    return-void
.end method

.method public final cai(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final click(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final close()V
    .locals 1

    iget-object v0, p0, Lcom/anythink/basead/mraid/a;->c:Lcom/anythink/basead/mraid/b;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/anythink/expressad/atsignalcommon/mraid/IMraidJSBridge;->close()V

    :cond_0
    return-void
.end method

.method public final expand(Ljava/lang/String;Z)V
    .locals 2

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "url"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "shouldUseCustomClose"

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/anythink/basead/mraid/a;->b:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    if-eqz p1, :cond_2

    iget-object p2, p0, Lcom/anythink/basead/mraid/a;->a:Lcom/anythink/basead/mraid/c;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/app/Dialog;->isShowing()Z

    move-result p2

    if-eqz p2, :cond_1

    return-void

    :cond_1
    new-instance p2, Lcom/anythink/basead/mraid/c;

    iget-object v1, p0, Lcom/anythink/basead/mraid/a;->c:Lcom/anythink/basead/mraid/b;

    invoke-direct {p2, p1, v0, v1}, Lcom/anythink/basead/mraid/c;-><init>(Landroid/content/Context;Landroid/os/Bundle;Lcom/anythink/basead/mraid/b;)V

    iput-object p2, p0, Lcom/anythink/basead/mraid/a;->a:Lcom/anythink/basead/mraid/c;

    invoke-virtual {p2}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_2
    return-void
.end method

.method public final getFileInfo(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final getMraidCampaign()Lcom/anythink/expressad/foundation/d/c;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getNetstat(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final gial(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final handlerH5Exception(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final increaseOfferFrequence(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final init(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final install(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onJSBridgeConnect(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final open(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/anythink/basead/mraid/a;->c:Lcom/anythink/basead/mraid/b;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/anythink/expressad/atsignalcommon/mraid/IMraidJSBridge;->open(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final openURL(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final readyStatus(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final reportUrls(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final resetCountdown(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final sendImpressions(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final toggleCloseBtn(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final triggerCloseBtn(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final unload()V
    .locals 0

    invoke-virtual {p0}, Lcom/anythink/basead/mraid/a;->close()V

    return-void
.end method

.method public final useCustomClose(Z)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/anythink/basead/mraid/a;->c:Lcom/anythink/basead/mraid/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/anythink/basead/mraid/b;->useCustomClose(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method
