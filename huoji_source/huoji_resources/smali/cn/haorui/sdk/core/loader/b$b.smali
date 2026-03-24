.class public Lcn/haorui/sdk/core/loader/b$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/haorui/sdk/core/loader/b;->loadAd(Lcn/haorui/sdk/core/domain/HRAdInfo;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcn/haorui/sdk/core/domain/HRAdInfo;

.field public final synthetic b:Ljava/util/Map;

.field public final synthetic c:Lcn/haorui/sdk/core/loader/b;


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/core/loader/b;Lcn/haorui/sdk/core/domain/HRAdInfo;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/loader/b$b;->c:Lcn/haorui/sdk/core/loader/b;

    iput-object p2, p0, Lcn/haorui/sdk/core/loader/b$b;->a:Lcn/haorui/sdk/core/domain/HRAdInfo;

    iput-object p3, p0, Lcn/haorui/sdk/core/loader/b$b;->b:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lcn/haorui/sdk/core/loader/b$b;->c:Lcn/haorui/sdk/core/loader/b;

    iget-object v0, v0, Lcn/haorui/sdk/core/loader/b;->posId:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcn/haorui/sdk/core/utils/RecordUtil;->saveAction(Ljava/lang/String;I)V

    iget-object v0, p0, Lcn/haorui/sdk/core/loader/b$b;->a:Lcn/haorui/sdk/core/domain/HRAdInfo;

    invoke-virtual {v0}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getRstUrl()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    array-length v2, v0

    if-lez v2, :cond_0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    iget-object v5, p0, Lcn/haorui/sdk/core/loader/b$b;->c:Lcn/haorui/sdk/core/loader/b;

    invoke-virtual {v5}, Lcn/haorui/sdk/core/loader/b;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v4}, Lcn/haorui/sdk/core/utils/MacroUtil;->replaceExposureMacros(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lcn/haorui/sdk/core/utils/DefaultHttpGetWithNoHandlerCallback;

    invoke-direct {v6}, Lcn/haorui/sdk/core/utils/DefaultHttpGetWithNoHandlerCallback;-><init>()V

    invoke-static {v5, v4, v6}, Lcn/haorui/sdk/core/utils/HttpUtil;->asyncGetWithWebViewUA(Landroid/content/Context;Ljava/lang/String;Lcn/haorui/sdk/core/utils/HttpGetWithStringCallback;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcn/haorui/sdk/core/loader/b$b;->c:Lcn/haorui/sdk/core/loader/b;

    iget-object v2, p0, Lcn/haorui/sdk/core/loader/b$b;->a:Lcn/haorui/sdk/core/domain/HRAdInfo;

    invoke-static {v0, v2}, Lcn/haorui/sdk/core/loader/b;->access$100(Lcn/haorui/sdk/core/loader/b;Lcn/haorui/sdk/core/domain/HRAdInfo;)V

    iget-object v0, p0, Lcn/haorui/sdk/core/loader/b$b;->a:Lcn/haorui/sdk/core/domain/HRAdInfo;

    invoke-virtual {v0}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getMonitorUrl()[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/haorui/sdk/core/loader/b$b;->a:Lcn/haorui/sdk/core/domain/HRAdInfo;

    invoke-virtual {v0}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getMonitorUrl()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcn/haorui/sdk/core/loader/b$b;->c:Lcn/haorui/sdk/core/loader/b;

    const-string v3, "AD_HR"

    invoke-static {v0, v3}, Lcn/haorui/sdk/platform/ADPlatformHelper;->checkTypeSupport(Lcn/haorui/sdk/core/loader/b;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/haorui/sdk/core/loader/b$b;->a:Lcn/haorui/sdk/core/domain/HRAdInfo;

    invoke-virtual {v0, v2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->setHasAdSailAd(Z)V

    iget-object v0, p0, Lcn/haorui/sdk/core/loader/b$b;->c:Lcn/haorui/sdk/core/loader/b;

    iget-object v1, p0, Lcn/haorui/sdk/core/loader/b$b;->a:Lcn/haorui/sdk/core/domain/HRAdInfo;

    invoke-virtual {v1}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getEcpm()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/haorui/sdk/core/loader/b;->access$202(Lcn/haorui/sdk/core/loader/b;Ljava/lang/String;)Ljava/lang/String;

    const/4 v1, 0x1

    :cond_1
    iget-object v0, p0, Lcn/haorui/sdk/core/loader/b$b;->c:Lcn/haorui/sdk/core/loader/b;

    new-instance v2, Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;

    invoke-virtual {v0}, Lcn/haorui/sdk/core/loader/b;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcn/haorui/sdk/core/loader/b$b;->c:Lcn/haorui/sdk/core/loader/b;

    iget-object v5, p0, Lcn/haorui/sdk/core/loader/b$b;->a:Lcn/haorui/sdk/core/domain/HRAdInfo;

    iget-object v6, p0, Lcn/haorui/sdk/core/loader/b$b;->b:Ljava/util/Map;

    invoke-direct {v2, v3, v4, v5, v6}, Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;-><init>(Landroid/content/Context;Lcn/haorui/sdk/core/loader/b;Lcn/haorui/sdk/core/domain/HRAdInfo;Ljava/util/Map;)V

    invoke-static {v0, v2}, Lcn/haorui/sdk/core/loader/b;->access$302(Lcn/haorui/sdk/core/loader/b;Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;)Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcn/haorui/sdk/core/loader/b$b;->a:Lcn/haorui/sdk/core/domain/HRAdInfo;

    invoke-virtual {v0}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getLayout()Lcn/haorui/sdk/core/domain/LayoutBean;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcn/haorui/sdk/core/utils/CacheUtil;->getInstance()Lcn/haorui/sdk/core/utils/CacheUtil;

    move-result-object v0

    iget-object v2, p0, Lcn/haorui/sdk/core/loader/b$b;->c:Lcn/haorui/sdk/core/loader/b;

    iget-object v2, v2, Lcn/haorui/sdk/core/loader/b;->context:Landroid/content/Context;

    iget-object v3, p0, Lcn/haorui/sdk/core/loader/b$b;->a:Lcn/haorui/sdk/core/domain/HRAdInfo;

    invoke-virtual {v3}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getLayout()Lcn/haorui/sdk/core/domain/LayoutBean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcn/haorui/sdk/core/utils/CacheUtil;->putTemplateCache(Landroid/content/Context;Lcn/haorui/sdk/core/domain/LayoutBean;)V

    :cond_2
    iget-object v0, p0, Lcn/haorui/sdk/core/loader/b$b;->c:Lcn/haorui/sdk/core/loader/b;

    iget-object v2, v0, Lcn/haorui/sdk/core/loader/b;->context:Landroid/content/Context;

    iget-object v3, p0, Lcn/haorui/sdk/core/loader/b$b;->a:Lcn/haorui/sdk/core/domain/HRAdInfo;

    invoke-virtual {v0, v2, v3}, Lcn/haorui/sdk/core/loader/b;->createAdDelegate(Landroid/content/Context;Lcn/haorui/sdk/core/domain/HRAdInfo;)Lcn/haorui/sdk/core/loader/d;

    move-result-object v0

    iget-object v2, p0, Lcn/haorui/sdk/core/loader/b$b;->c:Lcn/haorui/sdk/core/loader/b;

    invoke-static {v2}, Lcn/haorui/sdk/core/loader/b;->access$300(Lcn/haorui/sdk/core/loader/b;)Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;->setAdDelegate(Lcn/haorui/sdk/core/loader/d;)V

    :cond_3
    iget-object v0, p0, Lcn/haorui/sdk/core/loader/b$b;->c:Lcn/haorui/sdk/core/loader/b;

    if-eqz v1, :cond_4

    invoke-static {v0}, Lcn/haorui/sdk/core/loader/b;->access$300(Lcn/haorui/sdk/core/loader/b;)Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;->loadMeshuAd()V

    goto :goto_1

    :cond_4
    const-string v1, "\u52a0\u8f7d\u5e73\u53f0\u4e3a\u7a7a"

    invoke-virtual {v0, v1}, Lcn/haorui/sdk/core/loader/b;->handleNoAd(Ljava/lang/String;)V

    :goto_1
    return-void
.end method
