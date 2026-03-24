.class public Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;
.super Lcom/cyjh/common/base/activity/BaseActivity;

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static o00o0O:Ljava/lang/String;


# instance fields
.field private OooooO0:Landroid/os/Handler;

.field private OooooOO:Landroid/widget/FrameLayout;

.field private OooooOo:Landroid/widget/TextView;

.field private Oooooo:Lcom/cyjh/elfin/ui/view/customview/TitleView;

.field private Oooooo0:Landroid/widget/EditText;

.field private OoooooO:Ljava/lang/String;

.field private Ooooooo:Ljava/lang/String;

.field private o00O0O:Ljava/lang/String;

.field private o00Oo0:Z

.field private o00Ooo:Z

.field private o0OoOo0:Ljava/lang/String;

.field private ooOO:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const-string v0, "\u06d6\u06ec\u06d8\u06e6\u06d8\u06e6\u06da\u06da\u06e5\u06e1\u06e0\u06db\u06db\u06e8\u06d9\u06dc\u06e4\u06db\u06e4\u06e0\u06eb\u06d6\u06d7\u06e8\u06d8\u06d6\u06db\u06df\u06e6\u06e5\u06e4\u06e8\u06e4\u06e4\u06eb\u06ec\u06db\u06e5\u06d6\u06e6\u06d8\u06d6\u06e4\u06dc\u06e7\u06e8\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x35

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x235

    const/4 v2, 0x1

    const v3, 0x72918f38

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-class v0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;->o00o0O:Ljava/lang/String;

    const-string v0, "\u06d7\u06d7\u06db\u06d6\u06e5\u06da\u06d8\u06ec\u06e6\u06d8\u06db\u06e1\u06d6\u06d8\u06d7\u06d6\u06d8\u06e6\u06db\u06e1\u06d8\u06d6\u06e4\u06e1\u06eb\u06d8\u06e6\u06df\u06da\u06dc\u06d8\u06eb\u06e5\u06eb"

    goto :goto_0

    :sswitch_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x67d3ae8c -> :sswitch_1
        0x34551620 -> :sswitch_0
    .end sparse-switch
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/cyjh/common/base/activity/BaseActivity;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;->OooooO0:Landroid/os/Handler;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;->o00Oo0:Z

    return-void
.end method

.method public static synthetic OooO(Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;)Ljava/lang/String;
    .locals 4

    const-string v0, "\u06e2\u06eb\u06da\u06da\u06ec\u06df\u06d8\u06e7\u06e1\u06dc\u06ec\u06ec\u06e7\u06db\u06da\u06e2\u06e5\u06e4\u06ec\u06d9\u06e8\u06d8\u06d7\u06eb\u06eb\u06df\u06ec\u06da\u06dc\u06e4\u06e8\u06d8\u06db\u06d7\u06d6\u06ec\u06e8\u06d8\u06d8\u06e1\u06d6\u06da\u06e7\u06e4"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0xef

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x3df

    const/16 v2, 0x137

    const v3, 0x4c8e15dc    # 7.4493664E7f

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e6\u06d9\u06e6\u06e5\u06d7\u06eb\u06da\u06ec\u06e1\u06e1\u06d6\u06e8\u06e5\u06e5\u06d8\u06db\u06d8\u06da\u06df\u06e1\u06da\u06e5\u06da\u06dc\u06e2\u06d6\u06d8\u06e2\u06e6\u06e5\u06d8\u06e7\u06e7\u06d6\u06df\u06e1\u06d6\u06e1\u06e5\u06eb\u06e7\u06e6\u06ec\u06db\u06eb\u06e1\u06d8\u06ec\u06e1\u06e4"

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;->Ooooooo:Ljava/lang/String;

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x18863d63 -> :sswitch_0
        0x70a1701c -> :sswitch_1
    .end sparse-switch
.end method

.method public static synthetic OooO0oO(Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;Z)Z
    .locals 4

    const-string v0, "\u06d6\u06e2\u06e5\u06d8\u06e0\u06eb\u06d9\u06e1\u06e0\u06e7\u06e0\u06e1\u06e4\u06d8\u06db\u06e0\u06e5\u06d7\u06e1\u06eb\u06db\u06e8\u06d8\u06d8\u06d6\u06e7\u06e5\u06d6\u06d7\u06eb\u06da\u06d7\u06dc\u06d8\u06d7\u06d6\u06e6\u06e4\u06e5\u06e8\u06d8\u06e5\u06e5\u06e4\u06db\u06da\u06e8\u06d8\u06e2\u06da\u06df\u06d8\u06e6\u06e6\u06d8\u06d6\u06d9\u06d9"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x2ea

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x3e0

    const/16 v2, 0x129

    const v3, 0x6b6a6721

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e5\u06df\u06e6\u06e8\u06e7\u06d8\u06e1\u06dc\u06dc\u06df\u06d9\u06dc\u06d8\u06df\u06e8\u06e6\u06db\u06e7\u06d6\u06d8\u06dc\u06e0\u06e5\u06e6\u06e6\u06d6\u06df\u06d7\u06e2\u06eb\u06e6\u06e0\u06d9\u06e6\u06e5\u06d8\u06e5\u06df\u06d8\u06db\u06e1\u06d6\u06d8\u06e8\u06d9\u06ec\u06e1\u06d8\u06e2\u06e7\u06e1"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06da\u06e7\u06e6\u06e0\u06e4\u06d8\u06d8\u06e1\u06d9\u06d6\u06d8\u06dc\u06d9\u06d8\u06e5\u06df\u06da\u06e6\u06d9\u06e1\u06d7\u06e0\u06e1\u06d8\u06d9\u06d8\u06eb\u06e2\u06da\u06e8\u06d8\u06d9\u06eb\u06e7\u06e7\u06e5\u06e4\u06e1\u06ec\u06dc"

    goto :goto_0

    :sswitch_2
    iput-boolean p1, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;->o00Oo0:Z

    const-string v0, "\u06db\u06df\u06e5\u06d9\u06e6\u06e4\u06da\u06dc\u06eb\u06e7\u06e8\u06e6\u06d8\u06d9\u06e1\u06eb\u06dc\u06e8\u06e7\u06e1\u06e1\u06dc\u06e8\u06e4\u06d8\u06d6\u06e4\u06e6\u06e5\u06ec\u06e6\u06d8\u06da\u06df\u06e6\u06e5\u06db\u06e5"

    goto :goto_0

    :sswitch_3
    return p1

    :sswitch_data_0
    .sparse-switch
        -0x2019c5fd -> :sswitch_3
        0x317ae3d -> :sswitch_1
        0x1d620f17 -> :sswitch_0
        0x65a529bc -> :sswitch_2
    .end sparse-switch
.end method

.method public static synthetic OooO0oo(Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;)Lcom/cyjh/elfin/ui/view/customview/TitleView;
    .locals 4

    const-string v0, "\u06dc\u06d7\u06e6\u06d8\u06d8\u06e0\u06e5\u06d8\u06da\u06eb\u06dc\u06d8\u06da\u06d8\u06e0\u06db\u06e7\u06e8\u06e4\u06ec\u06df\u06e7\u06e6\u06e5\u06e1\u06e2\u06e2\u06eb\u06eb\u06e6\u06d8\u06db\u06e2\u06e1\u06d8\u06e2\u06d8\u06d6\u06d8\u06d8\u06d6\u06d8\u06da\u06da\u06e6\u06d8\u06e2\u06e7\u06e5\u06d8\u06df\u06e4\u06e6\u06d8\u06e4\u06d7\u06e1"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x1b0

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x1a5

    const/16 v2, 0x117

    const v3, 0x626bf749

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e6\u06d8\u06e0\u06db\u06df\u06e0\u06d8\u06ec\u06e6\u06d8\u06ec\u06e1\u06d8\u06d8\u06d9\u06ec\u06e5\u06dc\u06dc\u06e1\u06d8\u06e6\u06dc\u06e6\u06dc\u06eb\u06e1\u06e8\u06e5\u06e8\u06d8\u06df\u06d8\u06dc\u06d8\u06e4\u06e1\u06e0\u06d8\u06d6\u06eb\u06e0\u06e4\u06e5\u06d8\u06e8\u06e2\u06d8\u06e6\u06e2\u06d9\u06e4\u06db\u06e5\u06d8"

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;->Oooooo:Lcom/cyjh/elfin/ui/view/customview/TitleView;

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x3df66d4b -> :sswitch_0
        0x767dffa5 -> :sswitch_1
    .end sparse-switch
.end method

.method public static synthetic OooOO0(Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;)Ljava/lang/String;
    .locals 4

    const-string v0, "\u06e5\u06e2\u06d6\u06d8\u06db\u06d7\u06e8\u06d8\u06e0\u06e0\u06dc\u06d9\u06dc\u06d9\u06e1\u06eb\u06e6\u06e4\u06eb\u06d9\u06da\u06d8\u06e7\u06d7\u06e7\u06eb\u06e1\u06d9\u06e7\u06e5\u06d6\u06e6\u06d8\u06e2\u06eb\u06db\u06d9\u06e7\u06d8\u06d8\u06e4\u06e1\u06e0\u06eb\u06d6\u06e8\u06e6\u06df\u06d8\u06db\u06eb\u06e8\u06d8\u06ec\u06d6\u06ec\u06ec\u06ec\u06db"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x251

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x89

    const/16 v2, 0x1c6

    const v3, -0x39862f8

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e5\u06d6\u06e1\u06d8\u06d6\u06d6\u06e2\u06da\u06da\u06e1\u06d7\u06da\u06eb\u06e7\u06e4\u06d8\u06ec\u06da\u06da\u06e8\u06d6\u06e5\u06ec\u06e4\u06e1\u06eb\u06e0\u06d8\u06d8\u06d9\u06eb\u06e1\u06d8\u06e8\u06eb\u06dc\u06e4\u06e7\u06e0\u06db\u06dc\u06e1\u06d9\u06e5\u06e6\u06e4\u06ec\u06eb\u06d6\u06dc\u06e1\u06d8\u06e8\u06df\u06e5\u06d8\u06e6\u06e8\u06e5"

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;->o00O0O:Ljava/lang/String;

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x5427d6f1 -> :sswitch_1
        -0x1ce6478b -> :sswitch_0
    .end sparse-switch
.end method

.method public static synthetic OooOO0O(Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;)Z
    .locals 4

    const-string v0, "\u06e6\u06e1\u06e5\u06d8\u06ec\u06e5\u06dc\u06e4\u06e8\u06d6\u06e4\u06db\u06e5\u06d6\u06e7\u06d8\u06d9\u06dc\u06e0\u06e4\u06e7\u06e5\u06d8\u06e8\u06e5\u06e7\u06d8\u06e6\u06d7\u06df\u06db\u06d9\u06ec\u06e8\u06db\u06e8\u06e5\u06ec\u06e6\u06eb\u06ec\u06e7\u06e2\u06e4\u06ec\u06db\u06ec\u06e5\u06db\u06e6\u06d8\u06da\u06dc\u06dc\u06d8\u06d7\u06df\u06e0"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x15

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x2db

    const/16 v2, 0x2a

    const v3, -0x797766a3

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06dc\u06e6\u06df\u06e2\u06e6\u06e8\u06d8\u06e4\u06e7\u06d6\u06d8\u06df\u06df\u06e0\u06d6\u06da\u06d6\u06d9\u06e5\u06e4\u06e4\u06d9\u06dc\u06d8\u06e5\u06e1\u06e7\u06e0\u06ec\u06e6\u06d8\u06df\u06d8\u06d9\u06e1\u06e6\u06d8\u06ec\u06df\u06e8\u06d8\u06d6\u06e0\u06dc\u06e4\u06e5\u06e1"

    goto :goto_0

    :sswitch_1
    iget-boolean v0, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;->o00Ooo:Z

    return v0

    :sswitch_data_0
    .sparse-switch
        -0x70916263 -> :sswitch_1
        0x41c4c591 -> :sswitch_0
    .end sparse-switch
