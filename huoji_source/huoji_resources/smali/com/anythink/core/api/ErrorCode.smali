.class public Lcom/anythink/core/api/ErrorCode;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final adShowError:Ljava/lang/String; = "4006"

.field public static final adSourceBidError:Ljava/lang/String; = "4007"

.field public static final adSourceNotFilledError:Ljava/lang/String; = "4008"

.field public static final adapterInnerError:Ljava/lang/String; = "2006"

.field public static final adapterNotExistError:Ljava/lang/String; = "2002"

.field public static final appIdError:Ljava/lang/String; = "10003"

.field public static final appIdOrPlaceIdEmpty:Ljava/lang/String; = "3002"

.field public static final appKeyError:Ljava/lang/String; = "10001"

.field public static final c2sBiddingCacheError:Ljava/lang/String; = "2012"

.field public static final contextDestoryError:Ljava/lang/String; = "4002"

.field public static final dataLevelLowError:Ljava/lang/String; = "9992"

.field public static final exception:Ljava/lang/String; = "9999"

.field public static final filterByRefreshSystemSplash:Ljava/lang/String; = "2015"

.field public static final filterSourceError:Ljava/lang/String; = "2010"

.field public static final formatError:Ljava/lang/String; = "3003"

.field public static final httpStatuException:Ljava/lang/String; = "9990"

.field public static final inNetworkErrorCodeRequestFailPacing:Ljava/lang/String; = "2014"

.field public static final inPacingError:Ljava/lang/String; = "2004"

.field public static final inRequestFailPacing:Ljava/lang/String; = "2007"

.field public static final loadCappingError:Ljava/lang/String; = "2009"

.field public static final loadFailInPacingError:Ljava/lang/String; = "2008"

.field public static final loadInShowingFilter:Ljava/lang/String; = "2011"

.field public static final loadingError:Ljava/lang/String; = "2005"

.field public static final networkError:Ljava/lang/String; = "1001"

.field public static final networkFirmIdfilterSourceError:Ljava/lang/String; = "2013"

.field public static final noADError:Ljava/lang/String; = "4001"

.field public static final noAdsourceConfig:Ljava/lang/String; = "4004"

.field public static final noAdsourceConfigInDebugerMode:Ljava/lang/String; = "4009"

.field public static final noAvailableAdsource:Ljava/lang/String; = "4005"

.field public static final outOfCapError:Ljava/lang/String; = "2003"

.field public static final placeStrategyError:Ljava/lang/String; = "3001"

.field public static final placementAdClose:Ljava/lang/String; = "4003"

.field public static final placementIdError:Ljava/lang/String; = "10004"

.field public static final serverError:Ljava/lang/String; = "1002"

.field public static final sharedPlacementIdError:Ljava/lang/String; = "10019"

.field public static final statuError:Ljava/lang/String; = "9991"

.field public static final timeOutError:Ljava/lang/String; = "2001"

