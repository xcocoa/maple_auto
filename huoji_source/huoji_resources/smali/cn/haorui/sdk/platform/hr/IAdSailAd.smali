.class public interface abstract Lcn/haorui/sdk/platform/hr/IAdSailAd;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcn/haorui/sdk/core/ad/IAd;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcn/haorui/sdk/core/loader/InteractionListener;",
        ">",
        "Ljava/lang/Object;",
        "Lcn/haorui/sdk/core/ad/IAd<",
        "TT;>;"
    }
.end annotation


# virtual methods
.method public abstract getAdSlot()Lcn/haorui/sdk/core/ad/AdSlot;
.end method

.method public abstract getAdType()Lcn/haorui/sdk/core/ad/AdType;
.end method

.method public abstract getContext()Landroid/content/Context;
.end method

.method public abstract getInteractionType()I
.end method
