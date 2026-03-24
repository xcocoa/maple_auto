.class public Lcn/haorui/sdk/adsail_ad/AdNative$12;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/haorui/sdk/adsail_ad/AdNative;->loadSplashAdOk(Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;Lcn/haorui/sdk/adsail_ad/splash/HRSplashRootView;Lcn/haorui/sdk/adsail_ad/splash/ISplashAdListener;Landroid/view/View;)Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcn/haorui/sdk/adsail_ad/AdNative;

.field public final synthetic val$onSkipListener:Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView$OnSkipListener;


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/adsail_ad/AdNative;Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView$OnSkipListener;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/adsail_ad/AdNative$12;->this$0:Lcn/haorui/sdk/adsail_ad/AdNative;

    iput-object p2, p0, Lcn/haorui/sdk/adsail_ad/AdNative$12;->val$onSkipListener:Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView$OnSkipListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcn/haorui/sdk/adsail_ad/AdNative$12;->val$onSkipListener:Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView$OnSkipListener;

    invoke-interface {p1}, Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView$OnSkipListener;->onSkip()V

    return-void
.end method
