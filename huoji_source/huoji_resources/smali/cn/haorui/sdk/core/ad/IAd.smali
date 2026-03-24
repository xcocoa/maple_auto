.class public interface abstract Lcn/haorui/sdk/core/ad/IAd;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcn/haorui/sdk/core/loader/InteractionListener;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract getAdView()Landroid/view/View;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract getData()Lcn/haorui/sdk/core/utils/ResultBean;
.end method

.method public abstract getInteractionListener()Lcn/haorui/sdk/core/loader/InteractionListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public abstract getTouchData()Lcn/haorui/sdk/core/ad/TouchData;
.end method

.method public abstract isAdValid()Z
.end method

.method public abstract setAdView(Landroid/view/View;)V
.end method

.method public abstract setInteractionListener(Lcn/haorui/sdk/core/loader/InteractionListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method
