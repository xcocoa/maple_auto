.class public final enum Lcom/cyjh/elfin/entity/ActionBarOperaEnum;
.super Ljava/lang/Enum;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/cyjh/elfin/entity/ActionBarOperaEnum;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final $VALUES:[Lcom/cyjh/elfin/entity/ActionBarOperaEnum;

.field public static final enum ALL_CHECK:Lcom/cyjh/elfin/entity/ActionBarOperaEnum;

.field public static final enum CANCLE:Lcom/cyjh/elfin/entity/ActionBarOperaEnum;

.field public static final enum CLOUD:Lcom/cyjh/elfin/entity/ActionBarOperaEnum;

.field public static final enum CREATE_NEW_FILE:Lcom/cyjh/elfin/entity/ActionBarOperaEnum;

.field public static final enum DELETE:Lcom/cyjh/elfin/entity/ActionBarOperaEnum;

.field public static final enum EDIT_SCRIPT:Lcom/cyjh/elfin/entity/ActionBarOperaEnum;

.field public static final enum HEAD_ICON:Lcom/cyjh/elfin/entity/ActionBarOperaEnum;

.field public static final enum MOVE:Lcom/cyjh/elfin/entity/ActionBarOperaEnum;

.field public static final enum NO_ALL_CHECK:Lcom/cyjh/elfin/entity/ActionBarOperaEnum;

.field public static final enum RENAME:Lcom/cyjh/elfin/entity/ActionBarOperaEnum;

.field public static final enum RUN_SCRIPT:Lcom/cyjh/elfin/entity/ActionBarOperaEnum;

.field public static final enum SAVE:Lcom/cyjh/elfin/entity/ActionBarOperaEnum;

.field public static final enum SEARCH:Lcom/cyjh/elfin/entity/ActionBarOperaEnum;

.field public static final enum START_DOWNLOAD:Lcom/cyjh/elfin/entity/ActionBarOperaEnum;


# direct methods
.method public static constructor <clinit>()V
    .locals 18

    const/4 v14, 0x0

    const/4 v13, 0x0

    const/4 v12, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    const-string v0, "\u06e4\u06d6\u06dc\u06e0\u06e5\u06e6\u06eb\u06d6\u06e1\u06db\u06dc\u06d7\u06e0\u06da\u06e7\u06ec\u06da\u06dc\u06ec\u06eb\u06d7\u06e8\u06dc\u06d7\u06e2\u06db\u06e6"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v15

    const/16 v16, 0x262

    xor-int v15, v15, v16

    xor-int/lit16 v15, v15, 0x3fc

    const/16 v16, 0x1a

    const v17, -0x7ea04416

    xor-int v15, v15, v16

    xor-int v15, v15, v17

    sparse-switch v15, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    new-instance v14, Lcom/cyjh/elfin/entity/ActionBarOperaEnum;

    const-string v0, "CANCLE"

    const/4 v15, 0x0

    invoke-direct {v14, v0, v15}, Lcom/cyjh/elfin/entity/ActionBarOperaEnum;-><init>(Ljava/lang/String;I)V

    const-string v0, "\u06ec\u06d9\u06df\u06e0\u06da\u06eb\u06e5\u06e8\u06d8\u06e7\u06e5\u06e6\u06d8\u06e5\u06dc\u06e6\u06d8\u06e0\u06df\u06e6\u06d8\u06df\u06e0\u06e0\u06e5\u06e4\u06eb\u06d9\u06df\u06e5\u06db\u06e5\u06e7"

    goto :goto_0

    :sswitch_1
    sput-object v14, Lcom/cyjh/elfin/entity/ActionBarOperaEnum;->CANCLE:Lcom/cyjh/elfin/entity/ActionBarOperaEnum;

    const-string v0, "\u06ec\u06d7\u06e6\u06d8\u06e7\u06e0\u06e6\u06d8\u06d8\u06d7\u06e4\u06eb\u06e7\u06da\u06e8\u06eb\u06df\u06e5\u06d7\u06dc\u06d8\u06e2\u06ec\u06d6\u06d8\u06ec\u06e4\u06e5\u06d6\u06e4\u06d9\u06e5\u06e7\u06e6\u06d8\u06d6\u06da\u06e1\u06d9\u06e8\u06e2\u06df\u06e5\u06df\u06df\u06e6\u06d9\u06db\u06d6\u06d8"

    goto :goto_0

    :sswitch_2
    new-instance v13, Lcom/cyjh/elfin/entity/ActionBarOperaEnum;

    const-string v0, "SAVE"

    const/4 v15, 0x1

    invoke-direct {v13, v0, v15}, Lcom/cyjh/elfin/entity/ActionBarOperaEnum;-><init>(Ljava/lang/String;I)V

    const-string v0, "\u06e2\u06e6\u06e7\u06df\u06e6\u06e1\u06df\u06dc\u06e6\u06d8\u06e2\u06dc\u06ec\u06d9\u06dc\u06e7\u06da\u06e1\u06e6\u06d8\u06d6\u06e5\u06e7\u06e7\u06d8\u06d6\u06d9\u06e2\u06df\u06e8\u06ec\u06e2\u06dc\u06d8\u06dc\u06e1\u06d6\u06d8"

    goto :goto_0

    :sswitch_3
    sput-object v13, Lcom/cyjh/elfin/entity/ActionBarOperaEnum;->SAVE:Lcom/cyjh/elfin/entity/ActionBarOperaEnum;

    const-string v0, "\u06e2\u06db\u06e2\u06da\u06d8\u06eb\u06e5\u06e0\u06dc\u06d8\u06e4\u06d8\u06db\u06e5\u06e1\u06e2\u06e8\u06d7\u06e8\u06e0\u06e1\u06e1\u06d8\u06e1\u06d8\u06e1\u06d8\u06e7\u06e8\u06d7\u06e4\u06d9\u06e8\u06ec\u06dc\u06d6\u06d8\u06e5\u06e0\u06e2\u06e4\u06e6\u06d8\u06e4\u06d6\u06e1\u06d8"

    goto :goto_0

    :sswitch_4
    new-instance v12, Lcom/cyjh/elfin/entity/ActionBarOperaEnum;

    const-string v0, "RENAME"

    const/4 v15, 0x2

    invoke-direct {v12, v0, v15}, Lcom/cyjh/elfin/entity/ActionBarOperaEnum;-><init>(Ljava/lang/String;I)V

    const-string v0, "\u06e7\u06e6\u06d8\u06d8\u06e0\u06e4\u06e8\u06d8\u06e6\u06e2\u06d6\u06e2\u06e6\u06e1\u06d8\u06d8\u06e6\u06da\u06d8\u06e1\u06d6\u06d8\u06e7\u06dc\u06dc\u06d8\u06d8\u06e0\u06d6\u06d9\u06e5\u06d8\u06d6\u06db\u06ec\u06e8\u06d8\u06e0\u06db\u06d9\u06e1\u06eb\u06d7\u06e2\u06d6\u06e8\u06d7"

    goto :goto_0

    :sswitch_5
    sput-object v12, Lcom/cyjh/elfin/entity/ActionBarOperaEnum;->RENAME:Lcom/cyjh/elfin/entity/ActionBarOperaEnum;

    const-string v0, "\u06db\u06ec\u06d9\u06eb\u06e7\u06da\u06dc\u06d8\u06e1\u06d8\u06d8\u06d9\u06d6\u06e1\u06e6\u06e1\u06d8\u06d8\u06ec\u06dc\u06d8\u06e5\u06d7\u06ec\u06df\u06e1\u06d8\u06e5\u06e2\u06e1\u06e5\u06e6\u06d8\u06d8\u06db\u06ec\u06e1\u06e6\u06e7\u06e5\u06df\u06e5\u06e7\u06e6\u06e6\u06ec\u06d9\u06d6\u06e4\u06d9\u06db\u06d9"

    goto :goto_0

    :sswitch_6
    new-instance v11, Lcom/cyjh/elfin/entity/ActionBarOperaEnum;

    const-string v0, "DELETE"

    const/4 v15, 0x3

    invoke-direct {v11, v0, v15}, Lcom/cyjh/elfin/entity/ActionBarOperaEnum;-><init>(Ljava/lang/String;I)V

    const-string v0, "\u06e0\u06ec\u06da\u06d9\u06e0\u06e4\u06df\u06d8\u06df\u06e8\u06ec\u06e7\u06e6\u06e4\u06d9\u06df\u06e5\u06d8\u06e1\u06d9\u06da\u06eb\u06e8\u06e5\u06d8\u06e6\u06e2\u06d6\u06d8\u06d8\u06e0\u06dc\u06d8\u06eb\u06e7\u06e6\u06d8\u06e0\u06e6\u06e0\u06d9\u06eb\u06d8\u06d8\u06e6\u06d8\u06e7\u06dc\u06da\u06dc\u06e8\u06ec\u06e8\u06d8"

    goto :goto_0

    :sswitch_7
    sput-object v11, Lcom/cyjh/elfin/entity/ActionBarOperaEnum;->DELETE:Lcom/cyjh/elfin/entity/ActionBarOperaEnum;

    const-string v0, "\u06df\u06da\u06dc\u06d8\u06d8\u06e1\u06e8\u06d8\u06e7\u06d7\u06e5\u06d8\u06d8\u06eb\u06dc\u06d8\u06eb\u06d7\u06e8\u06d8\u06e1\u06db\u06e8\u06db\u06eb\u06d6\u06d8\u06e5\u06e0\u06e2\u06e7\u06e5\u06d6\u06d6\u06e0\u06d9"

    goto :goto_0

    :sswitch_8
    new-instance v10, Lcom/cyjh/elfin/entity/ActionBarOperaEnum;

    const-string v0, "MOVE"

    const/4 v15, 0x4

    invoke-direct {v10, v0, v15}, Lcom/cyjh/elfin/entity/ActionBarOperaEnum;-><init>(Ljava/lang/String;I)V

    const-string v0, "\u06db\u06e2\u06e1\u06db\u06e1\u06e8\u06d8\u06d9\u06e0\u06d8\u06d8\u06e6\u06e6\u06e4\u06eb\u06eb\u06da\u06eb\u06eb\u06d7\u06e1\u06d9\u06d6\u06d7\u06e7\u06d6\u06d7\u06d7\u06d8\u06e1\u06df\u06d9\u06d6\u06e5\u06e0\u06e1\u06e8\u06e6\u06d6\u06e4\u06d9\u06e5\u06d9\u06d6\u06d8\u06dc\u06e4\u06e8\u06da\u06e2\u06e0\u06db\u06df\u06e2\u06e4\u06df\u06d8\u06d8"

    goto :goto_0

    :sswitch_9
    sput-object v10, Lcom/cyjh/elfin/entity/ActionBarOperaEnum;->MOVE:Lcom/cyjh/elfin/entity/ActionBarOperaEnum;

    const-string v0, "\u06db\u06da\u06e0\u06e8\u06d8\u06e1\u06eb\u06d9\u06e0\u06e0\u06e6\u06d8\u06d8\u06e0\u06e8\u06dc\u06d8\u06e6\u06e7\u06d6\u06e5\u06e7\u06d8\u06e4\u06dc\u06db\u06e6\u06dc\u06d7\u06ec\u06e6\u06d8\u06d8"

    goto :goto_0

    :sswitch_a
    new-instance v9, Lcom/cyjh/elfin/entity/ActionBarOperaEnum;

    const-string v0, "EDIT_SCRIPT"

    const/4 v15, 0x5

    invoke-direct {v9, v0, v15}, Lcom/cyjh/elfin/entity/ActionBarOperaEnum;-><init>(Ljava/lang/String;I)V

    const-string v0, "\u06d9\u06d6\u06e7\u06e4\u06d7\u06dc\u06d7\u06ec\u06da\u06e1\u06e2\u06db\u06e2\u06d8\u06e2\u06e0\u06e0\u06d7\u06e5\u06ec\u06e0\u06d7\u06d8\u06ec\u06eb\u06dc\u06da\u06d8\u06e8\u06e7\u06d8\u06d7\u06ec\u06e4\u06e7\u06db\u06ec"

    goto :goto_0

    :sswitch_b
    sput-object v9, Lcom/cyjh/elfin/entity/ActionBarOperaEnum;->EDIT_SCRIPT:Lcom/cyjh/elfin/entity/ActionBarOperaEnum;

    const-string v0, "\u06e6\u06e8\u06d6\u06da\u06df\u06dc\u06d8\u06e5\u06e6\u06e1\u06d8\u06d7\u06eb\u06e7\u06e5\u06db\u06dc\u06eb\u06e6\u06eb\u06df\u06e4\u06db\u06d9\u06e1\u06e2\u06d6\u06d8\u06d6\u06ec\u06e7\u06d7\u06d6\u06e7\u06e6\u06e5\u06e8\u06d8\u06e1\u06e6\u06d8\u06db\u06da\u06e4"

    goto :goto_0

    :sswitch_c
    new-instance v8, Lcom/cyjh/elfin/entity/ActionBarOperaEnum;

    const-string v0, "ALL_CHECK"

    const/4 v15, 0x6

    invoke-direct {v8, v0, v15}, Lcom/cyjh/elfin/entity/ActionBarOperaEnum;-><init>(Ljava/lang/String;I)V

    const-string v0, "\u06e4\u06d8\u06d8\u06e5\u06e4\u06eb\u06d8\u06e0\u06e8\u06d7\u06dc\u06e8\u06d8\u06e0\u06ec\u06d9\u06db\u06e1\u06e7\u06d8\u06e1\u06d9\u06d9\u06da\u06eb\u06db\u06d8\u06eb\u06e7\u06e6\u06e5"

    goto/16 :goto_0

    :sswitch_d
    sput-object v8, Lcom/cyjh/elfin/entity/ActionBarOperaEnum;->ALL_CHECK:Lcom/cyjh/elfin/entity/ActionBarOperaEnum;

    const-string v0, "\u06dc\u06e5\u06d6\u06d8\u06e8\u06e1\u06d6\u06e1\u06e1\u06e7\u06d8\u06d9\u06d8\u06e7\u06d7\u06ec\u06df\u06ec\u06dc\u06e1\u06e0\u06e8\u06d6\u06d8\u06e7\u06db\u06e5\u06d8\u06e2\u06e1\u06d8\u06e4\u06e7\u06e1\u06d8\u06df\u06e8\u06e5\u06d8\u06dc\u06d6\u06d6\u06d8\u06dc\u06ec\u06db\u06eb\u06d9\u06df\u06e2\u06d7\u06e1\u06d8\u06e6\u06da\u06e8\u06d6\u06e7\u06ec\u06d6\u06e8\u06d6\u06d8"

    goto/16 :goto_0

    :sswitch_e
    new-instance v7, Lcom/cyjh/elfin/entity/ActionBarOperaEnum;

    const-string v0, "NO_ALL_CHECK"

    const/4 v15, 0x7

    invoke-direct {v7, v0, v15}, Lcom/cyjh/elfin/entity/ActionBarOperaEnum;-><init>(Ljava/lang/String;I)V

    const-string v0, "\u06e8\u06e4\u06d9\u06e0\u06da\u06d6\u06d8\u06d8\u06d8\u06eb\u06e8\u06d6\u06d7\u06e0\u06d7\u06e7\u06e1\u06e1\u06eb\u06d9\u06e6\u06d8\u06d8\u06e1\u06e1\u06e1\u06e5\u06d9\u06e6\u06d8\u06e7\u06dc\u06e5\u06d8\u06eb\u06d9\u06d9\u06dc\u06dc\u06db\u06d7\u06e7\u06d9\u06e8\u06d9\u06e8"

    goto/16 :goto_0

    :sswitch_f
    sput-object v7, Lcom/cyjh/elfin/entity/ActionBarOperaEnum;->NO_ALL_CHECK:Lcom/cyjh/elfin/entity/ActionBarOperaEnum;

    const-string v0, "\u06d6\u06e6\u06d9\u06ec\u06e4\u06e4\u06e5\u06d8\u06e7\u06d8\u06d8\u06df\u06e5\u06eb\u06df\u06dc\u06e6\u06e2\u06db\u06e8\u06ec\u06e7\u06e2\u06db\u06e4\u06e8\u06e0\u06d8\u06d8\u06d7\u06df\u06e2\u06e7\u06e1\u06e6\u06d9\u06d7\u06d8\u06d9\u06d6\u06ec\u06da\u06d9\u06e5"

    goto/16 :goto_0

    :sswitch_10
    new-instance v6, Lcom/cyjh/elfin/entity/ActionBarOperaEnum;

    const-string v0, "CLOUD"

    const/16 v15, 0x8

    invoke-direct {v6, v0, v15}, Lcom/cyjh/elfin/entity/ActionBarOperaEnum;-><init>(Ljava/lang/String;I)V

    const-string v0, "\u06dc\u06e2\u06e5\u06e8\u06e1\u06da\u06e6\u06e8\u06e7\u06eb\u06e7\u06dc\u06df\u06e1\u06e8\u06d8\u06e5\u06e8\u06e4\u06d9\u06e6\u06e7\u06ec\u06e8\u06d9\u06e6\u06dc\u06eb\u06ec\u06d6\u06e1"

    goto/16 :goto_0

    :sswitch_11
    sput-object v6, Lcom/cyjh/elfin/entity/ActionBarOperaEnum;->CLOUD:Lcom/cyjh/elfin/entity/ActionBarOperaEnum;

    const-string v0, "\u06ec\u06e1\u06e8\u06d8\u06e1\u06e1\u06e4\u06d9\u06e4\u06dc\u06e6\u06da\u06d6\u06e7\u06e0\u06d6\u06d8\u06d7\u06e4\u06ec\u06d7\u06e0\u06e4\u06da\u06e0\u06dc\u06e1\u06e2\u06dc\u06df\u06e4\u06d8\u06d8\u06e8\u06e0\u06e4\u06dc\u06d9\u06e5\u06e5\u06e6\u06e2\u06e6\u06df\u06dc"

    goto/16 :goto_0

    :sswitch_12
    new-instance v5, Lcom/cyjh/elfin/entity/ActionBarOperaEnum;

    const-string v0, "CREATE_NEW_FILE"

    const/16 v15, 0x9

    invoke-direct {v5, v0, v15}, Lcom/cyjh/elfin/entity/ActionBarOperaEnum;-><init>(Ljava/lang/String;I)V

    const-string v0, "\u06d7\u06d6\u06e2\u06e7\u06eb\u06d8\u06e4\u06e2\u06ec\u06ec\u06e6\u06da\u06e8\u06d8\u06da\u06e6\u06e6\u06d8\u06db\u06eb\u06d8\u06ec\u06eb\u06e2\u06d7\u06d8\u06dc\u06d7\u06e8\u06d7\u06d9\u06e8\u06db\u06da\u06d8\u06dc\u06d8\u06e2\u06d7\u06e6\u06e7\u06d7\u06e5\u06d8\u06d9\u06e4\u06eb\u06ec\u06e8\u06e1\u06e0\u06e0\u06e5\u06d8\u06eb\u06e2\u06da"

    goto/16 :goto_0

    :sswitch_13
    sput-object v5, Lcom/cyjh/elfin/entity/ActionBarOperaEnum;->CREATE_NEW_FILE:Lcom/cyjh/elfin/entity/ActionBarOperaEnum;

    const-string v0, "\u06d9\u06df\u06eb\u06e6\u06e0\u06e5\u06e7\u06ec\u06d8\u06d8\u06e8\u06e7\u06eb\u06dc\u06e8\u06d6\u06e8\u06dc\u06dc\u06e7\u06eb\u06e8\u06d8\u06e7\u06d8\u06db\u06e6\u06e8\u06e5\u06e4\u06e4\u06df\u06ec\u06d6\u06d8\u06e0\u06e4\u06e0\u06e2\u06e8\u06e6\u06db\u06d8\u06d9\u06da\u06e6\u06df\u06e0\u06df\u06d9"

    goto/16 :goto_0

    :sswitch_14
    new-instance v4, Lcom/cyjh/elfin/entity/ActionBarOperaEnum;

    const-string v0, "RUN_SCRIPT"

    const/16 v15, 0xa

    invoke-direct {v4, v0, v15}, Lcom/cyjh/elfin/entity/ActionBarOperaEnum;-><init>(Ljava/lang/String;I)V

    const-string v0, "\u06e4\u06e5\u06e0\u06e6\u06dc\u06e6\u06d8\u06db\u06eb\u06dc\u06d8\u06e1\u06e0\u06d8\u06d8\u06e7\u06d7\u06e5\u06d8\u06e4\u06d8\u06d8\u06db\u06e1\u06d6\u06d8\u06d9\u06e1\u06e2\u06e6\u06e8\u06d8\u06d8\u06d8\u06ec\u06d6\u06d8\u06e4\u06db\u06d6\u06d8\u06e7\u06e0\u06e7\u06db\u06e0\u06d9\u06db\u06e5"

    goto/16 :goto_0

    :sswitch_15
    sput-object v4, Lcom/cyjh/elfin/entity/ActionBarOperaEnum;->RUN_SCRIPT:Lcom/cyjh/elfin/entity/ActionBarOperaEnum;

    const-string v0, "\u06e2\u06db\u06d8\u06d8\u06e1\u06e7\u06d8\u06d6\u06da\u06ec\u06e7\u06db\u06e1\u06d8\u06e4\u06eb\u06e4\u06dc\u06e6\u06d8\u06d9\u06e8\u06e8\u06e2\u06da\u06dc\u06d9\u06db\u06e8\u06d8\u06df\u06d6\u06df"

    goto/16 :goto_0

    :sswitch_16
    new-instance v3, Lcom/cyjh/elfin/entity/ActionBarOperaEnum;

    const-string v0, "HEAD_ICON"

    const/16 v15, 0xb

    invoke-direct {v3, v0, v15}, Lcom/cyjh/elfin/entity/ActionBarOperaEnum;-><init>(Ljava/lang/String;I)V

    const-string v0, "\u06dc\u06e4\u06eb\u06e7\u06df\u06e8\u06d8\u06ec\u06e7\u06e8\u06d8\u06eb\u06e0\u06d8\u06d8\u06d6\u06df\u06e7\u06e5\u06e7\u06dc\u06d8\u06e1\u06e8\u06d6\u06e7\u06e4\u06e6\u06dc\u06e8\u06da\u06dc\u06dc\u06e1\u06e6\u06df\u06e8\u06d8\u06eb\u06d9\u06eb"

    goto/16 :goto_0

    :sswitch_17
    sput-object v3, Lcom/cyjh/elfin/entity/ActionBarOperaEnum;->HEAD_ICON:Lcom/cyjh/elfin/entity/ActionBarOperaEnum;

    const-string v0, "\u06df\u06e4\u06dc\u06e6\u06db\u06e0\u06db\u06e6\u06e4\u06e2\u06e0\u06e8\u06d9\u06e1\u06d9\u06db\u06ec\u06e5\u06d8\u06d7\u06ec\u06d7\u06e8\u06e0\u06e7\u06da\u06dc\u06d6\u06d8\u06dc\u06e1\u06d6\u06d8\u06eb\u06db\u06e5\u06e4\u06e2\u06e4\u06d9\u06e8\u06d6\u06d8\u06ec\u06e2\u06e2\u06e8\u06e2\u06d7\u06e8\u06e1\u06e6\u06d8"

    goto/16 :goto_0

    :sswitch_18
    new-instance v2, Lcom/cyjh/elfin/entity/ActionBarOperaEnum;

    const-string v0, "SEARCH"

    const/16 v15, 0xc

    invoke-direct {v2, v0, v15}, Lcom/cyjh/elfin/entity/ActionBarOperaEnum;-><init>(Ljava/lang/String;I)V

    const-string v0, "\u06e2\u06e2\u06e6\u06d8\u06da\u06ec\u06d6\u06e1\u06e6\u06d8\u06e2\u06e2\u06e4\u06e7\u06e6\u06d8\u06e4\u06e8\u06e6\u06d7\u06eb\u06e8\u06eb\u06e1\u06d7\u06e0\u06ec\u06e0\u06e1\u06e5\u06e5\u06e7\u06e7\u06dc\u06d9\u06e5\u06df\u06e8\u06e0\u06d9\u06da\u06dc\u06e4\u06e2\u06d7\u06eb\u06e4\u06da\u06d6\u06e2\u06e6\u06d8\u06e7\u06e0\u06df"

    goto/16 :goto_0

    :sswitch_19
    sput-object v2, Lcom/cyjh/elfin/entity/ActionBarOperaEnum;->SEARCH:Lcom/cyjh/elfin/entity/ActionBarOperaEnum;

    const-string v0, "\u06d9\u06d6\u06da\u06df\u06db\u06e4\u06e2\u06e7\u06e0\u06d6\u06dc\u06e8\u06d8\u06db\u06e2\u06d9\u06e4\u06db\u06e7\u06df\u06e4\u06ec\u06eb\u06d7\u06ec\u06eb\u06e7\u06e6\u06d8\u06e6\u06e5\u06d6\u06d8\u06e0\u06d6\u06e7\u06d6\u06e8\u06e7\u06e1\u06e4\u06eb\u06e7\u06e4\u06e8\u06e0\u06e5\u06e2\u06e5\u06d9\u06e6\u06db\u06e7\u06e7\u06e5\u06df"

    goto/16 :goto_0

    :sswitch_1a
    new-instance v1, Lcom/cyjh/elfin/entity/ActionBarOperaEnum;

    const-string v0, "START_DOWNLOAD"

    const/16 v15, 0xd

    invoke-direct {v1, v0, v15}, Lcom/cyjh/elfin/entity/ActionBarOperaEnum;-><init>(Ljava/lang/String;I)V

    const-string v0, "\u06e6\u06e0\u06d8\u06ec\u06d7\u06e2\u06e6\u06e5\u06e1\u06e4\u06ec\u06e4\u06da\u06d9\u06e6\u06e0\u06e7\u06e5\u06e5\u06e1\u06eb\u06df\u06e0\u06da\u06e7\u06d6\u06d8\u06e1\u06e7\u06e8\u06e2\u06e1\u06d9\u06df\u06e0\u06dc\u06ec\u06d8\u06eb\u06e6\u06e7\u06db"

    goto/16 :goto_0

    :sswitch_1b
    sput-object v1, Lcom/cyjh/elfin/entity/ActionBarOperaEnum;->START_DOWNLOAD:Lcom/cyjh/elfin/entity/ActionBarOperaEnum;

    const-string v0, "\u06d6\u06e4\u06e7\u06eb\u06e8\u06e5\u06d8\u06e7\u06e4\u06eb\u06e0\u06d6\u06e7\u06e7\u06eb\u06e1\u06e5\u06d6\u06ec\u06d9\u06df\u06e5\u06da\u06da\u06e4\u06d7\u06d8\u06e5\u06e7\u06d7\u06e6\u06d8"

    goto/16 :goto_0

    :sswitch_1c
    const/16 v0, 0xe

    new-array v0, v0, [Lcom/cyjh/elfin/entity/ActionBarOperaEnum;

    const/4 v15, 0x0

    aput-object v14, v0, v15

    const/4 v15, 0x1

    aput-object v13, v0, v15

    const/4 v15, 0x2

    aput-object v12, v0, v15

    const/4 v15, 0x3

    aput-object v11, v0, v15

    const/4 v15, 0x4

    aput-object v10, v0, v15

    const/4 v15, 0x5

    aput-object v9, v0, v15

    const/4 v15, 0x6

    aput-object v8, v0, v15

    const/4 v15, 0x7

    aput-object v7, v0, v15

    const/16 v15, 0x8

    aput-object v6, v0, v15

    const/16 v15, 0x9

    aput-object v5, v0, v15

    const/16 v15, 0xa

    aput-object v4, v0, v15

    const/16 v15, 0xb

    aput-object v3, v0, v15

    const/16 v15, 0xc

    aput-object v2, v0, v15

    const/16 v15, 0xd

    aput-object v1, v0, v15

    sput-object v0, Lcom/cyjh/elfin/entity/ActionBarOperaEnum;->$VALUES:[Lcom/cyjh/elfin/entity/ActionBarOperaEnum;

    const-string v0, "\u06da\u06e6\u06e1\u06db\u06e0\u06e8\u06d8\u06e1\u06e8\u06e6\u06d8\u06e7\u06d8\u06d9\u06d8\u06d8\u06da\u06d8\u06eb\u06e8\u06d8\u06df\u06e0\u06e1\u06df\u06d9\u06da\u06db\u06d7\u06eb\u06e2\u06da\u06e8\u06d8\u06e1\u06e1\u06e5\u06eb\u06e7\u06dc"

    goto/16 :goto_0

    :sswitch_1d
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7fe273dc -> :sswitch_7
        -0x77ae4c7c -> :sswitch_0
        -0x7315b20b -> :sswitch_e
        -0x68e4b6c1 -> :sswitch_10
        -0x6827877f -> :sswitch_12
        -0x44b6ffbb -> :sswitch_1
        -0x42ca829e -> :sswitch_4
        -0x4239e175 -> :sswitch_a
        -0x91b9152 -> :sswitch_6
        0x1d74767 -> :sswitch_1b
        0x44bf44a -> :sswitch_15
        0xa410d79 -> :sswitch_1c
        0x1db10d8e -> :sswitch_16
        0x2b5dc2f4 -> :sswitch_19
        0x2d0f93c3 -> :sswitch_1a
        0x2e97ac14 -> :sswitch_1d
        0x321801a8 -> :sswitch_13
        0x34164c12 -> :sswitch_8
        0x3782c528 -> :sswitch_18
        0x625c0a0d -> :sswitch_9
        0x6435eacc -> :sswitch_b
        0x6f5735e9 -> :sswitch_2
        0x72dccb0a -> :sswitch_14
        0x7585f9c0 -> :sswitch_f
        0x762fa6f9 -> :sswitch_11
        0x79a44218 -> :sswitch_17
        0x7a3098dd -> :sswitch_d
        0x7cd35a80 -> :sswitch_c
        0x7ecc0867 -> :sswitch_3
        0x7f7837ab -> :sswitch_5
    .end sparse-switch
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cyjh/elfin/entity/ActionBarOperaEnum;
    .locals 4

    const-string v0, "\u06db\u06ec\u06e4\u06e0\u06e1\u06e4\u06ec\u06d9\u06e5\u06d8\u06e0\u06e1\u06d7\u06d6\u06d7\u06d8\u06eb\u06d9\u06df\u06e0\u06d8\u06eb\u06e5\u06eb\u06d8\u06d8\u06d7\u06e8\u06e0\u06e2\u06ec\u06e1\u06dc\u06db\u06eb\u06e7\u06eb\u06df\u06e1\u06da\u06df\u06db\u06da\u06eb"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x36

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x3f2

    const/16 v2, 0x225

    const v3, -0x4cdce6f1

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06dc\u06d6\u06e8\u06d8\u06dc\u06d6\u06d7\u06d9\u06e2\u06e0\u06e4\u06e8\u06e7\u06d6\u06e1\u06e5\u06d8\u06d8\u06dc\u06e5\u06d8\u06e6\u06d7\u06ec\u06e6\u06d6\u06e6\u06e2\u06e7\u06d6\u06e1\u06d8\u06e6\u06d8\u06d6\u06e4\u06d6\u06d8\u06e7\u06d7\u06eb\u06db\u06e2\u06d8\u06d8\u06e5\u06e5\u06df\u06e1\u06e4\u06da\u06e8\u06e5\u06e7\u06e7\u06eb\u06da\u06e8\u06d8\u06e2"

    goto :goto_0

    :sswitch_1
    const-class v0, Lcom/cyjh/elfin/entity/ActionBarOperaEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/cyjh/elfin/entity/ActionBarOperaEnum;

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x57c2a5f7 -> :sswitch_1
        0x675399f8 -> :sswitch_0
    .end sparse-switch
.end method

.method public static values()[Lcom/cyjh/elfin/entity/ActionBarOperaEnum;
    .locals 4

    const-string v0, "\u06e0\u06e6\u06e2\u06da\u06e6\u06db\u06df\u06e8\u06e4\u06e8\u06db\u06d6\u06d8\u06e2\u06e7\u06dc\u06d8\u06e7\u06ec\u06e0\u06e6\u06e2\u06dc\u06df\u06e2\u06dc\u06e4\u06e7\u06d6\u06d8\u06e7\u06e2\u06df\u06e6\u06e1\u06df\u06d8\u06e5\u06da\u06da\u06e1\u06e4\u06db\u06db\u06df\u06d7\u06d6\u06dc\u06d8\u06df\u06e5\u06df"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x3a6

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x212

    const/16 v2, 0x2c5

    const v3, 0x224a9899

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    sget-object v0, Lcom/cyjh/elfin/entity/ActionBarOperaEnum;->$VALUES:[Lcom/cyjh/elfin/entity/ActionBarOperaEnum;

    invoke-virtual {v0}, [Lcom/cyjh/elfin/entity/ActionBarOperaEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cyjh/elfin/entity/ActionBarOperaEnum;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch -0x132c415e
        :pswitch_0
    .end packed-switch
.end method
