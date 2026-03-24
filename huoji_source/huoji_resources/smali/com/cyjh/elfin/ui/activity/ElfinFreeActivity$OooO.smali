.class public Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$OooO;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final OooO00o:Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;


# direct methods
.method public constructor <init>(Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$OooO;->OooO00o:Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    const-string v0, "\u06db\u06e5\u06e7\u06d8\u06e8\u06e7\u06d8\u06e7\u06db\u06e8\u06e4\u06e8\u06e8\u06d8\u06dc\u06e8\u06e8\u06d6\u06e0\u06e8\u06d8\u06e6\u06e2\u06ec\u06e2\u06dc\u06dc\u06df\u06e5\u06e2\u06da\u06d8\u06e0\u06d8\u06d8\u06dc\u06d9\u06d8\u06d8\u06d8\u06e0\u06d7\u06e0\u06dc\u06e7\u06d8\u06ec\u06dc\u06dc\u06d8\u06e5\u06e2\u06ec\u06e0\u06d8\u06e4"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0xcc

    xor-int/2addr v1, v2

    xor-int/lit8 v1, v1, 0x13

    const/16 v2, 0x12e

    const v3, -0x3c4217c5

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d9\u06e4\u06da\u06e2\u06d6\u06e6\u06d8\u06e6\u06dc\u06ec\u06e0\u06ec\u06d6\u06e7\u06dc\u06dc\u06e1\u06e4\u06e1\u06e0\u06e8\u06e0\u06df\u06e0\u06d6\u06df\u06d7\u06dc\u06d8\u06d9\u06e6\u06db\u06d6\u06db\u06e1\u06e0\u06dc\u06d8\u06e7\u06dc\u06eb\u06e2\u06d8\u06db\u06e0\u06e7\u06d9\u06eb\u06d8\u06e5\u06d8\u06eb\u06ec\u06d6\u06eb\u06d7\u06d9"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06e2\u06ec\u06da\u06e4\u06ec\u06d8\u06d8\u06d9\u06ec\u06e6\u06ec\u06d8\u06ec\u06e7\u06e8\u06d8\u06d8\u06d8\u06e2\u06d7\u06db\u06e5\u06dc\u06d8\u06da\u06d7\u06e5\u06d8\u06e8\u06df\u06e8\u06e7\u06e8\u06d6\u06d6\u06d6\u06da\u06e8\u06d7\u06d8"

    goto :goto_0

    :sswitch_2
    const v1, 0x27872b7f

    const-string v0, "\u06d6\u06d9\u06d8\u06db\u06db\u06e6\u06d8\u06df\u06ec\u06d6\u06d8\u06e2\u06df\u06ec\u06eb\u06d8\u06e7\u06d9\u06df\u06eb\u06d9\u06d8\u06d8\u06e2\u06dc\u06e7\u06d8\u06d8\u06e1\u06eb\u06d6\u06e1\u06d7\u06e0\u06e0\u06d6\u06d8\u06d6\u06eb\u06d8\u06dc\u06e0\u06d8\u06d8\u06d6\u06e6\u06e8\u06d8\u06e2\u06e7\u06d7\u06e4\u06e0\u06df"

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v2, v1

    sparse-switch v2, :sswitch_data_1

    goto :goto_1

    :sswitch_3
    const-string v0, "\u06e5\u06d8\u06eb\u06db\u06ec\u06e5\u06d9\u06e6\u06da\u06db\u06e6\u06d9\u06d8\u06e8\u06d8\u06d8\u06e5\u06e0\u06e0\u06d7\u06df\u06e7\u06d9\u06d7\u06dc\u06e4\u06d9\u06ec\u06d6\u06e2\u06d8\u06e7\u06e1\u06e8\u06d8\u06df\u06e1\u06d7"

    goto :goto_0

    :sswitch_4
    const-string v0, "\u06ec\u06d9\u06e8\u06d8\u06e2\u06e0\u06d6\u06d8\u06e1\u06da\u06d7\u06d9\u06d8\u06dc\u06df\u06d8\u06d8\u06e6\u06dc\u06e2\u06d8\u06d8\u06ec\u06e2\u06e1\u06e1\u06d8\u06e5\u06e0\u06da\u06df\u06e5\u06e4\u06e6\u06e2\u06d6\u06e6\u06e1\u06d8\u06d6\u06e6\u06eb\u06da\u06e8\u06d8\u06eb\u06e6\u06ec\u06ec\u06ec\u06db\u06df\u06d9\u06d6\u06e7\u06da"

    goto :goto_1

    :sswitch_5
    const v2, 0x2b567d9b

    const-string v0, "\u06da\u06da\u06e1\u06d8\u06df\u06d6\u06dc\u06e6\u06d7\u06d6\u06df\u06e1\u06db\u06e5\u06dc\u06e7\u06df\u06d7\u06e8\u06d8\u06eb\u06e0\u06e8\u06d8\u06d6\u06e0\u06dc\u06d8\u06e4\u06e2\u06dc\u06ec\u06df\u06e1\u06d8\u06e1\u06e6\u06eb\u06e4\u06e7\u06e5\u06d8\u06d6\u06db\u06e5\u06e0\u06d9\u06e2\u06e8\u06d6\u06d8\u06dc\u06ec\u06ec"

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v2

    sparse-switch v3, :sswitch_data_2

    goto :goto_2

    :sswitch_6
    const-string v0, "\u06dc\u06e7\u06d6\u06e8\u06e8\u06e8\u06d8\u06d9\u06ec\u06db\u06e6\u06e1\u06d6\u06d8\u06df\u06eb\u06e2\u06d6\u06da\u06ec\u06d8\u06d6\u06e5\u06e0\u06e5\u06d7\u06e1\u06d6\u06e1\u06d8\u06e8\u06e5\u06e5"

    goto :goto_1

    :cond_0
    const-string v0, "\u06e6\u06e6\u06e8\u06d8\u06dc\u06df\u06e6\u06eb\u06e5\u06e8\u06d8\u06d7\u06e2\u06e8\u06ec\u06e7\u06e6\u06d9\u06e0\u06d8\u06d8\u06ec\u06e6\u06d9\u06e2\u06d9\u06eb\u06dc\u06d8\u06d9\u06da\u06e0\u06e8\u06d7\u06eb\u06da\u06e1\u06d8\u06ec\u06eb\u06e1\u06d8\u06dc\u06d8\u06d6\u06e8\u06dc\u06e1\u06d8\u06d8\u06dc\u06d7"

    goto :goto_2

    :sswitch_7
    const/16 v0, 0x3f1

    iget v3, p1, Landroid/os/Message;->what:I

    if-ne v0, v3, :cond_0

    const-string v0, "\u06eb\u06da\u06e5\u06e4\u06e7\u06eb\u06e5\u06d9\u06e6\u06d8\u06d8\u06e0\u06eb\u06d6\u06dc\u06dc\u06d8\u06eb\u06e7\u06e5\u06e7\u06e4\u06e4\u06dc\u06d7\u06df\u06ec\u06e5\u06da\u06e4\u06e2\u06e6"

    goto :goto_2

    :sswitch_8
    const-string v0, "\u06eb\u06e6\u06d8\u06dc\u06e0\u06e8\u06e5\u06e2\u06dc\u06e0\u06d9\u06e8\u06d7\u06eb\u06e1\u06d9\u06ec\u06dc\u06d9\u06d7\u06e6\u06e1\u06dc\u06d8\u06d8\u06dc\u06d7\u06e6\u06da\u06eb\u06e8\u06e8\u06d8\u06dc\u06d7\u06e1\u06e8\u06da\u06e2\u06db\u06e5\u06da\u06dc\u06db\u06e1\u06e8\u06e6\u06d7\u06d7"

    goto :goto_2

    :sswitch_9
    const-string v0, "\u06dc\u06e4\u06db\u06da\u06e8\u06d8\u06d8\u06eb\u06e7\u06ec\u06db\u06e5\u06dc\u06db\u06ec\u06e4\u06ec\u06db\u06d8\u06e8\u06e5\u06e6\u06d8\u06e8\u06d8\u06d8\u06dc\u06eb\u06e1\u06d8\u06db\u06e6\u06e5"

    goto :goto_1

    :sswitch_a
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$OooO;->OooO00o:Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;

    invoke-static {v0}, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->OooOO0(Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;)V

    const-string v0, "\u06d9\u06e8\u06d6\u06d8\u06db\u06d6\u06e2\u06ec\u06e7\u06d8\u06d8\u06e8\u06d7\u06e7\u06d8\u06e6\u06da\u06da\u06eb\u06e1\u06d8\u06e5\u06e2\u06e5\u06d8\u06e1\u06dc\u06d9\u06e1\u06da\u06e8\u06da\u06e0\u06dc\u06e0\u06df\u06e5\u06d8\u06e7\u06d7\u06e4\u06e2\u06e5\u06e4\u06e5\u06e8\u06e5\u06d6\u06e6\u06e2\u06e5\u06e0"

    goto :goto_0

    :sswitch_b
    const-string v0, "\u06d9\u06e8\u06d6\u06d8\u06db\u06d6\u06e2\u06ec\u06e7\u06d8\u06d8\u06e8\u06d7\u06e7\u06d8\u06e6\u06da\u06da\u06eb\u06e1\u06d8\u06e5\u06e2\u06e5\u06d8\u06e1\u06dc\u06d9\u06e1\u06da\u06e8\u06da\u06e0\u06dc\u06e0\u06df\u06e5\u06d8\u06e7\u06d7\u06e4\u06e2\u06e5\u06e4\u06e5\u06e8\u06e5\u06d6\u06e6\u06e2\u06e5\u06e0"

    goto :goto_0

    :sswitch_c
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7d7c1266 -> :sswitch_2
        -0x3364e7c8 -> :sswitch_c
        -0x140f2c32 -> :sswitch_0
        0x25a267d4 -> :sswitch_1
        0x45f8e5b5 -> :sswitch_a
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0xbcf69ed -> :sswitch_5
        0x12dde42b -> :sswitch_3
        0x1c5d06ea -> :sswitch_9
        0x2a846084 -> :sswitch_b
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        -0x3bfc4e83 -> :sswitch_6
        -0x335cdb32 -> :sswitch_4
        0x1fea743b -> :sswitch_8
        0x392ee68b -> :sswitch_7
    .end sparse-switch
.end method
