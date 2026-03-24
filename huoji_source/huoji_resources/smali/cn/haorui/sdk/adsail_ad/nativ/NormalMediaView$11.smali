.class public Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView$11;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/media/MediaPlayer$OnInfoListener;


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

    iput-object p1, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView$11;->this$0:Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 3

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView$11;->this$0:Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    invoke-static {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->access$000(Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;)Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;

    move-result-object v0

    invoke-virtual {v0}, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;->isPrepared()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/16 v0, 0x2bd

    if-eq p2, v0, :cond_2

    const/16 v0, 0x2be

    if-eq p2, v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView$11;->this$0:Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    invoke-static {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->access$1800(Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;)Lz2/o000;

    move-result-object v0

    sget v2, Lcn/haorui/sdk/R$id;->adsail_progress_loading:I

    invoke-virtual {v0, v2}, Lz2/o000O000;->o00oO0o(I)Lz2/o000O000;

    move-result-object v0

    check-cast v0, Lz2/o000;

    invoke-virtual {v0}, Lz2/o000O000;->o00Ooo()Lz2/o000O000;

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView$11;->this$0:Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    invoke-static {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->access$1400(Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "MediaPlayer.MEDIA_INFO_BUFFERING_END"

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView$11;->this$0:Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    invoke-static {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->access$1800(Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;)Lz2/o000;

    move-result-object v0

    sget v2, Lcn/haorui/sdk/R$id;->adsail_progress_loading:I

    invoke-virtual {v0, v2}, Lz2/o000O000;->o00oO0o(I)Lz2/o000O000;

    move-result-object v0

    check-cast v0, Lz2/o000;

    invoke-virtual {v0}, Lz2/o000O000;->o000o00()Lz2/o000O000;

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView$11;->this$0:Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    invoke-static {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->access$1400(Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "MediaPlayer.MEDIA_INFO_BUFFERING_START"

    :goto_0
    invoke-static {v0, v2}, Lcn/haorui/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView$11;->this$0:Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    invoke-static {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->access$2100(Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;)Landroid/media/MediaPlayer$OnInfoListener;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView$11;->this$0:Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    invoke-static {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->access$2100(Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;)Landroid/media/MediaPlayer$OnInfoListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/media/MediaPlayer$OnInfoListener;->onInfo(Landroid/media/MediaPlayer;II)Z

    :cond_3
    return v1
.end method
