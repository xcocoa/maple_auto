.class public Lcom/cyjh/elfin/receiver/NetStateReceiver;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyjh/elfin/receiver/NetStateReceiver$OooO00o;
    }
.end annotation


# static fields
.field private static final OooO00o:Ljava/lang/String; = "android.net.conn.CONNECTIVITY_CHANGE"

.field private static final OooO0O0:Ljava/lang/String;

.field private static OooO0OO:Z

.field private static OooO0Oo:I

.field private static OooO0o:Landroid/content/BroadcastReceiver;

.field private static OooO0o0:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cyjh/elfin/receiver/NetStateReceiver$OooO00o;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const-string v0, "\u06e4\u06d7\u06e7\u06dc\u06db\u06e8\u06d8\u06e8\u06dc\u06e1\u06d8\u06db\u06e0\u06d7\u06e8\u06eb\u06d8\u06d8\u06d7\u06d6\u06e0\u06d8\u06d6\u06e7\u06e2\u06e6\u06eb\u06ec\u06e4\u06e0\u06e5\u06e1\u06e0\u06d8\u06eb\u06d6\u06e0\u06e7\u06e8\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x5

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x183

    const/16 v2, 0x2a2

    const v3, -0x79a67cf

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-class v0, Lcom/cyjh/elfin/receiver/NetStateReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cyjh/elfin/receiver/NetStateReceiver;->OooO0O0:Ljava/lang/String;

    const-string v0, "\u06e4\u06e5\u06e8\u06e6\u06e4\u06dc\u06db\u06da\u06e0\u06d8\u06e5\u06d6\u06e5\u06e6\u06ec\u06dc\u06e0\u06d6\u06da\u06d9\u06d8\u06d8\u06e4\u06d7\u06e1\u06d7\u06e1\u06e7\u06d8\u06e5\u06e6\u06d6\u06d8\u06e6\u06e5\u06d6\u06e1\u06ec\u06e7\u06df\u06eb\u06e5\u06ec\u06e8\u06ec\u06dc\u06db\u06e6\u06e8\u06e4\u06d6\u06d8\u06e6\u06d9\u06d8\u06da\u06da"

    goto :goto_0

    :sswitch_1
    const/4 v0, 0x0

    sput-boolean v0, Lcom/cyjh/elfin/receiver/NetStateReceiver;->OooO0OO:Z

    const-string v0, "\u06dc\u06d6\u06d7\u06da\u06e0\u06d6\u06e2\u06df\u06e8\u06e5\u06da\u06e7\u06e5\u06df\u06e6\u06d8\u06da\u06ec\u06e5\u06e4\u06da\u06e1\u06d8\u06d9\u06df\u06df\u06d9\u06e5\u06d6\u06d8\u06e5\u06e5\u06da\u06d8\u06e4\u06e6\u06d7\u06e2\u06d6\u06da\u06df\u06ec\u06db\u06e6\u06e6\u06e6\u06e4\u06e8\u06e1\u06d8"

    goto :goto_0

    :sswitch_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/cyjh/elfin/receiver/NetStateReceiver;->OooO0o0:Ljava/util/ArrayList;

    const-string v0, "\u06e1\u06d8\u06e6\u06d8\u06d6\u06e4\u06dc\u06e0\u06d6\u06e7\u06d8\u06eb\u06e4\u06e6\u06eb\u06da\u06e4\u06e4\u06e2\u06dc\u06df\u06da\u06d8\u06d8\u06e7\u06d6\u06eb\u06d7\u06e5\u06db\u06e5\u06e6\u06da"

    goto :goto_0

    :sswitch_3
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5e25994d -> :sswitch_0
        0x80fe5fa -> :sswitch_2
        0x1523a9b6 -> :sswitch_1
        0x3ffca016 -> :sswitch_3
    .end sparse-switch
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static OooO(Landroid/content/Context;)V
    .locals 4

    const v1, -0x302f094a

    const-string v0, "\u06e6\u06e4\u06db\u06df\u06e7\u06e1\u06e2\u06d6\u06e1\u06d8\u06da\u06e6\u06e5\u06d8\u06e4\u06e7\u06e8\u06dc\u06df\u06da\u06d9\u06d9\u06e6\u06e0\u06e8\u06eb\u06e4\u06ec\u06d6\u06d8\u06e7\u06df\u06e1\u06d8\u06e7\u06eb\u06e1\u06e5\u06ec\u06dc\u06d8\u06e1\u06e0\u06d7\u06d9\u06eb\u06d9"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v2, v1

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/cyjh/elfin/receiver/NetStateReceiver;->OooO0o:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    :sswitch_1
    return-void

    :sswitch_2
    const-string v0, "\u06d7\u06e2\u06e4\u06e2\u06da\u06e8\u06d6\u06e6\u06d8\u06d8\u06d7\u06da\u06ec\u06d9\u06e6\u06d8\u06db\u06e0\u06ec\u06eb\u06d6\u06db\u06e1\u06da\u06eb\u06d6\u06ec\u06d6\u06e2\u06ec\u06e8\u06ec\u06e7\u06eb\u06e0\u06e1\u06d6\u06db\u06e4\u06e2\u06dc\u06e5\u06d6\u06d8"

    goto :goto_0

    :sswitch_3
    const v2, -0x5236bf8b

    const-string v0, "\u06d6\u06e5\u06e6\u06d8\u06e2\u06e1\u06e6\u06d9\u06df\u06d8\u06e4\u06e6\u06d7\u06e5\u06e1\u06d8\u06e1\u06e6\u06d8\u06da\u06e6\u06d8\u06d9\u06d8\u06e5\u06d9\u06d6\u06e8\u06dc\u06db\u06e0"

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v2

    sparse-switch v3, :sswitch_data_1

    goto :goto_2

    :sswitch_4
    sget-object v0, Lcom/cyjh/elfin/receiver/NetStateReceiver;->OooO0o:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    const-string v0, "\u06e1\u06d7\u06d9\u06e8\u06dc\u06e1\u06e8\u06d6\u06dc\u06d9\u06e0\u06d6\u06d8\u06e5\u06dc\u06ec\u06e2\u06e4\u06e0\u06e8\u06dc\u06e8\u06d6\u06eb\u06dc\u06e7\u06e2\u06e5\u06d8\u06e4\u06e4\u06eb\u06d9\u06e0\u06dc\u06eb\u06e7"

    goto :goto_2

    :cond_0
    const-string v0, "\u06dc\u06d9\u06dc\u06d8\u06e7\u06d7\u06e5\u06e6\u06e5\u06eb\u06e6\u06e5\u06e7\u06d8\u06e2\u06e6\u06e7\u06d8\u06e1\u06dc\u06d6\u06dc\u06dc\u06e5\u06e0\u06e6\u06e5\u06d8\u06e0\u06d9\u06df\u06e8\u06d6\u06d7\u06db\u06e2\u06e4\u06e6\u06e8\u06d6\u06d8\u06df\u06dc\u06d8\u06d9\u06e5\u06e4"

    goto :goto_2

    :sswitch_5
    const-string v0, "\u06d9\u06da\u06e8\u06da\u06e8\u06d7\u06df\u06dc\u06d6\u06d6\u06e6\u06d6\u06d8\u06e6\u06e0\u06d9\u06d7\u06d6\u06e5\u06d8\u06d8\u06eb\u06dc\u06d8\u06d9\u06db\u06dc\u06d8\u06da\u06dc\u06ec\u06dc\u06df\u06e0\u06e5\u06da\u06dc\u06d8\u06eb\u06e6\u06d6\u06d8"

    goto :goto_2

    :sswitch_6
    const-string v0, "\u06d6\u06e8\u06e7\u06df\u06e4\u06e2\u06db\u06dc\u06d6\u06d8\u06ec\u06e6\u06d7\u06e5\u06e1\u06d6\u06d8\u06da\u06e7\u06d6\u06eb\u06da\u06e7\u06d6\u06e6\u06eb\u06d6\u06db\u06d8\u06d8\u06d9\u06e0\u06e5\u06d8\u06e4\u06df\u06eb\u06e0\u06d6\u06e6"

    goto :goto_0

    :sswitch_7
    const-string v0, "\u06e6\u06d8\u06e4\u06da\u06e6\u06da\u06e1\u06dc\u06e7\u06e4\u06e2\u06d9\u06e4\u06e1\u06db\u06d7\u06e5\u06e8\u06d8\u06e7\u06d7\u06e8\u06e5\u06db\u06e4\u06eb\u06e8\u06ec\u06e7\u06dc\u06eb\u06e8\u06e8\u06dc\u06d8\u06eb\u06e7\u06e1\u06e0\u06ec\u06e1\u06d8\u06ec\u06e6\u06e7\u06d8\u06e8\u06dc\u06e8\u06d8\u06e8\u06e5\u06d6"

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        -0x5e16b1d3 -> :sswitch_7
        -0x55e92c49 -> :sswitch_1
        0x9ea973a -> :sswitch_0
        0x7cb53257 -> :sswitch_3
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x34c897fb -> :sswitch_4
        0x4a5bb83 -> :sswitch_6
        0x1e29baa8 -> :sswitch_5
        0x29583696 -> :sswitch_2
    .end sparse-switch
.end method

.method public static OooO00o(Landroid/content/Context;)V
    .locals 5

    const/4 v1, 0x0

    const-string v0, "\u06e0\u06d6\u06d7\u06e8\u06db\u06e0\u06dc\u06eb\u06e8\u06d8\u06d6\u06d7\u06db\u06e4\u06e6\u06d6\u06d8\u06dc\u06df\u06d8\u06d8\u06ec\u06d6\u06d6\u06d6\u06e5\u06d8\u06d6\u06dc\u06e2\u06df\u06d7\u06e1\u06d8\u06eb\u06d6\u06dc\u06d8\u06e1\u06e1\u06e6\u06d8\u06df\u06eb\u06e5\u06e6\u06eb\u06e0"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v3, 0x4c

    xor-int/2addr v2, v3

    xor-int/lit8 v2, v2, 0x71

    const/16 v3, 0x286

    const v4, -0x5b6a69b

    xor-int/2addr v2, v3

    xor-int/2addr v2, v4

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06eb\u06da\u06eb\u06e2\u06dc\u06d8\u06d8\u06d9\u06e6\u06e0\u06e0\u06e7\u06df\u06d7\u06d8\u06d8\u06e0\u06e1\u06e6\u06d8\u06e7\u06da\u06d9\u06e7\u06df\u06e8\u06d8\u06e8\u06e5\u06e8\u06d8\u06eb\u06e4\u06da"

    goto :goto_0

    :sswitch_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v0, "\u06da\u06da\u06d9\u06d8\u06db\u06e2\u06ec\u06eb\u06eb\u06e7\u06e5\u06df\u06eb\u06e7\u06dc\u06d8\u06d6\u06dc\u06eb\u06d9\u06d9\u06e6\u06eb\u06dc\u06d7\u06db\u06d9\u06e8\u06e6\u06d7\u06e8\u06d8\u06d9\u06e6\u06df\u06dc\u06d7\u06e1\u06e6\u06ec\u06ec\u06e4\u06e8\u06d8\u06e1\u06e0\u06e5\u06d8\u06d9\u06df\u06e1"

    goto :goto_0

    :sswitch_2
    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "\u06e0\u06ec\u06d8\u06d8\u06e7\u06d6\u06ec\u06e4\u06e7\u06da\u06da\u06e8\u06e1\u06d6\u06e6\u06d8\u06d8\u06d7\u06df\u06dc\u06e0\u06e4\u06dc\u06eb\u06e5\u06d8\u06ec\u06d8\u06e8\u06ec\u06e7\u06e6\u06d9\u06db\u06df\u06eb\u06eb\u06df\u06e2\u06db\u06e5\u06d8\u06e6\u06e4\u06dc\u06d8"

    goto :goto_0

    :sswitch_3
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string v0, "\u06db\u06e6\u06dc\u06d9\u06df\u06d6\u06dc\u06e4\u06e6\u06e6\u06db\u06eb\u06d9\u06da\u06da\u06ec\u06ec\u06d7\u06df\u06e8\u06d8\u06e8\u06e0\u06ec\u06e0\u06da\u06e8\u06d8\u06e8\u06e2\u06eb\u06e7\u06e7\u06d7\u06da\u06d9\u06e8\u06d8\u06db\u06ec\u06df\u06e0\u06d8\u06ec"

    goto :goto_0

    :sswitch_4
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7f1e1e50 -> :sswitch_2
        -0x50ee4135 -> :sswitch_1
        -0x34477bd6 -> :sswitch_3
        0x52aaf961 -> :sswitch_4
        0x7193558d -> :sswitch_0
    .end sparse-switch
.end method

.method public static OooO0O0()I
    .locals 4

    const-string v0, "\u06d7\u06d8\u06e7\u06e2\u06d9\u06e7\u06dc\u06e8\u06d9\u06e8\u06d6\u06e5\u06d8\u06ec\u06e0\u06d6\u06d8\u06e5\u06eb\u06d8\u06d8\u06d6\u06da\u06d6\u06d8\u06eb\u06da\u06e4\u06d6\u06df\u06e0\u06df\u06d9\u06dc\u06d8\u06d8\u06eb\u06dc\u06e0\u06e4\u06e5\u06d8\u06d6\u06e7\u06e0\u06df\u06d6\u06e1\u06da\u06e2\u06d7\u06e4\u06eb\u06d8\u06e2\u06e0\u06d6\u06d8\u06e2\u06d7\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x9b

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x122

    const/16 v2, 0x71

    const v3, 0x42b1e868

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    sget v0, Lcom/cyjh/elfin/receiver/NetStateReceiver;->OooO0Oo:I

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x4fa9c0e4
        :pswitch_0
    .end packed-switch
.end method

