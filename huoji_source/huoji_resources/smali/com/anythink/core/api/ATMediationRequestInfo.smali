.class public abstract Lcom/anythink/core/api/ATMediationRequestInfo;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public adSourceId:Ljava/lang/String;

.field public className:Ljava/lang/String;

.field public networkFirmId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAdSourceId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/api/ATMediationRequestInfo;->adSourceId:Ljava/lang/String;

    return-object v0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/api/ATMediationRequestInfo;->className:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkFirmId()I
    .locals 1

    iget v0, p0, Lcom/anythink/core/api/ATMediationRequestInfo;->networkFirmId:I

    return v0
.end method

.method public abstract getRequestParamMap()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method public setAdSourceId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/core/api/ATMediationRequestInfo;->adSourceId:Ljava/lang/String;

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    invoke-static {p1}, Lcom/anythink/core/common/b/n;->o(Ljava/lang/String;)V

    return-void
.end method

.method public abstract setFormat(Ljava/lang/String;)V
.end method