.end method

.method public static OooOO0o(Landroid/content/Context;)V
    .locals 4

    const-string v0, "\u06ec\u06e0\u06d6\u06e1\u06df\u06e8\u06e2\u06e8\u06e1\u06e5\u06dc\u06e8\u06dc\u06e1\u06db\u06e4\u06df\u06ec\u06d6\u06e4\u06e1\u06d6\u06d8\u06e6\u06e5\u06d7\u06ec\u06e6\u06e7\u06da\u06db\u06db\u06e0\u06ec\u06e0\u06da\u06df\u06ec\u06e8\u06e0\u06eb\u06e8\u06d7\u06dc\u06ec\u06e6\u06d7\u06d9\u06e5\u06dc\u06e2\u06e6\u06e5\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x3cd

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x2b3

    const/16 v2, 0x1cc

    const v3, 0x63bf6254

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e7\u06db\u06db\u06dc\u06e0\u06dc\u06db\u06e4\u06d8\u06d8\u06da\u06d8\u06d8\u06e1\u06da\u06e0\u06e0\u06e2\u06e5\u06d7\u06d7\u06e1\u06e0\u06eb\u06e6\u06db\u06ec\u06d8\u06db\u06e2\u06e8\u06e1\u06e1\u06d8\u06d8\u06e5\u06e7\u06e6\u06df\u06df\u06d8\u06e1\u06dc\u06e5"

    goto :goto_0

    :sswitch_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const-string v0, "\u06e4\u06df\u06ec\u06df\u06ec\u06d9\u06d9\u06dc\u06d6\u06e5\u06e8\u06d8\u06d8\u06db\u06d6\u06e6\u06d8\u06e8\u06df\u06e8\u06d8\u06d9\u06eb\u06df\u06eb\u06e8\u06db\u06db\u06e1\u06d8\u06da\u06d7\u06e0\u06e5\u06e0\u06e2\u06e5\u06da\u06eb\u06e5\u06dc\u06d6\u06e2\u06d9\u06d8\u06d8\u06db\u06eb\u06e0\u06df\u06d7\u06da\u06e5\u06eb\u06ec\u06e8\u06e8\u06d8\u06d8"

    goto :goto_0

    :sswitch_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5f09b088 -> :sswitch_2
        -0x24a3c7c0 -> :sswitch_1
        -0x45865fa -> :sswitch_0
    .end sparse-switch
.end method

.method public static OooOOO(Landroid/content/Context;)V
    .locals 5

    const/16 v4, 0x105

    const/4 v1, 0x0

    const-string v0, "\u06d9\u06d6\u06e1\u06d9\u06d7\u06dc\u06d8\u06e6\u06e6\u06e7\u06d8\u06e8\u06d9\u06db\u06dc\u06d7\u06eb\u06eb\u06d7\u06e0\u06ec\u06d9\u06e8\u06d8\u06e0\u06dc\u06dc\u06d8\u06e7\u06e4\u06e5\u06e8\u06d6\u06e7\u06e1\u06e1\u06d6\u06d8\u06e7\u06e7\u06dc\u06db\u06db\u06e0\u06d7\u06e8\u06e4"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v2, v4

    xor-int/lit16 v2, v2, 0xf3

    const v3, 0x540aa492

    xor-int/2addr v2, v4

    xor-int/2addr v2, v3

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d9\u06d7\u06e1\u06e4\u06ec\u06e4\u06e2\u06e0\u06ec\u06e2\u06ec\u06db\u06e6\u06e6\u06e4\u06eb\u06d6\u06d9\u06e0\u06e5\u06db\u06d8\u06db\u06e6\u06d7\u06e1\u06e2\u06e5\u06e2\u06da\u06e7\u06da\u06e8\u06db\u06d6\u06d8\u06e5\u06e6\u06d6\u06da\u06df\u06df\u06e6\u06dc\u06dc\u06ec\u06dc\u06e2\u06d8\u06d8\u06da\u06e5\u06d8\u06d8"

    goto :goto_0

    :sswitch_1
    new-instance v1, Landroid/content/Intent;

    const-class v0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;

    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "\u06e4\u06e1\u06e8\u06d8\u06d7\u06da\u06d6\u06d8\u06e5\u06e5\u06d8\u06db\u06db\u06e8\u06e6\u06e6\u06db\u06ec\u06dc\u06dc\u06df\u06e1\u06e5\u06d7\u06e8\u06e8\u06e7\u06e5\u06e1\u06d6\u06da\u06d8\u06d9\u06e8\u06dc\u06d8\u06e8\u06e8\u06d8"

    goto :goto_0

    :sswitch_2
    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v0, "\u06e8\u06e5\u06e5\u06d8\u06eb\u06e2\u06e6\u06e0\u06e2\u06e1\u06e5\u06e6\u06e8\u06d8\u06da\u06db\u06d8\u06e2\u06ec\u06e5\u06d8\u06e0\u06d7\u06dc\u06eb\u06e6\u06eb\u06eb\u06d8\u06e7\u06e8\u06d7\u06e8\u06d8\u06d9\u06d8\u06e7\u06df\u06e7\u06eb\u06eb\u06da\u06e2\u06df\u06ec\u06dc\u06e6\u06d6\u06e6\u06da\u06e0\u06df"

    goto :goto_0

    :sswitch_3
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const-string v0, "\u06db\u06db\u06d7\u06d6\u06e0\u06e5\u06d8\u06d7\u06db\u06e8\u06d8\u06e8\u06d8\u06e1\u06d8\u06da\u06df\u06e6\u06d7\u06d6\u06e8\u06d8\u06eb\u06e1\u06d8\u06d8\u06db\u06e1\u06e0\u06d7\u06e5\u06d7\u06ec\u06e7\u06d8\u06d8\u06e8\u06e4\u06d7\u06df\u06d7\u06e8\u06d8\u06d6\u06d6\u06e6\u06d8\u06ec\u06d9\u06e7"

    goto :goto_0

    :sswitch_4
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6bb7fe79 -> :sswitch_4
        -0x5a56ad63 -> :sswitch_1
        -0x389bb99c -> :sswitch_3
        -0x2dee49d7 -> :sswitch_0
        0x3155c834 -> :sswitch_2
    .end sparse-switch
.end method

.method public static OooOOO0(Landroid/content/Context;Z)V
    .locals 5

    const/4 v1, 0x0

    const-string v0, "\u06e7\u06e5\u06e8\u06eb\u06dc\u06e8\u06d8\u06d7\u06d7\u06e6\u06d6\u06da\u06da\u06e4\u06d8\u06e7\u06e2\u06e1\u06da\u06d9\u06d7\u06e4\u06e7\u06d9\u06e4\u06df\u06e1\u06e6\u06d8\u06e5\u06e7\u06e7\u06d7\u06d6\u06d7\u06e4\u06db\u06d6\u06d8\u06d6\u06e6\u06e5\u06e4\u06dc\u06e6\u06d6\u06d8\u06dc\u06d8\u06d8\u06d8\u06e7\u06da\u06e7\u06db\u06d8\u06d9\u06e1\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v3, 0x324

    xor-int/2addr v2, v3

    xor-int/lit16 v2, v2, 0x17f

    const/16 v3, 0x48

    const v4, 0x3f989fa1

    xor-int/2addr v2, v3

    xor-int/2addr v2, v4

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06df\u06e7\u06e7\u06e1\u06dc\u06d8\u06df\u06e1\u06e4\u06e7\u06da\u06e0\u06d7\u06e0\u06e2\u06e4\u06ec\u06d6\u06d6\u06d7\u06e5\u06d8\u06d9\u06d9\u06ec\u06e0\u06da\u06df\u06ec\u06db\u06dc\u06d9\u06e1\u06d9\u06e4\u06e1\u06d8\u06e8\u06df\u06dc\u06e8\u06e6\u06e6\u06e6\u06e7\u06e5\u06e1\u06dc\u06e2"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06d6\u06df\u06e6\u06d8\u06e0\u06db\u06e8\u06dc\u06d6\u06d8\u06d8\u06e2\u06e2\u06ec\u06df\u06ec\u06e1\u06d8\u06db\u06da\u06e6\u06d8\u06e8\u06d8\u06e2\u06d7\u06db\u06e8\u06e8\u06db\u06eb\u06e8\u06da\u06ec\u06d8\u06e1\u06db\u06e1\u06e5\u06e8\u06d8\u06eb\u06dc\u06d8\u06da\u06d6\u06e6\u06d8\u06ec\u06e1\u06d7\u06e0\u06d9"

    goto :goto_0

    :sswitch_2
    new-instance v1, Landroid/content/Intent;

    const-class v0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;

    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "\u06dc\u06e6\u06e4\u06e7\u06dc\u06e4\u06e0\u06e5\u06da\u06e8\u06e5\u06e2\u06eb\u06e1\u06d6\u06e7\u06e0\u06e7\u06e8\u06d6\u06d6\u06ec\u06db\u06dc\u06d8\u06dc\u06da\u06d8\u06d6\u06e5\u06d6\u06d8"

    goto :goto_0

    :sswitch_3
    const-string v0, "is_change"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "\u06d9\u06e6\u06e5\u06d8\u06e5\u06df\u06df\u06df\u06db\u06e5\u06e8\u06eb\u06d8\u06dc\u06e4\u06e6\u06d8\u06e5\u06e5\u06db\u06da\u06e2\u06e5\u06d8\u06e7\u06dc\u06d8\u06db\u06e5\u06d8\u06e7\u06e2\u06e8\u06e7\u06e0\u06d9\u06da\u06e2\u06e6"

    goto :goto_0

    :sswitch_4
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const-string v0, "\u06e4\u06e6\u06e6\u06d8\u06da\u06e7\u06e4\u06e8\u06e5\u06e6\u06d6\u06e0\u06db\u06e6\u06e5\u06d6\u06e6\u06da\u06e6\u06d8\u06d8\u06e7\u06e6\u06d8\u06e6\u06d8\u06db\u06e8\u06df\u06e5\u06d8\u06e2\u06df\u06e2\u06d6\u06e4\u06e8\u06d8\u06dc\u06d7\u06e6\u06d8\u06da\u06e0\u06e0\u06e0\u06d6\u06db\u06e1\u06d8\u06e8\u06d6\u06e7\u06d8"

    goto :goto_0

    :sswitch_5
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7ecafe99 -> :sswitch_4
        -0x459fca49 -> :sswitch_0
        -0x2ff3d9d -> :sswitch_5
        0x196ab619 -> :sswitch_3
        0x4e7affa0 -> :sswitch_1
        0x69b42d11 -> :sswitch_2
    .end sparse-switch
.end method