.field public static final unknown:Ljava/lang/String; = "-9999"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const-string v4, "4004"

    const-string v5, "4003"

    const-string v6, "4002"

    const-string v7, "4001"

    const-string v8, "3003"

    const-string v9, "3002"

    const-string v10, "3001"

    const-string v11, "2015"

    const-string v12, "2012"

    const-string v13, "2011"

    const-string v14, "2009"

    const-string v15, "2008"

    const-string v1, "2007"

    const-string v2, "2006"

    move-object/from16 v16, v2

    const-string v2, "2005"

    move-object/from16 v17, v2

    const-string v2, "2004"

    move-object/from16 v18, v2

    const-string v2, "2003"

    move-object/from16 v19, v2

    const-string v2, "2002"

    move-object/from16 v20, v2

    const-string v2, "2001"

    move-object/from16 v21, v2

    const-string v2, "1002"

    move-object/from16 v22, v2

    const-string v2, "1001"

    move-object/from16 v23, v2

    const-string v2, "4009"

    const/16 v24, -0x1

    sparse-switch v3, :sswitch_data_0

    :goto_0
    move-object/from16 v3, v23

    move-object/from16 v25, v16

    move-object/from16 v16, v1

    move-object/from16 v1, v17

    move-object/from16 v17, v25

    goto/16 :goto_9

    :sswitch_0
    const-string v3, "10019"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v24, 0x22

    goto :goto_0

    :sswitch_1
    const-string v3, "10004"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/16 v24, 0x21

    goto :goto_0

    :sswitch_2
    const-string v3, "10003"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/16 v24, 0x20

    goto :goto_0

    :sswitch_3
    const-string v3, "10001"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/16 v24, 0x1f

    goto :goto_0

    :sswitch_4
    const-string v3, "9999"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/16 v24, 0x1e

    goto :goto_0

    :sswitch_5
    const-string v3, "9992"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/16 v24, 0x1d

    goto :goto_0

    :sswitch_6
    const-string v3, "9991"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    const/16 v24, 0x1c

    goto :goto_0

    :sswitch_7
    const-string v3, "9990"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    const/16 v24, 0x1b

    goto :goto_0

    :sswitch_8
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    :cond_8
    const/16 v24, 0x1a

    goto :goto_0

    :sswitch_9
    const-string v3, "4008"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_0

    :cond_9
    const/16 v24, 0x19

    goto/16 :goto_0

    :sswitch_a
    const-string v3, "4007"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v24, 0x18

    goto/16 :goto_0

    :sswitch_b
    const-string v3, "4006"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v24, 0x17

    goto/16 :goto_0

    :sswitch_c
    const-string v3, "4005"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v24, 0x16

    goto/16 :goto_0

    :sswitch_d
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v24, 0x15

    goto/16 :goto_0

    :sswitch_e
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v24, 0x14

    goto/16 :goto_0

    :sswitch_f
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto/16 :goto_0

    :cond_f
    const/16 v24, 0x13

    goto/16 :goto_0

    :sswitch_10
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    goto/16 :goto_0

    :cond_10
    const/16 v24, 0x12

    goto/16 :goto_0

    :sswitch_11
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    goto/16 :goto_0

    :cond_11
    const/16 v24, 0x11

    goto/16 :goto_0

    :sswitch_12
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    goto/16 :goto_0

    :cond_12
    const/16 v24, 0x10

    goto/16 :goto_0

    :sswitch_13
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    goto/16 :goto_0

    :cond_13
    const/16 v24, 0xf

    goto/16 :goto_0

    :sswitch_14
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    goto/16 :goto_0

    :cond_14
    const/16 v24, 0xe

    goto/16 :goto_0

    :sswitch_15
    const-string v3, "2013"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    goto/16 :goto_0

    :cond_15
    const/16 v24, 0xd

    goto/16 :goto_0

    :sswitch_16
    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    goto/16 :goto_0

    :cond_16
    const/16 v24, 0xc

    goto/16 :goto_0

    :sswitch_17
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    goto/16 :goto_0

    :cond_17
    const/16 v24, 0xb

    goto/16 :goto_0

    :sswitch_18
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    goto/16 :goto_0

    :cond_18
    const/16 v24, 0xa

    goto/16 :goto_0

    :sswitch_19
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    goto/16 :goto_0

    :cond_19
    const/16 v24, 0x9

    goto/16 :goto_0

    :sswitch_1a
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    goto/16 :goto_0

    :cond_1a
    const/16 v24, 0x8

    goto/16 :goto_0

    :sswitch_1b
    move-object/from16 v3, v16

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    goto :goto_1

    :cond_1b
    const/16 v24, 0x7

    :goto_1
    move-object/from16 v16, v1

    move-object/from16 v1, v17

    goto :goto_2

    :sswitch_1c
    move-object/from16 v3, v16

    move-object/from16 v16, v1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    goto :goto_2

    :cond_1c
    const/16 v24, 0x6

    :goto_2
    move-object/from16 v17, v3

    goto/16 :goto_8

    :sswitch_1d
    move-object/from16 v3, v18

    move-object/from16 v25, v16

    move-object/from16 v16, v1

    move-object/from16 v1, v17

    move-object/from16 v17, v25

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    goto :goto_3

    :cond_1d
    const/16 v24, 0x5

    :goto_3
    move-object/from16 v18, v3

    goto/16 :goto_8

    :sswitch_1e
    move-object/from16 v3, v19

    move-object/from16 v25, v16

    move-object/from16 v16, v1

    move-object/from16 v1, v17

    move-object/from16 v17, v25

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    goto :goto_4

    :cond_1e
    const/16 v24, 0x4

    :goto_4
    move-object/from16 v19, v3

    goto :goto_8

    :sswitch_1f
    move-object/from16 v3, v20

    move-object/from16 v25, v16

    move-object/from16 v16, v1

    move-object/from16 v1, v17

    move-object/from16 v17, v25

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    goto :goto_5

    :cond_1f
    const/16 v24, 0x3

    :goto_5
    move-object/from16 v20, v3

    goto :goto_8

    :sswitch_20
    move-object/from16 v3, v21

    move-object/from16 v25, v16

    move-object/from16 v16, v1

    move-object/from16 v1, v17

    move-object/from16 v17, v25

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    goto :goto_6

    :cond_20
    const/16 v24, 0x2

    :goto_6
    move-object/from16 v21, v3

    goto :goto_8

    :sswitch_21
    move-object/from16 v3, v22

    move-object/from16 v25, v16

    move-object/from16 v16, v1

    move-object/from16 v1, v17

    move-object/from16 v17, v25

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    goto :goto_7

    :cond_21
    const/16 v24, 0x1

    :goto_7
    move-object/from16 v22, v3

    :goto_8
    move-object/from16 v3, v23

    goto :goto_9

    :sswitch_22
    move-object/from16 v3, v23

    move-object/from16 v25, v16

    move-object/from16 v16, v1

    move-object/from16 v1, v17

    move-object/from16 v17, v25

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    goto :goto_9

    :cond_22
    const/16 v24, 0x0

    :goto_9
    packed-switch v24, :pswitch_data_0

    new-instance v0, Lcom/anythink/core/api/AdError;

    const-string v1, "-9999"

    const-string v2, "unknown"

    move-object/from16 v3, p1

    move-object/from16 v15, p2

    invoke-direct {v0, v1, v2, v3, v15}, Lcom/anythink/core/api/AdError;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :pswitch_0
    move-object/from16 v3, p1

    move-object/from16 v15, p2

    new-instance v0, Lcom/anythink/core/api/AdError;

    const-string v1, "10019"

    const-string v2, "Forbidden placement"

    invoke-direct {v0, v1, v2, v3, v15}, Lcom/anythink/core/api/AdError;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :pswitch_1
    move-object/from16 v3, p1

    move-object/from16 v15, p2

    new-instance v0, Lcom/anythink/core/api/AdError;

    const-string v1, "10004"

    const-string v2, "Please check your placementid."

    invoke-direct {v0, v1, v2, v3, v15}, Lcom/anythink/core/api/AdError;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :pswitch_2
    move-object/from16 v3, p1

    move-object/from16 v15, p2

    new-instance v0, Lcom/anythink/core/api/AdError;

    const-string v1, "10003"

    const-string v2, "Please check your appid."

    invoke-direct {v0, v1, v2, v3, v15}, Lcom/anythink/core/api/AdError;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :pswitch_3
    move-object/from16 v3, p1

    move-object/from16 v15, p2

    new-instance v0, Lcom/anythink/core/api/AdError;

    const-string v1, "10001"

    const-string v2, "Please check your appkey."

    invoke-direct {v0, v1, v2, v3, v15}, Lcom/anythink/core/api/AdError;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :pswitch_4
    move-object/from16 v3, p1

    move-object/from16 v15, p2

    new-instance v0, Lcom/anythink/core/api/AdError;

    const-string v1, "9999"

    const-string v2, "Exception in sdk."

    invoke-direct {v0, v1, v2, v3, v15}, Lcom/anythink/core/api/AdError;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :pswitch_5
    move-object/from16 v3, p1

    move-object/from16 v15, p2

    new-instance v0, Lcom/anythink/core/api/AdError;

    const-string v1, "9992"

    const-string v2, "Upload data level is FORBIDDEN, must called \'ATSDK.setGDPRUploadDataLevel\' to set the level."

    invoke-direct {v0, v1, v2, v3, v15}, Lcom/anythink/core/api/AdError;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :pswitch_6
    move-object/from16 v3, p1

    move-object/from16 v15, p2

    new-instance v0, Lcom/anythink/core/api/AdError;

    const-string v1, "9991"

    const-string v2, "Service status error."

    invoke-direct {v0, v1, v2, v3, v15}, Lcom/anythink/core/api/AdError;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :pswitch_7
    move-object/from16 v3, p1

    move-object/from16 v15, p2

    new-instance v0, Lcom/anythink/core/api/AdError;

    const-string v1, "9990"

    const-string v2, "Https status exception."

    invoke-direct {v0, v1, v2, v3, v15}, Lcom/anythink/core/api/AdError;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :pswitch_8
    move-object/from16 v3, p1

    move-object/from16 v15, p2

    new-instance v0, Lcom/anythink/core/api/AdError;

    const-string v1, "The placement strategy does not contain any ad sources, please check the debugger configuration in ATSDK.setDebuggerConfig"

    invoke-direct {v0, v2, v1, v3, v15}, Lcom/anythink/core/api/AdError;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :pswitch_9
    move-object/from16 v3, p1

    move-object/from16 v15, p2

    new-instance v0, Lcom/anythink/core/api/AdError;

    const-string v1, "4008"

    const-string v2, "Ad source not filled, cause by customize fillter."

    invoke-direct {v0, v1, v2, v3, v15}, Lcom/anythink/core/api/AdError;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :pswitch_a
    move-object/from16 v3, p1

    move-object/from16 v15, p2

    new-instance v0, Lcom/anythink/core/api/AdError;

    const-string v1, "4007"

    const-string v2, "Bid error"

    invoke-direct {v0, v1, v2, v3, v15}, Lcom/anythink/core/api/AdError;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :pswitch_b
    move-object/from16 v3, p1

    move-object/from16 v15, p2

    new-instance v0, Lcom/anythink/core/api/AdError;

    const-string v1, "4006"

    const-string v2, "Ad show failed"

    invoke-direct {v0, v1, v2, v3, v15}, Lcom/anythink/core/api/AdError;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :pswitch_c
    move-object/from16 v3, p1

    move-object/from16 v15, p2

    new-instance v0, Lcom/anythink/core/api/AdError;

    const-string v1, "4005"

    const-string v2, "Ad sources are filtered, no ad source is currently available"

    invoke-direct {v0, v1, v2, v3, v15}, Lcom/anythink/core/api/AdError;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :pswitch_d
    move-object/from16 v3, p1

    move-object/from16 v15, p2

    new-instance v0, Lcom/anythink/core/api/AdError;

    const-string v1, "The placement strategy does not contain any ad sources, please check the mediation configuration in TopOn"

    invoke-direct {v0, v4, v1, v3, v15}, Lcom/anythink/core/api/AdError;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :pswitch_e
    move-object/from16 v3, p1

    move-object/from16 v15, p2

    new-instance v0, Lcom/anythink/core/api/AdError;

    const-string v1, "Placement Ads switch is close."

    invoke-direct {v0, v5, v1, v3, v15}, Lcom/anythink/core/api/AdError;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :pswitch_f
    move-object/from16 v3, p1

    move-object/from16 v15, p2

    new-instance v0, Lcom/anythink/core/api/AdError;

    const-string v1, "Context or activity has been destory."

    invoke-direct {v0, v6, v1, v3, v15}, Lcom/anythink/core/api/AdError;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :pswitch_10
    move-object/from16 v3, p1

    move-object/from16 v15, p2

    new-instance v0, Lcom/anythink/core/api/AdError;

    const-string v1, "Return Ad is empty."

    invoke-direct {v0, v7, v1, v3, v15}, Lcom/anythink/core/api/AdError;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :pswitch_11
    move-object/from16 v3, p1

    move-object/from16 v15, p2

    new-instance v0, Lcom/anythink/core/api/AdError;

    const-string v1, "Mismatched ad placement and ad format"

    invoke-direct {v0, v8, v1, v3, v15}, Lcom/anythink/core/api/AdError;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :pswitch_12
    move-object/from16 v3, p1

    move-object/from16 v15, p2

    new-instance v0, Lcom/anythink/core/api/AdError;

    const-string v1, "AppId or PlacementId is empty."

    invoke-direct {v0, v9, v1, v3, v15}, Lcom/anythink/core/api/AdError;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :pswitch_13
    move-object/from16 v3, p1

    move-object/from16 v15, p2

    new-instance v0, Lcom/anythink/core/api/AdError;

    const-string v1, "Get placement strategy error, please check your network or your appid\u3001appkey and placementid is availiable."

    invoke-direct {v0, v10, v1, v3, v15}, Lcom/anythink/core/api/AdError;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :pswitch_14
    move-object/from16 v3, p1

    move-object/from16 v15, p2

    new-instance v0, Lcom/anythink/core/api/AdError;

    const-string v1, "System splash not allow preload."

    invoke-direct {v0, v11, v1, v3, v15}, Lcom/anythink/core/api/AdError;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :pswitch_15
    move-object/from16 v3, p1

    move-object/from16 v15, p2

    new-instance v0, Lcom/anythink/core/api/AdError;

    const-string v1, "AdSource filter by network firm id."

    invoke-direct {v0, v2, v1, v3, v15}, Lcom/anythink/core/api/AdError;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :pswitch_16
    move-object/from16 v3, p1

    move-object/from16 v15, p2

    new-instance v0, Lcom/anythink/core/api/AdError;

    const-string v1, "C2S Bidding Cache error."

    invoke-direct {v0, v12, v1, v3, v15}, Lcom/anythink/core/api/AdError;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :pswitch_17
    move-object/from16 v3, p1

    move-object/from16 v15, p2

    new-instance v0, Lcom/anythink/core/api/AdError;

    const-string v1, "This unitgroup can\'t load on showing."

    invoke-direct {v0, v13, v1, v3, v15}, Lcom/anythink/core/api/AdError;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :pswitch_18
    move-object/from16 v3, p1

    move-object/from16 v15, p2

    new-instance v0, Lcom/anythink/core/api/AdError;

    const-string v1, "The placement load too many times within the specified time period."

    invoke-direct {v0, v14, v1, v3, v15}, Lcom/anythink/core/api/AdError;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :pswitch_19
    move-object/from16 v3, p1

    move-object/from16 v0, p2

    new-instance v1, Lcom/anythink/core/api/AdError;

    const-string v2, "The placement load too frequent within the specified time period after the previous load failure."

    invoke-direct {v1, v15, v2, v3, v0}, Lcom/anythink/core/api/AdError;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :pswitch_1a
    move-object/from16 v3, p1

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    new-instance v2, Lcom/anythink/core/api/AdError;

    const-string v4, "Not satisfy the Fail-request\'s Placing configuration."

    invoke-direct {v2, v1, v4, v3, v0}, Lcom/anythink/core/api/AdError;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :pswitch_1b
    move-object/from16 v3, p1

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    new-instance v2, Lcom/anythink/core/api/AdError;

    const-string v4, "Please check if your network sdk version is correct and all the network plugin has been put in your package."

    invoke-direct {v2, v1, v4, v3, v0}, Lcom/anythink/core/api/AdError;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :pswitch_1c
    move-object/from16 v3, p1

    move-object/from16 v0, p2

    new-instance v2, Lcom/anythink/core/api/AdError;

    const-string v4, "Placement\'s Ad is loading."

    invoke-direct {v2, v1, v4, v3, v0}, Lcom/anythink/core/api/AdError;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :pswitch_1d
    move-object/from16 v3, p1

    move-object/from16 v0, p2

    new-instance v1, Lcom/anythink/core/api/AdError;

    const-string v2, "Not satisfy the Placement\'s Placing configuration."

    move-object/from16 v4, v18

    invoke-direct {v1, v4, v2, v3, v0}, Lcom/anythink/core/api/AdError;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :pswitch_1e
    move-object/from16 v3, p1

    move-object/from16 v0, p2

    new-instance v1, Lcom/anythink/core/api/AdError;

    const-string v2, "Not satisfy the Placement\'s Cap configuration."

    move-object/from16 v4, v19

    invoke-direct {v1, v4, v2, v3, v0}, Lcom/anythink/core/api/AdError;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :pswitch_1f
    move-object/from16 v3, p1

    move-object/from16 v0, p2

    new-instance v1, Lcom/anythink/core/api/AdError;

    const-string v2, "Adapter does not exist."

    move-object/from16 v4, v20

    invoke-direct {v1, v4, v2, v3, v0}, Lcom/anythink/core/api/AdError;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :pswitch_20
    move-object/from16 v3, p1

    move-object/from16 v0, p2

    new-instance v1, Lcom/anythink/core/api/AdError;

    const-string v2, "Ad load time out."

    move-object/from16 v4, v21

    invoke-direct {v1, v4, v2, v3, v0}, Lcom/anythink/core/api/AdError;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :pswitch_21
    move-object/from16 v3, p1

    move-object/from16 v0, p2

    new-instance v1, Lcom/anythink/core/api/AdError;

    const-string v2, "Server is unavailable."

    move-object/from16 v4, v22

    invoke-direct {v1, v4, v2, v3, v0}, Lcom/anythink/core/api/AdError;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :pswitch_22
    move-object/from16 v1, p1

    move-object/from16 v0, p2

    new-instance v2, Lcom/anythink/core/api/AdError;

    const-string v4, "Network is unavailable."

    invoke-direct {v2, v3, v4, v1, v0}, Lcom/anythink/core/api/AdError;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    nop

    :sswitch_data_0
    .sparse-switch
        0x170060 -> :sswitch_22
        0x170061 -> :sswitch_21
        0x1774bf -> :sswitch_20
        0x1774c0 -> :sswitch_1f
        0x1774c1 -> :sswitch_1e
        0x1774c2 -> :sswitch_1d
        0x1774c3 -> :sswitch_1c
        0x1774c4 -> :sswitch_1b
        0x1774c5 -> :sswitch_1a
        0x1774c6 -> :sswitch_19
        0x1774c7 -> :sswitch_18
        0x1774de -> :sswitch_17
        0x1774df -> :sswitch_16
        0x1774e0 -> :sswitch_15
        0x1774e2 -> :sswitch_14
        0x17e91e -> :sswitch_13
        0x17e91f -> :sswitch_12
        0x17e920 -> :sswitch_11
        0x185d7d -> :sswitch_10
        0x185d7e -> :sswitch_f
        0x185d7f -> :sswitch_e
        0x185d80 -> :sswitch_d
        0x185d81 -> :sswitch_c
        0x185d82 -> :sswitch_b
        0x185d83 -> :sswitch_a
        0x185d84 -> :sswitch_9
        0x185d85 -> :sswitch_8
        0x1ac637 -> :sswitch_7
        0x1ac638 -> :sswitch_6
        0x1ac639 -> :sswitch_5
        0x1ac640 -> :sswitch_4
        0x2c90bb2 -> :sswitch_3
        0x2c90bb4 -> :sswitch_2
        0x2c90bb5 -> :sswitch_1
        0x2c90bd9 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
