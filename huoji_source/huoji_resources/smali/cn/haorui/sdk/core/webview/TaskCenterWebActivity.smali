.class public Lcn/haorui/sdk/core/webview/TaskCenterWebActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/haorui/sdk/core/webview/TaskCenterWebActivity$c;
    }
.end annotation


# instance fields
.field public a:Landroid/webkit/WebView;

.field public b:Landroid/widget/RelativeLayout;

.field public c:Lcn/haorui/sdk/core/webview/TaskCenterJs;

.field public d:Z

.field public e:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    sget p1, Lcn/haorui/sdk/R$layout;->adsail_activity_task_center_web:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p1, v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x2500

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    :cond_0
    sget p1, Lcn/haorui/sdk/R$id;->adsail_task_center_rootview:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcn/haorui/sdk/core/webview/TaskCenterWebActivity;->b:Landroid/widget/RelativeLayout;

    sget p1, Lcn/haorui/sdk/R$id;->adsail_task_center_webview:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/webkit/WebView;

    iput-object p1, p0, Lcn/haorui/sdk/core/webview/TaskCenterWebActivity;->a:Landroid/webkit/WebView;

    sget p1, Lcn/haorui/sdk/R$id;->adsail_progressBarRL:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcn/haorui/sdk/core/webview/TaskCenterWebActivity;->e:Landroid/widget/RelativeLayout;

    iget-object p1, p0, Lcn/haorui/sdk/core/webview/TaskCenterWebActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    invoke-virtual {p1, v2}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    const-string v0, "utf-8"

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    new-instance p1, Lcn/haorui/sdk/core/webview/TaskCenterJs;

    iget-object v0, p0, Lcn/haorui/sdk/core/webview/TaskCenterWebActivity;->a:Landroid/webkit/WebView;

    invoke-direct {p1, p0, v0}, Lcn/haorui/sdk/core/webview/TaskCenterJs;-><init>(Lcn/haorui/sdk/core/webview/TaskCenterWebActivity;Landroid/webkit/WebView;)V

    iput-object p1, p0, Lcn/haorui/sdk/core/webview/TaskCenterWebActivity;->c:Lcn/haorui/sdk/core/webview/TaskCenterJs;

    iget-object v0, p0, Lcn/haorui/sdk/core/webview/TaskCenterWebActivity;->a:Landroid/webkit/WebView;

    const-string v2, "MsBusiness"

    invoke-virtual {v0, p1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcn/haorui/sdk/core/webview/TaskCenterWebActivity;->a:Landroid/webkit/WebView;

    new-instance v0, Landroid/webkit/WebChromeClient;

    invoke-direct {v0}, Landroid/webkit/WebChromeClient;-><init>()V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object p1, p0, Lcn/haorui/sdk/core/webview/TaskCenterWebActivity;->a:Landroid/webkit/WebView;

    new-instance v0, Lcn/haorui/sdk/core/webview/TaskCenterWebActivity$c;

    invoke-direct {v0, p0}, Lcn/haorui/sdk/core/webview/TaskCenterWebActivity$c;-><init>(Lcn/haorui/sdk/core/webview/TaskCenterWebActivity;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "url"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "userId"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "__UID__"

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :cond_1
    invoke-static {}, Lcn/haorui/sdk/core/AdSdk;->getOaid()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcn/haorui/sdk/core/AdSdk;->getOaid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    const-string v1, "__DEVICE__"

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :cond_2
    iget-object v0, p0, Lcn/haorui/sdk/core/webview/TaskCenterWebActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public onDestroy()V
    .locals 4

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    iget-object v0, p0, Lcn/haorui/sdk/core/webview/TaskCenterWebActivity;->a:Landroid/webkit/WebView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcn/haorui/sdk/core/webview/TaskCenterWebActivity;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcn/haorui/sdk/core/webview/TaskCenterWebActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    iput-object v1, p0, Lcn/haorui/sdk/core/webview/TaskCenterWebActivity;->a:Landroid/webkit/WebView;

    :cond_0
    iget-object v0, p0, Lcn/haorui/sdk/core/webview/TaskCenterWebActivity;->c:Lcn/haorui/sdk/core/webview/TaskCenterJs;

    if-eqz v0, :cond_2

    iget-object v2, v0, Lcn/haorui/sdk/core/webview/TaskCenterJs;->d:Lcn/haorui/sdk/core/webview/TaskCenterJs$InstallReceiver;

    if-eqz v2, :cond_2

    iget-object v3, v0, Lcn/haorui/sdk/core/webview/TaskCenterJs;->a:Lcn/haorui/sdk/core/webview/TaskCenterWebActivity;

    if-eqz v3, :cond_2

    invoke-virtual {v3, v2}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v2, v0, Lcn/haorui/sdk/core/webview/TaskCenterJs;->c:Ljava/util/Map;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    :cond_1
    iput-object v1, v0, Lcn/haorui/sdk/core/webview/TaskCenterJs;->a:Lcn/haorui/sdk/core/webview/TaskCenterWebActivity;

    :cond_2
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcn/haorui/sdk/core/webview/TaskCenterWebActivity;->a:Landroid/webkit/WebView;

    if-eqz p1, :cond_0

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x13

    if-lt p1, p2, :cond_0

    const-string p1, "TaskCenterWebActivity"

    const-string p2, "onKeyDown: "

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcn/haorui/sdk/core/webview/TaskCenterWebActivity;->a:Landroid/webkit/WebView;

    new-instance p2, Lcn/haorui/sdk/core/webview/TaskCenterWebActivity$b;

    invoke-direct {p2, p0}, Lcn/haorui/sdk/core/webview/TaskCenterWebActivity$b;-><init>(Lcn/haorui/sdk/core/webview/TaskCenterWebActivity;)V

    const-string v0, "javascript:reportAndroidBack()"

    invoke-virtual {p1, v0, p2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/haorui/sdk/core/webview/TaskCenterWebActivity;->d:Z

    return-void
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    iget-object v0, p0, Lcn/haorui/sdk/core/webview/TaskCenterWebActivity;->a:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcn/haorui/sdk/core/webview/TaskCenterWebActivity;->d:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcn/haorui/sdk/core/webview/TaskCenterWebActivity;->d:Z

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_0

    new-instance v1, Lcn/haorui/sdk/core/webview/TaskCenterWebActivity$a;

    invoke-direct {v1, p0}, Lcn/haorui/sdk/core/webview/TaskCenterWebActivity$a;-><init>(Lcn/haorui/sdk/core/webview/TaskCenterWebActivity;)V

    const-string v2, "javascript:windowsResume()"

    invoke-virtual {v0, v2, v1}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    :cond_0
    return-void
.end method
