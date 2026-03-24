.class public Lcn/haorui/sdk/core/view/TouchPositionListener;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/haorui/sdk/core/view/TouchPositionListener$TouchPosition;
    }
.end annotation


# instance fields
.field private ad:Lcn/haorui/sdk/core/ad/IAd;


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/core/ad/IAd;)V
    .locals 0
    .param p1    # Lcn/haorui/sdk/core/ad/IAd;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/haorui/sdk/core/view/TouchPositionListener;->ad:Lcn/haorui/sdk/core/ad/IAd;

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object p1, p0, Lcn/haorui/sdk/core/view/TouchPositionListener;->ad:Lcn/haorui/sdk/core/ad/IAd;

    invoke-interface {p1}, Lcn/haorui/sdk/core/ad/IAd;->getTouchData()Lcn/haorui/sdk/core/ad/TouchData;

    move-result-object p1

    invoke-virtual {p1}, Lcn/haorui/sdk/core/ad/TouchData;->getTouchPosition()Lcn/haorui/sdk/core/view/TouchPositionListener$TouchPosition;

    move-result-object p1

    if-nez p1, :cond_0

    new-instance p1, Lcn/haorui/sdk/core/view/TouchPositionListener$TouchPosition;

    invoke-direct {p1, p0}, Lcn/haorui/sdk/core/view/TouchPositionListener$TouchPosition;-><init>(Lcn/haorui/sdk/core/view/TouchPositionListener;)V

    iget-object v0, p0, Lcn/haorui/sdk/core/view/TouchPositionListener;->ad:Lcn/haorui/sdk/core/ad/IAd;

    invoke-interface {v0}, Lcn/haorui/sdk/core/ad/IAd;->getTouchData()Lcn/haorui/sdk/core/ad/TouchData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/haorui/sdk/core/ad/TouchData;->setTouchPosition(Lcn/haorui/sdk/core/view/TouchPositionListener$TouchPosition;)V

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-static {p1, v0}, Lcn/haorui/sdk/core/view/TouchPositionListener$TouchPosition;->access$002(Lcn/haorui/sdk/core/view/TouchPositionListener$TouchPosition;I)I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    invoke-static {p1, v0}, Lcn/haorui/sdk/core/view/TouchPositionListener$TouchPosition;->access$102(Lcn/haorui/sdk/core/view/TouchPositionListener$TouchPosition;I)I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-static {p1, v0}, Lcn/haorui/sdk/core/view/TouchPositionListener$TouchPosition;->access$202(Lcn/haorui/sdk/core/view/TouchPositionListener$TouchPosition;I)I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    float-to-int p2, p2

    invoke-static {p1, p2}, Lcn/haorui/sdk/core/view/TouchPositionListener$TouchPosition;->access$302(Lcn/haorui/sdk/core/view/TouchPositionListener$TouchPosition;I)I

    new-instance p2, Ljava/sql/Timestamp;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p2, v0, v1}, Ljava/sql/Timestamp;-><init>(J)V

    invoke-static {p1, p2}, Lcn/haorui/sdk/core/view/TouchPositionListener$TouchPosition;->access$402(Lcn/haorui/sdk/core/view/TouchPositionListener$TouchPosition;Ljava/sql/Timestamp;)Ljava/sql/Timestamp;

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
