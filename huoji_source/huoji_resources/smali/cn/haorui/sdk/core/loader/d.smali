.class public interface abstract Lcn/haorui/sdk/core/loader/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcn/haorui/sdk/core/loader/IAdLoader;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<",
        "Loader:Lcn/haorui/sdk/core/loader/b;",
        ">",
        "Ljava/lang/Object;",
        "Lcn/haorui/sdk/core/loader/IAdLoader;"
    }
.end annotation


# virtual methods
.method public abstract getCacheAdListener()Lcn/haorui/sdk/core/loader/cache/c;
.end method

.method public abstract getConCurrentListener()Lcn/haorui/sdk/core/loader/concurrent/IConCurrentLoadListener;
.end method

.method public abstract getSdkAdInfo()Lcn/haorui/sdk/core/domain/SdkAdInfo;
.end method

.method public abstract getTag()I
.end method

.method public abstract setCacheAdListener(Lcn/haorui/sdk/core/loader/cache/c;)V
.end method

.method public abstract setConCurrentLoadListener(Lcn/haorui/sdk/core/loader/concurrent/IConCurrentLoadListener;)V
.end method

.method public abstract setGroupIndex(I)V
.end method

.method public abstract setLocalParams(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setTag(I)V
.end method
