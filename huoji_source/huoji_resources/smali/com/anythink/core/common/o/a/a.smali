.class public abstract Lcom/anythink/core/common/o/a/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/core/common/o/a/b;


# static fields
.field private static final DEFAULT_IMPRESSION_MIN_PERCENTAGE_VIEWED:I = 0x32

.field private static final DEFAULT_IMPRESSION_MIN_TIME_VIEWED_MS:I = 0x1f4


# instance fields
.field private mImpressionMinPercentageViewed:I

.field private mImpressionMinTimeViewed:I

.field private mImpressionMinVisiblePx:Ljava/lang/Integer;

.field private mImpressionRecorded:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1f4

    iput v0, p0, Lcom/anythink/core/common/o/a/a;->mImpressionMinTimeViewed:I

    const/16 v0, 0x32

    iput v0, p0, Lcom/anythink/core/common/o/a/a;->mImpressionMinPercentageViewed:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anythink/core/common/o/a/a;->mImpressionMinVisiblePx:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public getImpressionMinPercentageViewed()I
    .locals 1

    iget v0, p0, Lcom/anythink/core/common/o/a/a;->mImpressionMinPercentageViewed:I

    return v0
.end method

.method public getImpressionMinTimeViewed()I
    .locals 1

    iget v0, p0, Lcom/anythink/core/common/o/a/a;->mImpressionMinTimeViewed:I

    return v0
.end method

.method public final getImpressionMinVisiblePx()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/common/o/a/a;->mImpressionMinVisiblePx:Ljava/lang/Integer;

    return-object v0
.end method

.method public final isImpressionRecorded()Z
    .locals 1

    iget-boolean v0, p0, Lcom/anythink/core/common/o/a/a;->mImpressionRecorded:Z

    return v0
.end method

.method public abstract recordImpression(Landroid/view/View;)V
.end method

.method public final setImpressionRecorded()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/core/common/o/a/a;->mImpressionRecorded:Z

    return-void
.end method
