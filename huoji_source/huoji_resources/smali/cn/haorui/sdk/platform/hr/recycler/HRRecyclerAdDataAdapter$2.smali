.class public Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;->startVideo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter$2;->this$0:Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter$2;->this$0:Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;

    invoke-static {v0}, Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;->access$200(Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;)Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter$2;->this$0:Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;

    invoke-static {v0}, Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;->access$200(Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;)Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;

    move-result-object v0

    invoke-interface {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;->getMediaView()Lcn/haorui/sdk/adsail_ad/MediaView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter$2;->this$0:Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;

    invoke-static {v0}, Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;->access$200(Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;)Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;

    move-result-object v0

    invoke-interface {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;->getMediaView()Lcn/haorui/sdk/adsail_ad/MediaView;

    move-result-object v0

    invoke-interface {v0}, Lcn/haorui/sdk/adsail_ad/MediaView;->start()V

    :cond_0
    return-void
.end method
