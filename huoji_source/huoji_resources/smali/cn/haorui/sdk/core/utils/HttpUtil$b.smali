.class public final Lcn/haorui/sdk/core/utils/HttpUtil$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/uw;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/haorui/sdk/core/utils/HttpUtil;->asyncGetJson(Ljava/lang/String;Ljava/util/Map;Lcn/haorui/sdk/core/utils/HttpGetJsonCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcn/haorui/sdk/core/utils/HttpGetJsonCallback;


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/core/utils/HttpGetJsonCallback;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/utils/HttpUtil$b;->a:Lcn/haorui/sdk/core/utils/HttpGetJsonCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lz2/tw;Ljava/io/IOException;)V
    .locals 1
    .param p1    # Lz2/tw;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/IOException;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eq p1, v0, :cond_0

    invoke-static {}, Lcn/haorui/sdk/core/utils/HttpUtil;->access$000()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcn/haorui/sdk/core/utils/HttpUtil$b$a;

    invoke-direct {v0, p0, p2}, Lcn/haorui/sdk/core/utils/HttpUtil$b$a;-><init>(Lcn/haorui/sdk/core/utils/HttpUtil$b;Ljava/io/IOException;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onResponse(Lz2/tw;Lz2/sx;)V
    .locals 3
    .param p1    # Lz2/tw;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lz2/sx;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-virtual {p2}, Lz2/sx;->OooOO0()Lz2/tx;

    move-result-object p1

    new-instance v0, Lcn/haorui/sdk/core/utils/OriginalResponse;

    invoke-virtual {p2}, Lz2/sx;->OoooooO()I

    move-result v1

    invoke-virtual {p2}, Lz2/sx;->o00o0O()Z

    move-result v2

    invoke-direct {v0, v1, v2}, Lcn/haorui/sdk/core/utils/OriginalResponse;-><init>(IZ)V

    invoke-virtual {p2}, Lz2/sx;->o00Oo0()Lz2/jx;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/haorui/sdk/core/utils/OriginalResponse;->setHeaders(Lz2/jx;)V

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lz2/tx;->string()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcn/haorui/sdk/core/utils/OriginalResponse;->setBody(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcn/haorui/sdk/core/utils/OriginalResponse;->setBody(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    invoke-virtual {p2}, Lz2/sx;->close()V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    if-eq p1, p2, :cond_1

    invoke-static {}, Lcn/haorui/sdk/core/utils/HttpUtil;->access$000()Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcn/haorui/sdk/core/utils/HttpUtil$b$b;

    invoke-direct {p2, p0, v0}, Lcn/haorui/sdk/core/utils/HttpUtil$b$b;-><init>(Lcn/haorui/sdk/core/utils/HttpUtil$b;Lcn/haorui/sdk/core/utils/OriginalResponse;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_1
    :try_start_1
    iget-object p1, p0, Lcn/haorui/sdk/core/utils/HttpUtil$b;->a:Lcn/haorui/sdk/core/utils/HttpGetJsonCallback;

    invoke-interface {p1, v0}, Lcn/haorui/sdk/core/utils/HttpGetJsonCallback;->onResponse(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    return-void
.end method
