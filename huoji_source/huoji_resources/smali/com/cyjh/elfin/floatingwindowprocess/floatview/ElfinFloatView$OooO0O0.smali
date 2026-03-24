.class public Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$OooO0O0;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final OooO00o:Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;


# direct methods
.method public constructor <init>(Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;)V
    .locals 0

    iput-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$OooO0O0;->OooO00o:Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const/4 v4, 0x0

    const-string v0, "\u06e5\u06eb\u06ec\u06db\u06d7\u06e5\u06e6\u06e4\u06eb\u06e5\u06d8\u06d8\u06e6\u06eb\u06d6\u06d8\u06e2\u06e8\u06e8\u06d6\u06e1\u06e6\u06ec\u06d8\u06ec\u06ec\u06db\u06e8\u06d8\u06d9\u06e4\u06e5\u06d8\u06d7\u06d7\u06e5\u06d8\u06eb\u06df\u06e8\u06d8\u06d9\u06da\u06e0\u06e1\u06e8\u06d7"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x197

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x1e8

    const/16 v2, 0x2f2

    const v3, 0x3da288eb

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e4\u06d7\u06e6\u06e8\u06d6\u06e6\u06e6\u06e0\u06e7\u06ec\u06e7\u06d9\u06ec\u06db\u06e1\u06d8\u06d7\u06db\u06d8\u06e6\u06e7\u06d7\u06e4\u06e7\u06e7\u06d8\u06e2\u06d8\u06d8\u06ec\u06d7\u06e6\u06e4\u06da\u06e8\u06d8\u06d9\u06e2\u06d8\u06d8\u06e6\u06eb\u06df\u06e6\u06df\u06d7"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06ec\u06d6\u06e6\u06d8\u06e1\u06d9\u06e8\u06e5\u06e0\u06dc\u06e0\u06e8\u06d8\u06ec\u06d6\u06d6\u06d8\u06e8\u06d7\u06df\u06e1\u06d8\u06db\u06d6\u06e7\u06e6\u06d8\u06d9\u06e0\u06dc\u06d8\u06db\u06e2\u06da"

    goto :goto_0

    :sswitch_2
    const-string v0, "\u06e6\u06e5\u06e6\u06d7\u06d6\u06e5\u06d7\u06df\u06d6\u06d8\u06e0\u06e1\u06df\u06dc\u06e7\u06d9\u06e5\u06df\u06e0\u06e0\u06e6\u06e7\u06e7\u06e1\u06d6\u06e8\u06e5\u06db\u06dc\u06da\u06e1"

    goto :goto_0

    :sswitch_3
    const v1, -0x215da7eb

    const-string v0, "\u06da\u06ec\u06e4\u06ec\u06dc\u06e6\u06d8\u06db\u06e1\u06d6\u06e2\u06e0\u06eb\u06e6\u06e0\u06d9\u06e5\u06eb\u06e2\u06d8\u06dc\u06d8\u06d8\u06df\u06d9\u06e7\u06e4\u06db\u06dc\u06e1\u06d6\u06da\u06d9\u06eb\u06ec\u06e2\u06d6\u06dc\u06d8\u06db\u06df\u06e8\u06d8\u06e1\u06d7\u06e8\u06d8"

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v2, v1

    sparse-switch v2, :sswitch_data_1

    goto :goto_1

    :sswitch_4
    const-string v0, "\u06e5\u06d9\u06e8\u06d8\u06e4\u06eb\u06e5\u06eb\u06df\u06e8\u06e2\u06e8\u06d8\u06e5\u06dc\u06d8\u06eb\u06e2\u06db\u06e0\u06db\u06da\u06db\u06d6\u06e6\u06d8\u06d7\u06dc\u06d8\u06e8\u06e4\u06e8\u06e4\u06eb\u06db\u06e6\u06eb\u06e8"

    goto :goto_0

    :sswitch_5
    const-string v0, "\u06da\u06eb\u06e8\u06d8\u06ec\u06d8\u06eb\u06ec\u06d8\u06d6\u06d8\u06d8\u06d6\u06e2\u06dc\u06eb\u06eb\u06df\u06e6\u06d8\u06e4\u06e7\u06e2\u06ec\u06e5\u06dc\u06d8\u06e1\u06e6\u06e5\u06e4\u06e4\u06e0\u06e7\u06d8\u06d8\u06eb\u06e5\u06d8\u06dc\u06df\u06dc\u06d8\u06e6\u06d8\u06db\u06d7\u06d7\u06e1\u06d7\u06da\u06e6\u06d9\u06eb\u06e6\u06d8\u06d7\u06d7\u06db"

    goto :goto_1

    :sswitch_6
    const v2, 0x5f7bdf36

    const-string v0, "\u06ec\u06d9\u06d6\u06d8\u06dc\u06e8\u06e8\u06da\u06e5\u06e5\u06e0\u06ec\u06e7\u06e7\u06dc\u06e1\u06d8\u06d9\u06e2\u06e6\u06eb\u06e7\u06dc\u06dc\u06d9\u06e2\u06d9\u06d8\u06e4\u06e8\u06d7\u06e2"

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v2

    sparse-switch v3, :sswitch_data_2

    goto :goto_2

    :sswitch_7
    const-string v0, "\u06e0\u06e1\u06da\u06d9\u06d6\u06e8\u06d8\u06dc\u06df\u06e1\u06d8\u06e2\u06d7\u06e1\u06d8\u06d6\u06eb\u06df\u06df\u06d6\u06d7\u06da\u06ec\u06d6\u06d8\u06da\u06d7\u06df\u06e2\u06dc\u06d6\u06d8\u06e8\u06e4\u06df\u06e0\u06df\u06e0\u06dc\u06ec\u06ec"

    goto :goto_1

    :cond_0
    const-string v0, "\u06e7\u06e1\u06da\u06e4\u06e5\u06e8\u06e6\u06d7\u06e8\u06d8\u06d7\u06e2\u06e1\u06e7\u06ec\u06e2\u06d8\u06e6\u06e0\u06da\u06ec\u06d6\u06d8\u06e4\u06ec\u06e6\u06e8\u06e4\u06e0\u06e7\u06db\u06e6\u06d8"

    goto :goto_2

    :sswitch_8
    const-string v0, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u06d8\u06dc\u06e5\u06e2\u06d7\u06eb\u06e1\u06d9\u06d7\u06dc\u06dc\u06e8\u06e5\u06e8\u06e8\u06d7\u06d6\u06d8\u06ec\u06d6\u06e4\u06d8\u06da\u06e7\u06e7\u06e2\u06d6\u06d8\u06df\u06eb\u06dc\u06d8\u06e0\u06df\u06e6\u06d6\u06d8\u06df"

    goto :goto_2

    :sswitch_9
    const-string v0, "\u06eb\u06d8\u06d6\u06dc\u06e8\u06e6\u06ec\u06d7\u06d6\u06e7\u06e0\u06e6\u06d8\u06e2\u06da\u06e8\u06d9\u06d9\u06eb\u06e2\u06dc\u06d8\u06d8\u06e7\u06da\u06ec\u06e1\u06e2\u06d8\u06d8\u06e5\u06eb\u06d6\u06d9\u06d8\u06e6\u06d7\u06da\u06dc\u06d8"

    goto :goto_2

    :sswitch_a
    const-string v0, "\u06df\u06d6\u06da\u06d6\u06e0\u06dc\u06e0\u06ec\u06d6\u06dc\u06dc\u06d6\u06d8\u06e8\u06df\u06e0\u06da\u06da\u06da\u06d8\u06eb\u06db\u06e5\u06e0\u06ec\u06df\u06e2\u06e1\u06d8\u06dc\u06df\u06dc\u06d8\u06e6\u06e8\u06da\u06e6\u06ec\u06d6\u06d8\u06ec\u06d7\u06e0\u06e7\u06e8\u06e2\u06e4\u06da\u06e2\u06ec\u06d9\u06d8\u06d8"

    goto :goto_1

    :sswitch_b
    const v1, -0x460342e8

    const-string v0, "\u06e5\u06df\u06d8\u06d8\u06dc\u06db\u06e6\u06d8\u06d7\u06d6\u06ec\u06e1\u06e5\u06ec\u06e1\u06d8\u06e5\u06d8\u06dc\u06e7\u06e6\u06dc\u06e8\u06eb\u06e5\u06e7\u06e6\u06d8\u06e7\u06e5\u06e6\u06d8\u06df\u06d8\u06d8\u06da\u06e8\u06d8\u06d8\u06e7\u06e2\u06eb\u06e4\u06eb\u06e0\u06d6\u06db\u06e8\u06d8\u06d7\u06e8\u06d9\u06eb\u06e7\u06e2\u06d9\u06e2\u06dc\u06d8\u06da\u06e7\u06e7"

    :goto_3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v2, v1

    sparse-switch v2, :sswitch_data_3

    goto :goto_3

    :sswitch_c
    const v2, -0x599f9a48

    const-string v0, "\u06e1\u06ec\u06e5\u06d8\u06da\u06d7\u06e8\u06d8\u06e8\u06e0\u06ec\u06e0\u06dc\u06ec\u06e6\u06d6\u06d6\u06d8\u06d9\u06ec\u06df\u06db\u06ec\u06e7\u06eb\u06e1\u06e1\u06d8\u06e0\u06d9\u06e2\u06e5\u06d6\u06e6"

    :goto_4
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v2

    sparse-switch v3, :sswitch_data_4

    goto :goto_4

    :sswitch_d
    const-string v0, "\u06e4\u06d6\u06e7\u06e4\u06e2\u06d8\u06d8\u06d7\u06ec\u06e7\u06d9\u06dc\u06e5\u06ec\u06e6\u06e8\u06d6\u06db\u06d6\u06d8\u06d9\u06e4\u06e0\u06e7\u06dc\u06d8\u06da\u06e5\u06e5\u06d8\u06e0\u06e2\u06df"

    goto :goto_3

    :cond_1
    const-string v0, "\u06eb\u06dc\u06dc\u06d8\u06df\u06e7\u06e4\u06e1\u06d8\u06e1\u06d8\u06e7\u06e1\u06e0\u06ec\u06e8\u06e8\u06d8\u06df\u06e7\u06d8\u06d8\u06e5\u06d9\u06e1\u06e8\u06e5\u06d9\u06e1\u06e7\u06d8\u06d9\u06db\u06d7\u06e6\u06e0\u06e7\u06da\u06df\u06e6\u06d9\u06e7\u06e1\u06d8\u06e2\u06d6\u06d8\u06ec\u06ec\u06e1\u06eb\u06e0\u06e8\u06e1\u06e6\u06d8\u06db\u06ec\u06e1\u06d8"

    goto :goto_4

    :sswitch_e
    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$OooO0O0;->OooO00o:Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;

    invoke-static {v0}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->OooOo0O(Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;)Lz2/t6;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "\u06d9\u06eb\u06d8\u06d8\u06d9\u06d9\u06e1\u06e5\u06d8\u06e5\u06e0\u06d8\u06d8\u06e1\u06e6\u06db\u06db\u06d7\u06da\u06da\u06dc\u06dc\u06e1\u06e1\u06eb\u06d8\u06e7\u06dc\u06d8\u06e0\u06d9\u06d6\u06d8\u06e6\u06da\u06ec\u06e7\u06d6\u06d6\u06d8"

    goto :goto_4

    :sswitch_f
    const-string v0, "\u06eb\u06e0\u06e2\u06e4\u06ec\u06dc\u06d8\u06db\u06d7\u06e5\u06d8\u06e8\u06eb\u06e6\u06e6\u06ec\u06d6\u06d8\u06e6\u06e2\u06d8\u06d8\u06eb\u06e8\u06d6\u06d8\u06dc\u06da\u06dc\u06e7\u06e8\u06e7\u06e1\u06d7\u06e4"

    goto :goto_4

    :sswitch_10
    const-string v0, "\u06e8\u06e2\u06d8\u06db\u06db\u06e5\u06da\u06e7\u06dc\u06d8\u06e0\u06da\u06e8\u06d8\u06db\u06d8\u06db\u06e4\u06d6\u06e4\u06d7\u06df\u06eb\u06d7\u06e0\u06d8\u06d8\u06d8\u06d8\u06d9\u06da\u06d8\u06e1\u06d8\u06e2\u06da\u06e8\u06e5\u06e1\u06e7\u06dc\u06df\u06db\u06df\u06d6\u06d6\u06d8\u06db\u06df\u06d9\u06d7\u06e7\u06df"

    goto :goto_3

    :sswitch_11
    const-string v0, "\u06e4\u06eb\u06e6\u06e1\u06da\u06db\u06d9\u06dc\u06da\u06e2\u06da\u06eb\u06db\u06e0\u06da\u06e7\u06e5\u06e5\u06df\u06e5\u06e8\u06d8\u06e7\u06e5\u06d9\u06d6\u06d9\u06e4\u06d9\u06d6\u06e5\u06d8\u06e2\u06eb\u06da\u06eb\u06e5\u06db"

    goto :goto_3

    :sswitch_12
    const-string v0, "\u06df\u06e2\u06e8\u06d8\u06e7\u06d7\u06d7\u06db\u06e1\u06e1\u06d8\u06ec\u06d8\u06d7\u06e5\u06e4\u06dc\u06e2\u06df\u06d8\u06ec\u06d7\u06d7\u06da\u06e1\u06d8\u06dc\u06ec\u06d9\u06e7\u06e5\u06e0\u06da\u06e0\u06dc\u06d8\u06e8\u06eb\u06dc\u06d8\u06e7\u06e5\u06d8\u06eb\u06e2\u06d6\u06dc\u06d9\u06dc\u06e8\u06e5\u06e6"

    goto/16 :goto_0

    :sswitch_13
    const v1, -0xa4350e7

    const-string v0, "\u06e6\u06e0\u06e7\u06e2\u06d8\u06e1\u06d8\u06e8\u06e1\u06e0\u06e7\u06e1\u06e8\u06d8\u06d6\u06dc\u06dc\u06d8\u06e8\u06d7\u06d8\u06eb\u06e1\u06df\u06ec\u06df\u06e5\u06d8\u06d9\u06e5\u06e5\u06ec\u06d8\u06df\u06e6\u06d6\u06d8\u06e8\u06e2\u06e2\u06d9\u06e4\u06db\u06d6\u06d6\u06e1"

    :goto_5
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v2, v1

    sparse-switch v2, :sswitch_data_5

    goto :goto_5

    :sswitch_14
    const-string v0, "\u06ec\u06ec\u06d8\u06d8\u06db\u06df\u06e1\u06e1\u06dc\u06e1\u06d8\u06dc\u06eb\u06e4\u06d8\u06d6\u06d8\u06db\u06e8\u06e0\u06e2\u06dc\u06df\u06d8\u06dc\u06d7\u06d8\u06e4\u06db\u06e1\u06d7\u06eb\u06ec\u06d8\u06d8\u06e0\u06dc\u06e1\u06d8\u06e0\u06dc\u06dc\u06dc\u06eb\u06e0\u06e7\u06eb\u06e5\u06d8\u06e7\u06df\u06df\u06e4\u06ec\u06e6\u06da\u06e6\u06e8"

    goto/16 :goto_0

    :sswitch_15
    const-string v0, "\u06e4\u06db\u06e2\u06df\u06eb\u06d8\u06da\u06e7\u06e4\u06e2\u06e7\u06d8\u06d8\u06d9\u06da\u06eb\u06e5\u06dc\u06e6\u06d6\u06e2\u06ec\u06e2\u06e2\u06dc\u06d8\u06da\u06da\u06d6\u06ec\u06d6\u06e5\u06e7\u06e4\u06e1\u06da\u06d8\u06d8\u06e4\u06dc\u06d6\u06d8\u06e6\u06e7\u06e4"

    goto :goto_5

    :sswitch_16
    const v2, 0x53cb06e5

    const-string v0, "\u06e2\u06ec\u06e1\u06d8\u06d7\u06e0\u06d8\u06d8\u06e8\u06e5\u06df\u06e7\u06e7\u06d8\u06ec\u06e5\u06dc\u06d8\u06e2\u06db\u06db\u06d9\u06da\u06e2\u06eb\u06d7\u06dc\u06d8\u06d7\u06e1\u06e6\u06d8\u06e6\u06d8\u06d6\u06d8\u06e1\u06eb\u06e8\u06e2\u06eb\u06da\u06e7\u06df\u06e4\u06e8\u06e5\u06df"

    :goto_6
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v2

    sparse-switch v3, :sswitch_data_6

    goto :goto_6

    :sswitch_17
    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$OooO0O0;->OooO00o:Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;

    invoke-static {v0}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->OooOo0O(Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;)Lz2/t6;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "\u06e6\u06eb\u06e8\u06dc\u06d7\u06e7\u06dc\u06e8\u06e4\u06e7\u06dc\u06eb\u06e8\u06eb\u06d6\u06d8\u06d6\u06e2\u06d7\u06e4\u06e1\u06e2\u06e1\u06e1\u06e6\u06d8\u06d9\u06da\u06e8\u06e1\u06ec\u06e6\u06d8\u06d6\u06df\u06dc\u06d9\u06e0\u06df"

    goto :goto_6

    :cond_2
    const-string v0, "\u06db\u06d8\u06ec\u06d9\u06e1\u06e1\u06d8\u06e2\u06e2\u06d9\u06e1\u06da\u06e6\u06d8\u06e2\u06d9\u06df\u06e2\u06d9\u06e1\u06e2\u06e0\u06e2\u06ec\u06db\u06e6\u06d8\u06dc\u06e4\u06e4\u06da\u06dc\u06e6\u06d8"

    goto :goto_6

    :sswitch_18
    const-string v0, "\u06d8\u06d8\u06e8\u06e8\u06d9\u06e8\u06d8\u06e5\u06dc\u06e4\u06da\u06df\u06dc\u06d8\u06d9\u06df\u06d8\u06d9\u06e1\u06d8\u06db\u06d7\u06e5\u06da\u06e5\u06d7\u06d7\u06eb\u06e1\u06da\u06e7\u06d7\u06e5\u06e5\u06db\u06e8\u06e7\u06e1\u06d6\u06e8\u06d8\u06e2\u06d8\u06e8\u06d6\u06e0\u06e6\u06d8\u06df\u06e5\u06e4"

    goto :goto_6

    :sswitch_19
    const-string v0, "\u06d8\u06e8\u06eb\u06da\u06d6\u06e0\u06db\u06ec\u06e5\u06d8\u06eb\u06df\u06e1\u06d8\u06d6\u06e7\u06df\u06d7\u06dc\u06dc\u06d9\u06e2\u06e5\u06d8\u06da\u06e5\u06df\u06e8\u06d9\u06d7\u06e6\u06e4\u06e7"

    goto :goto_5

    :sswitch_1a
    const-string v0, "\u06da\u06e1\u06d7\u06e0\u06d9\u06e2\u06d6\u06d8\u06e1\u06e8\u06d8\u06d6\u06e6\u06eb\u06e6\u06d8\u06eb\u06e4\u06e1\u06d8\u06eb\u06e7\u06e5\u06ec\u06e0\u06d6\u06ec\u06da\u06dc\u06d8\u06d7\u06d6\u06da\u06dc\u06d7\u06e5\u06d8\u06e7\u06e1\u06d8\u06d8\u06d6\u06d8\u06e5\u06d8\u06e0\u06eb\u06e6"

    goto :goto_5

    :sswitch_1b
    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$OooO0O0;->OooO00o:Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;

    invoke-static {v0}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->OooOo0O(Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;)Lz2/t6;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const-string v0, "\u06e2\u06db\u06d7\u06da\u06d9\u06dc\u06d8\u06e1\u06db\u06d6\u06e7\u06e0\u06d7\u06e7\u06db\u06da\u06e0\u06dc\u06e0\u06e4\u06d9\u06eb\u06e7\u06d9\u06d6\u06d7\u06da\u06dc\u06d8\u06ec\u06d7\u06d7\u06e8\u06e6\u06d8\u06d8\u06db\u06df\u06e7\u06e1\u06e4\u06d6\u06d6\u06e0\u06eb\u06db\u06e0\u06df\u06e2\u06e7\u06e6\u06d8\u06e0\u06d6\u06eb\u06da\u06d7\u06e5\u06d8"

    goto/16 :goto_0

    :sswitch_1c
    const v1, 0xb6dda73

    const-string v0, "\u06d7\u06ec\u06dc\u06d8\u06e7\u06e4\u06e8\u06d6\u06d8\u06db\u06e7\u06e6\u06d6\u06d8\u06dc\u06e2\u06e0\u06e1\u06ec\u06e2\u06d8\u06e1\u06d6\u06da\u06d8\u06d8\u06e8\u06eb\u06d8\u06e7\u06da\u06e6"

    :goto_7
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v2, v1

    sparse-switch v2, :sswitch_data_7

    goto :goto_7

    :sswitch_1d
    const-string v0, "\u06ec\u06db\u06e4\u06e4\u06e5\u06d8\u06df\u06e4\u06eb\u06e2\u06d8\u06da\u06e7\u06da\u06e5\u06d8\u06ec\u06df\u06df\u06e0\u06da\u06ec\u06d8\u06ec\u06e1\u06e4\u06db\u06e1\u06d8\u06df\u06e4\u06d8\u06d8"

    goto/16 :goto_0

    :sswitch_1e
    const-string v0, "\u06d8\u06e6\u06db\u06da\u06e6\u06d6\u06d8\u06e0\u06e6\u06e5\u06d6\u06e1\u06da\u06db\u06e1\u06d8\u06d9\u06e7\u06e2\u06d7\u06e7\u06e2\u06db\u06e2\u06dc\u06d8\u06d8\u06e5\u06ec\u06e7\u06e1\u06da"

    goto :goto_7

    :sswitch_1f
    const v2, -0x1f54a078

    const-string v0, "\u06e0\u06d7\u06e7\u06d7\u06df\u06e8\u06d8\u06ec\u06eb\u06d9\u06d8\u06e6\u06eb\u06db\u06d9\u06df\u06d7\u06ec\u06d6\u06ec\u06d8\u06d8\u06d7\u06e2\u06e4\u06e8\u06da\u06e2\u06e6\u06e6\u06d8\u06df\u06ec\u06d8\u06d8"

    :goto_8
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v2

    sparse-switch v3, :sswitch_data_8

    goto :goto_8

    :sswitch_20
    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$OooO0O0;->OooO00o:Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;

    invoke-static {v0}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->OooOo(Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;)Lz2/s6;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v0, "\u06ec\u06dc\u06e6\u06d8\u06df\u06e4\u06e6\u06d8\u06e0\u06e5\u06ec\u06ec\u06e6\u06d7\u06df\u06e2\u06d7\u06e4\u06e6\u06e8\u06d8\u06e0\u06e0\u06e8\u06d8\u06da\u06e0\u06e6\u06d8\u06d9\u06e1\u06df\u06eb\u06e4\u06e4\u06df\u06e6\u06d8\u06e1\u06e1\u06dc\u06d8\u06e6\u06e5\u06d9\u06db\u06dc\u06d8"

    goto :goto_8

    :cond_3
    const-string v0, "\u06e4\u06e4\u06d7\u06da\u06d8\u06e6\u06d9\u06e2\u06e7\u06d7\u06e1\u06d6\u06da\u06ec\u06d6\u06e5\u06da\u06e8\u06e1\u06ec\u06d7\u06eb\u06e0\u06e5\u06d7\u06ec\u06da\u06db\u06db\u06e5\u06db\u06dc\u06da\u06da\u06e8\u06da\u06e5\u06eb\u06dc\u06d8\u06eb\u06dc\u06d8\u06d8\u06e6\u06e2\u06e7\u06e4\u06e2\u06df\u06e6\u06e0\u06e4"

    goto :goto_8

    :sswitch_21
    const-string v0, "\u06d7\u06e8\u06d8\u06e4\u06dc\u06e8\u06d8\u06e5\u06e7\u06ec\u06d6\u06df\u06dc\u06e5\u06d6\u06e6\u06d8\u06db\u06d8\u06da\u06e8\u06eb\u06e5\u06ec\u06e2\u06e0\u06e2\u06e5\u06eb\u06e4\u06db\u06e1\u06e5\u06da\u06db\u06ec\u06e1\u06e0"

    goto :goto_8

    :sswitch_22
    const-string v0, "\u06e8\u06e0\u06df\u06e8\u06d9\u06df\u06db\u06d7\u06d6\u06e2\u06e7\u06e1\u06d8\u06db\u06db\u06ec\u06da\u06e5\u06e7\u06e4\u06db\u06ec\u06e4\u06e2\u06d8\u06d8\u06e7\u06e6\u06d9\u06e7\u06e8\u06d8\u06dc\u06df\u06d6\u06e4\u06df\u06df"

    goto :goto_7

    :sswitch_23
    const-string v0, "\u06e0\u06e8\u06d6\u06d8\u06dc\u06dc\u06d8\u06d8\u06e0\u06eb\u06e7\u06e0\u06e8\u06db\u06e1\u06dc\u06e1\u06d8\u06d7\u06e4\u06e2\u06db\u06e5\u06e8\u06d8\u06e1\u06d7\u06d6\u06d8\u06df\u06e8\u06e5\u06e7\u06eb\u06e6\u06dc\u06e0\u06d7\u06e8\u06d8\u06dc\u06d8\u06da\u06db\u06e0\u06ec\u06dc\u06d6\u06d8\u06e7\u06e6\u06d6\u06d8\u06dc\u06e7\u06e5\u06d8"

    goto :goto_7

    :sswitch_24
    const v1, -0x2dee5344

    const-string v0, "\u06d9\u06eb\u06d9\u06d9\u06da\u06d8\u06d8\u06e0\u06e6\u06e4\u06e8\u06d6\u06e1\u06d8\u06df\u06db\u06eb\u06df\u06e7\u06e5\u06d6\u06ec\u06d6\u06d8\u06d6\u06e0\u06d9\u06ec\u06eb\u06e6\u06e0\u06e8\u06e1\u06d8\u06e4\u06eb\u06da\u06e1\u06e4\u06e8\u06d8"

    :goto_9
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v2, v1

    sparse-switch v2, :sswitch_data_9

    goto :goto_9

    :sswitch_25
    const-string v0, "\u06e2\u06d6\u06e7\u06e0\u06e1\u06e1\u06e7\u06dc\u06dc\u06ec\u06da\u06ec\u06db\u06e6\u06ec\u06e4\u06d7\u06e7\u06d8\u06df\u06d7\u06e6\u06d9\u06e0\u06e4\u06d6\u06ec\u06e7\u06e5\u06eb\u06e2\u06dc\u06e5\u06df\u06d8\u06d8"

    goto/16 :goto_0

    :sswitch_26
    const-string v0, "\u06e2\u06e5\u06d8\u06e8\u06ec\u06d6\u06df\u06dc\u06d7\u06d6\u06d6\u06db\u06e7\u06e1\u06e6\u06d8\u06e0\u06eb\u06e4\u06da\u06e8\u06e7\u06eb\u06e6\u06d8\u06e1\u06e6\u06e5\u06d8\u06e7\u06d8\u06e0\u06ec\u06e1\u06e1\u06db\u06d9\u06ec"

    goto :goto_9

    :sswitch_27
    const v2, -0x28c7dc11

    const-string v0, "\u06df\u06e0\u06e1\u06d8\u06e2\u06d7\u06da\u06db\u06e1\u06d8\u06db\u06e1\u06df\u06eb\u06db\u06dc\u06d8\u06e4\u06da\u06d8\u06d6\u06eb\u06da\u06e1\u06da\u06e8\u06d8\u06e1\u06dc\u06e1\u06d6\u06e1\u06e0"

    :goto_a
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v2

    sparse-switch v3, :sswitch_data_a

    goto :goto_a

    :sswitch_28
    const-string v0, "\u06db\u06e2\u06dc\u06df\u06ec\u06ec\u06d6\u06eb\u06e5\u06d8\u06e2\u06e1\u06e5\u06d8\u06e1\u06d8\u06e0\u06e5\u06e1\u06ec\u06e0\u06e7\u06e8\u06d8\u06e8\u06e6\u06e1\u06eb\u06ec\u06e1\u06d9\u06e2\u06e8\u06e2\u06e4\u06d6\u06e4\u06df\u06db\u06e7\u06db\u06df\u06dc\u06e2\u06dc\u06d8\u06dc\u06e7\u06e5\u06d8\u06e8\u06da\u06d9"

    goto :goto_a

    :cond_4
    const-string v0, "\u06d7\u06dc\u06e7\u06d8\u06db\u06eb\u06df\u06d9\u06e7\u06e5\u06e1\u06db\u06d6\u06d8\u06e1\u06d6\u06ec\u06dc\u06e1\u06e7\u06d8\u06e0\u06e7\u06e2\u06e4\u06dc\u06e5\u06e2\u06e6\u06e5\u06df\u06e7\u06e8\u06d8\u06ec\u06e5\u06e2\u06db\u06d6\u06e5\u06d8"

    goto :goto_a

    :sswitch_29
    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$OooO0O0;->OooO00o:Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;

    invoke-static {v0}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->OooOo(Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;)Lz2/s6;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "\u06ec\u06e1\u06df\u06df\u06e2\u06db\u06d9\u06db\u06eb\u06df\u06e7\u06e1\u06d8\u06e1\u06d8\u06e8\u06d8\u06e5\u06e4\u06d8\u06ec\u06da\u06e7\u06e1\u06d8\u06eb\u06e7\u06df\u06e0\u06d9\u06db\u06dc\u06d8\u06eb\u06df\u06e1\u06d8\u06e4\u06e5\u06e6"

    goto :goto_a

    :sswitch_2a
    const-string v0, "\u06e5\u06ec\u06e7\u06d7\u06d7\u06e7\u06d6\u06ec\u06e0\u06df\u06e4\u06e1\u06db\u06e0\u06d6\u06d6\u06e2\u06da\u06e7\u06e6\u06e8\u06da\u06d8\u06e2\u06d7\u06df\u06e2\u06d6\u06db\u06e8\u06d8\u06da\u06e5\u06da\u06e5\u06eb\u06dc"

    goto :goto_9

    :sswitch_2b
    const-string v0, "\u06e7\u06da\u06db\u06e2\u06e0\u06e8\u06d8\u06ec\u06e8\u06d8\u06e8\u06e1\u06e7\u06d8\u06d8\u06e2\u06e4\u06db\u06e6\u06d6\u06eb\u06ec\u06d8\u06d8\u06ec\u06e0\u06e7\u06da\u06d9\u06d9\u06e6\u06e1\u06dc\u06d8\u06e4\u06e7\u06d9\u06da\u06eb\u06e5"

    goto :goto_9

    :sswitch_2c
    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$OooO0O0;->OooO00o:Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;

    invoke-static {v0}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->OooOo(Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;)Lz2/s6;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const-string v0, "\u06eb\u06d6\u06ec\u06e5\u06da\u06d9\u06da\u06df\u06d6\u06d6\u06e2\u06d9\u06ec\u06e5\u06dc\u06d8\u06e6\u06e8\u06d9\u06e2\u06d9\u06d6\u06e0\u06dc\u06e7\u06d8\u06e0\u06d9\u06e1\u06d8\u06da\u06db\u06da\u06e2\u06dc\u06d9\u06d9\u06e2\u06d9\u06df\u06eb\u06db\u06db\u06e7\u06e8\u06d7\u06db\u06e0\u06d8\u06d9\u06d9\u06eb\u06df\u06db\u06e7"

    goto/16 :goto_0

    :sswitch_2d
    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$OooO0O0;->OooO00o:Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;

    invoke-static {v0, v4}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->OooOo0o(Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;Lz2/t6;)Lz2/t6;

    const-string v0, "\u06da\u06e7\u06e5\u06dc\u06d9\u06e2\u06d8\u06db\u06e8\u06d8\u06d7\u06eb\u06e6\u06d8\u06e5\u06d7\u06e8\u06db\u06e6\u06db\u06eb\u06d8\u06d7\u06e6\u06dc\u06d8\u06e1\u06e6\u06e0\u06dc\u06e4\u06e6\u06d8\u06d7\u06eb\u06e5\u06eb\u06e8\u06e8\u06da\u06e7\u06da\u06e4\u06e8\u06e0\u06df\u06e0\u06d8\u06dc\u06e2\u06e6\u06e4\u06d6\u06dc\u06e1\u06e7\u06e8\u06d8"

    goto/16 :goto_0

    :sswitch_2e
    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$OooO0O0;->OooO00o:Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;

    invoke-static {v0, v4}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->OooOoO0(Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;Lz2/s6;)Lz2/s6;

    const-string v0, "\u06e6\u06e6\u06e5\u06d8\u06e2\u06ec\u06da\u06e2\u06e4\u06d8\u06d8\u06e1\u06e1\u06e6\u06d8\u06df\u06dc\u06e6\u06db\u06db\u06e5\u06d8\u06e8\u06e6\u06ec\u06e2\u06d9\u06e5\u06e5\u06e5\u06e6\u06d8\u06eb\u06e8\u06eb\u06d6\u06d9\u06e6\u06d8\u06eb\u06dc\u06d9\u06db\u06e7\u06d9\u06eb\u06dc\u06e5\u06df\u06e8\u06d8\u06d8\u06d8\u06dc\u06d8\u06e5\u06eb\u06e5\u06d8\u06e1\u06e8\u06dc\u06d8"

    goto/16 :goto_0

    :sswitch_2f
    const-string v0, "\u06e2\u06db\u06d7\u06da\u06d9\u06dc\u06d8\u06e1\u06db\u06d6\u06e7\u06e0\u06d7\u06e7\u06db\u06da\u06e0\u06dc\u06e0\u06e4\u06d9\u06eb\u06e7\u06d9\u06d6\u06d7\u06da\u06dc\u06d8\u06ec\u06d7\u06d7\u06e8\u06e6\u06d8\u06d8\u06db\u06df\u06e7\u06e1\u06e4\u06d6\u06d6\u06e0\u06eb\u06db\u06e0\u06df\u06e2\u06e7\u06e6\u06d8\u06e0\u06d6\u06eb\u06da\u06d7\u06e5\u06d8"

    goto/16 :goto_0

    :sswitch_30
    const-string v0, "\u06eb\u06d6\u06ec\u06e5\u06da\u06d9\u06da\u06df\u06d6\u06d6\u06e2\u06d9\u06ec\u06e5\u06dc\u06d8\u06e6\u06e8\u06d9\u06e2\u06d9\u06d6\u06e0\u06dc\u06e7\u06d8\u06e0\u06d9\u06e1\u06d8\u06da\u06db\u06da\u06e2\u06dc\u06d9\u06d9\u06e2\u06d9\u06df\u06eb\u06db\u06db\u06e7\u06e8\u06d7\u06db\u06e0\u06d8\u06d9\u06d9\u06eb\u06df\u06db\u06e7"

    goto/16 :goto_0

    :sswitch_31
    const-string v0, "\u06e6\u06e6\u06e5\u06d8\u06e2\u06ec\u06da\u06e2\u06e4\u06d8\u06d8\u06e1\u06e1\u06e6\u06d8\u06df\u06dc\u06e6\u06db\u06db\u06e5\u06d8\u06e8\u06e6\u06ec\u06e2\u06d9\u06e5\u06e5\u06e5\u06e6\u06d8\u06eb\u06e8\u06eb\u06d6\u06d9\u06e6\u06d8\u06eb\u06dc\u06d9\u06db\u06e7\u06d9\u06eb\u06dc\u06e5\u06df\u06e8\u06d8\u06d8\u06d8\u06dc\u06d8\u06e5\u06eb\u06e5\u06d8\u06e1\u06e8\u06dc\u06d8"

    goto/16 :goto_0

    :sswitch_32
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x6b5d0be0 -> :sswitch_13
        -0x60e43819 -> :sswitch_1c
        -0x5a338ca3 -> :sswitch_2c
        -0x55e648a9 -> :sswitch_1b
        -0x3a1e21d4 -> :sswitch_0
        -0x2f9e7f2e -> :sswitch_24
        -0x2972e4c1 -> :sswitch_b
        -0x13842a94 -> :sswitch_2
        -0xd5f6be4 -> :sswitch_2d
        0x850d3d8 -> :sswitch_32
        0x16da794b -> :sswitch_3
        0x24d8cf77 -> :sswitch_2e
        0x303fbc38 -> :sswitch_1
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x2a75ae4 -> :sswitch_6
        0x131b99fc -> :sswitch_31
        0x19b859c3 -> :sswitch_a
        0x54edb348 -> :sswitch_4
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        -0x57e74e40 -> :sswitch_7
        -0x53a80a6b -> :sswitch_5
        -0x367cd152 -> :sswitch_9
        0x7f5073e0 -> :sswitch_8
    .end sparse-switch

    :sswitch_data_3
    .sparse-switch
        -0x626fdd64 -> :sswitch_c
        0x2910ebb5 -> :sswitch_12
        0x2c1497e7 -> :sswitch_2f
        0x725c3b18 -> :sswitch_11
    .end sparse-switch

    :sswitch_data_4
    .sparse-switch
        -0x695aff88 -> :sswitch_10
        -0x5d70684b -> :sswitch_d
        0x1a177515 -> :sswitch_f
        0x50c3dba4 -> :sswitch_e
    .end sparse-switch

    :sswitch_data_5
    .sparse-switch
        -0x73e2188d -> :sswitch_16
        -0x3646a7cc -> :sswitch_14
        -0x14b5b79d -> :sswitch_1a
        0x259df9cb -> :sswitch_2f
    .end sparse-switch

    :sswitch_data_6
    .sparse-switch
        -0xe4b2257 -> :sswitch_19
        0x8640f0 -> :sswitch_17
        0x48e69506 -> :sswitch_15
        0x54ea7a34 -> :sswitch_18
    .end sparse-switch

    :sswitch_data_7
    .sparse-switch
        -0x1a3f30cf -> :sswitch_23
        -0x1a057088 -> :sswitch_1d
        0x151b6ffb -> :sswitch_1f
        0x76adf9ba -> :sswitch_30
    .end sparse-switch

    :sswitch_data_8
    .sparse-switch
        -0x5fb9642c -> :sswitch_1e
        -0x5a827a07 -> :sswitch_22
        -0x1631f71b -> :sswitch_20
        -0x12c197c1 -> :sswitch_21
    .end sparse-switch

    :sswitch_data_9
    .sparse-switch
        -0x6d1d32be -> :sswitch_25
        -0x1069d506 -> :sswitch_30
        0x65f4879 -> :sswitch_2b
        0x628589f2 -> :sswitch_27
    .end sparse-switch

    :sswitch_data_a
    .sparse-switch
        -0x4cc55678 -> :sswitch_28
        -0x2f86b26c -> :sswitch_29
        -0x1f12e954 -> :sswitch_26
        0x3a11cc67 -> :sswitch_2a
    .end sparse-switch
.end method
