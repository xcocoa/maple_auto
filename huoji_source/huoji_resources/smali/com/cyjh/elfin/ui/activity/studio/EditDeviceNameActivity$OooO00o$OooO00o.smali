.class public Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity$OooO00o$OooO00o;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity$OooO00o;->OooO0O0(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final OoooOoO:Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity$OooO00o;


# direct methods
.method public constructor <init>(Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity$OooO00o;)V
    .locals 0

    iput-object p1, p0, Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity$OooO00o$OooO00o;->OoooOoO:Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity$OooO00o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "\u06e8\u06e7\u06ec\u06d7\u06e0\u06e5\u06d8\u06d6\u06e1\u06d8\u06d8\u06d6\u06e5\u06ec\u06e2\u06d9\u06e5\u06d8\u06da\u06e4\u06e0\u06e5\u06e6\u06e7\u06d8\u06ec\u06df\u06db\u06e2\u06e6\u06ec\u06e6\u06e1\u06e1\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x31

    xor-int/2addr v1, v2

    xor-int/lit8 v1, v1, 0x1e

    const/16 v2, 0x32b

    const v3, 0x1700f237

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06df\u06eb\u06d8\u06e0\u06e5\u06df\u06e0\u06e4\u06e5\u06e8\u06dc\u06e4\u06dc\u06d8\u06e1\u06d9\u06dc\u06e7\u06d8\u06e7\u06e4\u06d6\u06d8\u06eb\u06e8\u06e7\u06d8\u06d6\u06e7\u06dc\u06d8\u06da\u06e8\u06e1\u06da\u06e8\u06e1\u06e1\u06e2\u06e8\u06d7\u06d9\u06e2\u06da\u06e7\u06e6\u06d8"

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity$OooO00o$OooO00o;->OoooOoO:Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity$OooO00o;

    iget-object v0, v0, Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity$OooO00o;->OooO0O0:Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u4fee\u6539\u6210\u529f\uff01"

    invoke-static {v0, v1}, Lz2/c5;->OooO0o0(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "\u06db\u06da\u06d7\u06e0\u06e7\u06e7\u06ec\u06d6\u06d7\u06db\u06ec\u06d6\u06eb\u06e1\u06e6\u06d8\u06d9\u06da\u06e6\u06d8\u06d8\u06ec\u06e1\u06d8\u06d8\u06e8\u06d8\u06d8\u06e1\u06e5\u06e1\u06d8\u06e6\u06d8\u06db\u06e0\u06df\u06ec\u06df\u06e7\u06dc\u06d8\u06eb\u06ec\u06e6\u06eb\u06e7\u06db\u06e6\u06e7\u06d6\u06d8\u06d9\u06d6\u06d8\u06d7\u06e4\u06e4\u06e0\u06e5\u06e8\u06d8"

    goto :goto_0

    :sswitch_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x591d822c -> :sswitch_0
        -0x4b0ec1e3 -> :sswitch_1
        0x33a388d4 -> :sswitch_2
    .end sparse-switch
.end method
