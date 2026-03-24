.class public Lcom/anythink/core/api/ATAdStatusInfo;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private mATTopAdInfo:Lcom/anythink/core/api/ATAdInfo;

.field private mIsLoading:Z

.field private mIsReady:Z


# direct methods
.method public constructor <init>(ZZLcom/anythink/core/api/ATAdInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/anythink/core/api/ATAdStatusInfo;->mIsLoading:Z

    iput-boolean p2, p0, Lcom/anythink/core/api/ATAdStatusInfo;->mIsReady:Z

    iput-object p3, p0, Lcom/anythink/core/api/ATAdStatusInfo;->mATTopAdInfo:Lcom/anythink/core/api/ATAdInfo;

    return-void
.end method


# virtual methods
.method public getATTopAdInfo()Lcom/anythink/core/api/ATAdInfo;
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/api/ATAdStatusInfo;->mATTopAdInfo:Lcom/anythink/core/api/ATAdInfo;

    return-object v0
.end method

.method public isLoading()Z
    .locals 1

    iget-boolean v0, p0, Lcom/anythink/core/api/ATAdStatusInfo;->mIsLoading:Z

    return v0
.end method

.method public isReady()Z
    .locals 1

    iget-boolean v0, p0, Lcom/anythink/core/api/ATAdStatusInfo;->mIsReady:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ATAdStatusInfo{isLoading="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/anythink/core/api/ATAdStatusInfo;->mIsLoading:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isReady="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/anythink/core/api/ATAdStatusInfo;->mIsReady:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", topAdInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/anythink/core/api/ATAdStatusInfo;->mATTopAdInfo:Lcom/anythink/core/api/ATAdInfo;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "null"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
