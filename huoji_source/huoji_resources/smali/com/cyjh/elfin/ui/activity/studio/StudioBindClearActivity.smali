.class public Lcom/cyjh/elfin/ui/activity/studio/StudioBindClearActivity;
.super Lcom/cyjh/common/base/activity/BaseActivity;

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static o00O0O:Ljava/lang/String;

.field public static ooOO:Ljava/lang/String;


# instance fields
.field private OooooO0:Landroid/widget/TextView;

.field private OooooOO:Landroid/widget/TextView;

.field private OooooOo:Landroid/widget/TextView;

.field private Oooooo:Landroid/os/Handler;

.field private Oooooo0:Z

.field private OoooooO:Ljava/lang/String;

.field private Ooooooo:Landroid/widget/FrameLayout;

.field private o0OoOo0:Lcom/cyjh/elfin/ui/view/customview/TitleView;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const-string v0, "\u06e6\u06ec\u06e5\u06e0\u06e2\u06eb\u06eb\u06d9\u06e6\u06d8\u06d9\u06e1\u06ec\u06da\u06ec\u06e4\u06d9\u06ec\u06d6\u06d8\u06e1\u06db\u06e1\u06d8\u06df\u06e8\u06da\u06e2\u06e1\u06d9\u06dc\u06d6\u06e7\u06db\u06e8\u06dc\u06e6\u06d7\u06d7\u06ec\u06df\u06dc\u06e1\u06da\u06d8\u06d9\u06df\u06d7\u06e6\u06df\u06e1"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x1c8

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x38d

    const/16 v2, 0x39a

    const v3, -0xebca463

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-class v0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindClearActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindClearActivity;->ooOO:Ljava/lang/String;

    const-string v0, "\u06db\u06e7\u06e4\u06db\u06e0\u06d8\u06ec\u06d7\u06e5\u06dc\u06d6\u06e1\u06d8\u06d8\u06d9\u06da\u06d9\u06d6\u06d8\u06d8\u06d8\u06e7\u06e5\u06d8\u06e6\u06df\u06d6\u06d8\u06e8\u06dc\u06e8\u06d8\u06d6\u06d6\u06df\u06d6\u06e2\u06e4\u06d7\u06e1\u06d6\u06d9\u06db\u06dc\u06d6\u06e5"

    goto :goto_0

    :sswitch_1
    const-string v0, "studio_project_key"

    sput-object v0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindClearActivity;->o00O0O:Ljava/lang/String;

    const-string v0, "\u06e6\u06d6\u06e2\u06e8\u06d6\u06eb\u06d9\u06e7\u06e8\u06e4\u06e5\u06e2\u06e2\u06d7\u06dc\u06e2\u06d6\u06e8\u06e5\u06e8\u06e5\u06e0\u06e7\u06df\u06e7\u06e2\u06e4\u06d6\u06e5\u06d9\u06e6\u06eb\u06df\u06df\u06d7\u06ec\u06d8\u06d6\u06dc\u06d8\u06df\u06e6\u06e7\u06d8\u06ec\u06d6\u06d6\u06d8\u06dc\u06d9\u06db\u06e6\u06db\u06e8\u06d8\u06e4\u06da\u06e5"

    goto :goto_0

    :sswitch_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x760bf461 -> :sswitch_1
        -0x6428f298 -> :sswitch_0
        0x3f240178 -> :sswitch_2
    .end sparse-switch
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/cyjh/common/base/activity/BaseActivity;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindClearActivity;->Oooooo0:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindClearActivity;->Oooooo:Landroid/os/Handler;

    return-void
.end method

