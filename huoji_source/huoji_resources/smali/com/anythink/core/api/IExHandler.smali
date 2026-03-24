.class public interface abstract Lcom/anythink/core/api/IExHandler;
.super Ljava/lang/Object;
.source ""


# virtual methods
.method public abstract checkDebuggerDevice(Landroid/content/Context;Ljava/lang/String;)Z
.end method

.method public abstract checkDownloadType(Lcom/anythink/core/common/f/l;Lcom/anythink/core/common/f/m;)I
.end method

.method public abstract createDownloadListener(Lcom/anythink/core/api/ATBaseAdAdapter;Lcom/anythink/core/api/BaseAd;Lcom/anythink/core/api/ATEventInterface;)Lcom/anythink/core/api/ATEventInterface;
.end method

.method public abstract fillCDataParam(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract fillDownloadStatus(Landroid/content/Context;Lcom/anythink/core/common/f/l;Lcom/anythink/core/common/f/m;)V
.end method

.method public abstract fillRequestData(Lorg/json/JSONObject;Lcom/anythink/core/d/a;)V
.end method

.method public abstract fillRequestData(Lorg/json/JSONObject;Lcom/anythink/core/d/a;I)V
.end method

.method public abstract fillRequestDeviceData(Lorg/json/JSONObject;I)V
.end method

.method public abstract fillTestDeviceData(Lorg/json/JSONObject;Lcom/anythink/core/d/a;)V
.end method

.method public abstract getAid(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public abstract getUniqueId(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public abstract handleOfferClick(Landroid/content/Context;Lcom/anythink/core/common/f/m;Lcom/anythink/core/common/f/l;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Lcom/anythink/core/common/g/b;)V
.end method

.method public abstract initDeviceInfo(Landroid/content/Context;)V
.end method

.method public abstract onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)Z
.end method

.method public abstract openApkConfirmDialog(Landroid/content/Context;Lcom/anythink/core/common/f/l;Lcom/anythink/core/common/f/m;Lcom/anythink/core/common/g/a;)V
.end method
