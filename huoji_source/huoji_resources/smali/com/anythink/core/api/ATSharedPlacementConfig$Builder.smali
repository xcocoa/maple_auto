.class public Lcom/anythink/core/api/ATSharedPlacementConfig$Builder;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/core/api/ATSharedPlacementConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public bannerLocalExtra:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public interstitialLocalExtra:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public nativeLocalExtra:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public rewardVideoLocalExtra:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public splashLocalExtra:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bannerLocalExtra(Ljava/util/Map;)Lcom/anythink/core/api/ATSharedPlacementConfig$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/anythink/core/api/ATSharedPlacementConfig$Builder;"
        }
    .end annotation

    iput-object p1, p0, Lcom/anythink/core/api/ATSharedPlacementConfig$Builder;->bannerLocalExtra:Ljava/util/Map;

    return-object p0
.end method

.method public build()Lcom/anythink/core/api/ATSharedPlacementConfig;
    .locals 2

    new-instance v0, Lcom/anythink/core/api/ATSharedPlacementConfig;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/anythink/core/api/ATSharedPlacementConfig;-><init>(Lcom/anythink/core/api/ATSharedPlacementConfig$Builder;Lcom/anythink/core/api/ATSharedPlacementConfig$1;)V

    return-object v0
.end method

.method public interstitialLocalExtra(Ljava/util/Map;)Lcom/anythink/core/api/ATSharedPlacementConfig$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/anythink/core/api/ATSharedPlacementConfig$Builder;"
        }
    .end annotation

    iput-object p1, p0, Lcom/anythink/core/api/ATSharedPlacementConfig$Builder;->interstitialLocalExtra:Ljava/util/Map;

    return-object p0
.end method

.method public nativeLocalExtra(Ljava/util/Map;)Lcom/anythink/core/api/ATSharedPlacementConfig$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/anythink/core/api/ATSharedPlacementConfig$Builder;"
        }
    .end annotation

    iput-object p1, p0, Lcom/anythink/core/api/ATSharedPlacementConfig$Builder;->nativeLocalExtra:Ljava/util/Map;

    return-object p0
.end method

.method public rewardVideoLocalExtra(Ljava/util/Map;)Lcom/anythink/core/api/ATSharedPlacementConfig$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/anythink/core/api/ATSharedPlacementConfig$Builder;"
        }
    .end annotation

    iput-object p1, p0, Lcom/anythink/core/api/ATSharedPlacementConfig$Builder;->rewardVideoLocalExtra:Ljava/util/Map;

    return-object p0
.end method

.method public splashLocalExtra(Ljava/util/Map;)Lcom/anythink/core/api/ATSharedPlacementConfig$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/anythink/core/api/ATSharedPlacementConfig$Builder;"
        }
    .end annotation

    iput-object p1, p0, Lcom/anythink/core/api/ATSharedPlacementConfig$Builder;->splashLocalExtra:Ljava/util/Map;

    return-object p0
.end method
