.class public final Lcom/anythink/core/common/b/q$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/core/common/h/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/common/b/q;->a(Lcom/anythink/core/api/NetTrafficeCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/core/api/NetTrafficeCallback;

.field public final synthetic b:Lcom/anythink/core/common/b/q;


# direct methods
.method public constructor <init>(Lcom/anythink/core/common/b/q;Lcom/anythink/core/api/NetTrafficeCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/core/common/b/q$2;->b:Lcom/anythink/core/common/b/q;

    iput-object p2, p0, Lcom/anythink/core/common/b/q$2;->a:Lcom/anythink/core/api/NetTrafficeCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLoadCanceled(I)V
    .locals 0

    return-void
.end method

.method public final onLoadError(ILjava/lang/String;Lcom/anythink/core/api/AdError;)V
    .locals 0

    iget-object p1, p0, Lcom/anythink/core/common/b/q$2;->a:Lcom/anythink/core/api/NetTrafficeCallback;

    if-eqz p1, :cond_0

    invoke-virtual {p3}, Lcom/anythink/core/api/AdError;->printStackTrace()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/anythink/core/api/NetTrafficeCallback;->onErrorCallback(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final onLoadFinish(ILjava/lang/Object;)V
    .locals 2

    const-string p1, "is_eu"

    :try_start_0
    instance-of v0, p2, Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "There is no result."

    if-nez v0, :cond_1

    :try_start_1
    iget-object p1, p0, Lcom/anythink/core/common/b/q$2;->a:Lcom/anythink/core/api/NetTrafficeCallback;

    if-eqz p1, :cond_0

    invoke-interface {p1, v1}, Lcom/anythink/core/api/NetTrafficeCallback;->onErrorCallback(Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    check-cast p2, Lorg/json/JSONObject;

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object p1, p0, Lcom/anythink/core/common/b/q$2;->a:Lcom/anythink/core/api/NetTrafficeCallback;

    if-eqz p1, :cond_2

    invoke-interface {p1, v1}, Lcom/anythink/core/api/NetTrafficeCallback;->onErrorCallback(Ljava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_4

    iget-object p1, p0, Lcom/anythink/core/common/b/q$2;->a:Lcom/anythink/core/api/NetTrafficeCallback;

    if-eqz p1, :cond_5

    invoke-interface {p1, p2}, Lcom/anythink/core/api/NetTrafficeCallback;->onResultCallback(Z)V

    return-void

    :cond_4
    iget-object p1, p0, Lcom/anythink/core/common/b/q$2;->a:Lcom/anythink/core/api/NetTrafficeCallback;

    if-eqz p1, :cond_5

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lcom/anythink/core/api/NetTrafficeCallback;->onResultCallback(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_5
    return-void

    :catchall_0
    nop

    iget-object p1, p0, Lcom/anythink/core/common/b/q$2;->a:Lcom/anythink/core/api/NetTrafficeCallback;

    if-eqz p1, :cond_6

    const-string p2, "Internal error"

    invoke-interface {p1, p2}, Lcom/anythink/core/api/NetTrafficeCallback;->onErrorCallback(Ljava/lang/String;)V

    :cond_6
    return-void
.end method

.method public final onLoadStart(I)V
    .locals 0

    return-void
.end method
