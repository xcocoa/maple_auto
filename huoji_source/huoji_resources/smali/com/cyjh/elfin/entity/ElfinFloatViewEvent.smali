.class public Lcom/cyjh/elfin/entity/ElfinFloatViewEvent;
.super Ljava/lang/Object;


# instance fields
.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/cyjh/elfin/entity/ElfinFloatViewEvent;->type:I

    return-void
.end method


# virtual methods
.method public getType()I
    .locals 4

    const-string v0, "\u06e8\u06e1\u06e8\u06d8\u06e7\u06e5\u06e7\u06d8\u06e7\u06e6\u06e5\u06d8\u06ec\u06e5\u06e8\u06d8\u06e8\u06dc\u06ec\u06da\u06e6\u06e1\u06e7\u06e2\u06dc\u06e7\u06e1\u06d7\u06df\u06d8\u06dc\u06d8\u06d8\u06dc\u06db"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x28

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x1e2

    const/16 v2, 0x13c

    const v3, 0x2c53e2aa

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06df\u06e5\u06d6\u06d8\u06d6\u06e6\u06ec\u06db\u06e1\u06eb\u06d9\u06e0\u06e1\u06d8\u06dc\u06dc\u06d6\u06d9\u06d7\u06e5\u06eb\u06dc\u06e7\u06d8\u06d7\u06d8\u06e8\u06d8\u06e5\u06e2\u06db\u06d9\u06e4\u06e6\u06d8\u06dc\u06eb\u06ec\u06e1\u06e6\u06e6\u06d8"

    goto :goto_0

    :sswitch_1
    iget v0, p0, Lcom/cyjh/elfin/entity/ElfinFloatViewEvent;->type:I

    return v0

    :sswitch_data_0
    .sparse-switch
        -0x77dd3a76 -> :sswitch_0
        -0xeaaa690 -> :sswitch_1
    .end sparse-switch
.end method

.method public setType(I)V
    .locals 4

    const-string v0, "\u06e4\u06e4\u06e6\u06d8\u06e0\u06e4\u06e4\u06d7\u06e4\u06e4\u06e8\u06e6\u06eb\u06d6\u06da\u06db\u06d8\u06dc\u06d7\u06d6\u06df\u06e8\u06d8\u06dc\u06eb\u06d7\u06da\u06d7\u06e1\u06d8\u06da\u06e2\u06db\u06d6\u06e7\u06e6\u06d6\u06dc\u06db\u06d7\u06db\u06dc\u06e2\u06db\u06e8\u06d8\u06e8\u06e4\u06db\u06d9\u06ec\u06ec\u06d9\u06d8\u06e5\u06d8\u06e4\u06db\u06e7"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x140

    xor-int/2addr v1, v2

    xor-int/lit8 v1, v1, 0x3b

    const/16 v2, 0xd0

    const v3, -0x6c39b063

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06df\u06e2\u06e0\u06e5\u06d7\u06d7\u06e5\u06e8\u06d8\u06e6\u06d9\u06e8\u06e6\u06e6\u06e5\u06d8\u06e7\u06df\u06dc\u06da\u06e6\u06d9\u06eb\u06e1\u06d8\u06e5\u06d8\u06d6\u06e4\u06dc\u06e5\u06e4\u06e1\u06d7\u06da\u06db\u06e2\u06e1\u06e6\u06e2\u06d6\u06d8"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06e4\u06d6\u06dc\u06e0\u06ec\u06e7\u06dc\u06dc\u06e7\u06d8\u06dc\u06e6\u06db\u06df\u06e6\u06e2\u06d6\u06d9\u06e1\u06ec\u06d8\u06d8\u06e7\u06e7\u06d8\u06d8\u06d6\u06d9\u06ec\u06e5\u06d9\u06dc\u06d8"

    goto :goto_0

    :sswitch_2
    iput p1, p0, Lcom/cyjh/elfin/entity/ElfinFloatViewEvent;->type:I

    const-string v0, "\u06e2\u06df\u06d8\u06d8\u06e1\u06d8\u06d8\u06e0\u06d8\u06d7\u06d6\u06df\u06ec\u06db\u06e7\u06dc\u06d8\u06e2\u06e4\u06eb\u06e5\u06e7\u06eb\u06d8\u06e7\u06d8\u06df\u06dc\u06d8\u06eb\u06e0\u06e5\u06d8\u06d7\u06e1\u06e0\u06e7\u06eb\u06e8\u06d8\u06e0\u06db\u06db\u06e1\u06e7\u06d8\u06e4\u06eb\u06dc\u06ec\u06e2"

    goto :goto_0

    :sswitch_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7d415e1b -> :sswitch_0
        -0x7cf4c8d1 -> :sswitch_3
        -0x208cc9da -> :sswitch_1
        0x1f4face9 -> :sswitch_2
    .end sparse-switch
.end method
