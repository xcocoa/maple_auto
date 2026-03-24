.class public Lcom/cyjh/elfin/entity/MsgItem;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyjh/elfin/entity/MsgItem$BindRegCodeBus;,
        Lcom/cyjh/elfin/entity/MsgItem$CheckedSwitchAdEvent;,
        Lcom/cyjh/elfin/entity/MsgItem$ExposureAndClickEvent;,
        Lcom/cyjh/elfin/entity/MsgItem$ExternalIpEvent;,
        Lcom/cyjh/elfin/entity/MsgItem$GetServerTime;,
        Lcom/cyjh/elfin/entity/MsgItem$PermissionsEvent;,
        Lcom/cyjh/elfin/entity/MsgItem$RootDataEvent;,
        Lcom/cyjh/elfin/entity/MsgItem$UpdateMessageToDialog;,
        Lcom/cyjh/elfin/entity/MsgItem$WebPageDownButtonEvent;
    }
.end annotation


# static fields
.field public static final BACK_AD_REQ_FAIL:I = 0x3ee

.field public static final CLEAR_PUSH_ALL_MSG_ITEM:I = 0x3eb

.field public static final CLEAR_PUSH_INTERFACE_ITEM:I = 0x3ea

.field public static final FENG_LING_RECOMMNED_APK_DOWNLOAD_SUCCESS:I = 0x3f6

.field public static final FENG_LING_RECOMMNED_APK_INSTALL_SUCCESS:I = 0x3f7

.field public static final GAMES_APK_DOWNLOAD_SUC:I = 0x3f2

.field public static final GUIAD_APK_DOWNLOAD_SUC:I = 0x7db

.field public static final IFLYAD_FULLSCREEN_REQ_FAIL:I = 0x3f1

.field public static final IFLYAD_FULLSCREEN_TWO_REQ_FAIL:I = 0x3f5

.field public static final IFLYAD_PARTSCREEN_REQ_FAIL:I = 0x3f3

.field public static final MAINAD_APK_DOWNLOAD_SUC:I = 0x7dc

.field public static final MESSAGE_PERMISSIONS_REQUEST:I = 0x3f6

.field public static final NOTIFY_DIALOG_DISMISS_MESSAGE:I = 0x3ed

.field public static final RED_DOT_GONE_ITEM:I = 0x3e9

.field public static final REFRESH_ITEM:I = 0x3ec

.field public static final REPLACE_XUNFEI_REQ_FAIL:I = 0x3f4

.field public static final REQUEST_NETWORK_FAIL:I = 0x3ed

.field public static final REQ_SERVER_TIME_FAIL:I = 0x3ef

.field public static final SCRIPT_NEED_START:I = 0x7d1

.field public static final SCRIPT_NEED_UPGRADE:I = 0x7d0

.field public static final SCRIPT_UI_DIALOG_DISMISS:I = 0x3f0

.field public static final SCRIPT_UI_DIALOG_UPDATE:I = 0x2762

.field public static final SCRIPT_UI_SAVE_CFG:I = 0x2761


# instance fields
.field private msgType:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/cyjh/elfin/entity/MsgItem;->msgType:I

    return-void
.end method


# virtual methods
.method public getMsgType()I
    .locals 4

    const-string v0, "\u06e0\u06eb\u06d7\u06e4\u06df\u06d9\u06dc\u06e6\u06e5\u06e1\u06e7\u06ec\u06da\u06ec\u06dc\u06e8\u06da\u06e8\u06e0\u06e7\u06e8\u06e6\u06d7\u06d9\u06e7\u06e7\u06e6\u06d8\u06e4\u06dc\u06da\u06e6\u06dc\u06e1\u06d8\u06e4\u06ec\u06db\u06e4\u06da\u06dc\u06e5\u06db\u06d6\u06ec\u06df\u06e7\u06e4\u06d6\u06e6\u06e6\u06ec\u06d7"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x1ef

    xor-int/2addr v1, v2

    xor-int/lit8 v1, v1, 0x7c

    const/16 v2, 0x3a5

    const v3, 0x3a4943c

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d6\u06d7\u06dc\u06d8\u06dc\u06ec\u06d8\u06ec\u06dc\u06d6\u06d9\u06d8\u06e6\u06d8\u06dc\u06e8\u06da\u06da\u06d9\u06e1\u06e0\u06e0\u06ec\u06e5\u06da\u06d6\u06da\u06ec\u06e5\u06d8\u06d6\u06e5\u06e7"

    goto :goto_0

    :sswitch_1
    iget v0, p0, Lcom/cyjh/elfin/entity/MsgItem;->msgType:I

    return v0

    :sswitch_data_0
    .sparse-switch
        0x805df74 -> :sswitch_1
        0x4a6e9a5b -> :sswitch_0
    .end sparse-switch
.end method

.method public setMsgType(I)V
    .locals 4

    const-string v0, "\u06df\u06e6\u06d6\u06d8\u06e5\u06e0\u06d8\u06eb\u06e0\u06dc\u06d8\u06df\u06e4\u06e0\u06e4\u06e5\u06d8\u06e0\u06d9\u06e8\u06db\u06d6\u06e8\u06ec\u06e6\u06d8\u06e2\u06dc\u06e6\u06d7\u06d8\u06e1\u06e1\u06dc\u06d6\u06da\u06e6"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x291

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x8f

    const/16 v2, 0x398

    const v3, 0x66306e00

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06df\u06db\u06e1\u06d6\u06d8\u06e7\u06da\u06eb\u06da\u06e2\u06e0\u06e5\u06e0\u06db\u06d6\u06d8\u06e4\u06e4\u06e8\u06d8\u06e4\u06db\u06e5\u06d8\u06da\u06d9\u06e8\u06db\u06d8\u06e8\u06d8\u06e4\u06e8\u06ec"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06dc\u06d7\u06d8\u06df\u06d9\u06d6\u06d8\u06d7\u06e5\u06da\u06d6\u06eb\u06e1\u06da\u06e7\u06d6\u06d8\u06db\u06d8\u06df\u06df\u06ec\u06ec\u06e0\u06e1\u06e0\u06e0\u06e6\u06d8\u06ec\u06e8\u06dc\u06e5\u06dc\u06d8\u06e6\u06ec\u06e1\u06d8\u06e7\u06eb\u06e2\u06e4\u06eb\u06da\u06e1\u06e5\u06d8\u06e7\u06e5\u06e8\u06d8"

    goto :goto_0

    :sswitch_2
    iput p1, p0, Lcom/cyjh/elfin/entity/MsgItem;->msgType:I

    const-string v0, "\u06e0\u06d6\u06dc\u06d6\u06e6\u06da\u06d8\u06e5\u06dc\u06e2\u06d8\u06d7\u06d8\u06d9\u06e7\u06e7\u06da\u06d6\u06eb\u06e1\u06d6\u06e5\u06d8\u06e7\u06d8\u06eb\u06db\u06e2\u06eb\u06db\u06e0\u06e5\u06e2\u06df\u06db\u06e2\u06e2\u06df\u06ec\u06e7\u06e0\u06e5\u06df\u06e4\u06e2\u06e5\u06d8\u06da\u06d9"

    goto :goto_0

    :sswitch_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x50476922 -> :sswitch_3
        0x1ad9d0f2 -> :sswitch_0
        0x5e9cc0e1 -> :sswitch_1
        0x6a8c4df1 -> :sswitch_2
    .end sparse-switch
.end method
