.class public Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView$9;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->initEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView$9;->this$0:Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 3

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView$9;->this$0:Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    invoke-static {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->access$1400(Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MediaPlayer.onPrepared "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView$9;->this$0:Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    invoke-static {v2}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->access$1200(Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView$9;->this$0:Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/haorui/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView$9;->this$0:Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->access$1202(Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;Z)Z

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setVideoScalingMode(I)V

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView$9;->this$0:Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    invoke-static {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->access$1300(Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;)I

    move-result v0

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    iget-object p1, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView$9;->this$0:Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    invoke-static {p1}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->access$1600(Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView$9;->this$0:Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    invoke-static {p1}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->access$1700(Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;)V

    :goto_0
    iget-object p1, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView$9;->this$0:Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    invoke-static {p1}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->access$1800(Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;)Lz2/o000;

    move-result-object p1

    sget v0, Lcn/haorui/sdk/R$id;->adsail_progress_loading:I

    invoke-virtual {p1, v0}, Lz2/o000O000;->o00oO0o(I)Lz2/o000O000;

    move-result-object p1

    check-cast p1, Lz2/o000;

    invoke-virtual {p1}, Lz2/o000O000;->o00Ooo()Lz2/o000O000;

    iget-object p1, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView$9;->this$0:Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    invoke-static {p1}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->access$1900(Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;)Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView$IPreparedListener;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView$9;->this$0:Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    invoke-static {p1}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->access$1900(Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;)Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView$IPreparedListener;

    move-result-object p1

    invoke-interface {p1}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView$IPreparedListener;->onPrepared()V

    :cond_1
    iget-object p1, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView$9;->this$0:Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    invoke-static {p1}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->access$800(Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;)Lcn/haorui/sdk/adsail_ad/nativ/NativeAdMediaListener;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView$9;->this$0:Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    invoke-static {p1}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->access$800(Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;)Lcn/haorui/sdk/adsail_ad/nativ/NativeAdMediaListener;

    move-result-object p1

    invoke-interface {p1}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdMediaListener;->onVideoLoaded()V

    :cond_2
    return-void
.end method
