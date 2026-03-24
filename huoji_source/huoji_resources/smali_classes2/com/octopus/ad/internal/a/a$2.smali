.class public Lcom/octopus/ad/internal/a/a$2;
.super Landroid/webkit/WebViewClient;
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
.field public final synthetic a:Lcom/octopus/ad/internal/a/a;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/internal/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/internal/a/a$2;->a:Lcom/octopus/ad/internal/a/a;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/webkit/CookieSyncManager;->sync()V

    :cond_0
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    sget-object p1, Lcom/octopus/ad/internal/utilities/HaoboLog;->browserLogTag:Ljava/lang/String;

    sget v0, Lcom/octopus/ad/R$string;->opening_url:I

    invoke-static {v0, p2}, Lcom/octopus/ad/internal/utilities/HaoboLog;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/octopus/ad/internal/utilities/HaoboLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "http"

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object p1, p0, Lcom/octopus/ad/internal/a/a$2;->a:Lcom/octopus/ad/internal/a/a;

    invoke-static {p1, p2}, Lcom/octopus/ad/internal/a/a;->a(Lcom/octopus/ad/internal/a/a;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method
