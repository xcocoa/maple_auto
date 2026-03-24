.class public Lcn/haorui/sdk/adsail_ad/AdNative$9;
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

.field public final synthetic val$msJumpBtn:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/adsail_ad/AdNative;Lcn/haorui/sdk/adsail_ad/splash/HRSplashRootView;Landroid/widget/TextView;Lz2/o000;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/adsail_ad/AdNative$9;->this$0:Lcn/haorui/sdk/adsail_ad/AdNative;

    iput-object p2, p0, Lcn/haorui/sdk/adsail_ad/AdNative$9;->val$adRoot:Lcn/haorui/sdk/adsail_ad/splash/HRSplashRootView;

    iput-object p3, p0, Lcn/haorui/sdk/adsail_ad/AdNative$9;->val$msJumpBtn:Landroid/widget/TextView;

    iput-object p4, p0, Lcn/haorui/sdk/adsail_ad/AdNative$9;->val$aQuery:Lz2/o000;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/AdNative$9;->val$adRoot:Lcn/haorui/sdk/adsail_ad/splash/HRSplashRootView;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v0

    iget-object v1, p0, Lcn/haorui/sdk/adsail_ad/AdNative$9;->val$adRoot:Lcn/haorui/sdk/adsail_ad/splash/HRSplashRootView;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcn/haorui/sdk/adsail_ad/AdNative$9;->val$msJumpBtn:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    int-to-double v3, v0

    const-wide v5, 0x3fb999999999999aL    # 0.1

    mul-double v3, v3, v5

    double-to-int v0, v3

    iput v0, v2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    int-to-double v0, v1

    const-wide v3, 0x3fefae147ae147aeL    # 0.99

    mul-double v0, v0, v3

    double-to-int v0, v0

    iput v0, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    const/4 v0, -0x2

    iput v0, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/AdNative$9;->val$msJumpBtn:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/AdNative$9;->val$aQuery:Lz2/o000;

    sget v1, Lcn/haorui/sdk/R$id;->adsail_jump_btn:I

    invoke-virtual {v0, v1}, Lz2/o000O000;->o00oO0o(I)Lz2/o000O000;

    move-result-object v0

    check-cast v0, Lz2/o000;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lz2/o000O000;->o000o000(I)Lz2/o000O000;

    return-void
.end method
