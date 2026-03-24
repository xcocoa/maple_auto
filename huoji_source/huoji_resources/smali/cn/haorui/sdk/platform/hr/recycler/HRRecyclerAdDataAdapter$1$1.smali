.class public Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter$1$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcn/haorui/sdk/core/loader/g$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter$1;->onPreDraw()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter$1;


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter$1;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter$1$1;->this$1:Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShake()V
    .locals 2

    sget-object v0, Lcn/haorui/sdk/core/loader/g$c;->a:Lcn/haorui/sdk/core/loader/g;

    iget-object v1, p0, Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter$1$1;->this$1:Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter$1;

    iget-object v1, v1, Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter$1;->this$0:Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;

    invoke-static {v1}, Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;->access$300(Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/haorui/sdk/core/loader/g;->a(I)V

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter$1$1;->this$1:Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter$1;

    iget-object v0, v0, Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter$1;->this$0:Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;

    invoke-static {v0}, Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;->access$400(Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;)Lcn/haorui/sdk/platform/hr/recycler/HRInteractionListenerAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter$1$1;->this$1:Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter$1;

    iget-object v0, v0, Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter$1;->this$0:Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;

    invoke-static {v0}, Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;->access$400(Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;)Lcn/haorui/sdk/platform/hr/recycler/HRInteractionListenerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcn/haorui/sdk/platform/hr/recycler/HRInteractionListenerAdapter;->onAdClicked()V

    :cond_0
    return-void
.end method
