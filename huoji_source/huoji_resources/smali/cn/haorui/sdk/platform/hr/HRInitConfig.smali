.class public Lcn/haorui/sdk/platform/hr/HRInitConfig;
.super Lcn/haorui/sdk/core/b;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcn/haorui/sdk/core/b;-><init>()V

    return-void
.end method

.method public static getInstance()Lcn/haorui/sdk/platform/hr/HRInitConfig;
    .locals 1

    const-string v0, "AD_HR"

    invoke-static {v0}, Lcn/haorui/sdk/core/a;->a(Ljava/lang/String;)Lcn/haorui/sdk/core/e;

    move-result-object v0

    invoke-interface {v0}, Lcn/haorui/sdk/core/e;->config()Lcn/haorui/sdk/core/d;

    move-result-object v0

    check-cast v0, Lcn/haorui/sdk/platform/hr/HRInitConfig;

    return-object v0
.end method
