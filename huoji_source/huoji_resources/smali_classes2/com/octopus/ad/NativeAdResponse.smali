.class public interface abstract Lcom/octopus/ad/NativeAdResponse;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/octopus/ad/NativeAdResponse$b;,
        Lcom/octopus/ad/NativeAdResponse$a;
    }
.end annotation


# virtual methods
.method public abstract bindUnifiedView(Landroid/view/ViewGroup;Ljava/util/List;Lcom/octopus/ad/internal/nativead/NativeAdEventListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Lcom/octopus/ad/internal/nativead/NativeAdEventListener;",
            ")V"
        }
    .end annotation
.end method

.method public abstract bindView(Landroid/view/ViewGroup;Lcom/octopus/ad/internal/nativead/NativeAdEventListener;)V
.end method

.method public abstract destroy()V
.end method

.method public abstract getAdvertiser()Ljava/lang/String;
.end method

.method public abstract getButtonText()Ljava/lang/String;
.end method

.method public abstract getDescription()Ljava/lang/String;
.end method

.method public abstract getIcon()Landroid/graphics/Bitmap;
.end method

.method public abstract getIconUrl()Ljava/lang/String;
.end method

.method public abstract getImage()Landroid/graphics/Bitmap;
.end method

.method public abstract getImageUrl()Ljava/lang/String;
.end method

.method public abstract getImageUrls()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLandingPageUrl()Ljava/lang/String;
.end method

.method public abstract getLogo(Landroid/content/Context;)Landroid/graphics/Bitmap;
.end method

.method public abstract getLogoInfo()Lcom/octopus/ad/internal/network/ServerResponse$AdLogoInfo;
.end method

.method public abstract getLogoUrl()Ljava/lang/String;
.end method

.method public abstract getNativeAdType()Lcom/octopus/ad/NativeAdResponse$b;
.end method

.method public abstract getNativeElements()Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getNativeInfoListView()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getNetworkIdentifier()Lcom/octopus/ad/NativeAdResponse$a;
.end method

.method public abstract getPrice()I
.end method

.method public abstract getStarRating()D
.end method

.method public abstract getStore()Ljava/lang/String;
.end method

.method public abstract getTextList()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTextLogo(Landroid/content/Context;)Landroid/graphics/Bitmap;
.end method

.method public abstract getTextLogoInfo()Lcom/octopus/ad/internal/network/ServerResponse$AdLogoInfo;
.end method

.method public abstract getTextLogoUrl()Ljava/lang/String;
.end method

.method public abstract getTitle()Ljava/lang/String;
.end method

.method public abstract getVideoUrls()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hasExpired()Z
.end method

.method public abstract setIcon(Landroid/graphics/Bitmap;)V
.end method

.method public abstract setImage(Landroid/graphics/Bitmap;)V
.end method

.method public abstract setNativeInfoListView(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setTag(Ljava/lang/String;)V
.end method

.method public abstract unregisterViews()V
.end method
