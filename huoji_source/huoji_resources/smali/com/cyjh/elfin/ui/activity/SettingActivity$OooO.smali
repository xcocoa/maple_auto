.class public Lcom/cyjh/elfin/ui/activity/SettingActivity$OooO;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cyjh/elfin/ui/view/customview/TitleView$OooO0O0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/elfin/ui/activity/SettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OooO"
.end annotation


# instance fields
.field public final OooO00o:Lcom/cyjh/elfin/ui/activity/SettingActivity;


# direct methods
.method private constructor <init>(Lcom/cyjh/elfin/ui/activity/SettingActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity$OooO;->OooO00o:Lcom/cyjh/elfin/ui/activity/SettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/cyjh/elfin/ui/activity/SettingActivity;Lcom/cyjh/elfin/ui/activity/SettingActivity$OooO00o;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cyjh/elfin/ui/activity/SettingActivity$OooO;-><init>(Lcom/cyjh/elfin/ui/activity/SettingActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const-string v0, "\u06e5\u06db\u06e6\u06d8\u06e4\u06d8\u06d7\u06ec\u06da\u06eb\u06d9\u06d8\u06e1\u06e5\u06e6\u06d8\u06e2\u06db\u06e6\u06d8\u06d8\u06e5\u06d8\u06dc\u06e0\u06df\u06e4\u06e7\u06e6\u06e6\u06da\u06d8\u06e8\u06da\u06e2\u06df\u06e6\u06eb\u06db\u06e0\u06e8\u06e8\u06ec\u06e8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x1a0

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x15a

    const/16 v2, 0x38e

    const v3, -0x5148eb49

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06dc\u06db\u06d6\u06d8\u06e6\u06e4\u06e1\u06d8\u06eb\u06e0\u06e2\u06ec\u06e6\u06e5\u06e4\u06e4\u06e6\u06d8\u06db\u06e0\u06db\u06e8\u06d7\u06d7\u06e5\u06e8\u06db\u06d9\u06dc\u06eb\u06e6\u06db\u06ec\u06dc\u06dc\u06e7\u06d8\u06d7\u06ec\u06e6"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06eb\u06e5\u06e1\u06d6\u06eb\u06d8\u06d8\u06da\u06d9\u06e0\u06e0\u06df\u06e5\u06d8\u06e2\u06d6\u06eb\u06eb\u06e6\u06e5\u06e2\u06d6\u06db\u06dc\u06e7\u06e7\u06d9\u06e6\u06e4\u06e4\u06e2\u06eb\u06e7\u06e6\u06e5\u06d8\u06e0\u06e2\u06d7\u06e5\u06e2\u06db\u06e0\u06e6\u06eb\u06eb\u06e1\u06e5\u06d8\u06ec\u06dc\u06e8\u06d8\u06ec\u06e0\u06ec"

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity$OooO;->OooO00o:Lcom/cyjh/elfin/ui/activity/SettingActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    const-string v0, "\u06e5\u06e2\u06e5\u06d8\u06e1\u06db\u06dc\u06d8\u06e0\u06e1\u06d8\u06e5\u06e6\u06e1\u06eb\u06ec\u06da\u06df\u06d7\u06dc\u06d8\u06e6\u06da\u06d6\u06d8\u06e4\u06e4\u06e2\u06d9\u06e2\u06e8\u06d8\u06d7\u06d8\u06da\u06db\u06e5\u06e5\u06d8\u06d6\u06eb\u06eb\u06db\u06eb\u06d7\u06dc\u06eb\u06e2\u06e5\u06d7\u06e4\u06df\u06e7\u06d6\u06e2\u06e4\u06e5\u06d8\u06d8\u06e4\u06e2"

    goto :goto_0

    :sswitch_3
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x596a692 -> :sswitch_1
        0x15d37851 -> :sswitch_3
        0x377f9d4b -> :sswitch_0
        0x5ba63c99 -> :sswitch_2
    .end sparse-switch
.end method