.method private OooOOOO()V
    .locals 10

    const/4 v1, 0x0

    const-string v0, "\u06d9\u06e7\u06dc\u06ec\u06e1\u06dc\u06e8\u06e4\u06d8\u06e0\u06e0\u06e5\u06d8\u06d6\u06db\u06e6\u06d8\u06d9\u06d6\u06eb\u06eb\u06d8\u06e5\u06d8\u06e5\u06e7\u06d8\u06e2\u06da\u06df\u06da\u06df\u06e6\u06d8\u06da\u06dc\u06dc\u06ec\u06df\u06e1\u06d8\u06e0\u06d9\u06da\u06d7\u06db\u06e6\u06e6\u06e1\u06e1\u06d8\u06e4\u06db\u06e7\u06dc\u06e4\u06d8\u06e8\u06e0\u06e0"

    move-object v8, v1

    move-object v9, v1

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x398

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0xea

    const/16 v2, 0x3d1

    const v3, 0x631fe9c8

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06dc\u06db\u06dc\u06d8\u06e8\u06dc\u06e5\u06d8\u06d8\u06d7\u06db\u06d6\u06e2\u06e1\u06d8\u06e6\u06df\u06e6\u06e7\u06d6\u06d6\u06d7\u06da\u06d6\u06d8\u06db\u06e6\u06e6\u06d8\u06e1\u06eb\u06d8\u06d8\u06ec\u06d8\u06da\u06e2\u06dc\u06e0\u06e2\u06d9\u06eb\u06df\u06e0\u06e1\u06e1\u06df"

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;->Oooooo0:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v0, "\u06e0\u06d7\u06e8\u06ec\u06d6\u06e7\u06df\u06d9\u06d8\u06d8\u06e0\u06d8\u06dc\u06d8\u06ec\u06e6\u06d6\u06d8\u06db\u06d7\u06e8\u06d9\u06dc\u06ec\u06da\u06db\u06e2\u06d7\u06d9\u06dc\u06d8\u06e2\u06dc\u06dc\u06d8\u06d6\u06e2\u06e4\u06e7\u06e4\u06d8\u06e5\u06d7\u06d9\u06eb\u06e0\u06dc\u06dc\u06da\u06e5\u06e4\u06d7"

    move-object v9, v1

    goto :goto_0

    :sswitch_2
    iput-object v9, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;->Ooooooo:Ljava/lang/String;

    const-string v0, "\u06ec\u06eb\u06d6\u06d8\u06da\u06da\u06ec\u06e2\u06e7\u06d9\u06da\u06eb\u06d8\u06d8\u06e7\u06ec\u06e7\u06e7\u06e4\u06ec\u06e1\u06eb\u06ec\u06dc\u06d7\u06e5\u06d8\u06db\u06dc\u06e6\u06e7\u06d9\u06df\u06ec\u06d7\u06eb\u06eb\u06d6\u06e8\u06d8\u06e5\u06d8\u06da\u06df\u06e1\u06e0\u06db\u06e8\u06db\u06e5\u06e5\u06d8"

    goto :goto_0

    :sswitch_3
    const v1, 0x62402144

    const-string v0, "\u06e6\u06dc\u06e1\u06d8\u06db\u06ec\u06e7\u06eb\u06d9\u06da\u06e5\u06db\u06d6\u06d8\u06e8\u06e2\u06e0\u06e5\u06e5\u06dc\u06eb\u06e4\u06e0\u06e5\u06e1\u06d9\u06e1\u06e4\u06e8\u06d7\u06df\u06da\u06e1\u06e6\u06db\u06e0"

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v2, v1

    sparse-switch v2, :sswitch_data_1

    goto :goto_1

    :sswitch_4
    const v2, -0x5749587d

    const-string v0, "\u06d7\u06ec\u06df\u06e4\u06ec\u06e8\u06d8\u06e7\u06da\u06e4\u06e0\u06e1\u06d9\u06db\u06d6\u06e4\u06df\u06e5\u06dc\u06dc\u06e2\u06ec\u06e6\u06ec\u06ec\u06db\u06d7\u06e2\u06e6\u06d8\u06e8\u06d8\u06e5\u06e4\u06e2\u06e6\u06eb\u06e4\u06da\u06eb\u06da\u06d7\u06e6\u06eb\u06db\u06d6\u06e7\u06d8\u06e5\u06ec\u06e2"

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v2

    sparse-switch v3, :sswitch_data_2

    goto :goto_2

    :sswitch_5
    const-string v0, "\u06d9\u06da\u06d6\u06d9\u06e1\u06ec\u06d8\u06e1\u06e6\u06d8\u06eb\u06e2\u06ec\u06ec\u06e2\u06e4\u06da\u06d9\u06dc\u06d8\u06eb\u06e7\u06d8\u06db\u06df\u06e0\u06e8\u06e8\u06e1\u06d8\u06e8\u06dc\u06e6\u06d8\u06df\u06e2\u06e6\u06e4\u06d8\u06e8\u06d8"

    goto :goto_1

    :sswitch_6
    const-string v0, "\u06e5\u06dc\u06e8\u06eb\u06e5\u06d9\u06d8\u06d6\u06e1\u06eb\u06da\u06dc\u06e5\u06e2\u06d6\u06dc\u06eb\u06e6\u06e8\u06d9\u06db\u06d9\u06e5\u06e6\u06d8\u06ec\u06d7\u06ec\u06dc\u06e6\u06dc\u06d8\u06e4\u06e6\u06dc\u06d8\u06e8\u06dc\u06dc\u06d8\u06e5\u06d6\u06e1\u06e1\u06e7\u06da\u06e7\u06d8\u06e1\u06ec\u06e8\u06e5\u06d8\u06e4\u06e5\u06e6\u06d8\u06dc\u06e6\u06e5\u06d8"

    goto :goto_1

    :cond_0
    const-string v0, "\u06dc\u06e1\u06dc\u06d8\u06d9\u06e5\u06da\u06d7\u06d9\u06ec\u06d6\u06db\u06d7\u06e1\u06d9\u06dc\u06e5\u06da\u06e8\u06d7\u06e0\u06e5\u06e5\u06e4\u06d7\u06e5\u06e7\u06d8\u06d9\u06dc"

    goto :goto_2

    :sswitch_7
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u06e7\u06ec\u06dc\u06d8\u06d9\u06df\u06e4\u06e7\u06db\u06e4\u06e4\u06d6\u06e4\u06d6\u06e2\u06d6\u06d8\u06eb\u06dc\u06d6\u06d8\u06e4\u06dc\u06e8\u06d8\u06d8\u06db\u06e8\u06d6\u06e6\u06dc\u06d8\u06db\u06da\u06e8\u06d9\u06eb\u06d8\u06d8\u06e4\u06e0\u06e5\u06df\u06e4\u06db\u06db\u06d9\u06d7\u06e2\u06e5\u06d8\u06e0\u06dc\u06e5\u06e0\u06e4\u06e1\u06d8\u06ec\u06e1\u06dc"

    goto :goto_2

    :sswitch_8
    const-string v0, "\u06d8\u06d8\u06eb\u06e8\u06d7\u06db\u06eb\u06d7\u06d8\u06df\u06e1\u06dc\u06e8\u06e2\u06ec\u06e4\u06da\u06e4\u06e4\u06ec\u06da\u06e1\u06df\u06da\u06ec\u06dc\u06d8\u06e6\u06dc\u06d9\u06df\u06dc\u06d8\u06da\u06e0\u06da"

    goto :goto_2

    :sswitch_9
    const-string v0, "\u06d7\u06e2\u06e6\u06d8\u06d7\u06e6\u06d8\u06d8\u06e1\u06df\u06eb\u06e2\u06d6\u06e5\u06d8\u06e4\u06e8\u06db\u06e7\u06e6\u06e4\u06db\u06d6\u06eb\u06e4\u06d8\u06e1\u06e7\u06e6\u06e5\u06d6\u06e7\u06d8\u06df\u06e5\u06e7\u06e6\u06e1\u06e1\u06e5\u06d6\u06e8\u06d8\u06e8\u06ec\u06e4\u06dc\u06d9\u06ec\u06e2\u06eb\u06e4\u06e6\u06e1\u06e8\u06d8\u06db\u06e5"

    goto :goto_1

    :sswitch_a
    const-string v0, "\u06e7\u06dc\u06dc\u06d8\u06e6\u06eb\u06db\u06e0\u06ec\u06e6\u06e4\u06e7\u06eb\u06ec\u06dc\u06d8\u06d6\u06e5\u06e6\u06d8\u06e8\u06e7\u06e4\u06e6\u06e8\u06d8\u06e2\u06df\u06d7\u06e2\u06d8\u06e7\u06d8\u06eb\u06e7\u06e1\u06e5\u06d7\u06eb\u06e7\u06e0\u06d9\u06da\u06eb\u06e5\u06d8\u06d9\u06e8\u06d8\u06d8\u06da\u06ec\u06d9\u06dc\u06d9\u06d9\u06d8\u06e7\u06d6"

    goto :goto_0

    :sswitch_b
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f100223

    invoke-static {v0, v1}, Lz2/c5;->OooO0Oo(Landroid/content/Context;I)V

    const-string v0, "\u06eb\u06e4\u06e0\u06df\u06dc\u06d7\u06d8\u06e8\u06e6\u06d8\u06dc\u06d6\u06d9\u06dc\u06d8\u06d8\u06e7\u06d6\u06e1\u06e4\u06d6\u06e6\u06d8\u06d7\u06eb\u06e2\u06d6\u06db\u06dc\u06d8\u06ec\u06eb\u06d8\u06d8\u06e7\u06df\u06e0\u06ec\u06d8\u06e7\u06d8\u06e0\u06e2\u06e6\u06d8\u06d6\u06da\u06d6\u06d8\u06d6\u06e7\u06ec\u06df\u06e7\u06e5\u06eb\u06eb\u06da\u06db\u06d9\u06e8"

    goto :goto_0

    :sswitch_c
    const v1, 0x60e77e79

    const-string v0, "\u06d8\u06e5\u06d9\u06db\u06e7\u06e0\u06dc\u06e5\u06db\u06e6\u06eb\u06ec\u06d8\u06e6\u06e2\u06e0\u06dc\u06e8\u06e5\u06d6\u06df\u06e8\u06d8\u06eb\u06df\u06eb\u06eb\u06eb\u06d6\u06df\u06e0\u06e6\u06da\u06e7\u06e8\u06d8\u06db\u06e1\u06d8\u06d8\u06da\u06e8\u06e7\u06d8\u06d7\u06ec\u06dc\u06d8\u06da\u06e8\u06ec"

    :goto_3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v2, v1

    sparse-switch v2, :sswitch_data_3

    goto :goto_3

    :sswitch_d
    const-string v0, "\u06d9\u06da\u06d6\u06d7\u06dc\u06d6\u06d8\u06da\u06e7\u06d7\u06dc\u06d8\u06d7\u06d9\u06e6\u06e6\u06d8\u06ec\u06d7\u06e6\u06d8\u06e2\u06ec\u06d8\u06d8\u06db\u06da\u06e4\u06e1\u06eb\u06e8\u06e0\u06d8\u06e4"

    goto/16 :goto_0

    :sswitch_e
    const-string v0, "\u06df\u06e1\u06db\u06e1\u06e5\u06e6\u06e1\u06e5\u06d6\u06d8\u06eb\u06e2\u06e1\u06e0\u06e6\u06e1\u06dc\u06d6\u06e4\u06df\u06dc\u06e2\u06ec\u06e1\u06d6\u06e0\u06e0\u06db\u06e0\u06e5\u06d9\u06e6\u06d8\u06e0\u06d7\u06db\u06e6\u06d8\u06e6\u06e4\u06d9\u06e0\u06d7\u06d9\u06db\u06e6\u06e0\u06e8\u06df\u06dc\u06d8"

    goto :goto_3

    :sswitch_f
    const v2, 0x2cde2927

    const-string v0, "\u06d7\u06d6\u06ec\u06dc\u06da\u06dc\u06d8\u06dc\u06e2\u06e8\u06d8\u06e8\u06ec\u06e7\u06e7\u06e5\u06e4\u06e1\u06df\u06e0\u06d7\u06df\u06e0\u06db\u06da\u06d6\u06d8\u06d8\u06e6\u06dc\u06d8\u06e8\u06e4\u06dc\u06d8\u06d6\u06eb\u06e2\u06e5\u06dc\u06d8\u06dc\u06e0\u06e0\u06e1\u06d6\u06e5\u06d8"

    :goto_4
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v2

    sparse-switch v3, :sswitch_data_4

    goto :goto_4

    :sswitch_10
    const-string v0, "\u06d7\u06e0\u06e8\u06ec\u06e4\u06e7\u06e7\u06e1\u06e6\u06d8\u06df\u06e4\u06e8\u06d8\u06eb\u06e2\u06e5\u06db\u06d8\u06d8\u06eb\u06da\u06df\u06df\u06e7\u06e0\u06e6\u06e2\u06e5\u06d8\u06e4\u06ec\u06eb\u06d6\u06e8\u06d8\u06e2\u06eb\u06e8\u06d6\u06d7\u06e1\u06df\u06e4\u06e0\u06ec\u06da\u06e1\u06d8\u06da\u06d7\u06da"

    goto :goto_4

    :cond_1
    const-string v0, "\u06e2\u06eb\u06e8\u06d8\u06e1\u06e5\u06eb\u06e4\u06e7\u06e8\u06e1\u06dc\u06da\u06e2\u06e5\u06da\u06df\u06e0\u06e5\u06d7\u06e2\u06eb\u06e7\u06e1\u06db\u06e8\u06e4\u06df\u06e8\u06d7\u06e1\u06e0\u06e0\u06e5\u06e1\u06d6\u06e5\u06d8\u06e6\u06e4\u06ec\u06d9\u06e6\u06d8\u06e1\u06e5\u06df\u06df\u06da\u06e1"

    goto :goto_4

    :sswitch_11
    iget-boolean v0, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;->o00Oo0:Z

    if-eqz v0, :cond_1

    const-string v0, "\u06e4\u06d9\u06d9\u06e8\u06d9\u06e6\u06e6\u06d7\u06d6\u06d8\u06e2\u06e4\u06db\u06ec\u06db\u06e5\u06e8\u06e1\u06e6\u06e4\u06e2\u06dc\u06d8\u06e6\u06dc\u06e7\u06dc\u06e5\u06e7\u06e0\u06db\u06d6\u06d7\u06d6\u06dc\u06d8\u06df\u06df\u06db\u06d6\u06e5\u06e7\u06d9\u06d6\u06d8\u06e2\u06e4\u06e1\u06d8\u06e5\u06e1\u06e5\u06d8\u06ec\u06e6\u06df\u06e2\u06d7"

    goto :goto_4

    :sswitch_12
    const-string v0, "\u06dc\u06d9\u06d9\u06e7\u06e4\u06e8\u06e8\u06db\u06e1\u06d8\u06e2\u06e2\u06d9\u06ec\u06d9\u06d8\u06e0\u06e7\u06e1\u06d8\u06d8\u06ec\u06dc\u06d8\u06e8\u06d8\u06da\u06e0\u06d6\u06d8\u06e8\u06dc\u06e8\u06e6\u06d9\u06d7\u06e4\u06eb\u06d6\u06e0\u06e6\u06e5\u06df\u06d6\u06d8\u06d8\u06d6\u06ec\u06e7\u06d9\u06e1\u06d8\u06da\u06e1\u06da\u06db\u06e2\u06dc\u06d8"

    goto :goto_3

    :sswitch_13
    const-string v0, "\u06e0\u06df\u06e1\u06e0\u06ec\u06e1\u06d7\u06d7\u06e7\u06d8\u06eb\u06d9\u06eb\u06df\u06da\u06db\u06da\u06d6\u06d7\u06e8\u06e6\u06db\u06d9\u06e5\u06d8\u06e7\u06d9\u06d8\u06ec\u06d6\u06dc\u06d8"

    goto :goto_3

    :sswitch_14
    const-string v0, "\u06d9\u06da\u06e8\u06e6\u06d7\u06e0\u06e4\u06e1\u06e0\u06e0\u06e8\u06e8\u06d8\u06e5\u06df\u06e5\u06e8\u06e7\u06e7\u06e7\u06e5\u06e5\u06d8\u06e7\u06df\u06e8\u06d8\u06e4\u06e6\u06e4\u06da\u06e2\u06e8\u06d9\u06e8\u06d7\u06e0\u06e7\u06d6\u06d8\u06e0\u06eb\u06e1\u06e1\u06df\u06ec\u06e5\u06e2\u06d8\u06d8\u06e8\u06e2\u06ec\u06e6\u06ec\u06e6\u06d8\u06ec\u06db\u06dc\u06d8"

    goto/16 :goto_0

    :sswitch_15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;->o00Oo0:Z

    const-string v0, "\u06d8\u06ec\u06e7\u06d8\u06e1\u06dc\u06d8\u06d8\u06d6\u06d8\u06e4\u06df\u06e6\u06d8\u06e6\u06e8\u06d9\u06d9\u06df\u06e4\u06d8\u06df\u06d9\u06ec\u06da\u06e7\u06e6\u06eb\u06d8\u06d8\u06e5\u06e0\u06e4\u06dc\u06d7\u06db\u06e1\u06d9\u06d9"

    goto/16 :goto_0

    :sswitch_16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u06da\u06d9\u06e5\u06d8\u06e2\u06d9\u06eb\u06dc\u06e2\u06d9\u06e1\u06d8\u06d8\u06d8\u06da\u06e6\u06dc\u06e7\u06d9\u06da\u06eb\u06dc\u06e1\u06e8\u06d8\u06d8\u06d6\u06eb\u06e1\u06d8\u06e2\u06e6\u06e7\u06e0\u06da\u06dc\u06e5\u06d8\u06d8\u06eb\u06e8\u06e5\u06d8\u06e1\u06da\u06e0"

    move-object v8, v1

    goto/16 :goto_0

    :sswitch_17
    const-string v0, "bindStudioProject --> scriptCFGContent="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u06db\u06e7\u06e6\u06d8\u06d8\u06d8\u06e7\u06d8\u06d6\u06e5\u06e6\u06d8\u06e2\u06e7\u06d6\u06d8\u06da\u06eb\u06e4\u06eb\u06db\u06da\u06e0\u06e4\u06d7\u06e7\u06d9\u06e0\u06e7\u06e8\u06d8\u06d8\u06e6\u06e1\u06d8\u06db\u06df\u06e2\u06e6\u06e7\u06db\u06e4\u06ec\u06d6\u06d8\u06df\u06e8\u06d6"

    goto/16 :goto_0

    :sswitch_18
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;->o00O0O:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u06eb\u06e8\u06d8\u06ec\u06eb\u06e0\u06da\u06d9\u06d8\u06d8\u06e8\u06e5\u06e5\u06d8\u06df\u06e0\u06e1\u06e6\u06ec\u06e7\u06ec\u06e8\u06d8\u06d8\u06eb\u06da\u06df\u06d9\u06db\u06db\u06e5\u06eb\u06e8\u06d8\u06e4\u06d9\u06d8\u06d8\u06e0\u06da\u06e0"

    goto/16 :goto_0

    :sswitch_19
    const-string v0, ",scriptUIPContent="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u06e6\u06e1\u06e5\u06d8\u06e6\u06d7\u06d8\u06d8\u06e5\u06d7\u06da\u06db\u06ec\u06e7\u06d6\u06da\u06df\u06e6\u06da\u06e7\u06e8\u06e5\u06d8\u06df\u06dc\u06eb\u06d9\u06dc\u06db\u06eb\u06d9\u06d8\u06d8\u06df\u06e1\u06d8\u06e8\u06e1\u06d6\u06d8\u06eb\u06d6\u06e1\u06e0\u06e2\u06dc\u06d8\u06e5\u06e8\u06e6\u06da\u06e7\u06dc\u06d8"

    goto/16 :goto_0

    :sswitch_1a
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;->ooOO:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u06d7\u06eb\u06eb\u06d9\u06d9\u06d6\u06d8\u06ec\u06e0\u06e1\u06e7\u06dc\u06e4\u06e4\u06e6\u06d9\u06e6\u06e0\u06d9\u06da\u06d7\u06e8\u06d8\u06eb\u06ec\u06e6\u06d8\u06dc\u06d8\u06db\u06e6\u06e2"

    goto/16 :goto_0

    :sswitch_1b
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const-string v0, "\u06d6\u06e8\u06e8\u06d8\u06e2\u06e1\u06e6\u06d8\u06df\u06d9\u06da\u06e5\u06e5\u06e8\u06e4\u06d6\u06da\u06df\u06eb\u06dc\u06d7\u06e4\u06e6\u06d8\u06e1\u06df\u06e6\u06d8\u06dc\u06e0\u06e1\u06d8\u06e5\u06d8\u06e6\u06e1\u06e6\u06d6\u06e7\u06ec\u06db\u06e7\u06e5\u06e6\u06d8\u06e2\u06ec\u06db"

    goto/16 :goto_0

    :sswitch_1c
    const v1, 0x46d32a37

    const-string v0, "\u06e0\u06e1\u06e5\u06e5\u06d6\u06d6\u06d8\u06e4\u06e8\u06e2\u06e4\u06db\u06df\u06da\u06e4\u06dc\u06d8\u06e7\u06df\u06e5\u06d8\u06eb\u06dc\u06e7\u06d8\u06e5\u06e6\u06e8\u06d9\u06d8\u06dc\u06d8\u06e0\u06e6\u06ec"

    :goto_5
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v2, v1

    sparse-switch v2, :sswitch_data_5

    goto :goto_5

    :sswitch_1d
    const v2, -0x49cf7ea2

    const-string v0, "\u06ec\u06d6\u06e7\u06df\u06dc\u06e7\u06d8\u06ec\u06e1\u06e5\u06d8\u06db\u06dc\u06d6\u06e7\u06da\u06d9\u06e6\u06e4\u06dc\u06d8\u06d8\u06d9\u06d6\u06db\u06db\u06da\u06e5\u06e7\u06d6\u06d8\u06eb\u06e1\u06d8\u06d9\u06d9\u06d6\u06eb\u06ec\u06dc\u06d6\u06e7\u06e4\u06da\u06e8\u06e4\u06e7\u06e7\u06e8\u06d8\u06df\u06d7\u06da"

    :goto_6
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v2

    sparse-switch v3, :sswitch_data_6

    goto :goto_6

    :sswitch_1e
    const-string v0, "\u06d6\u06e6\u06d7\u06e4\u06d6\u06e7\u06d8\u06e8\u06df\u06d9\u06e4\u06d9\u06e8\u06e5\u06d9\u06e7\u06d8\u06ec\u06dc\u06d8\u06df\u06e4\u06e5\u06e7\u06df\u06e7\u06df\u06ec\u06e6\u06e7\u06d8\u06d8"

    goto :goto_6

    :sswitch_1f
    const-string v0, "\u06e7\u06d8\u06e2\u06db\u06dc\u06e6\u06ec\u06e2\u06ec\u06eb\u06e8\u06dc\u06d8\u06dc\u06d8\u06e5\u06d8\u06d6\u06d9\u06e5\u06e8\u06e6\u06e4\u06e0\u06e0\u06e8\u06d8\u06db\u06d6\u06df\u06d9\u06d9\u06ec\u06eb\u06e6\u06e5\u06d8\u06e8\u06d9\u06db\u06e1\u06ec\u06da\u06e0\u06df\u06e1"

    goto :goto_5

    :cond_2
    const-string v0, "\u06e0\u06eb\u06df\u06ec\u06e0\u06e1\u06d8\u06dc\u06ec\u06e6\u06d8\u06e7\u06e6\u06e2\u06ec\u06d8\u06dc\u06d8\u06e7\u06ec\u06d7\u06e8\u06db\u06eb\u06da\u06da\u06e5\u06d8\u06eb\u06e8\u06d8\u06da\u06e4\u06dc\u06d8\u06e6\u06e7\u06e4\u06e0\u06df"

    goto :goto_6

    :sswitch_20
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;->OoooooO:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "\u06e4\u06d7\u06e6\u06d6\u06e0\u06d6\u06e8\u06ec\u06df\u06ec\u06eb\u06e8\u06d8\u06e7\u06e2\u06e1\u06d8\u06df\u06e1\u06e5\u06db\u06e4\u06e6\u06d8\u06df\u06eb\u06e6\u06d8\u06d6\u06e2\u06da\u06e1\u06e6\u06da"

    goto :goto_6

    :sswitch_21
    const-string v0, "\u06d7\u06db\u06df\u06e1\u06d6\u06e7\u06e8\u06da\u06e6\u06d8\u06db\u06e2\u06d6\u06d8\u06df\u06d7\u06e7\u06db\u06db\u06e7\u06da\u06e1\u06eb\u06dc\u06db\u06da\u06d6\u06e5\u06eb\u06e5\u06e7\u06d6\u06e0\u06df\u06dc\u06d8\u06e1\u06e5\u06d6\u06d8"

    goto :goto_5

    :sswitch_22
    const-string v0, "\u06e1\u06db\u06e7\u06e2\u06e5\u06e7\u06e4\u06d8\u06dc\u06d8\u06e2\u06d7\u06da\u06e7\u06e8\u06e1\u06e2\u06e0\u06e5\u06d8\u06dc\u06e2\u06df\u06e0\u06ec\u06e8\u06d7\u06d6\u06d9\u06e4\u06e6\u06e4\u06e2\u06da\u06d6\u06eb\u06dc\u06d8\u06e2\u06eb\u06e8\u06e6\u06dc\u06d7"

    goto :goto_5

    :sswitch_23
    const-string v0, "\u06e1\u06e7\u06e6\u06d8\u06d6\u06d7\u06e8\u06e1\u06d8\u06e7\u06d8\u06e8\u06ec\u06e6\u06e7\u06e7\u06dc\u06e0\u06df\u06e7\u06ec\u06e7\u06df\u06dc\u06e4\u06d6\u06d8\u06dc\u06e2\u06db\u06e4\u06d8\u06e2\u06da\u06e1\u06e8\u06ec\u06d9\u06e8\u06d8\u06e6\u06e7\u06ec\u06d8\u06db\u06d8\u06d8\u06e6\u06e5\u06dc\u06e8\u06d9\u06e5\u06e5\u06d6\u06e8\u06db"

    goto/16 :goto_0

    :sswitch_24
    invoke-static {}, Lz2/rc;->OooO0oO()Lz2/rc;

    move-result-object v0

    iget-object v2, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;->Ooooooo:Ljava/lang/String;

    iget-object v3, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;->OoooooO:Ljava/lang/String;

    iget-object v4, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;->o0OoOo0:Ljava/lang/String;

    iget-object v5, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;->ooOO:Ljava/lang/String;

    iget-object v6, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;->o00O0O:Ljava/lang/String;

    new-instance v7, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity$OooO00o;

    invoke-direct {v7, p0}, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity$OooO00o;-><init>(Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;)V

    move-object v1, p0

    invoke-virtual/range {v0 .. v7}, Lz2/rc;->OooO0OO(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lz2/rc$OooO00o;)V

    const-string v0, "\u06d9\u06da\u06d6\u06d7\u06dc\u06d6\u06d8\u06da\u06e7\u06d7\u06dc\u06d8\u06d7\u06d9\u06e6\u06e6\u06d8\u06ec\u06d7\u06e6\u06d8\u06e2\u06ec\u06d8\u06d8\u06db\u06da\u06e4\u06e1\u06eb\u06e8\u06e0\u06d8\u06e4"

    goto/16 :goto_0

    :sswitch_25
    const-string v0, "\u06e5\u06e7\u06e6\u06d8\u06e8\u06e7\u06e1\u06da\u06d9\u06e4\u06e0\u06e8\u06ec\u06e4\u06e2\u06e8\u06eb\u06e2\u06e1\u06e2\u06d8\u06e4\u06d6\u06e6\u06d6\u06d8\u06e7\u06d7\u06da\u06d6\u06e5\u06e1\u06d8\u06e5\u06e4\u06e8\u06d8\u06dc\u06e8\u06e1\u06d8\u06e2\u06d6\u06e8\u06d8\u06e2\u06e6\u06d8"

    goto/16 :goto_0

    :sswitch_26
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7a0eea72 -> :sswitch_1
        -0x68160195 -> :sswitch_19
        -0x617442fa -> :sswitch_b
        -0x41d99b0d -> :sswitch_1b
        -0x3eb2407d -> :sswitch_16
        -0x26b1d1a3 -> :sswitch_1c
        -0x2334eaa0 -> :sswitch_3
        -0x1a32fef4 -> :sswitch_26
        -0xabf52d5 -> :sswitch_26
        0x20c7b7fd -> :sswitch_15
        0x2a444eaa -> :sswitch_c
        0x348c4a9e -> :sswitch_2
        0x49348a71 -> :sswitch_0
        0x4de66770 -> :sswitch_24
        0x628390b0 -> :sswitch_1a
        0x74cd3bbe -> :sswitch_17
        0x78fcd6ff -> :sswitch_18
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x7bef225d -> :sswitch_a
        -0x37170e26 -> :sswitch_4
        -0x19185894 -> :sswitch_25
        0x4c89a308 -> :sswitch_9
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        -0x7a104703 -> :sswitch_8
        -0x11d70fd3 -> :sswitch_7
        0x320c77fa -> :sswitch_6
        0x6eaa662a -> :sswitch_5
    .end sparse-switch

    :sswitch_data_3
    .sparse-switch
        -0x7b3ea110 -> :sswitch_14
        -0x7a2739bb -> :sswitch_d
        -0x616d200a -> :sswitch_13
        -0x3180e489 -> :sswitch_f
    .end sparse-switch

    :sswitch_data_4
    .sparse-switch
        0x28fd7971 -> :sswitch_12
        0x6370ecf0 -> :sswitch_11
        0x7f6440d7 -> :sswitch_e
        0x7fb16a10 -> :sswitch_10
    .end sparse-switch

    :sswitch_data_5
    .sparse-switch
        -0x45dfb122 -> :sswitch_d
        0x28e116fb -> :sswitch_22
        0x6497948f -> :sswitch_1d
        0x7df16efe -> :sswitch_23
    .end sparse-switch

    :sswitch_data_6
    .sparse-switch
        -0x69c0788f -> :sswitch_20
        -0x41537865 -> :sswitch_21
        -0x2f66b4e6 -> :sswitch_1f
        0x4da97a7e -> :sswitch_1e
    .end sparse-switch
