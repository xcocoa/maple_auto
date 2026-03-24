.class public Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity$OooO00o;
.super Ljava/lang/Object;

# interfaces
.implements Lz2/qc$OooO00o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity;->OooOO0o()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final OooO00o:Ljava/lang/String;

.field public final OooO0O0:Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity;


# direct methods
.method public constructor <init>(Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity$OooO00o;->OooO0O0:Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity;

    iput-object p2, p0, Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity$OooO00o;->OooO00o:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OooO00o(ILjava/lang/String;)V
    .locals 4

    const-string v0, "\u06e7\u06e5\u06e5\u06d8\u06d8\u06d6\u06e8\u06d8\u06e6\u06e4\u06dc\u06d8\u06e2\u06e7\u06e7\u06e7\u06df\u06ec\u06e1\u06da\u06d9\u06e2\u06d9\u06d9\u06ec\u06e6\u06e6\u06d8\u06e0\u06d8\u06da\u06e1\u06d6\u06e4\u06dc\u06e7\u06e5\u06e0\u06e4\u06e0\u06e4\u06eb\u06e7\u06e4\u06ec\u06eb\u06ec\u06da\u06d9\u06e0\u06e1\u06eb"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x3a5

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x2bd

    const/16 v2, 0x102

    const v3, -0x5cc73728

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e7\u06d6\u06e0\u06d8\u06da\u06d9\u06e6\u06d6\u06d8\u06d8\u06e7\u06d8\u06e6\u06d8\u06dc\u06d7\u06e1\u06d8\u06eb\u06df\u06e5\u06dc\u06d8\u06e2\u06db\u06eb\u06e1\u06e2\u06e8\u06e1\u06db\u06e2\u06e4\u06e1\u06e1\u06d8\u06df\u06e4\u06e6\u06d8\u06e5\u06e4\u06dc\u06d6\u06d9\u06e6"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06e6\u06e0\u06d7\u06e4\u06dc\u06e6\u06d8\u06da\u06df\u06d8\u06d8\u06db\u06df\u06d6\u06d8\u06eb\u06db\u06e5\u06d6\u06ec\u06d6\u06e8\u06e0\u06e8\u06da\u06e1\u06db\u06e5\u06e2\u06dc\u06e7\u06e1\u06dc\u06db\u06e0\u06e8\u06ec\u06e1\u06e1\u06d9\u06ec\u06d7\u06e8\u06d9\u06e8\u06d8\u06d8\u06ec\u06e6\u06e6\u06e5\u06d6\u06d8\u06dc\u06e4\u06e0\u06d9\u06dc\u06e1"

    goto :goto_0

    :sswitch_2
    const-string v0, "\u06df\u06d6\u06e8\u06d8\u06e4\u06df\u06dc\u06d8\u06e0\u06e1\u06e4\u06db\u06d8\u06e5\u06d8\u06e6\u06da\u06d7\u06e8\u06df\u06e6\u06d6\u06dc\u06e2\u06d7\u06e8\u06e5\u06e7\u06e1\u06e5\u06d8\u06eb\u06db\u06db\u06df\u06e1\u06da\u06e5\u06d8\u06d8\u06e2\u06e8\u06dcO"

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity$OooO00o;->OooO0O0:Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity;

    invoke-static {v0}, Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity;->OooO0oo(Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity;)Lcom/cyjh/elfin/ui/view/customview/TitleView;

    move-result-object v0

    new-instance v1, Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity$OooO00o$OooO0O0;

    invoke-direct {v1, p0, p2}, Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity$OooO00o$OooO0O0;-><init>(Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity$OooO00o;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    const-string v0, "\u06df\u06d8\u06e6\u06d8\u06df\u06d9\u06d9\u06e2\u06ec\u06df\u06df\u06d8\u06e7\u06d8\u06e6\u06e7\u06e6\u06d8\u06da\u06d8\u06d8\u06d8\u06db\u06df\u06d8\u06d8\u06e0\u06e0\u06dc\u06e8\u06e5\u06e7\u06e7"

    goto :goto_0

    :sswitch_4
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x796bcfb7 -> :sswitch_3
        -0x1b402ee0 -> :sswitch_1
        -0x171eb1f8 -> :sswitch_0
        0x139373bb -> :sswitch_4
        0x54340d23 -> :sswitch_2
    .end sparse-switch
.end method

.method public OooO0O0(Ljava/lang/String;)V
    .locals 4

    const-string v0, "\u06e7\u06e8\u06e5\u06d8\u06eb\u06d7\u06eb\u06dc\u06db\u06e6\u06d8\u06e5\u06d9\u06e5\u06d8\u06e0\u06e1\u06e5\u06d8\u06d9\u06e7\u06e1\u06e5\u06e1\u06e1\u06e7\u06da\u06e2\u06e8\u06d8\u06eb\u06d7\u06e5\u06d6\u06d9\u06ec\u06e2\u06e6\u06e4"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x388

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x1a9

    const/16 v2, 0x3c6

    const v3, 0x24d71b52

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d8\u06da\u06e2\u06e0\u06da\u06d6\u06e6\u06df\u06ec\u06ec\u06ec\u06df\u06d6\u06e2\u06d6\u06d8\u06da\u06dc\u06e0\u06e5\u06ec\u06d9\u06e2\u06eb\u06d6\u06e2\u06e0\u06e2\u06da\u06e1\u06e8"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06da\u06d8\u06d8\u06e0\u06d8\u06e4\u06eb\u06d9\u06e8\u06ec\u06e2\u06e1\u06d8\u06ec\u06da\u06d6\u06e6\u06e6\u06d6\u06d8\u06e6\u06e2\u06d7\u06d9\u06dc\u06d8\u06d8\u06db\u06d6\u06e1\u06d8\u06e0\u06d6\u06d6"

    goto :goto_0

    :sswitch_2
    invoke-static {}, Lz2/l10;->OooO0o()Lz2/l10;

    move-result-object v0

    new-instance v1, Lz2/fh;

    const/16 v2, 0x2714

    iget-object v3, p0, Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity$OooO00o;->OooO00o:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lz2/fh;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lz2/l10;->OooOOOO(Ljava/lang/Object;)V

    const-string v0, "\u06df\u06dc\u06e2\u06e1\u06df\u06e8\u06da\u06d6\u06e8\u06e0\u06e7\u06ec\u06e0\u06dc\u06db\u06e7\u06d8\u06e4\u06e4\u06d7\u06dc\u06d9\u06db\u06d8\u06d8\u06ec\u06e7\u06d9\u06da\u06e5\u06e5\u06e7\u06d9\u06ec\u06df\u06d6\u06e4\u06d6\u06df\u06d7\u06e4\u06df\u06e8\u06d8"

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity$OooO00o;->OooO0O0:Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity;

    invoke-static {v0}, Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity;->OooO0oo(Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity;)Lcom/cyjh/elfin/ui/view/customview/TitleView;

    move-result-object v0

    new-instance v1, Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity$OooO00o$OooO00o;

    invoke-direct {v1, p0}, Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity$OooO00o$OooO00o;-><init>(Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity$OooO00o;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    const-string v0, "\u06d7\u06e5\u06e1\u06df\u06df\u06d8\u06ec\u06dc\u06e7\u06d9\u06dc\u06d8\u06e4\u06dc\u06db\u06ec\u06eb\u06eb\u06db\u06e2\u06e1\u06d8\u06eb\u06e6\u06e0\u06e5\u06d9\u06e8\u06ec\u06e7\u06e1"

    goto :goto_0

    :sswitch_4
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity$OooO00o;->OooO0O0:Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    const-string v0, "\u06df\u06df\u06da\u06df\u06d7\u06d7\u06d9\u06d6\u06d8\u06d8\u06df\u06da\u06eb\u06e8\u06da\u06db\u06db\u06d6\u06e8\u06d6\u06ec\u06e8\u06da\u06e1\u06d8\u06d8\u06d9\u06d8\u06da\u06d7\u06e5\u06d8"

    goto :goto_0

    :sswitch_5
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4b8f3211 -> :sswitch_0
        -0x3f52babc -> :sswitch_3
        -0x8e20e28 -> :sswitch_4
        0x286e8a95 -> :sswitch_1
        0x633f61e3 -> :sswitch_5
        0x7eaaa450 -> :sswitch_2
    .end sparse-switch
.end method
