.class public Lcom/anythink/core/api/ATCustomAdapterConfig$Builder;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/core/api/ATCustomAdapterConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private adCacheTime:J

.field private lossNoticePosition:I

.field private realTimeBidSwitch:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anythink/core/api/ATCustomAdapterConfig$Builder;->realTimeBidSwitch:Z

    const-wide/32 v0, 0x1b7740

    iput-wide v0, p0, Lcom/anythink/core/api/ATCustomAdapterConfig$Builder;->adCacheTime:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/anythink/core/api/ATCustomAdapterConfig$Builder;->lossNoticePosition:I

    return-void
.end method


# virtual methods
.method public adCacheTime(J)Lcom/anythink/core/api/ATCustomAdapterConfig$Builder;
    .locals 0

    iput-wide p1, p0, Lcom/anythink/core/api/ATCustomAdapterConfig$Builder;->adCacheTime:J

    return-object p0
.end method

.method public build()Lcom/anythink/core/api/ATCustomAdapterConfig;
    .locals 3

    new-instance v0, Lcom/anythink/core/api/ATCustomAdapterConfig;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/anythink/core/api/ATCustomAdapterConfig;-><init>(Lcom/anythink/core/api/ATCustomAdapterConfig$1;)V

    iget-boolean v1, p0, Lcom/anythink/core/api/ATCustomAdapterConfig$Builder;->realTimeBidSwitch:Z

    invoke-static {v0, v1}, Lcom/anythink/core/api/ATCustomAdapterConfig;->access$102(Lcom/anythink/core/api/ATCustomAdapterConfig;Z)Z

    iget-wide v1, p0, Lcom/anythink/core/api/ATCustomAdapterConfig$Builder;->adCacheTime:J

    invoke-static {v0, v1, v2}, Lcom/anythink/core/api/ATCustomAdapterConfig;->access$202(Lcom/anythink/core/api/ATCustomAdapterConfig;J)J

    iget v1, p0, Lcom/anythink/core/api/ATCustomAdapterConfig$Builder;->lossNoticePosition:I

    invoke-static {v0, v1}, Lcom/anythink/core/api/ATCustomAdapterConfig;->access$302(Lcom/anythink/core/api/ATCustomAdapterConfig;I)I

    return-object v0
.end method

.method public lossNoticePosition(I)Lcom/anythink/core/api/ATCustomAdapterConfig$Builder;
    .locals 0

    iput p1, p0, Lcom/anythink/core/api/ATCustomAdapterConfig$Builder;->lossNoticePosition:I

    return-object p0
.end method

.method public realTimeBidSwitch(Z)Lcom/anythink/core/api/ATCustomAdapterConfig$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/anythink/core/api/ATCustomAdapterConfig$Builder;->realTimeBidSwitch:Z

    return-object p0
.end method
