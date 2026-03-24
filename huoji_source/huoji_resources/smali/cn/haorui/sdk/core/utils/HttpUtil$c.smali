.class public final Lcn/haorui/sdk/core/utils/HttpUtil$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/uw;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/haorui/sdk/core/utils/HttpUtil;->asyncGetWithHeaders(Ljava/lang/String;Ljava/util/Map;Lcn/haorui/sdk/core/utils/HttpGetWithStringCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcn/haorui/sdk/core/utils/HttpGetWithStringCallback;


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/core/utils/HttpGetWithStringCallback;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/utils/HttpUtil$c;->a:Lcn/haorui/sdk/core/utils/HttpGetWithStringCallback;

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

    new-instance v0, Lcn/haorui/sdk/core/utils/HttpUtil$c$a;

    invoke-direct {v0, p0, p2}, Lcn/haorui/sdk/core/utils/HttpUtil$c$a;-><init>(Lcn/haorui/sdk/core/utils/HttpUtil$c;Ljava/io/IOException;)V

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

    new-instance p1, Lcn/haorui/sdk/core/domain/HttpResponse;

    invoke-direct {p1}, Lcn/haorui/sdk/core/domain/HttpResponse;-><init>()V

    invoke-virtual {p2}, Lz2/sx;->o00o0O()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/domain/HttpResponse;->setSuccessful(Z)V

    invoke-virtual {p2}, Lz2/sx;->OooOO0()Lz2/tx;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/domain/HttpResponse;->setSuccessful(Z)V

    invoke-virtual {p2}, Lz2/sx;->OoooooO()I

    move-result v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/domain/HttpResponse;->setErrorCode(I)V

    invoke-virtual {p2}, Lz2/sx;->o00ooo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/domain/HttpResponse;->setErrorDescription(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p2}, Lz2/sx;->close()V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eq p2, v0, :cond_1

    invoke-static {}, Lcn/haorui/sdk/core/utils/HttpUtil;->access$000()Landroid/os/Handler;

    move-result-object p2

    new-instance v0, Lcn/haorui/sdk/core/utils/HttpUtil$c$b;

    invoke-direct {v0, p0, p1}, Lcn/haorui/sdk/core/utils/HttpUtil$c$b;-><init>(Lcn/haorui/sdk/core/utils/HttpUtil$c;Lcn/haorui/sdk/core/domain/HttpResponse;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_1
    :try_start_0
    iget-object p2, p0, Lcn/haorui/sdk/core/utils/HttpUtil$c;->a:Lcn/haorui/sdk/core/utils/HttpGetWithStringCallback;

    invoke-interface {p2, p1}, Lcn/haorui/sdk/core/utils/HttpGetWithStringCallback;->onResponse(Lcn/haorui/sdk/core/domain/HttpResponse;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    return-void
.end method
