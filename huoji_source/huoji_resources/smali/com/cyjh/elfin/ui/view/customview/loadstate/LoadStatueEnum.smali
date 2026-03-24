.class public final enum Lcom/cyjh/elfin/ui/view/customview/loadstate/LoadStatueEnum;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/cyjh/elfin/ui/view/customview/loadstate/LoadStatueEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final $VALUES:[Lcom/cyjh/elfin/ui/view/customview/loadstate/LoadStatueEnum;

.field public static final enum COMPLETE:Lcom/cyjh/elfin/ui/view/customview/loadstate/LoadStatueEnum;

.field public static final enum EMPTY:Lcom/cyjh/elfin/ui/view/customview/loadstate/LoadStatueEnum;

.field public static final enum FAILED:Lcom/cyjh/elfin/ui/view/customview/loadstate/LoadStatueEnum;

.field public static final enum LOADING:Lcom/cyjh/elfin/ui/view/customview/loadstate/LoadStatueEnum;

.field public static final enum NON:Lcom/cyjh/elfin/ui/view/customview/loadstate/LoadStatueEnum;


# direct methods
.method public static constructor <clinit>()V
    .locals 13

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v2, 0x0

    const-string v0, "\u06e8\u06dc\u06e6\u06d8\u06e2\u06d9\u06d6\u06d8\u06e7\u06ec\u06e7\u06e8\u06e1\u06e8\u06d8\u06e2\u06da\u06e4\u06ec\u06d9\u06df\u06e2\u06e4\u06da\u06eb\u06eb\u06d6\u06e0\u06e5\u06ec\u06da\u06e4\u06db\u06db\u06dc\u06ec\u06d6\u06d7\u06e5\u06ec\u06e8\u06d8\u06e4\u06eb\u06da\u06e5\u06d6\u06e2\u06e5\u06da\u06eb\u06dc\u06df\u06d8\u06d8\u06e8\u06eb\u06d9"

    move-object v1, v2

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v7, 0x306

    xor-int/2addr v2, v7

    xor-int/lit16 v2, v2, 0x381

    const/16 v7, 0x2e4

    const v8, 0x728c571d

    xor-int/2addr v2, v7

    xor-int/2addr v2, v8

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    new-instance v2, Lcom/cyjh/elfin/ui/view/customview/loadstate/LoadStatueEnum;

    const-string v0, "NON"

    invoke-direct {v2, v0, v9}, Lcom/cyjh/elfin/ui/view/customview/loadstate/LoadStatueEnum;-><init>(Ljava/lang/String;I)V

    const-string v0, "\u06e2\u06dc\u06da\u06d9\u06ec\u06e8\u06d6\u06d6\u06eb\u06e5\u06d9\u06df\u06e4\u06d7\u06d6\u06d8\u06ec\u06e8\u06e1\u06d8\u06d6\u06dc\u06d8\u06d7\u06dc\u06ec\u06e4\u06d9\u06db\u06e7\u06dc\u06e2\u06d6\u06d7\u06e0\u06e6\u06eb\u06e6\u06d8\u06eb\u06e8\u06e7\u06d8\u06dc\u06e4\u06e8\u06d6\u06e7\u06e6\u06da\u06d6\u06e5\u06d8\u06dc\u06e8\u06e1\u06d8\u06e5\u06d8"

    move-object v6, v2

    goto :goto_0

    :sswitch_1
    sput-object v6, Lcom/cyjh/elfin/ui/view/customview/loadstate/LoadStatueEnum;->NON:Lcom/cyjh/elfin/ui/view/customview/loadstate/LoadStatueEnum;

    const-string v0, "\u06d8\u06e7\u06e6\u06d6\u06eb\u06df\u06eb\u06e5\u06dc\u06d8\u06e6\u06db\u06e1\u06e4\u06e2\u06da\u06e8\u06e0\u06e5\u06eb\u06df\u06df\u06e5\u06d9\u06dc\u06d8\u06e5\u06e2\u06e1\u06db\u06da\u06e7"

    goto :goto_0

    :sswitch_2
    new-instance v2, Lcom/cyjh/elfin/ui/view/customview/loadstate/LoadStatueEnum;

    const-string v0, "LOADING"

    invoke-direct {v2, v0, v10}, Lcom/cyjh/elfin/ui/view/customview/loadstate/LoadStatueEnum;-><init>(Ljava/lang/String;I)V

    const-string v0, "\u06e1\u06e2\u06d6\u06d8\u06e0\u06db\u06eb\u06d6\u06dc\u06db\u06df\u06db\u06e1\u06e0\u06d6\u06dc\u06db\u06eb\u06d6\u06d8\u06e0\u06d6\u06d6\u06e4\u06e5\u06d6\u06d8\u06d6\u06e5\u06e7\u06d8\u06d8\u06e1\u06e6\u06e1\u06d6\u06d7\u06d8\u06e5\u06d8\u06e4\u06e0\u06eb\u06e7\u06da\u06e8\u06d8\u06dc\u06e4\u06e8\u06d8\u06ec\u06df\u06d8\u06d8"

    move-object v5, v2

    goto :goto_0

    :sswitch_3
    sput-object v5, Lcom/cyjh/elfin/ui/view/customview/loadstate/LoadStatueEnum;->LOADING:Lcom/cyjh/elfin/ui/view/customview/loadstate/LoadStatueEnum;

    const-string v0, "\u06e8\u06e1\u06dc\u06d8\u06dc\u06d7\u06e4\u06e8\u06db\u06df\u06eb\u06e1\u06e1\u06d9\u06db\u06e8\u06d8\u06d7\u06eb\u06dc\u06d8\u06e4\u06dc\u06e5\u06d8\u06e0\u06e8\u06e5\u06df\u06eb\u06e6\u06e1\u06d6\u06da\u06d6\u06e5\u06d8\u06da\u06e5\u06d9\u06e0\u06e4\u06dc\u06d8\u06d6\u06e4\u06ec"

    goto :goto_0

    :sswitch_4
    new-instance v2, Lcom/cyjh/elfin/ui/view/customview/loadstate/LoadStatueEnum;

    const-string v0, "FAILED"

    invoke-direct {v2, v0, v11}, Lcom/cyjh/elfin/ui/view/customview/loadstate/LoadStatueEnum;-><init>(Ljava/lang/String;I)V

    const-string v0, "\u06e0\u06d8\u06e6\u06d8\u06df\u06d6\u06dc\u06e8\u06e8\u06e8\u06d7\u06e7\u06d6\u06da\u06e4\u06da\u06da\u06d8\u06e8\u06d8\u06e1\u06da\u06e0\u06da\u06e4\u06e2\u06db\u06e4\u06e0\u06da\u06ec\u06e1\u06d8\u06e1\u06e5\u06d6\u06d8\u06eb\u06d6\u06e5\u06d8\u06d9\u06e2\u06e0\u06e6\u06e2\u06da"

    move-object v4, v2

    goto :goto_0

    :sswitch_5
    sput-object v4, Lcom/cyjh/elfin/ui/view/customview/loadstate/LoadStatueEnum;->FAILED:Lcom/cyjh/elfin/ui/view/customview/loadstate/LoadStatueEnum;

    const-string v0, "\u06e0\u06e6\u06df\u06d7\u06e5\u06db\u06d7\u06e7\u06e7\u06e8\u06db\u06da\u06dc\u06e0\u06d6\u06e4\u06e5\u06d9\u06eb\u06db\u06e8\u06d8\u06d9\u06e1\u06dc\u06d9\u06d7\u06db\u06da\u06d6\u06d8\u06d8"

    goto :goto_0

    :sswitch_6
    new-instance v2, Lcom/cyjh/elfin/ui/view/customview/loadstate/LoadStatueEnum;

    const-string v0, "EMPTY"

    invoke-direct {v2, v0, v12}, Lcom/cyjh/elfin/ui/view/customview/loadstate/LoadStatueEnum;-><init>(Ljava/lang/String;I)V

    const-string v0, "\u06d9\u06ec\u06e6\u06e7\u06df\u06dc\u06dc\u06e1\u06d8\u06d8\u06e1\u06ec\u06d8\u06d8\u06e6\u06e4\u06dc\u06d8\u06db\u06d6\u06df\u06db\u06e2\u06d8\u06db\u06e8\u06e1\u06d6\u06e6\u06eb\u06e4\u06e5\u06d6\u06d8\u06e2\u06e7\u06e8\u06d8\u06e2\u06df\u06e4\u06eb\u06e0\u06e8\u06e7\u06d6\u06df\u06e1\u06d9\u06e5\u06db\u06e7\u06e0"

    move-object v3, v2

    goto :goto_0

    :sswitch_7
    sput-object v3, Lcom/cyjh/elfin/ui/view/customview/loadstate/LoadStatueEnum;->EMPTY:Lcom/cyjh/elfin/ui/view/customview/loadstate/LoadStatueEnum;

    const-string v0, "\u06df\u06db\u06e1\u06d8\u06da\u06d7\u06d6\u06d8\u06d9\u06e7\u06e4\u06d8\u06ec\u06e8\u06d8\u06d8\u06e0\u06e7\u06dc\u06ec\u06e7\u06e2\u06e5\u06d8\u06e0\u06e8\u06df\u06e7\u06e6\u06e8\u06e1\u06e6\u06d6\u06e7\u06eb\u06e8\u06db\u06e0\u06da\u06e1\u06d8\u06d6\u06d8\u06eb\u06da\u06e2"

    goto :goto_0

    :sswitch_8
    new-instance v1, Lcom/cyjh/elfin/ui/view/customview/loadstate/LoadStatueEnum;

    const-string v0, "COMPLETE"

    const/4 v2, 0x4

    invoke-direct {v1, v0, v2}, Lcom/cyjh/elfin/ui/view/customview/loadstate/LoadStatueEnum;-><init>(Ljava/lang/String;I)V

    const-string v0, "\u06dc\u06d8\u06eb\u06e7\u06e4\u06d8\u06e7\u06e8\u06d7\u06dc\u06e4\u06e7\u06d9\u06d6\u06e5\u06e0\u06e6\u06ec\u06dc\u06d8\u06e1\u06dc\u06da\u06dc\u06e0\u06d6\u06e1\u06d6\u06e2\u06e1\u06d8"

    goto :goto_0

    :sswitch_9
    sput-object v1, Lcom/cyjh/elfin/ui/view/customview/loadstate/LoadStatueEnum;->COMPLETE:Lcom/cyjh/elfin/ui/view/customview/loadstate/LoadStatueEnum;

    const-string v0, "\u06eb\u06db\u06d6\u06d8\u06e1\u06e0\u06e4\u06e7\u06e8\u06e1\u06d8\u06da\u06e0\u06d8\u06d8\u06e4\u06d8\u06db\u06d6\u06e6\u06db\u06d9\u06d7\u06e0\u06e6\u06e8\u06d7\u06e8\u06df\u06e6\u06d8\u06d6\u06d6\u06e1\u06d8"

    goto :goto_0

    :sswitch_a
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/cyjh/elfin/ui/view/customview/loadstate/LoadStatueEnum;

    aput-object v6, v0, v9

    aput-object v5, v0, v10

    aput-object v4, v0, v11

    aput-object v3, v0, v12

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sput-object v0, Lcom/cyjh/elfin/ui/view/customview/loadstate/LoadStatueEnum;->$VALUES:[Lcom/cyjh/elfin/ui/view/customview/loadstate/LoadStatueEnum;

    const-string v0, "\u06e1\u06d8\u06eb\u06ec\u06e6\u06e4\u06dc\u06da\u06d6\u06d8\u06e7\u06ec\u06d8\u06d8\u06e5\u06d8\u06db\u06dc\u06d6\u06ec\u06e8\u06e1\u06d8\u06e7\u06e0\u06e8\u06d9\u06db\u06d9\u06d9\u06e8\u06e0\u06ec\u06d8\u06e0\u06da\u06e7\u06e6\u06d8\u06da\u06d9\u06e1\u06e2\u06d6"

    goto :goto_0

    :sswitch_b
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x722bf66a -> :sswitch_a
        -0x657d0f91 -> :sswitch_4
        -0x5bbe6d86 -> :sswitch_0
        -0x48260294 -> :sswitch_b
        -0x175bf41f -> :sswitch_8
        -0x16b6450f -> :sswitch_6
        0x18239b -> :sswitch_1
        0x900109a -> :sswitch_7
        0x1d6d2fcb -> :sswitch_5
        0x21780975 -> :sswitch_2
        0x3889c821 -> :sswitch_3
        0x3ff35c1c -> :sswitch_9
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

.method public static valueOf(Ljava/lang/String;)Lcom/cyjh/elfin/ui/view/customview/loadstate/LoadStatueEnum;
    .locals 4

    const-string v0, "\u06e1\u06d7\u06e5\u06d8\u06dc\u06dc\u06e6\u06d9\u06eb\u06da\u06dc\u06eb\u06e4\u06d9\u06d9\u06d8\u06df\u06d8\u06d8\u06d8\u06d9\u06da\u06d7\u06e5\u06e2\u06d8\u06e1\u06eb\u06e5\u06d8\u06d7\u06e6\u06e5\u06d8\u06df\u06e8\u06e1\u06d8\u06d6\u06d9\u06df\u06e1\u06d6\u06db\u06d9\u06db\u06e6"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0xf8

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x23e

    const/16 v2, 0x69

    const v3, -0x5ed48ca6

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06dc\u06df\u06da\u06df\u06da\u06ec\u06d9\u06e7\u06d6\u06d8\u06e2\u06e2\u06e2\u06e5\u06df\u06db\u06e8\u06e0\u06e1\u06d8\u06e0\u06d6\u06dc\u06df\u06e2\u06e4\u06eb\u06da\u06da\u06e5\u06e7\u06e1\u06d8\u06eb\u06da\u06ec\u06e8\u06e6\u06d9\u06ec\u06ec\u06d6\u06d8\u06e0\u06e0\u06d6\u06eb\u06e6\u06e8\u06e8\u06e2\u06e2\u06e1\u06eb\u06df\u06e6\u06da\u06e0"

    goto :goto_0

    :sswitch_1
    const-class v0, Lcom/cyjh/elfin/ui/view/customview/loadstate/LoadStatueEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/cyjh/elfin/ui/view/customview/loadstate/LoadStatueEnum;

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x73f92d06 -> :sswitch_0
        -0x2b25bede -> :sswitch_1
    .end sparse-switch
.end method

.method public static values()[Lcom/cyjh/elfin/ui/view/customview/loadstate/LoadStatueEnum;
    .locals 4

    const-string v0, "\u06e6\u06db\u06dc\u06dc\u06e2\u06d8\u06e1\u06d7\u06e6\u06e5\u06e7\u06dc\u06e8\u06e6\u06dc\u06d8\u06d6\u06ec\u06d9\u06db\u06dc\u06d8\u06ec\u06e6\u06ec\u06e4\u06e8\u06e4\u06d9\u06e8\u06d6\u06d8\u06ec\u06e0\u06e1\u06eb\u06d8\u06db\u06e8\u06db\u06e7\u06e2\u06db\u06e6\u06d8\u06e7\u06d8\u06d8\u06d8\u06db\u06dc\u06db"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x14d

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x251

    const/16 v2, 0x1ed

    const v3, 0x5bf34836

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    sget-object v0, Lcom/cyjh/elfin/ui/view/customview/loadstate/LoadStatueEnum;->$VALUES:[Lcom/cyjh/elfin/ui/view/customview/loadstate/LoadStatueEnum;

    invoke-virtual {v0}, [Lcom/cyjh/elfin/ui/view/customview/loadstate/LoadStatueEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cyjh/elfin/ui/view/customview/loadstate/LoadStatueEnum;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x79464eca
        :pswitch_0
    .end packed-switch
.end method
