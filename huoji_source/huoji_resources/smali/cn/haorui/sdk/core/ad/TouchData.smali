.class public Lcn/haorui/sdk/core/ad/TouchData;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private touchPosition:Lcn/haorui/sdk/core/view/TouchPositionListener$TouchPosition;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTouchPosition()Lcn/haorui/sdk/core/view/TouchPositionListener$TouchPosition;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/ad/TouchData;->touchPosition:Lcn/haorui/sdk/core/view/TouchPositionListener$TouchPosition;

    return-object v0
.end method

.method public setTouchPosition(Lcn/haorui/sdk/core/view/TouchPositionListener$TouchPosition;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/ad/TouchData;->touchPosition:Lcn/haorui/sdk/core/view/TouchPositionListener$TouchPosition;

    return-void
.end method
