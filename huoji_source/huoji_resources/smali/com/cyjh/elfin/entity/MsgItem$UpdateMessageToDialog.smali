.class public Lcom/cyjh/elfin/entity/MsgItem$UpdateMessageToDialog;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/elfin/entity/MsgItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UpdateMessageToDialog"
.end annotation


# instance fields
.field private message:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cyjh/elfin/entity/MsgItem$UpdateMessageToDialog;->message:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 4

    const-string v0, "\u06e2\u06e8\u06dc\u06ec\u06e1\u06e6\u06d9\u06d6\u06e2\u06e2\u06d8\u06d6\u06dc\u06e1\u06d8\u06e2\u06dc\u06e2\u06d6\u06e1\u06e6\u06d8\u06eb\u06e8\u06dc\u06db\u06e4\u06e5\u06d8\u06e4\u06e2\u06e1\u06e7\u06e8\u06eb\u06e2\u06df\u06e1\u06e5\u06db\u06dc\u06d8\u06d8\u06eb\u06e7"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x234

    xor-int/2addr v1, v2

    xor-int/lit8 v1, v1, 0x5f

    const/16 v2, 0x1a

    const v3, -0x16578fc2

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d6\u06d8\u06e6\u06d6\u06da\u06eb\u06e0\u06d6\u06ec\u06d7\u06e7\u06e2\u06d8\u06e7\u06db\u06e4\u06eb\u06da\u06d9\u06e1\u06e6\u06df\u06da\u06da\u06dc\u06d8\u06e6\u06d8\u06e5\u06e7\u06e8\u06e4\u06e5\u06dc\u06e1\u06d7\u06df\u06d8\u06db\u06e5\u06e5\u06df\u06e7\u06e6\u06ec\u06d7\u06df\u06d9"

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/cyjh/elfin/entity/MsgItem$UpdateMessageToDialog;->message:Ljava/lang/String;

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x3eb32e52 -> :sswitch_1
        0x421b95b7 -> :sswitch_0
    .end sparse-switch
.end method
