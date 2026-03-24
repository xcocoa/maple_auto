.class public Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;
.super Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RewardBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder<",
        "Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;",
        "Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;->this$0:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    invoke-direct {p0, p1}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;-><init>(Lcn/haorui/sdk/core/ad/BaseAdSlot;)V

    return-void
.end method


# virtual methods
.method public build()Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;->this$0:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    return-object v0
.end method

.method public bridge synthetic build()Lcn/haorui/sdk/core/ad/BaseAdSlot;
    .locals 1

    invoke-virtual {p0}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;->build()Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    move-result-object v0

    return-object v0
.end method

.method public returnThis()Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;
    .locals 0

    return-object p0
.end method

.method public bridge synthetic returnThis()Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;
    .locals 1

    invoke-virtual {p0}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;->returnThis()Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setActionText(Ljava/lang/String;)Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;->this$0:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    iput-object p1, v0, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;->actionText:Ljava/lang/String;

    return-object p0
.end method

.method public setAppName(Ljava/lang/String;)Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;->this$0:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    invoke-static {v0, p1}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;->access$002(Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic setAppName(Ljava/lang/String;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;->setAppName(Ljava/lang/String;)Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setClickableRange(Ljava/lang/Integer;)Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;->this$0:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    iput-object p1, v0, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;->clickableRange:Ljava/lang/Integer;

    return-object p0
.end method

.method public setCloseBtn(Ljava/lang/Integer;)Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;->this$0:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    iput-object p1, v0, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;->close_btn:Ljava/lang/Integer;

    return-object p0
.end method

.method public setContent(Ljava/lang/String;)Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;->this$0:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    iput-object p1, v0, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;->content:Ljava/lang/String;

    return-object p0
.end method

.method public setDesc(Ljava/lang/String;)Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;->this$0:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    iput-object p1, v0, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;->desc:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic setDesc(Ljava/lang/String;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;->setDesc(Ljava/lang/String;)Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setFetchCount(Ljava/lang/Integer;)Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;->this$0:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    iput-object p1, v0, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;->fetchCount:Ljava/lang/Integer;

    return-object p0
.end method

.method public setFrom(Ljava/lang/String;)Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;->this$0:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    iput-object p1, v0, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;->from:Ljava/lang/String;

    return-object p0
.end method

.method public setHeight(I)Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;->this$0:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    iput p1, v0, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;->height:I

    return-object p0
.end method

.method public setIconTitle(Ljava/lang/String;)Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;->this$0:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    iput-object p1, v0, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;->iconTitle:Ljava/lang/String;

    return-object p0
.end method

.method public setIconUrl(Ljava/lang/String;)Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;->this$0:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    iput-object p1, v0, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;->iconUrl:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic setIconUrl(Ljava/lang/String;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;->setIconUrl(Ljava/lang/String;)Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setStyleId(I)Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;->this$0:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    invoke-static {v0, p1}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;->access$102(Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;I)I

    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;->this$0:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    iput-object p1, v0, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;->title:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic setTitle(Ljava/lang/String;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;->setTitle(Ljava/lang/String;)Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setVideoDuration(J)Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;->this$0:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    invoke-static {v0, p1, p2}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;->access$202(Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;J)J

    return-object p0
.end method

.method public setVideoType(Ljava/lang/Integer;)Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;->this$0:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    iput-object p1, v0, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;->video_type:Ljava/lang/Integer;

    return-object p0
.end method

.method public setVideo_complete([Ljava/lang/String;)Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;->this$0:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    iput-object p1, v0, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;->video_complete:[Ljava/lang/String;

    return-object p0
.end method

.method public setVideo_cover(Ljava/lang/String;)Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;->this$0:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    iput-object p1, v0, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;->video_cover:Ljava/lang/String;

    return-object p0
.end method

.method public setVideo_endcover(Ljava/lang/String;)Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;->this$0:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    iput-object p1, v0, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;->video_endcover:Ljava/lang/String;

    return-object p0
.end method

.method public setVideo_keep_time(Ljava/lang/Long;)Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;->this$0:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    iput-object p1, v0, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;->video_keep_time:Ljava/lang/Long;

    return-object p0
.end method

.method public setVideo_mute([Ljava/lang/String;)Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;->this$0:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    iput-object p1, v0, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;->video_mute:[Ljava/lang/String;

    return-object p0
.end method

.method public setVideo_one_half([Ljava/lang/String;)Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;->this$0:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    iput-object p1, v0, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;->video_one_half:[Ljava/lang/String;

    return-object p0
.end method

.method public setVideo_one_quarter([Ljava/lang/String;)Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;->this$0:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    iput-object p1, v0, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;->video_one_quarter:[Ljava/lang/String;

    return-object p0
.end method

.method public setVideo_pause([Ljava/lang/String;)Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;->this$0:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    iput-object p1, v0, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;->video_pause:[Ljava/lang/String;

    return-object p0
.end method

.method public setVideo_replay([Ljava/lang/String;)Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;->this$0:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    iput-object p1, v0, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;->video_replay:[Ljava/lang/String;

    return-object p0
.end method

.method public setVideo_resume([Ljava/lang/String;)Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;->this$0:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    iput-object p1, v0, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;->video_resume:[Ljava/lang/String;

    return-object p0
.end method

.method public setVideo_start([Ljava/lang/String;)Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;->this$0:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    iput-object p1, v0, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;->video_start:[Ljava/lang/String;

    return-object p0
.end method

.method public setVideo_three_quarter([Ljava/lang/String;)Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;->this$0:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    iput-object p1, v0, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;->video_three_quarter:[Ljava/lang/String;

    return-object p0
.end method

.method public setVideo_unmute([Ljava/lang/String;)Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;->this$0:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    iput-object p1, v0, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;->video_unmute:[Ljava/lang/String;

    return-object p0
.end method

.method public setWidth(I)Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;->this$0:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    iput p1, v0, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;->width:I

    return-object p0
.end method
