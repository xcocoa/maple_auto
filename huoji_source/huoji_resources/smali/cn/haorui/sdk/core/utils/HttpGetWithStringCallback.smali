.class public interface abstract Lcn/haorui/sdk/core/utils/HttpGetWithStringCallback;
.super Ljava/lang/Object;
.source ""


# virtual methods
.method public abstract onFailure(Ljava/io/IOException;)V
    .param p1    # Ljava/io/IOException;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract onResponse(Lcn/haorui/sdk/core/domain/HttpResponse;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/haorui/sdk/core/domain/HttpResponse<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method
