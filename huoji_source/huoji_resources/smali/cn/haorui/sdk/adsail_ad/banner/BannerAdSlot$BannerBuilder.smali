.class public Lcn/haorui/sdk/adsail_ad/banner/BannerAdSlot$BannerBuilder;
.super Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/haorui/sdk/adsail_ad/banner/BannerAdSlot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BannerBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder<",
        "Lcn/haorui/sdk/adsail_ad/banner/BannerAdSlot$BannerBuilder;",
        "Lcn/haorui/sdk/adsail_ad/banner/BannerAdSlot;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcn/haorui/sdk/adsail_ad/banner/BannerAdSlot;


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/adsail_ad/banner/BannerAdSlot;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/adsail_ad/banner/BannerAdSlot$BannerBuilder;->this$0:Lcn/haorui/sdk/adsail_ad/banner/BannerAdSlot;

    invoke-direct {p0, p1}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;-><init>(Lcn/haorui/sdk/core/ad/BaseAdSlot;)V

    return-void
.end method


# virtual methods
.method public build()Lcn/haorui/sdk/adsail_ad/banner/BannerAdSlot;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/banner/BannerAdSlot$BannerBuilder;->this$0:Lcn/haorui/sdk/adsail_ad/banner/BannerAdSlot;

    return-object v0
.end method

.method public bridge synthetic build()Lcn/haorui/sdk/core/ad/BaseAdSlot;
    .locals 1

    invoke-virtual {p0}, Lcn/haorui/sdk/adsail_ad/banner/BannerAdSlot$BannerBuilder;->build()Lcn/haorui/sdk/adsail_ad/banner/BannerAdSlot;

    move-result-object v0

    return-object v0
.end method

.method public returnThis()Lcn/haorui/sdk/adsail_ad/banner/BannerAdSlot$BannerBuilder;
    .locals 0

    return-object p0
.end method

.method public bridge synthetic returnThis()Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;
    .locals 1

    invoke-virtual {p0}, Lcn/haorui/sdk/adsail_ad/banner/BannerAdSlot$BannerBuilder;->returnThis()Lcn/haorui/sdk/adsail_ad/banner/BannerAdSlot$BannerBuilder;

    move-result-object v0

    return-object v0
.end method
