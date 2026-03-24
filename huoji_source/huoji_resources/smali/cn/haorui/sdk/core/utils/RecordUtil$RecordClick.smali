.class public Lcn/haorui/sdk/core/utils/RecordUtil$RecordClick;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/haorui/sdk/core/utils/RecordUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RecordClick"
.end annotation


# instance fields
.field private isClicked:Z

.field private isDynamicClick:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isClicked()Z
    .locals 1

    iget-boolean v0, p0, Lcn/haorui/sdk/core/utils/RecordUtil$RecordClick;->isClicked:Z

    return v0
.end method

.method public isDynamicClick()Z
    .locals 1

    iget-boolean v0, p0, Lcn/haorui/sdk/core/utils/RecordUtil$RecordClick;->isDynamicClick:Z

    return v0
.end method

.method public setClicked(Z)V
    .locals 0

    iput-boolean p1, p0, Lcn/haorui/sdk/core/utils/RecordUtil$RecordClick;->isClicked:Z

    return-void
.end method

.method public setDynamicClick(Z)V
    .locals 0

    iput-boolean p1, p0, Lcn/haorui/sdk/core/utils/RecordUtil$RecordClick;->isDynamicClick:Z

    return-void
.end method
