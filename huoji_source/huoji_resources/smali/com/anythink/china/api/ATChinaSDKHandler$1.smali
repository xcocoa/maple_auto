.class public Lcom/anythink/china/api/ATChinaSDKHandler$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/bun/miitmdid/interfaces/IIdentifierListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/china/api/ATChinaSDKHandler;->handleInitOaidSDK(Landroid/content/Context;Lcom/anythink/china/api/OaidSDKCallbackListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$oaidSDKListener:Lcom/anythink/china/api/OaidSDKCallbackListener;


# direct methods
.method public constructor <init>(Lcom/anythink/china/api/OaidSDKCallbackListener;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/china/api/ATChinaSDKHandler$1;->val$oaidSDKListener:Lcom/anythink/china/api/OaidSDKCallbackListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnSupport(ZLcom/bun/miitmdid/interfaces/IdSupplier;)V
    .locals 1

    iget-object v0, p0, Lcom/anythink/china/api/ATChinaSDKHandler$1;->val$oaidSDKListener:Lcom/anythink/china/api/OaidSDKCallbackListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/anythink/china/api/OaidSDKCallbackListener;->OnSupport(ZLcom/bun/miitmdid/interfaces/IdSupplier;)V

    :cond_0
    return-void
.end method

.method public onSupport(Lcom/bun/miitmdid/interfaces/IdSupplier;)V
    .locals 1

    iget-object v0, p0, Lcom/anythink/china/api/ATChinaSDKHandler$1;->val$oaidSDKListener:Lcom/anythink/china/api/OaidSDKCallbackListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/anythink/china/api/OaidSDKCallbackListener;->onSupport(Lcom/bun/miitmdid/interfaces/IdSupplier;)V

    :cond_0
    return-void
.end method
