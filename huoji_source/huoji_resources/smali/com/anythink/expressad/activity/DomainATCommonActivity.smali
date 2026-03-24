.class public Lcom/anythink/expressad/activity/DomainATCommonActivity;
.super Landroid/app/Activity;
.source ""


# static fields
.field private static final b:Ljava/lang/String; = "ATCommonActivity"


# instance fields
.field public a:Ljava/lang/String;

.field private c:Lcom/anythink/expressad/foundation/d/c;

.field private d:Lcom/anythink/expressad/foundation/webview/BrowserView;

.field private e:Lcom/anythink/expressad/foundation/webview/BrowserView$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/anythink/expressad/activity/DomainATCommonActivity;->a:Ljava/lang/String;

    new-instance v0, Lcom/anythink/expressad/activity/DomainATCommonActivity$1;

    invoke-direct {v0, p0}, Lcom/anythink/expressad/activity/DomainATCommonActivity$1;-><init>(Lcom/anythink/expressad/activity/DomainATCommonActivity;)V

    iput-object v0, p0, Lcom/anythink/expressad/activity/DomainATCommonActivity;->e:Lcom/anythink/expressad/foundation/webview/BrowserView$a;

    return-void
.end method

.method private a()V
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/expressad/activity/DomainATCommonActivity;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "mvcommon"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/anythink/expressad/foundation/d/c;

    iput-object v0, p0, Lcom/anythink/expressad/activity/DomainATCommonActivity;->c:Lcom/anythink/expressad/foundation/d/c;

    new-instance v0, Lcom/anythink/expressad/foundation/webview/BrowserView;

    iget-object v1, p0, Lcom/anythink/expressad/activity/DomainATCommonActivity;->c:Lcom/anythink/expressad/foundation/d/c;

    invoke-direct {v0, p0, v1}, Lcom/anythink/expressad/foundation/webview/BrowserView;-><init>(Landroid/content/Context;Lcom/anythink/expressad/foundation/d/c;)V

    iput-object v0, p0, Lcom/anythink/expressad/activity/DomainATCommonActivity;->d:Lcom/anythink/expressad/foundation/webview/BrowserView;

    iget-object v1, p0, Lcom/anythink/expressad/activity/DomainATCommonActivity;->e:Lcom/anythink/expressad/foundation/webview/BrowserView$a;

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/foundation/webview/BrowserView;->setListener(Lcom/anythink/expressad/foundation/webview/BrowserView$a;)V

    iget-object v0, p0, Lcom/anythink/expressad/activity/DomainATCommonActivity;->d:Lcom/anythink/expressad/foundation/webview/BrowserView;

    iget-object v1, p0, Lcom/anythink/expressad/activity/DomainATCommonActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/foundation/webview/BrowserView;->loadUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/anythink/expressad/activity/DomainATCommonActivity;->d:Lcom/anythink/expressad/foundation/webview/BrowserView;

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    const-string v1, "Error: no data"

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_1
    return-void
.end method

.method private a(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 8

    const-string v0, "http"

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const-string v4, "https"

    const/4 v5, 0x1

    if-nez v3, :cond_2

    :try_start_1
    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v3, 0x1

    :goto_1
    if-eqz v3, :cond_3

    return v1

    :cond_3
    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v3, "intent"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static {p2, v5}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-virtual {v2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_5

    const-string v3, "android.intent.category.BROWSABLE"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0xf

    if-lt v6, v7, :cond_4

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setSelector(Landroid/content/Intent;)V

    :cond_4
    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v2, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return v5

    :catchall_0
    move-exception v3

    :try_start_3
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :cond_5
    :try_start_4
    const-string v3, "browser_fallback_url"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    goto :goto_2

    :cond_6
    const/4 v5, 0x0

    :cond_7
    :goto_2
    if-eqz v5, :cond_8

    invoke-virtual {p1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    return v1

    :catchall_1
    move-exception p1

    :try_start_5
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :cond_8
    return v1

    :catchall_2
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    return v1
.end method

.method public static synthetic a(Lcom/anythink/expressad/activity/DomainATCommonActivity;Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/anythink/expressad/activity/DomainATCommonActivity;->a(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/app/Activity;->requestWindowFeature(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    :goto_0
    invoke-static {}, Lcom/anythink/expressad/foundation/b/a;->c()Lcom/anythink/expressad/foundation/b/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/b/a;->e()Landroid/content/Context;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/anythink/expressad/foundation/b/a;->c()Lcom/anythink/expressad/foundation/b/a;

    move-result-object p1

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/anythink/expressad/foundation/b/a;->a(Landroid/content/Context;)V

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "url"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/expressad/activity/DomainATCommonActivity;->a:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "mvcommon"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/anythink/expressad/foundation/d/c;

    iput-object p1, p0, Lcom/anythink/expressad/activity/DomainATCommonActivity;->c:Lcom/anythink/expressad/foundation/d/c;

    new-instance p1, Lcom/anythink/expressad/foundation/webview/BrowserView;

    iget-object v0, p0, Lcom/anythink/expressad/activity/DomainATCommonActivity;->c:Lcom/anythink/expressad/foundation/d/c;

    invoke-direct {p1, p0, v0}, Lcom/anythink/expressad/foundation/webview/BrowserView;-><init>(Landroid/content/Context;Lcom/anythink/expressad/foundation/d/c;)V

    iput-object p1, p0, Lcom/anythink/expressad/activity/DomainATCommonActivity;->d:Lcom/anythink/expressad/foundation/webview/BrowserView;

    iget-object v0, p0, Lcom/anythink/expressad/activity/DomainATCommonActivity;->e:Lcom/anythink/expressad/foundation/webview/BrowserView$a;

    invoke-virtual {p1, v0}, Lcom/anythink/expressad/foundation/webview/BrowserView;->setListener(Lcom/anythink/expressad/foundation/webview/BrowserView$a;)V

    iget-object p1, p0, Lcom/anythink/expressad/activity/DomainATCommonActivity;->d:Lcom/anythink/expressad/foundation/webview/BrowserView;

    iget-object v0, p0, Lcom/anythink/expressad/activity/DomainATCommonActivity;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/anythink/expressad/foundation/webview/BrowserView;->loadUrl(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/anythink/expressad/activity/DomainATCommonActivity;->d:Lcom/anythink/expressad/foundation/webview/BrowserView;

    if-eqz p1, :cond_2

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    return-void

    :cond_1
    const/4 p1, 0x0

    const-string v0, "Error: no data"

    invoke-static {p0, v0, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_2
    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lcom/anythink/expressad/activity/DomainATCommonActivity;->d:Lcom/anythink/expressad/foundation/webview/BrowserView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/webview/BrowserView;->destroy()V

    :cond_0
    return-void
.end method
