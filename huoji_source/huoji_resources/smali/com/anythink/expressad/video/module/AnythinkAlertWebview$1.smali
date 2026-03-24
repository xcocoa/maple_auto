.class public final Lcom/anythink/expressad/video/module/AnythinkAlertWebview$1;
.super Lcom/anythink/expressad/atsignalcommon/a/b;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/expressad/video/module/AnythinkAlertWebview;->preLoadData(Lcom/anythink/expressad/video/signal/factory/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/expressad/video/module/AnythinkAlertWebview;


# direct methods
.method public constructor <init>(Lcom/anythink/expressad/video/module/AnythinkAlertWebview;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkAlertWebview$1;->a:Lcom/anythink/expressad/video/module/AnythinkAlertWebview;

    invoke-direct {p0}, Lcom/anythink/expressad/atsignalcommon/a/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/anythink/expressad/atsignalcommon/a/b;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    invoke-static {}, Lcom/anythink/expressad/atsignalcommon/windvane/j;->a()Lcom/anythink/expressad/atsignalcommon/windvane/j;

    const-string p2, "onJSBridgeConnected"

    const-string v0, ""

    invoke-static {p1, p2, v0}, Lcom/anythink/expressad/atsignalcommon/windvane/j;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/anythink/expressad/atsignalcommon/a/b;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkAlertWebview$1;->a:Lcom/anythink/expressad/video/module/AnythinkAlertWebview;

    iget-boolean p2, p1, Lcom/anythink/expressad/video/module/AnythinkH5EndCardView;->w:Z

    if-nez p2, :cond_0

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/anythink/expressad/video/module/AnythinkH5EndCardView;->w:Z

    :cond_0
    return-void
.end method

.method public final readyState(Landroid/webkit/WebView;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/anythink/expressad/atsignalcommon/a/b;->readyState(Landroid/webkit/WebView;I)V

    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkAlertWebview$1;->a:Lcom/anythink/expressad/video/module/AnythinkAlertWebview;

    iget-boolean v0, p1, Lcom/anythink/expressad/video/module/AnythinkH5EndCardView;->w:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p1, Lcom/anythink/expressad/video/module/AnythinkH5EndCardView;->v:Z

    :cond_1
    return-void
.end method
