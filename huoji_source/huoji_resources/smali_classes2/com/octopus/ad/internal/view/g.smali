.class public Lcom/octopus/ad/internal/view/g;
.super Ljava/lang/Object;
.source ""


# direct methods
.method private static a(Landroid/webkit/WebView;Landroid/net/Uri;)V
    .locals 6

    const-string v0, "cb"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/octopus/ad/internal/utilities/DeviceInfo;->getInstance()Lcom/octopus/ad/internal/utilities/DeviceInfo;

    move-result-object v0

    new-instance v1, Lcom/octopus/ad/b/d$a$a;

    invoke-direct {v1}, Lcom/octopus/ad/b/d$a$a;-><init>()V

    iget-object v2, v0, Lcom/octopus/ad/internal/utilities/DeviceInfo;->sdkUID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/octopus/ad/b/d$a$a;->a(Ljava/lang/String;)Lcom/octopus/ad/b/d$a$a;

    move-result-object v1

    sget-object v2, Lcom/octopus/ad/internal/utilities/DeviceInfo;->density:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/octopus/ad/b/d$a$a;->k(Ljava/lang/String;)Lcom/octopus/ad/b/d$a$a;

    move-result-object v1

    sget-object v2, Lcom/octopus/ad/internal/utilities/DeviceInfo;->densityDpi:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/octopus/ad/b/d$a$a;->l(Ljava/lang/String;)Lcom/octopus/ad/b/d$a$a;

    move-result-object v1

    invoke-static {}, Lcom/octopus/ad/internal/m;->a()Lcom/octopus/ad/internal/m;

    move-result-object v2

    iget-object v2, v2, Lcom/octopus/ad/internal/m;->h:Landroid/content/Context;

    invoke-static {v2}, Lcom/octopus/ad/utils/a/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/octopus/ad/b/d$a$a;->b(Ljava/lang/String;)Lcom/octopus/ad/b/d$a$a;

    move-result-object v1

    invoke-static {}, Lcom/octopus/ad/internal/m;->a()Lcom/octopus/ad/internal/m;

    move-result-object v2

    invoke-virtual {v2}, Lcom/octopus/ad/internal/m;->g()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/octopus/ad/utils/a/b;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/octopus/ad/b/d$a$a;->m(Ljava/lang/String;)Lcom/octopus/ad/b/d$a$a;

    move-result-object v1

    invoke-static {}, Lcom/octopus/ad/internal/m;->a()Lcom/octopus/ad/internal/m;

    move-result-object v2

    iget-object v2, v2, Lcom/octopus/ad/internal/m;->h:Landroid/content/Context;

    invoke-static {v2}, Lcom/octopus/ad/utils/b/g;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/octopus/ad/b/d$a$a;->o(Ljava/lang/String;)Lcom/octopus/ad/b/d$a$a;

    move-result-object v1

    invoke-static {}, Lcom/octopus/ad/internal/m;->a()Lcom/octopus/ad/internal/m;

    move-result-object v2

    iget-object v2, v2, Lcom/octopus/ad/internal/m;->h:Landroid/content/Context;

    invoke-static {v2}, Lcom/octopus/ad/utils/b/g;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/octopus/ad/b/d$a$a;->p(Ljava/lang/String;)Lcom/octopus/ad/b/d$a$a;

    move-result-object v1

    iget-object v2, v0, Lcom/octopus/ad/internal/utilities/DeviceInfo;->bootMark:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/octopus/ad/b/d$a$a;->q(Ljava/lang/String;)Lcom/octopus/ad/b/d$a$a;

    move-result-object v1

    iget-object v2, v0, Lcom/octopus/ad/internal/utilities/DeviceInfo;->updateMark:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/octopus/ad/b/d$a$a;->r(Ljava/lang/String;)Lcom/octopus/ad/b/d$a$a;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/octopus/ad/b/d$a$a;->c(Ljava/lang/String;)Lcom/octopus/ad/b/d$a$a;

    move-result-object v1

    iget-object v2, v0, Lcom/octopus/ad/internal/utilities/DeviceInfo;->os:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/octopus/ad/b/d$a$a;->d(Ljava/lang/String;)Lcom/octopus/ad/b/d$a$a;

    move-result-object v1

    sget-object v2, Lcom/octopus/ad/b/e$e;->c:Lcom/octopus/ad/b/e$e;

    invoke-virtual {v1, v2}, Lcom/octopus/ad/b/d$a$a;->a(Lcom/octopus/ad/b/e$e;)Lcom/octopus/ad/b/d$a$a;

    move-result-object v1

    iget-object v2, v0, Lcom/octopus/ad/internal/utilities/DeviceInfo;->devType:Lcom/octopus/ad/b/e$b;

    invoke-virtual {v1, v2}, Lcom/octopus/ad/b/d$a$a;->a(Lcom/octopus/ad/b/e$b;)Lcom/octopus/ad/b/d$a$a;

    move-result-object v1

    iget-object v2, v0, Lcom/octopus/ad/internal/utilities/DeviceInfo;->brand:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/octopus/ad/b/d$a$a;->e(Ljava/lang/String;)Lcom/octopus/ad/b/d$a$a;

    move-result-object v1

    iget-object v2, v0, Lcom/octopus/ad/internal/utilities/DeviceInfo;->model:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/octopus/ad/b/d$a$a;->f(Ljava/lang/String;)Lcom/octopus/ad/b/d$a$a;

    move-result-object v1

    iget-object v2, v0, Lcom/octopus/ad/internal/utilities/DeviceInfo;->manufacturer:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/octopus/ad/b/d$a$a;->g(Ljava/lang/String;)Lcom/octopus/ad/b/d$a$a;

    move-result-object v1

    iget-object v2, v0, Lcom/octopus/ad/internal/utilities/DeviceInfo;->resolution:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/octopus/ad/b/d$a$a;->h(Ljava/lang/String;)Lcom/octopus/ad/b/d$a$a;

    move-result-object v1

    iget-object v2, v0, Lcom/octopus/ad/internal/utilities/DeviceInfo;->screenSize:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/octopus/ad/b/d$a$a;->i(Ljava/lang/String;)Lcom/octopus/ad/b/d$a$a;

    move-result-object v1

    iget-object v2, v0, Lcom/octopus/ad/internal/utilities/DeviceInfo;->language:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/octopus/ad/b/d$a$a;->j(Ljava/lang/String;)Lcom/octopus/ad/b/d$a$a;

    move-result-object v1

    iget-object v2, v0, Lcom/octopus/ad/internal/utilities/DeviceInfo;->root:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/octopus/ad/b/d$a$a;->n(Ljava/lang/String;)Lcom/octopus/ad/b/d$a$a;

    move-result-object v1

    iget-object v2, v0, Lcom/octopus/ad/internal/utilities/DeviceInfo;->agVercode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/octopus/ad/b/d$a$a;->s(Ljava/lang/String;)Lcom/octopus/ad/b/d$a$a;

    move-result-object v1

    iget-object v2, v0, Lcom/octopus/ad/internal/utilities/DeviceInfo;->hmsVercode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/octopus/ad/b/d$a$a;->t(Ljava/lang/String;)Lcom/octopus/ad/b/d$a$a;

    move-result-object v1

    iget-boolean v2, v0, Lcom/octopus/ad/internal/utilities/DeviceInfo;->wxInstalled:Z

    invoke-virtual {v1, v2}, Lcom/octopus/ad/b/d$a$a;->a(Z)Lcom/octopus/ad/b/d$a$a;

    move-result-object v1

    sget-object v2, Lcom/octopus/ad/internal/utilities/DeviceInfo;->physicalMemoryByte:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/octopus/ad/b/d$a$a;->u(Ljava/lang/String;)Lcom/octopus/ad/b/d$a$a;

    move-result-object v1

    sget-object v2, Lcom/octopus/ad/internal/utilities/DeviceInfo;->harddiskSizeByte:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/octopus/ad/b/d$a$a;->v(Ljava/lang/String;)Lcom/octopus/ad/b/d$a$a;

    move-result-object v1

    iget-object v0, v0, Lcom/octopus/ad/internal/utilities/DeviceInfo;->appList:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/octopus/ad/b/d$a$a;->w(Ljava/lang/String;)Lcom/octopus/ad/b/d$a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/octopus/ad/b/d$a$a;->a()Lcom/octopus/ad/b/d$a;

    move-result-object v0

    invoke-static {}, Lcom/octopus/ad/internal/utilities/UserEnvInfo;->getInstance()Lcom/octopus/ad/internal/utilities/UserEnvInfo;

    move-result-object v1

    new-instance v2, Lcom/octopus/ad/b/d$c$a;

    invoke-direct {v2}, Lcom/octopus/ad/b/d$c$a;-><init>()V

    iget-object v3, v1, Lcom/octopus/ad/internal/utilities/UserEnvInfo;->net:Lcom/octopus/ad/b/e$d;

    invoke-virtual {v2, v3}, Lcom/octopus/ad/b/d$c$a;->a(Lcom/octopus/ad/b/e$d;)Lcom/octopus/ad/b/d$c$a;

    move-result-object v2

    iget-object v1, v1, Lcom/octopus/ad/internal/utilities/UserEnvInfo;->isp:Lcom/octopus/ad/b/e$c;

    invoke-virtual {v2, v1}, Lcom/octopus/ad/b/d$c$a;->a(Lcom/octopus/ad/b/e$c;)Lcom/octopus/ad/b/d$c$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/octopus/ad/b/d$c$a;->a()Lcom/octopus/ad/b/d$c;

    move-result-object v1

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    new-instance v3, Landroid/util/Pair;

    const-string v4, "caller"

    const-string v5, "GetDeviceID"

    invoke-direct {v3, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    new-instance v3, Landroid/util/Pair;

    invoke-virtual {v0}, Lcom/octopus/ad/b/d$a;->b()[B

    move-result-object v0

    const/4 v4, 0x0

    invoke-static {v0, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    const-string v5, "deviceInfo"

    invoke-direct {v3, v5, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    new-instance v0, Landroid/util/Pair;

    invoke-virtual {v1}, Lcom/octopus/ad/b/d$c;->b()[B

    move-result-object v1

    invoke-static {v1, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    const-string v3, "userEnvInfo"

    invoke-direct {v0, v3, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-static {p0, p1, v2}, Lcom/octopus/ad/internal/view/g;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method private static a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cb="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "-1"

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/util/Pair;

    iget-object v1, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v1, :cond_1

    iget-object v1, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v1, :cond_1

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, p2

    const-string p2, "javascript:window.sdkjs.client.result(\"%s\")"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x13

    if-lt p2, v0, :cond_3

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    goto :goto_2

    :cond_3
    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method private static a(Lcom/octopus/ad/internal/view/AdWebView;Landroid/net/Uri;)V
    .locals 5

    const-string v0, "cb"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "index"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/octopus/ad/internal/view/AdWebView;->loadAdAt(I)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/octopus/ad/internal/view/AdWebView;->adViewImpl:Lcom/octopus/ad/internal/view/AdViewImpl;

    instance-of v1, p1, Lcom/octopus/ad/internal/view/InterstitialAdViewImpl;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/octopus/ad/internal/view/InterstitialAdViewImpl;

    invoke-virtual {p1}, Lcom/octopus/ad/internal/view/InterstitialAdViewImpl;->getAdImplementation()Lcom/octopus/ad/AdActivity$a;

    move-result-object p1

    check-cast p1, Lcom/octopus/ad/internal/a/b;

    invoke-virtual {p1}, Lcom/octopus/ad/internal/a/b;->g()V

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    new-instance v2, Landroid/util/Pair;

    const-string v3, "caller"

    const-string v4, "GotoPage"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    new-instance v2, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v3, "success"

    invoke-direct {v2, v3, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-static {p0, v0, v1}, Lcom/octopus/ad/internal/view/g;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public static a(Lcom/octopus/ad/internal/view/AdWebView;Ljava/lang/String;)V
    .locals 4

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GotoPage"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p0, v0}, Lcom/octopus/ad/internal/view/g;->a(Lcom/octopus/ad/internal/view/AdWebView;Landroid/net/Uri;)V

    goto/16 :goto_2

    :cond_0
    const-string v2, "SendMsg"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p0, v0}, Lcom/octopus/ad/internal/view/g;->b(Lcom/octopus/ad/internal/view/AdWebView;Landroid/net/Uri;)V

    goto/16 :goto_2

    :cond_1
    const-string v2, "CallNo"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p0, v0}, Lcom/octopus/ad/internal/view/g;->c(Lcom/octopus/ad/internal/view/AdWebView;Landroid/net/Uri;)V

    goto/16 :goto_2

    :cond_2
    const-string v2, "ClosePage"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {p0, v0}, Lcom/octopus/ad/internal/view/g;->d(Lcom/octopus/ad/internal/view/AdWebView;Landroid/net/Uri;)V

    goto/16 :goto_2

    :cond_3
    const-string v2, "GetDeviceID"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :goto_0
    invoke-static {p0, v0}, Lcom/octopus/ad/internal/view/g;->e(Landroid/webkit/WebView;Landroid/net/Uri;)V

    goto/16 :goto_2

    :cond_4
    const-string v3, "Download"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {p0, v0}, Lcom/octopus/ad/internal/view/g;->e(Lcom/octopus/ad/internal/view/AdWebView;Landroid/net/Uri;)V

    goto/16 :goto_2

    :cond_5
    const-string v3, "PingClick"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static {p0, v0}, Lcom/octopus/ad/internal/view/g;->f(Lcom/octopus/ad/internal/view/AdWebView;Landroid/net/Uri;)V

    goto/16 :goto_2

    :cond_6
    const-string v3, "PingConvertion"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-static {p0, v0}, Lcom/octopus/ad/internal/view/g;->g(Lcom/octopus/ad/internal/view/AdWebView;Landroid/net/Uri;)V

    goto/16 :goto_2

    :cond_7
    const-string v3, "GetCommonInfo"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-static {p0, v0}, Lcom/octopus/ad/internal/view/g;->a(Landroid/webkit/WebView;Landroid/net/Uri;)V

    goto/16 :goto_2

    :cond_8
    const-string v3, "MayDeepLink"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-static {p0, v0}, Lcom/octopus/ad/internal/view/g;->b(Landroid/webkit/WebView;Landroid/net/Uri;)V

    goto/16 :goto_2

    :cond_9
    const-string v3, "DeepLink"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-virtual {p0}, Lcom/octopus/ad/internal/view/AdWebView;->getUserInteraction()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-static {p0, v0}, Lcom/octopus/ad/internal/view/g;->c(Landroid/webkit/WebView;Landroid/net/Uri;)V

    goto :goto_2

    :cond_a
    sget-object p0, Lcom/octopus/ad/internal/utilities/HaoboLog;->jsLogTag:Ljava/lang/String;

    sget v0, Lcom/octopus/ad/R$string;->no_user_interaction:I

    invoke-static {v0, p1}, Lcom/octopus/ad/internal/utilities/HaoboLog;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-static {p0, p1}, Lcom/octopus/ad/internal/utilities/HaoboLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_b
    const-string v3, "ExternalBrowser"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-virtual {p0}, Lcom/octopus/ad/internal/view/AdWebView;->getUserInteraction()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-static {p0, v0}, Lcom/octopus/ad/internal/view/g;->d(Landroid/webkit/WebView;Landroid/net/Uri;)V

    goto :goto_2

    :cond_c
    const-string v3, "InternalBrowser"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-virtual {p0}, Lcom/octopus/ad/internal/view/AdWebView;->getUserInteraction()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-static {p0, v0}, Lcom/octopus/ad/internal/view/g;->h(Lcom/octopus/ad/internal/view/AdWebView;Landroid/net/Uri;)V

    goto :goto_2

    :cond_d
    const-string p1, "RecordEvent"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    invoke-static {p0, v0}, Lcom/octopus/ad/internal/view/g;->i(Lcom/octopus/ad/internal/view/AdWebView;Landroid/net/Uri;)V

    goto :goto_2

    :cond_e
    const-string p1, "DispatchAppEvent"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    invoke-static {p0, v0}, Lcom/octopus/ad/internal/view/g;->j(Lcom/octopus/ad/internal/view/AdWebView;Landroid/net/Uri;)V

    goto :goto_2

    :cond_f
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    goto/16 :goto_0

    :cond_10
    sget-object p0, Lcom/octopus/ad/internal/utilities/HaoboLog;->baseLogTag:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "OctopusSdk called with unsupported function: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :goto_2
    return-void
.end method

.method private static b(Landroid/webkit/WebView;Landroid/net/Uri;)V
    .locals 5

    const-string v0, "cb"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "url"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-eqz v1, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-static {p1}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 p1, 0x10000000

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    const/4 v2, 0x1

    :cond_1
    :goto_0
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    new-instance v1, Landroid/util/Pair;

    const-string v3, "caller"

    const-string v4, "MayDeepLink"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    new-instance v1, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, "mayDeepLink"

    invoke-direct {v1, v3, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-static {p0, v0, p1}, Lcom/octopus/ad/internal/view/g;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method private static b(Lcom/octopus/ad/internal/view/AdWebView;Landroid/net/Uri;)V
    .locals 4

    const-string v0, "cb"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "msg"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    const-string v1, "receiver"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    new-instance v1, Landroid/util/Pair;

    const-string v2, "caller"

    const-string v3, "SendMsg"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    new-instance v1, Landroid/util/Pair;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, "success"

    invoke-direct {v1, v3, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-static {p0, v0, p1}, Lcom/octopus/ad/internal/view/g;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method private static c(Landroid/webkit/WebView;Landroid/net/Uri;)V
    .locals 5

    const-string v0, "cb"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "url"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    new-instance v2, Landroid/util/Pair;

    const-string v3, "caller"

    const-string v4, "DeepLink"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_1

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v2, v3, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 p1, 0x10000000

    invoke-virtual {v2, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-static {p0, v0, v1}, Lcom/octopus/ad/internal/view/g;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/util/List;)V

    :goto_0
    return-void

    :cond_1
    :goto_1
    invoke-static {p0, v0, v1}, Lcom/octopus/ad/internal/view/g;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method private static c(Lcom/octopus/ad/internal/view/AdWebView;Landroid/net/Uri;)V
    .locals 4

    const-string v0, "cb"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "receiver"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    new-instance v1, Landroid/util/Pair;

    const-string v2, "caller"

    const-string v3, "CallNo"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    new-instance v1, Landroid/util/Pair;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, "success"

    invoke-direct {v1, v3, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-static {p0, v0, p1}, Lcom/octopus/ad/internal/view/g;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method private static d(Landroid/webkit/WebView;Landroid/net/Uri;)V
    .locals 2

    const-string v0, "url"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    const-string v0, "http"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object p0

    sget p1, Lcom/octopus/ad/R$string;->action_cant_be_completed:I

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_1
    :goto_0
    return-void
.end method

.method private static d(Lcom/octopus/ad/internal/view/AdWebView;Landroid/net/Uri;)V
    .locals 4

    const-string v0, "cb"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdWebView;->adViewImpl:Lcom/octopus/ad/internal/view/AdViewImpl;

    invoke-virtual {v0}, Lcom/octopus/ad/internal/view/AdViewImpl;->getMyHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/octopus/ad/internal/view/g$1;

    invoke-direct {v1, p0}, Lcom/octopus/ad/internal/view/g$1;-><init>(Lcom/octopus/ad/internal/view/AdWebView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    new-instance v1, Landroid/util/Pair;

    const-string v2, "caller"

    const-string v3, "ClosePage"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    new-instance v1, Landroid/util/Pair;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, "success"

    invoke-direct {v1, v3, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-static {p0, p1, v0}, Lcom/octopus/ad/internal/view/g;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method private static e(Landroid/webkit/WebView;Landroid/net/Uri;)V
    .locals 4

    const-string v0, "cb"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    new-instance v1, Landroid/util/Pair;

    const-string v2, "caller"

    const-string v3, "GetDeviceID"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    new-instance v1, Landroid/util/Pair;

    const-string v2, "idname"

    const-string v3, "imei"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-static {p0, p1, v0}, Lcom/octopus/ad/internal/view/g;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method private static e(Lcom/octopus/ad/internal/view/AdWebView;Landroid/net/Uri;)V
    .locals 4

    const-string v0, "url"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "cb"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/octopus/ad/R$string;->action_cant_be_completed:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    :goto_0
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    new-instance v1, Landroid/util/Pair;

    const-string v2, "caller"

    const-string v3, "Download"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    new-instance v1, Landroid/util/Pair;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, "success"

    invoke-direct {v1, v3, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-static {p0, p1, v0}, Lcom/octopus/ad/internal/view/g;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method private static f(Lcom/octopus/ad/internal/view/AdWebView;Landroid/net/Uri;)V
    .locals 4

    const-string v0, "url"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "cb"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/octopus/ad/internal/view/AdWebView;->adViewImpl:Lcom/octopus/ad/internal/view/AdViewImpl;

    invoke-virtual {v1, v0}, Lcom/octopus/ad/internal/view/AdViewImpl;->pingClick(Ljava/lang/String;)V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    new-instance v1, Landroid/util/Pair;

    const-string v2, "caller"

    const-string v3, "PingClick"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    new-instance v1, Landroid/util/Pair;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, "success"

    invoke-direct {v1, v3, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-static {p0, p1, v0}, Lcom/octopus/ad/internal/view/g;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method private static g(Lcom/octopus/ad/internal/view/AdWebView;Landroid/net/Uri;)V
    .locals 4

    const-string v0, "url"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "cb"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/octopus/ad/internal/view/AdWebView;->adViewImpl:Lcom/octopus/ad/internal/view/AdViewImpl;

    invoke-virtual {v1, v0}, Lcom/octopus/ad/internal/view/AdViewImpl;->pingConvert(Ljava/lang/String;)V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    new-instance v1, Landroid/util/Pair;

    const-string v2, "caller"

    const-string v3, "PingConvertion"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    new-instance v1, Landroid/util/Pair;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, "success"

    invoke-direct {v1, v3, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-static {p0, p1, v0}, Lcom/octopus/ad/internal/view/g;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method private static h(Lcom/octopus/ad/internal/view/AdWebView;Landroid/net/Uri;)V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    const-string v0, "url"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    const-string v0, "http"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/octopus/ad/AdActivity;->a()Ljava/lang/Class;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "ACTIVITY_TYPE"

    const-string v3, "BROWSER"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v2, Landroid/webkit/WebView;

    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-static {v2}, Lcom/octopus/ad/internal/utilities/WebviewUtil;->setWebViewSettings(Landroid/webkit/WebView;)V

    sget-object v3, Lcom/octopus/ad/internal/a/a;->a:Ljava/util/LinkedList;

    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/octopus/ad/internal/view/AdWebView;->adViewImpl:Lcom/octopus/ad/internal/view/AdViewImpl;

    invoke-virtual {p1}, Lcom/octopus/ad/internal/view/AdViewImpl;->getBrowserStyle()Lcom/octopus/ad/internal/view/AdViewImpl$c;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "bridgeid"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v2, Lcom/octopus/ad/internal/view/AdViewImpl$c;->a:Ljava/util/ArrayList;

    new-instance v3, Landroid/util/Pair;

    iget-object v4, p0, Lcom/octopus/ad/internal/view/AdWebView;->adViewImpl:Lcom/octopus/ad/internal/view/AdViewImpl;

    invoke-virtual {v4}, Lcom/octopus/ad/internal/view/AdViewImpl;->getBrowserStyle()Lcom/octopus/ad/internal/view/AdViewImpl$c;

    move-result-object v4

    invoke-direct {v3, p1, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object p0

    sget p1, Lcom/octopus/ad/R$string;->action_cant_be_completed:I

    const/4 v1, 0x0

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    sget-object p0, Lcom/octopus/ad/internal/utilities/HaoboLog;->baseLogTag:Ljava/lang/String;

    sget p1, Lcom/octopus/ad/R$string;->adactivity_missing:I

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/octopus/ad/internal/utilities/HaoboLog;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/octopus/ad/internal/utilities/HaoboLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/octopus/ad/internal/a/a;->a:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    :cond_2
    :goto_0
    return-void
.end method

.method private static i(Lcom/octopus/ad/internal/view/AdWebView;Landroid/net/Uri;)V
    .locals 2

    const-string v0, "url"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v0, "http"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/webkit/WebView;

    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/octopus/ad/internal/view/g$2;

    invoke-direct {v1}, Lcom/octopus/ad/internal/view/g$2;-><init>()V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    const/16 p1, 0x8

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setVisibility(I)V

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->addView(Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static j(Lcom/octopus/ad/internal/view/AdWebView;Landroid/net/Uri;)V
    .locals 2

    const-string v0, "event"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "data"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/octopus/ad/internal/view/AdWebView;->adViewImpl:Lcom/octopus/ad/internal/view/AdViewImpl;

    invoke-virtual {p0}, Lcom/octopus/ad/internal/view/AdViewImpl;->getAdDispatcher()Lcom/octopus/ad/internal/b;

    move-result-object p0

    invoke-interface {p0, v0, p1}, Lcom/octopus/ad/internal/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
