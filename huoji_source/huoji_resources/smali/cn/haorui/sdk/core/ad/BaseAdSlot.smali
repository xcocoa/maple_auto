.class public Lcn/haorui/sdk/core/ad/BaseAdSlot;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcn/haorui/sdk/core/ad/AdSlot;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;
    }
.end annotation


# instance fields
.field private act_type:I

.field public adPatternType:I

.field private ad_type:I

.field private ader_id:Ljava/lang/String;

.field public appId:Ljava/lang/String;

.field public appName:Ljava/lang/String;

.field private app_feature:Ljava/lang/String;

.field private app_intor_url:Ljava/lang/String;

.field private app_intro:Ljava/lang/String;

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

.field private cat:Ljava/lang/String;

.field private cbc:I

.field private cid:Ljava/lang/String;

.field public clickUrl:[Ljava/lang/String;

.field public clickid:Ljava/lang/String;

.field private clk_type:I

.field public comments:Ljava/lang/Integer;

.field public dUrl:[Ljava/lang/String;

.field private dclk:Lcn/haorui/sdk/core/domain/HRAdInfo$DClickData;

.field public deep_link:Ljava/lang/String;

.field public desc:Ljava/lang/String;

.field private developer:Ljava/lang/String;

.field private direct_market:I

.field public dn_active:[Ljava/lang/String;

.field public dn_inst_start:[Ljava/lang/String;

.field public dn_inst_succ:[Ljava/lang/String;

.field public dn_start:[Ljava/lang/String;

.field public dn_succ:[Ljava/lang/String;

.field public downNum:Ljava/lang/Integer;

.field public dp_fail:[Ljava/lang/String;

.field public dp_start:[Ljava/lang/String;

.field public dp_succ:[Ljava/lang/String;

.field private drawing:I

.field private ecpm:I

.field private errorUrl:[Ljava/lang/String;

.field private expire_timestamp:I

.field public fromId:Ljava/lang/String;

.field public fromLogo:Ljava/lang/String;

.field private icon:Ljava/lang/String;

.field public iconUrl:Ljava/lang/String;

.field public imageUrls:[Ljava/lang/String;

.field public interactionType:I

.field private loadedTime:J

.field public monitorUrl:[Ljava/lang/String;

.field public packageName:Ljava/lang/String;

.field private payment_types:Ljava/lang/String;

.field public posId:Ljava/lang/String;

.field private power_count:I

.field private power_delay:I

.field private power_index:I

.field private privacy_agreement:Ljava/lang/String;

.field private req_id:Ljava/lang/String;

.field public responUrl:[Ljava/lang/String;

.field private s_code:Ljava/lang/String;

.field private s_ext:Ljava/lang/String;

.field public score:Ljava/lang/Float;

.field public title:Ljava/lang/String;

.field private wx_fail:[Ljava/lang/String;

.field private wx_path:Ljava/lang/String;

.field private wx_start:[Ljava/lang/String;

.field private wx_succ:[Ljava/lang/String;

.field private wx_username:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1f4

    iput v0, p0, Lcn/haorui/sdk/core/ad/BaseAdSlot;->power_delay:I

    const/4 v0, 0x1

    iput v0, p0, Lcn/haorui/sdk/core/ad/BaseAdSlot;->power_count:I

    const/4 v0, 0x3

    iput v0, p0, Lcn/haorui/sdk/core/ad/BaseAdSlot;->clk_type:I

    const/4 v0, 0x2

    iput v0, p0, Lcn/haorui/sdk/core/ad/BaseAdSlot;->drawing:I

    iput v0, p0, Lcn/haorui/sdk/core/ad/BaseAdSlot;->act_type:I

    return-void
.end method

.method public static synthetic access$002(Lcn/haorui/sdk/core/ad/BaseAdSlot;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/ad/BaseAdSlot;->icon:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$1002(Lcn/haorui/sdk/core/ad/BaseAdSlot;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/ad/BaseAdSlot;->cid:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$102(Lcn/haorui/sdk/core/ad/BaseAdSlot;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/ad/BaseAdSlot;->developer:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$1102(Lcn/haorui/sdk/core/ad/BaseAdSlot;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/ad/BaseAdSlot;->cat:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$1202(Lcn/haorui/sdk/core/ad/BaseAdSlot;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/ad/BaseAdSlot;->ader_id:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$1302(Lcn/haorui/sdk/core/ad/BaseAdSlot;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/ad/BaseAdSlot;->wx_username:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$1402(Lcn/haorui/sdk/core/ad/BaseAdSlot;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/ad/BaseAdSlot;->wx_path:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$1502(Lcn/haorui/sdk/core/ad/BaseAdSlot;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/ad/BaseAdSlot;->wx_start:[Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$1602(Lcn/haorui/sdk/core/ad/BaseAdSlot;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/ad/BaseAdSlot;->wx_succ:[Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$1702(Lcn/haorui/sdk/core/ad/BaseAdSlot;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/ad/BaseAdSlot;->wx_fail:[Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$1802(Lcn/haorui/sdk/core/ad/BaseAdSlot;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/ad/BaseAdSlot;->req_id:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$1902(Lcn/haorui/sdk/core/ad/BaseAdSlot;I)I
    .locals 0

    iput p1, p0, Lcn/haorui/sdk/core/ad/BaseAdSlot;->direct_market:I

    return p1
.end method

.method public static synthetic access$2002(Lcn/haorui/sdk/core/ad/BaseAdSlot;I)I
    .locals 0

    iput p1, p0, Lcn/haorui/sdk/core/ad/BaseAdSlot;->ecpm:I

    return p1
.end method

.method public static synthetic access$202(Lcn/haorui/sdk/core/ad/BaseAdSlot;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/ad/BaseAdSlot;->app_intro:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$2102(Lcn/haorui/sdk/core/ad/BaseAdSlot;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/ad/BaseAdSlot;->s_code:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$2202(Lcn/haorui/sdk/core/ad/BaseAdSlot;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/ad/BaseAdSlot;->s_ext:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$2302(Lcn/haorui/sdk/core/ad/BaseAdSlot;J)J
    .locals 0

    iput-wide p1, p0, Lcn/haorui/sdk/core/ad/BaseAdSlot;->loadedTime:J

    return-wide p1
.end method

.method public static synthetic access$2402(Lcn/haorui/sdk/core/ad/BaseAdSlot;I)I
    .locals 0

    iput p1, p0, Lcn/haorui/sdk/core/ad/BaseAdSlot;->expire_timestamp:I

    return p1
.end method

.method public static synthetic access$2502(Lcn/haorui/sdk/core/ad/BaseAdSlot;I)I
    .locals 0

    iput p1, p0, Lcn/haorui/sdk/core/ad/BaseAdSlot;->cbc:I

    return p1
.end method

.method public static synthetic access$2602(Lcn/haorui/sdk/core/ad/BaseAdSlot;I)I
    .locals 0

    iput p1, p0, Lcn/haorui/sdk/core/ad/BaseAdSlot;->power_delay:I

    return p1
.end method

.method public static synthetic access$2702(Lcn/haorui/sdk/core/ad/BaseAdSlot;I)I
    .locals 0

    iput p1, p0, Lcn/haorui/sdk/core/ad/BaseAdSlot;->power_count:I

    return p1
.end method

.method public static synthetic access$2802(Lcn/haorui/sdk/core/ad/BaseAdSlot;I)I
    .locals 0

    iput p1, p0, Lcn/haorui/sdk/core/ad/BaseAdSlot;->clk_type:I

    return p1
.end method

.method public static synthetic access$2902(Lcn/haorui/sdk/core/ad/BaseAdSlot;I)I
    .locals 0

    iput p1, p0, Lcn/haorui/sdk/core/ad/BaseAdSlot;->power_index:I

    return p1
.end method

.method public static synthetic access$3002(Lcn/haorui/sdk/core/ad/BaseAdSlot;I)I
    .locals 0

    iput p1, p0, Lcn/haorui/sdk/core/ad/BaseAdSlot;->drawing:I

    return p1
.end method

.method public static synthetic access$302(Lcn/haorui/sdk/core/ad/BaseAdSlot;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/ad/BaseAdSlot;->app_feature:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$3102(Lcn/haorui/sdk/core/ad/BaseAdSlot;Lcn/haorui/sdk/core/domain/HRAdInfo$DClickData;)Lcn/haorui/sdk/core/domain/HRAdInfo$DClickData;
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/ad/BaseAdSlot;->dclk:Lcn/haorui/sdk/core/domain/HRAdInfo$DClickData;

    return-object p1
.end method

.method public static synthetic access$3202(Lcn/haorui/sdk/core/ad/BaseAdSlot;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/ad/BaseAdSlot;->app_permission:Ljava/util/List;

    return-object p1
.end method

.method public static synthetic access$3302(Lcn/haorui/sdk/core/ad/BaseAdSlot;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/ad/BaseAdSlot;->app_permission_url:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$3402(Lcn/haorui/sdk/core/ad/BaseAdSlot;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/ad/BaseAdSlot;->app_intor_url:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$3502(Lcn/haorui/sdk/core/ad/BaseAdSlot;I)I
    .locals 0

    iput p1, p0, Lcn/haorui/sdk/core/ad/BaseAdSlot;->act_type:I

    return p1
.end method

.method public static synthetic access$3602(Lcn/haorui/sdk/core/ad/BaseAdSlot;I)I
    .locals 0

    iput p1, p0, Lcn/haorui/sdk/core/ad/BaseAdSlot;->ad_type:I

    return p1
.end method

.method public static synthetic access$402(Lcn/haorui/sdk/core/ad/BaseAdSlot;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/ad/BaseAdSlot;->payment_types:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$502(Lcn/haorui/sdk/core/ad/BaseAdSlot;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/ad/BaseAdSlot;->app_size:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$602(Lcn/haorui/sdk/core/ad/BaseAdSlot;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/ad/BaseAdSlot;->app_ver:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$702(Lcn/haorui/sdk/core/ad/BaseAdSlot;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/ad/BaseAdSlot;->app_privacy:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$802(Lcn/haorui/sdk/core/ad/BaseAdSlot;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/ad/BaseAdSlot;->privacy_agreement:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$902(Lcn/haorui/sdk/core/ad/BaseAdSlot;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/ad/BaseAdSlot;->errorUrl:[Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public getAct_type()I
    .locals 1

    iget v0, p0, Lcn/haorui/sdk/core/ad/BaseAdSlot;->act_type:I

    return v0
.end method

.method public getAdPatternType()I
    .locals 1

    iget v0, p0, Lcn/haorui/sdk/core/ad/BaseAdSlot;->adPatternType:I

    return v0
.end method

.method public getAd_type()I
    .locals 1

    iget v0, p0, Lcn/haorui/sdk/core/ad/BaseAdSlot;->ad_type:I

    return v0
.end method

.method public getAder_id()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/ad/BaseAdSlot;->ader_id:Ljava/lang/String;

    return-object v0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/ad/BaseAdSlot;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/ad/BaseAdSlot;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public getApp_feature()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/ad/BaseAdSlot;->app_feature:Ljava/lang/String;

    return-object v0
.end method

.method public getApp_intor_url()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/ad/BaseAdSlot;->app_intor_url:Ljava/lang/String;

    return-object v0
.end method

.method public getApp_intro()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/ad/BaseAdSlot;->app_intro:Ljava/lang/String;

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

    iget-object v0, p0, Lcn/haorui/sdk/core/ad/BaseAdSlot;->app_permission:Ljava/util/List;

    return-object v0
.end method

.method public getApp_permission_url()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/ad/BaseAdSlot;->app_permission_url:Ljava/lang/String;

    return-object v0
.end method

.method public getApp_privacy()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/ad/BaseAdSlot;->app_privacy:Ljava/lang/String;

    return-object v0
.end method

.method public getApp_size()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/ad/BaseAdSlot;->app_size:Ljava/lang/String;

    return-object v0
.end method

.method public getApp_ver()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/ad/BaseAdSlot;->app_ver:Ljava/lang/String;

    return-object v0
.end method

.method public getCat()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/ad/BaseAdSlot;->cat:Ljava/lang/String;

    return-object v0
.end method

.method public getCbc()I
    .locals 1

    iget v0, p0, Lcn/haorui/sdk/core/ad/BaseAdSlot;->cbc:I

    return v0
.end method

.method public getCid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/ad/BaseAdSlot;->cid:Ljava/lang/String;

    return-object v0
.end method

.method public getClickUrl()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/ad/BaseAdSlot;->clickUrl:[Ljava/lang/String;

    return-object v0
.end method

.method public getClickid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/ad/BaseAdSlot;->clickid:Ljava/lang/String;

    return-object v0
.end method

.method public getClk_type()I
    .locals 1

    iget v0, p0, Lcn/haorui/sdk/core/ad/BaseAdSlot;->clk_type:I

    return v0
.end method

.method public getComments()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/ad/BaseAdSlot;->comments:Ljava/lang/Integer;

    return-object v0
.end method

.method public getDclk()Lcn/haorui/sdk/core/domain/HRAdInfo$DClickData;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/ad/BaseAdSlot;->dclk:Lcn/haorui/sdk/core/domain/HRAdInfo$DClickData;

    return-object v0
.end method

.method public getDeep_link()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/ad/BaseAdSlot;->deep_link:Ljava/lang/String;

    return-object v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/ad/BaseAdSlot;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public getDeveloper()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/ad/BaseAdSlot;->developer:Ljava/lang/String;

    return-object v0
.end method

.method public getDirect_market()I
    .locals 1

    iget v0, p0, Lcn/haorui/sdk/core/ad/BaseAdSlot;->direct_market:I

    return v0
.end method

.method public getDn_active()[Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getDn_inst_start()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/ad/BaseAdSlot;->dn_inst_start:[Ljava/lang/String;

    return-object v0
.end method

.method public getDn_inst_succ()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/ad/BaseAdSlot;->dn_inst_succ:[Ljava/lang/String;

    return-object v0
.end method

.method public getDn_start()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/ad/BaseAdSlot;->dn_start:[Ljava/lang/String;

    return-object v0
.end method

.method public getDn_succ()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/ad/BaseAdSlot;->dn_succ:[Ljava/lang/String;

    return-object v0
.end method

.method public getDownNum()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/ad/BaseAdSlot;->downNum:Ljava/lang/Integer;

    return-object v0
.end method

.method public getDp_fail()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/ad/BaseAdSlot;->dp_fail:[Ljava/lang/String;

    return-object v0
.end method

.method public getDp_start()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/ad/BaseAdSlot;->dp_start:[Ljava/lang/String;

    return-object v0
.end method

.method public getDp_succ()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/ad/BaseAdSlot;->dp_succ:[Ljava/lang/String;

    return-object v0
.end method

.method public getDrawing()I
    .locals 1

    iget v0, p0, Lcn/haorui/sdk/core/ad/BaseAdSlot;->drawing:I

    return v0
.end method

.method public getEcpm()I
    .locals 1

    iget v0, p0, Lcn/haorui/sdk/core/ad/BaseAdSlot;->ecpm:I

    return v0
.end method

.method public getErrorUrl()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/ad/BaseAdSlot;->errorUrl:[Ljava/lang/String;

    return-object v0
.end method

.method public getExpire_timestamp()I
    .locals 1

    iget v0, p0, Lcn/haorui/sdk/core/ad/BaseAdSlot;->expire_timestamp:I

    return v0
.end method

.method public getFromId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/ad/BaseAdSlot;->fromId:Ljava/lang/String;

    return-object v0
.end method

.method public getFromLogo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/ad/BaseAdSlot;->fromLogo:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/ad/BaseAdSlot;->icon:Ljava/lang/String;

    return-object v0
.end method

.method public getIconUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/ad/BaseAdSlot;->iconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getImageUrls()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/ad/BaseAdSlot;->imageUrls:[Ljava/lang/String;

    return-object v0
.end method

.method public getInteractionType()I
    .locals 1

    iget v0, p0, Lcn/haorui/sdk/core/ad/BaseAdSlot;->interactionType:I

    return v0
.end method

.method public getLoadedTime()J
    .locals 2

    iget-wide v0, p0, Lcn/haorui/sdk/core/ad/BaseAdSlot;->loadedTime:J

    return-wide v0
.end method

.method public getMonitorUrl()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/ad/BaseAdSlot;->monitorUrl:[Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/ad/BaseAdSlot;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPayment_types()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/ad/BaseAdSlot;->payment_types:Ljava/lang/String;

    return-object v0
.end method

.method public getPosId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/ad/BaseAdSlot;->posId:Ljava/lang/String;

    return-object v0
.end method

.method public getPower_count()I
    .locals 1

    iget v0, p0, Lcn/haorui/sdk/core/ad/BaseAdSlot;->power_count:I

    return v0
.end method

.method public getPower_delay()I
    .locals 1

    iget v0, p0, Lcn/haorui/sdk/core/ad/BaseAdSlot;->power_delay:I

    return v0
.end method

.method public getPower_index()I
    .locals 1

    iget v0, p0, Lcn/haorui/sdk/core/ad/BaseAdSlot;->power_index:I

    return v0
.end method

.method public getPrivacy_agreement()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/ad/BaseAdSlot;->privacy_agreement:Ljava/lang/String;

    return-object v0
.end method

.method public getReq_id()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/ad/BaseAdSlot;->req_id:Ljava/lang/String;

    return-object v0
.end method

.method public getResponUrl()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/ad/BaseAdSlot;->responUrl:[Ljava/lang/String;

    return-object v0
.end method

.method public getS_code()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/ad/BaseAdSlot;->s_code:Ljava/lang/String;

    return-object v0
.end method

.method public getS_ext()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/ad/BaseAdSlot;->s_ext:Ljava/lang/String;

    return-object v0
.end method

.method public getScore()Ljava/lang/Float;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/ad/BaseAdSlot;->score:Ljava/lang/Float;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/ad/BaseAdSlot;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getWx_fail()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/ad/BaseAdSlot;->wx_fail:[Ljava/lang/String;

    return-object v0
.end method

.method public getWx_path()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/ad/BaseAdSlot;->wx_path:Ljava/lang/String;

    return-object v0
.end method

.method public getWx_start()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/ad/BaseAdSlot;->wx_start:[Ljava/lang/String;

    return-object v0
.end method

.method public getWx_succ()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/ad/BaseAdSlot;->wx_succ:[Ljava/lang/String;

    return-object v0
.end method

.method public getWx_username()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/ad/BaseAdSlot;->wx_username:Ljava/lang/String;

    return-object v0
.end method

.method public getdUrl()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/ad/BaseAdSlot;->dUrl:[Ljava/lang/String;

    return-object v0
.end method

.method public setClickUrl([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/ad/BaseAdSlot;->clickUrl:[Ljava/lang/String;

    return-void
.end method

.method public setImageUrls([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/ad/BaseAdSlot;->imageUrls:[Ljava/lang/String;

    return-void
.end method

.method public setMonitorUrl([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/ad/BaseAdSlot;->monitorUrl:[Ljava/lang/String;

    return-void
.end method

.method public setdUrl([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/ad/BaseAdSlot;->dUrl:[Ljava/lang/String;

    return-void
.end method
