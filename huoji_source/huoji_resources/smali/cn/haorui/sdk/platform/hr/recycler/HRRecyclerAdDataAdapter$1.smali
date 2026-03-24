.class public Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;->bindAdToView(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/util/List;Lcn/haorui/sdk/core/ad/recycler/RecylcerAdInteractionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;

.field public final synthetic val$adContainer:Landroid/view/ViewGroup;

.field public final synthetic val$context:Landroid/content/Context;

.field public final synthetic val$mClipRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;Landroid/view/ViewGroup;Landroid/graphics/Rect;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter$1;->this$0:Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;

    iput-object p2, p0, Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter$1;->val$adContainer:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter$1;->val$mClipRect:Landroid/graphics/Rect;

    iput-object p4, p0, Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 14

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter$1;->val$adContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter$1;->val$mClipRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter$1;->val$mClipRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-long v2, v0

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter$1;->val$mClipRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-long v4, v0

    mul-long v2, v2, v4

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter$1;->val$adContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    int-to-long v4, v0

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter$1;->val$adContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    int-to-long v6, v0

    mul-long v4, v4, v6

    long-to-double v2, v2

    long-to-double v4, v4

    const-wide v6, 0x3fd3333333333333L    # 0.3

    mul-double v4, v4, v6

    cmpl-double v0, v2, v4

    if-ltz v0, :cond_6

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter$1;->this$0:Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;

    invoke-static {v0}, Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;->access$000(Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter$1;->this$0:Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;

    invoke-static {v0, v1}, Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;->access$002(Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;Z)Z

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter$1;->this$0:Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;

    invoke-static {v0}, Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;->access$100(Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;)Lcn/haorui/sdk/platform/hr/recycler/HRHRAdNativeWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcn/haorui/sdk/platform/hr/recycler/HRHRAdNativeWrapper;->getHRAdListenerAdapter()Lcn/haorui/sdk/platform/hr/recycler/HRAdListenerAdapter;

    move-result-object v0

    const/4 v2, 0x2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter$1;->this$0:Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;

    invoke-static {v0}, Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;->access$200(Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;)Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;

    move-result-object v0

    invoke-interface {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;->getAdPatternType()I

    move-result v0

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter$1;->this$0:Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;

    invoke-static {v0}, Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;->access$100(Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;)Lcn/haorui/sdk/platform/hr/recycler/HRHRAdNativeWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcn/haorui/sdk/platform/hr/recycler/HRHRAdNativeWrapper;->getHRAdListenerAdapter()Lcn/haorui/sdk/platform/hr/recycler/HRAdListenerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcn/haorui/sdk/platform/hr/recycler/HRAdListenerAdapter;->onADExposure()V

    :cond_1
    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter$1;->this$0:Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;

    invoke-static {v0}, Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;->access$200(Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;)Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;

    move-result-object v0

    invoke-interface {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;->getAdSlot()Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    move-result-object v0

    invoke-virtual {v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getAct_type()I

    move-result v0

    const/4 v3, 0x4

    and-int/2addr v0, v3

    const/16 v4, 0x8

    if-eq v0, v3, :cond_2

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter$1;->this$0:Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;

    invoke-static {v0}, Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;->access$200(Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;)Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;

    move-result-object v0

    invoke-interface {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;->getAdSlot()Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    move-result-object v0

    invoke-virtual {v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getAct_type()I

    move-result v0

    and-int/2addr v0, v4

    if-ne v0, v4, :cond_5

    :cond_2
    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter$1;->this$0:Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;

    invoke-static {v0}, Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;->access$200(Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;)Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;

    move-result-object v0

    invoke-interface {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;->getAdSlot()Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    move-result-object v0

    invoke-virtual {v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getAct_type()I

    move-result v0

    and-int/2addr v0, v4

    if-ne v0, v4, :cond_3

    const/4 v7, 0x2

    goto :goto_0

    :cond_3
    const/4 v7, 0x1

    :goto_0
    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter$1;->this$0:Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;

    invoke-static {v0}, Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;->access$300(Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;)I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter$1;->this$0:Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;

    sget-object v2, Lcn/haorui/sdk/core/loader/g$c;->a:Lcn/haorui/sdk/core/loader/g;

    invoke-virtual {v2}, Lcn/haorui/sdk/core/loader/g;->b()I

    move-result v2

    invoke-static {v0, v2}, Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;->access$302(Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;I)I

    :cond_4
    sget-object v0, Lcn/haorui/sdk/core/loader/g$c;->a:Lcn/haorui/sdk/core/loader/g;

    iget-object v2, p0, Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter$1;->this$0:Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;

    invoke-static {v2}, Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;->access$200(Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;)Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;

    move-result-object v2

    invoke-interface {v2}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;->getAdSlot()Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    move-result-object v2

    invoke-virtual {v2}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getPosId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter$1;->this$0:Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;

    invoke-static {v3}, Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;->access$200(Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;)Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;

    move-result-object v3

    invoke-interface {v3}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;->getAdSlot()Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    move-result-object v3

    invoke-virtual {v3}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getLoadedTime()J

    move-result-wide v3

    iget-object v5, p0, Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter$1;->this$0:Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;

    invoke-static {v5}, Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;->access$200(Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;)Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;

    move-result-object v5

    invoke-interface {v5}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;->getAdSlot()Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    move-result-object v5

    invoke-virtual {v5}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getDclk()Lcn/haorui/sdk/core/domain/HRAdInfo$DClickData;

    move-result-object v5

    invoke-virtual {v0, v2, v3, v4, v5}, Lcn/haorui/sdk/core/loader/g;->a(Ljava/lang/String;JLcn/haorui/sdk/core/domain/HRAdInfo$DClickData;)V

    sget-object v5, Lcn/haorui/sdk/core/loader/g$c;->a:Lcn/haorui/sdk/core/loader/g;

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter$1;->this$0:Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;

    invoke-static {v0}, Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;->access$200(Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;)Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;

    move-result-object v0

    invoke-interface {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;->getAdSlot()Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    move-result-object v0

    invoke-virtual {v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getPower_index()I

    move-result v6

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter$1;->this$0:Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;

    invoke-static {v0}, Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;->access$200(Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;)Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;

    move-result-object v0

    invoke-interface {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;->getAdSlot()Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    move-result-object v0

    invoke-virtual {v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getPower_delay()I

    move-result v0

    int-to-long v8, v0

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter$1;->this$0:Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;

    invoke-static {v0}, Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;->access$200(Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;)Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;

    move-result-object v0

    invoke-interface {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;->getAdSlot()Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    move-result-object v0

    invoke-virtual {v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getPower_count()I

    move-result v10

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter$1;->this$0:Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;

    invoke-static {v0}, Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;->access$300(Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;)I

    move-result v11

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter$1;->this$0:Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;

    invoke-static {v0}, Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;->access$200(Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;)Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;

    move-result-object v0

    invoke-interface {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;->getAdSlot()Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    move-result-object v0

    invoke-virtual {v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getEcpm()I

    move-result v12

    new-instance v13, Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter$1$1;

    invoke-direct {v13, p0}, Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter$1$1;-><init>(Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter$1;)V

    invoke-virtual/range {v5 .. v13}, Lcn/haorui/sdk/core/loader/g;->a(IIJIIILcn/haorui/sdk/core/loader/g$d;)V

    sget-object v0, Lcn/haorui/sdk/core/loader/g$c;->a:Lcn/haorui/sdk/core/loader/g;

    invoke-virtual {v0, v1}, Lcn/haorui/sdk/core/loader/g;->a(Z)V

    :cond_5
    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter$1;->val$adContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_6
    return v1
.end method
