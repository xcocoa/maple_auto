.class public Lcn/haorui/sdk/core/domain/HttpResponse;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<body:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private errorCode:I

.field private errorDescription:Ljava/lang/String;

.field private responseBody:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Tbody;"
        }
    .end annotation
.end field

.field private successful:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xc8

    iput v0, p0, Lcn/haorui/sdk/core/domain/HttpResponse;->errorCode:I

    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    iget v0, p0, Lcn/haorui/sdk/core/domain/HttpResponse;->errorCode:I

    return v0
.end method

.method public getErrorDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/domain/HttpResponse;->errorDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getResponseBody()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()Tbody;"
        }
    .end annotation

    iget-object v0, p0, Lcn/haorui/sdk/core/domain/HttpResponse;->responseBody:Ljava/lang/Object;

    return-object v0
.end method

.method public isSuccessful()Z
    .locals 1

    iget-boolean v0, p0, Lcn/haorui/sdk/core/domain/HttpResponse;->successful:Z

    return v0
.end method

.method public setErrorCode(I)V
    .locals 0

    iput p1, p0, Lcn/haorui/sdk/core/domain/HttpResponse;->errorCode:I

    return-void
.end method

.method public setErrorDescription(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/domain/HttpResponse;->errorDescription:Ljava/lang/String;

    return-void
.end method

.method public setResponseBody(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Tbody;)V"
        }
    .end annotation

    iput-object p1, p0, Lcn/haorui/sdk/core/domain/HttpResponse;->responseBody:Ljava/lang/Object;

    return-void
.end method

.method public setSuccessful(Z)V
    .locals 0

    iput-boolean p1, p0, Lcn/haorui/sdk/core/domain/HttpResponse;->successful:Z

    return-void
.end method
