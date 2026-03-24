.class public Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity$OooO0O0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity;->OooOO0o()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final OoooOoO:Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity;


# direct methods
.method public constructor <init>(Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity$OooO0O0;->OoooOoO:Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "\u06d6\u06e6\u06e1\u06e8\u06eb\u06e7\u06da\u06df\u06dc\u06e4\u06e5\u06e4\u06da\u06dc\u06e1\u06df\u06d8\u06e0\u06da\u06e5\u06e8\u06d8\u06e4\u06d8\u06e6\u06e7\u06e1\u06e7\u06d8\u06e4\u06e4\u06e5\u06d8\u06e1\u06e2\u06ec\u06dc\u06dc\u06d6\u06d8\u06d7\u06da\u06df\u06df\u06df\u06dc"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x103

    xor-int/2addr v1, v2

    xor-int/lit8 v1, v1, 0x50

    const/16 v2, 0x28f

    const v3, 0x24a1c148

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d8\u06da\u06e6\u06d8\u06e8\u06df\u06e5\u06e4\u06e1\u06e1\u06d8\u06e8\u06d8\u06dc\u06d8\u06df\u06e8\u06e7\u06d8\u06d9\u06e0\u06e8\u06d8\u06db\u06e4\u06e8\u06d8\u06da\u06df\u06e1\u06d8\u06df\u06d6\u06d6\u06d9\u06e1\u06e6\u06e8\u06da\u06db\u06e4\u06db\u06e2\u06d7\u06e1\u06e8\u06e2\u06e7\u06db\u06e1\u06e8\u06d8\u06d9\u06d6\u06e7\u06ec\u06df\u06db\u06e6\u06d7\u06e5"

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity$OooO0O0;->OoooOoO:Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u811a\u672c\u6570\u636e\u51fa\u9519"

    invoke-static {v0, v1}, Lz2/c5;->OooO0o0(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "\u06df\u06d9\u06e6\u06d6\u06da\u06eb\u06db\u06e5\u06db\u06ec\u06e2\u06e7\u06e5\u06e7\u06e5\u06d9\u06d6\u06e8\u06d8\u06e1\u06e4\u06d6\u06d9\u06e7\u06d9\u06e8\u06db\u06e6\u06d8\u06d8\u06d6\u06e4\u06d8\u06e5\u06e8\u06ec\u06dc"

    goto :goto_0

    :sswitch_2
    return-void

    :sswitch_data_0
    .sparse-switch
        0x25827dc3 -> :sswitch_2
        0x4789c58a -> :sswitch_1
        0x7b59c7ab -> :sswitch_0
    .end sparse-switch
.end method
