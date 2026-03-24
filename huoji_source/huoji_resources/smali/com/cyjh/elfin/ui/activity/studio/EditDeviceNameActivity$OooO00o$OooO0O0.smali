.class public Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity$OooO00o$OooO0O0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity$OooO00o;->OooO00o(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final OoooOoO:Ljava/lang/String;

.field public final OoooOoo:Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity$OooO00o;


# direct methods
.method public constructor <init>(Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity$OooO00o;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity$OooO00o$OooO0O0;->OoooOoo:Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity$OooO00o;

    iput-object p2, p0, Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity$OooO00o$OooO0O0;->OoooOoO:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "\u06db\u06eb\u06d9\u06df\u06e7\u06e7\u06d8\u06e8\u06dc\u06e0\u06e0\u06d9\u06d9\u06d8\u06d8\u06eb\u06d6\u06e2\u06e1\u06d9\u06e2\u06db\u06dc\u06d8\u06e7\u06da\u06e1\u06d8\u06d7\u06eb\u06ec\u06dc\u06e4\u06e4\u06d7\u06d9\u06d8\u06da\u06da\u06dc\u06df\u06e6\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x81

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x254

    const/16 v2, 0x1d4

    const v3, -0x70af3dc4    # -1.02926E-29f

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06eb\u06da\u06e5\u06e2\u06e8\u06d8\u06d8\u06e0\u06d6\u06dc\u06d8\u06e4\u06e5\u06e8\u06d8\u06e5\u06d7\u06e5\u06e8\u06e5\u06e5\u06df\u06d7\u06e1\u06d8\u06e1\u06d8\u06dc\u06d8\u06d7\u06da\u06e1\u06da\u06e0\u06e4\u06e7\u06e4\u06eb\u06e4\u06e4\u06e4"

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity$OooO00o$OooO0O0;->OoooOoo:Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity$OooO00o;

    iget-object v0, v0, Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity$OooO00o;->OooO0O0:Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity$OooO00o$OooO0O0;->OoooOoO:Ljava/lang/String;

    invoke-static {v0, v1}, Lz2/c5;->OooO0o0(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "\u06d8\u06d8\u06ec\u06d6\u06d6\u06e4\u06d8\u06d8\u06e0\u06e0\u06e1\u06e1\u06d8\u06e1\u06e8\u06d6\u06d8\u06e5\u06e8\u06da\u06e1\u06e1\u06e2\u06df\u06d6\u06e8\u06d8\u06e8\u06e2\u06e5\u06d8\u06e4\u06e2\u06e1\u06d8\u06eb\u06e6\u06d8\u06dc\u06e7\u06e2\u06d7\u06ec\u06d6\u06d8\u06e4\u06e7\u06dc"

    goto :goto_0

    :sswitch_2
    return-void

    :sswitch_data_0
    .sparse-switch
        0xfe400b2 -> :sswitch_0
        0x50edfe16 -> :sswitch_2
        0x775cdc91 -> :sswitch_1
    .end sparse-switch
.end method
