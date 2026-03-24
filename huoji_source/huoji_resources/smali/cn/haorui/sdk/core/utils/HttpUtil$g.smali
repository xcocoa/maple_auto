.class public final Lcn/haorui/sdk/core/utils/HttpUtil$g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/uw;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/haorui/sdk/core/utils/HttpUtil;->asyncGetFile(Ljava/lang/String;Lcn/haorui/sdk/core/utils/HttpGetBytesCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcn/haorui/sdk/core/utils/HttpGetBytesCallback;


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/core/utils/HttpGetBytesCallback;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/utils/HttpUtil$g;->a:Lcn/haorui/sdk/core/utils/HttpGetBytesCallback;

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

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eq p1, v0, :cond_0

    invoke-static {}, Lcn/haorui/sdk/core/utils/HttpUtil;->access$000()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcn/haorui/sdk/core/utils/HttpUtil$g$a;

    invoke-direct {v0, p0, p2}, Lcn/haorui/sdk/core/utils/HttpUtil$g$a;-><init>(Lcn/haorui/sdk/core/utils/HttpUtil$g;Ljava/io/IOException;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcn/haorui/sdk/core/utils/HttpUtil$g;->a:Lcn/haorui/sdk/core/utils/HttpGetBytesCallback;

    invoke-interface {p1, p2}, Lcn/haorui/sdk/core/utils/HttpGetBytesCallback;->onFailure(Ljava/io/IOException;)V

    :goto_0
    return-void
.end method

.method public onResponse(Lz2/tw;Lz2/sx;)V
    .locals 2
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

    :try_start_0
    invoke-virtual {p2}, Lz2/sx;->o00o0O()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lz2/sx;->OooOO0()Lz2/tx;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lz2/sx;->OooOO0()Lz2/tx;

    move-result-object v0

    invoke-virtual {v0}, Lz2/tx;->bytes()[B

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcn/haorui/sdk/core/domain/HttpResponse;->setSuccessful(Z)V

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/domain/HttpResponse;->setResponseBody(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    invoke-virtual {p1, v1}, Lcn/haorui/sdk/core/domain/HttpResponse;->setSuccessful(Z)V

    invoke-virtual {p2}, Lz2/sx;->OoooooO()I

    move-result v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/domain/HttpResponse;->setErrorCode(I)V

    const-string v0, "bad file"

    :goto_0
    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/domain/HttpResponse;->setErrorDescription(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v1}, Lcn/haorui/sdk/core/domain/HttpResponse;->setSuccessful(Z)V

    invoke-virtual {p2}, Lz2/sx;->OoooooO()I

    move-result v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/domain/HttpResponse;->setErrorCode(I)V

    invoke-virtual {p2}, Lz2/sx;->o00ooo()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :goto_1
    invoke-static {}, Lcn/haorui/sdk/core/utils/SdkHandler;->getInstance()Lcn/haorui/sdk/core/utils/SdkHandler;

    move-result-object v0

    new-instance v1, Lcn/haorui/sdk/core/utils/HttpUtil$g$b;

    invoke-direct {v1, p0, p1}, Lcn/haorui/sdk/core/utils/HttpUtil$g$b;-><init>(Lcn/haorui/sdk/core/utils/HttpUtil$g;Lcn/haorui/sdk/core/domain/HttpResponse;)V

    invoke-virtual {v0, v1}, Lcn/haorui/sdk/core/utils/SdkHandler;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p2}, Lz2/sx;->close()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p2}, Lz2/sx;->close()V

    throw p1
.end method
