.class public Lcn/haorui/sdk/platform/ms/draw/HrCustomDrawAd;
.super Lcom/meishu/sdk/platform/custom/draw/MsCustomDrawAd;
.source ""


# instance fields
.field private iDrawAd:Lcn/haorui/sdk/core/ad/draw/IDrawAd;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/custom/draw/MsCustomDrawAdapter;Lcn/haorui/sdk/core/ad/draw/IDrawAd;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meishu/sdk/platform/custom/draw/MsCustomDrawAd;-><init>(Lcom/meishu/sdk/platform/custom/draw/MsCustomDrawAdapter;)V

    iput-object p2, p0, Lcn/haorui/sdk/platform/ms/draw/HrCustomDrawAd;->iDrawAd:Lcn/haorui/sdk/core/ad/draw/IDrawAd;

    return-void
.end method


# virtual methods
.method public showAd(Landroid/app/Activity;Landroid/view/ViewGroup;)V
    .locals 0

    return-void
.end method

.method public showAd(Landroid/view/ViewGroup;)V
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/platform/ms/draw/HrCustomDrawAd;->iDrawAd:Lcn/haorui/sdk/core/ad/draw/IDrawAd;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcn/haorui/sdk/core/ad/draw/IDrawAd;->showAd(Landroid/view/ViewGroup;)V

    :cond_0
    return-void
.end method
