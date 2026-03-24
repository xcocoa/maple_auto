.class public Lcn/haorui/sdk/adsail_ad/draw/HRDrawRootView;
.super Landroid/widget/RelativeLayout;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/haorui/sdk/adsail_ad/draw/HRDrawRootView$OnVisibilityChangeListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private adListener:Lcn/haorui/sdk/core/ad/draw/DrawAdListener;

.field public listener:Lcn/haorui/sdk/adsail_ad/draw/HRDrawRootView$OnVisibilityChangeListener;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lcn/haorui/sdk/adsail_ad/draw/HRDrawRootView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/haorui/sdk/adsail_ad/draw/HRDrawRootView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    return-void
.end method

.method public onVisibilityChanged(Landroid/view/View;I)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onVisibilityChanged(Landroid/view/View;I)V

    sget-object p1, Lcn/haorui/sdk/adsail_ad/draw/HRDrawRootView;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "visibility="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcn/haorui/sdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/draw/HRDrawRootView;->listener:Lcn/haorui/sdk/adsail_ad/draw/HRDrawRootView$OnVisibilityChangeListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p2}, Lcn/haorui/sdk/adsail_ad/draw/HRDrawRootView$OnVisibilityChangeListener;->onVisibility(I)V

    :cond_0
    if-nez p2, :cond_1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->isShown()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcn/haorui/sdk/adsail_ad/draw/HRDrawRootView;->adListener:Lcn/haorui/sdk/core/ad/draw/DrawAdListener;

    if-eqz p2, :cond_1

    const-string p2, "send onADExposure"

    invoke-static {p1, p2}, Lcn/haorui/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcn/haorui/sdk/adsail_ad/draw/HRDrawRootView;->adListener:Lcn/haorui/sdk/core/ad/draw/DrawAdListener;

    invoke-interface {p1}, Lcn/haorui/sdk/core/loader/IAdLoadListener;->onAdExposure()V

    :cond_1
    return-void
.end method

.method public setAdListener(Lcn/haorui/sdk/core/ad/draw/DrawAdListener;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/adsail_ad/draw/HRDrawRootView;->adListener:Lcn/haorui/sdk/core/ad/draw/DrawAdListener;

    return-void
.end method

.method public setOnVisibilityChangeListener(Lcn/haorui/sdk/adsail_ad/draw/HRDrawRootView$OnVisibilityChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/adsail_ad/draw/HRDrawRootView;->listener:Lcn/haorui/sdk/adsail_ad/draw/HRDrawRootView$OnVisibilityChangeListener;

    return-void
.end method