.method private static OooO0OO()Landroid/content/BroadcastReceiver;
    .locals 4

    const v1, 0x16755f65

    const-string v0, "\u06e2\u06da\u06e0\u06e7\u06db\u06d9\u06e4\u06d9\u06e8\u06d9\u06e7\u06df\u06d8\u06dc\u06e5\u06e0\u06ec\u06e2\u06ec\u06e2\u06e7\u06e5\u06e4\u06d8\u06df\u06e5\u06ec\u06d6\u06df\u06d8\u06d8\u06da\u06dc\u06dc\u06d8\u06d8\u06e5\u06ec"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v2, v1

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-class v0, Lcom/cyjh/elfin/receiver/NetStateReceiver;

    monitor-enter v0

    const v1, -0x77d615cd

    :try_start_0
    const-string v0, "\u06d9\u06d6\u06d9\u06dc\u06e5\u06dc\u06d8\u06dc\u06e5\u06d6\u06e1\u06e6\u06e1\u06da\u06db\u06d8\u06e4\u06e2\u06eb\u06eb\u06e4\u06e5\u06df\u06e5\u06e1\u06df\u06d7\u06e0\u06dc\u06e1\u06da"

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v2, v1

    sparse-switch v2, :sswitch_data_1

    goto :goto_1

    :sswitch_1
    const v2, 0x8b17ee1

    const-string v0, "\u06dc\u06ec\u06e5\u06e0\u06ec\u06e2\u06db\u06e6\u06da\u06e4\u06e7\u06d9\u06e8\u06d9\u06e7\u06e0\u06e0\u06d9\u06e0\u06d7\u06da\u06eb\u06e7\u06d9\u06e1\u06da\u06e1\u06d8\u06e8\u06d9\u06dc\u06d8"

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v2

    sparse-switch v3, :sswitch_data_2

    goto :goto_2

    :sswitch_2
    const-string v0, "\u06d9\u06e5\u06e5\u06e5\u06d6\u06e6\u06d8\u06e7\u06d8\u06e4\u06d9\u06eb\u06e0\u06e0\u06e6\u06e5\u06d8\u06d7\u06e4\u06e6\u06d8\u06d9\u06e7\u06e8\u06d6\u06e7\u06d7\u06eb\u06e2\u06d8\u06d8\u06e6\u06d6\u06eb"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :sswitch_3
    const-string v0, "\u06ec\u06e4\u06e2\u06da\u06e4\u06dc\u06d8\u06dc\u06d7\u06d6\u06d6\u06e6\u06e2\u06e4\u06e4\u06dc\u06e0\u06d6\u06da\u06e5\u06da\u06e2\u06d6\u06d8\u06e4\u06d6\u06e8\u06e7\u06dc\u06d6\u06d6\u06d8"

    goto :goto_0

    :sswitch_4
    const v2, -0x40d63d79

    const-string v0, "\u06df\u06ec\u06d6\u06ec\u06df\u06e1\u06e0\u06d8\u06d9\u06da\u06df\u06e6\u06e7\u06d9\u06d7\u06da\u06dc\u06d9\u06e5\u06e5\u06e7\u06ec\u06e8\u06e1\u06ec\u06dc\u06e8\u06da\u06da\u06d7\u06d8\u06d6\u06eb\u06dc\u06e6\u06e1\u06e7\u06e4\u06e8\u06d9\u06e4\u06e5\u06d8\u06d7\u06d7\u06e5\u06e6\u06d8"

    :goto_3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v2

    sparse-switch v3, :sswitch_data_3

    goto :goto_3

    :sswitch_5
    const-string v0, "\u06e6\u06df\u06eb\u06dc\u06d8\u06eb\u06e2\u06e5\u06e0\u06da\u06e4\u06e1\u06ec\u06d8\u06ec\u06d9\u06e0\u06d8\u06e4\u06e8\u06da\u06e2\u06e6\u06ec\u06e4\u06d9\u06d7\u06e1\u06e8\u06d8\u06e0\u06d6\u06df\u06d8\u06e1\u06e0\u06df\u06e1\u06e1\u06e2\u06d9\u06e7"

    goto :goto_0

    :cond_0
    const-string v0, "\u06eb\u06d8\u06e7\u06d8\u06e6\u06e8\u06d6\u06dc\u06e2\u06e8\u06df\u06d6\u06e1\u06d8\u06e2\u06e6\u06e7\u06d8\u06e1\u06dc\u06d7\u06e8\u06e7\u06e8\u06db\u06d7\u06e8\u06d8\u06e6\u06e2\u06e1\u06d6\u06d9\u06e5\u06e0\u06e4\u06ec\u06df\u06da\u06e1"

    goto :goto_3

    :sswitch_6
    sget-object v0, Lcom/cyjh/elfin/receiver/NetStateReceiver;->OooO0o:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    const-string v0, "\u06d8\u06e6\u06e1\u06e0\u06d8\u06df\u06db\u06e4\u06d7\u06d7\u06d7\u06db\u06e6\u06e5\u06ec\u06e5\u06d7\u06e4\u06e4\u06e6\u06e5\u06d7\u06e5\u06e6\u06e4\u06e7\u06e7\u06e1\u06e5\u06d8\u06ec\u06e0\u06d6\u06d8\u06d8\u06dc\u06e2\u06df\u06e1\u06d8\u06d9\u06e7\u06ec"

    goto :goto_3

    :sswitch_7
    const-string v0, "\u06db\u06df\u06ec\u06eb\u06eb\u06e1\u06df\u06e5\u06df\u06d9\u06d6\u06e1\u06e8\u06e6\u06d6\u06e5\u06dc\u06e1\u06d8\u06e0\u06e7\u06dc\u06e2\u06d7\u06da\u06db\u06e1\u06db\u06e8\u06d6\u06d6\u06d8\u06e6\u06e1\u06e7\u06eb\u06e2\u06eb"

    goto :goto_3

    :sswitch_8
    const-string v0, "\u06dc\u06da\u06d8\u06d8\u06e5\u06e5\u06eb\u06e1\u06e1\u06db\u06e2\u06eb\u06d7\u06e4\u06d8\u06dc\u06da\u06dc\u06e5\u06d6\u06e6\u06e2\u06df\u06db\u06d9\u06df\u06eb\u06e4\u06e7\u06e1"

    goto :goto_0

    :sswitch_9
    :try_start_1
    const-string v0, "\u06e5\u06e6\u06df\u06eb\u06dc\u06db\u06d8\u06e4\u06dc\u06d8\u06e0\u06e8\u06d9\u06eb\u06dc\u06dc\u06d8\u06e0\u06dc\u06d9\u06e5\u06ec\u06dc\u06d8\u06e8\u06d8\u06da\u06dc\u06e2\u06e6\u06e5\u06e1\u06e8\u06e0\u06da\u06e1\u06e2\u06ec\u06da\u06dc\u06ec\u06e7\u06e8"

    goto :goto_1

    :cond_1
    const-string v0, "\u06e4\u06e4\u06e8\u06d8\u06d8\u06d8\u06e5\u06d8\u06df\u06d6\u06dc\u06d8\u06d6\u06e7\u06d9\u06eb\u06e0\u06d6\u06d8\u06e5\u06e1\u06da\u06e7\u06df\u06e6\u06d8\u06ec\u06df\u06e5\u06d8\u06e4\u06d7\u06e2\u06eb\u06ec\u06e8\u06d7\u06d7\u06e2\u06eb\u06d6\u06e5\u06eb\u06eb\u06dc\u06df\u06d9\u06dc"

    goto :goto_2

    :sswitch_a
    sget-object v0, Lcom/cyjh/elfin/receiver/NetStateReceiver;->OooO0o:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_1

    const-string v0, "\u06db\u06db\u06d7\u06e6\u06e2\u06dc\u06db\u06d7\u06e5\u06d8\u06e6\u06dc\u06e6\u06eb\u06d9\u06e0\u06eb\u06e5\u06e8\u06db\u06e6\u06e7\u06d8\u06e6\u06e4\u06e4\u06df\u06d6\u06e6\u06d8\u06df\u06da\u06e5"

    goto :goto_2

    :sswitch_b
    const-string v0, "\u06d7\u06e7\u06e8\u06d8\u06e4\u06df\u06d8\u06df\u06e7\u06e5\u06e0\u06e7\u06d6\u06e5\u06ec\u06da\u06d7\u06e0\u06dc\u06d6\u06d6\u06ec\u06e4\u06db\u06eb\u06db\u06d8\u06df\u06e4\u06d7\u06d6"

    goto :goto_2

    :sswitch_c
    const-string v0, "\u06e8\u06df\u06e1\u06d8\u06eb\u06d7\u06eb\u06e8\u06eb\u06db\u06e7\u06e4\u06e7\u06d6\u06ec\u06e7\u06e8\u06d8\u06db\u06d6\u06e8\u06e7\u06e2\u06da\u06d9\u06da\u06d6\u06da\u06e8\u06d8\u06d8\u06e1\u06e6\u06dc\u06df\u06db"

    goto :goto_1

    :sswitch_d
    new-instance v0, Lcom/cyjh/elfin/receiver/NetStateReceiver;

    invoke-direct {v0}, Lcom/cyjh/elfin/receiver/NetStateReceiver;-><init>()V

    sput-object v0, Lcom/cyjh/elfin/receiver/NetStateReceiver;->OooO0o:Landroid/content/BroadcastReceiver;

    :sswitch_e
    const-class v0, Lcom/cyjh/elfin/receiver/NetStateReceiver;

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :sswitch_f
    sget-object v0, Lcom/cyjh/elfin/receiver/NetStateReceiver;->OooO0o:Landroid/content/BroadcastReceiver;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_2
    const-class v1, Lcom/cyjh/elfin/receiver/NetStateReceiver;

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x784e0dd1 -> :sswitch_4
        -0x51f1f8d8 -> :sswitch_f
        -0x2dddfad7 -> :sswitch_0
        -0xffdba33 -> :sswitch_8
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x23155a97 -> :sswitch_e
        0x4208fa93 -> :sswitch_d
        0x47c366b1 -> :sswitch_1
        0x6f500b1a -> :sswitch_c
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        -0x57b33d07 -> :sswitch_2
        0x3cdcde1a -> :sswitch_9
        0x489c8d03 -> :sswitch_a
        0x5a71182a -> :sswitch_b
    .end sparse-switch

    :sswitch_data_3
    .sparse-switch
        0x1aa3d8eb -> :sswitch_6
        0x28f60422 -> :sswitch_7
        0x6912dea4 -> :sswitch_3
        0x6b1d8b1c -> :sswitch_5
    .end sparse-switch
.end method

.method public static OooO0Oo()Z
    .locals 4

    const-string v0, "\u06e7\u06d7\u06db\u06db\u06ec\u06eb\u06e1\u06e8\u06e7\u06d9\u06e8\u06e7\u06df\u06e8\u06df\u06dc\u06eb\u06db\u06db\u06e4\u06e7\u06da\u06e1\u06dc\u06d8\u06eb\u06eb\u06e6\u06da\u06e2\u06e8\u06eb\u06e8\u06d6\u06d8\u06eb\u06ec\u06dc\u06d8\u06e4\u06dc\u06e8\u06eb\u06df\u06d6\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x2f1

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x3c8

    const/16 v2, 0x2f0

    const v3, 0x38d919c7

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    sget-boolean v0, Lcom/cyjh/elfin/receiver/NetStateReceiver;->OooO0OO:Z

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x15a78762
        :pswitch_0
    .end packed-switch
.end method

.method public static OooO0o(Landroid/content/Context;)V
    .locals 5

    const/4 v1, 0x0

    const-string v0, "\u06e8\u06eb\u06ec\u06dc\u06d6\u06dc\u06e7\u06da\u06e8\u06d8\u06ec\u06db\u06e8\u06d8\u06e8\u06eb\u06e2\u06e0\u06eb\u06e8\u06db\u06da\u06eb\u06d8\u06e2\u06e8\u06da\u06df\u06e2\u06e8\u06e8\u06dc\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v3, 0xaa

    xor-int/2addr v2, v3

    xor-int/lit16 v2, v2, 0x39b

    const/16 v3, 0x394

    const v4, 0x6f6ca08a

    xor-int/2addr v2, v3

    xor-int/2addr v2, v4

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06dc\u06eb\u06dc\u06d6\u06e1\u06e6\u06db\u06dc\u06e5\u06d8\u06e2\u06e1\u06dc\u06d8\u06d9\u06e7\u06e5\u06d8\u06e5\u06e4\u06e5\u06dc\u06e1\u06da\u06e6\u06e5\u06df\u06e2\u06dc\u06d9\u06e5\u06e7\u06e5"

    goto :goto_0

    :sswitch_1
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "\u06df\u06e5\u06da\u06e7\u06e1\u06e2\u06ec\u06d7\u06e1\u06d9\u06e8\u06da\u06e7\u06df\u06e5\u06d8\u06e8\u06d6\u06da\u06e5\u06ec\u06d9\u06db\u06ec\u06d9\u06e4\u06d7\u06d9\u06df\u06d6\u06d8\u06da\u06e6\u06e6\u06db\u06e0\u06dc\u06d8\u06e8\u06d9\u06e7\u06dc\u06d7\u06df\u06e4\u06d8\u06dc\u06d8\u06e4\u06db\u06db\u06db\u06e1\u06dc\u06d8\u06e4\u06e8\u06e7\u06d8"

    goto :goto_0

    :sswitch_2
    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "\u06db\u06db\u06e5\u06ec\u06e5\u06e6\u06d8\u06db\u06e5\u06df\u06e0\u06d7\u06dc\u06da\u06d8\u06d9\u06e4\u06d9\u06db\u06eb\u06dc\u06d9\u06eb\u06da\u06db\u06e4\u06e1\u06dc\u06d8\u06d7\u06e0\u06e5\u06d7\u06e7\u06e2\u06d8\u06d8\u06ec\u06d8\u06d6\u06e8\u06d8\u06dc\u06e7\u06eb\u06d6\u06df\u06d6\u06da\u06da\u06d6\u06d8"

    goto :goto_0

    :sswitch_3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/cyjh/elfin/receiver/NetStateReceiver;->OooO0OO()Landroid/content/BroadcastReceiver;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string v0, "\u06e4\u06d9\u06e4\u06da\u06d6\u06da\u06db\u06da\u06d6\u06d8\u06d8\u06eb\u06e8\u06e7\u06e6\u06db\u06e4\u06e0\u06e8\u06d8\u06db\u06e5\u06e8\u06d9\u06db\u06d6\u06d8\u06db\u06e1\u06e6\u06ec\u06eb\u06d6\u06d7\u06e0\u06e0\u06d8\u06eb\u06d7"

    goto :goto_0

    :sswitch_4
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x705c1e9c -> :sswitch_2
        -0x467c0f68 -> :sswitch_1
        -0x3dd95dff -> :sswitch_0
        -0x2bf94474 -> :sswitch_4
        0x5c857ee4 -> :sswitch_3
    .end sparse-switch