.end method

.method private OooOOOo()V
    .locals 4

    const-string v0, "\u06e4\u06e0\u06dc\u06d8\u06d9\u06db\u06dc\u06e8\u06df\u06e6\u06e0\u06d7\u06df\u06d7\u06d7\u06d7\u06e1\u06e0\u06e5\u06e1\u06d6\u06e0\u06e5\u06dc\u06dc\u06db\u06d6\u06ec\u06e2\u06e7\u06eb\u06d6\u06e2\u06e2\u06d6\u06e2\u06db\u06e2\u06eb\u06e0\u06d8\u06d6"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x105

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x223

    const/16 v2, 0x3a2

    const v3, -0x4b361c7

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d7\u06df\u06d8\u06d8\u06e7\u06d8\u06d6\u06d8\u06df\u06d8\u06e1\u06e1\u06eb\u06e6\u06d8\u06e8\u06da\u06e8\u06d8\u06e2\u06d6\u06d7\u06eb\u06da\u06e2\u06d7\u06e0\u06e1\u06da\u06e8\u06df\u06ec\u06d6\u06dc\u06e4\u06ec\u06ec\u06e7\u06d6\u06dc\u06d8\u06e2\u06da\u06eb\u06df\u06e0\u06d8\u06e0\u06db\u06d9\u06d6\u06e0\u06e5"

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;->Oooooo:Lcom/cyjh/elfin/ui/view/customview/TitleView;

    const v1, 0x7f10004d

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setTitleText(I)V

    const-string v0, "\u06e2\u06d6\u06e5\u06d8\u06eb\u06e0\u06e8\u06d8\u06d9\u06e7\u06d6\u06d8\u06d9\u06e0\u06d6\u06df\u06ec\u06e4\u06e4\u06d7\u06dc\u06d8\u06d9\u06e7\u06dc\u06d8\u06e7\u06df\u06e4\u06df\u06d6\u06d8\u06eb\u06e5\u06e7\u06e7\u06e6\u06e1\u06d8\u06ec\u06df\u06df\u06db\u06e4\u06e8\u06d8\u06d8\u06eb\u06e2\u06d7\u06d9\u06e5\u06df\u06d7\u06ec\u06d6\u06d6\u06d6\u06d7\u06d6\u06d8\u06d8"

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;->Oooooo:Lcom/cyjh/elfin/ui/view/customview/TitleView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setVisibilityLeftImage(I)V

    const-string v0, "\u06e7\u06d8\u06e5\u06d8\u06ec\u06d6\u06e8\u06e1\u06e8\u06df\u06e2\u06eb\u06db\u06da\u06eb\u06d9\u06df\u06e7\u06d8\u06d8\u06d9\u06e6\u06e0\u06da\u06d6\u06eb\u06e4\u06eb\u06e5\u06d8\u06d7\u06df\u06df"

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;->Oooooo:Lcom/cyjh/elfin/ui/view/customview/TitleView;

    const v1, 0x7f0801c9

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setleftImage(I)V

    const-string v0, "\u06e8\u06d8\u06d6\u06e0\u06dc\u06d8\u06d8\u06e5\u06df\u06e7\u06e7\u06e4\u06e5\u06d8\u06eb\u06eb\u06db\u06e1\u06eb\u06e6\u06d8\u06eb\u06d6\u06d9\u06da\u06e5\u06d6\u06e2\u06e0\u06e6\u06d8\u06e6\u06e0\u06e1\u06e5\u06e8\u06e1\u06e2\u06e5\u06d7\u06ec\u06da\u06d8\u06d8\u06d6\u06d7\u06e1\u06d8\u06e1\u06e7\u06e1\u06df\u06dc\u06e7\u06d8"

    goto :goto_0

    :sswitch_4
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;->Oooooo:Lcom/cyjh/elfin/ui/view/customview/TitleView;

    new-instance v1, Lz2/m9;

    invoke-direct {v1, p0}, Lz2/m9;-><init>(Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;)V

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setOnLeftImageViewListener(Lcom/cyjh/elfin/ui/view/customview/TitleView$OooO0O0;)V

    const-string v0, "\u06e0\u06d8\u06dc\u06e6\u06db\u06d9\u06e4\u06d8\u06e8\u06d8\u06d9\u06e4\u06e5\u06eb\u06d8\u06df\u06df\u06e8\u06e5\u06d8\u06e1\u06e6\u06d6\u06d8\u06d9\u06e6\u06e5\u06e8\u06d8\u06d6\u06e7\u06d6\u06d8\u06d8\u06d7\u06e6\u06d6\u06d8\u06e5\u06d8\u06dc\u06d8\u06df\u06e8\u06e6\u06d6\u06eb\u06e1\u06e1\u06d8\u06e5\u06d9\u06df\u06e6\u06d8"

    goto :goto_0

    :sswitch_5
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;->Oooooo:Lcom/cyjh/elfin/ui/view/customview/TitleView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setVisibilityRightImage(I)V

    const-string v0, "\u06ec\u06d6\u06e7\u06e5\u06db\u06dc\u06e5\u06e0\u06d6\u06d8\u06da\u06e6\u06e2\u06db\u06d6\u06d7\u06e4\u06e6\u06d8\u06e1\u06e0\u06e5\u06d8\u06eb\u06e2\u06e7\u06e0\u06e4\u06e5\u06d8\u06e0\u06df\u06d7"

    goto :goto_0

    :sswitch_6
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5af803d0 -> :sswitch_6
        -0x4d7a93c2 -> :sswitch_0
        -0x45625f11 -> :sswitch_1
        -0x2ead9f8e -> :sswitch_4
        -0x2be988ec -> :sswitch_2
        0x1df976a6 -> :sswitch_5
        0x4ae63bb8 -> :sswitch_3
    .end sparse-switch
