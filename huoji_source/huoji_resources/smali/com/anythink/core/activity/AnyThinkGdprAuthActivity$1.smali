.class public final Lcom/anythink/core/activity/AnyThinkGdprAuthActivity$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/core/activity/component/PrivacyPolicyView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/activity/AnyThinkGdprAuthActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/core/activity/AnyThinkGdprAuthActivity;


# direct methods
.method public constructor <init>(Lcom/anythink/core/activity/AnyThinkGdprAuthActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/core/activity/AnyThinkGdprAuthActivity$1;->a:Lcom/anythink/core/activity/AnyThinkGdprAuthActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLevelSelect(I)V
    .locals 1

    sget-object v0, Lcom/anythink/core/activity/AnyThinkGdprAuthActivity;->mCallback:Lcom/anythink/core/api/ATGDPRAuthCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/anythink/core/api/ATGDPRAuthCallback;->onAuthResult(I)V

    const/4 p1, 0x0

    sput-object p1, Lcom/anythink/core/activity/AnyThinkGdprAuthActivity;->mCallback:Lcom/anythink/core/api/ATGDPRAuthCallback;

    :cond_0
    iget-object p1, p0, Lcom/anythink/core/activity/AnyThinkGdprAuthActivity$1;->a:Lcom/anythink/core/activity/AnyThinkGdprAuthActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final onPageLoadFail()V
    .locals 2

    iget-object v0, p0, Lcom/anythink/core/activity/AnyThinkGdprAuthActivity$1;->a:Lcom/anythink/core/activity/AnyThinkGdprAuthActivity;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/anythink/core/activity/AnyThinkGdprAuthActivity;->c:Z

    sget-object v0, Lcom/anythink/core/activity/AnyThinkGdprAuthActivity;->mCallback:Lcom/anythink/core/api/ATGDPRAuthCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/anythink/core/api/ATGDPRAuthCallback;->onPageLoadFail()V

    :cond_0
    return-void
.end method

.method public final onPageLoadSuccess()V
    .locals 2

    iget-object v0, p0, Lcom/anythink/core/activity/AnyThinkGdprAuthActivity$1;->a:Lcom/anythink/core/activity/AnyThinkGdprAuthActivity;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/anythink/core/activity/AnyThinkGdprAuthActivity;->c:Z

    return-void
.end method
