.class public Lcn/haorui/sdk/core/view/TouchAdContainer;
.super Landroid/widget/FrameLayout;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/haorui/sdk/core/view/TouchAdContainer$OnWindownEventListener;
    }
.end annotation


# instance fields
.field private touchPositionListener:Lcn/haorui/sdk/core/view/TouchPositionListener;

.field private windownEventListener:Lcn/haorui/sdk/core/view/TouchAdContainer$OnWindownEventListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    iget-object v0, p0, Lcn/haorui/sdk/core/view/TouchAdContainer;->windownEventListener:Lcn/haorui/sdk/core/view/TouchAdContainer$OnWindownEventListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcn/haorui/sdk/core/view/TouchAdContainer$OnWindownEventListener;->onAttachedToWindow()V

    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lcn/haorui/sdk/core/view/TouchAdContainer;->windownEventListener:Lcn/haorui/sdk/core/view/TouchAdContainer$OnWindownEventListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcn/haorui/sdk/core/view/TouchAdContainer$OnWindownEventListener;->onDetachedFromWindow()V

    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/view/TouchAdContainer;->touchPositionListener:Lcn/haorui/sdk/core/view/TouchPositionListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0, p1}, Lcn/haorui/sdk/core/view/TouchPositionListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    iget-object v0, p0, Lcn/haorui/sdk/core/view/TouchAdContainer;->windownEventListener:Lcn/haorui/sdk/core/view/TouchAdContainer$OnWindownEventListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcn/haorui/sdk/core/view/TouchAdContainer$OnWindownEventListener;->onWindowFocusChanged(Z)V

    :cond_0
    return-void
.end method

.method public setOnWindownEventListener(Lcn/haorui/sdk/core/view/TouchAdContainer$OnWindownEventListener;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/view/TouchAdContainer;->windownEventListener:Lcn/haorui/sdk/core/view/TouchAdContainer$OnWindownEventListener;

    return-void
.end method

.method public setTouchPositionListener(Lcn/haorui/sdk/core/view/TouchPositionListener;)V
    .locals 0
    .param p1    # Lcn/haorui/sdk/core/view/TouchPositionListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcn/haorui/sdk/core/view/TouchAdContainer;->touchPositionListener:Lcn/haorui/sdk/core/view/TouchPositionListener;

    return-void
.end method
