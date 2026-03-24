.class public Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView$1;->this$0:Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView$1;->this$0:Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;

    invoke-static {v0}, Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;->access$000(Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;)I

    move-result v1

    add-int/lit8 v1, v1, 0x64

    invoke-static {v0, v1}, Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;->access$002(Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;I)I

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView$1;->this$0:Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView$1;->this$0:Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;

    invoke-static {v0}, Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;->access$000(Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;)I

    move-result v0

    iget-object v1, p0, Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView$1;->this$0:Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;

    invoke-static {v1}, Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;->access$100(Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;)I

    move-result v1

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView$1;->this$0:Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;

    invoke-virtual {v0, v2}, Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;->stop(Z)V

    return-void

    :cond_0
    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView$1;->this$0:Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;

    invoke-static {v0}, Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;->access$100(Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;)I

    move-result v0

    iget-object v1, p0, Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView$1;->this$0:Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;

    invoke-static {v1}, Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;->access$000(Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;)I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView$1;->this$0:Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;

    invoke-static {v1}, Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;->access$300(Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;)Landroid/os/Handler;

    move-result-object v1

    iget-object v3, p0, Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView$1;->this$0:Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;

    invoke-static {v3}, Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;->access$200(Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;)Ljava/lang/Runnable;

    move-result-object v3

    const-wide/16 v4, 0x64

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v1, p0, Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView$1;->this$0:Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;

    invoke-static {v1}, Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;->access$400(Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;)Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView$OnSkipListener;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView$1;->this$0:Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;

    invoke-static {v1}, Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;->access$400(Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;)Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView$OnSkipListener;

    move-result-object v1

    int-to-long v3, v0

    invoke-interface {v1, v3, v4}, Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView$OnSkipListener;->onTick(J)V

    :cond_1
    iget-object v1, p0, Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView$1;->this$0:Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;

    invoke-static {v1}, Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;->access$100(Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;)I

    move-result v1

    iget-object v3, p0, Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView$1;->this$0:Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;

    invoke-static {v3}, Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;->access$500(Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;)I

    move-result v3

    sub-int/2addr v1, v3

    if-ge v0, v1, :cond_2

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView$1;->this$0:Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView$1;->this$0:Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;

    invoke-static {v0}, Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;->access$600(Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView$1;->this$0:Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method
