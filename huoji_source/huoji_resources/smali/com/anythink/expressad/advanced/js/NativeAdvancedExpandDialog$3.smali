.class public Lcom/anythink/expressad/advanced/js/NativeAdvancedExpandDialog$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/expressad/advanced/js/NativeAdvancedExpandDialog;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/expressad/advanced/js/NativeAdvancedExpandDialog;


# direct methods
.method public constructor <init>(Lcom/anythink/expressad/advanced/js/NativeAdvancedExpandDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/advanced/js/NativeAdvancedExpandDialog$3;->a:Lcom/anythink/expressad/advanced/js/NativeAdvancedExpandDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 6

    iget-object p1, p0, Lcom/anythink/expressad/advanced/js/NativeAdvancedExpandDialog$3;->a:Lcom/anythink/expressad/advanced/js/NativeAdvancedExpandDialog;

    invoke-static {p1}, Lcom/anythink/expressad/advanced/js/NativeAdvancedExpandDialog;->b(Lcom/anythink/expressad/advanced/js/NativeAdvancedExpandDialog;)Lcom/anythink/expressad/advanced/d/a;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/anythink/expressad/advanced/js/NativeAdvancedExpandDialog$3;->a:Lcom/anythink/expressad/advanced/js/NativeAdvancedExpandDialog;

    invoke-static {p1}, Lcom/anythink/expressad/advanced/js/NativeAdvancedExpandDialog;->b(Lcom/anythink/expressad/advanced/js/NativeAdvancedExpandDialog;)Lcom/anythink/expressad/advanced/d/a;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/anythink/expressad/advanced/d/a;->a(Z)V

    :cond_0
    iget-object p1, p0, Lcom/anythink/expressad/advanced/js/NativeAdvancedExpandDialog$3;->a:Lcom/anythink/expressad/advanced/js/NativeAdvancedExpandDialog;

    invoke-static {p1}, Lcom/anythink/expressad/advanced/js/NativeAdvancedExpandDialog;->c(Lcom/anythink/expressad/advanced/js/NativeAdvancedExpandDialog;)Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v5, 0x0

    const-string v2, ""

    const-string v3, "text/html"

    const-string v4, "utf-8"

    invoke-virtual/range {v0 .. v5}, Lcom/anythink/expressad/atsignalcommon/base/BaseWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/anythink/expressad/advanced/js/NativeAdvancedExpandDialog$3;->a:Lcom/anythink/expressad/advanced/js/NativeAdvancedExpandDialog;

    invoke-static {p1}, Lcom/anythink/expressad/advanced/js/NativeAdvancedExpandDialog;->d(Lcom/anythink/expressad/advanced/js/NativeAdvancedExpandDialog;)Landroid/widget/FrameLayout;

    move-result-object p1

    iget-object v0, p0, Lcom/anythink/expressad/advanced/js/NativeAdvancedExpandDialog$3;->a:Lcom/anythink/expressad/advanced/js/NativeAdvancedExpandDialog;

    invoke-static {v0}, Lcom/anythink/expressad/advanced/js/NativeAdvancedExpandDialog;->c(Lcom/anythink/expressad/advanced/js/NativeAdvancedExpandDialog;)Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/anythink/expressad/advanced/js/NativeAdvancedExpandDialog$3;->a:Lcom/anythink/expressad/advanced/js/NativeAdvancedExpandDialog;

    invoke-static {p1}, Lcom/anythink/expressad/advanced/js/NativeAdvancedExpandDialog;->c(Lcom/anythink/expressad/advanced/js/NativeAdvancedExpandDialog;)Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;->release()V

    iget-object p1, p0, Lcom/anythink/expressad/advanced/js/NativeAdvancedExpandDialog$3;->a:Lcom/anythink/expressad/advanced/js/NativeAdvancedExpandDialog;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/anythink/expressad/advanced/js/NativeAdvancedExpandDialog;->a(Lcom/anythink/expressad/advanced/js/NativeAdvancedExpandDialog;Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;)Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;

    iget-object p1, p0, Lcom/anythink/expressad/advanced/js/NativeAdvancedExpandDialog$3;->a:Lcom/anythink/expressad/advanced/js/NativeAdvancedExpandDialog;

    invoke-static {p1, v0}, Lcom/anythink/expressad/advanced/js/NativeAdvancedExpandDialog;->a(Lcom/anythink/expressad/advanced/js/NativeAdvancedExpandDialog;Lcom/anythink/expressad/advanced/d/a;)Lcom/anythink/expressad/advanced/d/a;

    return-void
.end method
