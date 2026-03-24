.class public Lcn/haorui/sdk/core/ad/media/NativeMediaAdListenerProxy;
.super Lcn/haorui/sdk/core/loader/a;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/haorui/sdk/core/loader/a<",
        "Ljava/util/List<",
        "Lcn/haorui/sdk/core/ad/media/NativeMediaAdData;",
        ">;",
        "Lcn/haorui/sdk/core/ad/media/NativeMediaAdListener;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/core/loader/d;Lcn/haorui/sdk/core/ad/media/NativeMediaAdListener;)V
    .locals 0
    .param p1    # Lcn/haorui/sdk/core/loader/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcn/haorui/sdk/core/ad/media/NativeMediaAdListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Lcn/haorui/sdk/core/loader/a;-><init>(Lcn/haorui/sdk/core/loader/d;Lcn/haorui/sdk/core/loader/IAdLoadListener;)V

    return-void
.end method
