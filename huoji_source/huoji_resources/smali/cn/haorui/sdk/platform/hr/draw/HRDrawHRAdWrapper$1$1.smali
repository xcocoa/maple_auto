.class public Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper$1$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcn/haorui/sdk/adsail_ad/draw/HRDrawRootView$OnVisibilityChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper$1;->onADLoaded(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper$1;

.field public final synthetic val$adView:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper$1;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper$1$1;->this$1:Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper$1;

    iput-object p2, p0, Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper$1$1;->val$adView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVisibility(I)V
    .locals 2

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper$1$1;->val$adView:Landroid/view/View;

    instance-of v1, v0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    if-eqz v1, :cond_1

    check-cast v0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    if-nez p1, :cond_0

    invoke-virtual {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->resume()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->pause()V

    :cond_1
    :goto_0
    return-void
.end method
