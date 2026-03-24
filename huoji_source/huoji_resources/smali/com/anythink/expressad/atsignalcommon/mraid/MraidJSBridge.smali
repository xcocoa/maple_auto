.class public Lcom/anythink/expressad/atsignalcommon/mraid/MraidJSBridge;
.super Lcom/anythink/expressad/atsignalcommon/windvane/l;
.source ""


# static fields
.field public static final a:Ljava/lang/String; = "MraidJSBridge"


# instance fields
.field private b:Lcom/anythink/expressad/atsignalcommon/mraid/IMraidJSBridge;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/anythink/expressad/atsignalcommon/windvane/l;-><init>()V

    return-void
.end method


# virtual methods
.method public close(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    instance-of p2, p1, Lcom/anythink/expressad/atsignalcommon/windvane/a;

    if-eqz p2, :cond_0

    check-cast p1, Lcom/anythink/expressad/atsignalcommon/windvane/a;

    invoke-static {}, Lcom/anythink/expressad/atsignalcommon/mraid/CallMraidJS;->getInstance()Lcom/anythink/expressad/atsignalcommon/mraid/CallMraidJS;

    move-result-object p2

    iget-object p1, p1, Lcom/anythink/expressad/atsignalcommon/windvane/a;->a:Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;

    const-string v0, "close"

    invoke-virtual {p2, p1, v0}, Lcom/anythink/expressad/atsignalcommon/mraid/CallMraidJS;->fireNativeMethodCompleteEvent(Landroid/webkit/WebView;Ljava/lang/String;)V

    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/anythink/expressad/atsignalcommon/mraid/MraidJSBridge;->b:Lcom/anythink/expressad/atsignalcommon/mraid/IMraidJSBridge;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/anythink/expressad/atsignalcommon/mraid/IMraidJSBridge;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    return-void
.end method

.method public expand(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    instance-of v0, p1, Lcom/anythink/expressad/atsignalcommon/windvane/a;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/anythink/expressad/atsignalcommon/windvane/a;

    invoke-static {}, Lcom/anythink/expressad/atsignalcommon/mraid/CallMraidJS;->getInstance()Lcom/anythink/expressad/atsignalcommon/mraid/CallMraidJS;

    move-result-object v0

    iget-object p1, p1, Lcom/anythink/expressad/atsignalcommon/windvane/a;->a:Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;

    const-string v1, "expand"

    invoke-virtual {v0, p1, v1}, Lcom/anythink/expressad/atsignalcommon/mraid/CallMraidJS;->fireNativeMethodCompleteEvent(Landroid/webkit/WebView;Ljava/lang/String;)V

    :cond_0
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "url"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "shouldUseCustomClose"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MRAID expand "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/anythink/expressad/atsignalcommon/mraid/MraidJSBridge;->b:Lcom/anythink/expressad/atsignalcommon/mraid/IMraidJSBridge;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v0, "true"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iget-object v0, p0, Lcom/anythink/expressad/atsignalcommon/mraid/MraidJSBridge;->b:Lcom/anythink/expressad/atsignalcommon/mraid/IMraidJSBridge;

    invoke-interface {v0, p2, p1}, Lcom/anythink/expressad/atsignalcommon/mraid/IMraidJSBridge;->expand(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    return-void
.end method

.method public initialize(Landroid/content/Context;Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/anythink/expressad/atsignalcommon/windvane/l;->initialize(Landroid/content/Context;Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;)V

    :try_start_0
    instance-of v0, p1, Lcom/anythink/expressad/atsignalcommon/mraid/IMraidJSBridge;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/anythink/expressad/atsignalcommon/mraid/IMraidJSBridge;

    iput-object p1, p0, Lcom/anythink/expressad/atsignalcommon/mraid/MraidJSBridge;->b:Lcom/anythink/expressad/atsignalcommon/mraid/IMraidJSBridge;

    return-void

    :cond_0
    invoke-virtual {p2}, Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;->getObject()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;->getObject()Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lcom/anythink/expressad/atsignalcommon/mraid/IMraidJSBridge;

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;->getObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/anythink/expressad/atsignalcommon/mraid/IMraidJSBridge;

    iput-object p1, p0, Lcom/anythink/expressad/atsignalcommon/mraid/MraidJSBridge;->b:Lcom/anythink/expressad/atsignalcommon/mraid/IMraidJSBridge;

    :cond_1
    invoke-virtual {p2}, Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;->getMraidObject()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p2}, Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;->getMraidObject()Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lcom/anythink/expressad/atsignalcommon/mraid/IMraidJSBridge;

    if-eqz p1, :cond_2

    invoke-virtual {p2}, Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;->getMraidObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/anythink/expressad/atsignalcommon/mraid/IMraidJSBridge;

    iput-object p1, p0, Lcom/anythink/expressad/atsignalcommon/mraid/MraidJSBridge;->b:Lcom/anythink/expressad/atsignalcommon/mraid/IMraidJSBridge;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    :catch_0
    move-exception p1

    sget-boolean p2, Lcom/anythink/expressad/a;->a:Z

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    return-void
.end method

.method public open(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 5

    instance-of v0, p1, Lcom/anythink/expressad/atsignalcommon/windvane/a;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/anythink/expressad/atsignalcommon/windvane/a;

    iget-object p1, p1, Lcom/anythink/expressad/atsignalcommon/windvane/a;->a:Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;

    invoke-static {}, Lcom/anythink/expressad/atsignalcommon/mraid/CallMraidJS;->getInstance()Lcom/anythink/expressad/atsignalcommon/mraid/CallMraidJS;

    move-result-object v0

    const-string v1, "open"

    invoke-virtual {v0, p1, v1}, Lcom/anythink/expressad/atsignalcommon/mraid/CallMraidJS;->fireNativeMethodCompleteEvent(Landroid/webkit/WebView;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "url"

    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/anythink/expressad/atsignalcommon/mraid/MraidJSBridge;->b:Lcom/anythink/expressad/atsignalcommon/mraid/IMraidJSBridge;

    if-eqz v0, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p1, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p1, Lcom/anythink/expressad/atsignalcommon/base/BaseWebView;->lastTouchTime:J

    sub-long/2addr v0, v2

    sget v2, Lcom/anythink/expressad/a/b/a;->c:I

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    iget-object v0, p0, Lcom/anythink/expressad/atsignalcommon/mraid/MraidJSBridge;->b:Lcom/anythink/expressad/atsignalcommon/mraid/IMraidJSBridge;

    invoke-interface {v0}, Lcom/anythink/expressad/atsignalcommon/mraid/IMraidJSBridge;->getMraidCampaign()Lcom/anythink/expressad/foundation/d/c;

    move-result-object v0

    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    sget p1, Lcom/anythink/expressad/a/b/a;->a:I

    invoke-static {v0}, Lcom/anythink/expressad/a/b/a;->a(Lcom/anythink/expressad/foundation/d/c;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lcom/anythink/expressad/atsignalcommon/mraid/MraidJSBridge;->b:Lcom/anythink/expressad/atsignalcommon/mraid/IMraidJSBridge;

    invoke-interface {p1, p2}, Lcom/anythink/expressad/atsignalcommon/mraid/IMraidJSBridge;->open(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_2
    return-void
.end method

.method public setOrientationProperties(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    instance-of v0, p1, Lcom/anythink/expressad/atsignalcommon/windvane/a;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/anythink/expressad/atsignalcommon/windvane/a;

    invoke-static {}, Lcom/anythink/expressad/atsignalcommon/mraid/CallMraidJS;->getInstance()Lcom/anythink/expressad/atsignalcommon/mraid/CallMraidJS;

    move-result-object v0

    iget-object p1, p1, Lcom/anythink/expressad/atsignalcommon/windvane/a;->a:Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;

    const-string v1, "setOrientationProperties"

    invoke-virtual {v0, p1, v1}, Lcom/anythink/expressad/atsignalcommon/mraid/CallMraidJS;->fireNativeMethodCompleteEvent(Landroid/webkit/WebView;Ljava/lang/String;)V

    :cond_0
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "allowOrientationChange"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "forceOrientation"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/anythink/expressad/atsignalcommon/mraid/MraidJSBridge;->b:Lcom/anythink/expressad/atsignalcommon/mraid/IMraidJSBridge;

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    const-string v0, "true"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    const v0, 0x2b77bb9b

    if-eq p2, v0, :cond_2

    const v0, 0x5545f2bb

    if-eq p2, v0, :cond_1

    goto :goto_0

    :cond_1
    const-string p2, "landscape"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const-string p2, "portrait"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_3

    :catchall_0
    :cond_3
    :goto_0
    return-void
.end method

.method public unload(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    instance-of p2, p1, Lcom/anythink/expressad/atsignalcommon/windvane/a;

    if-eqz p2, :cond_0

    check-cast p1, Lcom/anythink/expressad/atsignalcommon/windvane/a;

    invoke-static {}, Lcom/anythink/expressad/atsignalcommon/mraid/CallMraidJS;->getInstance()Lcom/anythink/expressad/atsignalcommon/mraid/CallMraidJS;

    move-result-object p2

    iget-object p1, p1, Lcom/anythink/expressad/atsignalcommon/windvane/a;->a:Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;

    const-string v0, "unload"

    invoke-virtual {p2, p1, v0}, Lcom/anythink/expressad/atsignalcommon/mraid/CallMraidJS;->fireNativeMethodCompleteEvent(Landroid/webkit/WebView;Ljava/lang/String;)V

    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/anythink/expressad/atsignalcommon/mraid/MraidJSBridge;->b:Lcom/anythink/expressad/atsignalcommon/mraid/IMraidJSBridge;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/anythink/expressad/atsignalcommon/mraid/IMraidJSBridge;->unload()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    return-void
.end method

.method public useCustomClose(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    instance-of v0, p1, Lcom/anythink/expressad/atsignalcommon/windvane/a;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/anythink/expressad/atsignalcommon/windvane/a;

    invoke-static {}, Lcom/anythink/expressad/atsignalcommon/mraid/CallMraidJS;->getInstance()Lcom/anythink/expressad/atsignalcommon/mraid/CallMraidJS;

    move-result-object v0

    iget-object p1, p1, Lcom/anythink/expressad/atsignalcommon/windvane/a;->a:Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;

    const-string v1, "useCustomClose"

    invoke-virtual {v0, p1, v1}, Lcom/anythink/expressad/atsignalcommon/mraid/CallMraidJS;->fireNativeMethodCompleteEvent(Landroid/webkit/WebView;Ljava/lang/String;)V

    :cond_0
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "shouldUseCustomClose"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/anythink/expressad/atsignalcommon/mraid/MraidJSBridge;->b:Lcom/anythink/expressad/atsignalcommon/mraid/IMraidJSBridge;

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string p2, "true"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iget-object p2, p0, Lcom/anythink/expressad/atsignalcommon/mraid/MraidJSBridge;->b:Lcom/anythink/expressad/atsignalcommon/mraid/IMraidJSBridge;

    invoke-interface {p2, p1}, Lcom/anythink/expressad/atsignalcommon/mraid/IMraidJSBridge;->useCustomClose(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    return-void
.end method
