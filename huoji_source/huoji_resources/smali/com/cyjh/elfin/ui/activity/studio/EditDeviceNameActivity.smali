.class public Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity;
.super Lcom/cyjh/common/base/activity/BaseActivity;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity$OooO0OO;,
        Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity$OooO0o;
    }
.end annotation


# static fields
.field public static Oooooo:Ljava/lang/String; = null

.field public static final OoooooO:Ljava/lang/String; = "device_name"


# instance fields
.field private OooooO0:Lcom/cyjh/elfin/ui/view/customview/TitleView;

.field private OooooOO:Landroid/widget/EditText;

.field private OooooOo:Landroid/os/Handler;

.field private Oooooo0:Landroid/widget/ImageView;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const-string v0, "\u06d9\u06e2\u06e8\u06d8\u06da\u06ec\u06d6\u06d8\u06df\u06e8\u06d8\u06dc\u06e4\u06e5\u06d8\u06d8\u06e7\u06dc\u06d8\u06d6\u06eb\u06da\u06e8\u06e7\u06e6\u06d8\u06df\u06dc\u06e7\u06e4\u06ec\u06d8\u06d8\u06e8\u06eb\u06e4\u06e1\u06e0\u06e0\u06d7\u06db\u06e6\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x64

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x1f9

    const/16 v2, 0x2c0

    const v3, -0x2720a4f

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-class v0, Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity;->Oooooo:Ljava/lang/String;

    const-string v0, "\u06e6\u06da\u06eb\u06e5\u06dc\u06d6\u06d8\u06e2\u06e5\u06d6\u06e5\u06d8\u06e2\u06d6\u06ec\u06dc\u06eb\u06e8\u06ec\u06e0\u06d8\u06dc\u06d8\u06e4\u06e1\u06e5\u06ec\u06dc\u06e7\u06e4\u06e8\u06eb"

    goto :goto_0

    :sswitch_1
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7fc2590a -> :sswitch_0
        -0xd6f42fd -> :sswitch_1
    .end sparse-switch
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/cyjh/common/base/activity/BaseActivity;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity;->OooooOo:Landroid/os/Handler;

    return-void
.end method

.method public static OooO(Landroid/content/Context;)V
    .locals 4

    const-string v0, "\u06e0\u06e7\u06e0\u06e1\u06dc\u06d7\u06e6\u06d8\u06dc\u06d8\u06e2\u06ec\u06d8\u06eb\u06df\u06e6\u06d8\u06da\u06e4\u06d7\u06d9\u06e4\u06d6\u06da\u06da\u06ec\u06d7\u06d7\u06d7\u06df\u06e0\u06e8\u06d8\u06d9\u06e4\u06e8\u06d8\u06e2\u06e1\u06dc"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x25a

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x309

    const/16 v2, 0x2eb

    const v3, -0x72f4c04

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d6\u06ec\u06ec\u06d8\u06e6\u06e5\u06e0\u06db\u06e0\u06e7\u06eb\u06e0\u06e0\u06e5\u06d9\u06e4\u06d6\u06d8\u06d8\u06dc\u06e5\u06e2\u06df\u06e7\u06e1\u06e8\u06e6\u06d8\u06e8\u06df\u06d8\u06d6\u06e5\u06e5\u06d7\u06e4\u06e6\u06d6\u06d6\u06e6\u06d8\u06eb\u06d9\u06d8"

    goto :goto_0

    :sswitch_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const-string v0, "\u06df\u06e6\u06da\u06e5\u06d6\u06e4\u06e4\u06d7\u06db\u06e4\u06d7\u06e1\u06d9\u06e1\u06e8\u06d8\u06da\u06e2\u06d6\u06ec\u06e7\u06dc\u06d7\u06e5\u06ec\u06e1\u06e7\u06e8\u06d9\u06db\u06e6\u06e8\u06db\u06e6\u06d8\u06d8\u06e1\u06e7\u06e2\u06da\u06e1\u06ec\u06e7\u06d6\u06d8\u06d9\u06d6\u06e6\u06e1\u06e4\u06e1\u06d8\u06e4\u06d8\u06d9\u06eb\u06d7\u06e4"

    goto :goto_0

    :sswitch_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x74075122 -> :sswitch_2
        -0x711f27df -> :sswitch_0
        -0x6f491a1c -> :sswitch_1
    .end sparse-switch
.end method

.method public static synthetic OooO0oO(Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity;)V
    .locals 4

    const-string v0, "\u06e1\u06da\u06e1\u06d9\u06dc\u06ec\u06e8\u06e6\u06e6\u06dc\u06eb\u06e4\u06e7\u06eb\u06e1\u06e1\u06d8\u06db\u06e5\u06e5\u06dc\u06d8\u06eb\u06d6\u06ec\u06e5\u06df\u06df\u06e2\u06e1\u06d6\u06e7\u06e8\u06e1\u06e1\u06e6\u06db\u06e6\u06d9\u06d6\u06d8\u06e0\u06e5\u06e1\u06e2\u06db\u06e5\u06d8\u06e5\u06ec\u06e1"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0xb9

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x270

    const/16 v2, 0x1ae

    const v3, -0x5dee6c42

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06db\u06eb\u06d7\u06eb\u06eb\u06d6\u06d8\u06d6\u06d8\u06e6\u06e6\u06e2\u06e0\u06e0\u06e5\u06e8\u06d8\u06d6\u06d7\u06e7\u06db\u06e0\u06e4\u06da\u06e1\u06d6\u06db\u06e2\u06e5\u06d7\u06e2\u06e1\u06d8\u06e8\u06d9\u06d8\u06d8\u06da\u06e8\u06ec\u06d7\u06dc\u06dc\u06d8\u06e2\u06e8\u06e6"

    goto :goto_0

    :sswitch_1
    invoke-direct {p0}, Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity;->OooOO0o()V

    const-string v0, "\u06e4\u06dc\u06e6\u06d8\u06e1\u06dc\u06e7\u06d8\u06eb\u06e4\u06ec\u06d8\u06d8\u06e1\u06e6\u06e7\u06e0\u06d8\u06df\u06e1\u06d6\u06d8\u06d6\u06d9\u06ec\u06e6\u06ec\u06ec\u06d6\u06e2\u06e8\u06e5\u06e4\u06e1\u06ec\u06d6\u06eb"

    goto :goto_0

    :sswitch_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7e86d17d -> :sswitch_1
        -0xcafc95c -> :sswitch_2
        0x61052ce6 -> :sswitch_0
    .end sparse-switch
.end method

.method public static synthetic OooO0oo(Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity;)Lcom/cyjh/elfin/ui/view/customview/TitleView;
    .locals 4

    const-string v0, "\u06d9\u06e7\u06e6\u06d8\u06e0\u06e6\u06e6\u06d8\u06e4\u06ec\u06e5\u06e7\u06e1\u06e6\u06d8\u06e7\u06e0\u06d6\u06d8\u06e5\u06db\u06e5\u06d8\u06e4\u06e6\u06d7\u06e8\u06e1\u06e2\u06e1\u06e8\u06da\u06df\u06d6\u06e5\u06eb\u06d8\u06d6\u06eb\u06e7\u06d6\u06d8\u06d6\u06e8\u06e1\u06d8\u06e5\u06d8\u06e6"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x2d1

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x231

    const/16 v2, 0x6b

    const v3, 0x65c00fb3

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06ec\u06e7\u06dc\u06d8\u06e8\u06e2\u06d7\u06da\u06eb\u06e8\u06e6\u06ec\u06e0\u06e1\u06d9\u06d6\u06d8\u06e4\u06d7\u06eb\u06e1\u06db\u06d8\u06d8\u06ec\u06dc\u06e5\u06d8\u06df\u06dc\u06ec\u06ec\u06d8\u06e7\u06d7\u06e0\u06d8\u06db\u06d8\u06dc\u06db\u06db\u06d6\u06d8\u06d9\u06e1\u06d8\u06d7\u06d7\u06e5\u06d6\u06e1\u06da"

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity;->OooooO0:Lcom/cyjh/elfin/ui/view/customview/TitleView;

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x569a9f0e -> :sswitch_1
        0x11408d1f -> :sswitch_0
    .end sparse-switch
.end method

