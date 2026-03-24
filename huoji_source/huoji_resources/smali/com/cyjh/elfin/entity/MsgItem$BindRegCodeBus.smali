.class public Lcom/cyjh/elfin/entity/MsgItem$BindRegCodeBus;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/elfin/entity/MsgItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BindRegCodeBus"
.end annotation


# instance fields
.field private expireTime:J


# direct methods
.method public constructor <init>(J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/cyjh/elfin/entity/MsgItem$BindRegCodeBus;->expireTime:J

    return-void
.end method


# virtual methods
.method public getExpireTime()J
    .locals 4

    const-string v0, "\u06ec\u06e1\u06e8\u06d8\u06d8\u06d9\u06e6\u06df\u06d9\u06e8\u06d8\u06e5\u06d9\u06e7\u06e4\u06e6\u06dc\u06d6\u06e4\u06e0\u06d6\u06e1\u06e2\u06d6\u06e8\u06d8\u06e2\u06da\u06e1\u06d8\u06d9\u06ec\u06e4\u06e6\u06d8\u06eb\u06e1\u06e2\u06e7\u06db\u06d9\u06ec\u06e4\u06da"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x22

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x3ef

    const/16 v2, 0x2a3

    const v3, -0x26cf6c2b

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06dc\u06df\u06d6\u06db\u06df\u06e2\u06e4\u06e6\u06d6\u06d8\u06e0\u06ec\u06dc\u06e8\u06e6\u06db\u06e1\u06e2\u06e0\u06da\u06e4\u06e6\u06d8\u06e8\u06d7\u06e6\u06d8\u06e1\u06e2\u06da\u06eb\u06e4\u06e1\u06df\u06e8\u06d7\u06eb\u06d8\u06d6\u06d8\u06d8\u06e6\u06e6\u06e4\u06d8\u06e7\u06d8\u06e2\u06ec\u06dc\u06d8\u06d8\u06e7\u06e1\u06d8"

    goto :goto_0

    :sswitch_1
    iget-wide v0, p0, Lcom/cyjh/elfin/entity/MsgItem$BindRegCodeBus;->expireTime:J

    return-wide v0

    :sswitch_data_0
    .sparse-switch
        -0x5ce59722 -> :sswitch_0
        -0x1903e6c0 -> :sswitch_1
    .end sparse-switch
.end method
