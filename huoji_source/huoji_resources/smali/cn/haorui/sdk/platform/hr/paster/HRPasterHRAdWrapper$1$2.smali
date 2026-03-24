.class public Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper$1$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcn/haorui/sdk/core/ad/recycler/RecyclerAdMediaListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper$1;


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper$1;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper$1$2;->this$1:Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoCompleted()V
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper$1$2;->this$1:Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper$1;

    iget-object v0, v0, Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper$1;->this$0:Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper;

    invoke-static {v0}, Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper;->access$600(Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper;)V

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper$1$2;->this$1:Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper$1;

    iget-object v0, v0, Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper$1;->this$0:Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper;

    invoke-virtual {v0}, Lcn/haorui/sdk/platform/BasePlatformLoader;->getAdLoader()Lcn/haorui/sdk/core/loader/b;

    move-result-object v0

    check-cast v0, Lcn/haorui/sdk/core/ad/paster/PasterAdLoader;

    invoke-virtual {v0}, Lcn/haorui/sdk/core/loader/b;->getLoaderListener()Lcn/haorui/sdk/core/loader/IAdLoadListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper$1$2;->this$1:Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper$1;

    iget-object v0, v0, Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper$1;->this$0:Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper;

    invoke-virtual {v0}, Lcn/haorui/sdk/platform/BasePlatformLoader;->getAdLoader()Lcn/haorui/sdk/core/loader/b;

    move-result-object v0

    check-cast v0, Lcn/haorui/sdk/core/ad/paster/PasterAdLoader;

    invoke-virtual {v0}, Lcn/haorui/sdk/core/loader/b;->getLoaderListener()Lcn/haorui/sdk/core/loader/IAdLoadListener;

    move-result-object v0

    check-cast v0, Lcn/haorui/sdk/core/ad/paster/PasterAdListener;

    invoke-interface {v0}, Lcn/haorui/sdk/core/ad/paster/PasterAdListener;->onVideoComplete()V

    :cond_0
    return-void
.end method

.method public onVideoError()V
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper$1$2;->this$1:Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper$1;

    iget-object v0, v0, Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper$1;->this$0:Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper;

    invoke-static {v0}, Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper;->access$600(Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper;)V

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper$1$2;->this$1:Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper$1;

    iget-object v0, v0, Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper$1;->this$0:Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper;

    invoke-virtual {v0}, Lcn/haorui/sdk/platform/BasePlatformLoader;->getAdLoader()Lcn/haorui/sdk/core/loader/b;

    move-result-object v0

    check-cast v0, Lcn/haorui/sdk/core/ad/paster/PasterAdLoader;

    invoke-virtual {v0}, Lcn/haorui/sdk/core/loader/b;->getLoaderListener()Lcn/haorui/sdk/core/loader/IAdLoadListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper$1$2;->this$1:Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper$1;

    iget-object v0, v0, Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper$1;->this$0:Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper;

    invoke-virtual {v0}, Lcn/haorui/sdk/platform/BasePlatformLoader;->getAdLoader()Lcn/haorui/sdk/core/loader/b;

    move-result-object v0

    check-cast v0, Lcn/haorui/sdk/core/ad/paster/PasterAdLoader;

    invoke-virtual {v0}, Lcn/haorui/sdk/core/loader/b;->getLoaderListener()Lcn/haorui/sdk/core/loader/IAdLoadListener;

    move-result-object v0

    check-cast v0, Lcn/haorui/sdk/core/ad/paster/PasterAdListener;

    invoke-interface {v0}, Lcn/haorui/sdk/core/ad/paster/PasterAdListener;->onVideoError()V

    :cond_0
    return-void
.end method

.method public onVideoLoaded()V
    .locals 2

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper$1$2;->this$1:Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper$1;

    iget-object v0, v0, Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper$1;->this$0:Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper;

    invoke-static {v0}, Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper;->access$500(Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper$1$2;->this$1:Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper$1;

    iget-object v0, v0, Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper$1;->this$0:Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper;->access$502(Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper;Z)Z

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper$1$2;->this$1:Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper$1;

    iget-object v0, v0, Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper$1;->this$0:Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper;

    invoke-virtual {v0}, Lcn/haorui/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcn/haorui/sdk/core/loader/IAdLoadListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper$1$2;->this$1:Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper$1;

    iget-object v0, v0, Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper$1;->this$0:Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper;

    invoke-virtual {v0}, Lcn/haorui/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcn/haorui/sdk/core/loader/IAdLoadListener;

    move-result-object v0

    check-cast v0, Lcn/haorui/sdk/core/ad/paster/PasterAdListener;

    invoke-interface {v0}, Lcn/haorui/sdk/core/ad/paster/PasterAdListener;->onVideoLoaded()V

    :cond_1
    return-void
.end method

.method public onVideoPause()V
    .locals 0

    return-void
.end method

.method public onVideoResume()V
    .locals 0

    return-void
.end method

.method public onVideoStart()V
    .locals 0

    return-void
.end method
