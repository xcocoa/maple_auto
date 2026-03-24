.class public Lcn/haorui/sdk/adsail_ad/AdNative$20;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView$IPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/haorui/sdk/adsail_ad/AdNative;->loadRewardVideoAd(Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;Lcn/haorui/sdk/adsail_ad/nativ/INativeAdListener;Lcn/haorui/sdk/core/ad/BaseFullScreenVideoAdLoader;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcn/haorui/sdk/adsail_ad/AdNative;

.field public final synthetic val$adDatas:Ljava/util/ArrayList;

.field public final synthetic val$adListener:Lcn/haorui/sdk/adsail_ad/nativ/INativeAdListener;


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/adsail_ad/AdNative;Lcn/haorui/sdk/adsail_ad/nativ/INativeAdListener;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/adsail_ad/AdNative$20;->this$0:Lcn/haorui/sdk/adsail_ad/AdNative;

    iput-object p2, p0, Lcn/haorui/sdk/adsail_ad/AdNative$20;->val$adListener:Lcn/haorui/sdk/adsail_ad/nativ/INativeAdListener;

    iput-object p3, p0, Lcn/haorui/sdk/adsail_ad/AdNative$20;->val$adDatas:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared()V
    .locals 2

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/AdNative$20;->val$adListener:Lcn/haorui/sdk/adsail_ad/nativ/INativeAdListener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcn/haorui/sdk/adsail_ad/AdNative$20;->val$adDatas:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcn/haorui/sdk/adsail_ad/IAdListener;->onADLoaded(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
