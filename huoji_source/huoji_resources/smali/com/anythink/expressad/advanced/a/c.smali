.class public Lcom/anythink/expressad/advanced/a/c;
.super Landroid/content/BroadcastReceiver;
.source ""


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/webkit/WebView;

.field private c:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/anythink/expressad/advanced/a/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/anythink/expressad/advanced/a/c;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/webkit/WebView;)V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p1, p0, Lcom/anythink/expressad/advanced/a/c;->b:Landroid/webkit/WebView;

    return-void
.end method

.method private static a(Landroid/webkit/WebView;I)V
    .locals 2

    if-eqz p0, :cond_0

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "netstat"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-static {}, Lcom/anythink/expressad/atsignalcommon/windvane/j;->a()Lcom/anythink/expressad/atsignalcommon/windvane/j;

    const-string p1, "onNetstatChanged"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/anythink/expressad/atsignalcommon/windvane/j;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anythink/expressad/advanced/a/c;->b:Landroid/webkit/WebView;

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    :try_start_0
    const-string p2, "connectivity"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/ConnectivityManager;

    const/4 v0, 0x0

    if-nez p2, :cond_0

    iget-object p1, p0, Lcom/anythink/expressad/advanced/a/c;->b:Landroid/webkit/WebView;

    invoke-static {p1, v0}, Lcom/anythink/expressad/advanced/a/c;->a(Landroid/webkit/WebView;I)V

    return-void

    :cond_0
    sget-boolean v1, Lcom/anythink/expressad/foundation/g/a;->bW:Z

    if-eqz v1, :cond_6

    invoke-virtual {p2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p2

    if-nez p2, :cond_1

    iget-object p1, p0, Lcom/anythink/expressad/advanced/a/c;->b:Landroid/webkit/WebView;

    invoke-static {p1, v0}, Lcom/anythink/expressad/advanced/a/c;->a(Landroid/webkit/WebView;I)V

    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v1

    sget-object v2, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-eq v1, v2, :cond_5

    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v1

    sget-object v2, Landroid/net/NetworkInfo$State;->DISCONNECTING:Landroid/net/NetworkInfo$State;

    if-ne v1, v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getType()I

    move-result p2

    const/4 v1, 0x1

    if-ne p2, v1, :cond_3

    iget-object p1, p0, Lcom/anythink/expressad/advanced/a/c;->b:Landroid/webkit/WebView;

    const/16 p2, 0x9

    invoke-static {p1, p2}, Lcom/anythink/expressad/advanced/a/c;->a(Landroid/webkit/WebView;I)V

    return-void

    :cond_3
    const-string p2, "phone"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/anythink/expressad/advanced/a/c;->b:Landroid/webkit/WebView;

    invoke-static {p1, v0}, Lcom/anythink/expressad/advanced/a/c;->a(Landroid/webkit/WebView;I)V

    return-void

    :cond_4
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result p1

    iput p1, p0, Lcom/anythink/expressad/advanced/a/c;->c:I

    invoke-static {p1}, Lcom/anythink/expressad/foundation/h/k;->a(I)I

    move-result p1

    iput p1, p0, Lcom/anythink/expressad/advanced/a/c;->c:I

    iget-object p2, p0, Lcom/anythink/expressad/advanced/a/c;->b:Landroid/webkit/WebView;

    invoke-static {p2, p1}, Lcom/anythink/expressad/advanced/a/c;->a(Landroid/webkit/WebView;I)V

    :cond_5
    :goto_0
    return-void

    :cond_6
    iget-object p1, p0, Lcom/anythink/expressad/advanced/a/c;->b:Landroid/webkit/WebView;

    invoke-static {p1, v0}, Lcom/anythink/expressad/advanced/a/c;->a(Landroid/webkit/WebView;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    return-void
.end method
