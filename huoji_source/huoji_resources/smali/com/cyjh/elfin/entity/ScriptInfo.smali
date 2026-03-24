.class public Lcom/cyjh/elfin/entity/ScriptInfo;
.super Ljava/lang/Object;


# instance fields
.field private ScriptVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getScriptVersion()Ljava/lang/String;
    .locals 4

    const-string v0, "\u06e0\u06e2\u06df\u06d6\u06d6\u06e1\u06eb\u06e2\u06dc\u06d8\u06e5\u06d8\u06df\u06d8\u06e6\u06e6\u06df\u06e8\u06e5\u06da\u06e7\u06e8\u06ec\u06eb\u06d6\u06d8\u06dc\u06e5\u06dc\u06e8\u06d8\u06e8\u06e2\u06e5\u06e1\u06db\u06e1\u06e2"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x29e

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x10f

    const/16 v2, 0x1ca

    const v3, 0x12b0906a

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e6\u06da\u06e5\u06dc\u06da\u06d7\u06e1\u06ec\u06db\u06dc\u06e7\u06e1\u06d8\u06e1\u06e0\u06dc\u06d7\u06d7\u06e7\u06e5\u06d9\u06e5\u06d8\u06e4\u06eb\u06eb\u06da\u06e6\u06d6\u06d8\u06d9\u06dc\u06db\u06db\u06e4\u06d6\u06d8\u06e6\u06e6\u06df\u06e0\u06df\u06d9\u06e0\u06e4"

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/cyjh/elfin/entity/ScriptInfo;->ScriptVersion:Ljava/lang/String;

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x282bc9fa -> :sswitch_1
        0x5e5f8ad7 -> :sswitch_0
    .end sparse-switch
.end method

.method public setScriptVersion(Ljava/lang/String;)V
    .locals 4

    const-string v0, "\u06dc\u06e8\u06dc\u06d8\u06d9\u06d7\u06e8\u06d8\u06e5\u06d8\u06db\u06e2\u06d8\u06e2\u06da\u06d8\u06d8\u06d8\u06e2\u06d8\u06da\u06d9\u06ec\u06e7O\u06d8\u06da\u06e5\u06d8\u06e4\u06e4\u06da\u06ec\u06db\u06d9\u06d9\u06e6\u06d6\u06e8\u06dc\u06d6\u06da\u06df\u06d8\u06d8\u06e6\u06db\u06e5\u06d8\u06e5\u06d7\u06ec"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0xcf

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x3a5

    const/16 v2, 0x105

    const v3, -0x4303ecae

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d8\u06d8\u06e1\u06d8\u06e4\u06e7\u06d7\u06da\u06dc\u06e7\u06da\u06e0\u06df\u06dc\u06ec\u06ec\u06dc\u06d6\u06eb\u06d8\u06d8\u06e0\u06d9\u06d9\u06d6\u06d8\u06da\u06eb\u06eb\u06ec\u06dc\u06e8\u06dc\u06e4\u06e8\u06d8\u06e7\u06e4\u06dc\u06e1\u06e2\u06e7\u06d9\u06e8\u06d6\u06e4\u06df\u06e6\u06d9\u06d6\u06db"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06d6\u06e4\u06dc\u06e1\u06e4\u06e1\u06e6\u06e0\u06e1\u06d9\u06e1\u06e8\u06e2\u06e8\u06d9\u06db\u06e6\u06e2\u06e0\u06da\u06e1\u06e7\u06e7\u06e1\u06d6\u06eb\u06d9\u06eb\u06df\u06db\u06d7\u06e1\u06e8\u06d8\u06e8\u06e6\u06eb"

    goto :goto_0

    :sswitch_2
    iput-object p1, p0, Lcom/cyjh/elfin/entity/ScriptInfo;->ScriptVersion:Ljava/lang/String;

    const-string v0, "\u06e5\u06df\u06dc\u06e0\u06d9\u06d6\u06e2\u06e2\u06e5\u06dc\u06e8\u06e1\u06db\u06e4\u06db\u06e8\u06d7\u06e1\u06d8\u06d6\u06da\u06d8\u06d8\u06e2\u06e4\u06dc\u06e4\u06e4\u06d8\u06d8\u06e0\u06e0\u06e1\u06eb\u06d8\u06e2\u06d9\u06e5\u06e8"

    goto :goto_0

    :sswitch_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x4718035e -> :sswitch_3
        -0x2052d94b -> :sswitch_0
        -0x1e996564 -> :sswitch_1
        0xbf8bb34 -> :sswitch_2
    .end sparse-switch
.end method
