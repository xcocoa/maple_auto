.class public Lcom/anythink/core/api/ATNetworkConfig;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/core/api/ATNetworkConfig$Builder;
    }
.end annotation


# instance fields
.field public mATInitConfigList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/anythink/core/api/ATInitConfig;",
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
.method public getATInitConfigList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/anythink/core/api/ATInitConfig;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/anythink/core/api/ATNetworkConfig;->mATInitConfigList:Ljava/util/List;

    return-object v0
.end method