.end method

.method private OooO0o0()V
    .locals 9

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v0, "\u06e0\u06e8\u06e1\u06dc\u06db\u06d6\u06ec\u06dc\u06d7\u06d6\u06e6\u06d7\u06e0\u06e0\u06df\u06d9\u06d9\u06d9\u06d8\u06e5\u06e4\u06db\u06eb\u06d6\u06d8\u06eb\u06e8\u06e7\u06e2\u06e0\u06e1\u06df\u06e0\u06e4\u06db\u06e6\u06e8\u06d8\u06d6\u06da\u06da\u06e5\u06d6\u06eb\u06df\u06e0\u06df\u06e0\u06e8\u06e8\u06d8"

    move-object v1, v0

    move v2, v3

    move v5, v3

    move v6, v3

    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v7, 0x349

    xor-int/2addr v0, v7

    xor-int/lit8 v0, v0, 0x29

    const/16 v7, 0x168

    const v8, 0x74dd827a

    xor-int/2addr v0, v7

    xor-int/2addr v0, v8

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d7\u06df\u06d8\u06d9\u06e0\u06db\u06e6\u06db\u06d9\u06e7\u06ec\u06da\u06ec\u06d7\u06e0\u06d8\u06da\u06db\u06e2\u06dc\u06df\u06e0\u06db\u06db\u06e5\u06dc\u06d8\u06d8\u06e6\u06e4\u06e6\u06d8"

    move-object v1, v0

    goto :goto_0

    :sswitch_1
    const v1, -0x616000a7

    const-string v0, "\u06ec\u06e6\u06e6\u06d8\u06e1\u06ec\u06e8\u06e0\u06e0\u06d6\u06d8\u06e0\u06db\u06d8\u06d8\u06d8\u06eb\u06dc\u06d8\u06e4\u06eb\u06e7\u06da\u06e2\u06e8\u06e1\u06e5\u06e7\u06df\u06e6\u06e6\u06d6\u06d7\u06e5\u06eb\u06e6\u06d8\u06e1\u06dc\u06e7\u06e2\u06e5\u06e1"

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v7

    xor-int/2addr v7, v1

    sparse-switch v7, :sswitch_data_1

    goto :goto_1

    :sswitch_2
    const v7, -0x63eba53e

    const-string v0, "\u06e6\u06e4\u06e6\u06d8\u06ec\u06ec\u06e6\u06eb\u06da\u06ec\u06eb\u06e8\u06d8\u06e8\u06e2\u06e1\u06d8\u06e2\u06df\u06eb\u06db\u06d8\u06d7\u06e2\u06d6\u06e7\u06d8\u06db\u06eb\u06d6\u06d8\u06e7\u06e5\u06e8\u06d8\u06e2\u06e0\u06da\u06e2\u06e0\u06eb\u06dc\u06e8\u06d8\u06d7\u06d8\u06e8\u06d8"

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v8

    xor-int/2addr v8, v7

    sparse-switch v8, :sswitch_data_2

    goto :goto_2

    :sswitch_3
    sget-object v0, Lcom/cyjh/elfin/receiver/NetStateReceiver;->OooO0o0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "\u06ec\u06e4\u06e1\u06d8\u06da\u06da\u06df\u06e5\u06d7\u06e6\u06da\u06e2\u06eb\u06dc\u06da\u06d7\u06e7\u06e4\u06d7\u06e6\u06d8\u06e6\u06d7\u06e5\u06d8\u06d9\u06e0\u06e0\u06ec\u06e8\u06e1\u06d8"

    goto :goto_2

    :sswitch_4
    const-string v0, "\u06e7\u06d9\u06dc\u06d8\u06e4\u06e2\u06eb\u06ec\u06e2\u06e4\u06e5\u06dc\u06e5\u06dc\u06e6\u06e7\u06d8\u06ec\u06e5\u06df\u06e1\u06e2\u06e1\u06d8\u06e6\u06ec\u06e1\u06da\u06d8\u06d9\u06e1\u06d8\u06e8\u06e0\u06e2\u06d8\u06df\u06d6\u06d8\u06d8"

    goto :goto_1

    :cond_0
    const-string v0, "\u06da\u06e7\u06ec\u06ec\u06d8\u06dc\u06d8\u06d9\u06e6\u06e6\u06d8\u06d6\u06eb\u06e5\u06d9\u06d8\u06ec\u06e0\u06dc\u06e6\u06d8\u06d9\u06e6\u06d8\u06da\u06d6\u06e7\u06da\u06e5\u06d8\u06d8\u06e4\u06e4\u06e6\u06d8\u06e0\u06d8\u06e4\u06e1\u06da\u06ec\u06db\u06e6\u06e5\u06d8\u06d8\u06d7\u06db\u06d7\u06d6\u06e8\u06d8\u06ec\u06d6"

    goto :goto_2

    :sswitch_5
    const-string v0, "\u06e7\u06db\u06e6\u06d8\u06eb\u06e2\u06d7\u06e6\u06d6\u06db\u06d7\u06ec\u06e5\u06d8\u06eb\u06da\u06e1\u06d7\u06e5\u06ec\u06d8\u06d9\u06e6\u06d8\u06e2\u06d8\u06e8\u06dc\u06e1\u06ec\u06dc\u06eb\u06dc\u06d8\u06df\u06e1\u06d6\u06e2\u06e8\u06e7"

    goto :goto_2

    :sswitch_6
    const-string v0, "\u06da\u06d8\u06df\u06eb\u06e1\u06e7\u06d8\u06e4\u06e5\u06dc\u06d8\u06da\u06e5\u06d8\u06d8\u06da\u06d9\u06e1\u06d8\u06e0\u06d7\u06e8\u06e6\u06dc\u06d8\u06d8\u06e2\u06e6\u06da\u06e5\u06e4\u06d9\u06d6\u06e7\u06d8\u06e7\u06eb\u06e6\u06d8\u06dc\u06e0\u06e6\u06d8"

    goto :goto_1

    :sswitch_7
    const-string v0, "\u06e1\u06d8\u06e0\u06e7\u06e7\u06d7\u06dc\u06d8\u06da\u06e1\u06e1\u06d8\u06e6\u06e8\u06e7\u06d8\u06ec\u06d9\u06d6\u06da\u06d9\u06eb\u06df\u06ec\u06e4\u06eb\u06d9\u06d6\u06db\u06da\u06d6\u06e5\u06e7\u06e4\u06d8\u06e7\u06d8"

    goto :goto_1

    :sswitch_8
    const-string v0, "\u06df\u06ec\u06d6\u06d9\u06e8\u06df\u06d9\u06e2\u06d6\u06e7\u06e4\u06e7\u06e2\u06e2\u06e5\u06d6\u06dc\u06e8\u06da\u06e1\u06e1\u06df\u06e7\u06d8\u06df\u06e0\u06dc\u06e2\u06e8\u06d8\u06d9\u06db\u06e8\u06d8\u06e6\u06e6\u06d8\u06d8\u06eb\u06d8\u06ec\u06d6"

    move-object v1, v0

    goto :goto_0

    :sswitch_9
    sget-object v0, Lcom/cyjh/elfin/receiver/NetStateReceiver;->OooO0o0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    const-string v0, "\u06e6\u06e8\u06da\u06e2\u06d6\u06e8\u06d8\u06e6\u06da\u06e6\u06d8\u06e6\u06e7\u06e5\u06e1\u06e7\u06dc\u06d8\u06eb\u06e5\u06e5\u06e7\u06da\u06d7\u06dc\u06e2\u06d8\u06d8\u06db\u06db\u06e1\u06dc\u06d6\u06d6\u06e0\u06e6\u06df\u06e7\u06d8\u06d7\u06e5\u06e8\u06d8\u06e1\u06e6\u06e7"

    move-object v1, v0

    goto :goto_0

    :sswitch_a
    const-string v0, "\u06df\u06e5\u06eb\u06ec\u06d8\u06e2\u06e8\u06ec\u06d7\u06e7\u06e8\u06d6\u06d8\u06df\u06dc\u06e7\u06d6\u06d7\u06d8\u06d9\u06d6\u06e1\u06d8\u06da\u06dc\u06e7\u06eb\u06da\u06e4\u06d6\u06e2\u06eb\u06df\u06d7\u06dc\u06d8\u06e1\u06df\u06e8\u06db\u06e5\u06d9\u06e8\u06e6\u06dc"

    move-object v1, v0

    goto :goto_0

    :sswitch_b
    const-string v0, "\u06e7\u06e5\u06d8\u06e4\u06e4\u06d9\u06db\u06e7\u06e5\u06e4\u06d6\u06e2\u06d7\u06db\u06da\u06d6\u06e8\u06d7\u06d7\u06e8\u06d9\u06e8\u06e6\u06e2\u06e6\u06e4\u06ec\u06d7\u06e6\u06e2\u06e4\u06e0\u06d8\u06e0\u06da\u06d8\u06e8\u06eb\u06e1\u06d8\u06e6\u06e4\u06e2"

    move-object v1, v0

    move v5, v3

    goto :goto_0

    :sswitch_c
    const v1, 0x48606d79

    const-string v0, "\u06da\u06da\u06e8\u06d8\u06e2\u06e2\u06e5\u06da\u06d7\u06ec\u06e2\u06d9\u06d8\u06d8\u06e7\u06d6\u06da\u06e6\u06e1\u06e7\u06dc\u06e8\u06db\u06eb\u06ec\u06ec\u06ec\u06e4\u06e7\u06d7\u06e1\u06d8\u06d8\u06eb\u06dc\u06d8\u06dc\u06e4\u06e8\u06e7\u06e8\u06d8\u06d8\u06ec\u06db\u06e5"

    :goto_3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v7

    xor-int/2addr v7, v1

    sparse-switch v7, :sswitch_data_3

    goto :goto_3

    :sswitch_d
    const-string v0, "\u06e2\u06d6\u06e6\u06d9\u06d8\u06dc\u06d8\u06db\u06e8\u06d8\u06d7\u06d6\u06e5\u06df\u06da\u06d7\u06e8\u06da\u06df\u06e5\u06e2\u06d6\u06eb\u06eb\u06d8\u06d8\u06e4\u06dc\u06e1\u06d8\u06e7\u06e6\u06e0\u06d9\u06e6\u06e4\u06e1\u06e0\u06e6\u06d8\u06e0\u06ec\u06e2\u06dc\u06da\u06e8"

    goto :goto_3

    :sswitch_e
    const-string v0, "\u06e2\u06d8\u06d8\u06d8\u06e2\u06d7\u06d7\u06eb\u06dc\u06e0\u06ec\u06ec\u06e7\u06db\u06db\u06d6\u06d8\u06e8\u06db\u06dc\u06da\u06e6\u06e8\u06ec\u06df\u06d7\u06e4\u06e1\u06d8\u06e2\u06db\u06e7\u06eb\u06e6\u06e8\u06eb\u06d7\u06db\u06da\u06d6\u06df\u06e0\u06db\u06e0"

    goto :goto_3

    :sswitch_f
    const v7, 0x7792956a

    const-string v0, "\u06e4\u06e5\u06df\u06eb\u06e7\u06db\u06d9\u06e7\u06e5\u06e7\u06da\u06ec\u06e4\u06d6\u06e1\u06e1\u06e0\u06e2\u06da\u06d6\u06e1\u06d8\u06ec\u06e2\u06eb\u06d9\u06d7\u06da\u06d7\u06e2\u06ec\u06e5\u06eb\u06e1\u06d8\u06da\u06e4\u06e2\u06e5\u06e7\u06d8\u06da\u06e1\u06ec"

    :goto_4
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v8

    xor-int/2addr v8, v7

    sparse-switch v8, :sswitch_data_4

    goto :goto_4

    :sswitch_10
    if-ge v5, v6, :cond_1

    const-string v0, "\u06e0\u06da\u06da\u06eb\u06eb\u06e8\u06d8\u06df\u06d6\u06e8\u06ec\u06e2\u06db\u06db\u06d7\u06e0\u06d7\u06e7\u06d7\u06ec\u06e5\u06e1\u06e4\u06e5\u06db\u06e1\u06df\u06d9\u06e4\u06db\u06e8\u06e7\u06eb\u06e5\u06da\u06d8\u06e5\u06e8\u06e7\u06d6\u06d8\u06d8\u06e5\u06dc"

    goto :goto_4

    :cond_1
    const-string v0, "\u06eb\u06e0\u06ec\u06dc\u06eb\u06d8\u06e7\u06d6\u06e5\u06e1\u06eb\u06d8\u06d7\u06e8\u06e1\u06d8\u06ec\u06eb\u06d8\u06e4\u06d8\u06e4\u06d7\u06d6\u06d7\u06db\u06e0\u06e6\u06ec\u06df\u06d9"

    goto :goto_4

    :sswitch_11
    const-string v0, "\u06d9\u06e4\u06e8\u06d8\u06dc\u06d8\u06ec\u06d6\u06e7\u06e4\u06e1\u06d8\u06e6\u06d7\u06ec\u06d8\u06e0\u06db\u06ec\u06da\u06e5\u06d9\u06e7\u06df\u06dc\u06d8\u06dc\u06ec\u06e6\u06e4\u06d9\u06e5\u06d8\u06d9\u06da\u06d9\u06e8\u06e7\u06e6\u06dc\u06d7\u06db\u06d6\u06e2\u06d6\u06d8"

    goto :goto_4

    :sswitch_12
    const-string v0, "\u06e4\u06d8\u06e5\u06d8\u06d9\u06db\u06e5\u06da\u06d6\u06d7\u06dc\u06e8\u06eb\u06e1\u06db\u06d6\u06d8\u06ec\u06e8\u06e5\u06d8\u06e5\u06e7\u06d6\u06d8\u06db\u06d7\u06e8\u06e6\u06e2\u06e1\u06e1\u06d9\u06d6\u06e1\u06e5\u06d6\u06d8\u06d7\u06e7\u06e8\u06d7\u06db\u06e8\u06d8\u06e8\u06ec\u06e7"

    goto :goto_3

    :sswitch_13
    const-string v0, "\u06d9\u06d9\u06d8\u06d8\u06e2\u06e5\u06e6\u06d8\u06e8\u06e6\u06da\u06d9\u06d6\u06dc\u06d6\u06d7\u06e0\u06dc\u06e5\u06e8\u06e5\u06e2\u06d8\u06d8\u06e1\u06e8\u06d8\u06d8\u06e4\u06d9\u06d7\u06e5\u06df\u06e2"

    move-object v1, v0

    goto/16 :goto_0

    :sswitch_14
    sget-object v0, Lcom/cyjh/elfin/receiver/NetStateReceiver;->OooO0o0:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cyjh/elfin/receiver/NetStateReceiver$OooO00o;

    const-string v1, "\u06e0\u06e2\u06d8\u06d8\u06e1\u06db\u06e1\u06e4\u06d9\u06e1\u06d8\u06d6\u06e7\u06e4\u06ec\u06db\u06d8\u06dc\u06df\u06e1\u06db\u06dc\u06e0\u06d9\u06db\u06e8\u06e7\u06d8\u06d8\u06e6\u06e8\u06d9\u06e4\u06e2\u06d9\u06df\u06eb\u06e8\u06da\u06d9\u06df\u06e1\u06e8\u06e8\u06e2\u06e7\u06e8\u06d8\u06d6\u06e4\u06e2"

    move-object v4, v0

    goto/16 :goto_0

    :sswitch_15
    const v1, 0x357a9de5

    const-string v0, "\u06e8\u06e6\u06eb\u06e2\u06db\u06da\u06dc\u06ec\u06e5\u06ec\u06eb\u06e2\u06db\u06d7\u06e4\u06d9\u06e8\u06e1\u06e1\u06e4\u06d7\u06d8\u06e1\u06df\u06eb\u06ec\u06ec\u06df\u06e1\u06db\u06ec\u06e2\u06d6\u06e7\u06d8\u06dc\u06e8\u06e7\u06d8\u06e8\u06d9\u06d9\u06df\u06d9\u06dc\u06e8"

    :goto_5
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v7

    xor-int/2addr v7, v1

    sparse-switch v7, :sswitch_data_5

    goto :goto_5

    :sswitch_16
    const-string v0, "\u06e1\u06dc\u06eb\u06e7\u06e4\u06e5\u06d8\u06d7\u06df\u06eb\u06da\u06e4\u06e1\u06da\u06e5\u06db\u06d6\u06ec\u06e6\u06d8\u06e1\u06e0\u06e6\u06d8\u06d7\u06da\u06dc\u06e0\u06e0\u06d8\u06e2\u06db"

    goto :goto_5

    :sswitch_17
    const-string v0, "\u06dc\u06e8\u06d8\u06e6\u06d8\u06e5\u06d8\u06e4\u06d7\u06d6\u06e8\u06e6\u06eb\u06da\u06ec\u06ec\u06ec\u06e2\u06e4\u06e4\u06db\u06d8\u06eb\u06ec\u06ec\u06da\u06d6\u06e7\u06d8\u06ec\u06df\u06e6\u06d8\u06d9\u06e5\u06d6\u06d8\u06e6\u06df\u06d6\u06e0\u06dc\u06e8\u06e2\u06e8\u06e1\u06d9\u06db\u06db\u06db\u06db\u06ec\u06d7\u06d6\u06d9\u06e7\u06dc\u06e8"

    goto :goto_5

    :sswitch_18
    const v7, -0x7bf3a3eb

    const-string v0, "\u06d7\u06db\u06e2\u06d9\u06e6\u06e6\u06d8\u06d9\u06d7\u06ec\u06e5\u06d9\u06e6\u06d8\u06db\u06d6\u06d6\u06d8\u06e7\u06d6\u06e2\u06dc\u06df\u06e5\u06d8\u06e5\u06e0\u06dc\u06d8\u06da\u06d9\u06dc\u06eb\u06db\u06df"

    :goto_6
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v8

    xor-int/2addr v8, v7

    sparse-switch v8, :sswitch_data_6

    goto :goto_6

    :sswitch_19
    const-string v0, "\u06eb\u06e5\u06d9\u06da\u06eb\u06e8\u06d8\u06e7\u06d6\u06e1\u06d8\u06eb\u06e8\u06e2\u06ec\u06e0\u06e1\u06d8\u06d9\u06ec\u06e8\u06d8\u06eb\u06e1\u06ec\u06ec\u06d8\u06d6\u06d8\u06e8\u06e7\u06e0\u06e5\u06d8\u06e4\u06e7\u06d9\u06df\u06d8\u06d8\u06df\u06eb\u06e4\u06d8\u06d8\u06d7\u06e2\u06da\u06e4\u06d7\u06d6\u06d8\u06e6\u06db\u06d8"

    goto :goto_6

    :cond_2
    const-string v0, "\u06e6\u06da\u06dc\u06eb\u06dc\u06e6\u06d8\u06e5\u06e8\u06e1\u06d8\u06e5\u06e2\u06e7\u06ec\u06df\u06da\u06e4\u06e5\u06dc\u06e0\u06e4\u06e8\u06e4\u06e8\u06e4\u06e0\u06e7\u06d7\u06e1\u06d7\u06e5\u06e8\u06d8\u06e1\u06d8\u06e8\u06eb\u06e5\u06d8"

    goto :goto_6

    :sswitch_1a
    if-eqz v4, :cond_2

    const-string v0, "\u06d9\u06d9\u06e7\u06db\u06e0\u06d7\u06eb\u06e5\u06eb\u06d7\u06d9\u06e4\u06dc\u06e5\u06d8\u06e2\u06ec\u06e8\u06d8\u06e5\u06db\u06dc\u06d7\u06e6\u06e8\u06d8\u06ec\u06d8\u06eb\u06ec\u06d6\u06d7\u06e7\u06d6\u06e7\u06d8\u06e7\u06e0\u06e8\u06d8\u06e8\u06da\u06d6\u06d8\u06e0\u06d6\u06e8\u06dc\u06e1\u06d8\u06d8\u06e0\u06d9\u06d9"

    goto :goto_6

    :sswitch_1b
    const-string v0, "\u06e0\u06da\u06e1\u06da\u06dc\u06d7\u06da\u06e7\u06db\u06e2\u06e2\u06e5\u06e6\u06df\u06d6\u06d8\u06d6\u06e1\u06ec\u06e0\u06e6\u06e2\u06e5\u06d9\u06e4\u06e8\u06dc\u06dc\u06db\u06e1\u06e4\u06e7\u06e1\u06e1\u06d8\u06e1\u06df\u06e7"

    goto :goto_5

    :sswitch_1c
    const-string v0, "\u06d8\u06e4\u06d7\u06e6\u06da\u06df\u06e4\u06eb\u06e2\u06d7\u06e4\u06dc\u06d9\u06d7\u06e7\u06e0\u06eb\u06eb\u06ec\u06d8\u06d8\u06d8\u06e1\u06df\u06dc\u06e2\u06dc\u06e1\u06e2\u06eb\u06e5\u06e6\u06e7\u06d6\u06e2\u06e7\u06e1\u06e2\u06d8\u06e2\u06e7\u06e5\u06e2\u06db\u06eb\u06d7\u06e7\u06e1\u06e6\u06d6\u06ec"

    move-object v1, v0

    goto/16 :goto_0

    :sswitch_1d
    const v1, -0x7fa5e415

    const-string v0, "\u06e8\u06d6\u06e8\u06d8\u06d7\u06e0\u06da\u06d9\u06e5\u06e5\u06e2\u06e2\u06d8\u06d8\u06da\u06e4\u06d9\u06d8\u06db\u06e5\u06d7\u06ec\u06e7\u06db\u06d8\u06d8\u06ec\u06eb\u06d8\u06ec\u06d7\u06e7\u06e2\u06db\u06ec\u06da\u06e4\u06e0\u06e6\u06dc\u06e2\u06d9\u06d7\u06d6\u06d6\u06df\u06e2\u06d8\u06e4\u06d6\u06d6\u06db\u06e5\u06d8\u06d9\u06e8\u06df"

    :goto_7
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v7

    xor-int/2addr v7, v1

    sparse-switch v7, :sswitch_data_7

    goto :goto_7

    :sswitch_1e
    const v7, -0x78c8a957

    const-string v0, "\u06da\u06e8\u06e5\u06e5\u06e4\u06e7\u06e0\u06e1\u06d8\u06e5\u06e6\u06e6\u06d8\u06e5\u06d7\u06ec\u06d7\u06d9\u06e6\u06d7\u06da\u06da\u06dc\u06e6\u06df\u06e4\u06db\u06e6\u06d6\u06d6\u06ec"

    :goto_8
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v8

    xor-int/2addr v8, v7

    sparse-switch v8, :sswitch_data_8

    goto :goto_8

    :sswitch_1f
    invoke-static {}, Lcom/cyjh/elfin/receiver/NetStateReceiver;->OooO0Oo()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "\u06ec\u06d7\u06e0\u06d8\u06e5\u06dc\u06e1\u06e2\u06ec\u06db\u06dc\u06da\u06df\u06e1\u06d8\u06e1\u06e0\u06db\u06e6\u06e2\u06e1\u06d8\u06db\u06e7\u06e5\u06d8\u06d6\u06eb\u06d9\u06e7\u06e5\u06d8\u06dc\u06ec\u06e0\u06e1\u06d8\u06e0\u06e6\u06e7\u06e5\u06ec\u06e2\u06e5\u06d8"

    goto :goto_8

    :sswitch_20
    const-string v0, "\u06e2\u06e0\u06d7\u06e4\u06dc\u06dc\u06d6\u06e7\u06da\u06e6\u06e0\u06d6\u06da\u06d6\u06da\u06ec\u06e1\u06e1\u06d8\u06df\u06d8\u06e7\u06d8\u06e1\u06e7\u06eb\u06e0\u06e6\u06e6\u06e0\u06e1\u06e6\u06e4\u06da\u06e6\u06d8\u06da\u06e0\u06d8\u06d8\u06e0\u06d6\u06e8\u06ec\u06e1\u06d7\u06d7\u06e6\u06e6\u06e8\u06e2\u06e6\u06d8\u06d8\u06d6\u06e0\u06e8\u06d8\u06d8"

    goto :goto_7

    :cond_3
    const-string v0, "\u06d7\u06e5\u06e6\u06d8\u06e6\u06e1\u06d6\u06d8\u06d6\u06dc\u06eb\u06d8\u06eb\u06e1\u06d8\u06da\u06e2\u06db\u06db\u06da\u06d8\u06d8\u06eb\u06dc\u06e2\u06d9\u06da\u06e2\u06eb\u06e4\u06db\u06d8\u06ec\u06d6\u06d8\u06e0\u06d6\u06dc\u06df\u06df\u06d9\u06e4\u06d8\u06dc\u06d8\u06da\u06df\u06e5\u06e8\u06e4\u06e8\u06d7\u06e5\u06d8\u06e7\u06d7\u06db\u06eb\u06e4\u06d9"

    goto :goto_8

    :sswitch_21
    const-string v0, "\u06d9\u06eb\u06dc\u06eb\u06da\u06e2\u06e8\u06ec\u06e1\u06e4\u06d8\u06e7\u06da\u06ec\u06db\u06e8\u06e0\u06d7\u06da\u06e1\u06e8\u06ec\u06dc\u06e8\u06d8\u06e7\u06e1\u06e7\u06d8\u06d7\u06e0\u06e6\u06d8\u06e0\u06dc\u06dc\u06e5\u06da\u06dc\u06d8"

    goto :goto_8

    :sswitch_22
    const-string v0, "\u06eb\u06e5\u06eb\u06e2\u06e4\u06e7\u06d6\u06e5\u06e6\u06e8\u06e7\u06e7\u06e6\u06d7\u06ec\u06d7\u06dc\u06d8\u06e7\u06e1\u06e7\u06ec\u06db\u06ec\u06d7\u06e2\u06e0\u06e6\u06d6\u06d8"

    goto :goto_7

    :sswitch_23
    const-string v0, "\u06d7\u06e4\u06da\u06e1\u06eb\u06e8\u06d8\u06e8\u06d8\u06e1\u06ec\u06da\u06d9\u06e6\u06e7\u06e7\u06e1\u06e2\u06d9\u06d6\u06dc\u06db\u06e1\u06eb\u06e8\u06e7\u06d6\u06dc\u06d8\u06d6\u06e7\u06dc\u06e1\u06e8\u06e8\u06e8\u06d6\u06e8\u06da\u06e6\u06da\u06d9\u06e8\u06e7\u06d9\u06d7\u06d6\u06d8\u06e5\u06d8"

    goto :goto_7

    :sswitch_24
    const-string v0, "\u06e1\u06db\u06e5\u06d8\u06d9\u06dc\u06ec\u06e4\u06d7\u06d7\u06e5\u06d9\u06e8\u06e0\u06dc\u06e5\u06d6\u06d8\u06d9\u06dc\u06ec\u06eb\u06e4\u06e2\u06e8\u06d8\u06e7\u06eb\u06db\u06e1\u06d7\u06e1\u06d8\u06d6\u06e8\u06e7\u06d7\u06d7\u06d6\u06d8"

    move-object v1, v0

    goto/16 :goto_0

    :sswitch_25
    sget v0, Lcom/cyjh/elfin/receiver/NetStateReceiver;->OooO0Oo:I

    invoke-interface {v4, v0}, Lcom/cyjh/elfin/receiver/NetStateReceiver$OooO00o;->OooO0O0(I)V

    const-string v0, "\u06e8\u06d8\u06e2\u06e1\u06e8\u06da\u06d6\u06eb\u06d9\u06eb\u06d7\u06e5\u06e1\u06ec\u06d9\u06d9\u06e6\u06e4\u06e7\u06e8\u06d8\u06e5\u06df\u06ec\u06da\u06e5\u06d7\u06d9\u06e8\u06d9"

    move-object v1, v0

    goto/16 :goto_0

    :sswitch_26
    invoke-interface {v4}, Lcom/cyjh/elfin/receiver/NetStateReceiver$OooO00o;->OooO00o()V

    const-string v0, "\u06eb\u06d9\u06d7\u06e2\u06d9\u06e0\u06e5\u06e1\u06ec\u06e0\u06e2\u06e4\u06e5\u06d6\u06d9\u06d8\u06e8\u06d8\u06e5\u06df\u06e7\u06e2\u06d6\u06e7\u06d8\u06ec\u06e1\u06d6\u06d8\u06e7\u06da\u06e1\u06d8\u06df\u06e1\u06d6\u06e6\u06e1\u06e5\u06d8"

    move-object v1, v0

    goto/16 :goto_0

    :sswitch_27
    add-int/lit8 v2, v5, 0x1

    const-string v0, "\u06d6\u06e1\u06dc\u06d8\u06eb\u06d7\u06d8\u06d6\u06db\u06df\u06db\u06e2\u06eb\u06dc\u06e7\u06d7\u06d7\u06d6\u06d8\u06ec\u06d6\u06d6\u06d6\u06da\u06e6\u06d7\u06da\u06e0\u06ec\u06e4\u06eb\u06ec\u06e5\u06df\u06da\u06d9\u06ec"

    move-object v1, v0

    goto/16 :goto_0

    :sswitch_28
    const-string v0, "\u06d7\u06df\u06d6\u06da\u06e0\u06e7\u06d6\u06e0\u06dc\u06ec\u06d9\u06e4\u06df\u06d9\u06e6\u06e8\u06eb\u06dc\u06dc\u06e4\u06d6\u06d8\u06e7\u06e0\u06d6\u06e4\u06e1\u06ec\u06e5\u06e7\u06d8\u06da\u06df\u06e5\u06d8\u06dc\u06eb\u06d6\u06e1\u06db\u06e5\u06dc\u06da\u06e8\u06d9\u06d8\u06e2\u06ec\u06e0\u06e7"

    move-object v1, v0

    move v5, v2

    goto/16 :goto_0

    :sswitch_29
    const-string v0, "\u06e7\u06e5\u06d8\u06e4\u06e4\u06d9\u06db\u06e7\u06e5\u06e4\u06d6\u06e2\u06d7\u06db\u06da\u06d6\u06e8\u06d7\u06d7\u06e8\u06d9\u06e8\u06e6\u06e2\u06e6\u06e4\u06ec\u06d7\u06e6\u06e2\u06e4\u06e0\u06d8\u06e0\u06da\u06d8\u06e8\u06eb\u06e1\u06d8\u06e6\u06e4\u06e2"

    move-object v1, v0

    goto/16 :goto_0

    :sswitch_2a
    const-string v0, "\u06d6\u06e2\u06eb\u06eb\u06d8\u06e5\u06d8\u06d7\u06eb\u06d9\u06d8\u06d8\u06e4\u06d9\u06d7\u06d6\u06db\u06e6\u06e7\u06d8\u06df\u06e6\u06d7\u06e0\u06d8\u06d9\u06d7\u06d8\u06dc\u06d8\u06eb\u06ec\u06dc\u06d8\u06e8\u06e6\u06d8\u06eb\u06d6\u06e5\u06e2\u06e1\u06d8\u06d9\u06dc\u06e1\u06d8"

    move-object v1, v0

    goto/16 :goto_0

    :sswitch_2b
    const-string v0, "\u06eb\u06d9\u06d7\u06e2\u06d9\u06e0\u06e5\u06e1\u06ec\u06e0\u06e2\u06e4\u06e5\u06d6\u06d9\u06d8\u06e8\u06d8\u06e5\u06df\u06e7\u06e2\u06d6\u06e7\u06d8\u06ec\u06e1\u06d6\u06d8\u06e7\u06da\u06e1\u06d8\u06df\u06e1\u06d6\u06e6\u06e1\u06e5\u06d8"

    move-object v1, v0

    goto/16 :goto_0

    :sswitch_2c
    const-string v0, "\u06e7\u06d7\u06e2\u06e0\u06e7\u06d9\u06e8\u06e6\u06e7\u06d8\u06ec\u06d9\u06eb\u06e2\u06e8\u06dc\u06e6\u06d7\u06e4\u06eb\u06e1\u06e8\u06db\u06e6\u06df\u06e0\u06da\u06d6\u06d8\u06e5\u06e8\u06d7"

    move-object v1, v0

    goto/16 :goto_0

    :sswitch_2d
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6cff7890 -> :sswitch_c
        -0x65667d8d -> :sswitch_27
        -0x6470e670 -> :sswitch_25
        -0x58b10b48 -> :sswitch_2d
        -0x578ee897 -> :sswitch_1
        -0x51bd5954 -> :sswitch_0
        -0x501e9d72 -> :sswitch_b
        -0x4eb6f796 -> :sswitch_2b
        -0x2b754860 -> :sswitch_26
        0xcc38c84 -> :sswitch_1d
        0x17e62b25 -> :sswitch_9
        0x1e228830 -> :sswitch_14
        0x26ffad9d -> :sswitch_15
        0x2df167ea -> :sswitch_a
        0x4c144a1d -> :sswitch_28
        0x5de5133b -> :sswitch_29
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x77068fc9 -> :sswitch_7
        -0xb4f21aa -> :sswitch_8
        0x28dd14dd -> :sswitch_2
        0x331aa319 -> :sswitch_2c
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        -0x7588e82c -> :sswitch_3
        -0x6dc3e66c -> :sswitch_5
        -0x37421320 -> :sswitch_4
        0x22b06067 -> :sswitch_6
    .end sparse-switch

    :sswitch_data_3
    .sparse-switch
        -0x7624e816 -> :sswitch_d
        -0x95ae325 -> :sswitch_2c
        0x23a6ac68 -> :sswitch_f
        0x30379433 -> :sswitch_13
    .end sparse-switch

    :sswitch_data_4
    .sparse-switch
        -0x5cb4a8c2 -> :sswitch_e
        0x25db80b3 -> :sswitch_11
        0x654ece2e -> :sswitch_12
        0x78f9ea50 -> :sswitch_10
    .end sparse-switch

    :sswitch_data_5
    .sparse-switch
        -0x5221d526 -> :sswitch_2b
        -0x3b272aa7 -> :sswitch_18
        0xa481e28 -> :sswitch_16
        0x5ed06c68 -> :sswitch_1c
    .end sparse-switch

    :sswitch_data_6
    .sparse-switch
        -0x42d2a4c7 -> :sswitch_19
        0x48bf540b -> :sswitch_1a
        0x50c727c4 -> :sswitch_1b
        0x79a95124 -> :sswitch_17
    .end sparse-switch

    :sswitch_data_7
    .sparse-switch
        -0x6bea248f -> :sswitch_24
        -0x4ea096b5 -> :sswitch_23
        -0x474319a8 -> :sswitch_1e
        0x65f9ca1c -> :sswitch_2a
    .end sparse-switch

    :sswitch_data_8
    .sparse-switch
        -0x31f30d0a -> :sswitch_22
        -0x1f4dc7a9 -> :sswitch_1f
        -0x9376fe9 -> :sswitch_21
        0x3f8aa7a1 -> :sswitch_20
    .end sparse-switch
