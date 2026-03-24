.class public Lcn/haorui/sdk/core/domain/ClickIdResponse;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/haorui/sdk/core/domain/ClickIdResponse$ClickIdInfo;
    }
.end annotation


# instance fields
.field private data:Lcn/haorui/sdk/core/domain/ClickIdResponse$ClickIdInfo;

.field private ret:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Lcn/haorui/sdk/core/domain/ClickIdResponse$ClickIdInfo;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/domain/ClickIdResponse;->data:Lcn/haorui/sdk/core/domain/ClickIdResponse$ClickIdInfo;

    return-object v0
.end method

.method public getRet()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/domain/ClickIdResponse;->ret:Ljava/lang/Integer;

    return-object v0
.end method

.method public setData(Lcn/haorui/sdk/core/domain/ClickIdResponse$ClickIdInfo;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/domain/ClickIdResponse;->data:Lcn/haorui/sdk/core/domain/ClickIdResponse$ClickIdInfo;

    return-void
.end method

.method public setRet(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/domain/ClickIdResponse;->ret:Ljava/lang/Integer;

    return-void
.end method
