.class public Lcom/anythink/core/activity/AnyThinkGdprAuthActivity;
.super Landroid/app/Activity;
.source ""


# static fields
.field public static mCallback:Lcom/anythink/core/api/ATGDPRAuthCallback;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lcom/anythink/core/activity/component/PrivacyPolicyView;

.field public c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anythink/core/activity/AnyThinkGdprAuthActivity;->c:Z

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    iget-boolean v0, p0, Lcom/anythink/core/activity/AnyThinkGdprAuthActivity;->c:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/anythink/core/common/h;->a()Lcom/anythink/core/common/h;

    invoke-static {}, Lcom/anythink/core/common/h;->l()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/core/activity/AnyThinkGdprAuthActivity;->a:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 p1, 0x6

    goto :goto_0

    :cond_0
    const/4 p1, 0x7

    :goto_0
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :try_start_0
    new-instance p1, Lcom/anythink/core/activity/component/PrivacyPolicyView;

    invoke-direct {p1, p0}, Lcom/anythink/core/activity/component/PrivacyPolicyView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/anythink/core/activity/AnyThinkGdprAuthActivity;->b:Lcom/anythink/core/activity/component/PrivacyPolicyView;

    new-instance v0, Lcom/anythink/core/activity/AnyThinkGdprAuthActivity$1;

    invoke-direct {v0, p0}, Lcom/anythink/core/activity/AnyThinkGdprAuthActivity$1;-><init>(Lcom/anythink/core/activity/AnyThinkGdprAuthActivity;)V

    invoke-virtual {p1, v0}, Lcom/anythink/core/activity/component/PrivacyPolicyView;->setResultCallbackListener(Lcom/anythink/core/activity/component/PrivacyPolicyView$a;)V

    iget-object p1, p0, Lcom/anythink/core/activity/AnyThinkGdprAuthActivity;->b:Lcom/anythink/core/activity/component/PrivacyPolicyView;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/anythink/core/activity/AnyThinkGdprAuthActivity;->b:Lcom/anythink/core/activity/component/PrivacyPolicyView;

    iget-object v0, p0, Lcom/anythink/core/activity/AnyThinkGdprAuthActivity;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/anythink/core/activity/component/PrivacyPolicyView;->loadPolicyUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/activity/AnyThinkGdprAuthActivity;->b:Lcom/anythink/core/activity/component/PrivacyPolicyView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/core/activity/component/PrivacyPolicyView;->destory()V

    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/anythink/core/activity/AnyThinkGdprAuthActivity;->mCallback:Lcom/anythink/core/api/ATGDPRAuthCallback;

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method
