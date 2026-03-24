.class public Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper;
.super Lcn/haorui/sdk/platform/hr/HRAdLoader;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/haorui/sdk/platform/hr/HRAdLoader<",
        "Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;",
        "Lcn/haorui/sdk/core/ad/paster/PasterAdLoader;",
        "Lcn/haorui/sdk/core/ad/paster/PasterAdListener;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AdSailPasterAdWrapper"


# instance fields
.field private adNative:Lcn/haorui/sdk/adsail_ad/AdNative;

.field private containerView:Landroid/view/ViewGroup;

.field private hasExposed:Z

.field private hasloaded:Z


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/core/ad/paster/PasterAdLoader;Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;Landroid/view/ViewGroup;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/haorui/sdk/platform/hr/HRAdLoader;-><init>(Lcn/haorui/sdk/core/loader/b;Lcn/haorui/sdk/core/ad/AdSlot;)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper;->hasExposed:Z

    iput-boolean p2, p0, Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper;->hasloaded:Z

    new-instance p2, Lcn/haorui/sdk/adsail_ad/AdNative;

    invoke-virtual {p1}, Lcn/haorui/sdk/core/loader/b;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1}, Lcn/haorui/sdk/adsail_ad/AdNative;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper;->adNative:Lcn/haorui/sdk/adsail_ad/AdNative;

    iput-object p3, p0, Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper;->containerView:Landroid/view/ViewGroup;

    return-void
.end method

.method public static synthetic access$000(Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper;->containerView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public static synthetic access$100(Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper;)Lcn/haorui/sdk/core/ad/AdSlot;
    .locals 0

    iget-object p0, p0, Lcn/haorui/sdk/platform/hr/HRAdLoader;->adSlot:Lcn/haorui/sdk/core/ad/AdSlot;

    return-object p0
.end method

.method public static synthetic access$1000(Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper;)Lcn/haorui/sdk/core/ad/AdSlot;
    .locals 0

    iget-object p0, p0, Lcn/haorui/sdk/platform/hr/HRAdLoader;->adSlot:Lcn/haorui/sdk/core/ad/AdSlot;

    return-object p0
.end method

.method public static synthetic access$1100(Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper;)Lcn/haorui/sdk/core/ad/AdSlot;
    .locals 0

    iget-object p0, p0, Lcn/haorui/sdk/platform/hr/HRAdLoader;->adSlot:Lcn/haorui/sdk/core/ad/AdSlot;

    return-object p0
.end method

.method public static synthetic access$200(Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper;)Lcn/haorui/sdk/core/ad/AdSlot;
    .locals 0

    iget-object p0, p0, Lcn/haorui/sdk/platform/hr/HRAdLoader;->adSlot:Lcn/haorui/sdk/core/ad/AdSlot;

    return-object p0
.end method

.method public static synthetic access$300(Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper;)Lcn/haorui/sdk/core/ad/AdSlot;
    .locals 0

    iget-object p0, p0, Lcn/haorui/sdk/platform/hr/HRAdLoader;->adSlot:Lcn/haorui/sdk/core/ad/AdSlot;

    return-object p0
.end method

.method public static synthetic access$400(Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper;)Lcn/haorui/sdk/core/ad/AdSlot;
    .locals 0

    iget-object p0, p0, Lcn/haorui/sdk/platform/hr/HRAdLoader;->adSlot:Lcn/haorui/sdk/core/ad/AdSlot;

    return-object p0
.end method

.method public static synthetic access$500(Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper;)Z
    .locals 0

    iget-boolean p0, p0, Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper;->hasloaded:Z

    return p0
.end method

.method public static synthetic access$502(Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper;->hasloaded:Z

    return p1
.end method

.method public static synthetic access$600(Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper;)V
    .locals 0

    invoke-direct {p0}, Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper;->clear()V

    return-void
.end method

.method public static synthetic access$700(Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper;)Z
    .locals 0

    iget-boolean p0, p0, Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper;->hasExposed:Z

    return p0
.end method

.method public static synthetic access$702(Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper;->hasExposed:Z

    return p1
.end method

.method public static synthetic access$800(Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper;)Lcn/haorui/sdk/core/ad/AdSlot;
    .locals 0

    iget-object p0, p0, Lcn/haorui/sdk/platform/hr/HRAdLoader;->adSlot:Lcn/haorui/sdk/core/ad/AdSlot;

    return-object p0
.end method

.method public static synthetic access$900(Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper;)Lcn/haorui/sdk/core/ad/AdSlot;
    .locals 0

    iget-object p0, p0, Lcn/haorui/sdk/platform/hr/HRAdLoader;->adSlot:Lcn/haorui/sdk/core/ad/AdSlot;

    return-object p0
.end method

.method private clear()V
    .locals 2

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper;->containerView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    invoke-super {p0}, Lcn/haorui/sdk/platform/hr/HRAdLoader;->destroy()V

    invoke-direct {p0}, Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper;->clear()V

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper;->containerView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper;->containerView:Landroid/view/ViewGroup;

    :cond_0
    return-void
.end method

.method public loadAd()V
    .locals 3

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper;->adNative:Lcn/haorui/sdk/adsail_ad/AdNative;

    iget-object v1, p0, Lcn/haorui/sdk/platform/hr/HRAdLoader;->adSlot:Lcn/haorui/sdk/core/ad/AdSlot;

    check-cast v1, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    new-instance v2, Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper$1;

    invoke-direct {v2, p0}, Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper$1;-><init>(Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper;)V

    invoke-virtual {v0, v1, v2}, Lcn/haorui/sdk/adsail_ad/AdNative;->loadPasterAd(Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;Lcn/haorui/sdk/adsail_ad/nativ/INativeAdListener;)V

    return-void
.end method