.method public static OooOO0(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    const/4 v1, 0x0

    const-string v0, "\u06e8\u06e1\u06e4\u06df\u06d6\u06df\u06e0\u06ec\u06e5\u06d6\u06e2\u06db\u06e1\u06d7\u06e8\u06d8\u06ec\u06e7\u06e1\u06e1\u06e6\u06e6\u06d8\u06e1\u06da\u06eb\u06e2\u06d9\u06d6\u06ec\u06dc\u06e1"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v3, 0x2e0

    xor-int/2addr v2, v3

    xor-int/lit16 v2, v2, 0x36e

    const/16 v3, 0x1a7

    const v4, 0x1de31243

    xor-int/2addr v2, v3

    xor-int/2addr v2, v4

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06db\u06df\u06e6\u06d9\u06e4\u06e0\u06db\u06e5\u06dc\u06d8\u06da\u06d9\u06e2\u06dc\u06d9\u06e4\u06e0\u06d6\u06d8\u06e0\u06e1\u06e1\u06d8\u06e7\u06d8\u06df\u06e2\u06e0\u06d7\u06dc\u06e5\u06e2\u06eb\u06dc\u06db\u06d6\u06eb\u06d8\u06df\u06da\u06ec\u06e5\u06d9\u06da\u06d6\u06da\u06e8\u06d6\u06d7"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06da\u06e2\u06d8\u06d8\u06e5\u06ec\u06dc\u06d8\u06d9\u06d7\u06e6\u06ec\u06df\u06da\u06da\u06e1\u06e5\u06e4\u06e8\u06e1\u06e1\u06e7\u06d8\u06e6\u06eb\u06ec\u06da\u06da\u06d6\u06d8\u06eb\u06da\u06e8\u06dc\u06e4\u06e1\u06d8\u06d8\u06d6\u06e4\u06e2\u06e6\u06eb\u06d7\u06e5\u06e6\u06d8"

    goto :goto_0

    :sswitch_2
    new-instance v1, Landroid/content/Intent;

    const-class v0, Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity;

    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "\u06e4\u06db\u06e0\u06e8\u06eb\u06e5\u06d8\u06e6\u06e4\u06e0\u06d7\u06e2\u06db\u06d7\u06ec\u06dc\u06e0\u06d9\u06e6\u06d9\u06d7\u06df\u06eb\u06da\u06d9\u06d8\u06d8\u06d8\u06e0\u06d6\u06dc\u06e2\u06e2\u06da\u06eb\u06eb\u06d9\u06e7\u06e6\u06d8\u06eb\u06e0\u06dc\u06d8\u06e4\u06e2\u06dc\u06e2\u06d7\u06d6\u06d8"

    goto :goto_0

    :sswitch_3
    const-string v0, "device_name"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "\u06e7\u06d8\u06d8\u06e1\u06da\u06d6\u06e0\u06d7\u06e7\u06e5\u06eb\u06d6\u06e6\u06e1\u06eb\u06e0\u06ec\u06e7\u06e5\u06e1\u06d8\u06d8\u06d7\u06df\u06e2\u06e5\u06dc\u06d8\u06eb\u06da\u06db\u06e5\u06ec\u06d6\u06d8\u06e1\u06e6\u06e4\u06e6\u06e5\u06d7\u06e5\u06e1\u06e7\u06d7\u06e0\u06e0\u06d8\u06e7\u06d8\u06e2\u06db\u06e7\u06e1\u06db\u06e0"

    goto :goto_0

    :sswitch_4
    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v0, "\u06db\u06e0\u06e1\u06e6\u06da\u06dc\u06e1\u06dc\u06e7\u06d8\u06d6\u06dc\u06eb\u06e5\u06d7\u06e6\u06e0\u06e2\u06df\u06e2\u06d9\u06e1\u06d8\u06eb\u06ec\u06e6\u06d6\u06e8\u06e1\u06d8\u06db\u06dc\u06e0\u06db\u06db\u06e0\u06d8\u06e2\u06df\u06d8\u06d6\u06d8\u06d8\u06d9\u06dc\u06d7"

    goto :goto_0

    :sswitch_5
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const-string v0, "\u06e1\u06e7\u06e1\u06d8\u06d8\u06e6\u06df\u06e8\u06d8\u06e2\u06e8\u06dc\u06d8\u06eb\u06d9\u06d9\u06d7\u06d9\u06df\u06e4\u06d8\u06d6\u06d8\u06db\u06db\u06d9\u06ec\u06e8\u06e8\u06e4\u06dc\u06d8\u06e5\u06da\u06e0\u06da\u06d9\u06e4\u06e1\u06e5\u06d7\u06d6\u06dc\u06e7\u06d8\u06e1\u06d9\u06dc\u06d8\u06df\u06e8\u06e5\u06d8\u06e8\u06d6\u06d8\u06e2\u06db\u06e4"

    goto :goto_0

    :sswitch_6
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x69bf253f -> :sswitch_4
        0x1b5fc14a -> :sswitch_0
        0x1e058a6c -> :sswitch_1
        0x27584c86 -> :sswitch_5
        0x3682b3b3 -> :sswitch_2
        0x42816abe -> :sswitch_3
        0x68ef7d08 -> :sswitch_6
    .end sparse-switch
.end method

.method private OooOO0O()V
    .locals 5

    const/4 v4, 0x0

    const-string v0, "\u06e6\u06d8\u06e0\u06e2\u06e1\u06e6\u06d8\u06eb\u06e2\u06e1\u06d9\u06ec\u06d7\u06e6\u06e8\u06df\u06ec\u06dc\u06eb\u06e7\u06e5\u06e0\u06e8\u06ec\u06e7\u06db\u06e1\u06d8\u06e2\u06e4\u06ec\u06eb\u06e7\u06e0\u06e7\u06eb\u06d8\u06d8\u06e6\u06e6\u06e6\u06d9\u06dc\u06e4\u06e7\u06e7\u06eb\u06e2\u06e0\u06e1"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x1cc

    xor-int/2addr v1, v2

    xor-int/lit8 v1, v1, 0x5e

    const/16 v2, 0x346

    const v3, -0x363c79ee

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d8\u06e5\u06d9\u06ec\u06d9\u06e8\u06d8\u06dc\u06dc\u06d6\u06d6\u06d7\u06eb\u06e8\u06e8\u06e0\u06e0\u06da\u06df\u06e4\u06d6\u06d8\u06e8\u06e5\u06ec\u06e2\u06df\u06e8\u06e8\u06e1\u06e8\u06d8\u06d6\u06eb\u06d6\u06e4\u06e0\u06e1\u06d8\u06e8\u06d9\u06e5\u06d9\u06e6\u06e8\u06ec\u06e5\u06e7\u06e8\u06d8"

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity;->OooooO0:Lcom/cyjh/elfin/ui/view/customview/TitleView;

    const v1, 0x7f10012f

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setTitleText(I)V

    const-string v0, "\u06eb\u06df\u06e5\u06e6\u06e7\u06e8\u06d8\u06e0\u06dc\u06e6\u06eb\u06e0\u06e8\u06e0\u06dc\u06d8\u06d8\u06e7\u06e8\u06ec\u06e1\u06d8\u06e5\u06e7\u06da\u06d6\u06e6\u06e8\u06d6\u06d8\u06db\u06e2\u06d8\u06d6\u06e0\u06e5\u06e2\u06e1\u06d8\u06db\u06da\u06db\u06e2\u06d9\u06e1"

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity;->OooooO0:Lcom/cyjh/elfin/ui/view/customview/TitleView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setVisibilityLeftImage(I)V

    const-string v0, "\u06d7\u06ec\u06e8\u06e6\u06e7\u06e6\u06e6\u06df\u06e1\u06d8\u06e4\u06e0\u06dc\u06df\u06e0\u06ec\u06d6\u06e1\u06e5\u06d8\u06eb\u06e6\u06e1\u06e6\u06e8\u06d8\u06d8\u06db\u06ec\u06e2\u06e8\u06e4\u06e2\u06e2\u06d8\u06e5\u06d8\u06db\u06e7\u06e0\u06db\u06dc\u06e0\u06e7\u06e0\u06d6\u06d8"

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity;->OooooO0:Lcom/cyjh/elfin/ui/view/customview/TitleView;

    const v1, 0x7f0801c9

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setleftImage(I)V

    const-string v0, "\u06d7\u06e8\u06e8\u06d8\u06df\u06dc\u06dc\u06d7\u06e1\u06d8\u06e7\u06d6\u06df\u06e8\u06d6\u06df\u06d8\u06e1\u06e1\u06e7\u06e4\u06d6\u06d6\u06d9\u06da\u06e6\u06eb\u06e4\u06da\u06d7\u06dc\u06d8\u06eb\u06da\u06d9\u06e6\u06d6\u06e6\u06d8\u06df\u06d9\u06e1\u06d8\u06d7\u06dc\u06e5\u06d8\u06ec\u06e7\u06db\u06da\u06e4\u06d6\u06d8\u06d7\u06da\u06e8\u06e2\u06d6\u06d8"

    goto :goto_0

    :sswitch_4
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity;->OooooO0:Lcom/cyjh/elfin/ui/view/customview/TitleView;

    new-instance v1, Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity$OooO0OO;

    invoke-direct {v1, p0, v4}, Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity$OooO0OO;-><init>(Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity;Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity$OooO00o;)V

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setOnLeftImageViewListener(Lcom/cyjh/elfin/ui/view/customview/TitleView$OooO0O0;)V

    const-string v0, "\u06ec\u06d8\u06d8\u06d8\u06e2\u06dc\u06e8\u06d6\u06df\u06d6\u06df\u06ec\u06e7\u06d7\u06e0\u06df\u06df\u06d6\u06e8\u06e7\u06d6\u06e0\u06e6\u06d7\u06e8\u06d8\u06da\u06da\u06da\u06e8\u06e7\u06e8\u06d8\u06d8\u06df\u06e1\u06e8\u06eb\u06ec\u06d6\u06e4\u06e6\u06d8\u06da\u06e8\u06df\u06dc\u06d6\u06dc\u06d8\u06dc\u06e0\u06e0\u06e5\u06dc\u06e8\u06da\u06e6\u06e8\u06d8"

    goto :goto_0

    :sswitch_5
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity;->OooooO0:Lcom/cyjh/elfin/ui/view/customview/TitleView;

    new-instance v1, Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity$OooO0o;

    invoke-direct {v1, p0, v4}, Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity$OooO0o;-><init>(Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity;Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity$OooO00o;)V

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setOnRightTextViewListener(Lcom/cyjh/elfin/ui/view/customview/TitleView$OooO0o;)V

    const-string v0, "\u06e5\u06d8\u06d6\u06d8\u06e1\u06e8\u06e4\u06d8\u06d8\u06e2\u06e8\u06e5\u06e5\u06db\u06eb\u06e0\u06dc\u06e6\u06e7\u06d8\u06d9\u06d8\u06e8\u06ec\u06db\u06d6\u06e7\u06dc\u06da\u06dc\u06ec\u06e7\u06e2\u06e8\u06d8\u06e1\u06df\u06e2\u06d7\u06e4\u06d6\u06d8\u06db\u06ec\u06e8\u06d8"

    goto :goto_0

    :sswitch_6
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity;->OooooO0:Lcom/cyjh/elfin/ui/view/customview/TitleView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setVisibilityRightImage(I)V

    const-string v0, "\u06e7\u06d7\u06e2\u06d6\u06db\u06d6\u06d8\u06e7\u06eb\u06ec\u06e5\u06eb\u06d8\u06d6\u06e2\u06dc\u06d8\u06da\u06ec\u06db\u06da\u06d9\u06e2\u06d9\u06e8\u06e1\u06d8\u06d7\u06dc\u06d8\u06e6\u06e8\u06db\u06dc\u06e1\u06e7\u06d7\u06e5\u06e4"

    goto :goto_0

    :sswitch_7
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x50fc1937 -> :sswitch_6
        -0x37de2eda -> :sswitch_2
        -0x2e529111 -> :sswitch_4
        0x42f5be0d -> :sswitch_0
        0x46e69ac3 -> :sswitch_7
        0x750a066e -> :sswitch_5
        0x77809f47 -> :sswitch_3
        0x7a7fd6ca -> :sswitch_1
    .end sparse-switch
.end method

.method private OooOO0o()V
    .locals 6

    const/4 v2, 0x0

    const-string v0, "\u06df\u06e0\u06ec\u06d6\u06e2\u06e1\u06d9\u06e2\u06df\u06e8\u06e5\u06e0\u06e2\u06dc\u06eb\u06d7\u06e8\u06e5\u06e7\u06e8\u06d8\u06d8\u06ec\u06e6\u06e7\u06d8\u06e5\u06dc\u06dc\u06eb\u06e0\u06d8\u06e1\u06e0\u06db\u06db\u06eb\u06e2\u06e1\u06dc\u06d9\u06e6\u06d6\u06db\u06e7\u06d8\u06d8\u06ec\u06d8\u06da"

    move-object v1, v2

    move-object v3, v2

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v4, 0x130

    xor-int/2addr v2, v4

    xor-int/lit16 v2, v2, 0x134

    const/16 v4, 0x286

    const v5, 0x66113b09

    xor-int/2addr v2, v4

    xor-int/2addr v2, v5

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06dc\u06e0\u06e5\u06d8\u06eb\u06d6\u06e0\u06e0\u06e7\u06e6\u06d7\u06e1\u06d8\u06e4\u06e1\u06e5\u06d8\u06e5\u06e5\u06e4\u06e8\u06e1\u06e7\u06d9\u06d7\u06df\u06e0\u06db\u06e7\u06e7\u06dc\u06e4\u06df\u06ec\u06db\u06e4\u06e7\u06ec\u06e8\u06db\u06e1"

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity;->OooooOO:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v0, "\u06d7\u06ec\u06e1\u06d8\u06dc\u06d6\u06d8\u06d8\u06ec\u06da\u06d7\u06d6\u06da\u06d6\u06e7\u06e8\u06d8\u06d8\u06e2\u06e8\u06dc\u06e6\u06e6\u06db\u06d7\u06d9\u06eb\u06db\u06da\u06d7\u06e4\u06e5"

    move-object v3, v2

    goto :goto_0

    :sswitch_2
    invoke-static {p0, v3}, Lz2/a4;->Oooo00o(Landroid/content/Context;Ljava/lang/String;)Z

    const-string v0, "\u06ec\u06e5\u06df\u06df\u06d9\u06eb\u06e4\u06e6\u06d9\u06ec\u06d9\u06d8\u06e2\u06e7\u06e5\u06dc\u06d8\u06d8\u06e7\u06e8\u06dc\u06d8\u06e8\u06dc\u06e2\u06e5\u06e4\u06e2\u06e7\u06e5\u06e4\u06e4\u06e5\u06d7\u06e0\u06d6\u06d8\u06e2\u06e4\u06e7\u06d9\u06d7\u06dc\u06eb\u06e6\u06d8\u06d6\u06d7\u06dc\u06d8\u06ec\u06e1\u06dc\u06d8\u06e8\u06eb\u06e2"

    goto :goto_0

    :sswitch_3
    invoke-static {}, Lz2/b7;->OooO0Oo()Lz2/b7;

    move-result-object v0

    invoke-virtual {v0}, Lz2/b7;->OooO0oO()Lcom/cyjh/elfin/entity/Script;

    move-result-object v1

    const-string v0, "\u06e4\u06d6\u06e1\u06d6\u06db\u06d6\u06d8\u06ec\u06e7\u06e4\u06e4\u06db\u06d6\u06d8\u06d9\u06e6\u06ec\u06d6\u06e4\u06e4\u06d6\u06e0\u06e6\u06d6\u06d7\u06e4\u06dc\u06e5\u06eb\u06e5\u06df\u06e5\u06d8\u06e6\u06d6\u06e5\u06e7\u06e4\u06e6"

    goto :goto_0

    :sswitch_4
    const v2, -0x50621931

    const-string v0, "\u06d6\u06d8\u06d6\u06e4\u06e0\u06df\u06e5\u06e4\u06d8\u06d8\u06d8\u06e8\u06e1\u06d9\u06e8\u06e7\u06e8\u06da\u06e8\u06d8\u06e6\u06d7\u06e8\u06e5\u06e2\u06e7\u06d8\u06ec\u06d9\u06dc\u06e8\u06d8\u06d8\u06e7\u06dc\u06e8\u06da\u06da\u06e8\u06dc\u06e7\u06da\u06dc\u06e8\u06d8\u06dc\u06e2\u06e5\u06e1\u06df\u06e0"

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    xor-int/2addr v4, v2

    sparse-switch v4, :sswitch_data_1

    goto :goto_1

    :sswitch_5
    const v4, -0x5ed05b93

    const-string v0, "\u06ec\u06da\u06e8\u06d8\u06e1\u06ec\u06df\u06e5\u06d7\u06e8\u06d8\u06e4\u06e8\u06e0\u06e8\u06e8\u06e2\u06dc\u06e0\u06df\u06e2\u06df\u06d7\u06e4\u06d6\u06e2\u06e1\u06e4\u06e5\u06eb\u06e2\u06d6\u06d9\u06ec\u06e5\u06d8\u06e6\u06d7\u06e8\u06d9\u06e7\u06d6\u06d8\u06db\u06e7\u06ec\u06df\u06e6\u06e1\u06d8\u06d9\u06df\u06eb"

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v5

    xor-int/2addr v5, v4

    sparse-switch v5, :sswitch_data_2

    goto :goto_2

    :sswitch_6
    const-string v0, "\u06df\u06e8\u06e1\u06d8\u06e1\u06e4\u06d7\u06e4\u06d7\u06dc\u06e1\u06d7\u06d9\u06e2\u06da\u06e5\u06d8\u06e4\u06d9\u06df\u06dc\u06d9\u06dc\u06db\u06e6\u06d8\u06df\u06da\u06eb\u06d6\u06e2\u06e5\u06df\u06db\u06e5\u06d8\u06eb\u06da\u06dc\u06d8\u06e8\u06db\u06e0\u06df\u06dc\u06d8\u06e5\u06e4\u06e4\u06ec\u06da\u06d7"

    goto :goto_1

    :cond_0
    const-string v0, "\u06e5\u06e4\u06e5\u06d8\u06d8\u06d9\u06e2\u06d7\u06e5\u06e6\u06d8\u06e0\u06dc\u06eb\u06d9\u06d7\u06db\u06df\u06da\u06d7\u06df\u06e1\u06e4\u06d8\u06df\u06e2\u06e1\u06df\u06d6\u06d8\u06d7\u06db\u06e5\u06db\u06e6\u06db\u06e1\u06e6\u06e5\u06e0\u06e6\u06e8\u06ec\u06e6\u06da\u06d6\u06e2\u06e8\u06d8\u06e5\u06e6\u06e7\u06e0\u06e4\u06d6\u06e7\u06e8\u06d9"

    goto :goto_2

    :sswitch_7
    if-eqz v1, :cond_0

    const-string v0, "\u06da\u06e7\u06e6\u06d8\u06eb\u06e0\u06e5\u06d8\u06ec\u06e1\u06e6\u06d9\u06e8\u06d8\u06d8\u06e7\u06e1\u06d6\u06e0\u06dc\u06d8\u06e5\u06d6\u06dc\u06d8\u06e7\u06da\u06df\u06e2\u06eb\u06d7\u06d7\u06db\u06d9\u06db\u06e7\u06e0\u06e7\u06e8\u06e4"

    goto :goto_2

    :sswitch_8
    const-string v0, "\u06e7\u06e5\u06d8\u06dc\u06e4\u06d7\u06e2\u06e8\u06e5\u06d8\u06dc\u06e8\u06d6\u06d6\u06e2\u06d6\u06d8\u06e7\u06e7\u06d6\u06d8\u06da\u06e0\u06e5\u06eb\u06d8\u06d9\u06e4\u06e8\u06e1\u06d8\u06e6\u06d8\u06df"

    goto :goto_2

    :sswitch_9
    const-string v0, "\u06d7\u06d7\u06eb\u06e0\u06d6\u06db\u06e5\u06d7\u06d7\u06e5\u06eb\u06dc\u06e4\u06dc\u06d8\u06d8\u06e7\u06e2\u06e8\u06d8\u06e7\u06df\u06dc\u06e2\u06e8\u06e0\u06d8\u06df\u06e5\u06e4\u06d6\u06e7\u06d8"

    goto :goto_1

    :sswitch_a
    const-string v0, "\u06d9\u06d8\u06e0\u06d6\u06e7\u06eb\u06e0\u06d6\u06e8\u06d8\u06e6\u06e0\u06e5\u06d8\u06d7\u06dc\u06e8\u06d8\u06e1\u06d9\u06d6\u06e7\u06eb\u06d9\u06d9\u06df\u06e1\u06d8\u06ec\u06e4\u06dc\u06e7\u06e1\u06e7\u06d8\u06db\u06df\u06d6\u06d7\u06e6\u06e6\u06d6\u06e7\u06e1\u06d8\u06e2\u06e1\u06e1\u06df\u06e8\u06db"

    goto :goto_1

    :sswitch_b
    const-string v0, "\u06d9\u06d8\u06d8\u06e2\u06d9\u06e7\u06da\u06d7\u06db\u06e8\u06e1\u06e6\u06d8\u06eb\u06e7\u06e8\u06d8\u06d7\u06d6\u06eb\u06eb\u06d7\u06e5\u06d8\u06eb\u06db\u06da\u06d9\u06ec\u06dc\u06d8\u06db\u06d9\u06d6\u06d8\u06e5\u06df\u06df\u06e8\u06ec\u06ec\u06ec\u06e0\u06e6\u06dc\u06e2\u06e7\u06d7\u06e8\u06e1\u06da\u06e8\u06e5"

    goto :goto_0

    :sswitch_c
    invoke-static {}, Lz2/qc;->OooO0o()Lz2/qc;

    move-result-object v0

    invoke-virtual {v1}, Lcom/cyjh/elfin/entity/Script;->getId()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity$OooO00o;

    invoke-direct {v4, p0, v3}, Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity$OooO00o;-><init>(Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity;Ljava/lang/String;)V

    invoke-virtual {v0, p0, v2, v3, v4}, Lz2/qc;->OooOO0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lz2/qc$OooO00o;)V

    const-string v0, "\u06ec\u06dc\u06e8\u06d8\u06e4\u06e4\u06e8\u06e0\u06db\u06e8\u06d8\u06eb\u06e0\u06d7\u06e8\u06d8\u06df\u06d9\u06e6\u06df\u06e4\u06dc\u06d8\u06e8\u06da\u06ec\u06e4\u06e0\u06e7\u06e5\u06d6\u06d8\u06d8\u06d9\u06df\u06d6\u06d8\u06e2\u06d9\u06d6\u06d8\u06db\u06e5\u06e1\u06d8\u06e8\u06d7\u06d8\u06eb\u06da\u06e8\u06d8\u06e2\u06e6\u06eb\u06e1\u06df\u06e4\u06e8\u06d9\u06e6"

    goto :goto_0

    :sswitch_d
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity;->OooooO0:Lcom/cyjh/elfin/ui/view/customview/TitleView;

    new-instance v2, Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity$OooO0O0;

    invoke-direct {v2, p0}, Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity$OooO0O0;-><init>(Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    const-string v0, "\u06da\u06e4\u06dc\u06d7\u06dc\u06e2\u06ec\u06e4\u06dc\u06d8\u06d7\u06ec\u06e6\u06dc\u06e7\u06e0\u06db\u06dc\u06e1\u06ec\u06dc\u06df\u06eb\u06e5\u06db\u06e6\u06e0\u06e8\u06d8\u06ec\u06ec\u06dc\u06d8\u06dc\u06e7\u06ec\u06e4\u06e6\u06df\u06db\u06eb\u06e7\u06d8\u06eb\u06e6\u06d8"

    goto/16 :goto_0

    :sswitch_e
    const-string v0, "\u06e7\u06e6\u06e1\u06d8\u06e1\u06e6\u06eb\u06e8\u06d9\u06dc\u06d8\u06e7\u06da\u06dc\u06d8\u06da\u06e4\u06d7\u06d7\u06d9\u06eb\u06dc\u06e6\u06e5\u06d8\u06e7\u06da\u06e6\u06ec\u06db\u06df\u06db\u06db\u06d7\u06df\u06d7\u06e6\u06db\u06eb\u06e1\u06d8\u06da\u06d6\u06e5\u06d8\u06eb\u06e2\u06e6\u06d8"

    goto/16 :goto_0

    :sswitch_f
    const-string v0, "\u06da\u06e4\u06dc\u06d7\u06dc\u06e2\u06ec\u06e4\u06dc\u06d8\u06d7\u06ec\u06e6\u06dc\u06e7\u06e0\u06db\u06dc\u06e1\u06ec\u06dc\u06df\u06eb\u06e5\u06db\u06e6\u06e0\u06e8\u06d8\u06ec\u06ec\u06dc\u06d8\u06dc\u06e7\u06ec\u06e4\u06e6\u06df\u06db\u06eb\u06e7\u06d8\u06eb\u06e6\u06d8"

    goto/16 :goto_0

    :sswitch_10
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x6faef0ce -> :sswitch_4
        -0x53d7b0bb -> :sswitch_0
        -0x842ae67 -> :sswitch_3
        0xd07c1ee -> :sswitch_c
        0x1a2a9d00 -> :sswitch_10
        0x1c2df2ab -> :sswitch_f
        0x26f05b7d -> :sswitch_1
        0x393a70ee -> :sswitch_2
        0x5456b4b3 -> :sswitch_d
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x2b96fecd -> :sswitch_5
        0x3c724858 -> :sswitch_b
        0x3f7d3252 -> :sswitch_a
        0x40b7e49b -> :sswitch_e
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        -0x68ce80cc -> :sswitch_9
        -0x65a0f4ec -> :sswitch_6
        -0x64141ceb -> :sswitch_7
        0x56dd8d1 -> :sswitch_8
    .end sparse-switch
.end method

.method private initData()V
    .locals 5

    const/4 v1, 0x0

    const-string v0, "\u06d6\u06df\u06e1\u06d8\u06d7\u06e8\u06d9\u06d7\u06eb\u06d6\u06e1\u06ec\u06e5\u06d8\u06e2\u06e1\u06e6\u06d8\u06d7\u06e8\u06e4\u06e1\u06e7\u06dc\u06d9\u06eb\u06eb\u06ec\u06e6\u06d6\u06dc\u06d7\u06e2\u06d8\u06e6\u06df\u06e7\u06e1\u06d8\u06e5\u06e7\u06da\u06e7\u06e8\u06eb\u06d6\u06eb\u06d6\u06d8\u06db\u06dc\u06db"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v3, 0x266

    xor-int/2addr v2, v3

    xor-int/lit16 v2, v2, 0xad

    const/16 v3, 0x28a

    const v4, -0x2f284108

    xor-int/2addr v2, v3

    xor-int/2addr v2, v4

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06df\u06ec\u06e2\u06e5\u06d8\u06d7\u06db\u06e2\u06e1\u06d8\u06e6\u06e7\u06e0\u06dc\u06d7\u06dc\u06d8\u06ec\u06dc\u06d7\u06e7\u06e1\u06e8\u06d8\u06d9\u06df\u06eb\u06e1\u06e4\u06d6\u06e0\u06d8\u06dc\u06d8\u06eb\u06e0\u06e7\u06d7\u06d6\u06eb\u06e4\u06d8\u06e4\u06ec\u06e6"

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity;->OooooO0:Lcom/cyjh/elfin/ui/view/customview/TitleView;

    const v2, 0x7f100246

    invoke-virtual {v0, v2}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setRightTvText(I)V

    const-string v0, "\u06e1\u06db\u06d9\u06e4\u06d7\u06d8\u06e6\u06e4\u06dc\u06d8\u06da\u06eb\u06df\u06db\u06d7\u06df\u06d9\u06d8\u06e8\u06d8\u06ec\u06d7\u06e8\u06e1\u06e2\u06d6\u06d8\u06e1\u06e2\u06dc\u06d8\u06ec\u06e2\u06e7"

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity;->OooooO0:Lcom/cyjh/elfin/ui/view/customview/TitleView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setVisibilityTvRight(I)V

    const-string v0, "\u06e1\u06da\u06e4\u06d6\u06e1\u06db\u06e4\u06d8\u06d6\u06e6\u06d9\u06dc\u06e6\u06d6\u06e0\u06db\u06da\u06d6\u06e6\u06e7\u06e7\u06e4\u06d6\u06da\u06da\u06eb\u06e7\u06da\u06e7\u06d8\u06ec\u06e8\u06d7\u06e7\u06e0\u06d6\u06e7\u06da\u06e6\u06ec\u06d8\u06d8\u06e5\u06e7\u06dc\u06d8\u06e5\u06dc\u06e1\u06d8"

    goto :goto_0

    :sswitch_3
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "device_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "\u06e4\u06e5\u06e5\u06d8\u06eb\u06ec\u06d6\u06d8\u06e5\u06e2\u06e1\u06d8\u06d8\u06d8\u06df\u06eb\u06eb\u06e7\u06d6\u06d8\u06d8\u06da\u06e1\u06d9\u06e2\u06ec\u06ec\u06e0\u06d9\u06e8\u06d8\u06d7\u06db\u06db\u06ec\u06d6\u06d8\u06e1\u06ec\u06d8\u06d8\u06e8\u06d8\u06e2\u06e7\u06e7\u06dc\u06d8\u06d8\u06e6\u06d8\u06e5\u06d9\u06da\u06e2\u06d7\u06d6\u06d8\u06da\u06d6\u06d8"

    goto :goto_0

    :sswitch_4
    const v2, -0x6abf2f82

    const-string v0, "\u06ec\u06e0\u06d6\u06db\u06e4\u06dc\u06d8\u06db\u06e7\u06d9\u06d6\u06db\u06e4\u06e6\u06e8\u06e1\u06d8\u06e1\u06e2\u06e5\u06d8\u06da\u06d6\u06ec\u06eb\u06dc\u06d8\u06d6\u06e5\u06e0\u06d8\u06db\u06d8\u06d7\u06d6\u06e5\u06da\u06df\u06d6\u06d8\u06ec\u06da\u06e6\u06d8\u06e2\u06e1\u06e4"

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v2

    sparse-switch v3, :sswitch_data_1

    goto :goto_1

    :sswitch_5
    const-string v0, "\u06dc\u06d8\u06e8\u06d8\u06e0\u06d9\u06db\u06d6\u06dc\u06e8\u06e7\u06e0\u06e1\u06e5\u06e6\u06d8\u06e8\u06e4\u06e6\u06d8\u06d7\u06d9\u06e6\u06e7\u06e4\u06dc\u06d8\u06e6\u06df\u06e5\u06d8\u06e1\u06e0\u06e6\u06da\u06da\u06e1\u06d8\u06db\u06e5\u06d9\u06dc\u06d7\u06e6\u06e1\u06d9\u06d6\u06e4\u06db\u06ec\u06d7\u06e4\u06d8"

    goto :goto_0

    :sswitch_6
    const-string v0, "\u06df\u06e0\u06e8\u06d8\u06df\u06e4\u06ec\u06e0\u06e2\u06e6\u06dc\u06e8\u06d9\u06e8\u06dc\u06db\u06d8\u06e4\u06e4\u06e2\u06d6\u06e8\u06e4\u06db\u06da\u06e2\u06db\u06e7\u06e0\u06da\u06e8\u06db\u06e4\u06e1\u06d8\u06eb\u06ec\u06e2\u06dc\u06e6\u06e5\u06e5\u06d7\u06e1\u06e4\u06eb\u06e6\u06dc\u06da\u06e6\u06e0\u06da\u06e4\u06e0\u06dc"

    goto :goto_1

    :sswitch_7
    const v3, -0x598844d8

    const-string v0, "\u06d7\u06db\u06da\u06e5\u06e5\u06dc\u06d6\u06e6\u06d9\u06db\u06df\u06e1\u06d8\u06e2\u06e8\u06d7\u06d8\u06e0\u06e8\u06d8\u06d9\u06e6\u06e1\u06d8\u06e7\u06e6\u06df\u06d8\u06e1\u06db\u06e8\u06d8\u06d8\u06d6\u06e8\u06d6\u06d8\u06e8\u06e6\u06e7\u06e5\u06d8\u06e5\u06d8\u06d9\u06d9\u06d6\u06d8\u06eb\u06db\u06d9\u06e7\u06e2\u06d6"

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    xor-int/2addr v4, v3

    sparse-switch v4, :sswitch_data_2

    goto :goto_2

    :sswitch_8
    const-string v0, "\u06ec\u06ec\u06e6\u06d8\u06e2\u06e6\u06e6\u06d8\u06d9\u06e4\u06e1\u06e2\u06da\u06db\u06da\u06e7\u06df\u06d8\u06e2\u06df\u06d6\u06e1\u06e2\u06e7\u06e6\u06d8\u06d8\u06df\u06d7\u06d8\u06d6\u06d8\u06d8\u06d6\u06e7\u06d8\u06e8\u06dc\u06d8\u06e1\u06eb\u06df\u06eb\u06e7\u06d8\u06d8\u06dc\u06da\u06d8\u06e6\u06d7\u06e2\u06e4\u06e0\u06d8\u06ec\u06e7\u06e8"

    goto :goto_1

    :cond_0
    const-string v0, "\u06e4\u06e4\u06d6\u06d8\u06df\u06ec\u06dc\u06d8\u06eb\u06e6\u06dc\u06df\u06e1\u06e6\u06db\u06df\u06e6\u06eb\u06e0\u06eb\u06dc\u06df\u06e4\u06df\u06df\u06e4\u06d9\u06db\u06d8\u06e6\u06e4\u06e2\u06e2\u06dc\u06d8\u06d8\u06e4\u06dc\u06d8\u06db\u06d6\u06e6\u06e1\u06d9\u06e0\u06e8\u06e8\u06e6\u06e4\u06e5\u06e1\u06d8"

    goto :goto_2

    :sswitch_9
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "\u06da\u06e5\u06d6\u06d8\u06d8\u06e1\u06dc\u06d8\u06e6\u06d9\u06e1\u06da\u06e2\u06dc\u06d8\u06e1\u06e8\u06e6\u06e1\u06eb\u06eb\u06d7\u06eb\u06da\u06dc\u06e4\u06e6\u06d8\u06d8\u06d9\u06e7\u06d7\u06d8\u06d8\u06d8\u06dc\u06e6\u06d6\u06d8\u06e8\u06dc\u06d8"

    goto :goto_2

    :sswitch_a
    const-string v0, "\u06e0\u06d6\u06db\u06da\u06d9\u06e5\u06d8\u06d9\u06d9\u06e5\u06e0\u06e0\u06eb\u06e1\u06db\u06e1\u06dc\u06d7\u06e7\u06dc\u06e6\u06e6\u06e2\u06da\u06e0\u06d8\u06e1\u06e1\u06e6\u06da\u06d7\u06d8\u06e8\u06e1\u06e7\u06e4\u06e6"

    goto :goto_2

    :sswitch_b
    const-string v0, "\u06e5\u06e4\u06e0\u06e0\u06da\u06e2\u06e0\u06e6\u06e2\u06d6\u06e7\u06e4\u06da\u06ec\u06e0\u06e7\u06e0\u06e8\u06d8\u06d9\u06e6\u06da\u06d6\u06e8\u06ec\u06e2\u06dc\u06e2\u06e1\u06eb\u06d6\u06dc\u06dc\u06dc\u06e6\u06ec\u06db\u06e4\u06e4\u06e2\u06d6\u06e8\u06eb\u06e1\u06db\u06ec\u06d8\u06e7\u06d8\u06d6\u06d8\u06da\u06e1\u06e6\u06e0"

    goto :goto_1

    :sswitch_c
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity;->OooooOO:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "\u06df\u06e2\u06e6\u06d8\u06e1\u06e7\u06e2\u06d7\u06e7\u06e4\u06e5\u06eb\u06d9\u06d7\u06da\u06d7\u06ec\u06e5\u06d8\u06e1\u06ec\u06e8\u06e6\u06e5\u06e5\u06d8\u06df\u06da\u06d6\u06d6\u06df\u06dc\u06d8\u06d7\u06ec\u06e1\u06d8\u06dc\u06d9\u06e4\u06e1\u06df\u06db\u06da\u06eb\u06d6\u06e6\u06e2\u06db\u06db\u06e8\u06d8\u06e6\u06d8\u06dc\u06d8\u06eb\u06ec\u06ec"

    goto :goto_0

    :sswitch_d
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity;->OooooOO:Landroid/widget/EditText;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setSelection(I)V

    const-string v0, "\u06d6\u06d9\u06dc\u06e7\u06ec\u06e0\u06ec\u06eb\u06d6\u06d8\u06e4\u06e8\u06dc\u06d8\u06ec\u06d8\u06e2\u06d6\u06db\u06e6\u06d8\u06d9\u06e0\u06e8\u06d8\u06d7\u06e2\u06e6\u06d8\u06df\u06d8\u06e5\u06df\u06db\u06e5"

    goto/16 :goto_0

    :sswitch_e
    const-string v0, "\u06d6\u06d9\u06dc\u06e7\u06ec\u06e0\u06ec\u06eb\u06d6\u06d8\u06e4\u06e8\u06dc\u06d8\u06ec\u06d8\u06e2\u06d6\u06db\u06e6\u06d8\u06d9\u06e0\u06e8\u06d8\u06d7\u06e2\u06e6\u06d8\u06df\u06d8\u06e5\u06df\u06db\u06e5"

    goto/16 :goto_0

    :sswitch_f
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x79b01361 -> :sswitch_1
        -0x52a219fd -> :sswitch_c
        -0x5235cccb -> :sswitch_0
        -0x30fdd1d7 -> :sswitch_d
        -0x22a9e598 -> :sswitch_3
        -0x179d72e0 -> :sswitch_4
        0xb0c26e2 -> :sswitch_f
        0x65c5fc81 -> :sswitch_2
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x70c60dc7 -> :sswitch_e
        0x1e64ee87 -> :sswitch_7
        0x513e4296 -> :sswitch_b
        0x7ac27f6a -> :sswitch_5
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        -0x78d0c9ba -> :sswitch_6
        0x3f6fd20 -> :sswitch_9
        0x19925147 -> :sswitch_a
        0x1a995379 -> :sswitch_8
    .end sparse-switch
.end method

.method private initListener()V
    .locals 4

    const-string v0, "\u06d6\u06e6\u06e6\u06e5\u06eb\u06df\u06d9\u06e5\u06d8\u06d8\u06dc\u06e0\u06da\u06e1\u06e1\u06db\u06e1\u06e6\u06da\u06e2\u06e7\u06e1\u06ec\u06e4\u06d7\u06d7\u06e2\u06df\u06dc\u06e5\u06d8\u06e6\u06e0\u06e6\u06d8\u06da\u06e6\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x32b

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x31f

    const/16 v2, 0x3bd

    const v3, -0x8914f4f

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e8\u06d9\u06e4\u06e5\u06da\u06e8\u06ec\u06e7\u06dc\u06e0\u06e4\u06dc\u06ec\u06e4\u06e4\u06e5\u06da\u06e5\u06e1\u06da\u06e5\u06d9\u06e5\u06dc\u06ec\u06d9\u06d8\u06e7\u06db\u06d8\u06d8\u06df\u06da\u06d6\u06da\u06d8\u06df\u06dc\u06ec\u06da\u06e8\u06e8"

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity;->Oooooo0:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "\u06d7\u06e1\u06d6\u06df\u06e2\u06d8\u06e5\u06e8\u06e1\u06d8\u06e6\u06df\u06eb\u06d9\u06dc\u06dc\u06e0\u06e0\u06e5\u06d8\u06e4\u06e6\u06e7\u06d8\u06e8\u06e5\u06e6\u06e0\u06da\u06e0\u06e6\u06ec\u06e6\u06e1\u06d6\u06e5\u06e1\u06e5\u06da\u06eb\u06e1\u06e8\u06d8\u06e1\u06db\u06e6\u06d8"

    goto :goto_0

    :sswitch_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x57a9e3e4 -> :sswitch_1
        0x33e38419 -> :sswitch_0
        0x4b34b233 -> :sswitch_2
    .end sparse-switch
.end method

.method private initView()V
    .locals 5

    const/4 v2, 0x0

    const-string v0, "\u06e0\u06e6\u06e4\u06dc\u06e5\u06e5\u06d8\u06e4\u06e5\u06ec\u06e6\u06e7\u06dc\u06d8\u06d7\u06d8\u06d6\u06d8\u06e2\u06db\u06e1\u06e8\u06e2\u06e0\u06ec\u06d8\u06d9\u06e5\u06df\u06eb\u06db\u06df\u06e1\u06d8"

    move-object v1, v0

    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v3, 0x294

    xor-int/2addr v0, v3

    xor-int/lit16 v0, v0, 0x275

    const/16 v3, 0x144

    const v4, -0x396b90f6    # -18999.52f

    xor-int/2addr v0, v3

    xor-int/2addr v0, v4

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e4\u06da\u06d9\u06e0\u06e4\u06e7\u06e2\u06e7\u06e4\u06d9\u06db\u06d6\u06d8\u06e8\u06ec\u06df\u06d8\u06db\u06da\u06e8\u06da\u06d7\u06e1\u06eb\u06e7\u06e4\u06d6\u06d7\u06dc\u06e6\u06e0\u06d6\u06e8\u06e1\u06d8\u06e5\u06da\u06e7\u06e7\u06d9\u06e6\u06d8\u06da\u06d9\u06e5\u06d8"

    move-object v1, v0

    goto :goto_0

    :sswitch_1
    const v0, 0x7f09043a

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cyjh/elfin/ui/view/customview/TitleView;

    const-string v1, "\u06e6\u06d6\u06e6\u06d8\u06d7\u06dc\u06d8\u06d8\u06e7\u06ec\u06dc\u06df\u06da\u06e7\u06e8\u06da\u06d7\u06dc\u06e6\u06d7\u06da\u06d8\u06e7\u06dc\u06e6\u06e2\u06d9\u06e4\u06e5\u06d6\u06ec"

    move-object v2, v0

    goto :goto_0

    :sswitch_2
    iput-object v2, p0, Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity;->OooooO0:Lcom/cyjh/elfin/ui/view/customview/TitleView;

    const-string v0, "\u06ec\u06e0\u06e1\u06e5\u06d9\u06d7\u06da\u06eb\u06e2\u06e6\u06eb\u06e6\u06ec\u06d8\u06d8\u06e2\u06d7\u06e1\u06d8\u06d6\u06e1\u06da\u06d9\u06db\u06d8\u06ec\u06e8\u06e6\u06ec\u06db\u06d8"

    move-object v1, v0

    goto :goto_0

    :sswitch_3
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setVisibilityTvRight(I)V

    const-string v0, "\u06e1\u06e8\u06d8\u06ec\u06d6\u06e5\u06d8\u06e0\u06d8\u06d8\u06e4\u06d8\u06df\u06df\u06d6\u06e2\u06e6\u06e7\u06e5\u06d6\u06d8\u06ec\u06e6\u06d9\u06e6\u06e2\u06e6\u06d8\u06e5\u06df\u06e7\u06e2\u06eb\u06db\u06e7\u06dc\u06da\u06e8\u06d9\u06e1\u06d7\u06ec\u06e8\u06e4\u06e5\u06e4\u06e4\u06ec\u06dc\u06e0\u06dc\u06df\u06e8\u06eb\u06e6"

    move-object v1, v0

    goto :goto_0

    :sswitch_4
    const v0, 0x7f090290

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity;->OooooOO:Landroid/widget/EditText;

    const-string v0, "\u06e2\u06d6\u06d6\u06e4\u06df\u06d6\u06d8\u06e0\u06e2\u06e7\u06d8\u06e4\u06e4\u06e7\u06e5\u06d8\u06d8\u06e8\u06ec\u06e7\u06df\u06df\u06d6\u06e7\u06d9\u06e5\u06ec\u06d9\u06d6\u06e1\u06d8"

    move-object v1, v0

    goto :goto_0

    :sswitch_5
    const v0, 0x7f09032c

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity;->Oooooo0:Landroid/widget/ImageView;

    const-string v0, "\u06e4\u06d7\u06e1\u06e8\u06e6\u06e5\u06d8\u06d7\u06e8\u06d9\u06eb\u06d9\u06eb\u06e5\u06e1\u06e5\u06d8\u06d7\u06e5\u06e8\u06d8\u06d9\u06df\u06e1\u06d8\u06e2\u06e4\u06d7\u06d8\u06e2\u06e7\u06d6\u06db\u06ec\u06ec\u06da\u06da\u06e2\u06e6\u06e0\u06e6\u06d8\u06dc\u06e5\u06e1\u06d8\u06eb\u06eb\u06e2\u06e7\u06da\u06d8\u06d8"

    move-object v1, v0

    goto :goto_0

    :sswitch_6
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x4586b3df -> :sswitch_0
        -0x203c7fc9 -> :sswitch_3
        0x163e66d8 -> :sswitch_1
        0x1e24e2bd -> :sswitch_6
        0x3ebc32b4 -> :sswitch_4
        0x5a052892 -> :sswitch_2
        0x78f8915f -> :sswitch_5
    .end sparse-switch
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const-string v0, "\u06e7\u06da\u06ec\u06e8\u06e0\u06da\u06e0\u06d8\u06df\u06e2\u06df\u06d6\u06ec\u06d9\u06e6\u06d8\u06e6\u06db\u06e7\u06e0\u06e4\u06dc\u06e7\u06e6\u06e2\u06d7\u06e2\u06ec\u06db\u06e5\u06d8\u06eb\u06e2\u06dc\u06d8\u06db\u06d9\u06e8\u06e5\u06e8\u06e6\u06d6\u06d9\u06eb\u06e6\u06e1\u06e6\u06d8\u06da\u06dc\u06e1\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x1db

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x13e

    const/16 v2, 0x381

    const v3, 0x29cb15a6

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d9\u06da\u06e7\u06e6\u06e7\u06d8\u06e7\u06d8\u06d8\u06e2\u06d7\u06da\u06df\u06d6\u06ec\u06e6\u06dc\u06e1\u06dc\u06d9\u06e7\u06db\u06d7\u06df\u06e2\u06eb\u06df\u06ec\u06e2\u06dc\u06d9\u06e4\u06e5\u06e0\u06db\u06e5\u06e1\u06d6\u06d8\u06db\u06ec\u06e4"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06db\u06eb\u06dc\u06d8\u06e4\u06dc\u06e4\u06e5\u06e7\u06e7\u06df\u06e1\u06d8\u06e6\u06e0\u06e1\u06da\u06eb\u06d6\u06d8\u06da\u06db\u06d8\u06e2\u06e8\u06eb\u06ec\u06e7\u06d8\u06e0\u06e0\u06dc\u06e7\u06d8\u06e1\u06d8\u06d8\u06d8"

    goto :goto_0

    :sswitch_2
    const v1, -0x45bb6601

    const-string v0, "\u06da\u06d9\u06e6\u06d8\u06e6\u06e6\u06e8\u06df\u06e1\u06e2\u06d6\u06e8\u06db\u06d8\u06e1\u06ec\u06e6\u06d8\u06eb\u06ec\u06e5\u06d8\u06e7\u06e0\u06d7\u06e5\u06d8\u06e7\u06da\u06e0\u06dc"

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v2, v1

    sparse-switch v2, :sswitch_data_1

    goto :goto_1

    :sswitch_3
    const-string v0, "\u06e0\u06eb\u06e6\u06eb\u06e8\u06e2\u06e5\u06da\u06e2\u06dc\u06e4\u06df\u06d9\u06dc\u06df\u06e6\u06e8\u06e8\u06d8\u06e6\u06e8\u06e4\u06e7\u06dc\u06ec\u06da\u06e1\u06dc\u06d8\u06e7\u06eb\u06eb\u06e4\u06e7\u06df\u06e8\u06e6\u06d9\u06e8\u06eb\u06d7\u06d7\u06e0\u06e1"

    goto :goto_1

    :sswitch_4
    const-string v0, "\u06e6\u06e0\u06d8\u06d8\u06df\u06e8\u06d6\u06d8\u06eb\u06e7\u06e8\u06e8\u06e2\u06dc\u06d8\u06e4\u06d8\u06e1\u06db\u06e0\u06dc\u06dc\u06dc\u06d7\u06d7\u06db\u06e8\u06eb\u06dc\u06d6\u06d8\u06e2\u06d6\u06e8\u06e0\u06ec\u06e5\u06dc\u06d7\u06da\u06e2\u06d9\u06e8\u06d8\u06d8\u06e1\u06e8\u06d8\u06e7\u06da\u06e1\u06dc\u06e1\u06e1\u06d8"

    goto :goto_1

    :sswitch_5
    const v2, 0x74efc0cb

    const-string v0, "\u06d6\u06e5\u06d9\u06d6\u06e2\u06dc\u06e6\u06e1\u06e1\u06d8\u06e5\u06d9\u06e5\u06d8\u06d7\u06d9\u06d8\u06d8\u06e2\u06e6\u06e2\u06d9\u06d9\u06e5\u06d8\u06e4\u06e0\u06d8\u06d8\u06e5\u06e6\u06e8\u06d7\u06e2\u06db\u06e8\u06e8\u06e6\u06d7\u06ec\u06d8\u06d8\u06e0\u06db\u06d6\u06d6\u06e5\u06e8\u06d8\u06e5\u06e0\u06e8\u06d8\u06dc\u06e4\u06da\u06e6\u06e1\u06d6\u06d6\u06e4"

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v2

    sparse-switch v3, :sswitch_data_2

    goto :goto_2

    :sswitch_6
    const-string v0, "\u06e8\u06e6\u06dc\u06d8\u06d6\u06dc\u06e5\u06e5\u06db\u06db\u06e1\u06e6\u06e8\u06dc\u06ec\u06d9\u06d8\u06d8\u06d8\u06e7\u06e7\u06df\u06e7\u06df\u06e1\u06eb\u06eb\u06db\u06ec\u06e0\u06dc\u06d8\u06e1\u06e5\u06db\u06e0\u06e0\u06e8\u06d8\u06da\u06e4\u06e0\u06e1\u06e7\u06d9\u06e4\u06dc\u06ec\u06e1\u06db\u06e5\u06ec\u06e1\u06e8\u06d8\u06eb\u06e4\u06eb"

    goto :goto_2

    :cond_0
    const-string v0, "\u06db\u06d9\u06df\u06e2\u06d8\u06e6\u06e7\u06df\u06e1\u06d6\u06d8\u06e2\u06e2\u06d7\u06db\u06d9\u06e1\u06d6\u06eb\u06e1\u06d8\u06e2\u06e5\u06d8\u06e6\u06e5\u06e4\u06e1\u06e4\u06d6\u06d8\u06e8\u06db\u06df\u06d7\u06e7\u06dc\u06e8\u06d6\u06e0\u06dc\u06eb\u06e5\u06d8\u06dc\u06e8\u06e1\u06d8\u06eb\u06df\u06e5\u06e6\u06e4\u06e7\u06db\u06e4\u06e5\u06d8"

    goto :goto_2

    :sswitch_7
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v3, 0x7f09032c

    if-eq v0, v3, :cond_0

    const-string v0, "\u06d8\u06d6\u06dc\u06db\u06e0\u06d6\u06e1\u06e5\u06e7\u06d8\u06d9\u06da\u06df\u06df\u06d8\u06ec\u06e4\u06e7\u06e1\u06d8\u06e4\u06db\u06eb\u06e2\u06d7\u06d9\u06e1\u06e2\u06ec\u06d7\u06dc\u06df"

    goto :goto_2

    :sswitch_8
    const-string v0, "\u06df\u06ec\u06da\u06d6\u06d7\u06e8\u06d8\u06d7\u06e0\u06e8\u06d8\u06eb\u06e8\u06da\u06e1\u06eb\u06d8\u06d8\u06db\u06ec\u06d8\u06e7\u06d9\u06e8\u06e2\u06e0\u06ec\u06e6\u06e1\u06d7\u06e0\u06ec\u06d8\u06d8\u06e2\u06e2\u06da\u06d8\u06e1\u06df\u06e8\u06e7\u06db\u06e4\u06d9\u06d6\u06d8"

    goto :goto_1

    :sswitch_9
    const-string v0, "\u06e7\u06e4\u06e6\u06dc\u06e6\u06df\u06e7\u06e8\u06d9\u06eb\u06d7\u06dc\u06e1\u06e4\u06e5\u06df\u06d8\u06e5\u06e1\u06df\u06df\u06e5\u06d6\u06e5\u06eb\u06e4\u06e4\u06e6\u06df"

    goto :goto_0

    :sswitch_a
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity;->OooooOO:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "\u06e5\u06db\u06e4\u06e6\u06e2\u06e5\u06d8\u06da\u06ec\u06d8\u06dc\u06db\u06e2\u06e7\u06d8\u06d8\u06d8\u06da\u06e0\u06df\u06d7\u06e1\u06e4\u06dc\u06e1\u06d8\u06d8\u06df\u06e6\u06df\u06da\u06e1\u06e7\u06e8\u06d8\u06eb\u06e5\u06e1\u06d8\u06d7\u06e0\u06dc\u06d8\u06ec\u06e1\u06d8"

    goto :goto_0

    :sswitch_b
    const-string v0, "\u06e2\u06e2\u06d6\u06d6\u06e1\u06e8\u06d8\u06d9\u06eb\u06e8\u06d6\u06d9\u06e6\u06e0\u06d8\u06e1\u06e6\u06d8\u06e2\u06d7\u06d9\u06e1\u06d8\u06d8\u06df\u06d8\u06e2\u06e8\u06db\u06d9\u06eb\u06d6\u06d8\u06ec\u06e2\u06d8\u06e5\u06ec\u06e1\u06e1\u06e0\u06e8\u06e0\u06dc\u06eb\u06e5\u06db\u06ec\u06e0\u06df\u06e8\u06db\u06e2\u06d8\u06ec\u06e8\u06e5"

    goto :goto_0

    :sswitch_c
    const-string v0, "\u06e5\u06db\u06e4\u06e6\u06e2\u06e5\u06d8\u06da\u06ec\u06d8\u06dc\u06db\u06e2\u06e7\u06d8\u06d8\u06d8\u06da\u06e0\u06df\u06d7\u06e1\u06e4\u06dc\u06e1\u06d8\u06d8\u06df\u06e6\u06df\u06da\u06e1\u06e7\u06e8\u06d8\u06eb\u06e5\u06e1\u06d8\u06d7\u06e0\u06dc\u06d8\u06ec\u06e1\u06d8"

    goto :goto_0

    :sswitch_d
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x753a7e44 -> :sswitch_2
        -0x5fa6bc43 -> :sswitch_a
        -0x4d37e57a -> :sswitch_d
        -0x33307db4 -> :sswitch_1
        -0x14bc5ad0 -> :sswitch_0
        0x519b71a1 -> :sswitch_c
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x7ef21758 -> :sswitch_b
        0x941caa1 -> :sswitch_3
        0x21ac09c7 -> :sswitch_9
        0x419b2428 -> :sswitch_5
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        -0x6f833ff7 -> :sswitch_4
        -0x3ff84843 -> :sswitch_7
        0x6419aaa -> :sswitch_8
        0x777d851d -> :sswitch_6
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    const-string v0, "\u06d9\u06e6\u06d8\u06d8\u06da\u06d9\u06eb\u06ec\u06d9\u06eb\u06da\u06e4\u06d6\u06d9\u06ec\u06d8\u06e4\u06e5\u06d8\u06da\u06e2\u06da\u06e4\u06e5\u06d8\u06dc\u06d8\u06e7\u06d8\u06e4\u06d8\u06d8\u06e4\u06e2\u06ec\u06e4\u06db\u06e5\u06d8\u06d8\u06e6\u06e5\u06d8\u06e0\u06e4\u06e2\u06da\u06db\u06da\u06e7\u06d7\u06d7"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x66

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0xe1

    const/16 v2, 0x83

    const v3, 0x7735eed6

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06df\u06e4\u06d6\u06da\u06e0\u06e6\u06dc\u06dc\u06e5\u06d8\u06e1\u06d8\u06e1\u06e7\u06df\u06e7\u06d8\u06e4\u06df\u06e0\u06db\u06ec\u06e2\u06e2\u06e5\u06e7\u06e0\u06e6\u06d8\u06e7\u06d9\u06d8\u06e4\u06d6\u06d8\u06e7\u06e4\u06d7\u06d6\u06dc\u06df\u06d9\u06e8\u06d8\u06e4\u06e2\u06e8\u06d8\u06df\u06e2\u06e4"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06da\u06d8\u06e0\u06ec\u06ec\u06e5\u06d7\u06eb\u06e7\u06d8\u06d9\u06e8\u06d8\u06e0\u06e8\u06e1\u06e4\u06db\u06e2\u06e6\u06e2\u06e1\u06d8\u06db\u06db\u06e4\u06e2\u06e5\u06d6\u06d8\u06e4\u06e7\u06dc\u06d8\u06dc\u06e5\u06e8\u06d8\u06d8\u06e2\u06dc\u06d7\u06e4\u06da\u06e0\u06e6\u06d8\u06e4\u06e4\u06eb\u06dc\u06d6\u06d9\u06db\u06ec\u06e1\u06d8\u06e1\u06e6\u06dc\u06d8"

    goto :goto_0

    :sswitch_2
    invoke-super {p0, p1}, Lcom/cyjh/common/base/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "\u06d6\u06ec\u06dc\u06e2\u06d7\u06e8\u06db\u06e5\u06e6\u06db\u06d7\u06d8\u06e0\u06dc\u06d6\u06e8\u06da\u06dc\u06e5\u06e6\u06d8\u06dc\u06dc\u06d7\u06e7\u06e5\u06d8\u06e4\u06e2\u06d8\u06d8"

    goto :goto_0

    :sswitch_3
    const v0, 0x7f0c001f

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    const-string v0, "\u06e7\u06e2\u06da\u06e2\u06ec\u06e5\u06df\u06e7\u06e4\u06db\u06ec\u06e7\u06e1\u06e2\u06e8\u06e1\u06e2\u06ec\u06e4\u06e8\u06e1\u06dc\u06da\u06e4\u06e4\u06e5\u06e2\u06d7\u06d7\u06d6\u06d8\u06df\u06df\u06eb\u06da\u06d6\u06d6\u06d7\u06e0\u06eb\u06ec\u06e8"

    goto :goto_0

    :sswitch_4
    invoke-direct {p0}, Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity;->initView()V

    const-string v0, "\u06db\u06e4\u06e4\u06d9\u06df\u06dc\u06d8\u06d7\u06e7\u06d8\u06d8\u06e4\u06e6\u06df\u06d8\u06da\u06df\u06ec\u06da\u06eb\u06ec\u06e1\u06e7\u06e7\u06e0\u06e2\u06ec\u06e4\u06e6\u06e0\u06d9\u06df\u06db\u06df\u06e4\u06eb\u06e0\u06df\u06d8\u06eb\u06ec\u06d8\u06ec\u06d8\u06d8\u06e5\u06da\u06e8\u06eb\u06e6\u06d8\u06d8"

    goto :goto_0

    :sswitch_5
    invoke-direct {p0}, Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity;->OooOO0O()V

    const-string v0, "\u06e2\u06e5\u06d9\u06e4\u06e1\u06dc\u06ec\u06e0\u06ec\u06e5\u06ec\u06e8\u06d8\u06e8\u06d8\u06e8\u06d8\u06d6\u06d8\u06d8\u06e2\u06db\u06e8\u06d8\u06d7\u06e8\u06d6\u06d8\u06e7\u06e4\u06e6\u06d8\u06db\u06e1\u06d8\u06d8\u06e0\u06db\u06d6\u06e4\u06e1\u06e7\u06e7\u06e7\u06dc\u06e0\u06d7\u06e2\u06d9\u06df\u06e8\u06e0\u06e1\u06d8\u06d6\u06e6\u06e1\u06d8\u06d8\u06e0"

    goto :goto_0

    :sswitch_6
    invoke-direct {p0}, Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity;->initData()V

    const-string v0, "\u06eb\u06e4\u06e0\u06d8\u06e5\u06e4\u06d6\u06eb\u06e4\u06e8\u06e1\u06d9\u06e4\u06e4\u06dc\u06da\u06e0\u06d8\u06d7\u06e4\u06e8\u06d8\u06da\u06e1\u06db\u06e7\u06e0\u06dc\u06dc\u06d7\u06e0\u06da\u06ec\u06e2\u06e5\u06df\u06e0\u06d7\u06e8\u06e8\u06d6\u06e7\u06d6\u06d8\u06da\u06d9\u06dc\u06e7\u06db\u06da"

    goto :goto_0

    :sswitch_7
    invoke-direct {p0}, Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity;->initListener()V

    const-string v0, "\u06e1\u06e8\u06e6\u06e5\u06d8\u06e7\u06d8\u06da\u06d8\u06dc\u06e2\u06ec\u06e5\u06db\u06e7\u06e1\u06df\u06e7\u06db\u06e4\u06d8\u06d8\u06d8\u06e0\u06dc\u06d7\u06da\u06e8\u06e7\u06d6\u06d9\u06e0\u06e1\u06dc\u06d8\u06eb\u06d9\u06dc\u06eb\u06e0\u06d8\u06d8\u06e0\u06eb\u06e6"

    goto :goto_0

    :sswitch_8
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7ee2361a -> :sswitch_1
        -0x7e0eef28 -> :sswitch_5
        -0x7876d195 -> :sswitch_2
        -0x6aa5adb7 -> :sswitch_7
        -0x68bfb5b7 -> :sswitch_3
        -0x65790b86 -> :sswitch_8
        -0x19a1d64c -> :sswitch_0
        0x1a586dd -> :sswitch_4
        0x79405151 -> :sswitch_6
    .end sparse-switch
.end method

.method public onDestroy()V
    .locals 5

    const/4 v4, 0x0

    const-string v0, "\u06db\u06e8\u06e6\u06e7\u06e6\u06d6\u06d8\u06e7\u06e0\u06e7\u06dc\u06ec\u06db\u06e7\u06df\u06d6\u06e8\u06eb\u06eb\u06df\u06e6\u06d8\u06db\u06d9\u06e0\u06db\u06eb\u06d7\u06e1\u06e8\u06e6\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x23

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x2ef

    const/16 v2, 0x25a

    const v3, 0x6f1ef735

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e4\u06d9\u06d8\u06d8\u06d6\u06e4\u06e7\u06e1\u06e2\u06db\u06db\u06e5\u06d9\u06e7\u06e7\u06e1\u06dc\u06d8\u06da\u06d6\u06e5\u06da\u06d8\u06e2\u06d8\u06e1\u06da\u06e1\u06e5\u06e8\u06e1\u06e0\u06d9\u06db\u06e0\u06dc\u06ec\u06d9\u06d6\u06e1\u06eb\u06df\u06da"

    goto :goto_0

    :sswitch_1
    invoke-super {p0}, Lcom/cyjh/common/base/activity/BaseActivity;->onDestroy()V

    const-string v0, "\u06df\u06db\u06e1\u06d8\u06e1\u06eb\u06e6\u06d8\u06ec\u06d8\u06e5\u06db\u06e2\u06e5\u06d7\u06d9\u06e8\u06d9\u06eb\u06e6\u06d8\u06d9\u06e7\u06e0\u06e1\u06e7\u06e4\u06e7\u06e5\u06da\u06ec\u06e7\u06d7\u06e7\u06d7\u06e1\u06d8\u06e8\u06db\u06e1\u06db\u06e6\u06db\u06d9\u06e8\u06dc\u06dc\u06e1\u06df\u06ec\u06eb\u06e0\u06df\u06e8\u06d8\u06df\u06e6\u06e1\u06d8"

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity;->OooooOo:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const-string v0, "\u06ec\u06db\u06d6\u06d8\u06e1\u06d9\u06e5\u06dc\u06d6\u06e8\u06d8\u06e1\u06d8\u06da\u06e2\u06e6\u06d8\u06e0\u06da\u06e1\u06d8\u06d8\u06eb\u06e8\u06d8\u06e6\u06e2\u06e8\u06d8\u06eb\u06da\u06d6\u06d8\u06e5\u06d8\u06eb\u06d7\u06e8\u06eb\u06e2\u06e6\u06db\u06dc\u06d8\u06ec\u06da\u06e5\u06da\u06e8\u06e7\u06d8\u06d8\u06e2\u06eb\u06d6\u06e1\u06e8\u06e5\u06ec\u06e6\u06d8"

    goto :goto_0

    :sswitch_3
    iput-object v4, p0, Lcom/cyjh/elfin/ui/activity/studio/EditDeviceNameActivity;->OooooOo:Landroid/os/Handler;

    const-string v0, "\u06ec\u06da\u06e7\u06d9\u06eb\u06e7\u06d8\u06da\u06e1\u06d8\u06e0\u06ec\u06e5\u06dc\u06dc\u06da\u06d8\u06df\u06e8\u06d8\u06da\u06e4\u06dc\u06d8\u06d8\u06d8\u06e8\u06e5\u06da\u06d9\u06e8\u06d8\u06d6\u06d6\u06e6\u06e1\u06df\u06d8\u06e8\u06d8\u06e7\u06da\u06df\u06e8\u06d7\u06e8\u06d8\u06ec\u06e2\u06eb\u06e2\u06db\u06e6"

    goto :goto_0

    :sswitch_4
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x65f063bd -> :sswitch_4
        -0x449847d9 -> :sswitch_2
        0x14885301 -> :sswitch_3
        0x1d68873c -> :sswitch_1
        0x60cc2dad -> :sswitch_0
    .end sparse-switch
.end method
