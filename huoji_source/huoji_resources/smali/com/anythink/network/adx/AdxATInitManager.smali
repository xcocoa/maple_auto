.class public Lcom/anythink/network/adx/AdxATInitManager;
.super Lcom/anythink/core/api/ATInitMediation;
.source ""


# static fields
.field private static volatile a:Lcom/anythink/network/adx/AdxATInitManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/anythink/core/api/ATInitMediation;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/anythink/network/adx/AdxATInitManager;
    .locals 2

    sget-object v0, Lcom/anythink/network/adx/AdxATInitManager;->a:Lcom/anythink/network/adx/AdxATInitManager;

    if-nez v0, :cond_1

    const-class v0, Lcom/anythink/network/adx/AdxATInitManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/anythink/network/adx/AdxATInitManager;->a:Lcom/anythink/network/adx/AdxATInitManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/anythink/network/adx/AdxATInitManager;

    invoke-direct {v1}, Lcom/anythink/network/adx/AdxATInitManager;-><init>()V

    sput-object v1, Lcom/anythink/network/adx/AdxATInitManager;->a:Lcom/anythink/network/adx/AdxATInitManager;

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/anythink/network/adx/AdxATInitManager;->a:Lcom/anythink/network/adx/AdxATInitManager;

    return-object v0
.end method


# virtual methods
.method public getAdapterVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "UA_6.2.77"

    return-object v0
.end method

.method public getNetworkName()Ljava/lang/String;
    .locals 1

    const-string v0, "Adx"

    return-object v0
.end method

.method public getNetworkSDKClass()Ljava/lang/String;
    .locals 1

    const-string v0, "com.anythink.core.api.ATSDK"

    return-object v0
.end method

.method public getResourceStatus()Ljava/util/List;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "anythink_myoffer_full_screen"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "anythink_myoffer_splash_ad_layout_asseblem_vertical_port"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public initSDK(Landroid/content/Context;Ljava/util/Map;Lcom/anythink/core/api/MediationInitCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/anythink/core/api/MediationInitCallback;",
            ")V"
        }
    .end annotation

    return-void
.end method
