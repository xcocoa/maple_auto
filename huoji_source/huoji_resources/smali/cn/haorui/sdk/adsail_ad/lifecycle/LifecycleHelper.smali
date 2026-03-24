.class public Lcn/haorui/sdk/adsail_ad/lifecycle/LifecycleHelper;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private TAG:Ljava/lang/String;

.field private activity:Landroid/app/Activity;

.field private lifecycleFragment:Lcn/haorui/sdk/adsail_ad/lifecycle/LifecycleFragment;

.field private lifecycleFragmentV4:Lcn/haorui/sdk/adsail_ad/lifecycle/LifecycleFragmentV4;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/haorui/sdk/adsail_ad/lifecycle/LifecycleHelper;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public setActivity(Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/adsail_ad/lifecycle/LifecycleHelper;->activity:Landroid/app/Activity;

    return-void
.end method

.method public setLifecycleListener(Lcn/haorui/sdk/adsail_ad/lifecycle/LifecycleListener;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/lifecycle/LifecycleHelper;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroidx/fragment/app/FragmentActivity;

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    invoke-static {v0}, Lcn/haorui/sdk/adsail_ad/lifecycle/LifecycleFragmentV4;->createLifecycleListenerFragment(Landroidx/fragment/app/FragmentActivity;)Lcn/haorui/sdk/adsail_ad/lifecycle/LifecycleFragmentV4;

    move-result-object v0

    iput-object v0, p0, Lcn/haorui/sdk/adsail_ad/lifecycle/LifecycleHelper;->lifecycleFragmentV4:Lcn/haorui/sdk/adsail_ad/lifecycle/LifecycleFragmentV4;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcn/haorui/sdk/adsail_ad/lifecycle/LifecycleFragmentV4;->setLifecycleListener(Lcn/haorui/sdk/adsail_ad/lifecycle/LifecycleListener;)V

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcn/haorui/sdk/adsail_ad/lifecycle/LifecycleFragment;->createLifecycleListenerFragment(Landroid/app/Activity;)Lcn/haorui/sdk/adsail_ad/lifecycle/LifecycleFragment;

    move-result-object v0

    iput-object v0, p0, Lcn/haorui/sdk/adsail_ad/lifecycle/LifecycleHelper;->lifecycleFragment:Lcn/haorui/sdk/adsail_ad/lifecycle/LifecycleFragment;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcn/haorui/sdk/adsail_ad/lifecycle/LifecycleFragment;->setLifecycleListener(Lcn/haorui/sdk/adsail_ad/lifecycle/LifecycleListener;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcn/haorui/sdk/adsail_ad/lifecycle/LifecycleHelper;->TAG:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "setLifecycleListener: "

    :try_start_1
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "View Context\u975eActivity"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v0, v1}, Lcn/haorui/sdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method public unsetLifecycleListener()V
    .locals 2

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/lifecycle/LifecycleHelper;->lifecycleFragmentV4:Lcn/haorui/sdk/adsail_ad/lifecycle/LifecycleFragmentV4;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lcn/haorui/sdk/adsail_ad/lifecycle/LifecycleFragmentV4;->setLifecycleListener(Lcn/haorui/sdk/adsail_ad/lifecycle/LifecycleListener;)V

    :cond_0
    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/lifecycle/LifecycleHelper;->lifecycleFragment:Lcn/haorui/sdk/adsail_ad/lifecycle/LifecycleFragment;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Lcn/haorui/sdk/adsail_ad/lifecycle/LifecycleFragment;->setLifecycleListener(Lcn/haorui/sdk/adsail_ad/lifecycle/LifecycleListener;)V

    :cond_1
    return-void
.end method