.end method

.method private synthetic OooOOo0(Landroid/view/View;)V
    .locals 4

    const-string v0, "\u06ec\u06eb\u06d8\u06d8\u06da\u06d8\u06e8\u06eb\u06d6\u06e4\u06d6\u06d6\u06eb\u06db\u06eb\u06dc\u06d8\u06e2\u06d8\u06e1\u06d8\u06db\u06df\u06e5\u06d8\u06d9\u06e5\u06dc\u06e7\u06db\u06db\u06dc\u06dc\u06d7\u06da\u06e4\u06eb\u06df\u06dc\u06e8\u06e2\u06db\u06e1\u06d8\u06d8\u06d8\u06e8\u06dc\u06e1\u06d8\u06e8\u06e0\u06eb\u06d8\u06d7\u06d6\u06d8\u06ec\u06d6\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0xc8

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x3cb

    const/16 v2, 0x369

    const v3, -0x5820402e

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06eb\u06e1\u06d6\u06d8\u06d6\u06df\u06e1\u06d8\u06e5\u06dc\u06e5\u06e4\u06dc\u06d6\u06ec\u06d9\u06e0\u06e5\u06e7\u06e6\u06db\u06d8\u06e6\u06e4\u06e5\u06dc\u06dc\u06e8\u06e1\u06eb\u06e6\u06dc\u06e7\u06d8\u06d6\u06d8\u06e5\u06e6\u06dc\u06e5\u06eb\u06e4\u06e7\u06da\u06e8\u06db\u06e6\u06e6\u06e2\u06e0\u06eb"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06eb\u06ec\u06da\u06da\u06eb\u06d6\u06e7\u06d6\u06e6\u06d8\u06db\u06e4\u06d9\u06da\u06dc\u06e8\u06d8\u06d8\u06e4\u06e0\u06e0\u06e0\u06e5\u06d8\u06e7\u06eb\u06e6\u06dc\u06e6\u06e7\u06d6\u06e1\u06e8\u06da\u06df\u06e5\u06d8\u06e0\u06da\u06dc"

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const-string v0, "\u06e7\u06d6\u06e0\u06e1\u06eb\u06ec\u06dc\u06e8\u06d8\u06df\u06d6\u06d7\u06df\u06db\u06ec\u06e8\u06da\u06d6\u06e2\u06d8\u06d7\u06e1\u06eb\u06e5\u06d8\u06eb\u06e5\u06e7\u06e0\u06da\u06eb\u06d8\u06e6\u06da\u06ec\u06d7\u06e5\u06e1\u06d6\u06e5\u06e4\u06d8\u06e6\u06d8"

    goto :goto_0

    :sswitch_3
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x747dd51e -> :sswitch_2
        -0x2e6d3d36 -> :sswitch_0
        -0x27cfe279 -> :sswitch_3
        0x8fd56a2 -> :sswitch_1
    .end sparse-switch
