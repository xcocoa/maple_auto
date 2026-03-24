.class public interface abstract Lcn/haorui/sdk/adsail_ad/MediaView;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/haorui/sdk/adsail_ad/MediaView$OnVideoCompleteListener;,
        Lcn/haorui/sdk/adsail_ad/MediaView$OnVideoKeepTimeFinishListener;,
        Lcn/haorui/sdk/adsail_ad/MediaView$OnVideoLoadedListener;
    }
.end annotation


# static fields
.field public static final MEDIA_VIEW_TAG:Ljava/lang/String; = "adsail_media_view"


# virtual methods
.method public abstract addOnVideoCompleteListener(Lcn/haorui/sdk/adsail_ad/MediaView$OnVideoCompleteListener;)V
.end method

.method public abstract getParent()Landroid/view/ViewParent;
.end method

.method public abstract getVideoView()Landroid/view/View;
.end method

.method public abstract isPrepared()Z
.end method

.method public abstract mute()V
.end method

.method public abstract pause()V
.end method

.method public abstract performVideoActions()V
.end method

.method public abstract replay()V
.end method

.method public abstract resume()V
.end method

.method public abstract setNativeAdMediaListener(Lcn/haorui/sdk/adsail_ad/nativ/NativeAdMediaListener;)V
.end method

.method public abstract setOnVideoKeepTimeFinishListener(Lcn/haorui/sdk/adsail_ad/MediaView$OnVideoKeepTimeFinishListener;J)V
.end method

.method public abstract setOnVideoLoadedListener(Lcn/haorui/sdk/adsail_ad/MediaView$OnVideoLoadedListener;)V
.end method

.method public abstract setVideoPath(Ljava/lang/String;)V
.end method

.method public abstract start()V
.end method

.method public abstract unmute()V
.end method
