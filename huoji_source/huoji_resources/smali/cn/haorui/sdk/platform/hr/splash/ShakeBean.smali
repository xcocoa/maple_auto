.class public Lcn/haorui/sdk/platform/hr/splash/ShakeBean;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static SHAKE_STATUS_DESTROY:I = 0x3

.field public static SHAKE_STATUS_USEABLE:I = 0x1

.field public static SHAKE_STATUS_WAIT:I = 0x2


# instance fields
.field private ecpm:I

.field private isShowing:Z

.field private listener:Lcn/haorui/sdk/core/loader/g$d;

.field private sensitivity_index:I

.field private shakeId:I

.field private status:I

.field private touch_type:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lcn/haorui/sdk/platform/hr/splash/ShakeBean;->SHAKE_STATUS_USEABLE:I

    iput v0, p0, Lcn/haorui/sdk/platform/hr/splash/ShakeBean;->status:I

    return-void
.end method


# virtual methods
.method public getEcpm()I
    .locals 1

    iget v0, p0, Lcn/haorui/sdk/platform/hr/splash/ShakeBean;->ecpm:I

    return v0
.end method

.method public getIsShowing()Z
    .locals 1

    iget-boolean v0, p0, Lcn/haorui/sdk/platform/hr/splash/ShakeBean;->isShowing:Z

    return v0
.end method

.method public getListener()Lcn/haorui/sdk/core/loader/g$d;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/splash/ShakeBean;->listener:Lcn/haorui/sdk/core/loader/g$d;

    return-object v0
.end method

.method public getSensitivity_index()I
    .locals 1

    iget v0, p0, Lcn/haorui/sdk/platform/hr/splash/ShakeBean;->sensitivity_index:I

    return v0
.end method

.method public getShakeId()I
    .locals 1

    iget v0, p0, Lcn/haorui/sdk/platform/hr/splash/ShakeBean;->shakeId:I

    return v0
.end method

.method public getStatus()I
    .locals 1

    iget v0, p0, Lcn/haorui/sdk/platform/hr/splash/ShakeBean;->status:I

    return v0
.end method

.method public getTouch_type()I
    .locals 1

    iget v0, p0, Lcn/haorui/sdk/platform/hr/splash/ShakeBean;->touch_type:I

    return v0
.end method

.method public setEcpm(I)V
    .locals 0

    iput p1, p0, Lcn/haorui/sdk/platform/hr/splash/ShakeBean;->ecpm:I

    return-void
.end method

.method public setIsShowing(Z)V
    .locals 0

    iput-boolean p1, p0, Lcn/haorui/sdk/platform/hr/splash/ShakeBean;->isShowing:Z

    return-void
.end method

.method public setListener(Lcn/haorui/sdk/core/loader/g$d;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/platform/hr/splash/ShakeBean;->listener:Lcn/haorui/sdk/core/loader/g$d;

    return-void
.end method

.method public setSensitivity_index(I)V
    .locals 0

    iput p1, p0, Lcn/haorui/sdk/platform/hr/splash/ShakeBean;->sensitivity_index:I

    return-void
.end method

.method public setShakeId(I)V
    .locals 0

    iput p1, p0, Lcn/haorui/sdk/platform/hr/splash/ShakeBean;->shakeId:I

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    iput p1, p0, Lcn/haorui/sdk/platform/hr/splash/ShakeBean;->status:I

    return-void
.end method

.method public setTouch_type(I)V
    .locals 0

    iput p1, p0, Lcn/haorui/sdk/platform/hr/splash/ShakeBean;->touch_type:I

    return-void
.end method
