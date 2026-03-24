.class public Lcn/haorui/sdk/platform/hr/image/NativeRecylcerAdInteractionListenerAdapter;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcn/haorui/sdk/core/ad/recycler/RecylcerAdInteractionListener;


# instance fields
.field private apiInteractionListener:Lcn/haorui/sdk/core/ad/image/ImageAdInteractionListener;


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/core/ad/image/ImageAdInteractionListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/haorui/sdk/platform/hr/image/NativeRecylcerAdInteractionListenerAdapter;->apiInteractionListener:Lcn/haorui/sdk/core/ad/image/ImageAdInteractionListener;

    return-void
.end method


# virtual methods
.method public onAdClicked()V
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/image/NativeRecylcerAdInteractionListenerAdapter;->apiInteractionListener:Lcn/haorui/sdk/core/ad/image/ImageAdInteractionListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcn/haorui/sdk/core/ad/image/ImageAdInteractionListener;->onAdClicked()V

    :cond_0
    return-void
.end method

.method public onAdClosed()V
    .locals 0

    return-void
.end method

.method public onAdRenderFailed()V
    .locals 0

    return-void
.end method
