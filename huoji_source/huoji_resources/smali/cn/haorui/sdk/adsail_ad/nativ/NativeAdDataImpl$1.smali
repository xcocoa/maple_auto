.class public Lcn/haorui/sdk/adsail_ad/nativ/NativeAdDataImpl$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/haorui/sdk/adsail_ad/nativ/NativeAdDataImpl;->bindAdToView(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/util/List;Lcn/haorui/sdk/adsail_ad/nativ/NativeAdInteractionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdDataImpl;

.field public final synthetic val$adInteractionListener:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdInteractionListener;


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/adsail_ad/nativ/NativeAdDataImpl;Lcn/haorui/sdk/adsail_ad/nativ/NativeAdInteractionListener;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdDataImpl$1;->this$0:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdDataImpl;

    iput-object p2, p0, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdDataImpl$1;->val$adInteractionListener:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdInteractionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdDataImpl$1;->this$0:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdDataImpl;

    invoke-static {p1}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdDataImpl;->access$000(Lcn/haorui/sdk/adsail_ad/nativ/NativeAdDataImpl;)Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdDataImpl$1;->val$adInteractionListener:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdInteractionListener;

    invoke-interface {p1}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdInteractionListener;->onAdClicked()V

    :cond_0
    return-void
.end method
