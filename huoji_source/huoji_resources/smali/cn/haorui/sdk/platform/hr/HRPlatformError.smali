.class public Lcn/haorui/sdk/platform/hr/HRPlatformError;
.super Lcn/haorui/sdk/core/loader/AdPlatformError;
.source ""


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 1

    invoke-direct {p0}, Lcn/haorui/sdk/core/loader/AdPlatformError;-><init>()V

    const-string v0, "AD_HR"

    iput-object v0, p0, Lcn/haorui/sdk/core/loader/AdPlatformError;->platform:Ljava/lang/String;

    iput-object p1, p0, Lcn/haorui/sdk/core/loader/AdPlatformError;->message:Ljava/lang/String;

    iput-object p2, p0, Lcn/haorui/sdk/core/loader/AdPlatformError;->code:Ljava/lang/Integer;

    return-void
.end method
