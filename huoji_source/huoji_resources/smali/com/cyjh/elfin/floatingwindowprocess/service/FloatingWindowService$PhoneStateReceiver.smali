.class public Lcom/cyjh/elfin/floatingwindowprocess/service/FloatingWindowService$PhoneStateReceiver;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/elfin/floatingwindowprocess/service/FloatingWindowService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PhoneStateReceiver"
.end annotation


# instance fields
.field public final OooO00o:Lcom/cyjh/elfin/floatingwindowprocess/service/FloatingWindowService;


# direct methods
.method public constructor <init>(Lcom/cyjh/elfin/floatingwindowprocess/service/FloatingWindowService;)V
    .locals 0

    iput-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/service/FloatingWindowService$PhoneStateReceiver;->OooO00o:Lcom/cyjh/elfin/floatingwindowprocess/service/FloatingWindowService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v0, "\u06ec\u06db\u06dc\u06e7\u06e1\u06e1\u06df\u06da\u06dc\u06d8\u06e8\u06e4\u06e6\u06d8\u06d7\u06d7\u06e8\u06d8\u06da\u06d6\u06d8\u06d8\u06ec\u06dc\u06e6\u06d8\u06d8\u06e4\u06db\u06e6\u06e1\u06e0\u06e7\u06e8\u06e7\u06d8\u06e1\u06e1\u06ec\u06d9\u06da\u06d6"

    move-object v1, v0

    move-object v2, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    move-object v8, v3

    move-object v9, v3

    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v3, 0x244

    xor-int/2addr v0, v3

    xor-int/lit16 v0, v0, 0x310

    const/16 v3, 0x28c

    const v10, -0x511325f5

    xor-int/2addr v0, v3

    xor-int/2addr v0, v10

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e2\u06d9\u06e4\u06d7\u06e5\u06e7\u06d8\u06e4\u06d7\u06e5\u06eb\u06d9\u06d9\u06eb\u06e0\u06d6\u06d8\u06db\u06db\u06dc\u06d8\u06e2\u06db\u06e1\u06e5\u06e1\u06d8\u06d9\u06e5\u06e0\u06eb\u06e4\u06e2\u06da\u06e4\u06d7\u06d8\u06e6\u06dc\u06e1\u06ec\u06e0\u06d9\u06ec\u06e5\u06e8\u06df\u06dc\u06e7\u06e4\u06dc\u06d8"

    move-object v1, v0

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06db\u06db\u06d8\u06d8\u06e1\u06da\u06e6\u06df\u06ec\u06d9\u06d6\u06e5\u06ec\u06d7\u06d6\u06d8\u06ec\u06d8\u06e0\u06e8\u06e4\u06ec\u06d6\u06db\u06e8\u06d8\u06da\u06db\u06d8\u06d8\u06eb\u06e5\u06dc"

    move-object v1, v0

    goto :goto_0

    :sswitch_2
    const-string v0, "\u06d6\u06dc\u06e7\u06d8\u06da\u06e1\u06e4\u06df\u06e5\u06e7\u06da\u06d9\u06da\u06e5\u06e7\u06e5\u06e8\u06d6\u06da\u06e5\u06e5\u06e6\u06eb\u06e7\u06e2\u06e8\u06dc\u06d7\u06e7\u06e8\u06dc\u06d8\u06d8\u06e7\u06e4\u06ec\u06e1\u06eb\u06e8\u06e7\u06e8\u06d8\u06e6\u06d9\u06e7"

    move-object v1, v0

    goto :goto_0

    :sswitch_3
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v0, "\u06e2\u06dc\u06e6\u06d8\u06ec\u06d7\u06d6\u06e4\u06e0\u06db\u06e1\u06e8\u06e4\u06d7\u06d6\u06da\u06e4\u06e8\u06eb\u06da\u06d6\u06e5\u06e2\u06d7\u06d6\u06d8\u06dc\u06e7\u06e6\u06e8\u06e5\u06e0\u06eb\u06db\u06e0\u06d7\u06dc\u06d8\u06d8"

    move-object v1, v0

    move-object v9, v3

    goto :goto_0

    :sswitch_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v0, "\u06da\u06e7\u06d9\u06e1\u06d7\u06d6\u06d8\u06da\u06eb\u06d6\u06dc\u06e7\u06e8\u06eb\u06e8\u06db\u06e1\u06e5\u06d8\u06d8\u06df\u06eb\u06e1\u06e4\u06e2\u06d8\u06e6\u06dc\u06d8\u06e1\u06da\u06df\u06dc\u06e4\u06e2\u06d9\u06ec\u06db\u06ec\u06e6\u06e2\u06da\u06e8\u06e4\u06d6\u06e2\u06df\u06db\u06d6\u06d8\u06db\u06e1\u06e5\u06d8\u06df\u06e0"

    move-object v1, v0

    move-object v8, v3

    goto :goto_0

    :sswitch_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u06dc\u06e6\u06df\u06df\u06df\u06e5\u06d8\u06e5\u06df\u06e5\u06d8\u06d6\u06e1\u06e4\u06e6\u06eb\u06d6\u06e7\u06d7\u06db\u06e1\u06e1\u06d8\u06dc\u06ec\u06d6\u06dc\u06eb\u06dc\u06d8\u06dc\u06e7\u06ec\u06d9\u06e2\u06d7\u06e0\u06e5\u06e4\u06e8\u06dc\u06d6\u06d6\u06d8\u06e6\u06df\u06e0\u06df\u06d6\u06e8\u06e1\u06d7\u06eb\u06da\u06df\u06eb"

    move-object v1, v0

    move-object v7, v3

    goto :goto_0

    :sswitch_6
    const-string v0, ">>>>>>action>>>>"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u06e8\u06db\u06dc\u06d8\u06e1\u06ec\u06df\u06ec\u06db\u06df\u06e1\u06df\u06e4\u06e1\u06e6\u06e8\u06da\u06e7\u06e6\u06db\u06dc\u06d7\u06db\u06e6\u06d8\u06d6\u06e6\u06d8\u06eb\u06ec\u06ec\u06db\u06e7\u06d8\u06d8\u06e7\u06db\u06d8\u06e6\u06e8\u06df\u06d6\u06e5\u06e1"

    move-object v1, v0

    goto :goto_0

    :sswitch_7
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u06e5\u06e0\u06e8\u06d9\u06e8\u06e8\u06d9\u06d9\u06e1\u06e8\u06e8\u06d8\u06e4\u06d9\u06db\u06d9\u06d6\u06e5\u06d8\u06e0\u06d8\u06e8\u06e7\u06e4\u06e6\u06d8\u06e2\u06db\u06e7\u06d9\u06ec\u06e4\u06d9\u06eb\u06e5\u06eb\u06e2\u06d8\u06d8\u06eb\u06e5\u06e7\u06e5\u06e4\u06d9\u06e4\u06e7\u06d7\u06e1\u06ec"

    move-object v1, v0

    goto :goto_0

    :sswitch_8
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const-string v0, "\u06eb\u06e8\u06e4\u06e0\u06e0\u06e1\u06df\u06d9\u06d6\u06e4\u06dc\u06d9\u06d8\u06e8\u06ec\u06ec\u06e0\u06e2\u06d8\u06db\u06e4\u06e8\u06dc\u06eb\u06d6\u06e4\u06d8\u06e4\u06e8\u06e4\u06d9\u06e2\u06e8\u06d8\u06e2\u06e0\u06e6"

    move-object v1, v0

    goto :goto_0

    :sswitch_9
    const v1, 0x5c564b7

    const-string v0, "\u06d9\u06d8\u06e2\u06d7\u06da\u06d8\u06df\u06e1\u06df\u06e7\u06e6\u06e1\u06d8\u06df\u06d8\u06d8\u06db\u06e2\u06dc\u06d8\u06e7\u06e1\u06e2\u06da\u06e5\u06eb\u06d8\u06db\u06da\u06e7\u06e5\u06df\u06eb\u06dc\u06d8\u06e0\u06e6\u06e0"

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v1

    sparse-switch v3, :sswitch_data_1

    goto :goto_1

    :sswitch_a
    const v3, -0x1ef81241

    const-string v0, "\u06db\u06dc\u06d6\u06d8\u06e6\u06d8\u06e6\u06da\u06dc\u06d8\u06d9\u06db\u06db\u06d9\u06d6\u06e8\u06e1\u06eb\u06e5\u06da\u06da\u06e8\u06d8\u06e2\u06e4\u06e6\u06e1\u06e2\u06e5\u06e6\u06e1\u06e4\u06e6\u06d8\u06e8\u06d6\u06d6"

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v10

    xor-int/2addr v10, v3

    sparse-switch v10, :sswitch_data_2

    goto :goto_2

    :sswitch_b
    const-string v0, "\u06e2\u06ec\u06dc\u06d8\u06d7\u06e5\u06ec\u06e6\u06e0\u06e8\u06d8\u06e8\u06e2\u06eb\u06eb\u06e5\u06df\u06d8\u06e5\u06e1\u06d8\u06e1\u06e1\u06dc\u06d7\u06e2\u06dc\u06d8\u06e6\u06e4\u06e7\u06d9\u06eb\u06d7\u06eb\u06d7\u06d6\u06d8\u06e5\u06d6\u06e5\u06e8\u06e6\u06e7"

    goto :goto_1

    :cond_0
    const-string v0, "\u06e0\u06e6\u06e7\u06d8\u06df\u06dc\u06d6\u06d8\u06dc\u06d8\u06d8\u06d8\u06d8\u06ec\u06e0\u06e5\u06e2\u06e4\u06e1\u06e8\u06da\u06d8\u06e6\u06d8\u06d7\u06e6\u06dc\u06eb\u06e4\u06da\u06d8\u06e0\u06e1\u06e8\u06da\u06df\u06e1\u06eb\u06d8\u06d7\u06dc\u06e5\u06ec\u06e7\u06da\u06dc\u06d6\u06d8\u06da\u06db\u06ec"

    goto :goto_2

    :sswitch_c
    const-string v0, "android.intent.action.NEW_OUTGOING_CALL"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u06d7\u06e2\u06e2\u06e0\u06e5\u06eb\u06ec\u06e2\u06dc\u06d8\u06d9\u06d7\u06df\u06d9\u06e7\u06e7\u06d7\u06e1\u06e6\u06d8\u06d7\u06ec\u06e8\u06d8\u06e5\u06e6\u06e1\u06e1\u06e2\u06d6\u06d8\u06d8\u06da\u06d9\u06d8\u06d9\u06eb\u06e8\u06d7\u06e6\u06d8\u06ec\u06e8\u06dc\u06d8\u06d8\u06e8\u06e5\u06d8\u06ec\u06d7\u06d9\u06ec\u06e0\u06eb"

    goto :goto_2

    :sswitch_d
    const-string v0, "\u06ec\u06ec\u06da\u06df\u06e2\u06da\u06dc\u06e4\u06e6\u06e6\u06eb\u06eb\u06df\u06db\u06d8\u06df\u06ec\u06e0\u06e6\u06e1\u06d8\u06d8\u06e1\u06e0\u06e5\u06e6\u06e6\u06d8\u06da\u06d6\u06d8\u06dc\u06d7\u06e1\u06d7\u06eb\u06d8\u06e0\u06eb\u06e7\u06d8\u06d8\u06d7"

    goto :goto_2

    :sswitch_e
    const-string v0, "\u06d8\u06da\u06ec\u06d8\u06ec\u06e1\u06db\u06dc\u06e1\u06d8\u06e5\u06e7\u06d8\u06e6\u06e7\u06df\u06e5\u06e2\u06d6\u06d8\u06d8\u06eb\u06e1\u06e0\u06e6\u06e6\u06d8\u06e1\u06e0\u06ec\u06d7\u06e0\u06e1\u06d8\u06d9\u06db\u06e6\u06e2\u06e8\u06e5\u06d8\u06e2\u06d7\u06d8\u06d8\u06d9\u06e1\u06d7\u06e6\u06e8\u06d8\u06e6\u06e0\u06d8\u06d8"

    goto :goto_1

    :sswitch_f
    const-string v0, "\u06e5\u06eb\u06df\u06d9\u06eb\u06d8\u06da\u06e8\u06ec\u06e1\u06db\u06e8\u06d8\u06e5\u06e5\u06df\u06e7\u06e7\u06d6\u06d6\u06db\u06e1\u06d8\u06e5\u06e7\u06dc\u06d8\u06ec\u06e0\u06d9\u06e1\u06e5\u06d6"

    goto :goto_1

    :sswitch_10
    const-string v0, "\u06e8\u06ec\u06e8\u06d8\u06df\u06e8\u06db\u06e4\u06e7\u06e4\u06df\u06e1\u06d7\u06db\u06e8\u06db\u06d8\u06d6\u06e5\u06e0\u06e6\u06d8\u06e2\u06d6\u06e1\u06d8\u06e2\u06e5\u06d8\u06d9\u06d6\u06e0\u06e7\u06d8\u06e1\u06eb\u06e6\u06e7\u06d8\u06e2\u06e1\u06df\u06d8\u06ec\u06dc\u06db\u06d7\u06ec\u06d8\u06e2\u06d9\u06e5\u06da\u06eb\u06e7"

    move-object v1, v0

    goto/16 :goto_0

    :sswitch_11
    const v1, -0x4b072a16

    const-string v0, "\u06eb\u06d6\u06e5\u06d8\u06d9\u06eb\u06da\u06e5\u06dc\u06d8\u06df\u06d8\u06e5\u06d8\u06e6\u06e2\u06dc\u06d8\u06d7\u06e2\u06d7\u06e2\u06df\u06d8\u06eb\u06d8\u06d8\u06e0\u06da\u06db\u06d7\u06e5\u06d8"

    :goto_3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v1

    sparse-switch v3, :sswitch_data_3

    goto :goto_3

    :sswitch_12
    const-string v0, "\u06dc\u06db\u06e8\u06d8\u06d9\u06df\u06e8\u06d8\u06e7\u06e8\u06d6\u06d8\u06df\u06e1\u06e2\u06e2\u06e6\u06e6\u06d8\u06e7\u06dc\u06db\u06d9\u06dc\u06eb\u06e2\u06dc\u06e6\u06e5\u06e5\u06e6\u06dc\u06e2\u06dc\u06e5\u06df\u06e5\u06ec\u06e1\u06e7\u06e6\u06d8\u06e7\u06d8\u06e1\u06ec\u06d7\u06d8\u06e6\u06eb\u06db\u06e0\u06d8"

    move-object v1, v0

    goto/16 :goto_0

    :sswitch_13
    const-string v0, "\u06d6\u06ec\u06df\u06d8\u06e5\u06d6\u06d8\u06e4\u06e0\u06e2\u06d7\u06eb\u06d6\u06e5\u06e0\u06d8\u06d6\u06e1\u06e8\u06e8\u06eb\u06da\u06da\u06d8\u06d6\u06da\u06e5\u06d8\u06d6\u06ec\u06d8\u06d8\u06d9\u06d7\u06d6\u06d8\u06d9\u06e1\u06d7\u06df\u06d6\u06db\u06e0\u06e6\u06d6\u06e4\u06d8\u06e5\u06e2\u06df\u06d9\u06dc\u06d8\u06e8\u06e0\u06eb\u06e1\u06d8"

    goto :goto_3

    :sswitch_14
    const v3, -0x32bb72fb

    const-string v0, "\u06ec\u06e4\u06d8\u06d7\u06d7\u06d6\u06df\u06d6\u06e6\u06d8\u06e8\u06e6\u06dc\u06df\u06df\u06e6\u06d6\u06d9\u06e4\u06ec\u06ec\u06e6\u06ec\u06e7\u06e8\u06d8\u06d7\u06db\u06da\u06e5\u06e4\u06e4\u06d7\u06da\u06e5\u06d8\u06d7\u06db\u06d9\u06d8\u06e5\u06d8\u06df\u06dc\u06e8\u06e1\u06e6\u06d9\u06df\u06e0\u06eb\u06df\u06da\u06e7\u06e5\u06e7\u06d8"

    :goto_4
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v10

    xor-int/2addr v10, v3

    sparse-switch v10, :sswitch_data_4

    goto :goto_4

    :sswitch_15
    const-string v0, "\u06db\u06eb\u06e8\u06e4\u06ec\u06eb\u06d9\u06e6\u06d8\u06eb\u06d8\u06e5\u06d8\u06e5\u06e7\u06e6\u06e1\u06e5\u06e7\u06eb\u06da\u06df\u06e7\u06e5\u06e2\u06d6\u06e7\u06d7\u06e5\u06e8\u06d7"

    goto :goto_3

    :cond_1
    const-string v0, "\u06e4\u06dc\u06e1\u06d8\u06d8\u06d8\u06ec\u06dc\u06e4\u06dc\u06d8\u06e1\u06d7\u06e6\u06d8\u06eb\u06e8\u06d8\u06da\u06e0\u06db\u06ec\u06e5\u06e6\u06dc\u06e5\u06e7\u06d8\u06e6\u06da\u06e0\u06e8\u06ec\u06df\u06e8\u06ec\u06db\u06e0\u06df\u06d6\u06eb\u06eb\u06e2\u06db\u06d8\u06e2"

    goto :goto_4

    :sswitch_16
    const-string v0, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "\u06e7\u06d6\u06e1\u06ec\u06dc\u06d8\u06d8\u06e2\u06e4\u06e5\u06dc\u06e6\u06e7\u06d8\u06df\u06e5\u06d8\u06e8\u06e7\u06dc\u06d6\u06e0\u06e4\u06d8\u06d9\u06d8\u06d8\u06e1\u06d6\u06eb\u06d8\u06dc\u06d9\u06d9\u06eb\u06e8\u06e1\u06d6\u06e8\u06d8\u06ec\u06d7\u06e5\u06d8\u06d7\u06e1\u06e7"

    goto :goto_4

    :sswitch_17
    const-string v0, "\u06db\u06e7\u06e2\u06e4\u06eb\u06d6\u06e0\u06e5\u06dc\u06d8\u06e6\u06e5\u06e6\u06d9\u06d7\u06e0\u06d7\u06ec\u06db\u06dc\u06d9\u06db\u06e8\u06e8\u06e2\u06e0\u06e6\u06d6\u06db\u06e7\u06e1\u06d9\u06e6\u06d8\u06d9\u06e1\u06dc\u06d8"

    goto :goto_4

    :sswitch_18
    const-string v0, "\u06db\u06e5\u06d9\u06ec\u06e7\u06e5\u06d8\u06db\u06d7\u06e8\u06d7\u06ec\u06e5\u06d8\u06e1\u06df\u06e5\u06d8\u06d8\u06e8\u06e4\u06eb\u06e8\u06e5\u06d8\u06e5\u06d6\u06d7\u06d9\u06e8\u06db\u06dc\u06dc\u06e4\u06e5\u06e1\u06e5\u06d8\u06e2\u06da\u06e7\u06e6\u06e4\u06d6\u06ec\u06e8\u06e1\u06d8\u06eb\u06e5\u06e7\u06d8\u06eb\u06eb\u06ec\u06e7\u06dc\u06dc\u06da\u06d7\u06da"

    goto :goto_3

    :sswitch_19
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    const-string v1, "\u06d7\u06d9\u06d6\u06d9\u06e1\u06df\u06e8\u06e1\u06d7\u06ec\u06e2\u06e6\u06d8\u06dc\u06d7\u06e1\u06d8\u06d8\u06e5\u06e7\u06d8\u06d7\u06d7\u06e7\u06da\u06e7\u06e6\u06d8\u06da\u06da\u06e8\u06d8\u06ec\u06df\u06e7\u06ec\u06e1\u06dc\u06e1\u06df\u06e6\u06d8\u06d9\u06eb\u06d6\u06d8\u06e8\u06df\u06e1\u06d8"

    move-object v6, v0

    goto/16 :goto_0

    :sswitch_1a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u06e0\u06d9\u06e1\u06d8\u06ec\u06da\u06e0\u06db\u06d8\u06e7\u06d8\u06d9\u06d7\u06e5\u06d8\u06d9\u06e1\u06e6\u06d8\u06df\u06df\u06d7\u06e2\u06da\u06e8\u06d8\u06e0\u06e0\u06e1\u06dc\u06e8\u06e2\u06e1\u06da\u06dc\u06d8\u06e0\u06db\u06d6\u06d8\u06db\u06e8\u06e2\u06d9\u06d9\u06e4\u06d6\u06eb\u06eb\u06e1\u06e8\u06eb\u06e1\u06dc\u06d8"

    move-object v1, v0

    move-object v5, v3

    goto/16 :goto_0

    :sswitch_1b
    const-string v0, "tm.getCallState()>>>>"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u06e4\u06d6\u06d8\u06e1\u06d8\u06d8\u06e5\u06d8\u06e8\u06d8\u06d6\u06df\u06d6\u06d8\u06e6\u06e5\u06e5\u06d8\u06e2\u06e8\u06e7\u06da\u06e0\u06dc\u06d8\u06d8\u06dc\u06d6\u06ec\u06e1\u06d6\u06df\u06e0\u06ec\u06e1\u06e4\u06e4\u06d8\u06d8"

    move-object v1, v0

    goto/16 :goto_0

    :sswitch_1c
    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\u06d7\u06db\u06e4\u06e7\u06d8\u06e8\u06dc\u06e8\u06e0\u06e2\u06d9\u06e6\u06d8\u06d8\u06e0\u06ec\u06e0\u06e4\u06dc\u06db\u06d8\u06eb\u06d6\u06e0\u06e8\u06e5\u06eb\u06d8\u06d8\u06e2\u06d7\u06e8"

    move-object v1, v0

    goto/16 :goto_0

    :sswitch_1d
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const-string v0, "\u06da\u06d7\u06d8\u06e2\u06d9\u06e5\u06d8\u06d8\u06d8\u06dc\u06e6\u06d6\u06d9\u06e5\u06da\u06d7\u06ec\u06e2\u06dc\u06d8\u06da\u06e1\u06e5\u06ec\u06e7\u06d8\u06e5\u06d9\u06d8\u06da\u06ec\u06d6\u06e4\u06d6\u06d6\u06df\u06e8\u06dc\u06d8\u06db\u06d9\u06d8\u06d8\u06e5\u06db\u06e2\u06e1\u06d6\u06e5\u06ec\u06d9\u06d7"

    move-object v1, v0

    goto/16 :goto_0

    :sswitch_1e
    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v3

    const-string v0, "\u06ec\u06e0\u06da\u06e1\u06e2\u06d8\u06d8\u06e5\u06e1\u06e7\u06da\u06e8\u06d9\u06e8\u06e7\u06db\u06db\u06e2\u06d6\u06df\u06e6\u06d8\u06e7\u06e6\u06eb\u06e5\u06ec\u06db\u06eb\u06da\u06e1\u06df\u06d8\u06e6\u06d8\u06e2\u06e7\u06d9"

    move-object v1, v0

    move v4, v3

    goto/16 :goto_0

    :sswitch_1f
    const v1, -0x1ec0e5c4

    const-string v0, "\u06e8\u06e7\u06df\u06da\u06e8\u06dc\u06d7\u06e5\u06e7\u06d8\u06e4\u06d9\u06e7\u06da\u06e6\u06e1\u06d9\u06db\u06e5\u06d8\u06e6\u06d8\u06db\u06dc\u06e7\u06eb\u06e5\u06e4\u06eb\u06e2\u06df\u06e6\u06d8\u06e7\u06e5\u06ec\u06e4\u06ec\u06df\u06d7\u06dc\u06e6\u06ec\u06e4\u06dc"

    :goto_5
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v1

    sparse-switch v3, :sswitch_data_5

    goto :goto_5

    :sswitch_20
    const-string v0, "\u06db\u06d7\u06d7\u06e7\u06df\u06dc\u06e5\u06e5\u06dc\u06e8\u06e8\u06dc\u06db\u06df\u06e8\u06d8\u06e6\u06e1\u06eb\u06e8\u06e4\u06e5\u06eb\u06d9\u06e8\u06df\u06e7\u06d8\u06d9\u06db\u06dc\u06d7\u06dc\u06d8\u06eb\u06db\u06e8\u06d8\u06d7\u06ec\u06e5\u06da\u06e8\u06e5\u06e6\u06dc\u06e4\u06dc\u06da\u06e1\u06d8"

    goto :goto_5

    :sswitch_21
    const-string v0, "\u06e6\u06dc\u06e8\u06d8\u06d8\u06db\u06dc\u06e1\u06e5\u06e5\u06d8\u06ec\u06d8\u06e4\u06da\u06df\u06e8\u06d8\u06db\u06e2\u06d7\u06d9\u06e7\u06ec\u06e1\u06e5\u06d6\u06df\u06e6\u06dc\u06db\u06e0\u06e6\u06d8\u06d6\u06e5\u06d7\u06d7\u06e5\u06d9\u06d8\u06d6\u06db\u06d8\u06e5\u06e1\u06ec\u06df\u06e6\u06eb\u06da\u06e0\u06e5\u06d9\u06d7\u06db\u06e8\u06e4"

    goto :goto_5

    :sswitch_22
    const v3, 0x557f56b1

    const-string v0, "\u06d6\u06e1\u06df\u06e2\u06e0\u06e8\u06d9\u06dc\u06d9\u06e0\u06d7\u06df\u06e4\u06e8\u06e7\u06d8\u06e0\u06dc\u06e5\u06d7\u06eb\u06d9\u06e6\u06e8\u06e1\u06d8\u06e5\u06d8\u06e1\u06e6\u06e8\u06df\u06e4\u06d8\u06d8\u06e7\u06e8\u06e5\u06d8"

    :goto_6
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v10

    xor-int/2addr v10, v3

    sparse-switch v10, :sswitch_data_6

    goto :goto_6

    :sswitch_23
    const-string v0, "\u06d7\u06d8\u06e8\u06d8\u06dc\u06d7\u06eb\u06e0\u06df\u06e7\u06e4\u06ec\u06da\u06d8\u06df\u06e2\u06e4\u06d6\u06e7\u06d8\u06e1\u06e2\u06e4\u06db\u06e5\u06da\u06e5\u06df\u06dc\u06da\u06e2\u06d9\u06e4\u06e1\u06d9\u06e1\u06e6\u06d8\u06d8\u06d7\u06e5\u06d7\u06e2\u06e2\u06e1\u06db\u06e8\u06e0\u06d9\u06d9\u06d6\u06d8\u06df\u06eb\u06e8\u06d8\u06d9\u06d8\u06d6\u06d8"

    goto :goto_5

    :cond_2
    const-string v0, "\u06e7\u06db\u06db\u06e2\u06eb\u06e4\u06d7\u06e6\u06db\u06da\u06e8\u06e6\u06d8\u06db\u06e2\u06d8\u06d8\u06da\u06e1\u06e5\u06d8\u06df\u06e2\u06d8\u06d8\u06ec\u06e1\u06d8\u06d8\u06e0\u06d6\u06da\u06e0\u06e4\u06e6\u06ec\u06e6\u06df\u06e0\u06df\u06df\u06e5\u06e8\u06e0\u06e5\u06d9\u06e4\u06df\u06d6\u06e5\u06e0\u06e0\u06e5\u06d8\u06d6\u06d8\u06e1\u06d8\u06e6\u06d6\u06eb"

    goto :goto_6

    :sswitch_24
    const/4 v0, 0x1

    if-eq v4, v0, :cond_2

    const-string v0, "\u06dc\u06d6\u06db\u06df\u06e2\u06e0\u06dc\u06ec\u06e2\u06e1\u06e2\u06d6\u06dc\u06e4\u06df\u06e2\u06eb\u06e6\u06d6\u06ec\u06e1\u06e6\u06e5\u06d6\u06d6\u06e4\u06e5\u06d8\u06d8\u06eb\u06d9\u06e7\u06e8\u06db\u06e0\u06eb\u06e5\u06df\u06d7\u06e6\u06e5\u06ec"

    goto :goto_6

    :sswitch_25
    const-string v0, "\u06df\u06da\u06ec\u06db\u06e8\u06dc\u06d8\u06eb\u06d6\u06ec\u06e5\u06d6\u06df\u06e7\u06d6\u06d9\u06e7\u06df\u06e7\u06e0\u06e6\u06ec\u06df\u06e6\u06e2\u06d8\u06e4\u06d7\u06e1\u06e7\u06d6\u06e0\u06db\u06d8\u06d8\u06dc\u06db\u06e6\u06e8\u06e7\u06e1\u06d8\u06dc\u06e1\u06db\u06d6\u06d8\u06e0\u06db\u06ec\u06df"

    goto :goto_6

    :sswitch_26
    const-string v0, "\u06ec\u06e0\u06d8\u06d6\u06e1\u06d8\u06d8\u06e2\u06d8\u06e4\u06df\u06df\u06e5\u06d8\u06e5\u06d6\u06e8\u06ec\u06df\u06e8\u06d8\u06d6\u06e0\u06ec\u06e1\u06e1\u06df\u06d8\u06e7\u06d9\u06ec\u06d9\u06da\u06e2\u06e4\u06dc\u06df\u06db\u06dc\u06d8"

    move-object v1, v0

    goto/16 :goto_0

    :sswitch_27
    const v1, 0x1ccea69d

    const-string v0, "\u06d6\u06d8\u06e8\u06d8\u06e2\u06e2\u06e8\u06d7\u06df\u06e1\u06e4\u06df\u06eb\u06eb\u06dc\u06da\u06eb\u06dc\u06d8\u06eb\u06dc\u06eb\u06df\u06df\u06d8\u06d8\u06da\u06d8\u06e5\u06d8\u06db\u06e5\u06da\u06d6\u06e5\u06da\u06db\u06d9\u06eb\u06ec\u06e5\u06e8\u06e7\u06db\u06dc\u06d8"

    :goto_7
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v1

    sparse-switch v3, :sswitch_data_7

    goto :goto_7

    :sswitch_28
    const-string v0, "\u06ec\u06e5\u06e1\u06e8\u06df\u06dc\u06e0\u06d9\u06d8\u06e8\u06e2\u06e6\u06e2\u06e1\u06d8\u06e2\u06df\u06e7\u06e5\u06d9\u06d8\u06d8\u06db\u06d8\u06e6\u06d8\u06d9\u06d6\u06d8\u06d8\u06eb\u06e2\u06e0"

    goto :goto_7

    :sswitch_29
    const-string v0, "\u06e5\u06ec\u06da\u06e8\u06e8\u06dc\u06eb\u06e8\u06df\u06e7\u06d6\u06e1\u06d7\u06d6\u06e8\u06d8\u06d9\u06e7\u06e8\u06da\u06ec\u06dc\u06d6\u06d8\u06da\u06eb\u06da\u06e7\u06d6\u06d8"

    goto :goto_7

    :sswitch_2a
    const v3, 0x5272343d

    const-string v0, "\u06d8\u06e1\u06e6\u06d8\u06ec\u06e2\u06e0\u06d7\u06d7\u06e5\u06d7\u06e1\u06e8\u06e2\u06da\u06e6\u06d8\u06db\u06df\u06d9\u06e6\u06e5\u06e1\u06d8\u06d6\u06e4\u06e4\u06e0\u06e0\u06e1\u06d8\u06df\u06d6\u06ec\u06e4\u06e0\u06d6\u06d8\u06eb\u06e0\u06e6\u06e7\u06e2\u06d7\u06da\u06e4\u06e1\u06d8\u06d9\u06e7\u06dc\u06d8\u06e2\u06e5\u06d7"

    :goto_8
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v10

    xor-int/2addr v10, v3

    sparse-switch v10, :sswitch_data_8

    goto :goto_8

    :sswitch_2b
    const-string v0, "\u06d9\u06e2\u06d6\u06d8\u06d9\u06d8\u06ec\u06e4\u06eb\u06e5\u06db\u06e0\u06e7\u06e1\u06ec\u06e4\u06df\u06ec\u06e5\u06df\u06e8\u06e8\u06e7\u06eb\u06e7\u06e7\u06d8\u06e6\u06d8\u06e5\u06e7\u06d8"

    goto :goto_7

    :cond_3
    const-string v0, "\u06dc\u06e2\u06df\u06d7\u06e6\u06d8\u06e8\u06e0\u06e5\u06e7\u06e1\u06e6\u06d8\u06e6\u06d7\u06e6\u06e5\u06eb\u06e2\u06df\u06d8\u06e4\u06e0\u06ec\u06d8\u06e6\u06d8\u06d9\u06dc\u06d6\u06d6\u06d8"

    goto :goto_8

    :sswitch_2c
    const/4 v0, 0x2

    if-eq v4, v0, :cond_3

    const-string v0, "\u06df\u06e5\u06e1\u06e4\u06dc\u06e7\u06d9\u06d7\u06e6\u06d8\u06d6\u06d7\u06dc\u06da\u06ec\u06dc\u06e5\u06e4\u06e1\u06d8\u06d6\u06df\u06df\u06d8\u06ec\u06e6\u06d8\u06d7\u06df\u06e7\u06d9\u06d6\u06e7\u06d7\u06e5\u06d6\u06d8\u06da\u06d8\u06df\u06e7\u06e1\u06e7\u06d6\u06e4\u06d6\u06d6\u06e6\u06e6\u06d8\u06e5\u06da\u06e4\u06e7\u06e1\u06d6\u06d6\u06db\u06df"

    goto :goto_8

    :sswitch_2d
    const-string v0, "\u06e5\u06e0\u06e6\u06e8\u06db\u06d9\u06d9\u06dc\u06df\u06d6\u06d8\u06d6\u06da\u06d6\u06d8\u06d9\u06ec\u06e1\u06e0\u06dc\u06e0\u06eb\u06eb\u06e8\u06d8\u06d6\u06d8\u06e5\u06d8\u06df\u06e5\u06ec\u06eb\u06e7\u06e6\u06e4\u06d6\u06ec\u06dc\u06e4\u06e1\u06d8\u06d6\u06d8\u06e2\u06da\u06e0\u06e6\u06e0\u06d6\u06e6\u06e7\u06e8\u06e8\u06d8\u06e4\u06db\u06e0"

    goto :goto_8

    :sswitch_2e
    const-string v0, "\u06eb\u06ec\u06ec\u06dc\u06dc\u06e8\u06e2\u06e8\u06d7\u06d9\u06e0\u06d6\u06e1\u06d6\u06e4\u06e6\u06d7\u06e7\u06df\u06e7\u06e5\u06d8\u06e2\u06e6\u06e6\u06d8\u06dc\u06dc\u06e5\u06d9\u06e1\u06eb\u06df\u06e2\u06e6\u06eb\u06e2"

    move-object v1, v0

    goto/16 :goto_0

    :sswitch_2f
    const v1, 0x56d323

    const-string v0, "\u06d6\u06df\u06e4\u06e0\u06d7\u06e7\u06e1\u06ec\u06e8\u06e0\u06d6\u06d7\u06db\u06df\u06dc\u06d9\u06e8\u06e0\u06d6\u06e5\u06db\u06e0\u06dc\u06e5\u06e6\u06df\u06e1\u06d9\u06da\u06e1\u06d6\u06e0\u06d8\u06e7\u06d8\u06e4\u06d8\u06e5\u06d8\u06e0\u06e0\u06e5\u06e8\u06e1\u06e0\u06e8\u06e6\u06dc\u06d8\u06d7\u06ec\u06e0\u06d6\u06e5\u06e4"

    :goto_9
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v1

    sparse-switch v3, :sswitch_data_9

    goto :goto_9

    :sswitch_30
    const-string v0, "\u06eb\u06e0\u06d8\u06d6\u06e2\u06e6\u06d7\u06d9\u06da\u06e6\u06df\u06e0\u06d8\u06d8\u06e7\u06d8\u06df\u06db\u06db\u06d9\u06e4\u06e4\u06eb\u06db\u06e5\u06d8\u06ec\u06d7\u06da\u06d9\u06d8\u06d8"

    move-object v1, v0

    goto/16 :goto_0

    :sswitch_31
    const-string v0, "\u06e4\u06e7\u06d7\u06ec\u06e2\u06e2\u06e4\u06e6\u06d9\u06d7\u06da\u06d9\u06d6\u06d6\u06e7\u06d8\u06e7\u06d8\u06da\u06d8\u06dc\u06d8\u06e1\u06db\u06e4\u06dc\u06d7\u06e4\u06e6"

    goto :goto_9

    :sswitch_32
    const v3, 0xa0c8318

    const-string v0, "\u06d8\u06df\u06e2\u06e4\u06dc\u06e6\u06d8\u06e7\u06e0\u06e8\u06d8\u06dc\u06d8\u06e5\u06dc\u06e6\u06e8\u06d8\u06e1\u06e7\u06e7\u06dc\u06ec\u06e0\u06d8\u06e1\u06e7\u06d8\u06e1\u06da\u06e2\u06d8\u06e6\u06d8\u06e5\u06e4\u06df\u06e0\u06df\u06d9\u06ec\u06e8\u06d9\u06eb\u06db\u06d6\u06d8\u06d9\u06ec\u06da\u06e6"

    :goto_a
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v10

    xor-int/2addr v10, v3

    sparse-switch v10, :sswitch_data_a

    goto :goto_a

    :sswitch_33
    const-string v0, "\u06dc\u06e4\u06eb\u06df\u06dc\u06e1\u06df\u06db\u06dc\u06d8\u06eb\u06db\u06e5\u06e8\u06da\u06e7\u06e4\u06eb\u06df\u06d8\u06e4\u06e8\u06d8\u06d9\u06eb\u06e7\u06e8\u06da\u06e6\u06df"

    goto :goto_a

    :cond_4
    const-string v0, "\u06e5\u06d6\u06dc\u06d8\u06eb\u06eb\u06db\u06da\u06e0\u06e7\u06e5\u06e8\u06e8\u06d8\u06db\u06e2\u06e1\u06d8\u06d8\u06ec\u06e7\u06ec\u06e6\u06e2\u06eb\u06da\u06d7\u06dc\u06df\u06db\u06d6\u06e5\u06e6\u06eb\u06d6\u06e1\u06e8\u06e4\u06d9\u06eb\u06e5\u06d8\u06d8\u06d7\u06e8\u06d8"

    goto :goto_a

    :sswitch_34
    invoke-static {}, Lz2/x4;->OooO0O0()Lz2/x4;

    move-result-object v0

    const-string v10, "com.cyjh.elfin.ui.activity.SettingActivity.swtCallStop"

    invoke-virtual {v0, v10, v9}, Lz2/x4;->OooO00o(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "\u06d7\u06e5\u06ec\u06df\u06e0\u06eb\u06eb\u06e8\u06e7\u06d8\u06e7\u06eb\u06e6\u06d8\u06e8\u06d8\u06eb\u06df\u06dc\u06e2\u06ec\u06eb\u06e6\u06d8\u06e5\u06d9\u06e1\u06d8\u06d9\u06d7\u06d9\u06ec\u06e8\u06e0\u06e1\u06df\u06d8\u06d8\u06d6\u06df\u06e7\u06e0\u06e2\u06d8\u06e1\u06db\u06e2\u06dc\u06e0\u06d8\u06e4\u06d7\u06e5\u06d8"

    goto :goto_a

    :sswitch_35
    const-string v0, "\u06d7\u06e2\u06db\u06e1\u06d6\u06e1\u06d8\u06df\u06d8\u06d6\u06d9\u06e4\u06e4\u06da\u06d7\u06dc\u06e1\u06e7\u06d8\u06e8\u06d7\u06e1\u06d8\u06ec\u06d8\u06d8\u06e8\u06d7\u06e2\u06d9\u06dc\u06ec\u06d6\u06e4\u06e7\u06e5\u06d9\u06d7\u06e0\u06e5\u06e7\u06da\u06eb\u06d9\u06e6\u06d6\u06d6\u06e8\u06d8\u06d8\u06db\u06db\u06d6\u06e1\u06e8\u06e0"

    goto :goto_9

    :sswitch_36
    const-string v0, "\u06e7\u06e7\u06db\u06d9\u06eb\u06e6\u06d9\u06e6\u06d9\u06eb\u06df\u06e7\u06e2\u06e5\u06ec\u06e0\u06dc\u06e2\u06d9\u06ec\u06dc\u06eb\u06da\u06eb\u06e0\u06e5\u06dc\u06d8\u06e1\u06d9\u06e4\u06eb\u06d6\u06e0\u06d9\u06e5\u06e1\u06d8\u06d7\u06e7\u06e4\u06e6\u06e7\u06e1\u06d8"

    goto :goto_9

    :sswitch_37
    const-string v0, "\u06df\u06d7\u06da\u06da\u06e4\u06df\u06d7\u06e6\u06df\u06d6\u06dc\u06d7\u06df\u06e1\u06d8\u06d7\u06d7\u06ec\u06e4\u06e7\u06d9\u06e8\u06d7\u06d8\u06e2\u06e5\u06d6\u06df\u06e8\u06dc\u06d8\u06e6\u06e4\u06dc\u06ec\u06e8\u06e6\u06d8\u06eb\u06e8\u06d6\u06e6\u06da\u06e4\u06eb\u06e0\u06dc\u06d9\u06ec"

    move-object v1, v0

    goto/16 :goto_0

    :sswitch_38
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u06d8\u06d6\u06e2\u06eb\u06ec\u06e4\u06e4\u06d6\u06d6\u06d8\u06d6\u06d8\u06d8\u06ec\u06eb\u06e0\u06e2\u06e7\u06e1\u06e4\u06e8\u06e8\u06d8\u06d8\u06d9\u06e0\u06eb\u06e8\u06e1\u06e5\u06db\u06da\u06e1\u06e7\u06e7\u06e7\u06e6\u06e8\u06d8\u06e0\u06eb\u06e4\u06e5\u06e4\u06e5\u06e2\u06e8\u06d8\u06d6\u06e0\u06e0"

    move-object v1, v0

    goto/16 :goto_0

    :sswitch_39
    const-string v0, "\u7ee7\u7eed\u9009\u9879>>>"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u06e4\u06da\u06e4\u06e2\u06e8\u06d6\u06d8\u06da\u06da\u06e1\u06d8\u06d8\u06e2\u06e7\u06df\u06e7\u06e7\u06e5\u06da\u06db\u06e8\u06d9\u06eb\u06e4\u06e1\u06d8\u06d6\u06e4\u06e7\u06da\u06e0\u06e0\u06e5\u06d9\u06d6\u06e0\u06ec\u06e6\u06d8\u06ec\u06eb\u06e5\u06e4\u06e2\u06e1"

    move-object v1, v0

    goto/16 :goto_0

    :sswitch_3a
    invoke-static {}, Lz2/x4;->OooO0O0()Lz2/x4;

    move-result-object v0

    const-string v1, "com.cyjh.elfin.ui.activity.SettingActivity.swtCallStop"

    invoke-virtual {v0, v1, v9}, Lz2/x4;->OooO00o(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "\u06db\u06e6\u06d8\u06eb\u06e2\u06db\u06da\u06e6\u06d7\u06e4\u06e5\u06ec\u06eb\u06db\u06e8\u06d8\u06e7\u06eb\u06e5\u06d8\u06e0\u06d6\u06dc\u06e0\u06df\u06e0\u06d6\u06db\u06e1\u06e2\u06e1\u06e0\u06e5\u06e8\u06db\u06d6\u06d8\u06db"

    move-object v1, v0

    goto/16 :goto_0

    :sswitch_3b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const-string v0, "\u06d7\u06dc\u06e5\u06d9\u06dc\u06e8\u06e5\u06e2\u06e6\u06d8\u06e5\u06e4\u06d9\u06e7\u06e2\u06e1\u06da\u06eb\u06e6\u06d8\u06df\u06d8\u06dc\u06d8\u06e1\u06ec\u06d8\u06e2\u06eb\u06eb\u06e0\u06d9\u06ec\u06e2\u06dc\u06d8\u06e0\u06d7\u06d8\u06eb\u06df\u06e8\u06e6\u06e6\u06d7\u06df\u06d6\u06e4\u06db\u06d6\u06da\u06e0\u06e1\u06db\u06d9"

    move-object v1, v0

    goto/16 :goto_0

    :sswitch_3c
    const v1, 0x6f17608f

    const-string v0, "\u06d7\u06e5\u06df\u06d7\u06da\u06e1\u06eb\u06e0\u06db\u06e5\u06e5\u06e8\u06d8\u06d9\u06d6\u06e5\u06eb\u06e2\u06d9\u06d9\u06e0\u06d8\u06d8\u06df\u06d7\u06dc\u06d8\u06dc\u06e6\u06e6\u06e1\u06d9\u06d9\u06e8\u06db\u06dc\u06dc\u06e5\u06dc\u06e6\u06e0\u06ec\u06e0\u06ec\u06df"

    :goto_b
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v1

    sparse-switch v3, :sswitch_data_b

    goto :goto_b

    :sswitch_3d
    const-string v0, "\u06eb\u06ec\u06e7\u06e4\u06e7\u06e8\u06d8\u06e7\u06ec\u06e7\u06e2\u06e0\u06d9\u06ec\u06e8\u06e8\u06d8\u06e4\u06ec\u06eb\u06e1\u06e0\u06ec\u06dc\u06e5\u06d6\u06d7\u06d8\u06df\u06db\u06e6\u06e6\u06ec\u06da\u06d6\u06e1\u06dc\u06d6\u06e0\u06eb\u06e6\u06dc\u06d8\u06e8\u06d8\u06ec\u06db\u06d8\u06d8\u06e8\u06ec\u06d8\u06d8\u06eb\u06df\u06e0\u06e6\u06d7\u06d9"

    goto :goto_b

    :sswitch_3e
    const-string v0, "\u06e2\u06ec\u06e8\u06d8\u06da\u06e5\u06d8\u06d8\u06e5\u06e1\u06eb\u06d7\u06dc\u06e7\u06d8\u06d6\u06dc\u06e4\u06e0\u06eb\u06e2\u06e8\u06e7\u06e5\u06e4\u06e6\u06d8\u06df\u06df\u06e0\u06e7\u06ec\u06e1"

    goto :goto_b

    :sswitch_3f
    const v3, 0x78a4b487

    const-string v0, "\u06e6\u06da\u06da\u06e5\u06d9\u06dc\u06d8\u06e8\u06d6\u06eb\u06ec\u06e7\u06e8\u06d8\u06d8\u06e1\u06ec\u06e0\u06e2\u06e6\u06d8\u06eb\u06e4\u06e5\u06e8\u06e5\u06e4\u06db\u06df\u06db\u06e0\u06ec\u06dc\u06eb\u06db\u06e1\u06d8\u06d6\u06d6\u06e1\u06d8\u06da\u06e2\u06dc\u06d7"

    :goto_c
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v10

    xor-int/2addr v10, v3

    sparse-switch v10, :sswitch_data_c

    goto :goto_c

    :sswitch_40
    const-string v0, "\u06db\u06e8\u06e6\u06d8\u06d7\u06e6\u06d8\u06d6\u06e1\u06dc\u06d8\u06eb\u06ec\u06e5\u06e7\u06e1\u06df\u06d6\u06e5\u06eb\u06ec\u06e5\u06e1\u06e7\u06d9\u06dc\u06e1\u06d6\u06ec\u06ec\u06e8\u06d6\u06e4\u06e1\u06e6\u06d8\u06ec\u06e0\u06da"

    goto :goto_b

    :cond_5
    const-string v0, "\u06d9\u06e7\u06db\u06e2\u06d8\u06db\u06e0\u06e8\u06dc\u06e6\u06e8\u06d8\u06e7\u06e1\u06d8\u06e1\u06e2\u06d6\u06d8\u06ec\u06eb\u06da\u06e0\u06da\u06d8\u06d8\u06e1\u06d8\u06db\u06dc\u06dc\u06eb\u06d6\u06e7\u06ec\u06e4\u06df\u06e1\u06d8\u06ec\u06db\u06e0\u06d7\u06e1\u06e6\u06e8\u06e8\u06ec\u06d9\u06e4\u06e4\u06dc\u06d8\u06db\u06e4\u06d6\u06d8"

    goto :goto_c

    :sswitch_41
    invoke-static {}, Lz2/x4;->OooO0O0()Lz2/x4;

    move-result-object v0

    const-string v10, "com.cyjh.elfin.ui.activity.SettingActivity.swtCallStop"

    invoke-virtual {v0, v10, v9}, Lz2/x4;->OooO00o(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "\u06ec\u06e6\u06ec\u06db\u06e2\u06e0\u06e2\u06da\u06eb\u06df\u06eb\u06d9\u06e8\u06d6\u06d9\u06db\u06e1\u06dc\u06eb\u06d8\u06db\u06e7\u06ec\u06e0\u06df\u06d8\u06e6\u06d8\u06e8\u06dc\u06d6"

    goto :goto_c

    :sswitch_42
    const-string v0, "\u06e0\u06ec\u06e5\u06d8\u06d8\u06e4\u06d8\u06eb\u06e4\u06dc\u06d8\u06d7\u06da\u06e6\u06d8\u06e4\u06da\u06dc\u06d8\u06e4\u06da\u06e1\u06d8\u06d8\u06d8\u06d7\u06e1\u06e5\u06d7\u06d9\u06e0\u06eb\u06e4\u06da\u06d9\u06da\u06e0\u06e2\u06e7\u06e4\u06eb\u06e2\u06e5\u06e5\u06e1\u06d8\u06db\u06e6\u06e7\u06d8\u06da\u06d9\u06dc\u06df\u06d6\u06eb\u06e8\u06d8\u06d7"

    goto :goto_c

    :sswitch_43
    const-string v0, "\u06d7\u06da\u06d7\u06ec\u06e1\u06e5\u06d8\u06e2\u06e7\u06d8\u06d8\u06d9\u06ec\u06da\u06dc\u06d8\u06ec\u06e0\u06e8\u06d8\u06e7\u06d8\u06d8\u06d8\u06db\u06dc\u06e4\u06e8\u06e8\u06da\u06e5\u06dc\u06d8\u06ec\u06e2\u06e4\u06db\u06e7\u06e5\u06d8\u06d9\u06da\u06e1\u06e2\u06e1\u06e2"

    move-object v1, v0

    goto/16 :goto_0

    :sswitch_44
    invoke-static {}, Lz2/i7;->OooO()Lz2/i7;

    move-result-object v0

    invoke-virtual {v0}, Lz2/i7;->Oooo0o0()V

    const-string v0, "\u06eb\u06e0\u06d8\u06d6\u06e2\u06e6\u06d7\u06d9\u06da\u06e6\u06df\u06e0\u06d8\u06d8\u06e7\u06d8\u06df\u06db\u06db\u06d9\u06e4\u06e4\u06eb\u06db\u06e5\u06d8\u06ec\u06d7\u06da\u06d9\u06d8\u06d8"

    move-object v1, v0

    goto/16 :goto_0

    :sswitch_45
    const-string v0, "\u06d8\u06e8\u06df\u06d7\u06e0\u06df\u06d6\u06ec\u06d9\u06e2\u06da\u06d6\u06d8\u06e1\u06d6\u06e6\u06d8\u06e4\u06e8\u06e4\u06d9\u06db\u06d7\u06eb\u06e5\u06e5\u06d8\u06e7\u06d8\u06db\u06e0\u06e0\u06e7"

    move-object v1, v0

    goto/16 :goto_0

    :sswitch_46
    const-string v0, "\u06d9\u06e0\u06d8\u06d8\u06dc\u06e0\u06e1\u06ec\u06e4\u06db\u06e5\u06e0\u06db\u06ec\u06ec\u06d7\u06da\u06e2\u06d8\u06eb\u06dc\u06d9\u06e2\u06e1\u06dc\u06d8\u06db\u06d8\u06e7\u06d8\u06d7\u06e5\u06d7\u06d6\u06d8\u06e7\u06d8\u06e1\u06e2\u06eb\u06dc\u06db\u06e1\u06d8\u06d7\u06df\u06ec"

    move-object v1, v0

    goto/16 :goto_0

    :sswitch_47
    const-string v0, "\u06e5\u06e4\u06e5\u06d8\u06e4\u06e1\u06e7\u06d8\u06e6\u06df\u06e1\u06d8\u06e0\u06e6\u06da\u06ec\u06e6\u06d8\u06d8\u06e2\u06ec\u06e8\u06e0\u06ec\u06e6\u06d8\u06d7\u06d7\u06e1\u06d8\u06ec\u06e8\u06e5\u06d8\u06ec\u06eb\u06e1\u06e7\u06e2\u06e7\u06d7\u06df\u06e8\u06d8\u06ec\u06db\u06eb\u06e2\u06e5\u06d8\u06d9\u06e5\u06dc\u06d6\u06e6\u06d8"

    move-object v1, v0

    goto/16 :goto_0

    :sswitch_48
    const-string v0, "\u06d7\u06da\u06d7\u06ec\u06e1\u06e5\u06d8\u06e2\u06e7\u06d8\u06d8\u06d9\u06ec\u06da\u06dc\u06d8\u06ec\u06e0\u06e8\u06d8\u06e7\u06d8\u06d8\u06d8\u06db\u06dc\u06e4\u06e8\u06e8\u06da\u06e5\u06dc\u06d8\u06ec\u06e2\u06e4\u06db\u06e7\u06e5\u06d8\u06d9\u06da\u06e1\u06e2\u06e1\u06e2"

    move-object v1, v0

    goto/16 :goto_0

    :sswitch_49
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x700a44a9 -> :sswitch_3a
        -0x56730fd3 -> :sswitch_49
        -0x50936247 -> :sswitch_27
        -0x3fdafcbb -> :sswitch_1f
        -0x3e2b4f38 -> :sswitch_2f
        -0x3ba3e812 -> :sswitch_3c
        -0x22d6f45f -> :sswitch_48
        -0x13591019 -> :sswitch_39
        -0x113b5262 -> :sswitch_3
        -0xd8b1d44 -> :sswitch_5
        0x14c8b3e -> :sswitch_1c
        0x525db7a -> :sswitch_30
        0xbf9b5b0 -> :sswitch_1d
        0x2632cbbb -> :sswitch_1a
        0x2ec74e47 -> :sswitch_30
        0x3253e04c -> :sswitch_1
        0x3c693f04 -> :sswitch_38
        0x3e8a3efc -> :sswitch_3b
        0x42157db1 -> :sswitch_7
        0x4c3b4c17 -> :sswitch_6
        0x55687605 -> :sswitch_4
        0x5d47e833 -> :sswitch_1e
        0x62f86c1f -> :sswitch_19
        0x651176cd -> :sswitch_0
        0x6633fa0e -> :sswitch_44
        0x666a4a84 -> :sswitch_8
        0x68227c46 -> :sswitch_2
        0x6e7b8346 -> :sswitch_1b
        0x7a8989c1 -> :sswitch_9
        0x7dd3012f -> :sswitch_11
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x62a9cac1 -> :sswitch_45
        -0x501f713f -> :sswitch_a
        -0x184fd332 -> :sswitch_10
        0x7cda181d -> :sswitch_f
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        -0x69b93bef -> :sswitch_b
        -0x2794adc2 -> :sswitch_c
        0x135a3233 -> :sswitch_e
        0x620d00de -> :sswitch_d
    .end sparse-switch

    :sswitch_data_3
    .sparse-switch
        -0x14d0caf5 -> :sswitch_18
        0x2e79a09c -> :sswitch_30
        0x38bf4240 -> :sswitch_14
        0x68262c40 -> :sswitch_12
    .end sparse-switch

    :sswitch_data_4
    .sparse-switch
        -0x4a7a8a70 -> :sswitch_15
        -0x1f5dba64 -> :sswitch_16
        0x307952d2 -> :sswitch_17
        0x54960cf3 -> :sswitch_13
    .end sparse-switch

    :sswitch_data_5
    .sparse-switch
        -0x1bf31a0a -> :sswitch_20
        0x23e0374b -> :sswitch_47
        0x42d9f02b -> :sswitch_26
        0x689b4537 -> :sswitch_22
    .end sparse-switch

    :sswitch_data_6
    .sparse-switch
        -0xbaaab50 -> :sswitch_25
        0x2fc3f166 -> :sswitch_24
        0x4cf7139b -> :sswitch_23
        0x4e041e0f -> :sswitch_21
    .end sparse-switch

    :sswitch_data_7
    .sparse-switch
        -0x1e36c2a9 -> :sswitch_28
        -0x7a94510 -> :sswitch_2a
        0x2daf34d3 -> :sswitch_2e
        0x5fb723a7 -> :sswitch_46
    .end sparse-switch

    :sswitch_data_8
    .sparse-switch
        -0x3794ea1e -> :sswitch_2c
        -0x115bc6d1 -> :sswitch_29
        0x1872a604 -> :sswitch_2b
        0x78fda6c0 -> :sswitch_2d
    .end sparse-switch

    :sswitch_data_9
    .sparse-switch
        -0x70f8bbbb -> :sswitch_36
        0x3f2dcda6 -> :sswitch_32
        0x4ab078d7 -> :sswitch_30
        0x7cbb482c -> :sswitch_37
    .end sparse-switch

    :sswitch_data_a
    .sparse-switch
        -0x756557c3 -> :sswitch_35
        -0x4333a113 -> :sswitch_34
        -0xe2d2220 -> :sswitch_31
        0x3600c3ff -> :sswitch_33
    .end sparse-switch

    :sswitch_data_b
    .sparse-switch
        -0x643304d6 -> :sswitch_30
        -0x566824bf -> :sswitch_3f
        -0x20348259 -> :sswitch_3d
        -0xc91f872 -> :sswitch_43
    .end sparse-switch

    :sswitch_data_c
    .sparse-switch
        -0x6d7e62d0 -> :sswitch_3e
        -0x22ddda07 -> :sswitch_42
        -0x1fec00e3 -> :sswitch_41
        -0x6ffb147 -> :sswitch_40
    .end sparse-switch
.end method
