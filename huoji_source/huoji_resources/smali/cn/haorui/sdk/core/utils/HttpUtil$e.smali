.class public final Lcn/haorui/sdk/core/utils/HttpUtil$e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/uw;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/haorui/sdk/core/utils/HttpUtil;->asyncPostGetJson(Ljava/lang/String;Ljava/lang/String;Lcn/haorui/sdk/core/utils/HttpGetJsonCallback;)V
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

    iput-object p1, p0, Lcn/haorui/sdk/core/utils/HttpUtil$e;->a:Lcn/haorui/sdk/core/utils/HttpGetJsonCallback;

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

    new-instance v0, Lcn/haorui/sdk/core/utils/HttpUtil$e$a;

    invoke-direct {v0, p0, p2}, Lcn/haorui/sdk/core/utils/HttpUtil$e$a;-><init>(Lcn/haorui/sdk/core/utils/HttpUtil$e;Ljava/io/IOException;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onResponse(Lz2/tw;Lz2/sx;)V
    .locals 1
    .param p1    # Lz2/tw;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lz2/sx;
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

    new-instance v0, Lcn/haorui/sdk/core/utils/HttpUtil$e$b;

    invoke-direct {v0, p0, p2}, Lcn/haorui/sdk/core/utils/HttpUtil$e$b;-><init>(Lcn/haorui/sdk/core/utils/HttpUtil$e;Lz2/sx;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object p1, p0, Lcn/haorui/sdk/core/utils/HttpUtil$e;->a:Lcn/haorui/sdk/core/utils/HttpGetJsonCallback;

    invoke-interface {p1, p2}, Lcn/haorui/sdk/core/utils/HttpGetJsonCallback;->onResponse(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method
