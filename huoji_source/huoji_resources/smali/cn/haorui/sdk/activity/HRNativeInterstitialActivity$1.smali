.class public Lcn/haorui/sdk/activity/HRNativeInterstitialActivity$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/haorui/sdk/activity/HRNativeInterstitialActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcn/haorui/sdk/activity/HRNativeInterstitialActivity;


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/activity/HRNativeInterstitialActivity;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/activity/HRNativeInterstitialActivity$1;->this$0:Lcn/haorui/sdk/activity/HRNativeInterstitialActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcn/haorui/sdk/activity/HRNativeInterstitialActivity$1;->this$0:Lcn/haorui/sdk/activity/HRNativeInterstitialActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    invoke-static {}, Lcn/haorui/sdk/activity/HRNativeInterstitialActivity;->access$000()Lcn/haorui/sdk/platform/BasePlatformLoader;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcn/haorui/sdk/activity/HRNativeInterstitialActivity;->access$000()Lcn/haorui/sdk/platform/BasePlatformLoader;

    move-result-object p1

    invoke-virtual {p1}, Lcn/haorui/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcn/haorui/sdk/core/loader/IAdLoadListener;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcn/haorui/sdk/activity/HRNativeInterstitialActivity;->access$000()Lcn/haorui/sdk/platform/BasePlatformLoader;

    move-result-object p1

    invoke-virtual {p1}, Lcn/haorui/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcn/haorui/sdk/core/loader/IAdLoadListener;

    move-result-object p1

    invoke-interface {p1}, Lcn/haorui/sdk/core/loader/IAdLoadListener;->onAdClosed()V

    :cond_0
    return-void
.end method
