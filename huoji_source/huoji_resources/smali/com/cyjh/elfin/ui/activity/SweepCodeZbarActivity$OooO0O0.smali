.class public Lcom/cyjh/elfin/ui/activity/SweepCodeZbarActivity$OooO0O0;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/elfin/ui/activity/SweepCodeZbarActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final OooO00o:Lcom/cyjh/elfin/ui/activity/SweepCodeZbarActivity;


# direct methods
.method public constructor <init>(Lcom/cyjh/elfin/ui/activity/SweepCodeZbarActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeZbarActivity$OooO0O0;->OooO00o:Lcom/cyjh/elfin/ui/activity/SweepCodeZbarActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    const v1, 0x3e72f926

    const-string v0, "\u06e0\u06eb\u06d7\u06d7\u06d7\u06e1\u06e7\u06e8\u06e1\u06e2\u06dc\u06e5\u06ec\u06d8\u06e5\u06d8\u06ec\u06eb\u06e6\u06e1\u06e4\u06d6\u06d8\u06e1\u06e5\u06da\u06df\u06df\u06d6\u06d8\u06d6\u06e6\u06df\u06df\u06eb\u06e5\u06d8\u06df\u06da\u06dc\u06da\u06d8\u06e7\u06e5\u06d7\u06e1\u06d9\u06e2\u06e1\u06d8\u06e1\u06da\u06d8\u06d7\u06e5\u06e2\u06e4\u06e4\u06e6"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v2, v1

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const v2, 0x6ee2ffe5

    const-string v0, "\u06d8\u06df\u06e6\u06db\u06d7\u06d6\u06e2\u06e0\u06eb\u06eb\u06e2\u06e6\u06d8\u06e0\u06da\u06e1\u06eb\u06e1\u06d6\u06e0\u06dc\u06d8\u06e5\u06da\u06e7\u06e7\u06e5\u06e6\u06d8\u06e2\u06eb\u06dc\u06e2\u06eb\u06e2\u06ec\u06e4\u06d8\u06ec\u06dc\u06d8\u06d9\u06d8\u06e2\u06d8\u06da\u06d7\u06e4\u06e2\u06d8"

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v2

    sparse-switch v3, :sswitch_data_1

    goto :goto_1

    :sswitch_1
    const-string v0, "\u06e5\u06e6\u06e0\u06e5\u06df\u06e8\u06d8\u06e2\u06d6\u06da\u06df\u06d9\u06e4\u06e6\u06d9\u06d9\u06e2\u06e1\u06e2\u06d8\u06d9\u06e2\u06e0\u06eb\u06db\u06eb\u06d8\u06e7\u06d8\u06d8\u06d7\u06dc\u06d8"

    goto :goto_0

    :cond_0
    const-string v0, "\u06e7\u06e7\u06e5\u06d8\u06d8\u06ec\u06e8\u06d8\u06d7\u06df\u06e5\u06e5\u06dc\u06d8\u06d8\u06e6\u06e1\u06e2\u06db\u06eb\u06e6\u06d8\u06d8\u06eb\u06d8\u06d9\u06df\u06e1\u06ec\u06e7\u06e4\u06d8\u06e2"

    goto :goto_1

    :sswitch_2
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x11

    if-eq v0, v3, :cond_0

    const-string v0, "\u06da\u06d8\u06e2\u06df\u06ec\u06da\u06d8\u06e0\u06e4\u06ec\u06e4\u06e8\u06d8\u06e7\u06e8\u06e1\u06d8\u06eb\u06db\u06dc\u06d8\u06d9\u06d9\u06e8\u06d8\u06e6\u06e6\u06d9\u06e7\u06e1\u06e0\u06e8\u06da\u06e5\u06d8\u06e1\u06e2\u06d8\u06d8\u06da\u06d8\u06e1\u06d8\u06d7\u06e5\u06e8\u06d8\u06e1\u06e2\u06d9\u06e0\u06d9\u06df\u06e5\u06e1\u06e5\u06d8\u06e8\u06d6\u06e8\u06d8\u06e0\u06e7\u06dc"

    goto :goto_1

    :sswitch_3
    const-string v0, "\u06d6\u06e8\u06e1\u06ec\u06e2\u06e0\u06da\u06e1\u06dc\u06df\u06d9\u06df\u06e1\u06e6\u06e0\u06e6\u06e4\u06e6\u06d8\u06d6\u06ec\u06db\u06e5\u06d8\u06d6\u06d8\u06d9\u06e8\u06e1\u06d8\u06e5\u06e0\u06eb\u06ec\u06e7\u06e2\u06e5\u06e8\u06dc\u06d8\u06e6\u06dc\u06e1\u06e7\u06d6\u06e8\u06d8"

    goto :goto_1

    :sswitch_4
    const-string v0, "\u06d9\u06eb\u06e6\u06ec\u06dc\u06d8\u06e6\u06d7\u06db\u06dc\u06d8\u06e7\u06e7\u06d6\u06e0\u06da\u06db\u06e6\u06d6\u06dc\u06e7\u06d8\u06d8\u06da\u06e6\u06e0\u06e1\u06e8\u06d8\u06e2\u06df\u06da"

    goto :goto_0

    :sswitch_5
    const-string v0, "\u06e7\u06e1\u06ec\u06e0\u06d8\u06e7\u06da\u06d9\u06eb\u06e6\u06eb\u06e8\u06d8\u06e1\u06e7\u06e4\u06d7\u06da\u06dc\u06d8\u06e0\u06d9\u06e1\u06d8\u06d9\u06df\u06d6\u06d8\u06e4\u06d6\u06e7\u06d8\u06e1\u06d9\u06d7\u06d9\u06da\u06e6\u06db\u06df\u06e2\u06ec\u06e6\u06d8\u06e6\u06ec\u06e6\u06d8\u06e8\u06e6\u06e0\u06e2\u06e8\u06db"

    goto :goto_0

    :sswitch_6
    :try_start_0
    iget-object v1, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeZbarActivity$OooO0O0;->OooO00o:Lcom/cyjh/elfin/ui/activity/SweepCodeZbarActivity;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/cyjh/elfin/ui/activity/SweepCodeZbarActivity;->OooO0oo(Lcom/cyjh/elfin/ui/activity/SweepCodeZbarActivity;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    :sswitch_7
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeZbarActivity$OooO0O0;->OooO00o:Lcom/cyjh/elfin/ui/activity/SweepCodeZbarActivity;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/cyjh/elfin/ui/activity/SweepCodeZbarActivity;->OoooooO:Z

    goto :goto_2

    :sswitch_data_0
    .sparse-switch
        -0x53df68fd -> :sswitch_7
        -0x3e98a56c -> :sswitch_6
        0x49d99ccb -> :sswitch_0
        0x6fd0828e -> :sswitch_5
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x6eae841b -> :sswitch_2
        -0x5a5bcecf -> :sswitch_4
        -0x1c50c960 -> :sswitch_3
        0x69465e74 -> :sswitch_1
    .end sparse-switch
.end method
