.class public Lcn/haorui/sdk/adsail_ad/lifecycle/LifecycleFragmentV4;
.super Landroidx/fragment/app/Fragment;
.source ""


# static fields
.field private static final Fragment_TAG:Ljava/lang/String; = "LifecycleFragment_V4"


# instance fields
.field private lifecycleListener:Lcn/haorui/sdk/adsail_ad/lifecycle/LifecycleListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method public static createLifecycleListenerFragment(Landroidx/fragment/app/FragmentActivity;)Lcn/haorui/sdk/adsail_ad/lifecycle/LifecycleFragmentV4;
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-static {p0, v0}, Lcn/haorui/sdk/adsail_ad/lifecycle/LifecycleFragmentV4;->getLifecycleListenerFragment(Landroidx/fragment/app/FragmentActivity;Landroidx/fragment/app/FragmentManager;)Lcn/haorui/sdk/adsail_ad/lifecycle/LifecycleFragmentV4;

    move-result-object p0

    return-object p0
.end method

.method private static getLifecycleListenerFragment(Landroidx/fragment/app/FragmentActivity;Landroidx/fragment/app/FragmentManager;)Lcn/haorui/sdk/adsail_ad/lifecycle/LifecycleFragmentV4;
    .locals 2

    const-string v0, "LifecycleFragment_V4"

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    check-cast v1, Lcn/haorui/sdk/adsail_ad/lifecycle/LifecycleFragmentV4;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result p0

    if-nez p0, :cond_0

    new-instance v1, Lcn/haorui/sdk/adsail_ad/lifecycle/LifecycleFragmentV4;

    invoke-direct {v1}, Lcn/haorui/sdk/adsail_ad/lifecycle/LifecycleFragmentV4;-><init>()V

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    invoke-virtual {p0, v1, v0}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_0
    return-object v1
.end method


# virtual methods
.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/lifecycle/LifecycleFragmentV4;->lifecycleListener:Lcn/haorui/sdk/adsail_ad/lifecycle/LifecycleListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcn/haorui/sdk/adsail_ad/lifecycle/LifecycleListener;->onDestroy()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/lifecycle/LifecycleFragmentV4;->lifecycleListener:Lcn/haorui/sdk/adsail_ad/lifecycle/LifecycleListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcn/haorui/sdk/adsail_ad/lifecycle/LifecycleListener;->onPause()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/lifecycle/LifecycleFragmentV4;->lifecycleListener:Lcn/haorui/sdk/adsail_ad/lifecycle/LifecycleListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcn/haorui/sdk/adsail_ad/lifecycle/LifecycleListener;->onResume()V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/lifecycle/LifecycleFragmentV4;->lifecycleListener:Lcn/haorui/sdk/adsail_ad/lifecycle/LifecycleListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcn/haorui/sdk/adsail_ad/lifecycle/LifecycleListener;->onStart()V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/lifecycle/LifecycleFragmentV4;->lifecycleListener:Lcn/haorui/sdk/adsail_ad/lifecycle/LifecycleListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcn/haorui/sdk/adsail_ad/lifecycle/LifecycleListener;->onStop()V

    :cond_0
    return-void
.end method

.method public setLifecycleListener(Lcn/haorui/sdk/adsail_ad/lifecycle/LifecycleListener;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/adsail_ad/lifecycle/LifecycleFragmentV4;->lifecycleListener:Lcn/haorui/sdk/adsail_ad/lifecycle/LifecycleListener;

    return-void
.end method
