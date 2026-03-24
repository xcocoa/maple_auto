.class public interface abstract Lcn/haorui/sdk/core/ad/media/NativeMediaAdData;
.super Ljava/lang/Object;
.source ""


# virtual methods
.method public abstract bindView(Landroid/view/ViewGroup;Z)V
.end method

.method public abstract getAdPatternType()I
.end method

.method public abstract getCurrentPosition()I
.end method

.method public abstract getDesc()Ljava/lang/String;
.end method

.method public abstract getDuration()I
.end method

.method public abstract getECPM()I
.end method

.method public abstract getIconUrl()Ljava/lang/String;
.end method

.method public abstract getImgList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getImgUrl()Ljava/lang/String;
.end method

.method public abstract getProgress()I
.end method

.method public abstract getTitle()Ljava/lang/String;
.end method

.method public abstract isPlaying()Z
.end method

.method public abstract onClicked(Landroid/view/View;)V
.end method

.method public abstract onExposured(Landroid/view/View;)V
.end method

.method public abstract onScroll(ILandroid/view/View;)V
.end method

.method public abstract play()V
.end method

.method public abstract preLoadVideo()V
.end method

.method public abstract resume()V
.end method

.method public abstract setMediaListener(Lcn/haorui/sdk/core/ad/media/NativeMediaAdMediaListener;)V
.end method

.method public abstract stop()V
.end method
