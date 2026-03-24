.class public Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot;
.super Lcn/haorui/sdk/core/ad/BaseAdSlot;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot$InterstitialBuilder;
    }
.end annotation


# instance fields
.field public actionText:Ljava/lang/String;

.field private height:I

.field private insert_style:I

.field public title:Ljava/lang/String;

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcn/haorui/sdk/core/ad/BaseAdSlot;-><init>()V

    return-void
.end method

.method public static synthetic access$002(Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot;I)I
    .locals 0

    iput p1, p0, Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot;->width:I

    return p1
.end method

.method public static synthetic access$102(Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot;I)I
    .locals 0

    iput p1, p0, Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot;->height:I

    return p1
.end method

.method public static synthetic access$202(Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot;I)I
    .locals 0

    iput p1, p0, Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot;->insert_style:I

    return p1
.end method


# virtual methods
.method public getActionText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot;->actionText:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot;->height:I

    return v0
.end method

.method public getInsert_style()I
    .locals 1

    iget v0, p0, Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot;->insert_style:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot;->width:I

    return v0
.end method
