.class public Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcn/haorui/sdk/core/ad/recycler/RecyclerAdMediaListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->showVideoStyle(Landroid/content/Context;Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean;IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter$5;->this$0:Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoCompleted()V
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter$5;->this$0:Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;

    invoke-static {v0}, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->access$500(Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;)Lcn/haorui/sdk/core/ad/recycler/ExpressMediaListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter$5;->this$0:Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;

    invoke-static {v0}, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->access$500(Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;)Lcn/haorui/sdk/core/ad/recycler/ExpressMediaListener;

    move-result-object v0

    invoke-interface {v0}, Lcn/haorui/sdk/core/ad/recycler/ExpressMediaListener;->onVideoCompleted()V

    :cond_0
    return-void
.end method

.method public onVideoError()V
    .locals 3

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter$5;->this$0:Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;

    invoke-static {v0}, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->access$500(Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;)Lcn/haorui/sdk/core/ad/recycler/ExpressMediaListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter$5;->this$0:Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;

    invoke-static {v0}, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->access$500(Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;)Lcn/haorui/sdk/core/ad/recycler/ExpressMediaListener;

    move-result-object v0

    const/4 v1, -0x1

    const-string v2, "\u89c6\u9891\u52a0\u8f7d\u51fa\u9519"

    invoke-interface {v0, v1, v2}, Lcn/haorui/sdk/core/ad/recycler/ExpressMediaListener;->onVideoError(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onVideoLoaded()V
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter$5;->this$0:Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;

    invoke-static {v0}, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->access$500(Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;)Lcn/haorui/sdk/core/ad/recycler/ExpressMediaListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter$5;->this$0:Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;

    invoke-static {v0}, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->access$500(Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;)Lcn/haorui/sdk/core/ad/recycler/ExpressMediaListener;

    move-result-object v0

    invoke-interface {v0}, Lcn/haorui/sdk/core/ad/recycler/ExpressMediaListener;->onVideoLoaded()V

    :cond_0
    return-void
.end method

.method public onVideoPause()V
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter$5;->this$0:Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;

    invoke-static {v0}, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->access$500(Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;)Lcn/haorui/sdk/core/ad/recycler/ExpressMediaListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter$5;->this$0:Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;

    invoke-static {v0}, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->access$500(Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;)Lcn/haorui/sdk/core/ad/recycler/ExpressMediaListener;

    move-result-object v0

    invoke-interface {v0}, Lcn/haorui/sdk/core/ad/recycler/ExpressMediaListener;->onVideoPause()V

    :cond_0
    return-void
.end method

.method public onVideoResume()V
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter$5;->this$0:Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;

    invoke-static {v0}, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->access$500(Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;)Lcn/haorui/sdk/core/ad/recycler/ExpressMediaListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter$5;->this$0:Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;

    invoke-static {v0}, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->access$500(Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;)Lcn/haorui/sdk/core/ad/recycler/ExpressMediaListener;

    move-result-object v0

    invoke-interface {v0}, Lcn/haorui/sdk/core/ad/recycler/ExpressMediaListener;->onVideoResume()V

    :cond_0
    return-void
.end method

.method public onVideoStart()V
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter$5;->this$0:Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;

    invoke-static {v0}, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->access$500(Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;)Lcn/haorui/sdk/core/ad/recycler/ExpressMediaListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter$5;->this$0:Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;

    invoke-static {v0}, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->access$500(Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;)Lcn/haorui/sdk/core/ad/recycler/ExpressMediaListener;

    move-result-object v0

    invoke-interface {v0}, Lcn/haorui/sdk/core/ad/recycler/ExpressMediaListener;->onVideoStart()V

    :cond_0
    return-void
.end method
