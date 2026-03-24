.class public Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcn/haorui/sdk/core/ad/recycler/ExpressMediaListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader;->setExpressMediaListener(Lcom/meishu/sdk/core/ad/recycler/ExpressMediaListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader;

.field public final synthetic val$expressMediaListener:Lcom/meishu/sdk/core/ad/recycler/ExpressMediaListener;


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader;Lcom/meishu/sdk/core/ad/recycler/ExpressMediaListener;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader$4;->this$0:Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader;

    iput-object p2, p0, Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader$4;->val$expressMediaListener:Lcom/meishu/sdk/core/ad/recycler/ExpressMediaListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoCompleted()V
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader$4;->val$expressMediaListener:Lcom/meishu/sdk/core/ad/recycler/ExpressMediaListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/meishu/sdk/core/ad/recycler/ExpressMediaListener;->onVideoCompleted()V

    :cond_0
    return-void
.end method

.method public onVideoError(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader$4;->val$expressMediaListener:Lcom/meishu/sdk/core/ad/recycler/ExpressMediaListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/meishu/sdk/core/ad/recycler/ExpressMediaListener;->onVideoError(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onVideoLoaded()V
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader$4;->val$expressMediaListener:Lcom/meishu/sdk/core/ad/recycler/ExpressMediaListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/meishu/sdk/core/ad/recycler/ExpressMediaListener;->onVideoLoaded()V

    :cond_0
    return-void
.end method

.method public onVideoPause()V
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader$4;->val$expressMediaListener:Lcom/meishu/sdk/core/ad/recycler/ExpressMediaListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/meishu/sdk/core/ad/recycler/ExpressMediaListener;->onVideoPause()V

    :cond_0
    return-void
.end method

.method public onVideoResume()V
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader$4;->val$expressMediaListener:Lcom/meishu/sdk/core/ad/recycler/ExpressMediaListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/meishu/sdk/core/ad/recycler/ExpressMediaListener;->onVideoResume()V

    :cond_0
    return-void
.end method

.method public onVideoStart()V
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader$4;->val$expressMediaListener:Lcom/meishu/sdk/core/ad/recycler/ExpressMediaListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/meishu/sdk/core/ad/recycler/ExpressMediaListener;->onVideoStart()V

    :cond_0
    return-void
.end method
