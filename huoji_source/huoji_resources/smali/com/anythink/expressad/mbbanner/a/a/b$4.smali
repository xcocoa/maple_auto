.class public final Lcom/anythink/expressad/mbbanner/a/a/b$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/expressad/atsignalcommon/mraid/IMraidJSBridge;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/expressad/mbbanner/a/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/expressad/mbbanner/a/a/b;


# direct methods
.method public constructor <init>(Lcom/anythink/expressad/mbbanner/a/a/b;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/mbbanner/a/a/b$4;->a:Lcom/anythink/expressad/mbbanner/a/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/a/a/b$4;->a:Lcom/anythink/expressad/mbbanner/a/a/b;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public final expand(Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method public final getMraidCampaign()Lcom/anythink/expressad/foundation/d/c;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final open(Ljava/lang/String;)V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/a/a/b$4;->a:Lcom/anythink/expressad/mbbanner/a/a/b;

    invoke-static {v0}, Lcom/anythink/expressad/mbbanner/a/a/b;->c(Lcom/anythink/expressad/mbbanner/a/a/b;)Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/anythink/expressad/mbbanner/a/a/b$4;->a:Lcom/anythink/expressad/mbbanner/a/a/b;

    invoke-static {v2}, Lcom/anythink/expressad/mbbanner/a/a/b;->c(Lcom/anythink/expressad/mbbanner/a/a/b;)Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;

    move-result-object v2

    iget-wide v2, v2, Lcom/anythink/expressad/atsignalcommon/base/BaseWebView;->lastTouchTime:J

    sub-long/2addr v0, v2

    sget v2, Lcom/anythink/expressad/a/b/a;->c:I

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/a/a/b$4;->a:Lcom/anythink/expressad/mbbanner/a/a/b;

    invoke-static {v0}, Lcom/anythink/expressad/mbbanner/a/a/b;->e(Lcom/anythink/expressad/mbbanner/a/a/b;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/expressad/foundation/d/c;

    iget-object v1, p0, Lcom/anythink/expressad/mbbanner/a/a/b$4;->a:Lcom/anythink/expressad/mbbanner/a/a/b;

    invoke-static {v1}, Lcom/anythink/expressad/mbbanner/a/a/b;->c(Lcom/anythink/expressad/mbbanner/a/a/b;)Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    sget v1, Lcom/anythink/expressad/a/b/a;->a:I

    invoke-static {v0}, Lcom/anythink/expressad/a/b/a;->a(Lcom/anythink/expressad/foundation/d/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/anythink/expressad/mbbanner/a/a/b$4;->a:Lcom/anythink/expressad/mbbanner/a/a/b;

    invoke-static {v1}, Lcom/anythink/expressad/mbbanner/a/a/b;->e(Lcom/anythink/expressad/mbbanner/a/a/b;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object v1

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v3, v4, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    move-object p1, v0

    :cond_1
    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/a/a/b$4;->a:Lcom/anythink/expressad/mbbanner/a/a/b;

    invoke-static {v0}, Lcom/anythink/expressad/mbbanner/a/a/b;->b(Lcom/anythink/expressad/mbbanner/a/a/b;)Lcom/anythink/expressad/mbbanner/a/c/a;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/a/a/b$4;->a:Lcom/anythink/expressad/mbbanner/a/a/b;

    invoke-static {v0}, Lcom/anythink/expressad/mbbanner/a/a/b;->b(Lcom/anythink/expressad/mbbanner/a/a/b;)Lcom/anythink/expressad/mbbanner/a/c/a;

    move-result-object v0

    invoke-interface {v0, v2, p1}, Lcom/anythink/expressad/mbbanner/a/c/a;->a(ZLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_2
    return-void
.end method

.method public final unload()V
    .locals 0

    invoke-virtual {p0}, Lcom/anythink/expressad/mbbanner/a/a/b$4;->close()V

    return-void
.end method

.method public final useCustomClose(Z)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/a/a/b$4;->a:Lcom/anythink/expressad/mbbanner/a/a/b;

    invoke-static {v0}, Lcom/anythink/expressad/mbbanner/a/a/b;->f(Lcom/anythink/expressad/mbbanner/a/a/b;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method
