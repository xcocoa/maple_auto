.class public Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;
.super Lcn/haorui/sdk/core/ad/BaseAdSlot;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;
    }
.end annotation


# instance fields
.field public actionText:Ljava/lang/String;

.field public clickableRange:Ljava/lang/Integer;

.field public close_btn:Ljava/lang/Integer;

.field public content:Ljava/lang/String;

.field public desc:Ljava/lang/String;

.field public fetchCount:Ljava/lang/Integer;

.field public from:Ljava/lang/String;

.field public height:I

.field public iconTitle:Ljava/lang/String;

.field public iconUrl:Ljava/lang/String;

.field private style_id:I

.field public title:Ljava/lang/String;

.field public videoUrl:Ljava/lang/String;

.field public video_complete:[Ljava/lang/String;

.field public video_cover:Ljava/lang/String;

.field private video_duration:J

.field public video_endcover:Ljava/lang/String;

.field public video_keep_time:Ljava/lang/Long;

.field public video_mute:[Ljava/lang/String;

.field public video_one_half:[Ljava/lang/String;

.field public video_one_quarter:[Ljava/lang/String;

.field public video_pause:[Ljava/lang/String;

.field public video_replay:[Ljava/lang/String;

.field public video_resume:[Ljava/lang/String;

.field public video_start:[Ljava/lang/String;

.field public video_three_quarter:[Ljava/lang/String;

.field public video_type:Ljava/lang/Integer;

.field public video_unmute:[Ljava/lang/String;

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcn/haorui/sdk/core/ad/BaseAdSlot;-><init>()V

    return-void
.end method

.method public static synthetic access$002(Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/ad/BaseAdSlot;->appName:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$102(Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;I)I
    .locals 0

    iput p1, p0, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;->style_id:I

    return p1
.end method

.method public static synthetic access$202(Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;J)J
    .locals 0

    iput-wide p1, p0, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;->video_duration:J

    return-wide p1
.end method


# virtual methods
.method public getActionText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;->actionText:Ljava/lang/String;

    return-object v0
.end method

.method public getClickableRange()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;->clickableRange:Ljava/lang/Integer;

    return-object v0
.end method

.method public getClose_btn()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;->close_btn:Ljava/lang/Integer;

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public getFetchCount()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;->fetchCount:Ljava/lang/Integer;

    return-object v0
.end method

.method public getFrom()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;->from:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;->height:I

    return v0
.end method

.method public getIconTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;->iconTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getIconUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;->iconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getStyle_id()I
    .locals 1

    iget v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;->style_id:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoType()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;->video_type:Ljava/lang/Integer;

    return-object v0
.end method

.method public getVideoUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;->videoUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getVideo_complete()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;->video_complete:[Ljava/lang/String;

    return-object v0
.end method

.method public getVideo_cover()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;->video_cover:Ljava/lang/String;

    return-object v0
.end method

.method public getVideo_duration()J
    .locals 2

    iget-wide v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;->video_duration:J

    return-wide v0
.end method

.method public getVideo_endcover()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;->video_endcover:Ljava/lang/String;

    return-object v0
.end method

.method public getVideo_keep_time()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;->video_keep_time:Ljava/lang/Long;

    return-object v0
.end method

.method public getVideo_mute()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;->video_mute:[Ljava/lang/String;

    return-object v0
.end method

.method public getVideo_one_half()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;->video_one_half:[Ljava/lang/String;

    return-object v0
.end method

.method public getVideo_one_quarter()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;->video_one_quarter:[Ljava/lang/String;

    return-object v0
.end method

.method public getVideo_pause()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;->video_pause:[Ljava/lang/String;

    return-object v0
.end method

.method public getVideo_replay()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;->video_replay:[Ljava/lang/String;

    return-object v0
.end method

.method public getVideo_resume()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;->video_resume:[Ljava/lang/String;

    return-object v0
.end method

.method public getVideo_start()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;->video_start:[Ljava/lang/String;

    return-object v0
.end method

.method public getVideo_three_quarter()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;->video_three_quarter:[Ljava/lang/String;

    return-object v0
.end method

.method public getVideo_unmute()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;->video_unmute:[Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;->width:I

    return v0
.end method

.method public setAdPatternType(I)V
    .locals 0

    iput p1, p0, Lcn/haorui/sdk/core/ad/BaseAdSlot;->adPatternType:I

    return-void
.end method

.method public setVideoUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;->videoUrl:Ljava/lang/String;

    return-void
.end method
