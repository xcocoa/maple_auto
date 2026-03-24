.class public Lcn/haorui/sdk/core/loader/strategy/c$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcn/haorui/sdk/core/loader/concurrent/IConCurrentLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/haorui/sdk/core/loader/strategy/c;->a(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcn/haorui/sdk/core/loader/d;

.field public final synthetic b:Lcn/haorui/sdk/core/loader/loadbean/a;

.field public final synthetic c:Lcn/haorui/sdk/core/loader/strategy/c;


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/core/loader/strategy/c;Lcn/haorui/sdk/core/loader/d;Lcn/haorui/sdk/core/loader/loadbean/a;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/loader/strategy/c$a;->c:Lcn/haorui/sdk/core/loader/strategy/c;

    iput-object p2, p0, Lcn/haorui/sdk/core/loader/strategy/c$a;->a:Lcn/haorui/sdk/core/loader/d;

    iput-object p3, p0, Lcn/haorui/sdk/core/loader/strategy/c$a;->b:Lcn/haorui/sdk/core/loader/loadbean/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdError(Lcn/haorui/sdk/core/loader/AdPlatformError;I)V
    .locals 1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onAdError: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcn/haorui/sdk/core/loader/AdPlatformError;->getPlatform()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcn/haorui/sdk/core/loader/AdPlatformError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "PriceFirstStrategy"

    invoke-static {v0, p2}, Lcn/haorui/sdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcn/haorui/sdk/core/loader/strategy/c$a;->c:Lcn/haorui/sdk/core/loader/strategy/c;

    iget-object v0, p0, Lcn/haorui/sdk/core/loader/strategy/c$a;->b:Lcn/haorui/sdk/core/loader/loadbean/a;

    invoke-virtual {p2, v0, p1}, Lcn/haorui/sdk/core/loader/strategy/c;->a(Lcn/haorui/sdk/core/loader/loadbean/a;Lcn/haorui/sdk/core/loader/AdPlatformError;)V

    return-void
.end method

.method public onAdLoaded(Ljava/lang/Object;I)V
    .locals 8

    iget-object p2, p0, Lcn/haorui/sdk/core/loader/strategy/c$a;->c:Lcn/haorui/sdk/core/loader/strategy/c;

    iget-object v0, p0, Lcn/haorui/sdk/core/loader/strategy/c$a;->a:Lcn/haorui/sdk/core/loader/d;

    iget-object v1, p0, Lcn/haorui/sdk/core/loader/strategy/c$a;->b:Lcn/haorui/sdk/core/loader/loadbean/a;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v1, Lcn/haorui/sdk/core/loader/loadbean/a;->a:Lcn/haorui/sdk/core/domain/SdkAdInfo;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcn/haorui/sdk/core/domain/SdkAdInfo;->setLoadedTime(J)V

    iget-object v2, v1, Lcn/haorui/sdk/core/loader/loadbean/a;->a:Lcn/haorui/sdk/core/domain/SdkAdInfo;

    invoke-virtual {v2}, Lcn/haorui/sdk/core/domain/SdkAdInfo;->replace()V

    iput-object p1, v1, Lcn/haorui/sdk/core/loader/loadbean/a;->b:Ljava/lang/Object;

    iget-object p1, v1, Lcn/haorui/sdk/core/loader/loadbean/a;->a:Lcn/haorui/sdk/core/domain/SdkAdInfo;

    invoke-virtual {p1}, Lcn/haorui/sdk/core/domain/SdkAdInfo;->getOtype()Ljava/lang/String;

    move-result-object p1

    const-string v2, "bidding"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p2, v1}, Lcn/haorui/sdk/core/loader/strategy/c;->a(Lcn/haorui/sdk/core/loader/loadbean/a;)Z

    move-result p1

    if-nez p1, :cond_0

    iget p1, v1, Lcn/haorui/sdk/core/loader/loadbean/a;->e:I

    iget-object v2, v1, Lcn/haorui/sdk/core/loader/loadbean/a;->a:Lcn/haorui/sdk/core/domain/SdkAdInfo;

    invoke-virtual {v2}, Lcn/haorui/sdk/core/domain/SdkAdInfo;->getEcpm()I

    move-result v2

    add-int/2addr p1, v2

    iput p1, v1, Lcn/haorui/sdk/core/loader/loadbean/a;->f:I

    goto :goto_0

    :cond_0
    iget-object p1, p2, Lcn/haorui/sdk/core/loader/strategy/c;->f:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p2}, Lcn/haorui/sdk/core/loader/strategy/c;->g()V

    const/4 p1, 0x3

    monitor-enter v1

    :try_start_0
    iput p1, v1, Lcn/haorui/sdk/core/loader/loadbean/a;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    invoke-virtual {p2}, Lcn/haorui/sdk/core/loader/strategy/c;->e()Z

    move-result p1

    if-eqz p1, :cond_b

    goto/16 :goto_6

    :catchall_0
    move-exception p1

    monitor-exit v1

    throw p1

    :cond_1
    :goto_0
    iget-boolean p1, p2, Lcn/haorui/sdk/core/loader/strategy/c;->h:Z

    const/4 v2, 0x4

    const/4 v3, 0x2

    if-eqz p1, :cond_5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v6, p2, Lcn/haorui/sdk/core/loader/strategy/c;->k:J

    sub-long/2addr v4, v6

    iget-wide v6, p2, Lcn/haorui/sdk/core/loader/strategy/c;->p:J

    cmp-long p1, v4, v6

    if-lez p1, :cond_3

    const/4 p1, 0x1

    iput-boolean p1, p2, Lcn/haorui/sdk/core/loader/strategy/c;->u:Z

    iget p1, v1, Lcn/haorui/sdk/core/loader/loadbean/a;->d:I

    if-ne p1, v3, :cond_2

    const/16 p1, 0xa

    goto :goto_1

    :cond_2
    const/16 p1, 0x8

    :goto_1
    iput p1, v1, Lcn/haorui/sdk/core/loader/loadbean/a;->d:I

    iget-object p1, v1, Lcn/haorui/sdk/core/loader/loadbean/a;->a:Lcn/haorui/sdk/core/domain/SdkAdInfo;

    if-eqz p1, :cond_5

    iget-object p1, p2, Lcn/haorui/sdk/core/loader/strategy/c;->f:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object p1, v1, Lcn/haorui/sdk/core/loader/loadbean/a;->a:Lcn/haorui/sdk/core/domain/SdkAdInfo;

    invoke-virtual {p1}, Lcn/haorui/sdk/core/domain/SdkAdInfo;->getErr()Ljava/lang/String;

    move-result-object p1

    const-string v4, "__MS_ERRNO__"

    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "__MS_ERRNO__"

    const-string v5, "1025"

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, v1, Lcn/haorui/sdk/core/loader/loadbean/a;->d:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "__TIMEOUT__"

    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    iget-object v4, v1, Lcn/haorui/sdk/core/loader/loadbean/a;->a:Lcn/haorui/sdk/core/domain/SdkAdInfo;

    invoke-virtual {v4, p1}, Lcn/haorui/sdk/core/domain/SdkAdInfo;->setErr(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, p2, Lcn/haorui/sdk/core/loader/strategy/c;->a:Lcn/haorui/sdk/core/loader/b;

    invoke-virtual {v4}, Lcn/haorui/sdk/core/loader/b;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {p1}, Lcn/haorui/sdk/core/utils/MacroUtil;->replaceExposureMacros(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v5, Lcn/haorui/sdk/core/utils/DefaultHttpGetWithNoHandlerCallback;

    invoke-direct {v5}, Lcn/haorui/sdk/core/utils/DefaultHttpGetWithNoHandlerCallback;-><init>()V

    invoke-static {v4, p1, v5}, Lcn/haorui/sdk/core/utils/HttpUtil;->asyncGetWithWebViewUA(Landroid/content/Context;Ljava/lang/String;Lcn/haorui/sdk/core/utils/HttpGetWithStringCallback;)V

    goto :goto_3

    :cond_3
    iget p1, v1, Lcn/haorui/sdk/core/loader/loadbean/a;->d:I

    if-ne p1, v3, :cond_4

    const/4 p1, 0x6

    goto :goto_2

    :cond_4
    const/4 p1, 0x4

    :goto_2
    iput p1, v1, Lcn/haorui/sdk/core/loader/loadbean/a;->d:I

    :cond_5
    :goto_3
    iget-boolean p1, p2, Lcn/haorui/sdk/core/loader/strategy/c;->u:Z

    if-nez p1, :cond_7

    iget-boolean p1, p2, Lcn/haorui/sdk/core/loader/strategy/c;->h:Z

    if-nez p1, :cond_6

    invoke-interface {v0}, Lcn/haorui/sdk/core/loader/IAdLoader;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, v1, Lcn/haorui/sdk/core/loader/loadbean/a;->a:Lcn/haorui/sdk/core/domain/SdkAdInfo;

    invoke-virtual {v0}, Lcn/haorui/sdk/core/domain/SdkAdInfo;->getRsp()Ljava/lang/String;

    move-result-object v0

    iget v4, v1, Lcn/haorui/sdk/core/loader/loadbean/a;->d:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "__TIMEOUT__"

    invoke-virtual {v0, v5, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/haorui/sdk/core/utils/MacroUtil;->replaceExposureMacros(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Lcn/haorui/sdk/core/utils/DefaultHttpGetWithNoHandlerCallback;

    invoke-direct {v4}, Lcn/haorui/sdk/core/utils/DefaultHttpGetWithNoHandlerCallback;-><init>()V

    invoke-static {p1, v0, v4}, Lcn/haorui/sdk/core/utils/HttpUtil;->asyncGetWithWebViewUA(Landroid/content/Context;Ljava/lang/String;Lcn/haorui/sdk/core/utils/HttpGetWithStringCallback;)V

    iget-object p1, p2, Lcn/haorui/sdk/core/loader/strategy/c;->f:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object p1, p2, Lcn/haorui/sdk/core/loader/strategy/c;->l:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_6
    iget-object p1, v1, Lcn/haorui/sdk/core/loader/loadbean/a;->a:Lcn/haorui/sdk/core/domain/SdkAdInfo;

    if-eqz p1, :cond_7

    iget-object p1, p2, Lcn/haorui/sdk/core/loader/strategy/c;->f:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object p1, v1, Lcn/haorui/sdk/core/loader/loadbean/a;->a:Lcn/haorui/sdk/core/domain/SdkAdInfo;

    invoke-virtual {p1}, Lcn/haorui/sdk/core/domain/SdkAdInfo;->getErr()Ljava/lang/String;

    move-result-object p1

    const-string v0, "__MS_ERRNO__"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "__MS_ERRNO__"

    const-string v4, "1025"

    invoke-virtual {p1, v0, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, v1, Lcn/haorui/sdk/core/loader/loadbean/a;->d:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "__TIMEOUT__"

    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, v1, Lcn/haorui/sdk/core/loader/loadbean/a;->a:Lcn/haorui/sdk/core/domain/SdkAdInfo;

    invoke-virtual {v0, p1}, Lcn/haorui/sdk/core/domain/SdkAdInfo;->setErr(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p2, Lcn/haorui/sdk/core/loader/strategy/c;->a:Lcn/haorui/sdk/core/loader/b;

    invoke-virtual {v0}, Lcn/haorui/sdk/core/loader/b;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1}, Lcn/haorui/sdk/core/utils/MacroUtil;->replaceExposureMacros(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v4, Lcn/haorui/sdk/core/utils/DefaultHttpGetWithNoHandlerCallback;

    invoke-direct {v4}, Lcn/haorui/sdk/core/utils/DefaultHttpGetWithNoHandlerCallback;-><init>()V

    invoke-static {v0, p1, v4}, Lcn/haorui/sdk/core/utils/HttpUtil;->asyncGetWithWebViewUA(Landroid/content/Context;Ljava/lang/String;Lcn/haorui/sdk/core/utils/HttpGetWithStringCallback;)V

    :cond_7
    :goto_4
    iget p1, v1, Lcn/haorui/sdk/core/loader/loadbean/a;->c:I

    if-ne p1, v2, :cond_a

    iget-boolean p1, p2, Lcn/haorui/sdk/core/loader/strategy/c;->h:Z

    if-nez p1, :cond_a

    monitor-enter v1

    :try_start_1
    iput v3, v1, Lcn/haorui/sdk/core/loader/loadbean/a;->c:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v1

    invoke-virtual {p2, v1}, Lcn/haorui/sdk/core/loader/strategy/c;->c(Lcn/haorui/sdk/core/loader/loadbean/a;)Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-virtual {p2, v1}, Lcn/haorui/sdk/core/loader/strategy/c;->b(Lcn/haorui/sdk/core/loader/loadbean/a;)V

    goto :goto_5

    :cond_8
    iget-object p1, p2, Lcn/haorui/sdk/core/loader/strategy/c;->l:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p2, Lcn/haorui/sdk/core/loader/strategy/c;->f:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-boolean p1, p2, Lcn/haorui/sdk/core/loader/strategy/c;->h:Z

    if-eqz p1, :cond_9

    goto :goto_5

    :cond_9
    iget-object p1, p2, Lcn/haorui/sdk/core/loader/strategy/c;->l:Ljava/util/List;

    new-instance v0, Lcn/haorui/sdk/core/loader/strategy/d;

    invoke-direct {v0, p2}, Lcn/haorui/sdk/core/loader/strategy/d;-><init>(Lcn/haorui/sdk/core/loader/strategy/c;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {p2}, Lcn/haorui/sdk/core/loader/strategy/c;->g()V

    goto :goto_5

    :catchall_1
    move-exception p1

    monitor-exit v1

    throw p1

    :cond_a
    :goto_5
    invoke-virtual {p2}, Lcn/haorui/sdk/core/loader/strategy/c;->e()Z

    move-result p1

    if-eqz p1, :cond_b

    :goto_6
    invoke-virtual {p2}, Lcn/haorui/sdk/core/loader/strategy/c;->f()V

    :cond_b
    return-void
.end method

.method public onRenderFail(Ljava/lang/String;II)V
    .locals 4

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onRenderFail :"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "PriceFirstStrategy"

    invoke-static {v0, p3}, Lcn/haorui/sdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p3, p0, Lcn/haorui/sdk/core/loader/strategy/c$a;->c:Lcn/haorui/sdk/core/loader/strategy/c;

    iget-object v0, p0, Lcn/haorui/sdk/core/loader/strategy/c$a;->b:Lcn/haorui/sdk/core/loader/loadbean/a;

    iget-object v1, p3, Lcn/haorui/sdk/core/loader/strategy/c;->f:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcn/haorui/sdk/core/loader/loadbean/a;->a:Lcn/haorui/sdk/core/domain/SdkAdInfo;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcn/haorui/sdk/core/domain/SdkAdInfo;->getErr()Ljava/lang/String;

    move-result-object v1

    const-string v2, "__MS_ERRNO__"

    const-string v3, "1026"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string v2, "__ERROR_CODE__"

    invoke-virtual {v1, v2, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    iget v1, v0, Lcn/haorui/sdk/core/loader/loadbean/a;->d:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "__TIMEOUT__"

    invoke-virtual {p2, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p3, Lcn/haorui/sdk/core/loader/strategy/c;->a:Lcn/haorui/sdk/core/loader/b;

    invoke-virtual {v1}, Lcn/haorui/sdk/core/loader/b;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p2}, Lcn/haorui/sdk/core/utils/MacroUtil;->replaceExposureMacros(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance v2, Lcn/haorui/sdk/core/utils/DefaultHttpGetWithNoHandlerCallback;

    invoke-direct {v2}, Lcn/haorui/sdk/core/utils/DefaultHttpGetWithNoHandlerCallback;-><init>()V

    invoke-static {v1, p2, v2}, Lcn/haorui/sdk/core/utils/HttpUtil;->asyncGetWithWebViewUA(Landroid/content/Context;Ljava/lang/String;Lcn/haorui/sdk/core/utils/HttpGetWithStringCallback;)V

    :cond_0
    iget-boolean p2, p3, Lcn/haorui/sdk/core/loader/strategy/c;->h:Z

    if-eqz p2, :cond_3

    iget-object p2, p3, Lcn/haorui/sdk/core/loader/strategy/c;->n:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_3

    iget-object p2, p3, Lcn/haorui/sdk/core/loader/strategy/c;->n:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcn/haorui/sdk/core/loader/loadbean/a;

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    iget-object p2, p3, Lcn/haorui/sdk/core/loader/strategy/c;->b:Lcn/haorui/sdk/core/domain/HRAdInfo;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getCache()I

    move-result p2

    if-lez p2, :cond_2

    iget-object p2, p3, Lcn/haorui/sdk/core/loader/strategy/c;->b:Lcn/haorui/sdk/core/domain/HRAdInfo;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getCache()I

    move-result p2

    if-lez p2, :cond_3

    iget-boolean p2, p3, Lcn/haorui/sdk/core/loader/strategy/c;->o:Z

    if-nez p2, :cond_3

    :cond_2
    iget-object p2, p3, Lcn/haorui/sdk/core/loader/strategy/c;->i:Lcn/haorui/sdk/core/loader/concurrent/a;

    if-eqz p2, :cond_3

    invoke-interface {p2, p1}, Lcn/haorui/sdk/core/loader/concurrent/a;->onRenderFail(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onRenderSuccess(Ljava/lang/Object;I)V
    .locals 1

    iget-object p1, p0, Lcn/haorui/sdk/core/loader/strategy/c$a;->c:Lcn/haorui/sdk/core/loader/strategy/c;

    iget-object p2, p0, Lcn/haorui/sdk/core/loader/strategy/c$a;->b:Lcn/haorui/sdk/core/loader/loadbean/a;

    iget-object v0, p1, Lcn/haorui/sdk/core/loader/strategy/c;->m:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcn/haorui/sdk/core/loader/strategy/c;->a()V

    return-void
.end method
