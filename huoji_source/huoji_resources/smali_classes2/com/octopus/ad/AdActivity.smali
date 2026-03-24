.class public Lcom/octopus/ad/AdActivity;
.super Landroid/app/Activity;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/octopus/ad/AdActivity$b;,
        Lcom/octopus/ad/AdActivity$a;
    }
.end annotation


# static fields
.field public static a:Z

.field public static b:Ljava/lang/Class;


# instance fields
.field private c:Lcom/octopus/ad/AdActivity$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/octopus/ad/AdActivity;

    sput-object v0, Lcom/octopus/ad/AdActivity;->b:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static a()Ljava/lang/Class;
    .locals 1

    sget-object v0, Lcom/octopus/ad/AdActivity;->b:Ljava/lang/Class;

    return-object v0
.end method

.method public static a(Landroid/app/Activity;)V
    .locals 1

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-static {p0, v0}, Lcom/octopus/ad/AdActivity;->b(Landroid/app/Activity;I)V

    return-void
.end method

.method public static a(Landroid/app/Activity;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/octopus/ad/AdActivity;->b(Landroid/app/Activity;I)V

    return-void
.end method

.method public static a(Landroid/app/Activity;Lcom/octopus/ad/AdActivity$b;)V
    .locals 3

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    sget-object v1, Lcom/octopus/ad/AdActivity$2;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    :goto_0
    invoke-static {p0, v0}, Lcom/octopus/ad/AdActivity;->b(Landroid/app/Activity;I)V

    return-void

    :cond_2
    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    return-void
.end method

.method public static b(Landroid/app/Activity;)V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    return-void
.end method

.method private static b(Landroid/app/Activity;I)V
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    invoke-static {}, Lcom/octopus/ad/internal/utilities/DeviceInfo;->getInstance()Lcom/octopus/ad/internal/utilities/DeviceInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/octopus/ad/internal/utilities/DeviceInfo;->model:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/octopus/ad/internal/utilities/DeviceInfo;->getInstance()Lcom/octopus/ad/internal/utilities/DeviceInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/octopus/ad/internal/utilities/DeviceInfo;->brand:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "AMAZON"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    const-string v1, "KFTT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "KFJWI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "KFJWA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const-string v1, "window"

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    const/4 v4, 0x2

    if-ne p1, v3, :cond_4

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result p1

    if-eq p1, v3, :cond_3

    if-ne p1, v4, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v3}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_2

    :cond_3
    :goto_1
    const/16 p1, 0x9

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_2

    :cond_4
    if-ne p1, v4, :cond_8

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result p1

    const/16 v1, 0x8

    if-nez v0, :cond_6

    if-eqz p1, :cond_5

    if-ne p1, v3, :cond_7

    :cond_5
    invoke-virtual {p0, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_2

    :cond_6
    if-eqz p1, :cond_7

    if-ne p1, v3, :cond_5

    :cond_7
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_8
    :goto_2
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/AdActivity;->c:Lcom/octopus/ad/AdActivity$a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/octopus/ad/AdActivity$a;->b()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "ACTIVITY_TYPE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lcom/octopus/ad/internal/utilities/HaoboLog;->baseLogTag:Ljava/lang/String;

    sget v0, Lcom/octopus/ad/R$string;->adactivity_no_type:I

    invoke-static {v0}, Lcom/octopus/ad/internal/utilities/HaoboLog;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/octopus/ad/internal/utilities/HaoboLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_1

    :cond_0
    const-string v0, "INTERSTITIAL"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance p1, Lcom/octopus/ad/internal/a/b;

    invoke-direct {p1, p0}, Lcom/octopus/ad/internal/a/b;-><init>(Landroid/app/Activity;)V

    :goto_0
    iput-object p1, p0, Lcom/octopus/ad/AdActivity;->c:Lcom/octopus/ad/AdActivity$a;

    invoke-interface {p1}, Lcom/octopus/ad/AdActivity$a;->a()V

    goto :goto_1

    :cond_1
    const-string v0, "BROWSER"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance p1, Lcom/octopus/ad/internal/a/a;

    invoke-direct {p1, p0}, Lcom/octopus/ad/internal/a/a;-><init>(Landroid/app/Activity;)V

    goto :goto_0

    :cond_2
    const-string v0, "MRAID"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance p1, Lcom/octopus/ad/internal/a/c;

    invoke-direct {p1, p0}, Lcom/octopus/ad/internal/a/c;-><init>(Landroid/app/Activity;)V

    goto :goto_0

    :cond_3
    const-string v0, "DOWNLOADBROWSER"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    new-instance p1, Lcom/octopus/ad/internal/a/a;

    invoke-direct {p1, p0}, Lcom/octopus/ad/internal/a/a;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/octopus/ad/AdActivity;->c:Lcom/octopus/ad/AdActivity$a;

    invoke-interface {p1}, Lcom/octopus/ad/AdActivity$a;->a()V

    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/octopus/ad/AdActivity$1;

    invoke-direct {v0, p0}, Lcom/octopus/ad/AdActivity$1;-><init>(Lcom/octopus/ad/AdActivity;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :cond_4
    :goto_1
    invoke-static {p0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/webkit/CookieSyncManager;->startSync()V

    :cond_5
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/AdActivity;->c:Lcom/octopus/ad/AdActivity$a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/octopus/ad/AdActivity$a;->c()V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/AdActivity;->c:Lcom/octopus/ad/AdActivity$a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/octopus/ad/AdActivity$a;->f()Landroid/webkit/WebView;

    move-result-object v0

    invoke-static {v0}, Lcom/octopus/ad/internal/utilities/WebviewUtil;->onPause(Landroid/webkit/WebView;)V

    :cond_0
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->stopSync()V

    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/AdActivity;->c:Lcom/octopus/ad/AdActivity$a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/octopus/ad/AdActivity$a;->f()Landroid/webkit/WebView;

    move-result-object v0

    invoke-static {v0}, Lcom/octopus/ad/internal/utilities/WebviewUtil;->onResume(Landroid/webkit/WebView;)V

    :cond_0
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->startSync()V

    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method
