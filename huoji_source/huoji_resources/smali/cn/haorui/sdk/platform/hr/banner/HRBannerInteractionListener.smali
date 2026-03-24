.class public Lcn/haorui/sdk/platform/hr/banner/HRBannerInteractionListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcn/haorui/sdk/core/loader/InteractionListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "AdSailBannerInteractionListener"


# instance fields
.field private interactionListener:Lcn/haorui/sdk/core/loader/InteractionListener;

.field private nativeAd:Lcn/haorui/sdk/platform/hr/IAdSailAd;


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/platform/hr/IAdSailAd;Lcn/haorui/sdk/core/loader/InteractionListener;)V
    .locals 0
    .param p1    # Lcn/haorui/sdk/platform/hr/IAdSailAd;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/haorui/sdk/platform/hr/banner/HRBannerInteractionListener;->nativeAd:Lcn/haorui/sdk/platform/hr/IAdSailAd;

    iput-object p2, p0, Lcn/haorui/sdk/platform/hr/banner/HRBannerInteractionListener;->interactionListener:Lcn/haorui/sdk/core/loader/InteractionListener;

    return-void
.end method


# virtual methods
.method public onAdClicked()V
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/banner/HRBannerInteractionListener;->interactionListener:Lcn/haorui/sdk/core/loader/InteractionListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcn/haorui/sdk/core/loader/InteractionListener;->onAdClicked()V

    :cond_0
    return-void
.end method
