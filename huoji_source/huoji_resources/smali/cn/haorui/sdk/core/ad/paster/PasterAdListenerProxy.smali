.class public Lcn/haorui/sdk/core/ad/paster/PasterAdListenerProxy;
.super Lcn/haorui/sdk/core/loader/a;
.source ""

# interfaces
.implements Lcn/haorui/sdk/core/ad/paster/PasterAdListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/haorui/sdk/core/loader/a<",
        "Lcn/haorui/sdk/core/ad/paster/PasterAd;",
        "Lcn/haorui/sdk/core/ad/paster/PasterAdListener;",
        ">;",
        "Lcn/haorui/sdk/core/ad/paster/PasterAdListener;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/core/loader/d;Lcn/haorui/sdk/core/ad/paster/PasterAdListener;)V
    .locals 0
    .param p1    # Lcn/haorui/sdk/core/loader/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcn/haorui/sdk/core/ad/paster/PasterAdListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Lcn/haorui/sdk/core/loader/a;-><init>(Lcn/haorui/sdk/core/loader/d;Lcn/haorui/sdk/core/loader/IAdLoadListener;)V

    return-void
.end method


# virtual methods
.method public onVideoComplete()V
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/loader/a;->listener:Lcn/haorui/sdk/core/loader/IAdLoadListener;

    check-cast v0, Lcn/haorui/sdk/core/ad/paster/PasterAdListener;

    invoke-interface {v0}, Lcn/haorui/sdk/core/ad/paster/PasterAdListener;->onVideoComplete()V

    return-void
.end method

.method public onVideoError()V
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/loader/a;->listener:Lcn/haorui/sdk/core/loader/IAdLoadListener;

    check-cast v0, Lcn/haorui/sdk/core/ad/paster/PasterAdListener;

    invoke-interface {v0}, Lcn/haorui/sdk/core/ad/paster/PasterAdListener;->onVideoError()V

    return-void
.end method

.method public onVideoLoaded()V
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/loader/a;->listener:Lcn/haorui/sdk/core/loader/IAdLoadListener;

    check-cast v0, Lcn/haorui/sdk/core/ad/paster/PasterAdListener;

    invoke-interface {v0}, Lcn/haorui/sdk/core/ad/paster/PasterAdListener;->onVideoLoaded()V

    return-void
.end method
