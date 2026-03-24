.class public Lcn/haorui/sdk/activity/HRNativeInterstitialActivity$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/haorui/sdk/activity/HRNativeInterstitialActivity;->showStartShakeImage()V
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

    iput-object p1, p0, Lcn/haorui/sdk/activity/HRNativeInterstitialActivity$5;->this$0:Lcn/haorui/sdk/activity/HRNativeInterstitialActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcn/haorui/sdk/activity/HRNativeInterstitialActivity$5;->this$0:Lcn/haorui/sdk/activity/HRNativeInterstitialActivity;

    invoke-static {v0}, Lcn/haorui/sdk/activity/HRNativeInterstitialActivity;->access$600(Lcn/haorui/sdk/activity/HRNativeInterstitialActivity;)Lcn/haorui/sdk/core/view/gif/GifImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcn/haorui/sdk/core/view/gif/GifImageView;->clear()V

    iget-object v0, p0, Lcn/haorui/sdk/activity/HRNativeInterstitialActivity$5;->this$0:Lcn/haorui/sdk/activity/HRNativeInterstitialActivity;

    invoke-static {v0}, Lcn/haorui/sdk/activity/HRNativeInterstitialActivity;->access$600(Lcn/haorui/sdk/activity/HRNativeInterstitialActivity;)Lcn/haorui/sdk/core/view/gif/GifImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