.end method

.method private initData()V
    .locals 5

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "is_change"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;->o00Ooo:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "studioProjectNumber:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->OooO00o()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v1

    iget-object v1, v1, Lcom/cyjh/elfin/base/AppContext;->OoooOoO:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lz2/b7;->OooO0Oo()Lz2/b7;

    move-result-object v0

    invoke-virtual {v0}, Lz2/b7;->OooO0oO()Lcom/cyjh/elfin/entity/Script;

    move-result-object v1

    const v2, -0x3eaab5bd

    const-string v0, "\u06e7\u06da\u06eb\u06e1\u06d6\u06dc\u06d8\u06d8\u06d6\u06df\u06d7\u06e5\u06da\u06d6\u06dc\u06e6\u06d8\u06e8\u06e8\u06e4\u06da\u06d6\u06d8\u06d7\u06e0\u06e4\u06db\u06e0\u06e5\u06d8\u06da\u06e8\u06dc\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v2

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    :try_start_0
    invoke-static {}, Lz2/l10;->OooO0o()Lz2/l10;

    move-result-object v0

    new-instance v2, Lcom/cyjh/elfin/entity/MsgItem;

    const/16 v3, 0x2761

    invoke-direct {v2, v3}, Lcom/cyjh/elfin/entity/MsgItem;-><init>(I)V

    invoke-virtual {v0, v2}, Lz2/l10;->OooOOOO(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/cyjh/elfin/entity/Script;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;->OoooooO:Ljava/lang/String;

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->OooO00o()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v0

    iget-object v0, v0, Lcom/cyjh/elfin/base/AppContext;->OoooOoO:Ljava/lang/String;

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;->Ooooooo:Ljava/lang/String;

    invoke-static {}, Lz2/b7;->OooO0Oo()Lz2/b7;

    move-result-object v0

    iget-boolean v0, v0, Lz2/b7;->OooO0O0:Z

    invoke-static {p0, v0}, Lz2/c9;->OooO0o(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;->o0OoOo0:Ljava/lang/String;

    invoke-static {}, Lz2/b7;->OooO0Oo()Lz2/b7;

    move-result-object v0

    iget-boolean v0, v0, Lz2/b7;->OooO0O0:Z

    invoke-static {p0, v0}, Lz2/c9;->OooO0oO(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;->ooOO:Ljava/lang/String;

    invoke-static {p0}, Lz2/c9;->OooO0Oo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;->o00O0O:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initData --> scriptUIPContent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;->ooOO:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",mScriptCFGContent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;->o00O0O:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    :sswitch_1
    return-void

    :sswitch_2
    const-string v0, "\u06e7\u06e6\u06e7\u06e7\u06d8\u06d6\u06d8\u06e7\u06d8\u06d8\u06e1\u06e6\u06dc\u06e8\u06da\u06e6\u06df\u06eb\u06e7\u06e1\u06d9\u06e1\u06e7\u06ec\u06db\u06e5\u06e7\u06d7\u06da\u06d8\u06d6\u06d8\u06e6\u06dc\u06e8\u06d8\u06da\u06db\u06dc"

    goto :goto_0

    :sswitch_3
    const v3, 0x40337061

    const-string v0, "\u06ec\u06d6\u06d7\u06dc\u06e0\u06da\u06eb\u06d6\u06db\u06e5\u06e8\u06e6\u06d8\u06dc\u06db\u06d8\u06d8\u06da\u06da\u06e2\u06d6\u06e6\u06dc\u06eb\u06e2\u06e7\u06df\u06e6\u06d6\u06e8\u06e1\u06ec\u06d6\u06e2\u06e1\u06e7\u06e5\u06d7\u06dc\u06df\u06e1\u06e7\u06da\u06e1\u06d8\u06d8\u06d9\u06e5\u06d8\u06d7\u06e6\u06d9\u06ec\u06d9\u06e8\u06d8\u06eb\u06da\u06e0"

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    xor-int/2addr v4, v3

    sparse-switch v4, :sswitch_data_1

    goto :goto_2

    :sswitch_4
    const-string v0, "\u06d7\u06db\u06e7\u06d6\u06e5\u06e8\u06ec\u06e1\u06d7\u06db\u06e2\u06ec\u06ec\u06d8\u06d8\u06d8\u06d7\u06d6\u06eb\u06e4\u06e8\u06dc\u06e5\u06df\u06e0\u06df\u06e6\u06d6\u06d7\u06e1\u06eb\u06d8\u06d6\u06e4\u06e6\u06e5"

    goto :goto_2

    :cond_0
    const-string v0, "\u06e1\u06e6\u06e4\u06e5\u06df\u06e2\u06db\u06e7\u06ec\u06d7\u06dc\u06dc\u06d8\u06d8\u06e6\u06d8\u06d8\u06db\u06e8\u06dc\u06e2\u06dc\u06e6\u06db\u06d8\u06d8\u06dc\u06eb\u06d9\u06e6\u06e1\u06e2\u06e8\u06e4\u06d8\u06d8\u06d8\u06dc\u06d8\u06e6\u06d9\u06e0\u06db\u06eb"

    goto :goto_2

    :sswitch_5
    if-eqz v1, :cond_0

    const-string v0, "\u06d9\u06e1\u06ec\u06e2\u06d6\u06e7\u06d8\u06d7\u06d6\u06d6\u06e0\u06e7\u06d6\u06d8\u06e4\u06d7\u06db\u06da\u06e5\u06e1\u06df\u06ec\u06dc\u06d8\u06e8\u06eb\u06e6\u06da\u06e4\u06d6\u06ec\u06d7\u06e8\u06e8\u06e6\u06d9\u06e8"

    goto :goto_2

    :sswitch_6
    const-string v0, "\u06e5\u06da\u06d8\u06d8\u06e5\u06d7\u06e4\u06e1\u06e8\u06d8\u06e8\u06dc\u06e7\u06eb\u06d6\u06da\u06e6\u06e5\u06d7\u06e4\u06da\u06e7\u06e7\u06da\u06e5\u06df\u06da\u06e7\u06e8\u06d6\u06e8\u06d8"

    goto :goto_0

    :sswitch_7
    const-string v0, "\u06dc\u06e6\u06e1\u06d8\u06e6\u06da\u06e2\u06e6\u06d8\u06e6\u06d8\u06ec\u06e7\u06d9\u06d8\u06d6\u06df\u06d8\u06e5\u06e2\u06d6\u06d7\u06e2\u06dc\u06e0\u06d6\u06e5\u06e6\u06d8\u06ec\u06e2\u06d7\u06db\u06e2\u06da\u06e0\u06d6\u06e7\u06d8\u06df\u06df\u06e2\u06e4\u06d6"

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        -0x34b759c4 -> :sswitch_1
        0xcf06c42 -> :sswitch_7
        0x14648e35 -> :sswitch_0
        0x476a773a -> :sswitch_3
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x6c822841 -> :sswitch_6
        -0x3601866e -> :sswitch_4
        -0x275adb0e -> :sswitch_5
        -0x12b23c65 -> :sswitch_2
    .end sparse-switch
.end method

.method private initListener()V
    .locals 4

    const-string v0, "\u06d6\u06df\u06d8\u06df\u06e1\u06d7\u06e4\u06e6\u06d8\u06d6\u06d8\u06da\u06e2\u06da\u06e8\u06e5\u06df\u06d7\u06dc\u06d8\u06e6\u06e1\u06df\u06e6\u06d8\u06e5\u06df\u06d6\u06d8\u06e6\u06d6\u06dc\u06d6\u06eb\u06da\u06e2\u06db\u06e1"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x2d2

    xor-int/2addr v1, v2

    xor-int/lit8 v1, v1, 0x10

    const/16 v2, 0x1be

    const v3, 0x1247aff4

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e2\u06e4\u06e5\u06d8\u06e7\u06ec\u06d9\u06d9\u06e6\u06e5\u06d8\u06e6\u06da\u06d7\u06d9\u06e0\u06e8\u06db\u06eb\u06db\u06dc\u06e2\u06db\u06e2\u06e6\u06e1\u06d8\u06df\u06e5\u06e5\u06d8\u06e4\u06d8\u06d7\u06d8\u06e7\u06e7\u06e2\u06df\u06df\u06ec\u06e7\u06e6\u06e7\u06dc\u06df\u06e0\u06e4\u06e2\u06d8\u06d7\u06e8"

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;->OooooOo:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "\u06db\u06db\u06e0\u06d7\u06e5\u06e4\u06db\u06e0\u06db\u06e5\u06e4\u06e0\u06d8\u06e1\u06e8\u06eb\u06e1\u06d8\u06dc\u06ec\u06dc\u06e4\u06d8\u06df\u06d9\u06e0\u06e8\u06e8\u06e5\u06da\u06e4\u06eb\u06db\u06e0\u06e8\u06d8\u06df\u06e4\u06e0\u06e2\u06d8\u06ec\u06e1\u06e1\u06db\u06e2\u06e4\u06d6\u06e0\u06df\u06da\u06d8\u06d8\u06d8"

    goto :goto_0

    :sswitch_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x57cd83fc -> :sswitch_2
        -0x2e52c13a -> :sswitch_0
        0x6a1f9094 -> :sswitch_1
    .end sparse-switch
.end method

.method private initView()V
    .locals 5

    const/4 v2, 0x0

    const-string v0, "\u06d8\u06e1\u06eb\u06e5\u06e5\u06e2\u06d7\u06da\u06e5\u06d8\u06e2\u06db\u06dc\u06e2\u06d8\u06d7\u06e7\u06e6\u06e1\u06d6\u06e0\u06d6\u06e5\u06eb\u06e0\u06e6\u06e7\u06d6\u06da\u06e8\u06e1\u06ec\u06d8\u06d8\u06e6\u06e0\u06e8"

    move-object v1, v0

    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v3, 0x382

    xor-int/2addr v0, v3

    xor-int/lit16 v0, v0, 0x2fe

    const/16 v3, 0xe9

    const v4, 0xf2669a5

    xor-int/2addr v0, v3

    xor-int/2addr v0, v4

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06da\u06eb\u06d7\u06e2\u06e6\u06ec\u06e7\u06e6\u06ec\u06e5\u06ec\u06dc\u06d8\u06e4\u06d7\u06e8\u06d8\u06e5\u06eb\u06eb\u06e6\u06d6\u06dc\u06e2\u06db\u06e6\u06e1\u06d7\u06d8\u06e4\u06e5\u06d7\u06da\u06d9\u06da\u06ec\u06db\u06e5\u06dc\u06e0\u06e6\u06d8\u06e4\u06e4\u06e8\u06d7\u06d9\u06eb\u06d6\u06ec\u06dc\u06d8\u06d8\u06d6\u06dc\u06d8"

    move-object v1, v0

    goto :goto_0

    :sswitch_1
    const v0, 0x7f09043a

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cyjh/elfin/ui/view/customview/TitleView;

    const-string v1, "\u06dc\u06e0\u06e0\u06e4\u06e4\u06db\u06e2\u06e1\u06d9\u06d7\u06d6\u06e5\u06eb\u06dc\u06e6\u06d8\u06ec\u06e5\u06d6\u06d8\u06d6\u06eb\u06d9\u06d9\u06d8\u06d9\u06e1\u06e0\u06e5\u06d8\u06e2\u06e2\u06d9\u06d8\u06e2\u06e0\u06d9\u06d8\u06da"

    move-object v2, v0

    goto :goto_0

    :sswitch_2
    iput-object v2, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;->Oooooo:Lcom/cyjh/elfin/ui/view/customview/TitleView;

    const-string v0, "\u06e7\u06e4\u06e1\u06d7\u06d8\u06dc\u06d8\u06d6\u06e2\u06e6\u06dc\u06e1\u06e8\u06e5\u06e8\u06e1\u06e6\u06d6\u06d8\u06e1\u06da\u06e1\u06d8\u06df\u06d9\u06d7\u06da\u06dc\u06e0\u06d7\u06d8\u06e5\u06d8\u06e5\u06eb\u06db\u06e4\u06d8\u06d9\u06d6\u06d8\u06d7\u06da\u06db\u06e8\u06d8\u06e8\u06e2\u06e7\u06d7\u06e7\u06e8\u06dc\u06e2\u06dc\u06e6\u06e5\u06d6\u06d8"

    move-object v1, v0

    goto :goto_0

    :sswitch_3
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setVisibilityTvRight(I)V

    const-string v0, "\u06e7\u06e6\u06dc\u06e6\u06d8\u06e7\u06d8\u06da\u06e7\u06d8\u06d8\u06ec\u06d9\u06df\u06e4\u06db\u06dc\u06e5\u06e0\u06da\u06d8\u06e5\u06da\u06eb\u06e1\u06d8\u06d6\u06e8\u06e4\u06e1\u06dc\u06da\u06e7\u06d9\u06e1\u06d9\u06e6\u06e2\u06df\u06eb\u06e8\u06d8\u06d6\u06d7\u06e6\u06d8"

    move-object v1, v0

    goto :goto_0

    :sswitch_4
    const v0, 0x7f09046e

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;->OooooOo:Landroid/widget/TextView;

    const-string v0, "\u06e8\u06dc\u06e2\u06e8\u06dc\u06e1\u06d6\u06e2\u06e8\u06d8\u06e1\u06e0\u06e5\u06d8\u06e8\u06e1\u06e1\u06d8\u06ec\u06e5\u06dc\u06d8\u06da\u06eb\u06e1\u06d8\u06e2\u06e2\u06eb\u06e2\u06d7\u06db\u06ec\u06d9\u06d8\u06d8\u06eb\u06d6\u06df\u06d7\u06df\u06d6\u06d8\u06e2\u06e5\u06dc\u06d7\u06e6\u06e7\u06e1\u06e0\u06e8\u06e4\u06e4\u06d7\u06e6\u06e5\u06e5\u06d8\u06db\u06d9\u06e6\u06d8"

    move-object v1, v0

    goto :goto_0

    :sswitch_5
    const v0, 0x7f090293

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;->Oooooo0:Landroid/widget/EditText;

    const-string v0, "\u06e1\u06df\u06e0\u06d9\u06d6\u06e7\u06d8\u06e7\u06e8\u06e6\u06e7\u06eb\u06df\u06d8\u06d6\u06ec\u06df\u06e1\u06d6\u06eb\u06da\u06e2\u06d9\u06e5\u06e8\u06d8\u06eb\u06e7\u06e5\u06d9\u06ec\u06e6"

    move-object v1, v0

    goto :goto_0

    :sswitch_6
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7680df3a -> :sswitch_4
        -0x4844d654 -> :sswitch_0
        -0x4123fe21 -> :sswitch_3
        -0x3fce2169 -> :sswitch_1
        0x314e2b3d -> :sswitch_6
        0x72d6845d -> :sswitch_2
        0x75cd1a3b -> :sswitch_5
    .end sparse-switch
.end method


# virtual methods
.method public synthetic OooOOo(Landroid/view/View;)V
    .locals 4

    const-string v0, "\u06e8\u06d7\u06e2\u06e2\u06d8\u06df\u06e0\u06dc\u06d8\u06e4\u06e1\u06dc\u06d8\u06e6\u06e6\u06ec\u06e4\u06e1\u06df\u06df\u06df\u06e0\u06da\u06e0\u06eb\u06e8\u06df\u06ec\u06da\u06eb\u06ec\u06df\u06e6\u06d8\u06d7\u06dc\u06dc\u06d8\u06d8\u06da\u06e5\u06e6\u06e6\u06d8\u06d8\u06da\u06d8\u06e6\u06d8\u06e7\u06d6\u06e1"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0xdf

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x347

    const/16 v2, 0x49

    const v3, 0x5aceb356

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d9\u06e2\u06e8\u06d8\u06e6\u06dc\u06e0\u06e8\u06da\u06d8\u06e8\u06dc\u06e5\u06d8\u06eb\u06d8\u06e5\u06ec\u06ec\u06e7\u06e6\u06e1\u06e6\u06d7\u06e0\u06d8\u06e6\u06d9\u06d8\u06d8\u06e8\u06e5\u06eb\u06eb\u06eb\u06e2\u06d9\u06e8\u06e5\u06d8"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06e0\u06e6\u06e6\u06e4\u06d9\u06e1\u06d6\u06e2\u06ec\u06da\u06d6\u06e5\u06d8\u06e2\u06eb\u06eb\u06d8\u06e6\u06e4\u06eb\u06d9\u06eb\u06d9\u06db\u06e1\u06d8\u06dc\u06dc\u06e1\u06e1\u06e0\u06e8\u06d8\u06da\u06d6\u06d8\u06d7\u06db\u06d8\u06e4\u06d8\u06e4\u06d8\u06d6\u06d6\u06d8"

    goto :goto_0

    :sswitch_2
    invoke-direct {p0, p1}, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;->OooOOo0(Landroid/view/View;)V

    const-string v0, "\u06d9\u06e6\u06e1\u06d8\u06e5\u06da\u06dc\u06d8\u06da\u06e5\u06e6\u06e5\u06e7\u06d8\u06e5\u06d9\u06e4\u06d8\u06e4\u06e5\u06d8\u06d8\u06e8\u06e6\u06d8\u06eb\u06e0\u06d6\u06d8\u06df\u06d7\u06db\u06e5\u06ec\u06d9\u06e2\u06e2\u06e5\u06e7\u06d9\u06e8\u06d8\u06db\u06e8\u06d9\u06e1\u06e2\u06da\u06ec\u06e2\u06db\u06d6\u06e7\u06e6\u06e5\u06e4\u06ec\u06d6\u06db\u06df"

    goto :goto_0

    :sswitch_3
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x66fdd753 -> :sswitch_3
        -0x5869dc6a -> :sswitch_0
        0x78ff800 -> :sswitch_2
        0x4e7cf15f -> :sswitch_1
    .end sparse-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    const-string v0, "\u06d8\u06e2\u06da\u06e6\u06e2\u06da\u06db\u06e5\u06dc\u06d8\u06e0\u06e4\u06e1\u06d8\u06dc\u06e4\u06e6\u06d7\u06ec\u06e8\u06d8\u06df\u06e5\u06d9\u06d6\u06dc\u06d6\u06d8\u06e1\u06df\u06dc\u06d8\u06ec\u06e1\u06dc\u06d7\u06d7\u06e8\u06d8\u06da\u06e8\u06eb\u06da\u06e2\u06df\u06d8\u06e5"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x2f5

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x1ab

    const/16 v2, 0xa5

    const v3, -0x76a0702a

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06eb\u06dc\u06da\u06e6\u06e1\u06d7\u06e7\u06e8\u06e7\u06e5\u06d8\u06e1\u06d8\u06e0\u06e7\u06e8\u06d8\u06eb\u06e0\u06e6\u06e6\u06dc\u06e1\u06d8\u06e8\u06e5\u06d7\u06db\u06e7\u06e5\u06d8\u06eb\u06e0\u06e5\u06d8"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06e8\u06dc\u06eb\u06dc\u06ec\u06d8\u06d8\u06da\u06d7\u06d8\u06d8\u06eb\u06e2\u06e1\u06d8\u06db\u06e7\u06dc\u06da\u06dc\u06d8\u06e7\u06e5\u06e7\u06d8\u06eb\u06d8\u06d8\u06d8\u06da\u06df\u06d9\u06db\u06e2\u06e6\u06d8\u06da\u06e8\u06e8\u06d8\u06e5\u06e5\u06d8\u06e4\u06e0\u06e7\u06e6\u06e4\u06e6\u06d8\u06e0\u06db\u06df\u06ec\u06da"

    goto :goto_0

    :sswitch_2
    const v1, 0x49144243

    const-string v0, "\u06dc\u06e7\u06d8\u06e6\u06e8\u06da\u06d9\u06e2\u06d8\u06d8\u06e5\u06e2\u06e7\u06e5\u06d8\u06d6\u06e5\u06d6\u06e6\u06e8\u06e6\u06df\u06e2\u06ec\u06d9\u06d8\u06df\u06e1\u06eb\u06e0\u06e6\u06dc\u06e4\u06eb\u06e7\u06ec\u06e8\u06d7\u06e8\u06db\u06e0\u06e8\u06e8\u06e1\u06e2\u06db\u06e5\u06eb\u06dc"

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v2, v1

    sparse-switch v2, :sswitch_data_1

    goto :goto_1

    :sswitch_3
    const-string v0, "\u06dc\u06db\u06e0\u06d8\u06e7\u06d7\u06eb\u06e5\u06e4\u06e1\u06eb\u06df\u06e0\u06e5\u06ec\u06e6\u06d8\u06e7\u06df\u06ec\u06e1\u06d8\u06e7\u06d9\u06e1\u06d8\u06e0\u06e8\u06d6\u06d8\u06db\u06dc\u06e7\u06e4\u06db\u06eb\u06d8\u06e1\u06d6\u06e2\u06e7\u06d7\u06e5\u06d6\u06d8\u06e2\u06e4\u06da\u06eb\u06e0\u06dc\u06d8"

    goto :goto_1

    :sswitch_4
    const-string v0, "\u06d8\u06d7\u06e8\u06d8\u06dc\u06dc\u06dc\u06d7\u06d7\u06d8\u06e8\u06e0\u06e4\u06eb\u06e7\u06d6\u06d8\u06e6\u06db\u06e1\u06e0\u06e1\u06d6\u06dc\u06e1\u06e2\u06e2\u06e7\u06e4\u06dc\u06e5\u06d6"

    goto :goto_1

    :sswitch_5
    const v2, 0x5a09858a

    const-string v0, "\u06e2\u06e2\u06e8\u06e2\u06e5\u06da\u06e4\u06da\u06d8\u06e7\u06da\u06da\u06df\u06e6\u06e0\u06d8\u06e0\u06d6\u06ec\u06d7\u06e7\u06d6\u06db\u06e5\u06d6\u06e0\u06e6\u06db\u06da\u06da\u06e2\u06df\u06ec\u06dc\u06db\u06e4"

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v2

    sparse-switch v3, :sswitch_data_2

    goto :goto_2

    :sswitch_6
    const-string v0, "\u06ec\u06e1\u06d6\u06e1\u06e1\u06d8\u06e2\u06e6\u06e8\u06df\u06e1\u06dc\u06d8\u06e8\u06e2\u06e6\u06eb\u06da\u06d7\u06e5\u06e8\u06d8\u06e5\u06eb\u06e1\u06d8\u06db\u06df\u06ec\u06d7\u06db\u06d7\u06e4\u06d8\u06eb\u06e2\u06eb\u06ec\u06e7\u06d6\u06e6\u06e8\u06da\u06ec\u06e8\u06da\u06db\u06e8\u06da"

    goto :goto_2

    :cond_0
    const-string v0, "\u06eb\u06eb\u06e5\u06e7\u06e5\u06e7\u06d8\u06e4\u06dc\u06e2\u06e5\u06e7\u06e8\u06db\u06d8\u06e8\u06d8\u06df\u06ec\u06e5\u06e4\u06e0\u06d7\u06d9\u06da\u06dc\u06eb\u06e6\u06d8\u06e6\u06ec\u06e7\u06e1\u06e5\u06e7\u06d8\u06d7\u06eb\u06dc\u06d8"

    goto :goto_2

    :sswitch_7
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v3, 0x7f09046e

    if-eq v0, v3, :cond_0

    const-string v0, "\u06e1\u06d8\u06e4\u06dc\u06da\u06e6\u06d8\u06da\u06ec\u06d8\u06d8\u06e2\u06db\u06e5\u06d8\u06d8\u06d6\u06e6\u06e0\u06e5\u06e1\u06d8\u06db\u06e8\u06da\u06e6\u06e0\u06df\u06e1\u06dc\u06d8\u06d8\u06e0\u06d9\u06d8\u06d8\u06e1\u06dc\u06d9\u06dc\u06ec\u06e6\u06d8\u06e4\u06e0\u06d8\u06e2\u06dc\u06df\u06ec\u06e4\u06e6\u06e4\u06e4\u06db"

    goto :goto_2

    :sswitch_8
    const-string v0, "\u06e2\u06d6\u06d8\u06d8\u06d8\u06ec\u06eb\u06e4\u06df\u06e8\u06d8\u06e6\u06e5\u06e5\u06e5\u06e7\u06d8\u06eb\u06d8\u06ec\u06e7\u06e0\u06dc\u06e1\u06d6\u06d8\u06d8\u06d6\u06da\u06e7\u06df\u06e4\u06e7\u06ec\u06d7\u06e8\u06d7\u06e4\u06e1\u06d8\u06e1\u06da\u06e4\u06d7\u06e8\u06d8"

    goto :goto_1

    :sswitch_9
    const-string v0, "\u06d9\u06e6\u06eb\u06df\u06eb\u06d8\u06d8\u06d7\u06d6\u06e4\u06db\u06d8\u06db\u06d9\u06e7\u06e5\u06d8\u06e2\u06e7\u06eb\u06ec\u06df\u06e5\u06ec\u06d6\u06e4\u06d7\u06e8\u06e6\u06da\u06e8\u06d8"

    goto :goto_0

    :sswitch_a
    invoke-direct {p0}, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;->OooOOOO()V

    const-string v0, "\u06df\u06db\u06eb\u06d7\u06dc\u06e2\u06dc\u06e5\u06e0\u06e5\u06df\u06e5\u06d8\u06df\u06df\u06e6\u06e7\u06e2\u06df\u06e1\u06db\u06d8\u06eb\u06e5\u06e2\u06db\u06d7\u06d6\u06d8\u06ec\u06e8\u06eb\u06e8\u06eb\u06e1\u06d8\u06da\u06d6\u06df\u06e0\u06e2\u06dc\u06eb\u06d6\u06df\u06e5\u06ec\u06d9\u06df\u06da\u06e1"

    goto :goto_0

    :sswitch_b
    const-string v0, "\u06d7\u06e8\u06dc\u06d8\u06df\u06dc\u06d7\u06d6\u06dc\u06df\u06e0\u06dc\u06db\u06e1\u06ec\u06e1\u06da\u06d8\u06e7\u06e1\u06dc\u06d7\u06eb\u06dc\u06e6\u06d9\u06d6\u06e6\u06db\u06df"

    goto :goto_0

    :sswitch_c
    const-string v0, "\u06df\u06db\u06eb\u06d7\u06dc\u06e2\u06dc\u06e5\u06e0\u06e5\u06df\u06e5\u06d8\u06df\u06df\u06e6\u06e7\u06e2\u06df\u06e1\u06db\u06d8\u06eb\u06e5\u06e2\u06db\u06d7\u06d6\u06d8\u06ec\u06e8\u06eb\u06e8\u06eb\u06e1\u06d8\u06da\u06d6\u06df\u06e0\u06e2\u06dc\u06eb\u06d6\u06df\u06e5\u06ec\u06d9\u06df\u06da\u06e1"

    goto :goto_0

    :sswitch_d
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x10103b5d -> :sswitch_a
        0x279bfa3a -> :sswitch_1
        0x3adfc435 -> :sswitch_2
        0x3cc565f2 -> :sswitch_c
        0x42bbb9b0 -> :sswitch_0
        0x5a3a4849 -> :sswitch_d
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x16cfd21c -> :sswitch_3
        -0x6c32284 -> :sswitch_5
        0x48a547ef -> :sswitch_9
        0x5c41cd40 -> :sswitch_b
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        -0x51f4a4e4 -> :sswitch_8
        -0x4dcbc5b2 -> :sswitch_4
        -0x45ecdd35 -> :sswitch_6
        -0x16d31b18 -> :sswitch_7
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    const-string v0, "\u06e0\u06e7\u06ec\u06e0\u06eb\u06e8\u06d9\u06eb\u06e1\u06df\u06d8\u06e8\u06d8\u06df\u06d7\u06d8\u06d8\u06e1\u06e0\u06d7\u06e6\u06e1\u06d8\u06e7\u06d6\u06d7\u06e7\u06e4\u06e1\u06d8\u06d6\u06e6\u06e1\u06d8\u06eb\u06db\u06da\u06e2\u06d8\u06da"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x337

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x332

    const/16 v2, 0x6e

    const v3, -0x7bcc3901

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06dc\u06dc\u06d9\u06e5\u06db\u06d7\u06d9\u06e1\u06d6\u06e0\u06d7\u06df\u06da\u06ec\u06dc\u06e1\u06d8\u06e6\u06d8\u06eb\u06dc\u06e4\u06e1\u06e6\u06dc\u06e8\u06e0\u06dc\u06eb\u06e5\u06dc\u06d8\u06d7\u06ec\u06e7\u06d7\u06d7\u06eb\u06df\u06d6\u06d9\u06e6\u06d8"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06d9\u06e4\u06df\u06dc\u06da\u06e4\u06dc\u06e1\u06e8\u06ec\u06e5\u06df\u06e4\u06db\u06d8\u06d9\u06e6\u06e4\u06e8\u06dc\u06e6\u06d7\u06d8\u06e1\u06d8\u06e4\u06d9\u06e0\u06ec\u06dc\u06d8"

    goto :goto_0

    :sswitch_2
    invoke-super {p0, p1}, Lcom/cyjh/common/base/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "\u06d6\u06d6\u06e6\u06e2\u06eb\u06d6\u06db\u06ec\u06d6\u06d8\u06e6\u06da\u06dc\u06d8\u06d6\u06d8\u06e7\u06d8\u06d8\u06db\u06e1\u06d8\u06e0\u06e5\u06dc\u06d8\u06e1\u06db\u06d6\u06da\u06eb\u06e8\u06e6\u06e4\u06e0"

    goto :goto_0

    :sswitch_3
    const v0, 0x7f0c0030

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    const-string v0, "\u06ec\u06df\u06eb\u06e7\u06e7\u06e5\u06e5\u06d6\u06d8\u06df\u06e8\u06e4\u06e5\u06eb\u06e1\u06d8\u06e2\u06e2\u06dc\u06e8\u06da\u06da\u06d9\u06d8\u06e5\u06d6\u06d8\u06e4\u06e8\u06df\u06dc\u06e1\u06e6\u06db\u06e2\u06e0"

    goto :goto_0

    :sswitch_4
    invoke-direct {p0}, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;->initView()V

    const-string v0, "\u06e6\u06df\u06db\u06d8\u06dc\u06ec\u06eb\u06d8\u06e1\u06d8\u06d8\u06e8\u06eb\u06d9\u06db\u06d8\u06d8\u06e6\u06df\u06e0\u06e8\u06d9\u06da\u06df\u06d7\u06dc\u06d8\u06e6\u06ec\u06d7\u06d9\u06df\u06e2\u06e8\u06df\u06df\u06e0\u06d8\u06e5\u06d8"

    goto :goto_0

    :sswitch_5
    invoke-direct {p0}, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;->OooOOOo()V

    const-string v0, "\u06e4\u06d9\u06e6\u06d8\u06e6\u06d8\u06dc\u06d8\u06e6\u06eb\u06e8\u06d8\u06d7\u06df\u06da\u06e8\u06d7\u06da\u06da\u06e4\u06e2\u06e6\u06d8\u06e6\u06eb\u06db\u06eb\u06e8\u06d9\u06eb\u06d6\u06eb\u06e5\u06e7\u06e1\u06d8\u06e8\u06ec\u06e7\u06e1\u06eb\u06da\u06d8\u06d8\u06e4\u06d8\u06dc\u06d8\u06e4\u06d9"

    goto :goto_0

    :sswitch_6
    invoke-direct {p0}, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;->initData()V

    const-string v0, "\u06d7\u06db\u06e6\u06df\u06eb\u06e5\u06df\u06da\u06d8\u06d8\u06e1\u06e4\u06d9\u06e8\u06da\u06e2\u06d9\u06ec\u06e1\u06d8\u06d7\u06e1\u06e8\u06e0\u06d9\u06e1\u06d8\u06e1\u06dc\u06db\u06ec\u06e8\u06e1\u06dc\u06ec\u06d8\u06d8\u06d8\u06e5\u06e5"

    goto :goto_0

    :sswitch_7
    invoke-direct {p0}, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;->initListener()V

    const-string v0, "\u06eb\u06e5\u06e8\u06d7\u06d6\u06d8\u06d8\u06dc\u06df\u06e1\u06e1\u06d7\u06e7\u06e8\u06d8\u06e5\u06dc\u06df\u06dc\u06d8\u06e4\u06e2\u06e6\u06df\u06eb\u06e6\u06d8\u06e4\u06df\u06e1\u06d8\u06e8\u06d9\u06e8\u06d8\u06e8\u06e2\u06eb\u06e0\u06db\u06d7\u06e6\u06e1\u06db\u06d7\u06e4\u06d6\u06db\u06e6\u06da\u06ec\u06e4\u06e8\u06e0\u06d6\u06e1\u06e4\u06da\u06dc\u06d8"

    goto :goto_0

    :sswitch_8
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x4d483089 -> :sswitch_8
        -0x2b7608b5 -> :sswitch_5
        -0x283cc9f8 -> :sswitch_2
        0x9a5a33b -> :sswitch_3
        0x27e29b61 -> :sswitch_4
        0x283227b4 -> :sswitch_0
        0x2c06186a -> :sswitch_6
        0x53393662 -> :sswitch_1
        0x550d597f -> :sswitch_7
    .end sparse-switch
.end method
