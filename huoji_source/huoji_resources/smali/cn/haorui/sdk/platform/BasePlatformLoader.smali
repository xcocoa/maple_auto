.class public abstract Lcn/haorui/sdk/platform/BasePlatformLoader;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcn/haorui/sdk/core/loader/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<",
        "Loader:Lcn/haorui/sdk/core/loader/b;",
        "LoaderListener::Lcn/haorui/sdk/core/loader/IAdLoadListener;",
        ">",
        "Ljava/lang/Object;",
        "Lcn/haorui/sdk/core/loader/d<",
        "T",
        "Loader;",
        ">;"
    }
.end annotation


# instance fields
.field public adLoader:Lcn/haorui/sdk/core/loader/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "T",
            "Loader;"
        }
    .end annotation
.end field

.field private cacheAdListener:Lcn/haorui/sdk/core/loader/cache/c;

.field public conCurrentListener:Lcn/haorui/sdk/core/loader/concurrent/IConCurrentLoadListener;

.field public context:Landroid/content/Context;

.field private groupIndex:I

.field private index:I

.field public loadListener:Lcn/haorui/sdk/core/loader/IAdLoadListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "T",
            "LoaderListener;"
        }
    .end annotation
.end field

.field public localParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public next:Lcn/haorui/sdk/core/loader/d;

.field public sdkAdInfo:Lcn/haorui/sdk/core/domain/SdkAdInfo;


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/core/loader/b;Lcn/haorui/sdk/core/domain/SdkAdInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(T",
            "Loader;",
            "Lcn/haorui/sdk/core/domain/SdkAdInfo;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/haorui/sdk/platform/BasePlatformLoader;->localParams:Ljava/util/Map;

    const/4 v0, -0x1

    iput v0, p0, Lcn/haorui/sdk/platform/BasePlatformLoader;->index:I

    iput-object p1, p0, Lcn/haorui/sdk/platform/BasePlatformLoader;->adLoader:Lcn/haorui/sdk/core/loader/b;

    iput-object p2, p0, Lcn/haorui/sdk/platform/BasePlatformLoader;->sdkAdInfo:Lcn/haorui/sdk/core/domain/SdkAdInfo;

    invoke-virtual {p1}, Lcn/haorui/sdk/core/loader/b;->getContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcn/haorui/sdk/platform/BasePlatformLoader;->context:Landroid/content/Context;

    invoke-virtual {p1}, Lcn/haorui/sdk/core/loader/b;->getLoaderListener()Lcn/haorui/sdk/core/loader/IAdLoadListener;

    move-result-object p1

    invoke-static {p0, p1}, Lcn/haorui/sdk/core/loader/e;->a(Lcn/haorui/sdk/core/loader/d;Lcn/haorui/sdk/core/loader/IAdLoadListener;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/core/loader/IAdLoadListener;

    iput-object p1, p0, Lcn/haorui/sdk/platform/BasePlatformLoader;->loadListener:Lcn/haorui/sdk/core/loader/IAdLoadListener;

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 0

    return-void
.end method

.method public getAdLoader()Lcn/haorui/sdk/core/loader/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()T",
            "Loader;"
        }
    .end annotation

    iget-object v0, p0, Lcn/haorui/sdk/platform/BasePlatformLoader;->adLoader:Lcn/haorui/sdk/core/loader/b;

    return-object v0
.end method

.method public getCacheAdListener()Lcn/haorui/sdk/core/loader/cache/c;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/platform/BasePlatformLoader;->cacheAdListener:Lcn/haorui/sdk/core/loader/cache/c;

    return-object v0
.end method

.method public getConCurrentListener()Lcn/haorui/sdk/core/loader/concurrent/IConCurrentLoadListener;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/platform/BasePlatformLoader;->conCurrentListener:Lcn/haorui/sdk/core/loader/concurrent/IConCurrentLoadListener;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/platform/BasePlatformLoader;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getGroupIndex()I
    .locals 1

    iget v0, p0, Lcn/haorui/sdk/platform/BasePlatformLoader;->groupIndex:I

    return v0
.end method

.method public getLoaderListener()Lcn/haorui/sdk/core/loader/IAdLoadListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()T",
            "LoaderListener;"
        }
    .end annotation

    iget-object v0, p0, Lcn/haorui/sdk/platform/BasePlatformLoader;->loadListener:Lcn/haorui/sdk/core/loader/IAdLoadListener;

    return-object v0
.end method

.method public getLocalParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcn/haorui/sdk/platform/BasePlatformLoader;->localParams:Ljava/util/Map;

    return-object v0
.end method

.method public getSdkAdInfo()Lcn/haorui/sdk/core/domain/SdkAdInfo;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/platform/BasePlatformLoader;->sdkAdInfo:Lcn/haorui/sdk/core/domain/SdkAdInfo;

    return-object v0
.end method

.method public getTag()I
    .locals 1

    iget v0, p0, Lcn/haorui/sdk/platform/BasePlatformLoader;->index:I

    return v0
.end method

.method public next()Lcn/haorui/sdk/core/loader/d;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/platform/BasePlatformLoader;->next:Lcn/haorui/sdk/core/loader/d;

    return-object v0
.end method

.method public setCacheAdListener(Lcn/haorui/sdk/core/loader/cache/c;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/platform/BasePlatformLoader;->cacheAdListener:Lcn/haorui/sdk/core/loader/cache/c;

    return-void
.end method

.method public setConCurrentLoadListener(Lcn/haorui/sdk/core/loader/concurrent/IConCurrentLoadListener;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/platform/BasePlatformLoader;->conCurrentListener:Lcn/haorui/sdk/core/loader/concurrent/IConCurrentLoadListener;

    return-void
.end method

.method public setGroupIndex(I)V
    .locals 0

    iput p1, p0, Lcn/haorui/sdk/platform/BasePlatformLoader;->groupIndex:I

    return-void
.end method

.method public setLocalParams(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcn/haorui/sdk/platform/BasePlatformLoader;->localParams:Ljava/util/Map;

    return-void
.end method

.method public setNext(Lcn/haorui/sdk/core/loader/d;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/platform/BasePlatformLoader;->next:Lcn/haorui/sdk/core/loader/d;

    return-void
.end method

.method public setTag(I)V
    .locals 0

    iput p1, p0, Lcn/haorui/sdk/platform/BasePlatformLoader;->index:I

    return-void
.end method
