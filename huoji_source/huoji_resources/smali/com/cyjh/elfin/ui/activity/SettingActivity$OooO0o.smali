.class public Lcom/cyjh/elfin/ui/activity/SettingActivity$OooO0o;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/elfin/ui/activity/SettingActivity;->onReceiveStudioProjectStatusEvent(Lz2/fh;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final OoooOoO:Lcom/cyjh/elfin/ui/activity/SettingActivity;


# direct methods
.method public constructor <init>(Lcom/cyjh/elfin/ui/activity/SettingActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity$OooO0o;->OoooOoO:Lcom/cyjh/elfin/ui/activity/SettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "\u06e5\u06d8\u06d8\u06e5\u06db\u06e4\u06e4\u06da\u06e6\u06d8\u06d7\u06d9\u06e2\u06d9\u06d8\u06e7\u06d8\u06d6\u06e1\u06dc\u06eb\u06e4\u06da\u06dc\u06e5\u06db\u06d8\u06e7\u06e5\u06d8\u06e2\u06e1\u06d8\u06e4\u06e4\u06dc\u06eb\u06e7\u06d8\u06d8\u06df\u06e6\u06e1\u06d8\u06da\u06e7\u06d7\u06e2\u06e5\u06e6\u06ec\u06da\u06d9\u06e8\u06d8\u06e6\u06d8\u06e5\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x16

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x253

    const/16 v2, 0xba

    const v3, 0x35611d50

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e1\u06e5\u06d9\u06d7\u06db\u06d8\u06d8\u06d7\u06e5\u06d7\u06da\u06e4\u06e5\u06e6\u06d6\u06e1\u06d8\u06e8\u06e7\u06d8\u06d8\u06eb\u06e6\u06e4\u06e5\u06e7\u06e0\u06e5\u06e2\u06e8\u06d8\u06d7\u06d6\u06e8\u06ec\u06e8\u06d8\u06d8\u06e0\u06e6\u06d6\u06d8\u06e6\u06e0\u06e6\u06d8\u06db\u06d6\u06e5\u06d8\u06d6\u06dc\u06df\u06db\u06d7\u06e4"

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity$OooO0o;->OoooOoO:Lcom/cyjh/elfin/ui/activity/SettingActivity;

    invoke-static {v0}, Lz2/dh;->OooOo0(Landroid/content/Context;)V

    const-string v0, "\u06eb\u06e8\u06dc\u06dc\u06e8\u06e1\u06d8\u06e5\u06eb\u06db\u06db\u06ec\u06dc\u06e4\u06db\u06e6\u06e2\u06e0\u06dc\u06d8\u06d8\u06d8\u06d6\u06d8\u06ec\u06e4\u06dc\u06e2\u06db\u06ec\u06d7\u06e1\u06e1\u06d8\u06d7\u06e4\u06e7\u06dc\u06da\u06df\u06e0\u06e1\u06e6\u06d8\u06e1\u06db\u06e5\u06e6\u06e7\u06e7\u06d9\u06e1\u06e7"

    goto :goto_0

    :sswitch_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x76d9c7d6 -> :sswitch_0
        -0x4fe04754 -> :sswitch_1
        -0x4b2bd38 -> :sswitch_2
    .end sparse-switch
.end method
