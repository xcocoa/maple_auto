.class public Lcom/anythink/core/debugger/api/DebuggerSdkInfo;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private appId:Ljava/lang/String;

.field private deniedUploadDeviceInfo:[Ljava/lang/String;

.field private isHaveLoadAd:Z

.field private isHavePreInitNetwork:Z

.field private isInitSdk:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/anythink/core/debugger/api/DebuggerSdkInfo;->appId:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anythink/core/debugger/api/DebuggerSdkInfo;->isHavePreInitNetwork:Z

    iput-boolean v0, p0, Lcom/anythink/core/debugger/api/DebuggerSdkInfo;->isHaveLoadAd:Z

    iput-boolean v0, p0, Lcom/anythink/core/debugger/api/DebuggerSdkInfo;->isInitSdk:Z

    return-void
.end method


# virtual methods
.method public getAppId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/debugger/api/DebuggerSdkInfo;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public getDeniedUploadDeviceInfo()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/debugger/api/DebuggerSdkInfo;->deniedUploadDeviceInfo:[Ljava/lang/String;

    return-object v0
.end method

.method public isHaveLoadAd()Z
    .locals 1

    iget-boolean v0, p0, Lcom/anythink/core/debugger/api/DebuggerSdkInfo;->isHaveLoadAd:Z

    return v0
.end method

.method public isHavePreInitNetwork()Z
    .locals 1

    iget-boolean v0, p0, Lcom/anythink/core/debugger/api/DebuggerSdkInfo;->isHavePreInitNetwork:Z

    return v0
.end method

.method public isInitSdk()Z
    .locals 1

    iget-boolean v0, p0, Lcom/anythink/core/debugger/api/DebuggerSdkInfo;->isInitSdk:Z

    return v0
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/core/debugger/api/DebuggerSdkInfo;->appId:Ljava/lang/String;

    return-void
.end method

.method public setDeniedUploadDeviceInfo([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/core/debugger/api/DebuggerSdkInfo;->deniedUploadDeviceInfo:[Ljava/lang/String;

    return-void
.end method

.method public setHaveLoadAd(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/anythink/core/debugger/api/DebuggerSdkInfo;->isHaveLoadAd:Z

    return-void
.end method

.method public setHavePreInitNetwork(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/anythink/core/debugger/api/DebuggerSdkInfo;->isHavePreInitNetwork:Z

    return-void
.end method

.method public setInitSdk(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/anythink/core/debugger/api/DebuggerSdkInfo;->isInitSdk:Z

    return-void
.end method
