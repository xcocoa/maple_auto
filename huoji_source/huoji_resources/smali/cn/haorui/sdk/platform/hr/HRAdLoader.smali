.class public abstract Lcn/haorui/sdk/platform/hr/HRAdLoader;
.super Lcn/haorui/sdk/platform/BasePlatformLoader;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcn/haorui/sdk/core/ad/AdSlot;",
        "Loader:Lcn/haorui/sdk/core/loader/b;",
        "LoaderListener::Lcn/haorui/sdk/core/loader/IAdLoadListener;",
        ">",
        "Lcn/haorui/sdk/platform/BasePlatformLoader<",
        "T",
        "Loader;",
        "T",
        "LoaderListener;",
        ">;"
    }
.end annotation


# instance fields
.field public adSlot:Lcn/haorui/sdk/core/ad/AdSlot;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/core/loader/b;Lcn/haorui/sdk/core/ad/AdSlot;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(T",
            "Loader;",
            "TT;)V"
        }
    .end annotation

    new-instance v0, Lcn/haorui/sdk/core/domain/SdkAdInfo;

    invoke-direct {v0}, Lcn/haorui/sdk/core/domain/SdkAdInfo;-><init>()V

    invoke-direct {p0, p1, v0}, Lcn/haorui/sdk/platform/BasePlatformLoader;-><init>(Lcn/haorui/sdk/core/loader/b;Lcn/haorui/sdk/core/domain/SdkAdInfo;)V

    iput-object p2, p0, Lcn/haorui/sdk/platform/hr/HRAdLoader;->adSlot:Lcn/haorui/sdk/core/ad/AdSlot;

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 0

    return-void
.end method

.method public getAdSlot()Lcn/haorui/sdk/core/ad/AdSlot;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/HRAdLoader;->adSlot:Lcn/haorui/sdk/core/ad/AdSlot;

    return-object v0
.end method
