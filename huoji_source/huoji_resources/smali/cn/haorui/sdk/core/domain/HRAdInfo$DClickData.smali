.class public Lcn/haorui/sdk/core/domain/HRAdInfo$DClickData;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/haorui/sdk/core/domain/HRAdInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DClickData"
.end annotation


# instance fields
.field private power:I

.field private ptime:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcn/haorui/sdk/core/domain/HRAdInfo$DClickData;->power:I

    return-void
.end method


# virtual methods
.method public getPower()I
    .locals 1

    iget v0, p0, Lcn/haorui/sdk/core/domain/HRAdInfo$DClickData;->power:I

    return v0
.end method

.method public getPtime()I
    .locals 1

    iget v0, p0, Lcn/haorui/sdk/core/domain/HRAdInfo$DClickData;->ptime:I

    return v0
.end method

.method public setPower(I)V
    .locals 0

    iput p1, p0, Lcn/haorui/sdk/core/domain/HRAdInfo$DClickData;->power:I

    return-void
.end method

.method public setPtime(I)V
    .locals 0

    iput p1, p0, Lcn/haorui/sdk/core/domain/HRAdInfo$DClickData;->ptime:I

    return-void
.end method
