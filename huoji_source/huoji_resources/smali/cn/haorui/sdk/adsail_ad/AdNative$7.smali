.class public Lcn/haorui/sdk/adsail_ad/AdNative$7;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/haorui/sdk/adsail_ad/AdNative;->handleSplashView(Lz2/o000;Lcn/haorui/sdk/adsail_ad/splash/HRSplashRootView;Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;Lcn/haorui/sdk/adsail_ad/splash/ISplashAdListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcn/haorui/sdk/adsail_ad/AdNative;

.field public final synthetic val$aQuery:Lz2/o000;

.field public final synthetic val$adRoot:Lcn/haorui/sdk/adsail_ad/splash/HRSplashRootView;

.field public final synthetic val$msShakeRoot:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/adsail_ad/AdNative;Lcn/haorui/sdk/adsail_ad/splash/HRSplashRootView;Landroid/widget/RelativeLayout;Lz2/o000;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/adsail_ad/AdNative$7;->this$0:Lcn/haorui/sdk/adsail_ad/AdNative;

    iput-object p2, p0, Lcn/haorui/sdk/adsail_ad/AdNative$7;->val$adRoot:Lcn/haorui/sdk/adsail_ad/splash/HRSplashRootView;

    iput-object p3, p0, Lcn/haorui/sdk/adsail_ad/AdNative$7;->val$msShakeRoot:Landroid/widget/RelativeLayout;

    iput-object p4, p0, Lcn/haorui/sdk/adsail_ad/AdNative$7;->val$aQuery:Lz2/o000;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/AdNative$7;->val$adRoot:Lcn/haorui/sdk/adsail_ad/splash/HRSplashRootView;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v0

    iget-object v1, p0, Lcn/haorui/sdk/adsail_ad/AdNative$7;->val$msShakeRoot:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    int-to-double v2, v0

    const-wide v4, 0x3fb999999999999aL    # 0.1

    mul-double v2, v2, v4

    double-to-int v0, v2

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/AdNative$7;->val$msShakeRoot:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/AdNative$7;->val$aQuery:Lz2/o000;

    sget v1, Lcn/haorui/sdk/R$id;->adsail_shakeRoot:I

    invoke-virtual {v0, v1}, Lz2/o000O000;->o00oO0o(I)Lz2/o000O000;

    move-result-object v0

    check-cast v0, Lz2/o000;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lz2/o000O000;->o000o000(I)Lz2/o000O000;

    return-void
.end method
