.class public Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcn/haorui/sdk/core/view/TouchAdContainer$OnWindownEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->bindAdToView(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/util/List;Lcn/haorui/sdk/core/ad/recycler/RecylcerAdInteractionListener;)V
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

    iput-object p1, p0, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter$2;->this$0:Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 0

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    sget-object v0, Lcn/haorui/sdk/core/loader/g$c;->a:Lcn/haorui/sdk/core/loader/g;

    iget-object v1, p0, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter$2;->this$0:Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;

    invoke-static {v1}, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->access$300(Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/haorui/sdk/core/loader/g;->a(I)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    if-nez p1, :cond_0

    sget-object p1, Lcn/haorui/sdk/core/loader/g$c;->a:Lcn/haorui/sdk/core/loader/g;

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter$2;->this$0:Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;

    invoke-static {v0}, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->access$300(Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;)I

    move-result v0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    sget-object p1, Lcn/haorui/sdk/core/loader/g$c;->a:Lcn/haorui/sdk/core/loader/g;

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter$2;->this$0:Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;

    invoke-static {v0}, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->access$300(Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;)I

    move-result v0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p1, v0, v1}, Lcn/haorui/sdk/core/loader/g;->a(IZ)V

    return-void
.end method
