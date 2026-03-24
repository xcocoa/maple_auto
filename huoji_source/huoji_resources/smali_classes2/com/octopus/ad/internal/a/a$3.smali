.class public Lcom/octopus/ad/internal/a/a$3;
.super Lcom/octopus/ad/internal/view/h;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/internal/a/a;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/widget/ProgressBar;

.field public final synthetic b:Lcom/octopus/ad/internal/a/a;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/internal/a/a;Landroid/app/Activity;Landroid/widget/ProgressBar;)V
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/internal/a/a$3;->b:Lcom/octopus/ad/internal/a/a;

    iput-object p3, p0, Lcom/octopus/ad/internal/a/a$3;->a:Landroid/widget/ProgressBar;

    invoke-direct {p0, p2}, Lcom/octopus/ad/internal/view/h;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .locals 4

    sget-object v0, Lcom/octopus/ad/internal/utilities/HaoboLog;->browserLogTag:Ljava/lang/String;

    sget v1, Lcom/octopus/ad/R$string;->console_message:I

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->lineNumber()I

    move-result v3

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->sourceId()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v2, v3, p1}, Lcom/octopus/ad/internal/utilities/HaoboLog;->getString(ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/octopus/ad/internal/utilities/HaoboLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 1

    sget-object p1, Lcom/octopus/ad/internal/utilities/HaoboLog;->browserLogTag:Ljava/lang/String;

    sget v0, Lcom/octopus/ad/R$string;->js_alert:I

    invoke-static {v0, p3, p2}, Lcom/octopus/ad/internal/utilities/HaoboLog;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/octopus/ad/internal/utilities/HaoboLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p4}, Landroid/webkit/JsResult;->confirm()V

    const/4 p1, 0x1

    return p1
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 3

    const/16 p1, 0x8

    const/16 v0, 0x64

    if-ge p2, v0, :cond_0

    iget-object v1, p0, Lcom/octopus/ad/internal/a/a$3;->a:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v1

    if-ne v1, p1, :cond_0

    iget-object v1, p0, Lcom/octopus/ad/internal/a/a$3;->a:Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    iget-object v1, p0, Lcom/octopus/ad/internal/a/a$3;->a:Landroid/widget/ProgressBar;

    invoke-virtual {v1, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    if-ne p2, v0, :cond_1

    iget-object p2, p0, Lcom/octopus/ad/internal/a/a$3;->a:Landroid/widget/ProgressBar;

    invoke-virtual {p2, p1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/octopus/ad/internal/view/h;->onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V

    instance-of p2, p1, Landroid/widget/FrameLayout;

    if-eqz p2, :cond_0

    check-cast p1, Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getFocusedChild()Landroid/view/View;

    move-result-object p2

    instance-of p2, p2, Landroid/widget/VideoView;

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getFocusedChild()Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/VideoView;

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/octopus/ad/internal/a/a$3;->b:Lcom/octopus/ad/internal/a/a;

    invoke-static {p1}, Lcom/octopus/ad/internal/a/a;->a(Lcom/octopus/ad/internal/a/a;)Landroid/webkit/WebView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1, p2}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    invoke-virtual {p2}, Landroid/widget/VideoView;->start()V

    :cond_0
    return-void
.end method
