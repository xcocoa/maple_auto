.class public Lcn/haorui/sdk/core/domain/HRAdInfo;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/haorui/sdk/core/domain/HRAdInfo$PermissionBean;,
        Lcn/haorui/sdk/core/domain/HRAdInfo$DClickData;
    }
.end annotation


# instance fields
.field private abt_group_id:Ljava/lang/String;

.field private act_type:I

.field private action_text:Ljava/lang/String;

.field private ad_type:I

.field private ader_id:Ljava/lang/String;

.field private all_timeout:J

.field private app_feature:Ljava/lang/String;

.field private app_intro:Ljava/lang/String;

.field private app_intro_url:Ljava/lang/String;

.field private app_name:Ljava/lang/String;

.field private app_permission:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/haorui/sdk/core/domain/HRAdInfo$PermissionBean;",
            ">;"
        }
    .end annotation
.end field

.field private app_permission_url:Ljava/lang/String;

.field private app_privacy:Ljava/lang/String;

.field private app_size:Ljava/lang/String;

.field private app_ver:Ljava/lang/String;

.field private big_group:Ljava/lang/String;

.field private cache:I

.field private cat:Ljava/lang/String;

.field private cbc:I

.field private cid:Ljava/lang/String;

.field private clickUrl:[Ljava/lang/String;

.field private clickable_range:Ljava/lang/Integer;

.field private clickid:Ljava/lang/String;

.field private clk_area:Ljava/lang/String;

.field private clk_type:I

.field private close_btn:I

.field private comments:Ljava/lang/Integer;

.field private content:Ljava/lang/String;

.field private creative_type:Ljava/lang/Integer;

.field private dUrl:[Ljava/lang/String;

.field private dclk:Lcn/haorui/sdk/core/domain/HRAdInfo$DClickData;

.field private deep_link:Ljava/lang/String;

.field private developer:Ljava/lang/String;

.field private direct_market:I

.field private dn_active:[Ljava/lang/String;

.field private dn_inst_start:[Ljava/lang/String;

.field private dn_inst_succ:[Ljava/lang/String;

.field private dn_start:[Ljava/lang/String;

.field private dn_succ:[Ljava/lang/String;

.field private down_num:Ljava/lang/Integer;

.field private dp_fail:[Ljava/lang/String;

.field private dp_start:[Ljava/lang/String;

.field private dp_succ:[Ljava/lang/String;

.field private drawing:I

.field private ecpm:I

.field private errorUrl:[Ljava/lang/String;

.field private expire_timestamp:I

.field private fpool_id:Ljava/lang/String;

.field private from:Ljava/lang/String;

.field private from_id:Ljava/lang/String;

.field private from_logo:Ljava/lang/String;

.field private hasAdSailAd:Z

.field private height:Ljava/lang/Integer;

.field private icon:Ljava/lang/String;

.field private icon_title:Ljava/lang/String;

.field private insert_style:I

.field private isUsed:Z

.field private is_eyes:I

.field private layout:Lcn/haorui/sdk/core/domain/LayoutBean;

.field private loadNum:I

.field private loadedTime:J

.field private monitorUrl:[Ljava/lang/String;

.field private once_timeout:J

.field private package_name:Ljava/lang/String;

.field private payment_types:Ljava/lang/String;

.field private pid:Ljava/lang/String;

.field private power_count:I

.field private power_delay:I

.field private power_index:I

.field private power_type:I

.field private priority:I

.field private privacy_agreement:Ljava/lang/String;

.field private req_id:Ljava/lang/String;

.field private responUrl:[Ljava/lang/String;

.field private rstUrl:[Ljava/lang/String;

.field private s_code:Ljava/lang/String;

.field private s_ext:Ljava/lang/String;

.field private score:Ljava/lang/Float;

.field private sdk:[Lcn/haorui/sdk/core/domain/SdkAdInfo;

.field private sdk_monitor:Lcn/haorui/sdk/core/domain/SdkMonitor;

.field private srcUrls:[Ljava/lang/String;

.field private style_id:I

.field private target_type:Ljava/lang/Integer;

.field private title:Ljava/lang/String;

.field private videoAutoPlay:Z

.field private videoMute:Z

.field private video_complete:[Ljava/lang/String;

.field private video_cover:Ljava/lang/String;

.field private video_duration:J

.field private video_endcover:Ljava/lang/String;

.field private video_keep_time:Ljava/lang/Long;

.field private video_mute:[Ljava/lang/String;

.field private video_one_half:[Ljava/lang/String;

.field private video_one_quarter:[Ljava/lang/String;

.field private video_pause:[Ljava/lang/String;

.field private video_replay:[Ljava/lang/String;

.field private video_resume:[Ljava/lang/String;

.field private video_start:[Ljava/lang/String;

.field private video_three_quarter:[Ljava/lang/String;

.field private video_unmute:[Ljava/lang/String;

.field private width:Ljava/lang/Integer;

.field private wx_fail:[Ljava/lang/String;

.field private wx_path:Ljava/lang/String;

.field private wx_start:[Ljava/lang/String;

.field private wx_succ:[Ljava/lang/String;

.field private wx_username:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->ecpm:I

    const/4 v0, 0x3

    iput v0, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->clk_type:I

    const/4 v0, 0x2

    iput v0, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->drawing:I

    const-string v1, ""

    iput-object v1, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->fpool_id:Ljava/lang/String;

    iput-object v1, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->abt_group_id:Ljava/lang/String;

    iput v0, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->close_btn:I

    const/4 v1, 0x1

    iput v1, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->power_count:I

    const/16 v2, 0x1f4

    iput v2, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->power_delay:I

    iput-boolean v1, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->videoAutoPlay:Z

    iput v0, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->loadNum:I

    iput v0, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->act_type:I

    iput-boolean v1, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->videoMute:Z

    return-void
.end method


# virtual methods
.method public getAbtest_group_id()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->abt_group_id:Ljava/lang/String;

    return-object v0
.end method

.method public getAct_type()I
    .locals 1

    iget v0, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->act_type:I

    return v0
.end method

.method public getAction_text()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->action_text:Ljava/lang/String;

    return-object v0
.end method

.method public getAd_type()I
    .locals 1

    iget v0, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->ad_type:I

    return v0
.end method

.method public getAder_id()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->ader_id:Ljava/lang/String;

    return-object v0
.end method

.method public getAll_timeout()J
    .locals 2

    iget-wide v0, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->all_timeout:J

    return-wide v0
.end method

.method public getApp_feature()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->app_feature:Ljava/lang/String;

    return-object v0
.end method

.method public getApp_intor_url()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->app_intro_url:Ljava/lang/String;

    return-object v0
.end method

.method public getApp_intro()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->app_intro:Ljava/lang/String;

    return-object v0
.end method

.method public getApp_name()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->app_name:Ljava/lang/String;

    return-object v0
.end method

.method public getApp_permission()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/haorui/sdk/core/domain/HRAdInfo$PermissionBean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->app_permission:Ljava/util/List;

    return-object v0
.end method

.method public getApp_permission_url()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->app_permission_url:Ljava/lang/String;

    return-object v0
.end method

.method public getApp_privacy()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->app_privacy:Ljava/lang/String;

    return-object v0
.end method

.method public getApp_size()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->app_size:Ljava/lang/String;

    return-object v0
.end method

.method public getApp_ver()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->app_ver:Ljava/lang/String;

    return-object v0
.end method

.method public getBig_group()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->big_group:Ljava/lang/String;

    return-object v0
.end method

.method public getCache()I
    .locals 1

    iget v0, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->cache:I

    return v0
.end method

.method public getCacheKey()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->pid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->fpool_id:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->abt_group_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCacheScore()I
    .locals 2

    iget v0, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->priority:I

    rsub-int v0, v0, 0x3e8

    const v1, 0xf4240

    mul-int v0, v0, v1

    iget v1, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->ecpm:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getCat()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->cat:Ljava/lang/String;

    return-object v0
.end method

.method public getCbc()I
    .locals 1

    iget v0, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->cbc:I

    return v0
.end method

.method public getCid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->cid:Ljava/lang/String;

    return-object v0
.end method

.method public getClickUrl()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->clickUrl:[Ljava/lang/String;

    return-object v0
.end method

.method public getClickable_range()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->clickable_range:Ljava/lang/Integer;

    return-object v0
.end method

.method public getClickid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->clickid:Ljava/lang/String;

    return-object v0
.end method

.method public getClk_area()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->clk_area:Ljava/lang/String;

    return-object v0
.end method

.method public getClk_type()I
    .locals 1

    iget v0, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->clk_type:I

    return v0
.end method

.method public getClose_btn()I
    .locals 1

    iget v0, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->close_btn:I

    return v0
.end method

.method public getComments()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->comments:Ljava/lang/Integer;

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getCreative_type()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->creative_type:Ljava/lang/Integer;

    return-object v0
.end method

.method public getDclk()Lcn/haorui/sdk/core/domain/HRAdInfo$DClickData;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->dclk:Lcn/haorui/sdk/core/domain/HRAdInfo$DClickData;

    return-object v0
.end method

.method public getDeep_link()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->deep_link:Ljava/lang/String;

    return-object v0
.end method

.method public getDeveloper()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->developer:Ljava/lang/String;

    return-object v0
.end method

.method public getDirect_market()I
    .locals 1

    iget v0, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->direct_market:I

    return v0
.end method

.method public getDn_active()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->dn_active:[Ljava/lang/String;

    return-object v0
.end method

.method public getDn_inst_start()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->dn_inst_start:[Ljava/lang/String;

    return-object v0
.end method

.method public getDn_inst_succ()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->dn_inst_succ:[Ljava/lang/String;

    return-object v0
.end method

.method public getDn_start()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->dn_start:[Ljava/lang/String;

    return-object v0
.end method

.method public getDn_succ()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->dn_succ:[Ljava/lang/String;

    return-object v0
.end method

.method public getDown_num()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->down_num:Ljava/lang/Integer;

    return-object v0
.end method

.method public getDp_fail()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->dp_fail:[Ljava/lang/String;

    return-object v0
.end method

.method public getDp_start()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->dp_start:[Ljava/lang/String;

    return-object v0
.end method

.method public getDp_succ()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->dp_succ:[Ljava/lang/String;

    return-object v0
.end method

.method public getDrawing()I
    .locals 1

    iget v0, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->drawing:I

    return v0
.end method

.method public getEcpm()I
    .locals 1

    iget v0, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->ecpm:I

    return v0
.end method

.method public getErrorUrl()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->errorUrl:[Ljava/lang/String;

    return-object v0
.end method

.method public getExpire_timestamp()I
    .locals 1

    iget v0, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->expire_timestamp:I

    return v0
.end method

.method public getFrom()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->from:Ljava/lang/String;

    return-object v0
.end method

.method public getFrom_id()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->from_id:Ljava/lang/String;

    return-object v0
.end method

.method public getFrom_logo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->from_logo:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->height:Ljava/lang/Integer;

    return-object v0
.end method

.method public getIcon()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->icon:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon_title()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->icon_title:Ljava/lang/String;

    return-object v0
.end method

.method public getInsert_style()I
    .locals 1

    iget v0, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->insert_style:I

    return v0
.end method

.method public getIs_eyes()I
    .locals 1

    iget v0, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->is_eyes:I

    return v0
.end method

.method public getLayout()Lcn/haorui/sdk/core/domain/LayoutBean;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->layout:Lcn/haorui/sdk/core/domain/LayoutBean;

    return-object v0
.end method

.method public getLoadNum()I
    .locals 1

    iget v0, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->loadNum:I

    return v0
.end method

.method public getLoadedTime()J
    .locals 2

    iget-wide v0, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->loadedTime:J

    return-wide v0
.end method

.method public getMonitorUrl()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->monitorUrl:[Ljava/lang/String;

    return-object v0
.end method

.method public getOnce_timeout()J
    .locals 2

    iget-wide v0, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->once_timeout:J

    return-wide v0
.end method

.method public getPackage_name()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->package_name:Ljava/lang/String;

    return-object v0
.end method

.method public getPayment_types()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->payment_types:Ljava/lang/String;

    return-object v0
.end method

.method public getPid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->pid:Ljava/lang/String;

    return-object v0
.end method

.method public getPower_count()I
    .locals 1

    iget v0, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->power_count:I

    return v0
.end method

.method public getPower_delay()I
    .locals 1

    iget v0, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->power_delay:I

    return v0
.end method

.method public getPower_index()I
    .locals 1

    iget v0, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->power_index:I

    return v0
.end method

.method public getPower_type()I
    .locals 1

    iget v0, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->power_type:I

    return v0
.end method

.method public getPriority()I
    .locals 1

    iget v0, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->priority:I

    return v0
.end method

.method public getPrivacy_agreement()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->privacy_agreement:Ljava/lang/String;

    return-object v0
.end method

.method public getReq_id()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->req_id:Ljava/lang/String;

    return-object v0
.end method

.method public getResponUrl()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->responUrl:[Ljava/lang/String;

    return-object v0
.end method

.method public getRstUrl()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->rstUrl:[Ljava/lang/String;

    return-object v0
.end method

.method public getS_code()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->s_code:Ljava/lang/String;

    return-object v0
.end method

.method public getS_ext()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->s_ext:Ljava/lang/String;

    return-object v0
.end method

.method public getScore()Ljava/lang/Float;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->score:Ljava/lang/Float;

    return-object v0
.end method

.method public getSdk()[Lcn/haorui/sdk/core/domain/SdkAdInfo;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->sdk:[Lcn/haorui/sdk/core/domain/SdkAdInfo;

    return-object v0
.end method

.method public getSdk_monitor()Lcn/haorui/sdk/core/domain/SdkMonitor;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->sdk_monitor:Lcn/haorui/sdk/core/domain/SdkMonitor;

    return-object v0
.end method

.method public getSrcUrls()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->srcUrls:[Ljava/lang/String;

    return-object v0
.end method

.method public getStrategy_group_id()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->fpool_id:Ljava/lang/String;

    return-object v0
.end method

.method public getStyle_id()I
    .locals 1

    iget v0, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->style_id:I

    return v0
.end method

.method public getTarget_type()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->target_type:Ljava/lang/Integer;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getVideo_complete()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->video_complete:[Ljava/lang/String;

    return-object v0
.end method

.method public getVideo_cover()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->video_cover:Ljava/lang/String;

    return-object v0
.end method

.method public getVideo_duration()J
    .locals 2

    iget-wide v0, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->video_duration:J

    return-wide v0
.end method

.method public getVideo_endcover()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->video_endcover:Ljava/lang/String;

    return-object v0
.end method

.method public getVideo_keep_time()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->video_keep_time:Ljava/lang/Long;

    return-object v0
.end method

.method public getVideo_mute()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->video_mute:[Ljava/lang/String;

    return-object v0
.end method

.method public getVideo_one_half()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->video_one_half:[Ljava/lang/String;

    return-object v0
.end method

.method public getVideo_one_quarter()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->video_one_quarter:[Ljava/lang/String;

    return-object v0
.end method

.method public getVideo_pause()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->video_pause:[Ljava/lang/String;

    return-object v0
.end method

.method public getVideo_replay()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->video_replay:[Ljava/lang/String;

    return-object v0
.end method

.method public getVideo_resume()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->video_resume:[Ljava/lang/String;

    return-object v0
.end method

.method public getVideo_start()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->video_start:[Ljava/lang/String;

    return-object v0
.end method

.method public getVideo_three_quarter()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->video_three_quarter:[Ljava/lang/String;

    return-object v0
.end method

.method public getVideo_unmute()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->video_unmute:[Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->width:Ljava/lang/Integer;

    return-object v0
.end method

.method public getWx_fail()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->wx_fail:[Ljava/lang/String;

    return-object v0
.end method

.method public getWx_path()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->wx_path:Ljava/lang/String;

    return-object v0
.end method

.method public getWx_start()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->wx_start:[Ljava/lang/String;

    return-object v0
.end method

.method public getWx_succ()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->wx_succ:[Ljava/lang/String;

    return-object v0
.end method

.method public getWx_username()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->wx_username:Ljava/lang/String;

    return-object v0
.end method

.method public getdUrl()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->dUrl:[Ljava/lang/String;

    return-object v0
.end method

.method public isHasAdSailAd()Z
    .locals 1

    iget-boolean v0, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->hasAdSailAd:Z

    return v0
.end method

.method public isUsed()Z
    .locals 1

    iget-boolean v0, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->isUsed:Z

    return v0
.end method

.method public isVideoAutoPlay()Z
    .locals 1

    iget-boolean v0, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->videoAutoPlay:Z

    return v0
.end method

.method public isVideoMute()Z
    .locals 1

    iget-boolean v0, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->videoMute:Z

    return v0
.end method

.method public setAbtest_group_id(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->abt_group_id:Ljava/lang/String;

    return-void
.end method

.method public setAct_type(I)V
    .locals 0

    iput p1, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->act_type:I

    return-void
.end method

.method public setAction_text(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->action_text:Ljava/lang/String;

    return-void
.end method

.method public setAd_type(I)V
    .locals 0

    iput p1, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->ad_type:I

    return-void
.end method

.method public setAder_id(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->ader_id:Ljava/lang/String;

    return-void
.end method

.method public setAll_timeout(J)V
    .locals 0

    iput-wide p1, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->all_timeout:J

    return-void
.end method

.method public setApp_feature(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->app_feature:Ljava/lang/String;

    return-void
.end method

.method public setApp_intor_url(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->app_intro_url:Ljava/lang/String;

    return-void
.end method

.method public setApp_intro(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->app_intro:Ljava/lang/String;

    return-void
.end method

.method public setApp_name(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->app_name:Ljava/lang/String;

    return-void
.end method

.method public setApp_permission(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/haorui/sdk/core/domain/HRAdInfo$PermissionBean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->app_permission:Ljava/util/List;

    return-void
.end method

.method public setApp_permission_url(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->app_permission_url:Ljava/lang/String;

    return-void
.end method

.method public setApp_privacy(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->app_privacy:Ljava/lang/String;

    return-void
.end method

.method public setApp_size(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->app_size:Ljava/lang/String;

    return-void
.end method

.method public setApp_ver(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->app_ver:Ljava/lang/String;

    return-void
.end method

.method public setBig_group(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->big_group:Ljava/lang/String;

    return-void
.end method

.method public setCache(I)V
    .locals 0

    iput p1, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->cache:I

    return-void
.end method

.method public setCat(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->cat:Ljava/lang/String;

    return-void
.end method

.method public setCbc(I)V
    .locals 0

    iput p1, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->cbc:I

    return-void
.end method

.method public setCid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->cid:Ljava/lang/String;

    return-void
.end method

.method public setClickUrl([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->clickUrl:[Ljava/lang/String;

    return-void
.end method

.method public setClickable_range(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->clickable_range:Ljava/lang/Integer;

    return-void
.end method

.method public setClickid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->clickid:Ljava/lang/String;

    return-void
.end method

.method public setClk_area(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->clk_area:Ljava/lang/String;

    return-void
.end method

.method public setClk_type(I)V
    .locals 0

    iput p1, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->clk_type:I

    return-void
.end method

.method public setClose_btn(I)V
    .locals 0

    iput p1, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->close_btn:I

    return-void
.end method

.method public setComments(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->comments:Ljava/lang/Integer;

    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->content:Ljava/lang/String;

    return-void
.end method

.method public setCreative_type(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->creative_type:Ljava/lang/Integer;

    return-void
.end method

.method public setDclk(Lcn/haorui/sdk/core/domain/HRAdInfo$DClickData;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->dclk:Lcn/haorui/sdk/core/domain/HRAdInfo$DClickData;

    return-void
.end method

.method public setDeep_link(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->deep_link:Ljava/lang/String;

    return-void
.end method

.method public setDeveloper(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->developer:Ljava/lang/String;

    return-void
.end method

.method public setDirect_market(I)V
    .locals 0

    iput p1, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->direct_market:I

    return-void
.end method

.method public setDn_active([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->dn_active:[Ljava/lang/String;

    return-void
.end method

.method public setDn_inst_start([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->dn_inst_start:[Ljava/lang/String;

    return-void
.end method

.method public setDn_inst_succ([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->dn_inst_succ:[Ljava/lang/String;

    return-void
.end method

.method public setDn_start([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->dn_start:[Ljava/lang/String;

    return-void
.end method

.method public setDn_succ([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->dn_succ:[Ljava/lang/String;

    return-void
.end method

.method public setDown_num(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->down_num:Ljava/lang/Integer;

    return-void
.end method

.method public setDp_fail([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->dp_fail:[Ljava/lang/String;

    return-void
.end method

.method public setDp_start([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->dp_start:[Ljava/lang/String;

    return-void
.end method

.method public setDp_succ([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->dp_succ:[Ljava/lang/String;

    return-void
.end method

.method public setDrawing(I)V
    .locals 0

    iput p1, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->drawing:I

    return-void
.end method

.method public setDrawing(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    iput p1, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->drawing:I

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->drawing:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setECpm(Ljava/lang/String;)V
    .locals 0

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->ecpm:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public setEcpm(I)V
    .locals 0

    iput p1, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->ecpm:I

    return-void
.end method

.method public setErrorUrl([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->errorUrl:[Ljava/lang/String;

    return-void
.end method

.method public setExpire_timestamp(I)V
    .locals 0

    iput p1, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->expire_timestamp:I

    return-void
.end method

.method public setFrom(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->from:Ljava/lang/String;

    return-void
.end method

.method public setFrom_id(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->from_id:Ljava/lang/String;

    return-void
.end method

.method public setFrom_logo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->from_logo:Ljava/lang/String;

    return-void
.end method

.method public setHasAdSailAd(Z)V
    .locals 0

    iput-boolean p1, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->hasAdSailAd:Z

    return-void
.end method

.method public setHeight(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->height:Ljava/lang/Integer;

    return-void
.end method

.method public setIcon(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->icon:Ljava/lang/String;

    return-void
.end method

.method public setIcon_title(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->icon_title:Ljava/lang/String;

    return-void
.end method

.method public setInsert_style(I)V
    .locals 0

    iput p1, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->insert_style:I

    return-void
.end method

.method public setIs_eyes(I)V
    .locals 0

    iput p1, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->is_eyes:I

    return-void
.end method

.method public setLayout(Lcn/haorui/sdk/core/domain/LayoutBean;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->layout:Lcn/haorui/sdk/core/domain/LayoutBean;

    return-void
.end method

.method public setLoadNum(I)V
    .locals 0

    iput p1, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->loadNum:I

    return-void
.end method

.method public setLoadedTime(J)V
    .locals 0

    iput-wide p1, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->loadedTime:J

    return-void
.end method

.method public setMonitorUrl([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->monitorUrl:[Ljava/lang/String;

    return-void
.end method

.method public setOnce_timeout(J)V
    .locals 0

    iput-wide p1, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->once_timeout:J

    return-void
.end method

.method public setPackage_name(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->package_name:Ljava/lang/String;

    return-void
.end method

.method public setPayment_types(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->payment_types:Ljava/lang/String;

    return-void
.end method

.method public setPid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->pid:Ljava/lang/String;

    return-void
.end method

.method public setPower_count(I)V
    .locals 0

    iput p1, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->power_count:I

    return-void
.end method

.method public setPower_delay(I)V
    .locals 0

    iput p1, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->power_delay:I

    return-void
.end method

.method public setPower_index(I)V
    .locals 0

    iput p1, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->power_index:I

    return-void
.end method

.method public setPower_type(I)V
    .locals 0

    iput p1, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->power_type:I

    return-void
.end method

.method public setPriority(I)V
    .locals 0

    iput p1, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->priority:I

    return-void
.end method

.method public setPrivacy_agreement(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->privacy_agreement:Ljava/lang/String;

    return-void
.end method

.method public setReq_id(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->req_id:Ljava/lang/String;

    return-void
.end method

.method public setResponUrl([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->responUrl:[Ljava/lang/String;

    return-void
.end method

.method public setRstUrl([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->rstUrl:[Ljava/lang/String;

    return-void
.end method

.method public setS_code(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->s_code:Ljava/lang/String;

    return-void
.end method

.method public setS_ext(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->s_ext:Ljava/lang/String;

    return-void
.end method

.method public setScore(Ljava/lang/Float;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->score:Ljava/lang/Float;

    return-void
.end method

.method public setSdk([Lcn/haorui/sdk/core/domain/SdkAdInfo;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->sdk:[Lcn/haorui/sdk/core/domain/SdkAdInfo;

    return-void
.end method

.method public setSdk_monitor(Lcn/haorui/sdk/core/domain/SdkMonitor;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->sdk_monitor:Lcn/haorui/sdk/core/domain/SdkMonitor;

    return-void
.end method

.method public setSrcUrls([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->srcUrls:[Ljava/lang/String;

    return-void
.end method

.method public setStrategy_group_id(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->fpool_id:Ljava/lang/String;

    return-void
.end method

.method public setStyle_id(I)V
    .locals 0

    iput p1, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->style_id:I

    return-void
.end method

.method public setTarget_type(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->target_type:Ljava/lang/Integer;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->title:Ljava/lang/String;

    return-void
.end method

.method public setUsed(Z)V
    .locals 0

    iput-boolean p1, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->isUsed:Z

    return-void
.end method

.method public setVideoAutoPlay(Z)V
    .locals 0

    iput-boolean p1, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->videoAutoPlay:Z

    return-void
.end method

.method public setVideoMute(Z)V
    .locals 0

    iput-boolean p1, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->videoMute:Z

    return-void
.end method

.method public setVideo_complete([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->video_complete:[Ljava/lang/String;

    return-void
.end method

.method public setVideo_cover(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->video_cover:Ljava/lang/String;

    return-void
.end method

.method public setVideo_duration(J)V
    .locals 0

    iput-wide p1, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->video_duration:J

    return-void
.end method

.method public setVideo_endcover(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->video_endcover:Ljava/lang/String;

    return-void
.end method

.method public setVideo_keep_time(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->video_keep_time:Ljava/lang/Long;

    return-void
.end method

.method public setVideo_mute([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->video_mute:[Ljava/lang/String;

    return-void
.end method

.method public setVideo_one_half([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->video_one_half:[Ljava/lang/String;

    return-void
.end method

.method public setVideo_one_quarter([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->video_one_quarter:[Ljava/lang/String;

    return-void
.end method

.method public setVideo_pause([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->video_pause:[Ljava/lang/String;

    return-void
.end method

.method public setVideo_replay([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->video_replay:[Ljava/lang/String;

    return-void
.end method

.method public setVideo_resume([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->video_resume:[Ljava/lang/String;

    return-void
.end method

.method public setVideo_start([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->video_start:[Ljava/lang/String;

    return-void
.end method

.method public setVideo_three_quarter([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->video_three_quarter:[Ljava/lang/String;

    return-void
.end method

.method public setVideo_unmute([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->video_unmute:[Ljava/lang/String;

    return-void
.end method

.method public setWidth(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->width:Ljava/lang/Integer;

    return-void
.end method

.method public setWx_fail([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->wx_fail:[Ljava/lang/String;

    return-void
.end method

.method public setWx_path(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->wx_path:Ljava/lang/String;

    return-void
.end method

.method public setWx_start([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->wx_start:[Ljava/lang/String;

    return-void
.end method

.method public setWx_succ([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->wx_succ:[Ljava/lang/String;

    return-void
.end method

.method public setWx_username(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->wx_username:Ljava/lang/String;

    return-void
.end method

.method public setdUrl([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/domain/HRAdInfo;->dUrl:[Ljava/lang/String;

    return-void
.end method
