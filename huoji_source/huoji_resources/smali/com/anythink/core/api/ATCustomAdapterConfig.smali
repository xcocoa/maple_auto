.class public Lcom/anythink/core/api/ATCustomAdapterConfig;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/core/api/ATCustomAdapterConfig$Builder;
    }
.end annotation


# instance fields
.field private adCacheTime:J

.field private lossNoticePosition:I

.field private realTimeBidSwitch:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/anythink/core/api/ATCustomAdapterConfig$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/anythink/core/api/ATCustomAdapterConfig;-><init>()V

    return-void
.end method

.method public static synthetic access$102(Lcom/anythink/core/api/ATCustomAdapterConfig;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/anythink/core/api/ATCustomAdapterConfig;->realTimeBidSwitch:Z

    return p1
.end method

.method public static synthetic access$202(Lcom/anythink/core/api/ATCustomAdapterConfig;J)J
    .locals 0

    iput-wide p1, p0, Lcom/anythink/core/api/ATCustomAdapterConfig;->adCacheTime:J

    return-wide p1
.end method

.method public static synthetic access$302(Lcom/anythink/core/api/ATCustomAdapterConfig;I)I
    .locals 0

    iput p1, p0, Lcom/anythink/core/api/ATCustomAdapterConfig;->lossNoticePosition:I

    return p1
.end method


# virtual methods
.method public getAdCacheTime()J
    .locals 2

    iget-wide v0, p0, Lcom/anythink/core/api/ATCustomAdapterConfig;->adCacheTime:J

    return-wide v0
.end method

.method public getLossNoticePostion()I
    .locals 1

    iget v0, p0, Lcom/anythink/core/api/ATCustomAdapterConfig;->lossNoticePosition:I

    return v0
.end method

.method public isRealTimeBidSwitch()Z
    .locals 1

    iget-boolean v0, p0, Lcom/anythink/core/api/ATCustomAdapterConfig;->realTimeBidSwitch:Z

    return v0
.end method
