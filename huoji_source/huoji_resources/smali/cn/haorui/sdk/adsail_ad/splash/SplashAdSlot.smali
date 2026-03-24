.class public Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;
.super Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot$SplashBuilder;
    }
.end annotation


# instance fields
.field private adContainer:Landroid/view/ViewGroup;

.field private clk_area:Ljava/lang/String;

.field private clk_type:I

.field private is_eyes:I

.field private power_index:I

.field private power_type:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;->clk_type:I

    return-void
.end method

.method public static synthetic access$002(Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;I)I
    .locals 0

    iput p1, p0, Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;->clk_type:I

    return p1
.end method

.method public static synthetic access$1002(Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;->video_pause:[Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$102(Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;I)I
    .locals 0

    iput p1, p0, Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;->power_index:I

    return p1
.end method

.method public static synthetic access$1102(Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;->video_resume:[Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$1202(Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;->video_mute:[Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$1302(Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;->video_unmute:[Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$1402(Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;->video_replay:[Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$1502(Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;->video_cover:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$1602(Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;->video_endcover:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$1702(Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;->video_keep_time:Ljava/lang/Long;

    return-object p1
.end method

.method public static synthetic access$1802(Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;I)I
    .locals 0

    iput p1, p0, Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;->is_eyes:I

    return p1
.end method

.method public static synthetic access$202(Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;I)I
    .locals 0

    iput p1, p0, Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;->power_type:I

    return p1
.end method

.method public static synthetic access$302(Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;->clk_area:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$402(Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;->adContainer:Landroid/view/ViewGroup;

    return-object p1
.end method

.method public static synthetic access$502(Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;->video_start:[Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$602(Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;->video_one_quarter:[Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$702(Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;->video_one_half:[Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$802(Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;->video_three_quarter:[Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$902(Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;->video_complete:[Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public getAdContainer()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;->adContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getClk_area()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;->clk_area:Ljava/lang/String;

    return-object v0
.end method

.method public getClk_type()I
    .locals 1

    iget v0, p0, Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;->clk_type:I

    return v0
.end method

.method public getIs_eyes()I
    .locals 1

    iget v0, p0, Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;->is_eyes:I

    return v0
.end method

.method public getPower_index()I
    .locals 1

    iget v0, p0, Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;->power_index:I

    return v0
.end method

.method public getPower_type()I
    .locals 1

    iget v0, p0, Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;->power_type:I

    return v0
.end method

.method public setClk_type(I)V
    .locals 0

    iput p1, p0, Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;->clk_type:I

    return-void
.end method