.end method

.method public static OooO0oO(Lcom/cyjh/elfin/receiver/NetStateReceiver$OooO00o;)V
    .locals 4

    const-string v0, "\u06e7\u06eb\u06e1\u06d8\u06e0\u06d7\u06e0\u06e5\u06dc\u06d8\u06e0\u06d8\u06e7\u06d7\u06db\u06e8\u06e8\u06e6\u06da\u06dc\u06da\u06da\u06d9\u06dc\u06e8\u06d8\u06df\u06df\u06ec\u06eb\u06e0\u06e5\u06e7\u06e7\u06d7\u06ec\u06d8\u06d8\u06ec\u06e4\u06e1\u06db\u06e4\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x1f4

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x3e8

    const/16 v2, 0x312

    const v3, 0x40a526f7

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e8\u06da\u06e5\u06d9\u06d8\u06d6\u06d8\u06e2\u06e6\u06e7\u06d8\u06ec\u06dc\u06e0\u06eb\u06df\u06e5\u06db\u06d9\u06dc\u06e4\u06e7\u06e0\u06e2\u06e2\u06d8\u06d8\u06d7\u06dc\u06db\u06e6\u06e7\u06dc"

    goto :goto_0

    :sswitch_1
    const v1, 0x1d42b689

    const-string v0, "\u06d8\u06d6\u06db\u06e1\u06d6\u06d8\u06dc\u06e0\u06d7\u06ec\u06e5\u06e7\u06d8\u06e4\u06d6\u06e5\u06d8\u06e5\u06d6\u06e5\u06d8\u06e5\u06d9\u06dc\u06d8\u06d7\u06d7\u06d8\u06da\u06e0\u06e6\u06ec\u06db\u06e0\u06e5\u06d6\u06eb\u06d9\u06d6\u06db\u06e1\u06e8\u06d8\u06df\u06e4\u06d6"

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v2, v1

    sparse-switch v2, :sswitch_data_1

    goto :goto_1

    :sswitch_2
    const-string v0, "\u06e6\u06ec\u06df\u06e4\u06df\u06e5\u06d8\u06ec\u06da\u06d7\u06e7\u06e8\u06d9\u06e4\u06e7\u06d8\u06e7\u06ec\u06d8\u06d9\u06e4\u06d7\u06d8\u06db\u06e6\u06d8\u06e2\u06e2\u06d6\u06d8\u06e1\u06d6\u06d6\u06dc\u06d6\u06eb\u06e1\u06d8\u06d6\u06d8\u06db\u06eb\u06e0\u06e1\u06e6\u06e1\u06d7\u06df\u06df\u06e2\u06e6\u06d8\u06e7\u06e5\u06e5\u06d8\u06d8\u06d9\u06d8"

    goto :goto_0

    :sswitch_3
    const-string v0, "\u06e4\u06ec\u06e6\u06d8\u06ec\u06e6\u06da\u06d8\u06e7\u06d8\u06d9\u06d9\u06d6\u06da\u06d9\u06e6\u06d8\u06da\u06d6\u06df\u06da\u06e4\u06d9\u06ec\u06e6\u06da\u06e5\u06df\u06d8\u06d8\u06da\u06dc\u06d6\u06e4\u06d8\u06da\u06dc\u06e1\u06e8"

    goto :goto_1

    :sswitch_4
    const v2, 0x2568a9b0

    const-string v0, "\u06df\u06dc\u06e5\u06d8\u06df\u06e6\u06db\u06df\u06e7\u06e2\u06da\u06d6\u06e8\u06e4\u06e1\u06dc\u06d8\u06dc\u06e6\u06e5\u06d8\u06dc\u06e4\u06db\u06e8\u06e1\u06e8\u06d8\u06ec\u06d6\u06e0\u06d6\u06e5\u06d9\u06d6\u06d8\u06e8\u06e6\u06ec\u06ec\u06d9\u06dc\u06d8\u06e6\u06db\u06e5\u06e6\u06d7\u06d8\u06d8\u06d9\u06da\u06eb\u06da\u06e5\u06dc\u06d9\u06e0\u06e1"

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v2

    sparse-switch v3, :sswitch_data_2

    goto :goto_2

    :sswitch_5
    sget-object v0, Lcom/cyjh/elfin/receiver/NetStateReceiver;->OooO0o0:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const-string v0, "\u06e5\u06e1\u06e7\u06e1\u06d6\u06da\u06e0\u06df\u06d7\u06e0\u06dc\u06da\u06d7\u06e0\u06da\u06e1\u06da\u06e8\u06d8\u06df\u06da\u06e8\u06d8\u06d9\u06e1\u06d7\u06d7\u06e1\u06e8\u06e7\u06e2\u06d9\u06e4\u06e0\u06e1\u06e8\u06e1\u06d8\u06dc\u06e2\u06d8\u06e4\u06da\u06dc"

    goto :goto_2

    :cond_0
    const-string v0, "\u06db\u06d6\u06d6\u06e5\u06eb\u06d6\u06dc\u06ec\u06e2\u06e6\u06df\u06e8\u06e1\u06e7\u06e1\u06e5\u06db\u06df\u06e8\u06d6\u06d7\u06e5\u06da\u06e5\u06d7\u06e8\u06da\u06df\u06e7\u06d9\u06eb\u06e1\u06d8\u06e6\u06d6\u06db\u06d9\u06d6\u06df\u06e8\u06d9\u06da\u06dc\u06e6\u06ec\u06d6\u06e8\u06e8"

    goto :goto_2

    :sswitch_6
    const-string v0, "\u06e6\u06df\u06e5\u06d8\u06eb\u06db\u06e8\u06d8\u06e6\u06d8\u06e0\u06e5\u06e7\u06e1\u06da\u06e1\u06d9\u06e4\u06e2\u06d9\u06e5\u06e1\u06e4\u06e5\u06e8\u06e2\u06e8\u06e0\u06d8\u06d8"

    goto :goto_2

    :sswitch_7
    const-string v0, "\u06da\u06dc\u06db\u06e5\u06db\u06e0\u06da\u06dc\u06e4\u06e0\u06e7\u06dc\u06d8\u06d9\u06e0\u06e6\u06d8\u06da\u06e6\u06df\u06e1\u06da\u06df\u06d9\u06e2\u06df\u06e7\u06e7\u06e8\u06d8\u06e5\u06eb\u06dc\u06e5\u06d8\u06e7\u06e7\u06e0\u06da\u06e0\u06d8\u06df\u06db\u06e6\u06e5"

    goto :goto_1

    :sswitch_8
    const-string v0, "\u06d7\u06e2\u06eb\u06e7\u06e8\u06e5\u06d8\u06ec\u06eb\u06d9\u06dc\u06e6\u06e1\u06e2\u06dc\u06da\u06eb\u06e5\u06e0\u06df\u06e6\u06d8\u06dc\u06eb\u06d6\u06d9\u06e7\u06ec\u06e1\u06e0\u06e5\u06e1\u06d7\u06db\u06ec\u06e8\u06d8\u06d8\u06e7\u06e6\u06ec\u06d9\u06e5\u06ec\u06da\u06d7\u06e8\u06d8\u06df\u06df\u06db\u06e5\u06d8\u06ec\u06dc\u06e1\u06e7\u06d8"

    goto :goto_1

    :sswitch_9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/cyjh/elfin/receiver/NetStateReceiver;->OooO0o0:Ljava/util/ArrayList;

    const-string v0, "\u06e6\u06e7\u06d7\u06dc\u06e7\u06e2\u06db\u06d9\u06d6\u06df\u06d6\u06df\u06e8\u06e5\u06e6\u06eb\u06e2\u06d8\u06e6\u06e2\u06e4\u06db\u06e7\u06e1\u06e6\u06e6\u06e0\u06e8\u06d9\u06e5\u06d8"

    goto :goto_0

    :sswitch_a
    sget-object v0, Lcom/cyjh/elfin/receiver/NetStateReceiver;->OooO0o0:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "\u06da\u06e4\u06db\u06d8\u06d6\u06e6\u06db\u06e0\u06d7\u06e4\u06d9\u06dc\u06d8\u06dc\u06d7\u06ec\u06d9\u06e4\u06e8\u06d8\u06da\u06d7\u06dc\u06df\u06d7\u06d6\u06d8\u06d8\u06eb\u06dc\u06d8\u06e2\u06e5\u06da\u06ec\u06e2\u06d6\u06e1\u06e0\u06db\u06df\u06e8\u06e2\u06dc\u06e4\u06dc"

    goto :goto_0

    :sswitch_b
    const-string v0, "\u06e6\u06e7\u06d7\u06dc\u06e7\u06e2\u06db\u06d9\u06d6\u06df\u06d6\u06df\u06e8\u06e5\u06e6\u06eb\u06e2\u06d8\u06e6\u06e2\u06e4\u06db\u06e7\u06e1\u06e6\u06e6\u06e0\u06e8\u06d9\u06e5\u06d8"

    goto :goto_0

    :sswitch_c
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7d50adfd -> :sswitch_0
        -0x2f63bfe9 -> :sswitch_a
        -0x129af084 -> :sswitch_9
        -0x20c47e9 -> :sswitch_1
        0x653b419f -> :sswitch_c
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x30b03932 -> :sswitch_b
        0x64dffa19 -> :sswitch_8
        0x6eb815f4 -> :sswitch_4
        0x72d2ae09 -> :sswitch_2
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        -0x64aa015b -> :sswitch_7
        -0x19064f78 -> :sswitch_6
        -0x154c365d -> :sswitch_3
        0x206b8a93 -> :sswitch_5
    .end sparse-switch
