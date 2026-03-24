.class public Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;->initEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView$4;->this$0:Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView$4;->this$0:Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;

    invoke-static {p1}, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;->access$000(Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;)Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;

    move-result-object p1

    invoke-virtual {p1}, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView$4;->this$0:Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;

    invoke-virtual {p1}, Lcn/haorui/sdk/adsail_ad/reward/FullScreenMediaView;->pause()V

    :cond_0
    return-void
.end method
