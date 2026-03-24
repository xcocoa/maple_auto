.class public interface abstract Lcn/haorui/sdk/core/ad/draw/IDrawAd;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcn/haorui/sdk/core/ad/IAd;


# virtual methods
.method public abstract bindAdToView(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Ljava/util/List;Lcn/haorui/sdk/core/ad/recycler/RecylcerAdInteractionListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Lcn/haorui/sdk/core/ad/recycler/RecylcerAdInteractionListener;",
            ")V"
        }
    .end annotation
.end method

.method public abstract destroy()V
.end method

.method public abstract getAdLogo()Landroid/graphics/Bitmap;
.end method

.method public abstract getCurrentPosition()J
.end method

.method public abstract getDescription()Ljava/lang/String;
.end method

.method public abstract getDrawType()I
.end method

.method public abstract getDuration()J
.end method

.method public abstract getIconUrl()Ljava/lang/String;
.end method

.method public abstract getImageMode()I
.end method

.method public abstract getImageUrl()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getInteractionType()I
.end method

.method public abstract getSource()Ljava/lang/String;
.end method

.method public abstract getTitle()Ljava/lang/String;
.end method

.method public abstract isPlaying()Z
.end method

.method public abstract isShowEndFrame()Z
.end method

.method public abstract pause()V
.end method

.method public abstract resume()V
.end method

.method public abstract setActivityForDownloadApp(Landroid/app/Activity;)V
.end method

.method public abstract setCanClickVideo(Z)V
.end method

.method public abstract setCanInterruptVideoPlay(Z)V
.end method

.method public abstract setOnDrawVideoListener(Lcn/haorui/sdk/core/ad/draw/DrawAd$IDrawVideoListener;)V
.end method

.method public abstract setPauseIcon(Landroid/graphics/Bitmap;I)V
.end method

.method public abstract setVideoMute(Z)V
.end method

.method public abstract showAd(Landroid/app/Activity;Landroid/view/ViewGroup;)V
.end method

.method public abstract showAd(Landroid/view/ViewGroup;)V
.end method

.method public abstract stop()V
.end method
