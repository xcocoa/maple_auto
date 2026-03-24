.class public Lcn/haorui/sdk/core/domain/ClickIdResponse$ClickIdInfo;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/haorui/sdk/core/domain/ClickIdResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ClickIdInfo"
.end annotation


# instance fields
.field private clickid:Ljava/lang/String;

.field private dstlink:Ljava/lang/String;

.field public final synthetic this$0:Lcn/haorui/sdk/core/domain/ClickIdResponse;


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/core/domain/ClickIdResponse;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/domain/ClickIdResponse$ClickIdInfo;->this$0:Lcn/haorui/sdk/core/domain/ClickIdResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getClickid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/domain/ClickIdResponse$ClickIdInfo;->clickid:Ljava/lang/String;

    return-object v0
.end method

.method public getDstlink()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/domain/ClickIdResponse$ClickIdInfo;->dstlink:Ljava/lang/String;

    return-object v0
.end method

.method public setClickid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/domain/ClickIdResponse$ClickIdInfo;->clickid:Ljava/lang/String;

    return-void
.end method

.method public setDstlink(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/domain/ClickIdResponse$ClickIdInfo;->dstlink:Ljava/lang/String;

    return-void
.end method
