.class public final Lcn/haorui/sdk/core/utils/ClickHandler$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/haorui/sdk/core/utils/ClickHandler;->openDeepLink(Landroid/content/Context;Lcn/haorui/sdk/core/ad/AdSlot;Lcn/haorui/sdk/platform/hr/IAdSailAd;Landroid/content/Intent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Lcn/haorui/sdk/core/ad/AdSlot;

.field public final synthetic c:Lcn/haorui/sdk/platform/hr/IAdSailAd;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/haorui/sdk/core/ad/AdSlot;Lcn/haorui/sdk/platform/hr/IAdSailAd;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/utils/ClickHandler$a;->a:Landroid/content/Context;

    iput-object p2, p0, Lcn/haorui/sdk/core/utils/ClickHandler$a;->b:Lcn/haorui/sdk/core/ad/AdSlot;

    iput-object p3, p0, Lcn/haorui/sdk/core/utils/ClickHandler$a;->c:Lcn/haorui/sdk/platform/hr/IAdSailAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-wide/16 v4, 0x1388

    const-string v6, "ClickHandler"

    cmp-long v7, v2, v4

    if-lez v7, :cond_0

    const-string v0, "check self background timeout"

    invoke-static {v6, v0}, Lcn/haorui/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_0
    iget-object v2, p0, Lcn/haorui/sdk/core/utils/ClickHandler$a;->a:Landroid/content/Context;

    invoke-static {v2}, Lcn/haorui/sdk/core/utils/ClickHandler;->access$000(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-wide/16 v0, 0x7d0

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_1
    iget-object v0, p0, Lcn/haorui/sdk/core/utils/ClickHandler$a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcn/haorui/sdk/core/utils/ClickHandler;->access$000(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/haorui/sdk/core/utils/ClickHandler$a;->b:Lcn/haorui/sdk/core/ad/AdSlot;

    invoke-interface {v0}, Lcn/haorui/sdk/core/ad/AdSlot;->getDp_succ()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "send dp_succ"

    invoke-static {v6, v1}, Lcn/haorui/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    array-length v1, v0

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcn/haorui/sdk/core/utils/ClickHandler$a;->a:Landroid/content/Context;

    iget-object v5, p0, Lcn/haorui/sdk/core/utils/ClickHandler$a;->c:Lcn/haorui/sdk/platform/hr/IAdSailAd;

    invoke-static {v3, v5}, Lcn/haorui/sdk/core/utils/ClickHandler;->replaceMacros(Ljava/lang/String;Lcn/haorui/sdk/platform/hr/IAdSailAd;)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcn/haorui/sdk/core/utils/DefaultHttpGetWithNoHandlerCallback;

    invoke-direct {v5}, Lcn/haorui/sdk/core/utils/DefaultHttpGetWithNoHandlerCallback;-><init>()V

    invoke-static {v4, v3, v5}, Lcn/haorui/sdk/core/utils/HttpUtil;->asyncGetWithWebViewUA(Landroid/content/Context;Ljava/lang/String;Lcn/haorui/sdk/core/utils/HttpGetWithStringCallback;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    :goto_3
    return-void

    :cond_3
    const-wide/16 v2, 0x1f4

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