.end method

.method public static OooO0oo(Lcom/cyjh/elfin/receiver/NetStateReceiver$OooO00o;)V
    .locals 5

    const/4 v1, 0x0

    const-string v0, "\u06d9\u06db\u06d9\u06d6\u06e6\u06e1\u06e0\u06d7\u06e4\u06d9\u06eb\u06d6\u06d8\u06da\u06df\u06da\u06e4\u06eb\u06d8\u06eb\u06d6\u06e1\u06da\u06e0\u06db\u06da\u06e8\u06da\u06d6\u06e8\u06df\u06da\u06dc\u06ec\u06d7\u06d7\u06e8\u06db\u06da\u06e4\u06e5\u06d8\u06e1\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v3, 0x365

    xor-int/2addr v2, v3

    xor-int/lit8 v2, v2, 0x66

    const/16 v3, 0x319

    const v4, 0x51001018

    xor-int/2addr v2, v3

    xor-int/2addr v2, v4

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e7\u06e4\u06e6\u06d7\u06ec\u06e6\u06e2\u06eb\u06d6\u06d8\u06e6\u06da\u06d9\u06d6\u06e7\u06e1\u06d8\u06da\u06e1\u06da\u06e8\u06e2\u06ec\u06e1\u06e5\u06e5\u06eb\u06e1\u06d8\u06d8\u06da\u06e1\u06dc"

    goto :goto_0

    :sswitch_1
    sget-object v1, Lcom/cyjh/elfin/receiver/NetStateReceiver;->OooO0o0:Ljava/util/ArrayList;

    const-string v0, "\u06d9\u06db\u06e6\u06d8\u06eb\u06e8\u06dc\u06d8\u06d6\u06e2\u06e7\u06e0\u06db\u06e7\u06d9\u06e8\u06dc\u06d8\u06d9\u06e7\u06eb\u06e5\u06e1\u06da\u06d7\u06e0\u06e0\u06e6\u06e2\u06e8\u06d8\u06e1\u06e7\u06d6\u06d8\u06e0\u06e2\u06e0\u06dc\u06e4\u06d7\u06e1\u06e0\u06d6\u06d8\u06e6\u06d8\u06d8\u06d7\u06d8\u06e6\u06d8\u06d8\u06d9\u06da\u06d9\u06ec\u06e7\u06e8\u06eb\u06e1"

    goto :goto_0

    :sswitch_2
    const v2, 0x63abac4b

    const-string v0, "\u06ec\u06e4\u06db\u06da\u06e6\u06d9\u06e2\u06e1\u06dc\u06d8\u06da\u06e5\u06eb\u06e1\u06e4\u06da\u06e0\u06e5\u06db\u06d7\u06df\u06e6\u06dc\u06d6\u06d8\u06e1\u06e7\u06e8\u06e5\u06e5\u06e8"

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v2

    sparse-switch v3, :sswitch_data_1

    goto :goto_1

    :sswitch_3
    const v3, 0x553943b7

    const-string v0, "\u06da\u06d7\u06e8\u06d8\u06e7\u06df\u06e1\u06e2\u06e2\u06e1\u06df\u06ec\u06e6\u06e8\u06e5\u06e7\u06d8\u06e5\u06db\u06dc\u06d8\u06db\u06d8\u06e2\u06e2\u06dc\u06e8\u06d8\u06eb\u06d8\u06e7\u06d8\u06e5\u06e8\u06d7\u06e8\u06dc\u06e1\u06d8\u06df\u06d9\u06e4\u06e4\u06e1\u06d8\u06e6\u06ec\u06d8"

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    xor-int/2addr v4, v3

    sparse-switch v4, :sswitch_data_2

    goto :goto_2

    :sswitch_4
    const-string v0, "\u06d8\u06ec\u06e7\u06e8\u06d8\u06db\u06e8\u06e4\u06e2\u06e1\u06d9\u06e1\u06d6\u06e2\u06db\u06e7\u06e6\u06e7\u06e6\u06d8\u06d8\u06d8\u06e1\u06da\u06d6\u06e8\u06d9\u06d9\u06dc\u06dc\u06e6\u06e0\u06da\u06e5\u06d8\u06d6\u06e5\u06e8\u06d8\u06d8\u06e8\u06e7\u06d8\u06da\u06e5\u06d8\u06e8\u06e4\u06ec\u06d8\u06d6"

    goto :goto_1

    :cond_0
    const-string v0, "\u06e7\u06d7\u06da\u06e6\u06ec\u06dc\u06d8\u06dc\u06d9\u06d6\u06e7\u06e2\u06d8\u06e0\u06d8\u06e0\u06e2\u06d6\u06eb\u06e7\u06df\u06e2\u06e6\u06db\u06d7\u06df\u06e8\u06db\u06e5\u06df\u06e2\u06eb\u06eb\u06e6\u06da\u06df\u06e8\u06e0\u06da\u06d8\u06d6\u06da\u06e0\u06ec\u06db\u06e6\u06db\u06df\u06e6"

    goto :goto_2

    :sswitch_5
    if-eqz v1, :cond_0

    const-string v0, "\u06eb\u06e4\u06d7\u06db\u06e8\u06e8\u06d8\u06e5\u06e7\u06db\u06db\u06d9\u06d8\u06df\u06e6\u06d8\u06e5\u06d7\u06e0\u06ec\u06e5\u06d6\u06d8\u06e5\u06e6\u06e8\u06d8\u06e1\u06d8\u06d8\u06d9\u06e6\u06e5\u06d6\u06d6\u06da\u06e1\u06e5"

    goto :goto_2

    :sswitch_6
    const-string v0, "\u06e8\u06df\u06e0\u06eb\u06d7\u06e2\u06d9\u06e6\u06e8\u06e5\u06eb\u06da\u06e5\u06e0\u06d6\u06d8\u06dc\u06d6\u06e1\u06d7\u06e7\u06d9\u06d6\u06d9\u06e8\u06d8\u06e5\u06ec\u06d6\u06d8\u06da\u06e0\u06e8\u06ec\u06e6\u06e7\u06d8\u06e4\u06e4\u06e6\u06d8\u06e6\u06e7\u06d6\u06dc\u06dc\u06dc"

    goto :goto_2

    :sswitch_7
    const-string v0, "\u06e8\u06e4\u06d8\u06e4\u06d9\u06d6\u06d8\u06da\u06eb\u06e0\u06e0\u06d7\u06e5\u06d8\u06e5\u06eb\u06d7\u06df\u06e2\u06d8\u06d8\u06e0\u06db\u06e1\u06eb\u06d7\u06eb\u06e7\u06e4\u06df\u06eb\u06df\u06e4\u06dc\u06e6\u06e8\u06d8\u06e1\u06e4\u06e2\u06df\u06d8\u06d9\u06da\u06d6\u06d8\u06e6\u06e4\u06e5\u06d8\u06e0\u06db\u06dc"

    goto :goto_1

    :sswitch_8
    const-string v0, "\u06dc\u06d7\u06e4\u06dc\u06e7\u06ec\u06e1\u06d8\u06eb\u06e1\u06dc\u06d8\u06e8\u06eb\u06da\u06e0\u06e2\u06e1\u06e2\u06e0\u06d6\u06d8\u06d6\u06e4\u06e0\u06ec\u06e1\u06e8\u06e7\u06e2\u06d6\u06da\u06d8\u06e8\u06e5\u06e1\u06e5\u06d8\u06e5\u06e8\u06d9\u06e2\u06d6\u06e5\u06dc\u06e1\u06e6\u06d8\u06da\u06e7\u06eb\u06dc\u06d8\u06e5\u06da\u06d7\u06ec"

    goto :goto_1

    :sswitch_9
    const-string v0, "\u06e6\u06d7\u06e6\u06d8\u06e5\u06e0\u06e1\u06d8\u06d7\u06df\u06e5\u06e4\u06d9\u06d8\u06e2\u06e5\u06da\u06dc\u06d6\u06e1\u06db\u06e6\u06df\u06d9\u06dc\u06d8\u06e4\u06ec\u06d8\u06d8\u06e4\u06e2\u06e8\u06df\u06dc\u06d8\u06d8\u06e6\u06e7\u06e8\u06d8\u06df\u06e0\u06e6\u06d8\u06d8\u06e7\u06da\u06ec\u06dc\u06e8\u06e7\u06d8\u06e4"

    goto :goto_0

    :sswitch_a
    const v2, -0x3565322d    # -5072617.5f

    const-string v0, "\u06da\u06e2\u06d6\u06d8\u06db\u06d8\u06e6\u06d8\u06d8\u06e5\u06e1\u06e5\u06d6\u06e0\u06ec\u06d8\u06d8\u06d8\u06ec\u06e5\u06ec\u06e8\u06df\u06da\u06ec\u06e8\u06e6\u06d9\u06d7\u06e5\u06ec\u06e1\u06d8\u06e4\u06db\u06df\u06d8\u06d6\u06e7"

    :goto_3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v2

    sparse-switch v3, :sswitch_data_3

    goto :goto_3

    :sswitch_b
    const v3, -0x1b898600

    const-string v0, "\u06e5\u06df\u06d8\u06d6\u06df\u06e4\u06dc\u06ec\u06d9\u06e8\u06db\u06eb\u06e0\u06dc\u06d8\u06dc\u06e4\u06e1\u06e2\u06e0\u06ec\u06e7\u06db\u06e1\u06db\u06e8\u06d7\u06e0\u06d7\u06d6\u06e8\u06dc\u06dc\u06d8\u06d7\u06db\u06d9\u06da\u06e0\u06d6\u06e4\u06e8\u06d8\u06db\u06eb\u06e5\u06d8\u06e1\u06e8\u06e8\u06eb\u06e5\u06db\u06e0\u06d6\u06d6\u06d8"

    :goto_4
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    xor-int/2addr v4, v3

    sparse-switch v4, :sswitch_data_4

    goto :goto_4

    :sswitch_c
    const-string v0, "\u06e1\u06e7\u06e5\u06d8\u06df\u06eb\u06e2\u06dc\u06e6\u06e0\u06df\u06db\u06e7\u06e4\u06e5\u06d8\u06d7\u06ec\u06e1\u06d9\u06db\u06e4\u06d9\u06d6\u06e1\u06d8\u06e2\u06e0\u06eb\u06db\u06db\u06e6\u06d8\u06eb\u06e5\u06e4\u06d7\u06e0\u06e5\u06d8\u06e0\u06eb\u06d6\u06d8\u06d7\u06df\u06e2\u06e8\u06d6\u06ec\u06e4\u06d6\u06db"

    goto :goto_3

    :sswitch_d
    const-string v0, "\u06d9\u06df\u06e6\u06dc\u06e0\u06d6\u06d8\u06d8\u06e2\u06da\u06db\u06ec\u06e0\u06e5\u06df\u06d8\u06d8\u06df\u06e4\u06e8\u06e1\u06e6\u06d8\u06d7\u06da\u06dc\u06d8\u06e2\u06df\u06e8\u06e8\u06d8\u06ec"

    goto :goto_3

    :cond_1
    const-string v0, "\u06db\u06e0\u06d7\u06da\u06eb\u06db\u06e2\u06d6\u06db\u06eb\u06dc\u06e8\u06d7\u06e0\u06e0\u06eb\u06e1\u06d9\u06d7\u06e8\u06e1\u06d8\u06e2\u06d6\u06e1\u06d6\u06e4\u06eb\u06db\u06eb\u06e1\u06d9\u06db\u06e5\u06d8\u06eb\u06df\u06da\u06d8\u06d8\u06d6\u06d7\u06e1\u06db"

    goto :goto_4

    :sswitch_e
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "\u06e8\u06e8\u06e8\u06d8\u06e7\u06da\u06e0\u06ec\u06d9\u06e8\u06d8\u06d8\u06eb\u06d9\u06e6\u06df\u06e0\u06e2\u06d7\u06e0\u06e0\u06db\u06e4\u06ec\u06e8\u06d7\u06dc\u06d6\u06dc\u06d8\u06df\u06df\u06e8\u06e2\u06e8\u06eb\u06e8\u06dc\u06d6\u06d8"

    goto :goto_4

    :sswitch_f
    const-string v0, "\u06e2\u06d6\u06dc\u06d8\u06dc\u06e4\u06e1\u06d8\u06e4\u06e1\u06d8\u06d8\u06e6\u06e6\u06d8\u06d8\u06ec\u06e5\u06e1\u06d8\u06e4\u06db\u06df\u06eb\u06e5\u06e7\u06e7\u06e6\u06e7\u06d8\u06d7\u06d7\u06e2\u06e7\u06ec\u06d7\u06da\u06eb\u06e5\u06e2\u06e0\u06da\u06e1\u06e6\u06e7\u06e5\u06d7\u06df\u06d9\u06e7\u06e2\u06db\u06e2\u06e8\u06eb\u06ec\u06df\u06ec\u06d6"

    goto :goto_4

    :sswitch_10
    const-string v0, "\u06ec\u06e5\u06e5\u06d7\u06e8\u06d7\u06dc\u06e6\u06eb\u06db\u06eb\u06e5\u06d8\u06d6\u06dc\u06da\u06e1\u06db\u06e0\u06d6\u06d6\u06dc\u06e2\u06db\u06d7\u06e4\u06e4\u06d6\u06dc\u06da\u06d6"

    goto :goto_3

    :sswitch_11
    const-string v0, "\u06e6\u06e6\u06d8\u06d8\u06d8\u06dc\u06e1\u06d8\u06e2\u06e7\u06e8\u06da\u06e0\u06e7\u06d9\u06e1\u06d7\u06d9\u06e7\u06da\u06e1\u06e6\u06d9\u06e2\u06e2\u06e5\u06da\u06e0\u06e1\u06d7\u06d8\u06e5\u06e2\u06e0\u06d6\u06dc\u06e2\u06e6\u06d8\u06ec\u06dc\u06e8\u06d8\u06e7\u06d9\u06d6\u06d8\u06df\u06dc\u06e7\u06d8"

    goto/16 :goto_0

    :sswitch_12
    sget-object v0, Lcom/cyjh/elfin/receiver/NetStateReceiver;->OooO0o0:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const-string v0, "\u06ec\u06e1\u06d6\u06d8\u06d6\u06d9\u06d6\u06d8\u06e5\u06e5\u06e8\u06d8\u06da\u06e2\u06d8\u06e1\u06e4\u06d9\u06e8\u06e1\u06e7\u06d6\u06d6\u06d8\u06df\u06d8\u06d6\u06d8\u06e6\u06e0\u06dc\u06d8\u06da\u06d7\u06d6\u06d8\u06d7\u06e1\u06e7\u06d8\u06e1\u06d6\u06e6\u06d8\u06d9\u06e7\u06e4\u06d6\u06e2\u06e5"

    goto/16 :goto_0

    :sswitch_13
    const-string v0, "\u06ec\u06e1\u06d6\u06d8\u06d6\u06d9\u06d6\u06d8\u06e5\u06e5\u06e8\u06d8\u06da\u06e2\u06d8\u06e1\u06e4\u06d9\u06e8\u06e1\u06e7\u06d6\u06d6\u06d8\u06df\u06d8\u06d6\u06d8\u06e6\u06e0\u06dc\u06d8\u06da\u06d7\u06d6\u06d8\u06d7\u06e1\u06e7\u06d8\u06e1\u06d6\u06e6\u06d8\u06d9\u06e7\u06e4\u06d6\u06e2\u06e5"

    goto/16 :goto_0

    :sswitch_14
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x71cd21b4 -> :sswitch_0
        -0x3648570b -> :sswitch_1
        -0x29695241 -> :sswitch_2
        0x4d13774d -> :sswitch_a
        0x66c40d80 -> :sswitch_12
        0x7f668413 -> :sswitch_14
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x51a61b38 -> :sswitch_13
        -0x37fa3491 -> :sswitch_8
        0x1219140b -> :sswitch_3
        0x5df47581 -> :sswitch_9
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        -0x54963bf4 -> :sswitch_5
        -0x2189232b -> :sswitch_6
        0xe321572 -> :sswitch_7
        0x5fb3fd64 -> :sswitch_4
    .end sparse-switch

    :sswitch_data_3
    .sparse-switch
        -0x5d8c296f -> :sswitch_10
        -0x39b5133c -> :sswitch_b
        -0x364adf74 -> :sswitch_13
        0x72ef0e13 -> :sswitch_11
    .end sparse-switch

    :sswitch_data_4
    .sparse-switch
        -0x7c827f59 -> :sswitch_e
        -0x16f10179 -> :sswitch_c
        0x49dc2067 -> :sswitch_d
        0x5cdec16b -> :sswitch_f
    .end sparse-switch
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const-string v0, "\u06e0\u06e4\u06ec\u06eb\u06e0\u06e8\u06d8\u06d6\u06d7\u06d6\u06df\u06eb\u06e4\u06e8\u06d8\u06df\u06db\u06e1\u06e2\u06e0\u06da\u06e5\u06d6\u06e8\u06d8\u06eb\u06eb\u06e5\u06d6\u06e7\u06e8\u06d8\u06e0\u06dc\u06d6\u06d9\u06e0\u06da\u06e6\u06e8\u06d8\u06e8\u06e4\u06da"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x2cd

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x296

    const/16 v2, 0xcd

    const v3, -0x331a506c

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06da\u06d7\u06e0\u06e2\u06e2\u06e4\u06ec\u06e6\u06d6\u06d7\u06d6\u06d6\u06d8\u06eb\u06e0\u06e6\u06e8\u06dc\u06e6\u06d8\u06e1\u06e6\u06e1\u06da\u06d8\u06e8\u06d8\u06eb\u06db\u06e8\u06d9\u06db\u06e5\u06e7\u06e5\u06ec\u06db\u06d8\u06da"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06e1\u06e4\u06d6\u06d8\u06eb\u06d9\u06d6\u06df\u06e5\u06e7\u06d8\u06d7\u06e7\u06d9\u06e4\u06e6\u06d8\u06d6\u06e6\u06dc\u06e5\u06d7\u06dc\u06e4\u06ec\u06d6\u06d8\u06e0\u06d7\u06e5\u06d8\u06e2\u06d7\u06e8\u06d8\u06df\u06e6\u06e7\u06d8\u06eb\u06d8\u06da\u06eb\u06e2\u06dc\u06e0\u06d6\u06ec\u06d7\u06d9\u06d9\u06e0"

    goto :goto_0

    :sswitch_2
    const-string v0, "\u06e4\u06e4\u06e5\u06d7\u06e5\u06e6\u06da\u06e1\u06e6\u06d8\u06d7\u06e4\u06e4\u06e6\u06e7\u06d8\u06eb\u06db\u06d8\u06e7\u06d7\u06d7\u06e0\u06e6\u06d7\u06dc\u06e1\u06d8\u06e8\u06dc\u06e5\u06d8\u06e0\u06da\u06da\u06d9\u06df\u06d7\u06d8\u06e6\u06e8\u06d8\u06eb\u06e7\u06e5\u06d8\u06d7\u06e7\u06d6\u06d8\u06e0\u06e5\u06db\u06df\u06d8\u06e7\u06d8\u06d9\u06ec\u06eb"

    goto :goto_0

    :sswitch_3
    sput-object p0, Lcom/cyjh/elfin/receiver/NetStateReceiver;->OooO0o:Landroid/content/BroadcastReceiver;

    const-string v0, "\u06df\u06e2\u06d8\u06d8\u06e7\u06e2\u06e5\u06e5\u06ec\u06e8\u06d8\u06d6\u06dc\u06e4\u06e2\u06e1\u06dc\u06e7\u06e0\u06d7\u06e4\u06e0\u06e7\u06d8\u06d6\u06dc\u06d8\u06da\u06e0\u06e2\u06ec\u06e0\u06ec\u06db\u06e7\u06e8\u06d9\u06dc\u06e8\u06d8\u06d9\u06e7\u06ec\u06e5\u06d8\u06dc\u06d8"

    goto :goto_0

    :sswitch_4
    const v1, 0x4b76b126    # 1.6167206E7f

    const-string v0, "\u06ec\u06e5\u06e1\u06d7\u06e1\u06e4\u06e1\u06eb\u06e8\u06eb\u06db\u06e1\u06dc\u06d9\u06d8\u06e1\u06ec\u06e6\u06d8\u06ec\u06e6\u06d8\u06e2\u06d9\u06db\u06d8\u06e4\u06e5\u06d8\u06dc\u06e7\u06e6\u06d8"

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v2, v1

    sparse-switch v2, :sswitch_data_1

    goto :goto_1

    :sswitch_5
    const-string v0, "\u06d6\u06e5\u06dc\u06d8\u06d9\u06db\u06e8\u06d8\u06e5\u06df\u06d7\u06d9\u06d8\u06e5\u06d8\u06eb\u06e5\u06e4\u06da\u06e8\u06e6\u06d8\u06e6\u06e4\u06df\u06e1\u06e6\u06e1\u06d6\u06dc\u06e6\u06d8\u06da\u06d9\u06e8\u06d8\u06d8\u06e7\u06d6\u06db\u06dc\u06e2"

    goto :goto_0

    :sswitch_6
    const-string v0, "\u06e2\u06e0\u06db\u06d9\u06e5\u06e1\u06d8\u06e5\u06d9\u06e6\u06e5\u06e5\u06d8\u06d8\u06d9\u06e7\u06dc\u06d8\u06d6\u06e6\u06e6\u06d8\u06eb\u06db\u06df\u06e0\u06d8\u06d6\u06d8\u06e7\u06d8\u06d7\u06e0\u06dc\u06da\u06d6\u06e1\u06df\u06e2\u06e6\u06d8\u06d9\u06e0\u06df\u06d9\u06e1\u06ec\u06e6\u06dc\u06d8\u06d7\u06dc\u06d7\u06e6\u06df\u06da\u06e7\u06d9\u06e6"

    goto :goto_1

    :sswitch_7
    const v2, 0x3ded955b

    const-string v0, "\u06e1\u06e2\u06e5\u06d8\u06e4\u06e1\u06e0\u06e8\u06dc\u06da\u06d7\u06db\u06eb\u06ec\u06df\u06e6\u06d8\u06d6\u06da\u06e2\u06eb\u06e1\u06dc\u06eb\u06e0\u06d6\u06d8\u06df\u06dc\u06e7\u06d8\u06df\u06e4\u06da\u06db\u06eb\u06eb\u06e7\u06e5\u06df\u06d8\u06dc\u06d8\u06d8\u06ec\u06da\u06db"

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v2

    sparse-switch v3, :sswitch_data_2

    goto :goto_2

    :sswitch_8
    const-string v0, "\u06d8\u06db\u06eb\u06e5\u06d6\u06e7\u06d8\u06e2\u06e2\u06d6\u06d8\u06d8\u06e5\u06df\u06e8\u06d8\u06e4\u06e2\u06df\u06df\u06ec\u06da\u06eb\u06db\u06eb\u06e5\u06df\u06e7\u06dc\u06d8\u06ec\u06e1\u06e5\u06d8\u06df\u06eb\u06e8\u06e0\u06e5\u06ec"

    goto :goto_2

    :cond_0
    const-string v0, "\u06e4\u06df\u06ec\u06e4\u06e2\u06df\u06db\u06d6\u06da\u06df\u06dc\u06d8\u06dc\u06df\u06e0\u06d9\u06d8\u06db\u06d8\u06e4\u06eb\u06dc\u06d7\u06e1\u06e5\u06e0\u06da\u06e8\u06e1\u06d8\u06e4\u06eb\u06d9\u06e7\u06db\u06e2\u06db\u06eb\u06e1\u06d8\u06e2\u06dc\u06ec"

    goto :goto_2

    :sswitch_9
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u06e7\u06e1\u06d8\u06e2\u06eb\u06df\u06e5\u06dc\u06db\u06da\u06d6\u06e2\u06eb\u06dc\u06e6\u06d8\u06e8\u06df\u06db\u06df\u06d6\u06e4\u06da\u06dc\u06e1\u06d8\u06d8\u06d6\u06e7\u06d9\u06d8\u06d9\u06d6\u06e4\u06e5\u06e6\u06d9\u06e1\u06d8\u06eb\u06d6\u06e7\u06e2\u06e4\u06d7\u06eb\u06e0\u06dc\u06dc\u06d6\u06db"

    goto :goto_2

    :sswitch_a
    const-string v0, "\u06e7\u06da\u06dc\u06d8\u06e6\u06e4\u06e6\u06e7\u06e2\u06d6\u06d8\u06e4\u06da\u06e1\u06d8\u06db\u06e2\u06eb\u06df\u06da\u06dc\u06db\u06d9\u06e8\u06e1\u06e8\u06e2\u06db\u06e6\u06e0\u06e6\u06dc\u06d8\u06eb\u06e0\u06e6\u06d8\u06eb\u06e8\u06e7"

    goto :goto_1

    :sswitch_b
    const-string v0, "\u06e0\u06e2\u06d8\u06df\u06db\u06da\u06ec\u06dc\u06da\u06ec\u06d6\u06d9\u06da\u06e2\u06e2\u06e6\u06e6\u06ec\u06dc\u06e6\u06e8\u06e7\u06d8\u06e6\u06ec\u06d7\u06d6\u06e4\u06d7\u06e6"

    goto :goto_1

    :sswitch_c
    const-string v0, "\u06d8\u06dc\u06e7\u06d8\u06da\u06da\u06e5\u06d8\u06e8\u06df\u06d7\u06e5\u06d6\u06e4\u06e0\u06e5\u06db\u06e0\u06e7\u06dc\u06d8\u06eb\u06d8\u06e7\u06d7\u06e1\u06ec\u06e2\u06e8\u06db\u06db\u06e0\u06d8"

    goto :goto_0

    :sswitch_d
    const v1, 0x18ffedfd

    const-string v0, "\u06db\u06d8\u06e1\u06d8\u06d8\u06d7\u06eb\u06e7\u06e8\u06e8\u06d8\u06d7\u06d7\u06d8\u06d7\u06eb\u06e0\u06e5\u06e7\u06d7\u06d8\u06e0\u06e8\u06d8\u06e0\u06d7\u06e7\u06d9\u06df\u06d7\u06eb\u06d8\u06e4\u06dc\u06e4\u06d8\u06d8\u06e6\u06df\u06e8\u06e7\u06da\u06e8\u06d8\u06e6\u06e1\u06eb\u06df\u06df\u06d9\u06e5\u06e5\u06e8"

    :goto_3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v2, v1

    sparse-switch v2, :sswitch_data_3

    goto :goto_3

    :sswitch_e
    const-string v0, "\u06e0\u06e5\u06e8\u06d8\u06e6\u06e5\u06da\u06da\u06e6\u06d9\u06db\u06df\u06d7\u06da\u06d9\u06ec\u06dc\u06e7\u06e7\u06db\u06eb\u06e6\u06eb\u06e2\u06d6\u06ec\u06d8\u06e5\u06db\u06e2\u06e2\u06d6\u06e8\u06d6\u06d8\u06e0\u06d9\u06eb\u06e1\u06e2\u06d9\u06d9\u06e7\u06e0\u06e5\u06e5\u06e1\u06d8\u06e8\u06e8\u06e8\u06d9\u06e4\u06d7\u06e6\u06e7\u06d8"

    goto :goto_0

    :sswitch_f
    const-string v0, "\u06d8\u06dc\u06dc\u06e1\u06d8\u06e1\u06d8\u06e4\u06d8\u06e5\u06d7\u06e1\u06e7\u06d8\u06e6\u06e4\u06d9\u06e1\u06e2\u06d7\u06d8\u06eb\u06e8\u06d8\u06d7\u06e8\u06d7\u06dc\u06dc\u06e1\u06d8\u06e6\u06e2\u06e7"

    goto :goto_3

    :sswitch_10
    const v2, 0x3094304c

    const-string v0, "\u06d7\u06dc\u06e8\u06d8\u06e1\u06db\u06e8\u06dc\u06d6\u06d9\u06eb\u06d8\u06e0\u06e1\u06d7\u06e1\u06e4\u06e2\u06d6\u06d9\u06d8\u06d6\u06e2\u06d8\u06e6\u06d8\u06e1\u06d6\u06d8\u06d8\u06e4\u06e1\u06df\u06dc\u06db\u06ec\u06e4\u06e8\u06db\u06db\u06da\u06d8\u06dc\u06d6\u06db\u06d6\u06e2\u06e6\u06eb\u06e6\u06dc\u06d8"

    :goto_4
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v2

    sparse-switch v3, :sswitch_data_4

    goto :goto_4

    :sswitch_11
    const-string v0, "\u06eb\u06ec\u06d8\u06e1\u06e5\u06db\u06da\u06e4\u06dc\u06dc\u06df\u06e6\u06d8\u06d7\u06dc\u06e6\u06d8\u06eb\u06db\u06e5\u06d8\u06d8\u06d9\u06e8\u06d8\u06ec\u06d8\u06e8\u06d8\u06db\u06e1\u06e1\u06d8\u06e6\u06d8\u06e0\u06d8\u06d6\u06d9\u06da\u06e7\u06df\u06e6\u06d6\u06d7\u06d8\u06e1\u06df\u06e5\u06db\u06d8\u06d6\u06eb\u06ec"

    goto :goto_3

    :cond_1
    const-string v0, "\u06e7\u06d6\u06d6\u06e2\u06e0\u06da\u06df\u06df\u06e0\u06da\u06e0\u06e2\u06e1\u06e6\u06dc\u06dc\u06e2\u06d6\u06da\u06e0\u06e7\u06e8\u06e5\u06e7\u06ec\u06dc\u06e4\u06e4\u06e7\u06e4\u06ec\u06ec\u06e2\u06db\u06df\u06d7\u06d9\u06e1\u06d8\u06d8\u06e8\u06e0"

    goto :goto_4

    :sswitch_12
    invoke-static {p1}, Lz2/t4;->OooOO0(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "\u06d7\u06d6\u06e0\u06dc\u06da\u06d6\u06e4\u06d7\u06d8\u06db\u06e5\u06d8\u06e6\u06e0\u06dc\u06da\u06e7\u06dc\u06d8\u06e8\u06e6\u06e6\u06e8\u06e6\u06dc\u06d8\u06db\u06db\u06e6\u06d8\u06e1\u06e2\u06e6\u06d8\u06ec\u06d9\u06d6\u06d6\u06e1\u06e6"

    goto :goto_4

    :sswitch_13
    const-string v0, "\u06e4\u06e7\u06e8\u06d8\u06d7\u06df\u06e7\u06e7\u06d7\u06dc\u06d9\u06d9\u06e8\u06d8\u06dc\u06da\u06e6\u06d8\u06e8\u06e7\u06e5\u06df\u06e8\u06e5\u06d8\u06df\u06e0\u06dc\u06eb\u06e5\u06da\u06ec\u06e6\u06e1\u06d8\u06dc\u06e7\u06d8\u06dc\u06e8\u06eb\u06e5\u06e4\u06e5\u06d8\u06e2\u06dc\u06e4\u06e7\u06dc\u06eb\u06e7\u06d6\u06ec\u06e8\u06df\u06e8\u06e7\u06e0\u06e1\u06d8"

    goto :goto_4

    :sswitch_14
    const-string v0, "\u06e6\u06e0\u06e6\u06e6\u06d9\u06d8\u06d8\u06e7\u06eb\u06e2\u06ec\u06d7\u06e4\u06d8\u06ec\u06dc\u06d9\u06d6\u06eb\u06e0\u06e5\u06d8\u06e8\u06e6\u06e7\u06d8\u06d6\u06d8\u06da\u06dc\u06e4\u06e8"

    goto :goto_3

    :sswitch_15
    const-string v0, "\u06e1\u06e6\u06d6\u06e1\u06e8\u06e1\u06d8\u06e1\u06eb\u06e7\u06db\u06df\u06e7\u06dc\u06d8\u06db\u06e5\u06dc\u06d7\u06e4\u06e5\u06e4\u06eb\u06e6\u06e1\u06d9\u06e8\u06db\u06dc\u06e0\u06d8\u06e8\u06e4\u06da\u06d7\u06da\u06e8"

    goto/16 :goto_0

    :sswitch_16
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    const-string v0, "\u06e4\u06e5\u06ec\u06e4\u06d9\u06dc\u06d8\u06df\u06dc\u06d9\u06e8\u06d8\u06e6\u06e6\u06e0\u06d8\u06e7\u06e8\u06d6\u06e6\u06e6\u06e7\u06d9\u06d9\u06e5\u06e8\u06ec\u06d8\u06da\u06e6\u06e0\u06df\u06d7\u06df\u06e8\u06df\u06e6\u06d7\u06e4\u06e8\u06d8\u06db\u06e0\u06db\u06e2\u06d8\u06e5\u06d8\u06e5\u06df\u06e6\u06d8\u06d6\u06da\u06df\u06d6\u06d6\u06e7"

    goto/16 :goto_0

    :sswitch_17
    const/4 v0, 0x0

    sput-boolean v0, Lcom/cyjh/elfin/receiver/NetStateReceiver;->OooO0OO:Z

    const-string v0, "\u06d7\u06e1\u06e6\u06d7\u06d8\u06e2\u06e6\u06df\u06d8\u06d8\u06da\u06e0\u06e5\u06e7\u06e8\u06e1\u06e7\u06e4\u06e4\u06eb\u06da\u06d8\u06df\u06d8\u06d6\u06d8\u06e5\u06eb\u06d6\u06d6\u06d8\u06e5\u06da\u06e8\u06d8\u06d7\u06df\u06e1\u06ec\u06df\u06da\u06dc\u06d7\u06e2\u06e0\u06da\u06e7\u06e1\u06df\u06e1\u06d8\u06e0\u06e1\u06ec\u06da\u06d6\u06e4"

    goto/16 :goto_0

    :sswitch_18
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    const-string v0, "\u06da\u06ec\u06e1\u06e0\u06dc\u06e8\u06ec\u06d8\u06d8\u06d8\u06d6\u06e6\u06df\u06d7\u06e2\u06e4\u06e8\u06e7\u06d8\u06e6\u06ec\u06d8\u06d8\u06e7\u06e8\u06d9\u06d6\u06dc\u06da\u06d7\u06e6\u06d8\u06e4\u06d9\u06ec\u06da\u06e2\u06da\u06da\u06df\u06e8\u06e8\u06e5\u06db"

    goto/16 :goto_0

    :sswitch_19
    const/4 v0, 0x1

    sput-boolean v0, Lcom/cyjh/elfin/receiver/NetStateReceiver;->OooO0OO:Z

    const-string v0, "\u06e7\u06e7\u06d7\u06db\u06dc\u06d8\u06d9\u06e6\u06e7\u06dc\u06d7\u06e2\u06e5\u06e8\u06e7\u06d8\u06d9\u06e8\u06df\u06e4\u06d9\u06dc\u06e1\u06d8\u06e8\u06e2\u06dc\u06e5\u06e8\u06e7\u06df\u06e0\u06e7\u06db\u06ec\u06e4\u06dc\u06d8\u06ec\u06e1\u06d8\u06d6\u06e0\u06d8\u06d8"

    goto/16 :goto_0

    :sswitch_1a
    invoke-static {p1}, Lz2/t4;->OooO0OO(Landroid/content/Context;)I

    move-result v0

    sput v0, Lcom/cyjh/elfin/receiver/NetStateReceiver;->OooO0Oo:I

    const-string v0, "\u06d8\u06ec\u06e6\u06d8\u06df\u06e5\u06dc\u06d8\u06e0\u06e8\u06da\u06db\u06e1\u06e2\u06e0\u06d9\u06e0\u06e1\u06e5\u06e1\u06df\u06e5\u06e1\u06e6\u06d8\u06d6\u06e6\u06d7\u06e6\u06d8\u06eb\u06db\u06d6\u06d8\u06dc\u06e4\u06e5\u06dc\u06d9\u06dc\u06d8\u06d6\u06d8\u06dc\u06e5\u06d6\u06e5\u06e1\u06d6\u06e7\u06d6\u06d6\u06d6\u06d8"

    goto/16 :goto_0

    :sswitch_1b
    invoke-direct {p0}, Lcom/cyjh/elfin/receiver/NetStateReceiver;->OooO0o0()V

    const-string v0, "\u06d6\u06e5\u06dc\u06d8\u06d9\u06db\u06e8\u06d8\u06e5\u06df\u06d7\u06d9\u06d8\u06e5\u06d8\u06eb\u06e5\u06e4\u06da\u06e8\u06e6\u06d8\u06e6\u06e4\u06df\u06e1\u06e6\u06e1\u06d6\u06dc\u06e6\u06d8\u06da\u06d9\u06e8\u06d8\u06d8\u06e7\u06d6\u06db\u06dc\u06e2"

    goto/16 :goto_0

    :sswitch_1c
    const-string v0, "\u06d8\u06ec\u06e6\u06d8\u06df\u06e5\u06dc\u06d8\u06e0\u06e8\u06da\u06db\u06e1\u06e2\u06e0\u06d9\u06e0\u06e1\u06e5\u06e1\u06df\u06e5\u06e1\u06e6\u06d8\u06d6\u06e6\u06d7\u06e6\u06d8\u06eb\u06db\u06d6\u06d8\u06dc\u06e4\u06e5\u06dc\u06d9\u06dc\u06d8\u06d6\u06d8\u06dc\u06e5\u06d6\u06e5\u06e1\u06d6\u06e7\u06d6\u06d6\u06d6\u06d8"

    goto/16 :goto_0

    :sswitch_1d
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7f6d604a -> :sswitch_1d
        -0x7597bfe4 -> :sswitch_4
        -0x62124138 -> :sswitch_18
        -0x36eaa59a -> :sswitch_d
        -0x33e7450b -> :sswitch_19
        -0x30a468bb -> :sswitch_17
        -0x143fee15 -> :sswitch_1
        -0xaf93d1d -> :sswitch_1c
        -0x5851e8d -> :sswitch_2
        0x143228aa -> :sswitch_16
        0x2aa6ada8 -> :sswitch_1b
        0x4386f831 -> :sswitch_1a
        0x4ed528cd -> :sswitch_0
        0x781b51de -> :sswitch_3
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x147bb543 -> :sswitch_b
        0x3aafd254 -> :sswitch_5
        0x535fff53 -> :sswitch_7
        0x6e7fb658 -> :sswitch_c
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        -0x78c5a308 -> :sswitch_a
        -0x4a194c61 -> :sswitch_8
        -0x32b7763a -> :sswitch_6
        0x66aab4cb -> :sswitch_9
    .end sparse-switch

    :sswitch_data_3
    .sparse-switch
        -0x77ddac71 -> :sswitch_e
        -0x29fbfe3a -> :sswitch_10
        0x45860597 -> :sswitch_15
        0x708d03a3 -> :sswitch_14
    .end sparse-switch

    :sswitch_data_4
    .sparse-switch
        -0x7b8a6a45 -> :sswitch_12
        -0x16fd87e0 -> :sswitch_11
        0x306e49a2 -> :sswitch_13
        0x774a37dd -> :sswitch_f
    .end sparse-switch
.end method
