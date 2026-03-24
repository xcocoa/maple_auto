.class public Lcom/octopus/ad/internal/view/BannerAdViewImpl$1;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/internal/view/BannerAdViewImpl;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/octopus/ad/internal/view/BannerAdViewImpl;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/internal/view/BannerAdViewImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/internal/view/BannerAdViewImpl$1;->a:Lcom/octopus/ad/internal/view/BannerAdViewImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/octopus/ad/internal/view/BannerAdViewImpl$1;->a:Lcom/octopus/ad/internal/view/BannerAdViewImpl;

    invoke-virtual {p1}, Lcom/octopus/ad/internal/view/BannerAdViewImpl;->h()V

    sget-object p1, Lcom/octopus/ad/internal/utilities/HaoboLog;->baseLogTag:Ljava/lang/String;

    sget p2, Lcom/octopus/ad/R$string;->screen_off_stop:I

    :goto_0
    invoke-static {p2}, Lcom/octopus/ad/internal/utilities/HaoboLog;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/octopus/ad/internal/utilities/HaoboLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.SCREEN_ON"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    iget-object p2, p0, Lcom/octopus/ad/internal/view/BannerAdViewImpl$1;->a:Lcom/octopus/ad/internal/view/BannerAdViewImpl;

    invoke-static {p2}, Lcom/octopus/ad/internal/view/BannerAdViewImpl;->a(Lcom/octopus/ad/internal/view/BannerAdViewImpl;)I

    move-result p2

    const/4 v0, 0x1

    if-lez p2, :cond_1

    :goto_1
    iget-object p1, p0, Lcom/octopus/ad/internal/view/BannerAdViewImpl$1;->a:Lcom/octopus/ad/internal/view/BannerAdViewImpl;

    invoke-virtual {p1}, Lcom/octopus/ad/internal/view/BannerAdViewImpl;->g()V

    const/4 p1, 0x1

    goto :goto_2

    :cond_1
    iget-object p2, p0, Lcom/octopus/ad/internal/view/BannerAdViewImpl$1;->a:Lcom/octopus/ad/internal/view/BannerAdViewImpl;

    invoke-static {p2}, Lcom/octopus/ad/internal/view/BannerAdViewImpl;->b(Lcom/octopus/ad/internal/view/BannerAdViewImpl;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p1, p0, Lcom/octopus/ad/internal/view/BannerAdViewImpl$1;->a:Lcom/octopus/ad/internal/view/BannerAdViewImpl;

    invoke-virtual {p1}, Lcom/octopus/ad/internal/view/BannerAdViewImpl;->h()V

    goto :goto_1

    :cond_2
    :goto_2
    if-eqz p1, :cond_3

    sget-object p1, Lcom/octopus/ad/internal/utilities/HaoboLog;->baseLogTag:Ljava/lang/String;

    sget p2, Lcom/octopus/ad/R$string;->screen_on_start:I

    goto :goto_0

    :cond_3
    :goto_3
    return-void
.end method
