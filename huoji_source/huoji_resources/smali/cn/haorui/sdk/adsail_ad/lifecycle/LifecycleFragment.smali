.class public Lcn/haorui/sdk/adsail_ad/lifecycle/LifecycleFragment;
.super Landroid/app/Fragment;
.source ""


# static fields
.field private static final Fragment_TAG:Ljava/lang/String; = "LifecycleFragment"


# instance fields
.field private lifecycleListener:Lcn/haorui/sdk/adsail_ad/lifecycle/LifecycleListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method public static createLifecycleListenerFragment(Landroid/app/Activity;)Lcn/haorui/sdk/adsail_ad/lifecycle/LifecycleFragment;
    .locals 1

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-static {p0, v0}, Lcn/haorui/sdk/adsail_ad/lifecycle/LifecycleFragment;->getLifecycleListenerFragment(Landroid/app/Activity;Landroid/app/FragmentManager;)Lcn/haorui/sdk/adsail_ad/lifecycle/LifecycleFragment;

    move-result-object p0

    return-object p0
.end method

.method private static getLifecycleListenerFragment(Landroid/app/Activity;Landroid/app/FragmentManager;)Lcn/haorui/sdk/adsail_ad/lifecycle/LifecycleFragment;
    .locals 2

    const-string v0, "LifecycleFragment"

    invoke-virtual {p1, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcn/haorui/sdk/adsail_ad/lifecycle/LifecycleFragment;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result p0

    if-nez p0, :cond_0

    new-instance v1, Lcn/haorui/sdk/adsail_ad/lifecycle/LifecycleFragment;

    invoke-direct {v1}, Lcn/haorui/sdk/adsail_ad/lifecycle/LifecycleFragment;-><init>()V

    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p0

    invoke-virtual {p0, v1, v0}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_0
    return-object v1
.end method


# virtual methods
.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/lifecycle/LifecycleFragment;->lifecycleListener:Lcn/haorui/sdk/adsail_ad/lifecycle/LifecycleListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcn/haorui/sdk/adsail_ad/lifecycle/LifecycleListener;->onDestroy()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/lifecycle/LifecycleFragment;->lifecycleListener:Lcn/haorui/sdk/adsail_ad/lifecycle/LifecycleListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcn/haorui/sdk/adsail_ad/lifecycle/LifecycleListener;->onPause()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/lifecycle/LifecycleFragment;->lifecycleListener:Lcn/haorui/sdk/adsail_ad/lifecycle/LifecycleListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcn/haorui/sdk/adsail_ad/lifecycle/LifecycleListener;->onResume()V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/lifecycle/LifecycleFragment;->lifecycleListener:Lcn/haorui/sdk/adsail_ad/lifecycle/LifecycleListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcn/haorui/sdk/adsail_ad/lifecycle/LifecycleListener;->onStart()V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/lifecycle/LifecycleFragment;->lifecycleListener:Lcn/haorui/sdk/adsail_ad/lifecycle/LifecycleListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcn/haorui/sdk/adsail_ad/lifecycle/LifecycleListener;->onStop()V

    :cond_0
    return-void
.end method

.method public setLifecycleListener(Lcn/haorui/sdk/adsail_ad/lifecycle/LifecycleListener;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/adsail_ad/lifecycle/LifecycleFragment;->lifecycleListener:Lcn/haorui/sdk/adsail_ad/lifecycle/LifecycleListener;

    return-void
.end method