.method public static OooO(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    const/4 v1, 0x0

    const-string v0, "\u06ec\u06ec\u06e8\u06d8\u06d6\u06e5\u06d6\u06d8\u06e6\u06e2\u06e6\u06d8\u06d6\u06e1\u06e8\u06e7\u06e1\u06e0\u06e6\u06e5\u06e8\u06e6\u06e0\u06dc\u06d8\u06eb\u06ec\u06e1\u06eb\u06da\u06dc\u06d6\u06d8\u06d8\u06e6\u06e8\u06e7\u06d8\u06da\u06d7\u06e8\u06e8\u06e1\u06d8\u06ec\u06e8\u06e1\u06d8\u06d7\u06dc\u06e6\u06e0\u06e7\u06d6\u06e7\u06e1\u06e4\u06e5\u06d7\u06d6\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v3, 0x134

    xor-int/2addr v2, v3

    xor-int/lit16 v2, v2, 0x1ee

    const/16 v3, 0x11b

    const v4, -0x39436e1b

    xor-int/2addr v2, v3

    xor-int/2addr v2, v4

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d8\u06d8\u06ec\u06dc\u06e5\u06e7\u06d8\u06d9\u06ec\u06e6\u06e8\u06e6\u06dc\u06eb\u06d9\u06eb\u06e4\u06db\u06e1\u06d8\u06d7\u06d6\u06ec\u06e1\u06e0\u06dc\u06d8\u06e8\u06ec\u06e1\u06da\u06da\u06eb"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06e5\u06e1\u06d9\u06e7\u06df\u06e2\u06e8\u06e6\u06e6\u06d8\u06d6\u06ec\u06d6\u06dc\u06da\u06eb\u06e7\u06dc\u06e8\u06d8\u06e8\u06e0\u06e1\u06d8\u06e4\u06dc\u06e2\u06eb\u06e1\u06e7\u06d6\u06dc\u06e6\u06d8\u06d6\u06db\u06df\u06e1\u06e6\u06db\u06da\u06e1\u06e0\u06e1\u06eb\u06d6"

    goto :goto_0

    :sswitch_2
    new-instance v1, Landroid/content/Intent;

    const-class v0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindClearActivity;

    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "\u06df\u06d8\u06e1\u06e7\u06e6\u06d6\u06db\u06e1\u06ec\u06e1\u06d9\u06e2\u06d8\u06eb\u06eb\u06e7\u06db\u06e5\u06dc\u06e4\u06e4\u06e7\u06d6\u06d8\u06d8\u06e6\u06e7\u06db\u06e7\u06db\u06d7\u06db\u06e7\u06e8\u06df\u06da\u06e4"

    goto :goto_0

    :sswitch_3
    sget-object v0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindClearActivity;->o00O0O:Ljava/lang/String;

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "\u06d8\u06e6\u06dc\u06dc\u06d9\u06df\u06ec\u06e4\u06d6\u06d8\u06e1\u06d8\u06e4\u06db\u06e7\u06e0\u06d8\u06eb\u06d9\u06e5\u06e5\u06eb\u06eb\u06e1\u06db\u06e6\u06df\u06e1\u06d6\u06d9\u06da\u06e4\u06e0\u06da\u06e2\u06e7\u06e2\u06d9\u06e6\u06d8\u06da\u06e1\u06e7\u06d8\u06e0\u06db\u06e8\u06e1\u06e5"

    goto :goto_0

    :sswitch_4
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const-string v0, "\u06d8\u06df\u06d6\u06d8\u06e4\u06e1\u06eb\u06d6\u06e6\u06e1\u06e2\u06d6\u06ec\u06d7\u06df\u06e0\u06db\u06ec\u06dc\u06d8\u06d8\u06ec\u06e1\u06d6\u06e1\u06ec\u06d9\u06d6\u06e1\u06e2\u06dc\u06d8\u06d9\u06d9\u06d9\u06e7\u06eb\u06eb\u06d6\u06da\u06db\u06db\u06d6\u06dc\u06eb\u06e8\u06d8\u06e2\u06ec\u06d6\u06d8"

    goto :goto_0

    :sswitch_5
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7d86648f -> :sswitch_3
        -0x6986ec38 -> :sswitch_2
        0x65ae34b0 -> :sswitch_0
        0x6c150578 -> :sswitch_1
        0x6fa18b63 -> :sswitch_4
        0x7c7a328c -> :sswitch_5
    .end sparse-switch
.end method

.method public static synthetic OooO0oO(Lcom/cyjh/elfin/ui/activity/studio/StudioBindClearActivity;Z)Z
    .locals 4

    const-string v0, "\u06df\u06eb\u06d8\u06d8\u06e2\u06e1\u06e5\u06df\u06d6\u06e6\u06e5\u06e4\u06d8\u06d8\u06d7\u06e6\u06d7\u06e0\u06d9\u06dc\u06d6\u06dc\u06e6\u06d8\u06e7\u06df\u06e4\u06d7\u06eb\u06eb\u06dc\u06d8\u06e1\u06df\u06dc\u06d9\u06d8\u06eb\u06e0\u06ec\u06e2\u06da\u06db\u06eb\u06e4\u06db\u06ec\u06e8\u06e6\u06d6\u06e7\u06e4\u06dc\u06d7\u06d6\u06e8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x2a9

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x184

    const/16 v2, 0xaa

    const v3, -0x61239fbb

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d7\u06d8\u06d6\u06d7\u06e6\u06eb\u06e0\u06e1\u06ec\u06d8\u06d7\u06e1\u06d8\u06e5\u06db\u06d6\u06d8\u06e7\u06e6\u06db\u06d7\u06da\u06d9\u06d9\u06eb\u06e2\u06e5\u06e1\u06e5\u06db\u06d8\u06d8\u06d8\u06e2\u06d9\u06df\u06e1\u06d8\u06ec\u06d6\u06d6\u06e8\u06d8\u06e4\u06e6\u06e1\u06d8\u06e8\u06d9\u06e5\u06e7\u06e7\u06e5\u06d8"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06e6\u06ec\u06df\u06eb\u06d6\u06e8\u06d8\u06df\u06e5\u06e0\u06dc\u06ec\u06da\u06e4\u06ec\u06e8\u06d9\u06d7\u06d7\u06e8\u06eb\u06dc\u06d8\u06dc\u06e7\u06dc\u06d8\u06dc\u06db\u06d8\u06e4\u06db\u06e7"

    goto :goto_0

    :sswitch_2
    iput-boolean p1, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindClearActivity;->Oooooo0:Z

    const-string v0, "\u06e8\u06eb\u06d8\u06da\u06e5\u06e6\u06e6\u06eb\u06ec\u06dc\u06d8\u06e1\u06ec\u06e4\u06d7\u06e5\u06e8\u06e6\u06e5\u06e8\u06eb\u06e8\u06ec\u06ec\u06e7\u06e1\u06e8\u06e7\u06dc\u06d9\u06d7\u06e8\u06e8\u06dc\u06e7\u06e4"

    goto :goto_0

    :sswitch_3
    return p1

    :sswitch_data_0
    .sparse-switch
        -0x7720f6d3 -> :sswitch_1
        -0x65436fde -> :sswitch_3
        -0x1d215081 -> :sswitch_0
        -0x9e577c8 -> :sswitch_2
    .end sparse-switch
.end method

.method public static synthetic OooO0oo(Lcom/cyjh/elfin/ui/activity/studio/StudioBindClearActivity;)Landroid/os/Handler;
    .locals 4

    const-string v0, "\u06d9\u06d7\u06eb\u06db\u06db\u06e7\u06dc\u06e4\u06d8\u06ec\u06e5\u06e2\u06df\u06e4\u06d9\u06d9\u06e0\u06e6\u06d8\u06df\u06da\u06e1\u06d8\u06e1\u06e6\u06e7\u06eb\u06e5\u06e4\u06d8\u06e1\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x2be

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x21e

    const/16 v2, 0x2d0

    const v3, 0x5d3206f2

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d7\u06e5\u06d6\u06da\u06e4\u06e8\u06e0\u06e5\u06d6\u06db\u06db\u06d7\u06df\u06dc\u06e5\u06d9\u06e5\u06e1\u06d9\u06df\u06e7\u06db\u06d6\u06d8\u06db\u06d8\u06e6\u06df\u06df\u06eb\u06e7\u06e6\u06d6\u06d8\u06e8\u06ec\u06df\u06df\u06eb\u06eb\u06e8\u06e2\u06e0"

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindClearActivity;->Oooooo:Landroid/os/Handler;

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x58ed2d27 -> :sswitch_0
        -0x57fb41a8 -> :sswitch_1
    .end sparse-switch
.end method

.method public static OooOO0(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    const/4 v1, 0x0

    const-string v0, "\u06df\u06d7\u06e0\u06e6\u06e2\u06da\u06e4\u06db\u06db\u06dc\u06e1\u06e8\u06e0\u06df\u06e0\u06db\u06e6\u06e0\u06e2\u06e1\u06d8\u06d9\u06d7\u06e8\u06d8\u06e8\u06d6\u06e0\u06e8\u06e4\u06dc\u06d8\u06e8\u06d9\u06e0\u06da\u06e0\u06e8\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v3, 0x38e

    xor-int/2addr v2, v3

    xor-int/lit8 v2, v2, 0x20

    const/16 v3, 0x1f2

    const v4, -0x6ce8e0cc

    xor-int/2addr v2, v3

    xor-int/2addr v2, v4

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e4\u06d9\u06eb\u06d6\u06db\u06e0\u06d8\u06db\u06e8\u06d9\u06e4\u06eb\u06e2\u06e8\u06dc\u06dc\u06e1\u06d6\u06d8\u06e5\u06e7\u06ec\u06d8\u06d9\u06e1\u06d9\u06e6\u06e6\u06d8\u06d6\u06d8\u06dc\u06d8\u06df\u06e2\u06e1\u06e4\u06e8\u06e4\u06d6\u06d9\u06d7\u06e0\u06eb\u06e7\u06e0\u06e6\u06e1\u06d8\u06ec\u06e4\u06e5\u06da\u06da\u06d8\u06df\u06e5\u06d8"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06e2\u06e4\u06df\u06eb\u06e1\u06e8\u06ec\u06e7\u06e6\u06d8\u06e0\u06e7\u06e5\u06d8\u06da\u06e4\u06d6\u06d8\u06d7\u06e1\u06d6\u06e6\u06d7\u06df\u06e1\u06d6\u06e7\u06d8\u06e6\u06da\u06e8\u06eb\u06e2\u06d8\u06d8\u06e4\u06eb\u06e5\u06e7\u06e4\u06e2\u06e8\u06eb\u06da\u06e5\u06e0\u06e2\u06e6\u06d8\u06e8\u06e8\u06d8\u06e1\u06ec\u06e4\u06d9\u06d8\u06e7\u06e6"

    goto :goto_0

    :sswitch_2
    new-instance v1, Landroid/content/Intent;

    const-class v0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindClearActivity;

    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "\u06df\u06e4\u06da\u06e8\u06db\u06e7\u06eb\u06e1\u06d8\u06d8\u06d7\u06d7\u06dc\u06d8\u06ec\u06e6\u06dc\u06eb\u06e7\u06d7\u06dc\u06eb\u06e8\u06d8\u06e7\u06df\u06d6\u06d6\u06d9\u06d9\u06e0\u06e8\u06dc\u06d8\u06e1\u06d6\u06e1\u06ec\u06d9\u06e6\u06d8"

    goto :goto_0

    :sswitch_3
    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v0, "\u06e8\u06dc\u06e6\u06d6\u06db\u06e4\u06e4\u06ec\u06e6\u06d8\u06e0\u06d9\u06e8\u06db\u06db\u06da\u06d8\u06da\u06d8\u06d8\u06d6\u06e5\u06db\u06eb\u06eb\u06e7\u06df\u06e8\u06eb\u06d9\u06d9\u06e6\u06d8\u06dc\u06e5\u06e5\u06d8\u06e0\u06eb\u06d7\u06e4\u06e6\u06d8\u06e6\u06eb\u06e2\u06d7\u06df\u06ec\u06e4\u06e6\u06e1\u06d8\u06df\u06dc\u06e1\u06d8\u06eb\u06e2\u06e0"

    goto :goto_0

    :sswitch_4
    sget-object v0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindClearActivity;->o00O0O:Ljava/lang/String;

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "\u06d6\u06d7\u06eb\u06e8\u06ec\u06dc\u06e5\u06d9\u06d9\u06e8\u06e6\u06dc\u06d8\u06e0\u06eb\u06eb\u06ec\u06ec\u06e6\u06e4\u06db\u06e0\u06ec\u06d9\u06da\u06e6\u06e6\u06e5\u06e4\u06e8"

    goto :goto_0

    :sswitch_5
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const-string v0, "\u06d6\u06ec\u06ec\u06e1\u06e8\u06e8\u06d8\u06d8\u06e0\u06dc\u06e1\u06e2\u06d9\u06d6\u06e8\u06e7\u06d8\u06e0\u06e1\u06e4\u06db\u06e7\u06e7\u06e2\u06e8\u06dc\u06d6\u06d8\u06e1\u06eb\u06e6\u06d8"

    goto :goto_0

    :sswitch_6
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x48d01752 -> :sswitch_3
        -0x45125a15 -> :sswitch_2
        -0x33d24cfe -> :sswitch_4
        0xaa25cd8 -> :sswitch_1
        0xb404126 -> :sswitch_5
        0x50cf6dd1 -> :sswitch_0
        0x7cb09fa0 -> :sswitch_6
    .end sparse-switch
.end method

.method private OooOO0O()V
    .locals 4

    const-string v0, "\u06eb\u06e1\u06dc\u06df\u06ec\u06d6\u06e4\u06da\u06d7\u06d6\u06df\u06e1\u06d8\u06d7\u06e6\u06d8\u06e2\u06eb\u06e5\u06d8\u06df\u06ec\u06e7\u06d6\u06e0\u06e2\u06d7\u06da\u06e5\u06d8\u06e0\u06e7\u06d9\u06df\u06d7\u06d6\u06e1\u06e5\u06e6\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x3a6

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0xad

    const/16 v2, 0x382

    const v3, -0x16bdcb0d

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e7\u06d9\u06d6\u06d8\u06d7\u06eb\u06dc\u06d8\u06ec\u06e8\u06ec\u06d7\u06e5\u06e0\u06d6\u06ec\u06d8\u06e1\u06d6\u06e1\u06d8\u06e7\u06df\u06e0\u06d9\u06db\u06e7\u06db\u06da\u06d6\u06d7\u06e1\u06e6\u06d8\u06df\u06db\u06d8\u06db\u06e6\u06e1\u06df\u06e8\u06e8\u06d8\u06ec\u06d7\u06d6\u06d8\u06d7\u06e7\u06e1\u06d8\u06dc\u06eb\u06dc\u06d8\u06e0\u06e1\u06e6\u06e0\u06d8\u06df"

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindClearActivity;->o0OoOo0:Lcom/cyjh/elfin/ui/view/customview/TitleView;

    const v1, 0x7f10004d

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setTitleText(I)V

    const-string v0, "\u06d6\u06dc\u06da\u06e8\u06d9\u06e7\u06e5\u06e2\u06e7\u06db\u06e5\u06e5\u06df\u06e8\u06e5\u06e6\u06ec\u06da\u06ec\u06d7\u06d8\u06e5\u06e5\u06d6\u06e6\u06da\u06d8\u06d8\u06dc\u06e2\u06dc\u06eb\u06e8\u06e0\u06d7\u06e5\u06eb\u06e4\u06e0\u06e2\u06db\u06dc\u06e5\u06d8\u06e6\u06e4\u06df\u06e5\u06d6\u06d6\u06e0\u06e0\u06e8\u06eb\u06ec\u06e7"

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindClearActivity;->o0OoOo0:Lcom/cyjh/elfin/ui/view/customview/TitleView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setVisibilityLeftImage(I)V

    const-string v0, "\u06d9\u06e0\u06e5\u06e2\u06e8\u06e6\u06dc\u06e0\u06e4\u06d7\u06d8\u06e2\u06e2\u06d8\u06e6\u06dc\u06e5\u06e1\u06d8\u06da\u06e8\u06da\u06d6\u06da\u06ec\u06d7\u06d7\u06dc\u06db\u06d6\u06dc\u06d8\u06e1\u06eb\u06e7\u06da\u06e4\u06e8\u06e2\u06e2\u06da\u06e4\u06e6\u06e7\u06e1\u06df\u06e6\u06e1\u06d8\u06e0\u06d8\u06e6\u06da\u06eb\u06ec"

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindClearActivity;->o0OoOo0:Lcom/cyjh/elfin/ui/view/customview/TitleView;

    const v1, 0x7f0801c9

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setleftImage(I)V

    const-string v0, "\u06e8\u06e8\u06e8\u06d8\u06e6\u06dc\u06e8\u06ec\u06e1\u06e7\u06d7\u06df\u06e5\u06d7\u06d7\u06e4\u06dc\u06e1\u06e6\u06d9\u06d6\u06dc\u06d8\u06d6\u06d9\u06e6\u06e2\u06d9\u06db\u06e5\u06e4\u06eb\u06d7\u06e2\u06d7\u06e5\u06e7\u06d8\u06db\u06df\u06e6\u06d8\u06d9\u06e5\u06d6"

    goto :goto_0

    :sswitch_4
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindClearActivity;->o0OoOo0:Lcom/cyjh/elfin/ui/view/customview/TitleView;

    new-instance v1, Lz2/o9;

    invoke-direct {v1, p0}, Lz2/o9;-><init>(Lcom/cyjh/elfin/ui/activity/studio/StudioBindClearActivity;)V

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setOnLeftImageViewListener(Lcom/cyjh/elfin/ui/view/customview/TitleView$OooO0O0;)V

    const-string v0, "\u06dc\u06e8\u06e5\u06d8\u06e5\u06df\u06db\u06e7\u06e5\u06e5\u06e7\u06e7\u06eb\u06e4\u06ec\u06df\u06e7\u06e5\u06db\u06db\u06d8\u06dc\u06e6\u06e0\u06e1\u06d8\u06d9\u06e1\u06e6\u06e6\u06e8\u06d8\u06d6\u06d7\u06e8\u06dc\u06db\u06e8\u06d8\u06df\u06e1\u06d9\u06e8\u06d6\u06d6\u06d8"

    goto :goto_0

    :sswitch_5
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindClearActivity;->o0OoOo0:Lcom/cyjh/elfin/ui/view/customview/TitleView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setVisibilityRightImage(I)V

    const-string v0, "\u06e1\u06e6\u06e0\u06eb\u06e8\u06d8\u06eb\u06e6\u06d8\u06d8\u06d8\u06eb\u06e0\u06d7\u06d6\u06d8\u06d8\u06d9\u06eb\u06e1\u06e1\u06d8\u06d6\u06d8\u06e6\u06df\u06dc\u06d8\u06e0\u06df\u06d6\u06e4\u06e2\u06d8\u06eb\u06e8\u06d6\u06e7\u06df\u06d9\u06e2\u06e8\u06e5\u06d8\u06d8\u06df\u06ec\u06d6\u06eb\u06eb\u06eb\u06d9\u06e1"

    goto :goto_0

    :sswitch_6
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x50e17c34 -> :sswitch_3
        -0x5b792a8 -> :sswitch_1
        0x11930377 -> :sswitch_5
        0x29e6850e -> :sswitch_2
        0x38349327 -> :sswitch_0
        0x398b4a68 -> :sswitch_6
        0x4b085b98 -> :sswitch_4
    .end sparse-switch
.end method

.method private synthetic OooOO0o(Landroid/view/View;)V
    .locals 4

    const-string v0, "\u06e8\u06e5\u06e0\u06ec\u06e6\u06d8\u06df\u06e0\u06d7\u06e5\u06e8\u06e7\u06e4\u06d7\u06e0\u06ec\u06da\u06e4\u06e5\u06ec\u06d6\u06e6\u06e1\u06e8\u06d8\u06e5\u06d6\u06db\u06d7\u06e7\u06d6\u06dc\u06e6\u06e6\u06d8\u06d9\u06d8\u06e6\u06df\u06e8\u06e4\u06e5\u06dc\u06e4\u06db\u06e6\u06d7\u06e4\u06e4\u06dc\u06d8\u06e1\u06eb\u06ec\u06db\u06db\u06e1\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x2a1

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x313

    const/16 v2, 0xc2

    const v3, 0x52a15a0

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e6\u06db\u06e5\u06da\u06df\u06e5\u06d8\u06e6\u06da\u06da\u06eb\u06e6\u06e5\u06e0\u06ec\u06e8\u06e2\u06ec\u06eb\u06e1\u06d9\u06d9\u06dc\u06d8\u06d6\u06d8\u06df\u06d9\u06df\u06e2\u06db\u06d9\u06db\u06d8\u06d8\u06e5\u06d7\u06d8\u06d8\u06df\u06df\u06e8\u06e1\u06d9\u06d8\u06e5\u06e5\u06e5\u06da\u06d7\u06df\u06da\u06d6\u06db\u06eb\u06da\u06e1"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06d9\u06d9\u06d8\u06dc\u06e8\u06e8\u06d8\u06df\u06db\u06e4\u06d6\u06e0\u06d9\u06e5\u06d8\u06e4\u06d9\u06e1\u06eb\u06e2\u06e1\u06d8\u06eb\u06e5\u06d7\u06e8\u06db\u06eb\u06e2\u06d6\u06d8"

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const-string v0, "\u06e6\u06dc\u06d8\u06d8\u06d6\u06e8\u06dc\u06d8\u06df\u06ec\u06e1\u06e6\u06e6\u06d8\u06eb\u06e5\u06da\u06e5\u06e6\u06e8\u06e7\u06e4\u06eb\u06e7\u06db\u06ec\u06e4\u06db\u06dc\u06e1\u06ec\u06e7\u06dc\u06da\u06da\u06df\u06df\u06e6\u06db\u06e2\u06e8\u06d8\u06dc\u06e6\u06d7\u06dc\u06e5\u06d8\u06d8\u06e5\u06eb\u06e8"

    goto :goto_0

    :sswitch_3
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x74279c86 -> :sswitch_0
        -0x68efa213 -> :sswitch_3
        -0x3b535e24 -> :sswitch_1
        0x4c5869cd -> :sswitch_2
    .end sparse-switch
.end method

.method private OooOOO()V
    .locals 5

    const/4 v1, 0x0

    const-string v0, "\u06dc\u06eb\u06d8\u06d8\u06ec\u06dc\u06d8\u06d6\u06df\u06e1\u06e6\u06df\u06d6\u06d8\u06e4\u06e0\u06e6\u06d8\u06e7\u06e5\u06dc\u06e6\u06df\u06e5\u06d8\u06e5\u06db\u06d6\u06ec\u06d7\u06e5\u06d7\u06d8\u06eb\u06e6\u06d9\u06d7\u06d6\u06e7\u06e1\u06e4\u06e8\u06e0\u06e8\u06d6\u06d7\u06db\u06d7\u06e8\u06e2\u06e2\u06d6\u06d8\u06ec\u06db\u06e5\u06d8\u06df\u06df\u06dc"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v3, 0x308

    xor-int/2addr v2, v3

    xor-int/lit16 v2, v2, 0x1b8

    const/16 v3, 0x3ad

    const v4, 0x3015ebd9

    xor-int/2addr v2, v3

    xor-int/2addr v2, v4

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d9\u06d7\u06e1\u06e8\u06d8\u06e6\u06da\u06eb\u06e1\u06e7\u06d8\u06dc\u06d7\u06e2\u06e5\u06d9\u06e4\u06e2\u06e7\u06eb\u06df\u06ec\u06e0\u06e1\u06d8\u06d9\u06dc\u06eb\u06d9\u06e7\u06d7\u06d6\u06e5\u06e5\u06da\u06d8\u06d6\u06e1\u06d8\u06e1\u06e1\u06eb\u06db\u06e5\u06e8\u06df\u06da\u06e7\u06e0"

    goto :goto_0

    :sswitch_1
    const v2, -0x5dbcfcba

    const-string v0, "\u06d7\u06ec\u06e5\u06d8\u06d7\u06ec\u06e2\u06ec\u06e2\u06df\u06e1\u06e0\u06e4\u06e5\u06e5\u06df\u06eb\u06d6\u06e0\u06e4\u06ec\u06e6\u06e5\u06e8\u06e6\u06db\u06e6\u06e7\u06e6\u06db\u06ec\u06ec\u06d9\u06d8\u06e0\u06e2\u06da"

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v2

    sparse-switch v3, :sswitch_data_1

    goto :goto_1

    :sswitch_2
    const v3, 0x18d4d578

    const-string v0, "\u06da\u06e4\u06e6\u06d8\u06ec\u06e2\u06eb\u06dc\u06d8\u06e5\u06d8\u06e0\u06e6\u06d8\u06d8\u06e1\u06e2\u06d9\u06e8\u06e2\u06e8\u06da\u06da\u06e1\u06e6\u06e6\u06e0\u06eb\u06d6\u06d8\u06d8\u06d7\u06e8\u06e8\u06d8\u06eb\u06da\u06e5\u06eb\u06ec\u06e1\u06da\u06da\u06da\u06df\u06e4\u06d9\u06e1\u06dc\u06da\u06dc\u06da\u06eb\u06ec\u06d6\u06ec\u06e8\u06d8\u06db"

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    xor-int/2addr v4, v3

    sparse-switch v4, :sswitch_data_2

    goto :goto_2

    :sswitch_3
    const-string v0, "\u06db\u06dc\u06e5\u06d8\u06e0\u06da\u06df\u06ec\u06e7\u06dc\u06e5\u06d8\u06e1\u06db\u06ec\u06dc\u06e6\u06e5\u06e5\u06d8\u06eb\u06e0\u06d6\u06d8\u06e6\u06d9\u06e2\u06eb\u06d9\u06df\u06e8\u06da\u06e5"

    goto :goto_2

    :sswitch_4
    const-string v0, "\u06e7\u06e6\u06d9\u06dc\u06d6\u06e2\u06ec\u06e7\u06ec\u06e5\u06e1\u06db\u06e0\u06da\u06dc\u06d8\u06e7\u06e0\u06e8\u06d8\u06e5\u06dc\u06e0\u06e4\u06e4\u06e5\u06da\u06e6\u06d7\u06e7\u06db\u06e6\u06d8"

    goto :goto_1

    :cond_0
    const-string v0, "\u06d6\u06e1\u06d8\u06d8\u06e6\u06e2\u06e8\u06d8\u06d6\u06dc\u06e1\u06da\u06d8\u06e1\u06df\u06eb\u06e6\u06d8\u06eb\u06dc\u06e0\u06d6\u06eb\u06e8\u06e7\u06d8\u06e8\u06eb\u06e6\u06e2\u06eb\u06d9"

    goto :goto_2

    :sswitch_5
    iget-boolean v0, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindClearActivity;->Oooooo0:Z

    if-eqz v0, :cond_0

    const-string v0, "\u06e2\u06e1\u06d8\u06d8\u06df\u06d6\u06e7\u06e4\u06db\u06d6\u06e8\u06e2\u06e2\u06eb\u06df\u06e5\u06d9\u06e0\u06dc\u06e7\u06e5\u06d8\u06d9\u06e5\u06d8\u06d7\u06e7\u06da\u06e0\u06d6\u06e8\u06db\u06e2\u06e6\u06ec\u06d8\u06e7\u06d8\u06eb\u06df\u06d8\u06d8\u06d7\u06e1\u06d8"

    goto :goto_2

    :sswitch_6
    const-string v0, "\u06df\u06ec\u06db\u06da\u06e5\u06df\u06e4\u06e0\u06d8\u06d8\u06d6\u06d8\u06e5\u06d8\u06e6\u06e0\u06e8\u06dc\u06e5\u06d7\u06e7\u06db\u06df\u06d9\u06d6\u06e6\u06d8\u06d8\u06e1\u06e5\u06d6\u06e8\u06df\u06e7\u06db\u06d8\u06e8\u06da\u06d8\u06d8\u06e4\u06e7\u06dc\u06eb\u06e1\u06e5\u06dc\u06e6\u06e4\u06eb\u06d9\u06d9\u06d6\u06e7\u06ec\u06db\u06e4\u06d7"

    goto :goto_1

    :sswitch_7
    const-string v0, "\u06d7\u06da\u06df\u06e0\u06e7\u06d7\u06e0\u06d6\u06e0\u06d8\u06e2\u06d6\u06d8\u06db\u06df\u06d9\u06e0\u06d9\u06d6\u06ec\u06d9\u06e1\u06d8\u06ec\u06da\u06da\u06d9\u06df\u06e7\u06e6\u06e6\u06e6\u06e8\u06e7\u06e8\u06d8\u06e5\u06ec\u06d7\u06d6\u06e2\u06d9\u06d7\u06dc\u06d8\u06e2\u06eb\u06e1\u06d8\u06eb\u06db\u06da\u06d8\u06ec\u06df\u06e6\u06d6\u06eb"

    goto :goto_1

    :sswitch_8
    const-string v0, "\u06d8\u06e4\u06e6\u06d8\u06eb\u06e1\u06e7\u06dc\u06e2\u06d7\u06d8\u06da\u06d8\u06da\u06d7\u06e5\u06d8\u06e8\u06db\u06e7\u06e0\u06e6\u06e8\u06db\u06eb\u06d9\u06dc\u06da\u06d7\u06e1\u06e0\u06eb"

    goto :goto_0

    :sswitch_9
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindClearActivity;->Oooooo0:Z

    const-string v0, "\u06da\u06e1\u06e7\u06df\u06e7\u06e5\u06e7\u06db\u06ec\u06d9\u06e6\u06dc\u06d8\u06e1\u06d9\u06dc\u06da\u06db\u06d7\u06e2\u06da\u06d7\u06e4\u06e8\u06e1\u06d8\u06df\u06e1\u06d8\u06db\u06dc\u06e8\u06e1\u06e6\u06e2\u06e6\u06e4\u06d6\u06d8\u06db\u06dc\u06e8\u06eb\u06dc\u06d6\u06d9\u06df\u06e8\u06d8\u06db\u06eb\u06e6\u06e0\u06e2\u06dc\u06dc\u06d9\u06d6"

    goto :goto_0

    :sswitch_a
    invoke-static {}, Lz2/b7;->OooO0Oo()Lz2/b7;

    move-result-object v0

    invoke-virtual {v0}, Lz2/b7;->OooO0oO()Lcom/cyjh/elfin/entity/Script;

    move-result-object v1

    const-string v0, "\u06dc\u06d9\u06e6\u06e6\u06d8\u06e2\u06e6\u06dc\u06e2\u06d7\u06e5\u06e7\u06e5\u06d7\u06dc\u06d8\u06d6\u06e0\u06d8\u06d8\u06e1\u06e4\u06da\u06e4\u06e2\u06e0\u06dc\u06e0\u06e6\u06d8\u06d6\u06e2\u06df\u06d6\u06d6\u06ec\u06d7\u06e7\u06e1\u06e4\u06eb\u06db\u06e0\u06da"

    goto :goto_0

    :sswitch_b
    const v2, -0x31c7f618    # -7.7191424E8f

    const-string v0, "\u06eb\u06eb\u06ec\u06ec\u06e2\u06d6\u06d8\u06ec\u06e0\u06e4\u06da\u06eb\u06d7\u06e2\u06ec\u06da\u06d6\u06e7\u06dc\u06e0\u06da\u06d7\u06e7\u06e7\u06dc\u06d7\u06dc\u06e6\u06d8\u06da\u06d7\u06e6\u06d8"

    :goto_3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v2

    sparse-switch v3, :sswitch_data_3

    goto :goto_3

    :sswitch_c
    const-string v0, "\u06d8\u06eb\u06e5\u06e5\u06e1\u06ec\u06e2\u06e0\u06e1\u06ec\u06da\u06dc\u06d8\u06eb\u06dc\u06e5\u06d8\u06e5\u06e2\u06e8\u06d8\u06d9\u06db\u06e4\u06db\u06ec\u06eb\u06df\u06eb\u06da\u06da\u06e7\u06d7\u06df\u06e1\u06e6\u06d7\u06ec\u06d8\u06d8"

    goto :goto_0

    :sswitch_d
    const-string v0, "\u06dc\u06e6\u06d8\u06d8\u06e2\u06e2\u06e4\u06d8\u06d8\u06d8\u06db\u06ec\u06e6\u06d8\u06d8\u06e5\u06d6\u06db\u06e4\u06e1\u06eb\u06d9\u06eb\u06ec\u06d6\u06dc\u06d8\u06d7\u06eb\u06e7\u06dc\u06e7\u06d6\u06d8\u06da\u06e5\u06e8\u06d8\u06d6\u06ec\u06d9"

    goto :goto_3

    :sswitch_e
    const v3, 0x63400d7a

    const-string v0, "\u06d6\u06e2\u06e5\u06d6\u06ec\u06dc\u06e5\u06e2\u06e2\u06d6\u06dc\u06d7\u06dc\u06da\u06dc\u06e6\u06e2\u06db\u06d8\u06d8\u06d8\u06d8\u06df\u06db\u06db\u06d8\u06d9\u06e4\u06ec\u06e1\u06d6"

    :goto_4
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    xor-int/2addr v4, v3

    sparse-switch v4, :sswitch_data_4

    goto :goto_4

    :sswitch_f
    if-eqz v1, :cond_1

    const-string v0, "\u06da\u06e1\u06e6\u06da\u06d6\u06e7\u06db\u06dc\u06e7\u06d8\u06e5\u06da\u06e4\u06d8\u06d8\u06e5\u06e4\u06ec\u06d8\u06d8\u06e7\u06db\u06e0\u06e4\u06df\u06e6\u06d8\u06db\u06e4\u06e6\u06eb\u06d9\u06df\u06df\u06e6\u06db\u06e1\u06da\u06e1\u06d8\u06d7\u06e2\u06d8\u06e1\u06e8\u06d6\u06d8\u06db\u06d7\u06db\u06dc\u06da\u06ec"

    goto :goto_4

    :cond_1
    const-string v0, "\u06e7\u06e2\u06e8\u06d8\u06d7\u06e1\u06d8\u06d7\u06eb\u06d6\u06d8\u06d9\u06eb\u06e6\u06d8\u06e6\u06e0\u06e2\u06dc\u06ec\u06e5\u06eb\u06e8\u06e5\u06d8\u06e1\u06df\u06e5\u06d7\u06e5\u06e2\u06e6\u06d8"

    goto :goto_4

    :sswitch_10
    const-string v0, "\u06e7\u06e4\u06db\u06db\u06eb\u06e1\u06d8\u06d7\u06e5\u06e1\u06eb\u06d9\u06d7\u06d8\u06d6\u06e7\u06d8\u06e6\u06e2\u06e6\u06d8\u06e1\u06e4\u06dc\u06d8\u06e1\u06eb\u06eb\u06da\u06df\u06e0\u06db\u06e2\u06dc\u06d8\u06da\u06d6\u06eb\u06da\u06dc\u06e5\u06da\u06df\u06e8\u06eb\u06eb\u06da\u06d6\u06d6\u06e0\u06dc\u06e2"

    goto :goto_4

    :sswitch_11
    const-string v0, "\u06d8\u06e5\u06dc\u06d9\u06e1\u06ec\u06e4\u06d6\u06d8\u06e7\u06da\u06d6\u06db\u06e0\u06e5\u06db\u06da\u06d9\u06d6\u06df\u06e1\u06d8\u06df\u06da\u06e0\u06da\u06df\u06e7\u06dc\u06e6\u06e5\u06d8\u06e6\u06e1\u06d8\u06eb\u06e1\u06e7\u06d8"

    goto :goto_3

    :sswitch_12
    const-string v0, "\u06e8\u06dc\u06e5\u06d8\u06d7\u06da\u06e6\u06e5\u06e2\u06dc\u06d7\u06e8\u06d8\u06dc\u06ec\u06e2\u06e6\u06da\u06e2\u06e7\u06d9\u06e1\u06d8\u06df\u06da\u06dc\u06e1\u06d7\u06e8\u06d8\u06e2\u06e2\u06e8\u06d8\u06d7\u06e0\u06d6\u06d8\u06d6\u06e2\u06e4\u06e7\u06e4\u06e5\u06e7\u06dc\u06e0\u06db\u06ec\u06e5\u06d7\u06e8\u06e7\u06d8"

    goto :goto_3

    :sswitch_13
    const-string v0, "\u06e8\u06e1\u06dc\u06d8\u06da\u06e8\u06e1\u06d8\u06e1\u06db\u06e5\u06df\u06e8\u06e0\u06d7\u06d8\u06e8\u06e2\u06eb\u06e7\u06d6\u06e6\u06eb\u06dc\u06e8\u06dc\u06e5\u06d6\u06e6\u06df\u06e2\u06e8\u06e6\u06e6\u06e7\u06dc\u06e1\u06d8\u06e6\u06e5\u06e5\u06e4\u06e2\u06e5\u06e7\u06e8\u06d8\u06e1\u06df\u06ec\u06d7\u06db\u06d8\u06d8"

    goto/16 :goto_0

    :sswitch_14
    invoke-static {}, Lz2/rc;->OooO0oO()Lz2/rc;

    move-result-object v0

    invoke-virtual {v1}, Lcom/cyjh/elfin/entity/Script;->getId()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/cyjh/elfin/ui/activity/studio/StudioBindClearActivity$OooO00o;

    invoke-direct {v3, p0}, Lcom/cyjh/elfin/ui/activity/studio/StudioBindClearActivity$OooO00o;-><init>(Lcom/cyjh/elfin/ui/activity/studio/StudioBindClearActivity;)V

    invoke-virtual {v0, p0, v2, v3}, Lz2/rc;->OooOO0O(Landroid/content/Context;Ljava/lang/String;Lz2/rc$OooO00o;)V

    const-string v0, "\u06db\u06e7\u06d8\u06d8\u06d8\u06e7\u06e6\u06e5\u06d8\u06d7\u06e6\u06df\u06e1\u06d8\u06e4\u06df\u06d8\u06d8\u06dc\u06e6\u06e6\u06e7\u06dc\u06eb\u06e0\u06e2\u06e5\u06d8\u06e2\u06e4\u06d8\u06d8\u06db\u06db\u06e1\u06df\u06d6\u06dc\u06d8\u06e0\u06e8\u06e5\u06d8"

    goto/16 :goto_0

    :sswitch_15
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f1002ea

    invoke-static {v0, v2}, Lz2/c5;->OooO0Oo(Landroid/content/Context;I)V

    const-string v0, "\u06da\u06e5\u06e5\u06d8\u06e5\u06df\u06da\u06e0\u06d7\u06d9\u06dc\u06d8\u06e2\u06da\u06e1\u06d8\u06e6\u06e2\u06d7\u06d8\u06d7\u06db\u06e6\u06dc\u06e5\u06d8\u06d6\u06da\u06e5\u06d9\u06e1\u06e7"

    goto/16 :goto_0

    :sswitch_16
    const-string v0, "\u06da\u06e5\u06e5\u06d8\u06e5\u06df\u06da\u06e0\u06d7\u06d9\u06dc\u06d8\u06e2\u06da\u06e1\u06d8\u06e6\u06e2\u06d7\u06d8\u06d7\u06db\u06e6\u06dc\u06e5\u06d8\u06d6\u06da\u06e5\u06d9\u06e1\u06e7"

    goto/16 :goto_0

    :sswitch_17
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7cb70fd2 -> :sswitch_14
        -0x7142293e -> :sswitch_9
        -0x52a1a389 -> :sswitch_0
        0x2e97bf7 -> :sswitch_17
        0x1d141d27 -> :sswitch_b
        0x3a1e311e -> :sswitch_16
        0x5f17d83d -> :sswitch_a
        0x642b66c1 -> :sswitch_15
        0x7d4fcb18 -> :sswitch_1
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x64e6461e -> :sswitch_2
        0x2118a9bc -> :sswitch_16
        0x614cadd0 -> :sswitch_8
        0x654300fa -> :sswitch_7
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        -0x6f086cb2 -> :sswitch_3
        -0x28e038b9 -> :sswitch_4
        -0x13a0cd1d -> :sswitch_6
        -0x66028ee -> :sswitch_5
    .end sparse-switch

    :sswitch_data_3
    .sparse-switch
        0xab61913 -> :sswitch_c
        0x4517ebdc -> :sswitch_13
        0x53b36bb2 -> :sswitch_e
        0x750a4096 -> :sswitch_12
    .end sparse-switch

    :sswitch_data_4
    .sparse-switch
        -0x4de26c78 -> :sswitch_10
        -0x244732fd -> :sswitch_d
        0x25b9205d -> :sswitch_11
        0x47b06979 -> :sswitch_f
    .end sparse-switch
.end method

.method private initData()V
    .locals 4

    const-string v0, "\u06dc\u06e5\u06d6\u06eb\u06d9\u06e6\u06d8\u06e1\u06ec\u06e1\u06d8\u06ec\u06e0\u06e6\u06d8\u06df\u06df\u06e2\u06d7\u06db\u06e1\u06e8\u06dc\u06ec\u06d6\u06ec\u06d6\u06e1\u06e1\u06e8\u06d6\u06e2\u06d9"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x1a2

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x2cf

    const/16 v2, 0x165

    const v3, 0x3e22fb5b

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06eb\u06e4\u06e1\u06e4\u06df\u06dc\u06e6\u06d7\u06e5\u06e5\u06d8\u06e4\u06d8\u06eb\u06d8\u06d6\u06df\u06e5\u06dc\u06e8\u06e7\u06df\u06e7\u06e5\u06d8\u06e5\u06d8\u06e5\u06d8\u06d9\u06ec\u06da\u06eb\u06e4\u06d8\u06e8\u06e8\u06d8\u06dc\u06e2\u06d8\u06e0\u06db\u06e7"

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindClearActivity;->OooooO0:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindClearActivity;->OoooooO:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "\u06e8\u06e8\u06eb\u06e8\u06e6\u06eb\u06e1\u06e5\u06d6\u06da\u06e4\u06db\u06eb\u06df\u06d6\u06d8\u06e7\u06e4\u06e8\u06d6\u06e4\u06e1\u06eb\u06e5\u06e1\u06e0\u06d9\u06d8\u06d8\u06e7\u06d7\u06d7\u06e2\u06d6\u06e1\u06d8\u06e7\u06db\u06d8\u06d8\u06e5\u06d7\u06da\u06e7\u06e0\u06e8\u06ec\u06da\u06e4\u06e8\u06e8\u06e7"

    goto :goto_0

    :sswitch_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x117b9ab2 -> :sswitch_2
        -0xc788de8 -> :sswitch_1
        0x2eb23ce -> :sswitch_0
    .end sparse-switch
.end method

.method private initListener()V
    .locals 4

    const-string v0, "\u06e4\u06e4\u06e5\u06d8\u06e7\u06d8\u06d8\u06d7\u06eb\u06d7\u06e2\u06e4\u06e6\u06db\u06d7\u06e4\u06d9\u06e1\u06eb\u06d7\u06e6\u06d7\u06d9\u06e0\u06d6\u06e1\u06ec\u06e0\u06e8\u06d8\u06d8\u06eb\u06d8\u06d7\u06df\u06e6\u06e4\u06e4\u06d9\u06df\u06e7\u06e8\u06e5\u06e5\u06db\u06db\u06d8\u06e7\u06dc\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x20a

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x1ea

    const/16 v2, 0x2c3

    const v3, 0x695d8459

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d7\u06df\u06d6\u06d8\u06eb\u06e0\u06e6\u06d8\u06e6\u06e7\u06d6\u06e8\u06d9\u06e8\u06d8\u06eb\u06d7\u06e1\u06d8\u06d7\u06d9\u06e8\u06d8\u06e4\u06e5\u06d7\u06e1\u06db\u06e0\u06ec\u06e5\u06e6\u06d8\u06e1\u06e7\u06e0\u06e7\u06d8\u06d7\u06e5\u06e4\u06e6\u06d8\u06d9\u06e4\u06e1\u06d8\u06d6\u06e4\u06e0\u06e0\u06e2\u06e2\u06da\u06e4"

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindClearActivity;->OooooOO:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "\u06d8\u06eb\u06ec\u06e1\u06e4\u06e1\u06d8\u06eb\u06df\u06df\u06e2\u06e2\u06eb\u06e8\u06e6\u06e1\u06d8\u06e6\u06d7\u06e8\u06db\u06e8\u06d8\u06e2\u06e4\u06d6\u06e0\u06d7\u06e5\u06d8\u06e8\u06e6\u06da"

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindClearActivity;->OooooOo:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "\u06db\u06e4\u06d6\u06d7\u06ec\u06d8\u06db\u06df\u06d8\u06e6\u06dc\u06d7\u06db\u06e6\u06e1\u06d8\u06db\u06d7\u06db\u06e2\u06ec\u06e4\u06e7\u06e1\u06e6\u06d8\u06df\u06e0\u06e8\u06d8\u06d6\u06d6\u06df\u06d8\u06d8\u06d8\u06e7\u06e1\u06db\u06d8\u06e7\u06d7\u06d7\u06d7\u06d8"

    goto :goto_0

    :sswitch_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x6ab4f1e0 -> :sswitch_2
        -0x326a321f -> :sswitch_3
        0x365e0a23 -> :sswitch_0
        0x7fd88f36 -> :sswitch_1
    .end sparse-switch
.end method

.method private initView()V
    .locals 5

    const/4 v2, 0x0

    const-string v0, "\u06e6\u06da\u06e2\u06e8\u06e7\u06d6\u06e7\u06da\u06e8\u06d6\u06ec\u06dc\u06e4\u06df\u06dc\u06d6\u06df\u06e0\u06e6\u06e2\u06ec\u06e2\u06da\u06d6\u06e0\u06e1\u06da\u06e4\u06eb\u06e1\u06e5\u06e7\u06e5\u06d8\u06d6\u06e8\u06e8\u06d8\u06d8\u06e2\u06d8\u06e6\u06e7\u06ec\u06d9\u06d6\u06dc\u06da\u06db"

    move-object v1, v0

    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v3, 0x1a3

    xor-int/2addr v0, v3

    xor-int/lit16 v0, v0, 0xdd

    const/16 v3, 0x24d

    const v4, 0x1b867f8f

    xor-int/2addr v0, v3

    xor-int/2addr v0, v4

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e7\u06e1\u06e6\u06d8\u06e5\u06e6\u06dc\u06e2\u06d8\u06db\u06eb\u06e0\u06d8\u06d8\u06db\u06da\u06e5\u06d8\u06e2\u06da\u06e0\u06e5\u06e8\u06d6\u06d8\u06eb\u06eb\u06e4\u06df\u06df\u06d8\u06d8\u06eb\u06e8\u06e2\u06ec\u06e1\u06e4\u06e4\u06e2\u06e6\u06d8"

    move-object v1, v0

    goto :goto_0

    :sswitch_1
    const v0, 0x7f09043a

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cyjh/elfin/ui/view/customview/TitleView;

    const-string v1, "\u06e8\u06d8\u06d6\u06df\u06e0\u06dc\u06d8\u06e4\u06e4\u06e7\u06d8\u06e0\u06d9\u06eb\u06d6\u06dc\u06e6\u06e0\u06ec\u06df\u06d8\u06d7\u06e1\u06e2\u06eb\u06e1\u06db\u06d8\u06d8\u06e6\u06df\u06db\u06d9\u06eb\u06e1\u06d6\u06e5\u06d8\u06d8\u06e0\u06d8\u06da\u06e8\u06df\u06db\u06d7\u06e4\u06e4\u06e6\u06db\u06dc\u06e1\u06d6\u06e7\u06da\u06e0"

    move-object v2, v0

    goto :goto_0

    :sswitch_2
    iput-object v2, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindClearActivity;->o0OoOo0:Lcom/cyjh/elfin/ui/view/customview/TitleView;

    const-string v0, "\u06e4\u06d7\u06d8\u06d8\u06e4\u06d7\u06e6\u06d8\u06e7\u06e7\u06e8\u06d8\u06df\u06da\u06e1\u06df\u06d6\u06da\u06d6\u06dc\u06d7\u06e8\u06d7\u06e4\u06e1\u06db\u06e1\u06d8\u06d8\u06d7\u06e1\u06d9\u06e6\u06da\u06e5\u06e2\u06dc\u06d8\u06e2\u06d6\u06e6"

    move-object v1, v0

    goto :goto_0

    :sswitch_3
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setVisibilityTvRight(I)V

    const-string v0, "\u06eb\u06e2\u06eb\u06d9\u06e7\u06d6\u06d8\u06db\u06e6\u06e1\u06e1\u06df\u06e5\u06eb\u06d9\u06e4\u06d6\u06eb\u06d7\u06e8\u06e1\u06d6\u06d8\u06ec\u06e4\u06df\u06e5\u06ec\u06d8\u06d8\u06eb\u06eb\u06db\u06da\u06d7\u06e2\u06d7\u06eb\u06da\u06d9\u06d7\u06e0\u06e2\u06da"

    move-object v1, v0

    goto :goto_0

    :sswitch_4
    const v0, 0x7f09046f

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindClearActivity;->OooooO0:Landroid/widget/TextView;

    const-string v0, "\u06e0\u06d7\u06dc\u06e4\u06da\u06dc\u06e8\u06d8\u06e1\u06e2\u06e4\u06da\u06e1\u06da\u06e2\u06e0\u06e2\u06e0\u06e8\u06e7\u06e5\u06d8\u06d6\u06e2\u06e5\u06d8\u06e7\u06db\u06d8\u06db\u06d8\u06e1\u06e1\u06db\u06e8\u06d8\u06d6\u06d9\u06db\u06d8\u06ec\u06e0\u06e1\u06eb\u06dc\u06e4\u06d9\u06e7\u06e1\u06d8\u06d8"

    move-object v1, v0

    goto :goto_0

    :sswitch_5
    const v0, 0x7f090471

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindClearActivity;->OooooOO:Landroid/widget/TextView;

    const-string v0, "\u06e0\u06da\u06e8\u06d8\u06e1\u06d8\u06d8\u06df\u06d6\u06e6\u06d8\u06e4\u06eb\u06e2\u06e4\u06e6\u06d8\u06d8\u06d8\u06d8\u06da\u06e4\u06ec\u06e5\u06d9\u06e1\u06e5\u06db\u06d8\u06d8\u06eb\u06d6\u06d8\u06d6\u06df\u06df\u06da\u06e2\u06e7\u06e8\u06dc\u06da\u06e7"

    move-object v1, v0

    goto :goto_0

    :sswitch_6
    const v0, 0x7f090470

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindClearActivity;->OooooOo:Landroid/widget/TextView;

    const-string v0, "\u06d7\u06e8\u06e6\u06d8\u06e0\u06ec\u06eb\u06d7\u06eb\u06ec\u06e2\u06e1\u06ec\u06e5\u06e8\u06d8\u06e0\u06df\u06e2\u06e2\u06e2\u06df\u06d9\u06e4\u06e1\u06d8\u06da\u06e1\u06dc\u06d6\u06eb\u06e6\u06d8\u06e0\u06eb\u06e5\u06d8\u06dc\u06d7\u06e7\u06e8\u06d7\u06d6\u06d8\u06df\u06e6\u06ec"

    move-object v1, v0

    goto :goto_0

    :sswitch_7
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x42d8b46f -> :sswitch_0
        -0x177dabf7 -> :sswitch_5
        -0xeb9aa6e -> :sswitch_1
        -0xaf80736 -> :sswitch_2
        -0x9f80ddb -> :sswitch_6
        -0x43feaf4 -> :sswitch_4
        0x39055de8 -> :sswitch_3
        0x3b41d11c -> :sswitch_7
    .end sparse-switch
.end method


# virtual methods
.method public synthetic OooOOO0(Landroid/view/View;)V
    .locals 4

    const-string v0, "\u06df\u06ec\u06e1\u06d8\u06e6\u06db\u06d8\u06eb\u06e6\u06e6\u06e6\u06dc\u06dc\u06e1\u06e7\u06dc\u06d8\u06df\u06e7\u06ec\u06e6\u06d8\u06db\u06dc\u06e6\u06d6\u06e6\u06d9\u06dc\u06da\u06e4\u06d8\u06e5\u06e6\u06e5\u06d8\u06e0\u06d6\u06e7"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0xb5

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x37f

    const/16 v2, 0x160

    const v3, 0x227ca62

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d8\u06da\u06db\u06db\u06dc\u06d8\u06eb\u06d8\u06e6\u06d8\u06e4\u06da\u06dc\u06e8\u06e4\u06d8\u06e1\u06da\u06ec\u06e7\u06e7\u06d6\u06d8\u06e6\u06e0\u06e6\u06d8\u06e0\u06db\u06da\u06e7\u06d8\u06da"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06eb\u06df\u06d6\u06d8\u06d6\u06e7\u06db\u06e4\u06d8\u06e1\u06d8\u06e0\u06da\u06d8\u06d8\u06e5\u06eb\u06e1\u06d8\u06eb\u06db\u06e0\u06e4\u06dc\u06e6\u06eb\u06db\u06d8\u06e7\u06e1\u06e2\u06e8\u06e7\u06eb\u06ec\u06dc\u06dc\u06e4\u06e0\u06e1\u06d8\u06e2\u06e0\u06db\u06ec\u06e6\u06e4\u06dc\u06d7\u06e1\u06d8\u06eb\u06e4\u06eb\u06e4\u06ec\u06e4\u06e4"

    goto :goto_0

    :sswitch_2
    invoke-direct {p0, p1}, Lcom/cyjh/elfin/ui/activity/studio/StudioBindClearActivity;->OooOO0o(Landroid/view/View;)V

    const-string v0, "\u06dc\u06df\u06db\u06e4\u06e8\u06df\u06da\u06e0\u06da\u06db\u06df\u06da\u06d6\u06e7\u06db\u06dc\u06e8\u06d7\u06e7\u06dc\u06e0\u06e4\u06e8\u06da\u06d6\u06d8\u06ec\u06d9\u06e6\u06d9\u06d8\u06e6\u06da\u06d8\u06d8"

    goto :goto_0

    :sswitch_3
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7af38370 -> :sswitch_1
        -0x3b393f2f -> :sswitch_3
        0x2ff72285 -> :sswitch_0
        0x68e2c01c -> :sswitch_2
    .end sparse-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    const-string v0, "\u06e5\u06df\u06d7\u06e0\u06d6\u06d8\u06e4\u06e1\u06d8\u06e4\u06e2\u06e0\u06e8\u06d9\u06e8\u06d9\u06e2\u06db\u06e1\u06e7\u06d8\u06ec\u06e0\u06e1\u06db\u06da\u06dc\u06ec\u06d6\u06db\u06d8\u06e0\u06d8\u06d8\u06e8\u06d9\u06d6\u06d8\u06df\u06e4\u06e8\u06ec\u06e4\u06d7\u06e5\u06d9\u06e2\u06d8\u06ec\u06df\u06ec\u06db\u06e5\u06db\u06e2\u06e8\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x30

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x38f

    const/16 v2, 0x22a

    const v3, -0x19371fa0

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d7\u06e1\u06e6\u06e7\u06eb\u06e1\u06d8\u06e6\u06e7\u06d8\u06d8\u06d9\u06e2\u06e5\u06d8\u06e2\u06d8\u06e5\u06d8\u06d7\u06e4\u06d8\u06ec\u06e6\u06d8\u06e5\u06e2\u06e4\u06e0\u06e6\u06d6\u06d8\u06d9\u06dc\u06ec\u06d6\u06e8\u06e0\u06e6\u06d7\u06d8\u06d8\u06e4\u06d8\u06e7\u06d8\u06d6\u06e4\u06d8"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06e7\u06ec\u06d6\u06e7\u06db\u06d8\u06e6\u06d9\u06d9\u06eb\u06e6\u06e8\u06da\u06e0\u06e0\u06df\u06e4\u06eb\u06eb\u06e6\u06ec\u06df\u06ec\u06e8\u06d8\u06e5\u06e2\u06e2\u06e8\u06dc\u06eb\u06e8\u06e5\u06e4\u06e2\u06db\u06eb\u06e0\u06e8\u06e6\u06d8\u06d8\u06df\u06eb\u06e4\u06d9\u06e2\u06d7\u06d6\u06e1\u06e6\u06e6\u06e6\u06e0\u06e6\u06d9"

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const-string v0, "\u06dc\u06df\u06ec\u06eb\u06e7\u06db\u06e4\u06db\u06e8\u06e4\u06e7\u06e4\u06e0\u06df\u06e5\u06d9\u06e5\u06d6\u06d8\u06d8\u06dc\u06e8\u06d8\u06db\u06e6\u06d6\u06d8\u06e5\u06dc\u06e4\u06e7\u06e1\u06e6"

    goto :goto_0

    :sswitch_3
    invoke-direct {p0}, Lcom/cyjh/elfin/ui/activity/studio/StudioBindClearActivity;->OooOOO()V

    const-string v0, "\u06e8\u06e5\u06d7\u06df\u06e8\u06df\u06e5\u06db\u06e4\u06d8\u06dc\u06e7\u06d8\u06e0\u06eb\u06e0\u06e0\u06df\u06db\u06e6\u06e8\u06d8\u06d7\u06e8\u06e8\u06d8\u06df\u06d7\u06eb\u06e2\u06dc\u06d7\u06d7\u06da\u06d8\u06d8\u06d8\u06e6\u06d8\u06d8\u06e2\u06e1\u06d6\u06eb\u06e1\u06dc\u06e8\u06e8\u06d8\u06e6\u06d7\u06d6"

    goto :goto_0

    :sswitch_4
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;->OooOOO0(Landroid/content/Context;Z)V

    const-string v0, "\u06da\u06e6\u06e6\u06d8\u06e4\u06e0\u06da\u06eb\u06e1\u06da\u06e7\u06e7\u06e5\u06d7\u06e1\u06ec\u06d7\u06ec\u06d9\u06e5\u06e5\u06e8\u06d8\u06da\u06e8\u06e7\u06d7\u06e8\u06d7\u06da\u06d6\u06e7\u06dc\u06e4\u06da\u06e0\u06e1\u06eb\u06eb\u06e6\u06dc\u06d8\u06dc\u06e4\u06e0\u06e4\u06dc\u06d8\u06dc\u06e7"

    goto :goto_0

    :sswitch_5
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const-string v0, "\u06e6\u06e7\u06e6\u06d8\u06ec\u06d9\u06e1\u06d8\u06d7\u06d6\u06e1\u06d8\u06e2\u06ec\u06eb\u06db\u06d7\u06e0\u06db\u06db\u06d9\u06d7\u06e5\u06d8\u06d8\u06e6\u06d9\u06e6\u06d8\u06eb\u06da\u06e7\u06d6\u06ec\u06e0\u06e6\u06e0\u06d9\u06d8\u06da\u06e6\u06e7\u06eb\u06e4\u06e6\u06e1\u06dc"

    goto :goto_0

    :pswitch_0
    const-string v0, "\u06db\u06d6\u06e5\u06d8\u06e8\u06e2\u06d8\u06d8\u06db\u06ec\u06d6\u06d8\u06e1\u06e1\u06d9\u06d7\u06df\u06eb\u06e8\u06d9\u06d8\u06d9\u06d7\u06e1\u06d8\u06e8\u06d8\u06e0\u06e5\u06dc\u06e2\u06e0\u06e1\u06e7\u06d8\u06e0\u06db\u06e0\u06d7\u06d7\u06ec"

    goto :goto_0

    :pswitch_1
    const-string v0, "\u06dc\u06eb\u06e8\u06d8\u06e4\u06e7\u06d7\u06e5\u06e6\u06e1\u06e2\u06da\u06d8\u06e7\u06d6\u06e2\u06d8\u06df\u06e8\u06d8\u06d9\u06df\u06d8\u06d8\u06d7\u06e4\u06e4\u06e4\u06dc\u06e4\u06e8\u06ec\u06d9\u06e7\u06dc\u06e5\u06d8\u06d6\u06e5\u06d9\u06da\u06e6\u06e0\u06e0\u06e4\u06e1\u06d8\u06dc\u06e8\u06e8\u06dc\u06e5\u06e4\u06d8\u06d7\u06d9\u06e2\u06d9\u06e4"

    goto :goto_0

    :sswitch_6
    const-string v0, "\u06e6\u06e7\u06e6\u06d8\u06ec\u06d9\u06e1\u06d8\u06d7\u06d6\u06e1\u06d8\u06e2\u06ec\u06eb\u06db\u06d7\u06e0\u06db\u06db\u06d9\u06d7\u06e5\u06d8\u06d8\u06e6\u06d9\u06e6\u06d8\u06eb\u06da\u06e7\u06d6\u06ec\u06e0\u06e6\u06e0\u06d9\u06d8\u06da\u06e6\u06e7\u06eb\u06e4\u06e6\u06e1\u06dc"

    goto :goto_0

    :sswitch_7
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x70f1136e -> :sswitch_2
        -0x5a80d5db -> :sswitch_1
        -0x58a48408 -> :sswitch_5
        -0x19bf7bc2 -> :sswitch_3
        0x2876cce1 -> :sswitch_7
        0x323c30f5 -> :sswitch_6
        0x37c1f276 -> :sswitch_0
        0x40228011 -> :sswitch_4
        0x60ffb5db -> :sswitch_6
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x7f090470
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    const-string v0, "\u06ec\u06df\u06d9\u06e2\u06d6\u06e8\u06e8\u06e0\u06da\u06ec\u06ec\u06d8\u06d8\u06d6\u06d8\u06d6\u06d8\u06eb\u06e5\u06e0\u06d8\u06e7\u06d7\u06df\u06da\u06e6\u06ec\u06da\u06d9\u06db\u06d6\u06da\u06e8\u06ec\u06da\u06e2\u06d6\u06e0\u06e7\u06df\u06ec\u06da\u06e8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x22a

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x2d0

    const/16 v2, 0x178

    const v3, 0x2c6f407d    # 3.399974E-12f

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e0\u06e4\u06eb\u06d8\u06db\u06e5\u06e4\u06e0\u06d8\u06d8\u06d7\u06dc\u06d7\u06e2\u06e4\u06df\u06d8\u06e7\u06da\u06e4\u06d9\u06e4\u06d7\u06d7\u06da\u06df\u06e1\u06e2\u06db\u06e7\u06e2\u06e4\u06d9\u06e5\u06d8\u06ec\u06e2\u06e1\u06d8"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06db\u06e0\u06df\u06e7\u06e6\u06da\u06d6\u06d7\u06df\u06dc\u06e0\u06dc\u06d8\u06e2\u06d9\u06e1\u06d8\u06e8\u06ec\u06e5\u06d8\u06e6\u06e8\u06da\u06e2\u06d9\u06db\u06e8\u06d6\u06e7\u06e8\u06df\u06df"

    goto :goto_0

    :sswitch_2
    invoke-super {p0, p1}, Lcom/cyjh/common/base/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "\u06ec\u06ec\u06dc\u06e2\u06eb\u06d8\u06d8\u06d9\u06ec\u06e0\u06e0\u06e5\u06e2\u06dc\u06e6\u06df\u06e0\u06d9\u06d8\u06d8\u06e5\u06e5\u06e8\u06d8\u06da\u06df\u06e6\u06d8\u06e4\u06e2\u06e2\u06e7\u06df\u06e7\u06e2\u06da\u06e7\u06df"

    goto :goto_0

    :sswitch_3
    const v0, 0x7f0c0031

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    const-string v0, "\u06db\u06e6\u06e1\u06db\u06e6\u06e2\u06da\u06d8\u06e5\u06d8\u06e5\u06df\u06da\u06e2\u06e7\u06df\u06d6\u06e0\u06e2\u06e8\u06db\u06e0\u06e8\u06e7\u06dc\u06d8\u06e2\u06da\u06d9\u06eb\u06dc\u06e2\u06d7\u06e8\u06d6\u06d8\u06e4\u06e1\u06e7\u06ec\u06dc\u06df\u06dc\u06dc\u06e0\u06da\u06d9\u06e8\u06d7\u06e4"

    goto :goto_0

    :sswitch_4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcom/cyjh/elfin/ui/activity/studio/StudioBindClearActivity;->o00O0O:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindClearActivity;->OoooooO:Ljava/lang/String;

    const-string v0, "\u06d6\u06e7\u06eb\u06e8\u06e8\u06d8\u06d8\u06e8\u06d9\u06e4\u06e8\u06d9\u06da\u06e6\u06d9\u06e6\u06e4\u06e0\u06e1\u06d8\u06e7\u06d7\u06e6\u06e8\u06e4\u06dc\u06d8\u06e1\u06d6\u06eb\u06d6\u06dc\u06e1\u06d8\u06e4\u06d7\u06da\u06da\u06e0\u06dc\u06df\u06ec\u06db\u06e6\u06eb\u06dc\u06d8\u06d9\u06d8\u06e4\u06e4\u06df\u06e0"

    goto :goto_0

    :sswitch_5
    invoke-direct {p0}, Lcom/cyjh/elfin/ui/activity/studio/StudioBindClearActivity;->initView()V

    const-string v0, "\u06e6\u06eb\u06d8\u06d8\u06df\u06d7\u06e0\u06e2\u06d6\u06db\u06df\u06eb\u06e0\u06db\u06ec\u06d8\u06df\u06ec\u06d8\u06d8\u06d8\u06e8\u06df\u06dc\u06ec\u06db\u06d8\u06e8\u06e4\u06d7\u06e4\u06d7\u06df\u06e5\u06d8\u06df\u06e1\u06e7\u06d8"

    goto :goto_0

    :sswitch_6
    invoke-direct {p0}, Lcom/cyjh/elfin/ui/activity/studio/StudioBindClearActivity;->OooOO0O()V

    const-string v0, "\u06d8\u06ec\u06e8\u06d8\u06e0\u06da\u06e6\u06dc\u06e1\u06e5\u06d8\u06d6\u06e4\u06eb\u06ec\u06e7\u06e8\u06df\u06db\u06e1\u06db\u06eb\u06e1\u06e5\u06d9\u06e1\u06e4\u06dc\u06d8\u06d8\u06e0\u06db\u06e1\u06e4\u06e7\u06d8\u06d6\u06dc\u06e4\u06e5\u06df\u06d7\u06dc\u06e5\u06eb"

    goto :goto_0

    :sswitch_7
    invoke-direct {p0}, Lcom/cyjh/elfin/ui/activity/studio/StudioBindClearActivity;->initData()V

    const-string v0, "\u06d9\u06e8\u06d8\u06dc\u06e4\u06eb\u06e5\u06d7\u06e2\u06e4\u06d8\u06e8\u06dc\u06e1\u06e1\u06dc\u06df\u06e0\u06eb\u06ec\u06dc\u06d8\u06e6\u06dc\u06dc\u06ec\u06e7\u06e4\u06e4\u06dc\u06e1\u06d8"

    goto :goto_0

    :sswitch_8
    invoke-direct {p0}, Lcom/cyjh/elfin/ui/activity/studio/StudioBindClearActivity;->initListener()V

    const-string v0, "\u06d6\u06d7\u06d9\u06dc\u06db\u06d9\u06e2\u06e7\u06d9\u06db\u06d7\u06d7\u06df\u06dc\u06e7\u06d8\u06db\u06dc\u06e6\u06d8\u06e8\u06e7\u06e4\u06db\u06db\u06d9\u06db\u06e2\u06eb\u06d9\u06df\u06e5\u06e4\u06e1\u06e1\u06e2\u06d6\u06d8\u06d7\u06db\u06db\u06d8\u06e5\u06e0\u06d9\u06db\u06e7\u06ec\u06e4\u06dc"

    goto :goto_0

    :sswitch_9
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x74b9b45e -> :sswitch_2
        -0x5fdef8c6 -> :sswitch_5
        -0x522e8030 -> :sswitch_6
        -0x51d6172c -> :sswitch_7
        -0x45b9c8c8 -> :sswitch_0
        -0x3de4ef75 -> :sswitch_9
        -0x26033d7c -> :sswitch_3
        0x1ae6eb80 -> :sswitch_1
        0x69779bd1 -> :sswitch_8
        0x6a53d6e5 -> :sswitch_4
    .end sparse-switch
.end method

.method public onDestroy()V
    .locals 4

    const-string v0, "\u06dc\u06d7\u06eb\u06d7\u06df\u06e7\u06e0\u06e5\u06e6\u06d8\u06da\u06d7\u06e5\u06d6\u06d7\u06df\u06e1\u06d6\u06da\u06e0\u06e2\u06da\u06e1\u06e1\u06d8\u06e0\u06dc\u06e0\u06e6\u06e8\u06e5\u06e6\u06e5\u06e1\u06d8\u06dc\u06dc\u06e6"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x1eb

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x86

    const/16 v2, 0x248

    const v3, 0x701ed341

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e7\u06e5\u06e5\u06d8\u06ec\u06dc\u06d7\u06e7\u06db\u06dc\u06d8\u06ec\u06eb\u06e0\u06df\u06e1\u06d8\u06e4\u06d8\u06d9\u06db\u06df\u06e6\u06d8\u06e6\u06e2\u06e1\u06d8\u06e4\u06db\u06df\u06e7\u06e8\u06dc\u06d8\u06e4\u06df\u06e1\u06e4\u06d8\u06e6\u06d8\u06d7\u06eb\u06dc\u06d8\u06d6\u06eb\u06d8\u06e4\u06e8\u06e6\u06e1\u06e8\u06e7\u06d8\u06e7\u06e8\u06e4\u06e6\u06e6\u06d9"

    goto :goto_0

    :sswitch_1
    invoke-super {p0}, Lcom/cyjh/common/base/activity/BaseActivity;->onDestroy()V

    const-string v0, "\u06e0\u06e0\u06db\u06db\u06d9\u06e5\u06df\u06d7\u06dc\u06df\u06d6\u06dc\u06d8\u06da\u06eb\u06e6\u06d8\u06df\u06db\u06d8\u06e1\u06ec\u06ec\u06d9\u06e8\u06d9\u06d6\u06d9\u06e0\u06eb\u06e2\u06dc\u06e4\u06e0\u06d8\u06e2\u06d6\u06e8\u06db\u06db\u06d8\u06d8\u06d8\u06e8\u06d8\u06d7\u06d6\u06e5\u06d8\u06e0\u06eb\u06e2\u06e8\u06e4\u06e0\u06e6\u06e8\u06d6"

    goto :goto_0

    :sswitch_2
    return-void

    :sswitch_data_0
    .sparse-switch
        0x14222693 -> :sswitch_1
        0x32fc4ccc -> :sswitch_0
        0x74c24900 -> :sswitch_2
    .end sparse-switch
.end method
