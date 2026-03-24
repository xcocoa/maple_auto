.class public Lcom/cyjh/elfin/entity/MsgItem$WebPageDownButtonEvent;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/elfin/entity/MsgItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WebPageDownButtonEvent"
.end annotation


# instance fields
.field private msgType:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/cyjh/elfin/entity/MsgItem$WebPageDownButtonEvent;->msgType:I

    return-void
.end method


# virtual methods
.method public getMsgType()I
    .locals 4

    const-string v0, "\u06e4\u06eb\u06dc\u06d9\u06e0\u06e2\u06e4\u06e6\u06e6\u06e8\u06da\u06d8\u06e1\u06db\u06d7\u06db\u06e0\u06eb\u06ec\u06db\u06e6\u06d8\u06d7\u06dc\u06d8\u06d8\u06e8\u06e2\u06e8\u06ec\u06dc\u06e1\u06d6\u06d8\u06e2\u06df\u06d6\u06e2\u06e0\u06e0\u06eb\u06d7\u06e0\u06d6\u06e6\u06da\u06e7\u06e6"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x197

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x3e4

    const/16 v2, 0x1f1

    const v3, -0x2f7c7df2

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d7\u06df\u06e6\u06d8\u06e7\u06d9\u06ec\u06d8\u06e6\u06d8\u06dc\u06da\u06e4\u06e5\u06e6\u06d6\u06d8\u06d9\u06e7\u06e5\u06d8\u06e4\u06d6\u06dc\u06e1\u06e4\u06df\u06d6\u06e7\u06e2\u06d9\u06e8\u06e8\u06d8"

    goto :goto_0

    :sswitch_1
    iget v0, p0, Lcom/cyjh/elfin/entity/MsgItem$WebPageDownButtonEvent;->msgType:I

    return v0

    :sswitch_data_0
    .sparse-switch
        0x255ae652 -> :sswitch_1
        0x4c845db6 -> :sswitch_0
    .end sparse-switch
.end method
