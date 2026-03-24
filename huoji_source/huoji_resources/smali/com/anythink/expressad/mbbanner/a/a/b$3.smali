.class public final Lcom/anythink/expressad/mbbanner/a/a/b$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/expressad/mbbanner/a/a/b;->a()V
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

    iput-object p1, p0, Lcom/anythink/expressad/mbbanner/a/a/b$3;->a:Lcom/anythink/expressad/mbbanner/a/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 6

    iget-object p1, p0, Lcom/anythink/expressad/mbbanner/a/a/b$3;->a:Lcom/anythink/expressad/mbbanner/a/a/b;

    invoke-static {p1}, Lcom/anythink/expressad/mbbanner/a/a/b;->b(Lcom/anythink/expressad/mbbanner/a/a/b;)Lcom/anythink/expressad/mbbanner/a/c/a;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/anythink/expressad/mbbanner/a/a/b$3;->a:Lcom/anythink/expressad/mbbanner/a/a/b;

    invoke-static {p1}, Lcom/anythink/expressad/mbbanner/a/a/b;->b(Lcom/anythink/expressad/mbbanner/a/a/b;)Lcom/anythink/expressad/mbbanner/a/c/a;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/anythink/expressad/mbbanner/a/c/a;->a(Z)V

    :cond_0
    iget-object p1, p0, Lcom/anythink/expressad/mbbanner/a/a/b$3;->a:Lcom/anythink/expressad/mbbanner/a/a/b;

    invoke-static {p1}, Lcom/anythink/expressad/mbbanner/a/a/b;->c(Lcom/anythink/expressad/mbbanner/a/a/b;)Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v5, 0x0

    const-string v2, ""

    const-string v3, "text/html"

    const-string v4, "utf-8"

    invoke-virtual/range {v0 .. v5}, Lcom/anythink/expressad/atsignalcommon/base/BaseWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/anythink/expressad/mbbanner/a/a/b$3;->a:Lcom/anythink/expressad/mbbanner/a/a/b;

    invoke-static {p1}, Lcom/anythink/expressad/mbbanner/a/a/b;->d(Lcom/anythink/expressad/mbbanner/a/a/b;)Landroid/widget/FrameLayout;

    move-result-object p1

    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/a/a/b$3;->a:Lcom/anythink/expressad/mbbanner/a/a/b;

    invoke-static {v0}, Lcom/anythink/expressad/mbbanner/a/a/b;->c(Lcom/anythink/expressad/mbbanner/a/a/b;)Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/anythink/expressad/mbbanner/a/a/b$3;->a:Lcom/anythink/expressad/mbbanner/a/a/b;

    invoke-static {p1}, Lcom/anythink/expressad/mbbanner/a/a/b;->c(Lcom/anythink/expressad/mbbanner/a/a/b;)Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;->release()V

    iget-object p1, p0, Lcom/anythink/expressad/mbbanner/a/a/b$3;->a:Lcom/anythink/expressad/mbbanner/a/a/b;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/anythink/expressad/mbbanner/a/a/b;->a(Lcom/anythink/expressad/mbbanner/a/a/b;Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;)Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;

    iget-object p1, p0, Lcom/anythink/expressad/mbbanner/a/a/b$3;->a:Lcom/anythink/expressad/mbbanner/a/a/b;

    invoke-static {p1, v0}, Lcom/anythink/expressad/mbbanner/a/a/b;->a(Lcom/anythink/expressad/mbbanner/a/a/b;Lcom/anythink/expressad/mbbanner/a/c/a;)Lcom/anythink/expressad/mbbanner/a/c/a;

    return-void
.end method
