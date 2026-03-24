.class public Lcom/cyjh/elfin/ui/activity/SweepCodeZbarActivity;
.super Lcom/cyjh/common/base/activity/BaseActivity;

# interfaces
.implements Lz2/v7$OooO0O0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyjh/elfin/ui/activity/SweepCodeZbarActivity$OooO0o;
    }
.end annotation


# static fields
.field public static final o00O0O:Ljava/lang/String; = "SWEEP_RESULT_BACK"

.field public static final o00Oo0:I = 0x63

.field public static final o00Ooo:I = 0x64

.field private static final o00o0O:I = 0x11

.field private static final o00ooo:I = 0x12


# instance fields
.field private OooooO0:Landroid/widget/RelativeLayout;

.field private OooooOO:Landroid/widget/RelativeLayout;

.field private OooooOo:Landroid/widget/ImageView;

.field private Oooooo:Lz2/v7;

.field private Oooooo0:Landroid/widget/FrameLayout;

.field public OoooooO:Z

.field public Ooooooo:Landroid/hardware/Camera$PreviewCallback;

.field private final o0OoOo0:Landroid/os/Handler;

.field public ooOO:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/cyjh/common/base/activity/BaseActivity;-><init>()V

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeZbarActivity;->OooooO0:Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeZbarActivity;->OooooOO:Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeZbarActivity;->Oooooo0:Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeZbarActivity;->OoooooO:Z

    new-instance v0, Lcom/cyjh/elfin/ui/activity/SweepCodeZbarActivity$OooO00o;

    invoke-direct {v0, p0}, Lcom/cyjh/elfin/ui/activity/SweepCodeZbarActivity$OooO00o;-><init>(Lcom/cyjh/elfin/ui/activity/SweepCodeZbarActivity;)V

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeZbarActivity;->Ooooooo:Landroid/hardware/Camera$PreviewCallback;

    new-instance v0, Lcom/cyjh/elfin/ui/activity/SweepCodeZbarActivity$OooO0O0;

    invoke-direct {v0, p0}, Lcom/cyjh/elfin/ui/activity/SweepCodeZbarActivity$OooO0O0;-><init>(Lcom/cyjh/elfin/ui/activity/SweepCodeZbarActivity;)V

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeZbarActivity;->o0OoOo0:Landroid/os/Handler;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeZbarActivity;->ooOO:Z

    return-void
.end method

.method private OooO()V
    .locals 4

    const-string v0, "\u06d8\u06dc\u06e1\u06e1\u06e5\u06e1\u06d8\u06d6\u06e7\u06d9\u06e6\u06e6\u06e8\u06d8\u06dc\u06dc\u06e7\u06e0\u06e5\u06e5\u06e4\u06e5\u06e8\u06d6\u06ec\u06e6\u06d9\u06d8\u06e8\u06db\u06e2\u06da\u06df\u06e8\u06e1\u06eb\u06dc\u06d8\u06e1\u06e8\u06d8\u06d8\u06e6\u06d9\u06d6\u06d8\u06dc\u06d8\u06d8\u06e8\u06e2\u06e8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x8d

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x3dc

    const/16 v2, 0xed

    const v3, 0x132e011b

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06da\u06e6\u06e8\u06d8\u06e0\u06d9\u06e1\u06d8\u06e6\u06dc\u06db\u06d7\u06d9\u06d6\u06d7\u06d7\u06e0\u06d6\u06e7\u06e6\u06e6\u06e7\u06e6\u06e6\u06ec\u06dc\u06df\u06e6\u06da\u06d6\u06db\u06d7"

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeZbarActivity;->Oooooo0:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/cyjh/elfin/sweepcode/CameraSurfaceView;

    invoke-direct {v1, p0}, Lcom/cyjh/elfin/sweepcode/CameraSurfaceView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    const-string v0, "\u06ec\u06df\u06e1\u06d8\u06d7\u06e2\u06e5\u06d8\u06e8\u06db\u06e5\u06e2\u06eb\u06e5\u06d9\u06d6\u06da\u06e7\u06da\u06da\u06dc\u06e0\u06db\u06e8\u06d7\u06e4\u06df\u06e7\u06d9\u06d6\u06d6\u06d8\u06eb\u06e8\u06d6\u06d9\u06e1\u06d6\u06ec\u06e7\u06e2\u06e8\u06dc\u06e6\u06d8\u06da\u06e7\u06dc\u06d8\u06d9\u06db\u06d8\u06ec\u06df\u06db\u06e0\u06e6\u06e7"

    goto :goto_0

    :sswitch_2
    invoke-static {}, Lz2/t7;->OooO()Lz2/t7;

    move-result-object v0

    iget-object v1, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeZbarActivity;->Ooooooo:Landroid/hardware/Camera$PreviewCallback;

    invoke-virtual {v0, v1}, Lz2/t7;->OooOO0o(Landroid/hardware/Camera$PreviewCallback;)V

    const-string v0, "\u06eb\u06e6\u06d8\u06d8\u06d7\u06e2\u06df\u06eb\u06e6\u06dc\u06d8\u06e5\u06e4\u06e1\u06d8\u06e2\u06d7\u06da\u06e6\u06e5\u06e5\u06d8\u06df\u06d9\u06d7\u06d6\u06d6\u06dc\u06d7\u06d6\u06e5\u06d8\u06d8\u06e6\u06ec\u06ec\u06da\u06e8\u06d8\u06dc\u06e8\u06e5\u06d7\u06da\u06dc\u06da\u06d8\u06d8"

    goto :goto_0

    :sswitch_3
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x2df9b258 -> :sswitch_2
        -0x10204439 -> :sswitch_3
        -0x7cd28b2 -> :sswitch_0
        0x6f386a47 -> :sswitch_1
    .end sparse-switch
.end method

.method public static synthetic OooO0oO(Lcom/cyjh/elfin/ui/activity/SweepCodeZbarActivity;)Landroid/widget/RelativeLayout;
    .locals 4

    const-string v0, "\u06d7\u06d9\u06e6\u06d8\u06d8\u06ec\u06dc\u06d8\u06dc\u06d8\u06d8\u06e5\u06e8\u06dc\u06ec\u06d9\u06e6\u06d8\u06da\u06db\u06e8\u06d8\u06eb\u06db\u06e4\u06df\u06e0\u06dc\u06e0\u06e4\u06d8\u06e7\u06dc\u06da"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x379

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0xa9

    const/16 v2, 0x2aa

    const v3, 0x24b4bc46

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e0\u06d8\u06dc\u06e4\u06eb\u06d7\u06d9\u06e4\u06d9\u06dc\u06e8\u06d6\u06d8\u06e2\u06d6\u06e5\u06d8\u06e0\u06d6\u06e7\u06d8\u06ec\u06d9\u06e0\u06e1\u06dc\u06d6\u06e5\u06da\u06df\u06e6\u06e6"

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeZbarActivity;->OooooOO:Landroid/widget/RelativeLayout;

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x7410838b -> :sswitch_0
        0x75f23798 -> :sswitch_1
    .end sparse-switch
.end method

.method public static synthetic OooO0oo(Lcom/cyjh/elfin/ui/activity/SweepCodeZbarActivity;Ljava/lang/String;)V
    .locals 4

    const-string v0, "\u06d6\u06e5\u06e4\u06e6\u06d7\u06e2\u06d6\u06e2\u06e6\u06d8\u06e0\u06e4\u06e1\u06d8\u06da\u06dc\u06d8\u06df\u06e2\u06e1\u06eb\u06d8\u06db\u06dc\u06e0\u06e0\u06d6\u06d6\u06e5\u06df\u06ec\u06d8\u06e8\u06e6\u06d8\u06df\u06e6\u06ec"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x316

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0xdf

    const/16 v2, 0x1de

    const v3, -0x2817cfe6

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06ec\u06e8\u06e0\u06e1\u06da\u06e8\u06da\u06e6\u06da\u06e8\u06e6\u06dc\u06e4\u06e7\u06e6\u06d8\u06d8\u06eb\u06e6\u06d8\u06da\u06eb\u06db\u06da\u06d9\u06d8\u06eb\u06db\u06eb\u06e6\u06eb\u06e8\u06e0\u06d8\u06eb\u06e5\u06dc\u06d8\u06d8\u06db\u06e6\u06da\u06e6\u06df"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06e0\u06e0\u06dc\u06d8\u06ec\u06d9\u06d8\u06d8\u06d6\u06dc\u06e7\u06e1\u06d6\u06eb\u06e2\u06d8\u06e4\u06ec\u06e4\u06e0\u06e8\u06d7\u06d7\u06da\u06d6\u06df\u06e8\u06e0\u06e0\u06e8\u06e4\u06e4\u06e5\u06da\u06e2\u06db\u06e4\u06df"

    goto :goto_0

    :sswitch_2
    invoke-direct {p0, p1}, Lcom/cyjh/elfin/ui/activity/SweepCodeZbarActivity;->OooOOOo(Ljava/lang/String;)V

    const-string v0, "\u06e2\u06da\u06d9\u06d9\u06ec\u06e6\u06d8\u06db\u06d8\u06df\u06e8\u06da\u06db\u06e7\u06e5\u06e8\u06e5\u06eb\u06dc\u06d7\u06d6\u06e6\u06df\u06d8\u06df\u06d8\u06df\u06db\u06d6\u06d9\u06d6\u06d8\u06eb\u06e7\u06e1\u06dc\u06dc\u06dc"

    goto :goto_0

    :sswitch_3
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7fc028eb -> :sswitch_3
        -0x505831af -> :sswitch_0
        0x12a63fe7 -> :sswitch_1
        0x1d1e7071 -> :sswitch_2
    .end sparse-switch
.end method

.method private OooOO0O()V
    .locals 6

    const/4 v3, 0x0

    const-string v0, "\u06e2\u06e7\u06da\u06e1\u06d6\u06df\u06eb\u06e8\u06e8\u06d8\u06e2\u06e5\u06e6\u06d8\u06e5\u06e8\u06eb\u06df\u06e6\u06e8\u06d8\u06d6\u06dc\u06e6\u06dc\u06db\u06df\u06d6\u06da\u06eb\u06e0\u06da\u06e6\u06d8\u06d8\u06e8\u06ec\u06e6\u06ec\u06eb\u06e2\u06e4\u06e1\u06d8\u06eb\u06db"

    move-object v1, v0

    move-object v2, v3

    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v4, 0x1f3

    xor-int/2addr v0, v4

    xor-int/lit16 v0, v0, 0x8c

    const/16 v4, 0x17d

    const v5, 0x6b156b4f

    xor-int/2addr v0, v4

    xor-int/2addr v0, v5

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e0\u06d7\u06e1\u06d8\u06d6\u06df\u06e0\u06e8\u06e5\u06e7\u06da\u06d7\u06e8\u06d8\u06e4\u06e6\u06d9\u06e0\u06eb\u06d8\u06d9\u06e6\u06ec\u06e8\u06df\u06e7\u06d8\u06d8\u06d8\u06d9"

    move-object v1, v0

    goto :goto_0

    :sswitch_1
    const v0, 0x7f0902f0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cyjh/elfin/ui/view/customview/TitleView;

    const-string v1, "\u06ec\u06d7\u06e1\u06e2\u06e7\u06e6\u06d8\u06e1\u06e0\u06e5\u06d8\u06e8\u06d7\u06e5\u06da\u06e2\u06d8\u06d8\u06d7\u06eb\u06d6\u06d8\u06dc\u06e8\u06e4\u06d8\u06e6\u06d9\u06ec\u06e6\u06dc\u06d8\u06d8\u06df\u06e8\u06d6\u06e2\u06db\u06e6\u06d8"

    move-object v2, v0

    goto :goto_0

    :sswitch_2
    const v0, 0x7f1002a3

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setTitleText(Ljava/lang/String;)V

    const-string v0, "\u06d9\u06db\u06e5\u06eb\u06e7\u06eb\u06e6\u06e7\u06e1\u06d9\u06e7\u06e8\u06d8\u06da\u06dc\u06e1\u06e5\u06da\u06da\u06db\u06e1\u06df\u06d8\u06dc\u06ec\u06e5\u06d9\u06e8\u06d8\u06e2\u06e0\u06df\u06e1\u06db\u06e8\u06e2\u06e1\u06d8"

    move-object v1, v0

    goto :goto_0

    :sswitch_3
    const/4 v0, 0x4

    invoke-virtual {v2, v0}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setVisibilityRightImage(I)V

    const-string v0, "\u06d9\u06e2\u06d6\u06eb\u06d9\u06e2\u06e6\u06e6\u06ec\u06d8\u06d8\u06db\u06e5\u06e8\u06d9\u06d6\u06e6\u06d7\u06e6\u06d8\u06d8\u06d8\u06e6\u06eb\u06d6\u06e6\u06eb\u06e1\u06e6\u06dc\u06d6\u06d8\u06d8\u06e0\u06e0\u06df\u06e8\u06e0\u06e0\u06e2\u06e6\u06e5\u06d8\u06e7\u06dc\u06e6\u06e2\u06eb\u06dc\u06e5\u06e8\u06dc\u06df\u06ec"

    move-object v1, v0

    goto :goto_0

    :sswitch_4
    const v0, 0x7f0801c9

    invoke-virtual {v2, v0}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setleftImage(I)V

    const-string v0, "\u06d7\u06da\u06db\u06dc\u06e4\u06e1\u06d8\u06ec\u06d6\u06d7\u06e2\u06dc\u06ec\u06e4\u06e5\u06e8\u06e1\u06e4\u06d7\u06ec\u06e0\u06db\u06e2\u06d8\u06df\u06df\u06e1\u06e7\u06e1\u06e4\u06e5\u06d8\u06e6\u06e6\u06d8\u06d8\u06db\u06e6\u06eb\u06d6\u06e4\u06d7\u06d7\u06e1\u06e6\u06df\u06e8\u06da\u06e6\u06d8\u06d8\u06db\u06df\u06dc\u06df\u06e8\u06e4"

    move-object v1, v0

    goto :goto_0

    :sswitch_5
    new-instance v0, Lcom/cyjh/elfin/ui/activity/SweepCodeZbarActivity$OooO0o;

    invoke-direct {v0, p0, v3}, Lcom/cyjh/elfin/ui/activity/SweepCodeZbarActivity$OooO0o;-><init>(Lcom/cyjh/elfin/ui/activity/SweepCodeZbarActivity;Lcom/cyjh/elfin/ui/activity/SweepCodeZbarActivity$OooO00o;)V

    invoke-virtual {v2, v0}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setOnLeftImageViewListener(Lcom/cyjh/elfin/ui/view/customview/TitleView$OooO0O0;)V

    const-string v0, "\u06d7\u06ec\u06db\u06db\u06e6\u06dc\u06e4\u06eb\u06e1\u06e8\u06d8\u06df\u06e0\u06df\u06e1\u06e4\u06ec\u06d6\u06e8\u06db\u06eb\u06e1\u06e1\u06e7\u06e4\u06e4\u06eb\u06d9\u06db"

    move-object v1, v0

    goto :goto_0

    :sswitch_6
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4544f981 -> :sswitch_6
        -0x3a9cd08d -> :sswitch_2
        -0x387a472a -> :sswitch_5
        -0x1bb56074 -> :sswitch_3
        -0xdce8cc5 -> :sswitch_1
        -0xa0671b0 -> :sswitch_0
        0x11ac665 -> :sswitch_4
    .end sparse-switch
.end method

.method private OooOO0o()V
    .locals 5

    const/4 v1, 0x0

    const-string v0, "\u06e0\u06e1\u06dc\u06d8\u06da\u06e6\u06e8\u06e6\u06dc\u06d8\u06d7\u06db\u06da\u06e8\u06e5\u06e7\u06e2\u06df\u06da\u06d9\u06da\u06e0\u06d6\u06d8\u06e6\u06dc\u06e4\u06e4\u06e5\u06d8\u06df\u06d9\u06ec\u06eb\u06ec\u06df\u06e7\u06ec\u06dc\u06e8\u06e0\u06da\u06e1\u06e4\u06e8\u06d8\u06eb\u06e7\u06e2\u06d7\u06e6\u06d8\u06d8\u06db\u06df\u06d8\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v3, 0x343

    xor-int/2addr v2, v3

    xor-int/lit16 v2, v2, 0x318

    const/16 v3, 0x161

    const v4, 0x5945c562

    xor-int/2addr v2, v3

    xor-int/2addr v2, v4

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e2\u06d9\u06df\u06df\u06d7\u06ec\u06e5\u06d8\u06e8\u06e1\u06d9\u06d7\u06e7\u06e4\u06d7\u06df\u06dc\u06d8\u06e4\u06ec\u06e4\u06db\u06e5\u06da\u06da\u06d8\u06e8\u06d8\u06d6\u06d6\u06df\u06d6\u06d7\u06e4\u06ec\u06e7\u06e0\u06e5\u06eb\u06e1\u06e0\u06e1\u06e5\u06d8\u06e4\u06e0\u06db\u06e2\u06d9\u06e2\u06d8\u06e7\u06d8\u06ec\u06eb\u06e5"

    goto :goto_0

    :sswitch_1
    new-instance v1, Lz2/v7;

    invoke-direct {v1}, Lz2/v7;-><init>()V

    const-string v0, "\u06d7\u06e4\u06d7\u06d8\u06da\u06d8\u06e4\u06e7\u06dc\u06d8\u06d6\u06df\u06e7\u06d6\u06d6\u06e7\u06e7\u06e0\u06db\u06d9\u06d6\u06e8\u06d9\u06e7\u06eb\u06e0\u06e7\u06e7\u06e7\u06d6\u06e0\u06da\u06eb\u06e2\u06d8\u06dc\u06df\u06d8\u06e1\u06d8\u06df\u06e1\u06e5"

    goto :goto_0

    :sswitch_2
    iput-object v1, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeZbarActivity;->Oooooo:Lz2/v7;

    const-string v0, "\u06ec\u06d6\u06eb\u06e6\u06e2\u06df\u06d6\u06db\u06e7\u06db\u06e1\u06e4\u06d6\u06e1\u06e2\u06e7\u06ec\u06e5\u06d9\u06e8\u06d8\u06e6\u06e4\u06da\u06d7\u06e8\u06d6\u06d8\u06db\u06df\u06e8\u06d8\u06d9\u06d9\u06db\u06e5\u06d6\u06e5\u06d8"

    goto :goto_0

    :sswitch_3
    invoke-virtual {v1}, Lz2/v7;->OooO0Oo()V

    const-string v0, "\u06eb\u06d9\u06e5\u06dc\u06d8\u06da\u06d7\u06e1\u06e0\u06da\u06da\u06dc\u06e4\u06ec\u06e1\u06d8\u06d7\u06e5\u06e5\u06e4\u06e6\u06db\u06db\u06df\u06d6\u06e7\u06eb\u06e1\u06e6\u06e1\u06d8\u06e8\u06ec\u06d7\u06e0\u06db\u06e6\u06e7\u06e2\u06ec\u06e7\u06e7\u06d6\u06d8"

    goto :goto_0

    :sswitch_4
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7c5500a9 -> :sswitch_2
        -0x678984b1 -> :sswitch_4
        -0x24cb795a -> :sswitch_3
        -0x5eb93d8 -> :sswitch_1
        0x7e3cbc33 -> :sswitch_0
    .end sparse-switch
.end method

.method private OooOOOO()V
    .locals 4

    const-string v0, "\u06e7\u06e0\u06d6\u06d8\u06ec\u06d9\u06e5\u06e4\u06e5\u06eb\u06d7\u06ec\u06e4\u06d6\u06eb\u06dc\u06d6\u06d7\u06e0\u06d7\u06eb\u06ec\u06d7\u06d9\u06e5\u06e6\u06e5\u06da\u06e5\u06e6\u06d8\u06eb\u06e7\u06e1\u06db\u06e8\u06d9\u06e8\u06eb\u06d7\u06dc\u06e6\u06d7\u06d6\u06d7\u06e5\u06d8\u06e1\u06eb\u06da\u06e5\u06db\u06e8\u06dc\u06e7\u06eb"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x149

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x31a

    const/16 v2, 0x2eb

    const v3, -0xdc6ae92

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e0\u06df\u06ec\u06e8\u06df\u06e6\u06e8\u06e6\u06e6\u06eb\u06e6\u06e5\u06d8\u06df\u06da\u06e1\u06d8\u06e5\u06e6\u06e0\u06e7\u06db\u06db\u06d8\u06dc\u06d8\u06d8\u06e4\u06ec\u06d8\u06d8\u06d8"

    goto :goto_0

    :sswitch_1
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.CAMERA"

    aput-object v2, v0, v1

    const/16 v1, 0x63

    invoke-static {p0, v0, v1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    const-string v0, "\u06e8\u06e5\u06e8\u06e2\u06dc\u06df\u06e0\u06eb\u06d8\u06d8\u06d6\u06e7\u06eb\u06e6\u06e5\u06e8\u06d8\u06e7\u06d8\u06eb\u06e6\u06da\u06e4\u06e8\u06db\u06ec\u06e1\u06e8\u06eb\u06e7\u06d9\u06e4\u06e7\u06eb\u06dc\u06e4\u06e1\u06eb"

    goto :goto_0

    :sswitch_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x5022b578 -> :sswitch_1
        -0x2f0c02cb -> :sswitch_2
        0x325bc61f -> :sswitch_0
    .end sparse-switch
.end method

.method private OooOOOo(Ljava/lang/String;)V
    .locals 7

    const/4 v2, 0x0

    const-string v0, "\u06d7\u06e4\u06d8\u06dc\u06d6\u06df\u06d8\u06e4\u06e5\u06db\u06e6\u06e0\u06db\u06e8\u06df\u06db\u06ec\u06d8\u06dc\u06dc\u06da\u06ec\u06e6\u06d8\u06db\u06e5\u06dc\u06d8\u06e4\u06d8\u06e5\u06d8\u06e1\u06db\u06db\u06d8\u06e6\u06da"

    move-object v1, v2

    move-object v3, v2

    move-object v4, v2

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v5, 0x307

    xor-int/2addr v2, v5

    xor-int/lit8 v2, v2, 0x64

    const/16 v5, 0x63

    const v6, -0x3a891020

    xor-int/2addr v2, v5

    xor-int/2addr v2, v6

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e8\u06ec\u06e5\u06df\u06d6\u06d8\u06d8\u06d8\u06db\u06e5\u06e5\u06e5\u06e1\u06d8\u06e5\u06e2\u06d6\u06d8\u06ec\u06e8\u06e5\u06da\u06e7\u06ec\u06e1\u06da\u06e0\u06e6\u06eb\u06e7\u06d7\u06e1\u06dc\u06e4\u06e5\u06db\u06da\u06e5\u06e6\u06d8\u06da\u06e4\u06da\u06db\u06d8\u06d8\u06db\u06e7\u06e8\u06ec\u06df\u06da\u06d7\u06db\u06e7\u06d8\u06dc\u06e6"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06e6\u06e7\u06d9\u06eb\u06e1\u06e7\u06d8\u06df\u06e2\u06db\u06dc\u06e0\u06d8\u06d8\u06db\u06e7\u06db\u06e7\u06e8\u06d8\u06e5\u06da\u06d8\u06e7\u06ec\u06da\u06dc\u06dc\u06e5\u06d8\u06e0\u06ec\u06e0\u06db\u06d6\u06db\u06da\u06e6\u06e5\u06d7\u06d9\u06e8\u06dc\u06e7\u06ec\u06d7\u06df\u06db\u06d9\u06e1\u06d6\u06d8"

    goto :goto_0

    :sswitch_2
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "\u06ec\u06da\u06d9\u06e2\u06d8\u06d6\u06e6\u06e0\u06db\u06d8\u06da\u06e2\u06e1\u06db\u06d6\u06df\u06e7\u06e6\u06e8\u06d9\u06df\u06e4\u06d7\u06e5\u06dc\u06d7\u06db\u06e6\u06e6\u06e0\u06e5\u06df\u06e4\u06da\u06d6\u06d7\u06e6\u06db\u06e4\u06dc\u06e7\u06e5\u06d8\u06db\u06e6\u06e1\u06da\u06e7\u06d9\u06e8\u06d9\u06db\u06e6\u06d9\u06e5"

    move-object v4, v2

    goto :goto_0

    :sswitch_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u06e8\u06e0\u06db\u06ec\u06e4\u06e5\u06e0\u06d7\u06e8\u06d8\u06d6\u06d6\u06e2\u06d6\u06e2\u06dc\u06d6\u06e8\u06e6\u06d8\u06e2\u06e5\u06d8\u06e1\u06d8\u06eb\u06da\u06e5\u06e4\u06d6\u06e8\u06e8\u06d8\u06e7\u06d7\u06e4\u06e8\u06d6\u06d7"

    move-object v3, v2

    goto :goto_0

    :sswitch_4
    const-string v0, "result:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u06ec\u06e4\u06df\u06da\u06e0\u06db\u06e1\u06d8\u06d8\u06e7\u06ec\u06d7\u06e8\u06e8\u06d9\u06e5\u06e4\u06d8\u06e6\u06dc\u06e4\u06e7\u06da\u06e6\u06d8\u06df\u06df\u06d9\u06eb\u06db\u06df\u06e4\u06e4\u06d6\u06d8\u06d6\u06d7\u06e8\u06e1\u06e2\u06e7\u06d8\u06e2\u06d9\u06e2\u06df\u06e8\u06d8\u06d6\u06d6\u06e5\u06e1\u06da\u06db\u06d9\u06e7\u06df"

    goto :goto_0

    :sswitch_5
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u06d9\u06e0\u06e1\u06e1\u06d9\u06ec\u06d6\u06dc\u06e6\u06d8\u06d6\u06d7\u06df\u06d9\u06e8\u06d8\u06db\u06eb\u06e5\u06d7\u06e7\u06e8\u06d8\u06e8\u06eb\u06dc\u06d7\u06eb\u06e8\u06db\u06d8\u06d9\u06e0\u06d8\u06dc\u06d8\u06e4\u06da\u06e0\u06e0\u06ec\u06d6\u06e7\u06e8\u06d9\u06e7\u06da\u06e7\u06da\u06e1\u06d8\u06d8\u06db\u06e6\u06d7\u06ec\u06e6\u06e1\u06d8"

    goto :goto_0

    :sswitch_6
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v0, "\u06ec\u06e2\u06d8\u06d8\u06eb\u06e4\u06d8\u06d9\u06e1\u06e8\u06e7\u06dc\u06e2\u06e1\u06e4\u06e4\u06d6\u06db\u06d6\u06e7\u06e2\u06e6\u06e6\u06e6\u06d8\u06dc\u06e8\u06db\u06e7\u06e5\u06e7\u06d8\u06eb\u06ec\u06e5\u06d8\u06dc\u06e0\u06e1\u06e8\u06e7\u06d8\u06e2\u06ec\u06e4\u06dc\u06eb\u06d8\u06d8\u06d6\u06da\u06d7\u06e4\u06d9\u06d8\u06eb\u06df\u06db"

    goto :goto_0

    :sswitch_7
    const v2, -0x4cf31dcd

    const-string v0, "\u06da\u06e2\u06e7\u06da\u06e0\u06d8\u06e2\u06d9\u06df\u06e2\u06df\u06e8\u06db\u06d6\u06e5\u06e5\u06db\u06d6\u06d8\u06df\u06d6\u06d7\u06df\u06ec\u06e5\u06e1\u06e0\u06d6\u06dc\u06e7\u06df\u06ec\u06db\u06df\u06da\u06e6\u06d7"

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v5

    xor-int/2addr v5, v2

    sparse-switch v5, :sswitch_data_1

    goto :goto_1

    :sswitch_8
    const v5, -0x637dcdf7

    const-string v0, "\u06d7\u06d7\u06d6\u06ec\u06e6\u06eb\u06e2\u06eb\u06e0\u06e5\u06e4\u06d6\u06dc\u06db\u06e6\u06eb\u06df\u06d9\u06da\u06e1\u06e4\u06ec\u06e4\u06e8\u06e8\u06db\u06e1\u06dc\u06d6\u06d7\u06d9\u06e4\u06e5\u06da\u06da\u06df\u06e5\u06e0\u06e8\u06d6\u06d6\u06eb\u06e1\u06e4\u06e8\u06d8\u06da\u06ec\u06e7"

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v6

    xor-int/2addr v6, v5

    sparse-switch v6, :sswitch_data_2

    goto :goto_2

    :sswitch_9
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "\u06e7\u06d9\u06db\u06da\u06ec\u06e7\u06e8\u06e5\u06d8\u06d7\u06db\u06e0\u06e5\u06ec\u06d9\u06da\u06e0\u06e8\u06d6\u06d8\u06e2\u06db\u06da\u06eb\u06e6\u06d6\u06db\u06d7\u06d9\u06dc\u06d8\u06eb\u06d8\u06da\u06e4\u06d6\u06e7\u06d8\u06db\u06e2\u06d6\u06ec\u06e0\u06db\u06d6\u06dc\u06d9\u06db"

    goto :goto_2

    :sswitch_a
    const-string v0, "\u06d7\u06e4\u06e1\u06ec\u06d6\u06d6\u06d8\u06ec\u06e2\u06d8\u06e1\u06e4\u06e6\u06d8\u06e4\u06d9\u06e7\u06e6\u06df\u06d9\u06e0\u06e0\u06ec\u06e1\u06d8\u06df\u06e4\u06d9\u06dc\u06dc\u06d7\u06d9\u06d6\u06e4\u06dc\u06d8\u06db\u06d9\u06e1\u06d8\u06e1\u06da\u06e0\u06dc\u06eb\u06e8"

    goto :goto_1

    :cond_0
    const-string v0, "\u06e4\u06dc\u06e0\u06e8\u06d6\u06e7\u06e1\u06e2\u06e8\u06d8\u06db\u06e8\u06d8\u06d8\u06e6\u06db\u06d7\u06e7\u06e4\u06df\u06e0\u06e6\u06d8\u06d8\u06e0\u06e8\u06d8\u06d8\u06db\u06eb\u06d7\u06db\u06eb\u06e5\u06da\u06e5\u06e8\u06e4\u06e5\u06d7\u06da\u06da\u06e1\u06e4\u06e8\u06e5"

    goto :goto_2

    :sswitch_b
    const-string v0, "\u06eb\u06ec\u06dc\u06d8\u06e8\u06eb\u06e8\u06d8\u06d7\u06da\u06dc\u06d8\u06e4\u06d8\u06dc\u06d8\u06d6\u06ec\u06d9\u06db\u06e7\u06d7\u06d7\u06e2\u06eb\u06dc\u06e0\u06dc\u06d8\u06d9\u06ec\u06dc\u06d8\u06db\u06e8\u06d9\u06db\u06d7\u06d9\u06e1\u06eb\u06dc\u06d8\u06eb\u06d6\u06dc\u06d8\u06eb\u06e7"

    goto :goto_2

    :sswitch_c
    const-string v0, "\u06e2\u06e2\u06e1\u06d7\u06d7\u06dc\u06d8\u06e5\u06d8\u06e7\u06d8\u06e2\u06df\u06df\u06da\u06e0\u06d6\u06d8\u06dc\u06d9\u06ec\u06e5\u06df\u06e6\u06d8\u06e5\u06e1\u06d8\u06d8\u06e6\u06e7\u06d6\u06d8\u06ec\u06ec\u06db"

    goto :goto_1

    :sswitch_d
    const-string v0, "\u06e2\u06dc\u06e6\u06d8\u06d6\u06e7\u06e4\u06db\u06e1\u06df\u06e2\u06df\u06df\u06db\u06ec\u06e7\u06df\u06df\u06df\u06df\u06e6\u06e4\u06d7\u06e5\u06d9\u06dc\u06dc\u06e5\u06e6\u06dc\u06e4\u06e7\u06e0\u06e6\u06e4\u06e2\u06d6\u06e1\u06d8\u06d8\u06db\u06db\u06dc\u06d8\u06e0\u06d8\u06e7\u06da\u06dc\u06dc\u06d8"

    goto :goto_1

    :sswitch_e
    const-string v0, "\u06e8\u06e8\u06ec\u06e8\u06e6\u06d8\u06eb\u06e4\u06e1\u06d8\u06e6\u06e7\u06d6\u06db\u06d8\u06eb\u06e8\u06d9\u06e6\u06e5\u06e6\u06d8\u06df\u06e1\u06db\u06e0\u06ec\u06e1\u06d8\u06ec\u06e2\u06e6\u06ec\u06d6\u06e2\u06e6\u06d9\u06e2\u06e7\u06e1\u06e7\u06e7\u06e0\u06d6\u06d8\u06e5\u06d6\u06d9\u06e2\u06d7\u06e1"

    goto :goto_0

    :sswitch_f
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v0, "\u06e5\u06e2\u06da\u06eb\u06e5\u06d6\u06d9\u06ec\u06df\u06e5\u06d7\u06d8\u06e4\u06db\u06d6\u06e4\u06ec\u06e5\u06eb\u06db\u06df\u06e1\u06e4\u06db\u06db\u06e8\u06e2\u06dc\u06e7\u06d8\u06df\u06db\u06e8\u06eb\u06e5\u06d8\u06da\u06e2\u06df\u06d9\u06dc\u06d8"

    goto :goto_0

    :sswitch_10
    const-string v0, "SWEEP_RESULT_BACK"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "\u06e2\u06d9\u06e0\u06d6\u06e2\u06dc\u06d8\u06d6\u06e1\u06e5\u06df\u06e5\u06ec\u06d6\u06e8\u06e6\u06e8\u06e2\u06e5\u06d8\u06d9\u06d9\u06db\u06df\u06e1\u06e1\u06df\u06e1\u06e5\u06d7\u06e0\u06e8\u06d7\u06dc\u06d7\u06d7\u06e8\u06d9\u06e7\u06d6\u06e0\u06e8\u06e4"

    goto/16 :goto_0

    :sswitch_11
    const/4 v0, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    const-string v0, "\u06e2\u06e7\u06d6\u06df\u06df\u06e4\u06db\u06d6\u06db\u06e1\u06ec\u06e1\u06ec\u06e0\u06d7\u06d9\u06e2\u06e8\u06d8\u06e0\u06d7\u06e4\u06ec\u06e2\u06e4\u06db\u06db\u06e5\u06d8\u06db\u06eb\u06d6\u06d8"

    goto/16 :goto_0

    :sswitch_12
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const-string v0, "\u06e1\u06e7\u06e1\u06e4\u06db\u06e6\u06d8\u06dc\u06e1\u06e4\u06d7\u06dc\u06e2\u06db\u06e5\u06e8\u06d8\u06e0\u06e1\u06d8\u06d7\u06eb\u06df\u06d6\u06ec\u06ec\u06dc\u06e8\u06d8\u06e6\u06e5\u06da\u06e6\u06dc\u06d6\u06d8\u06df\u06d7\u06d8\u06d8\u06da\u06d7\u06e0\u06d8\u06dc\u06dc"

    goto/16 :goto_0

    :sswitch_13
    const v0, 0x7f1002a5

    invoke-static {p0, v0}, Lz2/c5;->OooO0O0(Landroid/content/Context;I)V

    const-string v0, "\u06dc\u06e8\u06e0\u06d9\u06d8\u06dc\u06db\u06db\u06e4\u06e1\u06e7\u06d8\u06d6\u06e0\u06d9\u06e1\u06e4\u06e5\u06d8\u06d9\u06d6\u06dc\u06d8\u06d6\u06da\u06e6\u06d8\u06d9\u06d9\u06dc\u06d6\u06e8\u06e6\u06d9\u06d8\u06eb\u06da\u06e4\u06d8\u06d8"

    goto/16 :goto_0

    :sswitch_14
    const-string v0, "\u06eb\u06e6\u06df\u06da\u06e5\u06e8\u06d8\u06da\u06d6\u06d8\u06da\u06e0\u06e6\u06e4\u06e4\u06d6\u06ec\u06e8\u06e5\u06e1\u06e8\u06e8\u06d8\u06d6\u06e6\u06df\u06d6\u06e0\u06e1\u06d8\u06db\u06d6\u06e5"

    goto/16 :goto_0

    :sswitch_15
    const-string v0, "\u06dc\u06e8\u06e0\u06d9\u06d8\u06dc\u06db\u06db\u06e4\u06e1\u06e7\u06d8\u06d6\u06e0\u06d9\u06e1\u06e4\u06e5\u06d8\u06d9\u06d6\u06dc\u06d8\u06d6\u06da\u06e6\u06d8\u06d9\u06d9\u06dc\u06d6\u06e8\u06e6\u06d9\u06d8\u06eb\u06da\u06e4\u06d8\u06d8"

    goto/16 :goto_0

    :sswitch_16
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x611b2f01 -> :sswitch_2
        -0x43639f87 -> :sswitch_12
        -0x3c918758 -> :sswitch_f
        -0x37b2cfa3 -> :sswitch_6
        -0x379723b5 -> :sswitch_1
        -0x3502d75f -> :sswitch_16
        -0x1a22c860 -> :sswitch_3
        -0x8d23af7 -> :sswitch_7
        0x467214e -> :sswitch_4
        0x16606ea3 -> :sswitch_5
        0x1cd70187 -> :sswitch_0
        0x5b71675a -> :sswitch_15
        0x5edc9e13 -> :sswitch_11
        0x609fe367 -> :sswitch_13
        0x65fff5c8 -> :sswitch_10
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x29224399 -> :sswitch_d
        0x6450db1a -> :sswitch_14
        0x70f7e8af -> :sswitch_8
        0x77813af8 -> :sswitch_e
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        -0x11c39ff3 -> :sswitch_9
        -0xf3f13f5 -> :sswitch_c
        -0x5a1b593 -> :sswitch_a
        0x2b28d159 -> :sswitch_b
    .end sparse-switch
.end method


# virtual methods
.method public OooO00o(Ljava/lang/String;)V
    .locals 5

    const/4 v1, 0x0

    const-string v0, "\u06d8\u06e5\u06e2\u06d8\u06d9\u06d8\u06e5\u06e7\u06d6\u06d6\u06eb\u06e7\u06e5\u06d8\u06e8\u06e4\u06dc\u06e2\u06ec\u06d9\u06e7\u06dc\u06e1\u06d8\u06e7\u06e1\u06d9\u06ec\u06ec\u06d6\u06db\u06e7\u06d8\u06d8\u06d9\u06e1\u06e1\u06e7\u06e4\u06e6\u06e4\u06dc\u06e1\u06d8\u06ec\u06df\u06d7\u06eb\u06eb\u06d7\u06e5\u06d8\u06e5\u06e7\u06e2\u06eb"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v3, 0x384

    xor-int/2addr v2, v3

    xor-int/lit16 v2, v2, 0x122

    const/16 v3, 0x38d

    const v4, 0x23b9db0b

    xor-int/2addr v2, v3

    xor-int/2addr v2, v4

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06eb\u06d9\u06dc\u06d8\u06d9\u06df\u06d6\u06e2\u06d8\u06dc\u06e1\u06ec\u06d6\u06d8\u06db\u06e8\u06e4\u06dc\u06d8\u06e0\u06df\u06dc\u06df\u06dc\u06d6\u06e8\u06e1\u06d8\u06d8\u06da\u06e6\u06d8\u06d8"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06e2\u06e6\u06da\u06d6\u06d9\u06e4\u06db\u06df\u06e0\u06d6\u06dc\u06ec\u06dc\u06e8\u06d9\u06d9\u06e7\u06e5\u06d8\u06da\u06d8\u06e5\u06dc\u06e1\u06e7\u06d8\u06e0\u06d9\u06d8\u06d8\u06ec\u06da\u06e4\u06dc\u06e1\u06e8\u06db\u06e8\u06e1"

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeZbarActivity;->o0OoOo0:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    const-string v0, "\u06e7\u06e0\u06e8\u06d8\u06e1\u06ec\u06e5\u06ec\u06e5\u06d9\u06e2\u06e5\u06d8\u06d8\u06e6\u06d6\u06db\u06e8\u06e0\u06df\u06e8\u06e1\u06eb\u06d9\u06eb\u06e2\u06e5\u06d7\u06df\u06da\u06e0\u06e1\u06da\u06df\u06e8\u06eb\u06e1\u06e4\u06d8\u06e2\u06e0\u06e1\u06db\u06e6\u06d8\u06e5\u06d8\u06db\u06da\u06df\u06df"

    goto :goto_0

    :sswitch_3
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const-string v0, "\u06e0\u06e1\u06e4\u06db\u06e2\u06e0\u06df\u06e1\u06d8\u06da\u06e5\u06e8\u06d8\u06e7\u06ec\u06e8\u06d8\u06d6\u06e8\u06d9\u06d6\u06df\u06d6\u06d8\u06ec\u06d9\u06d7\u06da\u06e7\u06e6\u06d8\u06eb\u06e0\u06ec"

    goto :goto_0

    :sswitch_4
    const/16 v0, 0x11

    iput v0, v1, Landroid/os/Message;->what:I

    const-string v0, "\u06e5\u06e5\u06da\u06e7\u06ec\u06e4\u06e0\u06dc\u06db\u06ec\u06e2\u06da\u06e0\u06e2\u06e6\u06d8\u06d7\u06eb\u06e6\u06d8\u06d8\u06db\u06e2\u06d9\u06e8\u06db\u06e0\u06d8\u06e5\u06d8\u06e0\u06d6\u06e5\u06da\u06db\u06da\u06d9\u06db\u06e6\u06d8\u06e8\u06e8\u06dc\u06d8\u06e4\u06e0\u06e6\u06d8\u06da\u06ec\u06d8\u06eb\u06e0\u06e2\u06d8\u06d8\u06d8\u06d8\u06e0\u06e2\u06da"

    goto :goto_0

    :sswitch_5
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeZbarActivity;->o0OoOo0:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const-string v0, "\u06eb\u06ec\u06eb\u06e1\u06d9\u06e2\u06e4\u06e7\u06eb\u06e1\u06d9\u06d9\u06e1\u06d8\u06e5\u06e0\u06e6\u06dc\u06d8\u06ec\u06d8\u06d6\u06d8\u06d7\u06e1\u06dc\u06d9\u06db\u06db\u06ec\u06e7\u06dc\u06d8\u06d7\u06df\u06d6\u06d8\u06dc"

    goto :goto_0

    :sswitch_6
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6f07c113 -> :sswitch_5
        -0x21d203d6 -> :sswitch_2
        0x295723ef -> :sswitch_3
        0x2e66f0e7 -> :sswitch_1
        0x38620bcf -> :sswitch_6
        0x40d746f0 -> :sswitch_4
        0x5943cc61 -> :sswitch_0
    .end sparse-switch
.end method

.method public OooOO0()V
    .locals 4

    const-string v0, "\u06e0\u06db\u06e6\u06d8\u06d8\u06e2\u06d6\u06d8\u06ec\u06e7\u06df\u06e0\u06da\u06eb\u06d7\u06db\u06d6\u06e2\u06eb\u06dc\u06e0\u06eb\u06ec\u06d7\u06e6\u06e4\u06e4\u06e6\u06db\u06e6\u06da\u06e1\u06d8\u06e5\u06dc\u06d6\u06d8\u06e8\u06e1\u06e8\u06d8\u06d7\u06e2\u06e5\u06d8\u06d9\u06e1\u06d6\u06d8\u06ec\u06e8\u06dc\u06d8\u06e2\u06d6\u06d7\u06d6\u06d6\u06df\u06df\u06d7\u06e6"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x1c7

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0xb4

    const/16 v2, 0x81

    const v3, 0x133a6a2d

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06da\u06db\u06d6\u06e8\u06db\u06e1\u06d8\u06db\u06dc\u06e2\u06db\u06e1\u06e5\u06d8\u06ec\u06e1\u06db\u06e8\u06e2\u06d9\u06e0\u06e8\u06eb\u06d8\u06d9\u06dc\u06d8\u06e5\u06e0\u06e6\u06d8\u06e0\u06e5\u06e7\u06d8\u06e7\u06e5\u06e6\u06df\u06eb\u06e4\u06d7\u06d8\u06e4\u06eb\u06dc\u06db"

    goto :goto_0

    :sswitch_1
    invoke-direct {p0}, Lcom/cyjh/elfin/ui/activity/SweepCodeZbarActivity;->OooOO0o()V

    const-string v0, "\u06e0\u06dc\u06e1\u06d8\u06e2\u06d8\u06e1\u06e2\u06e7\u06e1\u06d8\u06e5\u06e4\u06d8\u06d8\u06e7\u06e5\u06d6\u06db\u06db\u06db\u06ec\u06da\u06d8\u06e5\u06e2\u06e1\u06d6\u06ec\u06db\u06dc\u06e5\u06eb\u06ec\u06da\u06e5\u06d8\u06db\u06e8\u06da"

    goto :goto_0

    :sswitch_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x31e2d767 -> :sswitch_1
        0x67331a58 -> :sswitch_0
        0x6b359460 -> :sswitch_2
    .end sparse-switch
.end method

.method public OooOOO([BLandroid/hardware/Camera;Landroid/view/View;)V
    .locals 5

    const/4 v1, 0x0

    const-string v0, "\u06e7\u06eb\u06df\u06df\u06e2\u06db\u06e4\u06dc\u06d8\u06d8\u06d6\u06e7\u06df\u06e5\u06e5\u06e1\u06e5\u06d8\u06e8\u06d6\u06dc\u06db\u06e5\u06db\u06da\u06e0\u06d9\u06e0\u06e2\u06dc\u06e6\u06d8\u06e6\u06e7\u06dc\u06d8\u06d7\u06ec\u06e6\u06e0\u06da\u06e6\u06eb\u06dc\u06eb\u06e6\u06e8\u06d8\u06e0\u06eb\u06e2\u06e7\u06dc\u06d6\u06d8\u06ec\u06eb\u06dc"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v3, 0x1c6

    xor-int/2addr v2, v3

    xor-int/lit16 v2, v2, 0x3cd

    const/16 v3, 0x1e7

    const v4, 0x27c7b203

    xor-int/2addr v2, v3

    xor-int/2addr v2, v4

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06ec\u06eb\u06d6\u06d8\u06e1\u06db\u06da\u06e5\u06e7\u06d8\u06e8\u06e7\u06e6\u06e5\u06e1\u06d8\u06ec\u06e8\u06e6\u06dc\u06da\u06da\u06e0\u06e7\u06eb\u06df\u06e4\u06e1\u06e7\u06eb\u06d9\u06e8\u06dc\u06d7\u06e7\u06d9\u06dc\u06d8"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06d9\u06d9\u06db\u06d8\u06df\u06e5\u06d8\u06e1\u06da\u06eb\u06e1\u06d8\u06e6\u06e8\u06d8\u06d7\u06d7\u06e7\u06dc\u06d8\u06da\u06d8\u06e8\u06e0\u06e2\u06d8\u06dc\u06e6\u06ec\u06df\u06e0\u06e4"

    goto :goto_0

    :sswitch_2
    const-string v0, "\u06db\u06df\u06e5\u06d8\u06e4\u06e0\u06d7\u06db\u06d6\u06dc\u06d7\u06e6\u06e5\u06d7\u06e4\u06e7\u06e4\u06d9\u06e1\u06e0\u06e6\u06e2\u06e1\u06e6\u06e7\u06e5\u06eb\u06ec\u06e8\u06dc\u06d8"

    goto :goto_0

    :sswitch_3
    const-string v0, "\u06e2\u06d7\u06d8\u06d8\u06d7\u06da\u06e5\u06da\u06ec\u06dc\u06e7\u06d9\u06e6\u06d8\u06ec\u06d8\u06e6\u06d8\u06df\u06db\u06e4\u06e0\u06e4\u06df\u06df\u06d6\u06d8\u06d8\u06e4\u06e8\u06eb\u06e6\u06e4\u06e0\u06db\u06e5\u06e1\u06e6\u06db\u06d8\u06d8\u06eb\u06d7\u06eb\u06d8\u06d9\u06e0"

    goto :goto_0

    :sswitch_4
    const v2, -0x757a63c1

    const-string v0, "\u06e0\u06e7\u06d6\u06d8\u06d7\u06db\u06da\u06dc\u06ec\u06d7\u06e5\u06dc\u06d7\u06d9\u06e6\u06d8\u06e5\u06e2\u06e7\u06eb\u06e7\u06d8\u06d8\u06e6\u06e2\u06d6\u06e5\u06d9\u06e8\u06e2\u06d8\u06d8\u06dc\u06d8\u06e1\u06da\u06e8\u06e1\u06e1\u06d6\u06e7\u06d8\u06ec\u06e1\u06d8\u06d9\u06e7\u06d8\u06d8\u06df\u06d9\u06d9\u06e4\u06e7\u06e6\u06d8\u06ec\u06d6\u06d8"

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v2

    sparse-switch v3, :sswitch_data_1

    goto :goto_1

    :sswitch_5
    const-string v0, "\u06df\u06d6\u06d8\u06d8\u06d7\u06e8\u06da\u06da\u06dc\u06e8\u06da\u06df\u06d9\u06e1\u06ec\u06da\u06d6\u06e5\u06df\u06d9\u06e0\u06dc\u06d6\u06e4\u06e1\u06d8\u06e2\u06d8\u06d8\u06e5\u06dc\u06e5\u06e4\u06d6\u06dc\u06d8\u06ec\u06e5\u06df"

    goto :goto_0

    :sswitch_6
    const-string v0, "\u06ec\u06d7\u06e4\u06d8\u06d6\u06d7\u06e8\u06d6\u06db\u06e0\u06e1\u06df\u06d9\u06e0\u06d6\u06e1\u06d9\u06e6\u06d8\u06dc\u06db\u06e2\u06ec\u06d9\u06e8\u06d8\u06e7\u06e2\u06dc\u06e0\u06d8\u06dc\u06d8\u06e5\u06da\u06e2\u06e8\u06e7\u06e0\u06e1\u06e2\u06e6\u06db\u06d9\u06eb"

    goto :goto_1

    :sswitch_7
    const v3, -0x5c76fce1

    const-string v0, "\u06e2\u06d7\u06e6\u06d8\u06e6\u06e8\u06df\u06d6\u06e8\u06e6\u06d8\u06e7\u06e8\u06e5\u06d9\u06d8\u06e7\u06e6\u06db\u06da\u06da\u06e7\u06d9\u06d6\u06da\u06df\u06e6\u06db\u06d8\u06e8\u06d8\u06e7\u06d8\u06d9\u06e0\u06e1\u06dc\u06e2\u06e5\u06d8"

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    xor-int/2addr v4, v3

    sparse-switch v4, :sswitch_data_2

    goto :goto_2

    :sswitch_8
    iget-boolean v0, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeZbarActivity;->OoooooO:Z

    if-eqz v0, :cond_0

    const-string v0, "\u06d9\u06d6\u06eb\u06df\u06e7\u06e8\u06ec\u06e6\u06ec\u06d8\u06d9\u06e4\u06d7\u06d6\u06e7\u06d8\u06df\u06ec\u06e5\u06d8\u06eb\u06e6\u06dc\u06dc\u06df\u06d9\u06e2\u06d6\u06e8\u06d8\u06ec\u06e0\u06d7\u06eb\u06e1\u06e1\u06df\u06e2\u06e2"

    goto :goto_2

    :cond_0
    const-string v0, "\u06d8\u06e1\u06e8\u06e6\u06da\u06e7\u06eb\u06d6\u06e0\u06dc\u06ec\u06e5\u06d8\u06d7\u06d9\u06d6\u06d8\u06d8\u06e5\u06e6\u06ec\u06e0\u06e1\u06e5\u06d9\u06df\u06d6\u06df\u06da\u06d8\u06d8\u06dc\u06e7\u06e0\u06e5\u06e5\u06e6\u06e1\u06d8\u06d6\u06da\u06e7\u06e7\u06e6\u06d8\u06e6\u06e6\u06d6\u06d8\u06e8\u06db\u06e4"

    goto :goto_2

    :sswitch_9
    const-string v0, "\u06d7\u06e5\u06e4\u06d6\u06e4\u06e0\u06da\u06d7\u06eb\u06db\u06e4\u06d6\u06d7\u06e6\u06d8\u06eb\u06d8\u06eb\u06e0\u06d6\u06d9\u06e1\u06eb\u06e2\u06e4\u06e8\u06d8\u06e1\u06e5\u06e8"

    goto :goto_2

    :sswitch_a
    const-string v0, "\u06e2\u06e6\u06ec\u06e1\u06eb\u06df\u06eb\u06d9\u06e6\u06eb\u06e5\u06dc\u06e2\u06df\u06d7\u06da\u06e8\u06d7\u06da\u06d8\u06d8\u06e7\u06e1\u06d8\u06e7\u06e2\u06da\u06e7\u06d8\u06d8\u06e7\u06eb\u06e6\u06d8\u06d8\u06e2\u06d6\u06d8\u06e4\u06e6\u06e4\u06da\u06eb\u06e8"

    goto :goto_1

    :sswitch_b
    const-string v0, "\u06e2\u06e6\u06d6\u06d8\u06dc\u06df\u06e6\u06d9\u06d6\u06ec\u06e7\u06da\u06d9\u06db\u06e1\u06e4\u06d9\u06e1\u06e0\u06e8\u06dc\u06d8\u06d8\u06e7\u06e6\u06d9\u06e1\u06db\u06e1\u06da\u06e2\u06e1\u06d8"

    goto :goto_1

    :sswitch_c
    const-string v0, "\u06e4\u06db\u06e6\u06d8\u06d9\u06d6\u06e4\u06ec\u06da\u06ec\u06e8\u06e1\u06d9\u06d8\u06e0\u06da\u06d7\u06e8\u06e0\u06d6\u06d8\u06e2\u06d6\u06e8\u06d8\u06e5\u06e6\u06e4\u06e4\u06d7\u06e8\u06d8\u06e1\u06d9\u06eb\u06e2\u06d6\u06dc\u06d7\u06d9\u06df\u06da\u06dc\u06d8\u06e7\u06e4\u06d7\u06e2\u06d9\u06d8\u06d8"

    goto :goto_0

    :sswitch_d
    iget-object v1, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeZbarActivity;->Oooooo:Lz2/v7;

    const-string v0, "\u06ec\u06d9\u06e4\u06dc\u06eb\u06e8\u06e0\u06ec\u06da\u06d7\u06df\u06e1\u06e4\u06df\u06e4\u06e2\u06e2\u06db\u06d6\u06e0\u06e8\u06e0\u06e0\u06e4\u06e2\u06db\u06dc\u06d9\u06da\u06d6\u06d8"

    goto :goto_0

    :sswitch_e
    const v2, -0x5080e228

    const-string v0, "\u06df\u06e6\u06d8\u06d8\u06e8\u06eb\u06e8\u06db\u06d9\u06e6\u06da\u06e8\u06e5\u06e7\u06d8\u06ec\u06df\u06e2\u06e8\u06df\u06e0\u06df\u06e6\u06e2\u06e4\u06ec\u06e2\u06d9\u06e2\u06dc\u06dc\u06d8\u06dc\u06e6\u06e1\u06d8\u06d7\u06e7\u06e8\u06d8\u06e7\u06dc\u06db\u06e1\u06da\u06df"

    :goto_3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v2

    sparse-switch v3, :sswitch_data_3

    goto :goto_3

    :sswitch_f
    const-string v0, "\u06e2\u06db\u06dc\u06d8\u06dc\u06dc\u06e5\u06d8\u06db\u06e2\u06e8\u06e1\u06da\u06e7\u06d8\u06e0\u06e8\u06d8\u06d8\u06e6\u06d6\u06d6\u06e7\u06d6\u06dc\u06eb\u06e6\u06e1\u06d9\u06e2\u06d8\u06e7\u06e6\u06e1\u06df\u06d8\u06d8\u06ec\u06d8\u06e7\u06d8\u06d8\u06e6\u06e1\u06e0\u06e7\u06d7\u06dc\u06e2\u06ec\u06da\u06e5"

    goto :goto_0

    :sswitch_10
    const-string v0, "\u06d6\u06e8\u06d8\u06d8\u06db\u06db\u06db\u06d8\u06d9\u06e6\u06d8\u06e8\u06d8\u06e1\u06e4\u06d6\u06d6\u06d8\u06d8\u06e2\u06d6\u06d9\u06e5\u06e7\u06d8\u06e0\u06e6\u06eb\u06d7\u06e1\u06e1\u06e1\u06e2\u06e8\u06d8\u06e7\u06ec\u06e5\u06d6\u06d9\u06e5\u06d8\u06e0\u06ec\u06df\u06db\u06d8\u06db\u06df\u06d7\u06d8\u06d8"

    goto :goto_3

    :sswitch_11
    const v3, 0x5656e0e7

    const-string v0, "\u06eb\u06d9\u06e1\u06dc\u06e7\u06e2\u06e8\u06e1\u06e2\u06db\u06d7\u06df\u06e8\u06df\u06e8\u06d8\u06e7\u06d6\u06ec\u06e2\u06eb\u06ec\u06e7\u06e2\u06df\u06d7\u06d6\u06e5\u06e5\u06db\u06d6"

    :goto_4
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    xor-int/2addr v4, v3

    sparse-switch v4, :sswitch_data_4

    goto :goto_4

    :sswitch_12
    const-string v0, "\u06eb\u06d7\u06d6\u06d6\u06dc\u06dc\u06d8\u06dc\u06e6\u06da\u06e0\u06e0\u06df\u06e2\u06e4\u06d7\u06e2\u06e7\u06e2\u06db\u06db\u06e8\u06d8\u06df\u06d8\u06e8\u06d7\u06e0\u06e5\u06d8\u06df\u06e6\u06d7"

    goto :goto_4

    :cond_1
    const-string v0, "\u06e1\u06d6\u06dc\u06dc\u06e2\u06e6\u06d9\u06d6\u06e0\u06df\u06d6\u06d6\u06d8\u06d8\u06e7\u06e1\u06d7\u06df\u06e2\u06db\u06da\u06eb\u06d8\u06e6\u06da\u06e6\u06da\u06e8\u06d8\u06e5\u06d6\u06e1\u06e4\u06e8\u06e4\u06e2\u06ec\u06ec\u06e0\u06e7\u06db\u06e2\u06e2\u06d9\u06e2\u06e7\u06d6\u06d8\u06eb\u06db\u06e2\u06e7\u06ec\u06eb\u06e7\u06e2\u06d9"

    goto :goto_4

    :sswitch_13
    if-eqz v1, :cond_1

    const-string v0, "\u06e8\u06e0\u06d8\u06d8\u06dc\u06e8\u06db\u06e6\u06e0\u06e1\u06d8\u06db\u06db\u06e1\u06e0\u06da\u06e7\u06d6\u06dc\u06e7\u06e4\u06ec\u06ec\u06e4\u06db\u06e1\u06eb\u06e1\u06d7\u06d6\u06e4\u06e6\u06e2\u06e1\u06e2\u06e6\u06da\u06e2"

    goto :goto_4

    :sswitch_14
    const-string v0, "\u06e6\u06e6\u06e0\u06e2\u06e7\u06e0\u06e5\u06df\u06e1\u06e5\u06db\u06e5\u06da\u06df\u06ec\u06d6\u06d8\u06d7\u06e4\u06d8\u06d8\u06d8\u06e4\u06d8\u06dc\u06db\u06dc\u06d9\u06dc\u06ec\u06e8\u06d8"

    goto :goto_3

    :sswitch_15
    const-string v0, "\u06d9\u06d9\u06e6\u06e6\u06dc\u06d6\u06d8\u06d9\u06e5\u06ec\u06df\u06e7\u06dc\u06e0\u06d6\u06d9\u06ec\u06da\u06df\u06e8\u06e4\u06d8\u06eb\u06e5\u06db\u06da\u06e6\u06e4\u06ec\u06e0\u06e1\u06d6\u06e1\u06e6\u06d7\u06db\u06d6\u06d8\u06d6\u06dc\u06e6\u06df\u06e0\u06dc\u06e0\u06e5\u06d6\u06d8\u06e4\u06db\u06d9"

    goto :goto_3

    :sswitch_16
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeZbarActivity;->OoooooO:Z

    const-string v0, "\u06e8\u06e8\u06e4\u06d7\u06d8\u06d8\u06d6\u06d8\u06dc\u06e0\u06e8\u06e8\u06e6\u06e4\u06e5\u06e0\u06e2\u06d8\u06e4\u06e1\u06e7\u06db\u06eb\u06d6\u06d8\u06e6\u06e0\u06e6\u06e2\u06d9\u06eb\u06d9\u06e8\u06df\u06dc\u06da\u06da\u06da\u06e2\u06d6\u06d8\u06da\u06e1\u06ec\u06d6\u06e8\u06e0\u06e7\u06eb\u06ec\u06db\u06eb\u06ec\u06eb\u06da\u06ec"

    goto/16 :goto_0

    :sswitch_17
    invoke-virtual {v1, p1, p2, p3, p0}, Lz2/v7;->OooO0o([BLandroid/hardware/Camera;Landroid/view/View;Lz2/v7$OooO0O0;)V

    const-string v0, "\u06e8\u06e2\u06e8\u06d8\u06e5\u06da\u06e4\u06e5\u06ec\u06e4\u06e4\u06ec\u06d6\u06d8\u06e0\u06d8\u06db\u06d9\u06da\u06d8\u06e5\u06d9\u06d6\u06ec\u06ec\u06d8\u06dc\u06db\u06dc\u06e0\u06d7\u06e6"

    goto/16 :goto_0

    :sswitch_18
    const-string v0, "\u06e8\u06e2\u06e8\u06d8\u06e5\u06da\u06e4\u06e5\u06ec\u06e4\u06e4\u06ec\u06d6\u06d8\u06e0\u06d8\u06db\u06d9\u06da\u06d8\u06e5\u06d9\u06d6\u06ec\u06ec\u06d8\u06dc\u06db\u06dc\u06e0\u06d7\u06e6"

    goto/16 :goto_0

    :sswitch_19
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7d0939ff -> :sswitch_2
        -0x74926e63 -> :sswitch_1
        -0x696e89cf -> :sswitch_19
        -0x5a83c49f -> :sswitch_17
        -0x4dd9e6b9 -> :sswitch_4
        -0x46bdfaa4 -> :sswitch_d
        -0x2e33c031 -> :sswitch_19
        0x135f52ce -> :sswitch_e
        0x2a1fbed0 -> :sswitch_16
        0x3e0478d5 -> :sswitch_0
        0x77b682c0 -> :sswitch_3
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x5a5d500f -> :sswitch_c
        -0x3c99aa0a -> :sswitch_b
        0x58f47b4f -> :sswitch_7
        0x6eb36166 -> :sswitch_5
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        -0x2894d0e6 -> :sswitch_8
        -0x317fd50 -> :sswitch_6
        0xd3a0fb4 -> :sswitch_9
        0x1074350a -> :sswitch_a
    .end sparse-switch

    :sswitch_data_3
    .sparse-switch
        -0x1e862773 -> :sswitch_15
        -0x1dad8ed2 -> :sswitch_18
        0x48814641 -> :sswitch_11
        0x67814401 -> :sswitch_f
    .end sparse-switch

    :sswitch_data_4
    .sparse-switch
        -0x593472ce -> :sswitch_12
        -0x3aa4242c -> :sswitch_13
        -0x9722e21 -> :sswitch_14
        0x40282cdc -> :sswitch_10
    .end sparse-switch
.end method

.method public OooOOO0()V
    .locals 5

    const/4 v4, 0x1

    const-string v0, "\u06d7\u06e5\u06e7\u06d8\u06e6\u06e6\u06d6\u06ec\u06e4\u06d7\u06e5\u06e4\u06e1\u06d8\u06d9\u06da\u06df\u06df\u06ec\u06e4\u06d8\u06d8\u06dc\u06ec\u06d8\u06e8\u06eb\u06d8\u06e7\u06e6\u06db\u06dc\u06d6\u06d7\u06e2\u06da\u06db\u06eb\u06da\u06ec\u06d6\u06e6\u06e5\u06d8\u06eb\u06da\u06e1\u06e0\u06e1\u06e7\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0xc7

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x29f

    const/16 v2, 0x1ea

    const v3, 0x3f23c669

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06ec\u06e5\u06e1\u06d8\u06e5\u06e5\u06d8\u06d6\u06e7\u06e8\u06d8\u06e2\u06e5\u06d6\u06d8\u06db\u06e0\u06e6\u06d8\u06e8\u06da\u06d8\u06df\u06e1\u06e1\u06e8\u06d6\u06dc\u06d8\u06da\u06df\u06d6\u06d8\u06db\u06e8\u06dc\u06db\u06dc\u06e6\u06e8\u06ec\u06ec\u06ec\u06dc\u06e7\u06ec\u06eb\u06d8\u06d6\u06e2\u06e4\u06e0\u06d6\u06e4\u06eb\u06e6\u06e7\u06d8\u06eb\u06e7\u06df"

    goto :goto_0

    :sswitch_1
    const v1, -0xbf18b05

    const-string v0, "\u06ec\u06df\u06e2\u06e4\u06df\u06e7\u06dc\u06dc\u06ec\u06da\u06d9\u06d8\u06d8\u06e1\u06ec\u06dc\u06d8\u06e6\u06e8\u06db\u06ec\u06e8\u06db\u06e5\u06ec\u06dc\u06db\u06e5\u06e8\u06d8\u06e1\u06d8\u06e4\u06da\u06d6\u06d8\u06e5\u06d9\u06e6\u06d8\u06ec\u06e8\u06e1\u06d8\u06e5\u06e7\u06ec"

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v2, v1

    sparse-switch v2, :sswitch_data_1

    goto :goto_1

    :sswitch_2
    const-string v0, "\u06e4\u06e4\u06e5\u06d8\u06e1\u06dc\u06d6\u06d8\u06eb\u06d8\u06d8\u06dc\u06df\u06eb\u06dc\u06e5\u06e4\u06d6\u06d6\u06d7\u06e1\u06e7\u06db\u06d9\u06eb\u06e5\u06d6\u06e1\u06d8\u06da\u06e2\u06e1\u06d8\u06e5\u06db\u06e5\u06d9\u06d8\u06da\u06eb\u06d8\u06e5\u06e1\u06d6\u06d6\u06d8\u06d6\u06db\u06e5\u06eb"

    goto :goto_0

    :sswitch_3
    const-string v0, "\u06d8\u06db\u06e8\u06d8\u06e7\u06e0\u06df\u06d7\u06e5\u06eb\u06e0\u06e2\u06e1\u06e1\u06d7\u06d6\u06d9\u06d9\u06d7\u06d7\u06e1\u06e0\u06d9\u06d9\u06ec\u06d6\u06ec\u06e7\u06e0\u06df\u06e8\u06d6\u06e8\u06da\u06e6\u06e4\u06e1\u06db\u06eb\u06e7\u06eb\u06e7\u06e4\u06db\u06e6\u06d8\u06dc\u06d7\u06ec\u06e8\u06e2\u06ec\u06db\u06d8\u06e1"

    goto :goto_1

    :sswitch_4
    const v2, 0x55ba7c8f

    const-string v0, "\u06d8\u06d7\u06e1\u06e0\u06d7\u06e1\u06e7\u06e1\u06e8\u06dc\u06e7\u06e7\u06e5\u06e4\u06d6\u06e4\u06e2\u06db\u06df\u06e6\u06dc\u06df\u06e0\u06e0\u06db\u06e6\u06e6\u06d8\u06dc\u06d8\u06d9"

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v2

    sparse-switch v3, :sswitch_data_2

    goto :goto_2

    :sswitch_5
    iget-boolean v0, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeZbarActivity;->ooOO:Z

    if-ne v0, v4, :cond_0

    const-string v0, "\u06da\u06e1\u06d7\u06e1\u06ec\u06e8\u06d9\u06d9\u06e6\u06d8\u06e6\u06e4\u06e4\u06e2\u06d7\u06e1\u06db\u06dc\u06d6\u06ec\u06e1\u06e7\u06d8\u06ec\u06e1\u06e1\u06d8\u06e4\u06e2\u06e5\u06d8\u06e4\u06ec\u06e7\u06d8\u06e4\u06d9\u06e5\u06ec\u06e0"

    goto :goto_2

    :cond_0
    const-string v0, "\u06e2\u06d8\u06d6\u06d8\u06d7\u06db\u06e7\u06d9\u06ec\u06dc\u06ec\u06e8\u06da\u06e5\u06e4\u06e0\u06da\u06e5\u06d8\u06d8\u06eb\u06e1\u06d6\u06e5\u06d7\u06d8\u06d8\u06eb\u06db\u06d6\u06ec\u06eb\u06d9\u06eb\u06e1\u06ec\u06e6\u06ec\u06e0\u06e7\u06db\u06e5\u06d8\u06e4\u06e4\u06e5\u06eb\u06df\u06d8\u06d8\u06e0\u06d7\u06df\u06dc\u06e1\u06db\u06e1\u06e8"

    goto :goto_2

    :sswitch_6
    const-string v0, "\u06db\u06eb\u06df\u06da\u06e7\u06d7\u06df\u06e0\u06e5\u06d8\u06e2\u06d6\u06d7\u06d9\u06e7\u06e0\u06e0\u06da\u06e7\u06d9\u06ec\u06df\u06ec\u06e5\u06d8\u06db\u06e5\u06d6\u06d8\u06d7\u06da\u06e8\u06db\u06d8\u06e8\u06d8\u06eb\u06e6\u06e6\u06d8\u06e5\u06e7\u06dc\u06df\u06d6\u06e4"

    goto :goto_2

    :sswitch_7
    const-string v0, "\u06d6\u06e7\u06d7\u06e7\u06e1\u06e4\u06dc\u06eb\u06e6\u06da\u06eb\u06ec\u06e8\u06e4\u06e2\u06d6\u06d8\u06d8\u06d8\u06e6\u06e6\u06eb\u06da\u06df\u06eb\u06db\u06e7\u06d9\u06eb\u06d9\u06da\u06d9\u06dc\u06d6\u06d8\u06e6\u06e6\u06eb\u06da\u06eb\u06e1\u06e6\u06e2\u06d8\u06d8\u06e2\u06e5\u06e8\u06d8\u06d9\u06e7\u06e1\u06d8\u06dc\u06d9\u06d9\u06e0\u06db\u06e8\u06d8"

    goto :goto_1

    :sswitch_8
    const-string v0, "\u06e4\u06dc\u06d6\u06e7\u06d6\u06e1\u06d6\u06df\u06e8\u06d8\u06d6\u06eb\u06df\u06d8\u06d8\u06dc\u06d6\u06e2\u06d8\u06d7\u06db\u06e2\u06e7\u06e0\u06e0\u06db\u06d8\u06ec\u06dc\u06d8\u06d6\u06d7\u06e1\u06e5\u06e5\u06e6"

    goto :goto_1

    :sswitch_9
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeZbarActivity;->ooOO:Z

    const-string v0, "\u06e1\u06e0\u06e2\u06e1\u06eb\u06dc\u06d8\u06d6\u06e8\u06e2\u06dc\u06e1\u06d8\u06e5\u06df\u06db\u06d7\u06e1\u06e7\u06df\u06e8\u06e1\u06d8\u06d8\u06e5\u06e2\u06e2\u06da\u06e6\u06d8\u06d9\u06e4\u06e2"

    goto :goto_0

    :sswitch_a
    invoke-static {}, Lz2/t7;->OooO()Lz2/t7;

    move-result-object v0

    invoke-virtual {v0}, Lz2/t7;->OooOO0O()V

    const-string v0, "\u06ec\u06df\u06e8\u06d8\u06eb\u06ec\u06e7\u06d9\u06e1\u06eb\u06dc\u06e0\u06e8\u06db\u06d6\u06d6\u06d8\u06da\u06d6\u06d9\u06e4\u06e4\u06e7\u06e4\u06e4\u06e4\u06d8\u06d8\u06e8\u06e1\u06e8\u06d7\u06dc\u06d6\u06da\u06ec\u06d8\u06d8\u06df\u06eb\u06e6\u06d8\u06e8"

    goto :goto_0

    :sswitch_b
    iput-boolean v4, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeZbarActivity;->ooOO:Z

    const-string v0, "\u06d7\u06da\u06d8\u06d6\u06e8\u06eb\u06e0\u06d6\u06d9\u06da\u06e7\u06e1\u06d8\u06db\u06d6\u06e7\u06ec\u06e7\u06d6\u06d6\u06ec\u06e1\u06ec\u06d7\u06e5\u06d8\u06e6\u06eb\u06d8\u06d8\u06e6\u06e5\u06d8"

    goto :goto_0

    :sswitch_c
    invoke-static {}, Lz2/t7;->OooO()Lz2/t7;

    move-result-object v0

    invoke-virtual {v0}, Lz2/t7;->OooOO0()V

    const-string v0, "\u06e7\u06e8\u06df\u06e2\u06d9\u06da\u06e2\u06d6\u06e6\u06d8\u06dc\u06d6\u06e4\u06dc\u06eb\u06e8\u06d8\u06e0\u06da\u06e1\u06d8\u06e0\u06dc\u06d6\u06d8\u06e2\u06dc\u06e7\u06db\u06eb\u06e1\u06d8\u06e6\u06e7\u06d8\u06eb\u06d8\u06d6\u06d8\u06df\u06e7\u06d9\u06df\u06e1\u06d7\u06e1\u06eb\u06e7\u06dc\u06e4\u06e0\u06e8\u06dc\u06d7\u06e2\u06d8\u06d6\u06e7\u06e6\u06d9"

    goto :goto_0

    :sswitch_d
    const-string v0, "\u06e7\u06e6\u06e5\u06d8\u06e8\u06d7\u06e5\u06d9\u06e6\u06d8\u06e1\u06da\u06d7\u06db\u06e4\u06e7\u06ec\u06e7\u06da\u06dc\u06d7\u06d7\u06dc\u06eb\u06eb\u06e2\u06e6\u06e1\u06d8\u06d9\u06da\u06e8\u06e1\u06e6\u06e8\u06dc\u06eb\u06db\u06e5\u06d8\u06d7\u06db\u06e5\u06d8\u06d8\u06e2\u06d9\u06ec\u06e4\u06d6\u06e6\u06d6\u06e5\u06db\u06e6\u06e4\u06e4"

    goto :goto_0

    :sswitch_e
    const-string v0, "\u06e7\u06e8\u06df\u06e2\u06d9\u06da\u06e2\u06d6\u06e6\u06d8\u06dc\u06d6\u06e4\u06dc\u06eb\u06e8\u06d8\u06e0\u06da\u06e1\u06d8\u06e0\u06dc\u06d6\u06d8\u06e2\u06dc\u06e7\u06db\u06eb\u06e1\u06d8\u06e6\u06e7\u06d8\u06eb\u06d8\u06d6\u06d8\u06df\u06e7\u06d9\u06df\u06e1\u06d7\u06e1\u06eb\u06e7\u06dc\u06e4\u06e0\u06e8\u06dc\u06d7\u06e2\u06d8\u06d6\u06e7\u06e6\u06d9"

    goto :goto_0

    :sswitch_f
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x75adfb3a -> :sswitch_e
        -0x6a405ac5 -> :sswitch_a
        -0x290d653a -> :sswitch_c
        -0x2140d0fc -> :sswitch_f
        -0x16619519 -> :sswitch_1
        0x8b12f11 -> :sswitch_b
        0x495de659 -> :sswitch_0
        0x7e66e5d2 -> :sswitch_9
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x582d66cc -> :sswitch_8
        -0x19264059 -> :sswitch_d
        -0x13942720 -> :sswitch_2
        0x67a99e75 -> :sswitch_4
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        -0x3ea401da -> :sswitch_3
        -0x312d1649 -> :sswitch_6
        -0x466c015 -> :sswitch_7
        0x685ce555 -> :sswitch_5
    .end sparse-switch
.end method

.method public error()V
    .locals 4

    const-string v0, "\u06ec\u06e4\u06d9\u06ec\u06e0\u06e6\u06e5\u06da\u06e1\u06d8\u06e4\u06e4\u06dc\u06d8\u06e7\u06d8\u06d7\u06d7\u06d8\u06d8\u06df\u06e4\u06d8\u06d8\u06d9\u06e2\u06dc\u06e4\u06d7\u06db\u06eb\u06e2\u06e0"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x35

    xor-int/2addr v1, v2

    xor-int/lit8 v1, v1, 0x1

    const/16 v2, 0x1ae

    const v3, 0xf81c88d

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06df\u06e5\u06e4\u06e4\u06d7\u06e8\u06d8\u06e6\u06e1\u06e5\u06dc\u06d7\u06da\u06d8\u06e5\u06d9\u06eb\u06e0\u06e5\u06da\u06eb\u06e5\u06e0\u06d6\u06e1\u06e0\u06db\u06e5\u06d8\u06e0\u06e7\u06d9"

    goto :goto_0

    :sswitch_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeZbarActivity;->OoooooO:Z

    const-string v0, "\u06d7\u06e6\u06da\u06d9\u06e1\u06dc\u06d8\u06e7\u06d9\u06e5\u06d8\u06e5\u06e1\u06db\u06db\u06df\u06eb\u06e7\u06e1\u06e1\u06d8\u06e0\u06e4\u06e6\u06d8\u06e0\u06e0\u06dc\u06d8\u06df\u06da\u06e8\u06d8\u06e7\u06d6\u06ec\u06e6\u06e8\u06e2\u06e2\u06e2\u06e6\u06e4\u06e8\u06e5\u06d8\u06d7\u06e0\u06e8\u06df\u06e8\u06df\u06d9\u06e7\u06d6\u06d8"

    goto :goto_0

    :sswitch_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x662cada0 -> :sswitch_2
        -0x4cbcf75c -> :sswitch_1
        0x6ca3b0b2 -> :sswitch_0
    .end sparse-switch
.end method

.method public initView()V
    .locals 12

    const/4 v6, 0x0

    const/4 v5, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x0

    const-string v0, "\u06d6\u06ec\u06e8\u06e1\u06d6\u06eb\u06e7\u06d7\u06ec\u06e0\u06e0\u06e1\u06d8\u06e6\u06e7\u06d6\u06d8\u06e4\u06df\u06e7\u06e7\u06dc\u06d9\u06d9\u06d9\u06da\u06e7\u06e1\u06dc\u06d8\u06dc\u06e1\u06e5\u06d8\u06da\u06e2\u06e1\u06d8\u06e8\u06d9\u06e1\u06d8\u06e2\u06df\u06d6\u06d8\u06e4\u06e5\u06e5\u06d7\u06e8\u06e5\u06d7\u06e0\u06d8"

    move-object v3, v0

    move-object v4, v6

    move v9, v1

    move-object v10, v6

    move v11, v1

    :goto_0
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v6, 0x2ff

    xor-int/2addr v0, v6

    xor-int/lit8 v0, v0, 0x47

    const/16 v6, 0x3af

    const v7, 0x5d788152

    xor-int/2addr v0, v6

    xor-int/2addr v0, v7

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06ec\u06e4\u06d7\u06d8\u06dc\u06d8\u06eb\u06e1\u06e5\u06d8\u06e0\u06dc\u06eb\u06e4\u06eb\u06e5\u06ec\u06e0\u06d6\u06d8\u06eb\u06db\u06d7\u06da\u06e8\u06e1\u06d8\u06e2\u06d6\u06e1\u06d8\u06e1\u06e0\u06da\u06eb\u06e4\u06e4\u06e6\u06e2\u06e7\u06d7\u06dc\u06da\u06dc\u06e4\u06e4\u06d8\u06d9\u06e2\u06e8\u06e5\u06e2"

    move-object v3, v0

    goto :goto_0

    :sswitch_1
    const v0, 0x7f090245

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeZbarActivity;->Oooooo0:Landroid/widget/FrameLayout;

    const-string v0, "\u06db\u06d6\u06db\u06e8\u06e6\u06e6\u06e1\u06d9\u06d7\u06ec\u06dc\u06e6\u06e5\u06d7\u06e0\u06eb\u06e1\u06d6\u06d8\u06e1\u06e0\u06db\u06e5\u06da\u06d9\u06da\u06e0\u06d7\u06d9\u06d9\u06dc\u06d8\u06e7\u06eb\u06e7\u06e8\u06e6\u06d8\u06e5\u06e7\u06e2\u06e8\u06ec\u06dc\u06df\u06eb\u06e1\u06d7\u06d8\u06e5"

    move-object v3, v0

    goto :goto_0

    :sswitch_2
    const v0, 0x7f090243

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeZbarActivity;->OooooO0:Landroid/widget/RelativeLayout;

    const-string v0, "\u06e8\u06e2\u06e4\u06e7\u06e6\u06d9\u06e4\u06e5\u06d9\u06dc\u06d7\u06e6\u06ec\u06e6\u06e7\u06e8\u06e5\u06d8\u06e6\u06e4\u06eb\u06e0\u06e4\u06eb\u06e7\u06e5\u06db\u06da\u06e2\u06df\u06ec\u06e6\u06e1\u06da\u06d7\u06e1\u06da\u06e2\u06d7\u06e7\u06e0\u06d8\u06e5\u06e5\u06e8\u06d6\u06dc\u06e1\u06d8"

    move-object v3, v0

    goto :goto_0

    :sswitch_3
    const v0, 0x7f090244

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeZbarActivity;->OooooOO:Landroid/widget/RelativeLayout;

    const-string v0, "\u06d6\u06e0\u06da\u06eb\u06dc\u06dc\u06db\u06df\u06e0\u06e6\u06df\u06e0\u06e4\u06e4\u06e8\u06d8\u06da\u06da\u06d7\u06e4\u06e1\u06da\u06df\u06df\u06db\u06db\u06db\u06e4\u06e1\u06e5\u06e0\u06e8\u06e4\u06e7\u06df\u06d6\u06e0\u06e2\u06dc\u06e1\u06eb\u06e8\u06df\u06d9\u06df\u06e5\u06d8\u06df\u06e0\u06e0"

    move-object v3, v0

    goto :goto_0

    :sswitch_4
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v6, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    const-string v0, "\u06e2\u06e5\u06e1\u06e1\u06eb\u06d9\u06d6\u06e2\u06e7\u06e2\u06df\u06e6\u06eb\u06e0\u06e7\u06e5\u06ec\u06e2\u06e0\u06db\u06d8\u06df\u06e1\u06d8\u06d8\u06dc\u06e4\u06e2\u06df\u06e4\u06e4\u06e0\u06d9\u06da\u06e8\u06e1\u06d8\u06db\u06eb\u06dc\u06e5\u06e0\u06dc\u06df\u06e6\u06e1\u06e6\u06e5\u06d8"

    move-object v3, v0

    move v11, v6

    goto :goto_0

    :sswitch_5
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeZbarActivity;->OooooOO:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const-string v3, "\u06e6\u06d9\u06db\u06e7\u06df\u06dc\u06db\u06e6\u06db\u06d7\u06d6\u06d7\u06e2\u06e2\u06eb\u06e7\u06d8\u06dc\u06e8\u06d9\u06e6\u06d8\u06e5\u06e4\u06d6\u06e0\u06d9\u06e4\u06d9\u06eb\u06dc\u06e4\u06db\u06da\u06e6\u06e4\u06e6\u06d7\u06eb\u06eb\u06e1\u06db\u06da\u06e8\u06d8\u06e7\u06d8\u06da\u06e7\u06d8\u06d8\u06e6\u06eb\u06d7\u06e5\u06d9\u06e4"

    move-object v10, v0

    goto :goto_0

    :sswitch_6
    mul-int/lit8 v0, v11, 0x2

    div-int/lit8 v6, v0, 0x3

    const-string v0, "\u06d8\u06da\u06dc\u06e0\u06df\u06e6\u06e1\u06dc\u06eb\u06e2\u06e0\u06e6\u06e0\u06db\u06e8\u06da\u06e2\u06db\u06dc\u06d9\u06e1\u06d8\u06d6\u06e2\u06e0\u06e8\u06e2\u06d7\u06da\u06e6\u06d8"

    move-object v3, v0

    move v9, v6

    goto :goto_0

    :sswitch_7
    iput v9, v10, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    const-string v0, "\u06dc\u06eb\u06ec\u06d7\u06e5\u06e6\u06e1\u06e7\u06dc\u06e4\u06e8\u06d8\u06e7\u06d6\u06dc\u06d8\u06d7\u06d9\u06db\u06d8\u06e0\u06e5\u06d8\u06ec\u06eb\u06df\u06e4\u06e6\u06e6\u06d8\u06d6\u06e6\u06db"

    move-object v3, v0

    goto :goto_0

    :sswitch_8
    iput v9, v10, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    const-string v0, "\u06db\u06e5\u06e2\u06d6\u06d9\u06e4\u06e1\u06e2\u06d6\u06d8\u06d6\u06d9\u06d6\u06e6\u06dc\u06da\u06e2\u06d9\u06e4\u06d8\u06d8\u06e8\u06ec\u06e1\u06d8\u06dc\u06e8\u06dc\u06e6\u06da\u06e5\u06d8"

    move-object v3, v0

    goto :goto_0

    :sswitch_9
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeZbarActivity;->OooooOO:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v10}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v0, "\u06e1\u06da\u06e1\u06db\u06e0\u06eb\u06db\u06dc\u06d6\u06e8\u06d7\u06d6\u06e1\u06d8\u06d7\u06e8\u06eb\u06da\u06e6\u06df\u06d9\u06e6\u06e5\u06d8\u06e7\u06eb\u06db\u06e0\u06df\u06d7\u06e4\u06e8\u06dc\u06d8\u06d9\u06e7\u06e0\u06da\u06e5\u06d6\u06e2\u06e5\u06d6\u06d8\u06d9\u06da\u06e1\u06d8\u06ec\u06e4\u06e7\u06eb\u06da\u06e1\u06d9\u06df\u06e7"

    move-object v3, v0

    goto :goto_0

    :sswitch_a
    const v0, 0x7f090246

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeZbarActivity;->OooooOo:Landroid/widget/ImageView;

    const-string v0, "\u06d9\u06e2\u06e2\u06db\u06d9\u06e2\u06d9\u06e8\u06e8\u06d8\u06e1\u06ec\u06e1\u06e4\u06d8\u06da\u06eb\u06e7\u06e1\u06e7\u06dc\u06e7\u06e6\u06e6\u06e7\u06e4\u06e5\u06df\u06e2\u06e8\u06d9\u06e4\u06e5\u06e8\u06d7\u06d8\u06e7\u06d8"

    move-object v3, v0

    goto/16 :goto_0

    :sswitch_b
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const v8, 0x3f666666    # 0.9f

    move v3, v1

    move v4, v2

    move v6, v2

    move v7, v5

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    const-string v3, "\u06e1\u06d9\u06e7\u06d8\u06da\u06da\u06e7\u06d8\u06e5\u06d8\u06e7\u06e2\u06e6\u06d8\u06d8\u06e6\u06da\u06d7\u06eb\u06e0\u06e2\u06df\u06e5\u06d8\u06ec\u06d8\u06d8\u06e8\u06da\u06db\u06ec\u06db\u06e2\u06da\u06db\u06eb\u06d7\u06ec\u06e8"

    move-object v4, v0

    goto/16 :goto_0

    :sswitch_c
    const-wide/16 v6, 0x5dc

    invoke-virtual {v4, v6, v7}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    const-string v0, "\u06e1\u06db\u06ec\u06eb\u06dc\u06e5\u06df\u06e2\u06d6\u06e1\u06e0\u06d6\u06d8\u06e5\u06e6\u06eb\u06d6\u06d7\u06d9\u06e0\u06e8\u06e1\u06d8\u06e0\u06dc\u06e0\u06db\u06d8\u06ec\u06e1\u06d8\u06e7\u06db\u06db\u06eb\u06e2\u06ec\u06ec"

    move-object v3, v0

    goto/16 :goto_0

    :sswitch_d
    const/4 v0, -0x1

    invoke-virtual {v4, v0}, Landroid/view/animation/TranslateAnimation;->setRepeatCount(I)V

    const-string v0, "\u06e7\u06d9\u06d9\u06df\u06d7\u06e4\u06d6\u06d9\u06dc\u06d8\u06eb\u06e1\u06e0\u06da\u06d9\u06e0\u06ec\u06e2\u06d9\u06dc\u06e5\u06e5\u06d8\u06ec\u06d9\u06e4\u06d9\u06e4\u06e8\u06d8\u06e7\u06df\u06eb\u06da\u06e1\u06e8\u06e4\u06dc\u06e5\u06d9\u06da\u06d8\u06ec\u06e7"

    move-object v3, v0

    goto/16 :goto_0

    :sswitch_e
    invoke-virtual {v4, v5}, Landroid/view/animation/TranslateAnimation;->setRepeatMode(I)V

    const-string v0, "\u06d8\u06eb\u06d8\u06ec\u06d8\u06e1\u06d8\u06d7\u06e5\u06e7\u06e4\u06df\u06db\u06d9\u06e1\u06e7\u06dc\u06e6\u06d8\u06e6\u06e0\u06e6\u06d8\u06dc\u06d6\u06d9\u06dc\u06d9\u06e6\u06d7\u06e4\u06d7\u06d8\u06e5\u06e8\u06e7\u06df\u06e8\u06d8\u06eb\u06d7\u06df\u06da\u06e1\u06ec"

    move-object v3, v0

    goto/16 :goto_0

    :sswitch_f
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v4, v0}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-string v0, "\u06d7\u06d9\u06d8\u06d8\u06e2\u06eb\u06df\u06da\u06da\u06eb\u06ec\u06da\u06d6\u06ec\u06e1\u06dc\u06ec\u06df\u06e8\u06e7\u06e0\u06e8\u06eb\u06e6\u06d8\u06e6\u06e2\u06d7\u06d7\u06da\u06e4\u06da\u06e4\u06df\u06ec\u06e8\u06db\u06e7\u06da\u06eb\u06e2\u06d6\u06e6\u06e1\u06d6\u06e6\u06d8\u06e5\u06d6\u06dc"

    move-object v3, v0

    goto/16 :goto_0

    :sswitch_10
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeZbarActivity;->OooooOo:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    const-string v0, "\u06df\u06e2\u06e0\u06d7\u06da\u06e7\u06e7\u06dc\u06e0\u06e5\u06e4\u06db\u06eb\u06d6\u06e7\u06e5\u06d6\u06e1\u06d8\u06e4\u06d9\u06d7\u06da\u06df\u06dc\u06e7\u06d6\u06e5\u06e5\u06e0\u06eb"

    move-object v3, v0

    goto/16 :goto_0

    :sswitch_11
    const v0, 0x7f090357

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    new-instance v3, Lcom/cyjh/elfin/ui/activity/SweepCodeZbarActivity$OooO0OO;

    invoke-direct {v3, p0}, Lcom/cyjh/elfin/ui/activity/SweepCodeZbarActivity$OooO0OO;-><init>(Lcom/cyjh/elfin/ui/activity/SweepCodeZbarActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "\u06e8\u06da\u06d8\u06d8\u06dc\u06e2\u06e1\u06d8\u06d6\u06db\u06db\u06dc\u06df\u06e5\u06d8\u06ec\u06e8\u06d9\u06e6\u06d9\u06e8\u06e0\u06e5\u06dc\u06d6\u06e2\u06e7\u06e2\u06e1\u06e2\u06eb\u06e2\u06e1\u06ec\u06e8\u06e0\u06e8\u06e1\u06dc"

    move-object v3, v0

    goto/16 :goto_0

    :sswitch_12
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7dede650 -> :sswitch_c
        -0x7cacd574 -> :sswitch_6
        -0x73f6dee2 -> :sswitch_0
        -0x61805dc7 -> :sswitch_2
        -0x505019bc -> :sswitch_e
        -0x368a678d -> :sswitch_4
        -0x2b9180d8 -> :sswitch_10
        -0xacdd9de -> :sswitch_a
        0x217b0998 -> :sswitch_d
        0x2a32b5e2 -> :sswitch_8
        0x2b2c171a -> :sswitch_12
        0x2d0984b6 -> :sswitch_3
        0x39aa7201 -> :sswitch_b
        0x4d20d961 -> :sswitch_7
        0x5ba2a82b -> :sswitch_5
        0x731ec4e9 -> :sswitch_9
        0x73ffaaba -> :sswitch_f
        0x76900e1e -> :sswitch_11
        0x7e57dcd7 -> :sswitch_1
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/4 v2, 0x0

    const-string v0, "\u06e6\u06eb\u06d8\u06d9\u06eb\u06e0\u06d8\u06d9\u06e1\u06e4\u06df\u06e0\u06df\u06df\u06da\u06df\u06db\u06e6\u06e8\u06d7\u06e7\u06db\u06e0\u06e2\u06d9\u06e4\u06dc\u06d8\u06e4\u06d6\u06e1\u06d8\u06d7\u06dc\u06d9\u06e6\u06e0\u06da\u06e1\u06e1\u06e1\u06e6\u06e6\u06d8\u06dc\u06ec\u06e8\u06dc\u06e4\u06db"

    move v1, v2

    move v3, v2

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/16 v5, 0x2e9

    xor-int/2addr v4, v5

    xor-int/lit16 v4, v4, 0x27f

    const/16 v5, 0x2fd

    const v6, 0x1dcd30e

    xor-int/2addr v4, v5

    xor-int/2addr v4, v6

    sparse-switch v4, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e8\u06db\u06d8\u06d8\u06e6\u06da\u06eb\u06df\u06e6\u06df\u06e0\u06e7\u06ec\u06d7\u06dc\u06d8\u06e4\u06e7\u06dc\u06e4\u06d6\u06d6\u06e0\u06d6\u06ec\u06e5\u06e4\u06d8\u06d8\u06d7\u06d8\u06dc\u06d8\u06e7\u06e5\u06e4\u06e1\u06e6\u06e4\u06e8\u06d9\u06e2\u06db\u06d7\u06e6\u06e1\u06e2\u06e0\u06db\u06dc\u06e7\u06e6\u06e0\u06da\u06db\u06e1\u06e5"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06d9\u06e7\u06d9\u06e6\u06da\u06e6\u06d8\u06e1\u06e7\u06e6\u06d8\u06d8\u06d8\u06d9\u06e6\u06ec\u06e1\u06d8\u06e0\u06ec\u06d7\u06e1\u06df\u06d8\u06d8\u06e6\u06e5\u06da\u06e8\u06e7\u06e1\u06d8\u06d8\u06e8\u06e5\u06d8\u06e1\u06d6\u06d6\u06d9\u06eb\u06e8"

    goto :goto_0

    :sswitch_2
    invoke-super {p0, p1}, Lcom/cyjh/common/base/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "\u06db\u06ec\u06e5\u06df\u06eb\u06d6\u06d8\u06d8\u06e7\u06e1\u06d8\u06e5\u06d9\u06d9\u06e8\u06e4\u06d6\u06d8\u06db\u06ec\u06d7\u06eb\u06e8\u06dc\u06d8\u06e2\u06d7\u06dc\u06d8\u06e1\u06ec\u06e6\u06d8\u06e2\u06ec\u06d9\u06e5\u06d8\u06eb\u06e5\u06da\u06df\u06d6\u06e5\u06e8\u06d7\u06df\u06d6\u06eb\u06e4\u06e1\u06d8\u06da\u06d6\u06e0\u06df\u06e7\u06d7\u06d7\u06d7"

    goto :goto_0

    :sswitch_3
    const v0, 0x7f0c0033

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    const-string v0, "\u06e0\u06e4\u06dc\u06d8\u06e6\u06e1\u06eb\u06d8\u06da\u06e1\u06d8\u06dc\u06e4\u06df\u06db\u06e2\u06e6\u06d8\u06da\u06eb\u06d6\u06df\u06db\u06e1\u06d8\u06e7\u06d7\u06eb\u06d8\u06e7\u06df\u06e2\u06e8\u06e0\u06dc\u06e4\u06d6\u06e7\u06eb\u06e0\u06e4\u06d6\u06d8\u06d8\u06e0\u06da\u06db\u06d9\u06eb\u06d8\u06d8\u06d6\u06eb\u06e4"

    goto :goto_0

    :sswitch_4
    invoke-direct {p0}, Lcom/cyjh/elfin/ui/activity/SweepCodeZbarActivity;->OooOO0O()V

    const-string v0, "\u06da\u06d9\u06e7\u06dc\u06e7\u06e6\u06e0\u06e0\u06d8\u06d8\u06d8\u06e0\u06e7\u06e1\u06e8\u06df\u06e5\u06eb\u06e1\u06eb\u06eb\u06d8\u06e4\u06d6\u06da\u06e6\u06d9\u06ec\u06dc\u06e6\u06d8\u06db\u06ec\u06e2\u06d8\u06e7\u06e5\u06d8\u06e7\u06df\u06e6\u06d8\u06da\u06e6\u06d8\u06d8\u06e7\u06e8\u06e6\u06d8\u06ec\u06e0\u06d7\u06e4\u06e0\u06db\u06e0\u06da\u06e8"

    goto :goto_0

    :sswitch_5
    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/activity/SweepCodeZbarActivity;->initView()V

    const-string v0, "\u06df\u06d9\u06e1\u06d8\u06e8\u06e2\u06d8\u06d8\u06d8\u06e2\u06e6\u06d8\u06e5\u06ec\u06ec\u06e4\u06d8\u06d6\u06d8\u06e1\u06d9\u06d9\u06e7\u06e8\u06e5\u06da\u06e6\u06d6\u06d7\u06e5\u06d6\u06df\u06da"

    goto :goto_0

    :sswitch_6
    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/activity/SweepCodeZbarActivity;->OooOO0()V

    const-string v0, "\u06e4\u06e0\u06e6\u06e1\u06d7\u06e0\u06db\u06e5\u06e8\u06db\u06e1\u06d9\u06eb\u06dc\u06e6\u06e4\u06d7\u06dc\u06d8\u06df\u06d7\u06e6\u06d8\u06e4\u06e4\u06e6\u06da\u06d7\u06e8\u06d9\u06e2\u06e6\u06db\u06d9\u06df\u06e0\u06d6\u06dc"

    goto :goto_0

    :sswitch_7
    const v4, -0x9b029ba

    const-string v0, "\u06e1\u06d6\u06ec\u06d9\u06db\u06df\u06d7\u06da\u06e4\u06e0\u06eb\u06da\u06e2\u06e1\u06e8\u06d8\u06e2\u06da\u06e4\u06e7\u06e7\u06e5\u06e8\u06e2\u06dc\u06df\u06da\u06d6\u06eb\u06e8\u06e1\u06e4\u06e4\u06e0\u06d8\u06e2\u06eb\u06ec\u06e5\u06d8\u06d8\u06ec\u06ec\u06dc\u06e5\u06e1\u06d8\u06dc\u06e6\u06da\u06e1\u06d7\u06e6\u06d8\u06e8\u06d9\u06d8\u06d8"

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v5

    xor-int/2addr v5, v4

    sparse-switch v5, :sswitch_data_1

    goto :goto_1

    :sswitch_8
    const-string v0, "\u06e0\u06d6\u06d8\u06d8\u06e4\u06e2\u06e4\u06df\u06d7\u06e4\u06df\u06d7\u06dc\u06d8\u06dc\u06e6\u06e4\u06e8\u06eb\u06d8\u06d8\u06df\u06e6\u06e7\u06e8\u06eb\u06e2\u06e8\u06d6\u06db\u06d9\u06d6\u06df\u06db\u06dc\u06d6\u06d8\u06da\u06e4\u06e4\u06d6\u06e0\u06e1\u06d8\u06e1\u06db\u06e8"

    goto :goto_0

    :sswitch_9
    const-string v0, "\u06e5\u06eb\u06df\u06e6\u06e7\u06e4\u06d6\u06e8\u06d6\u06d8\u06db\u06e7\u06ec\u06db\u06d9\u06df\u06eb\u06e5\u06e7\u06d8\u06e4\u06e4\u06e6\u06d8\u06e8\u06e4\u06e6\u06d8\u06e1\u06d7\u06d7\u06eb\u06db\u06e2\u06d9\u06e4\u06d6\u06d8\u06eb\u06df"

    goto :goto_1

    :sswitch_a
    const v5, 0x7ee721e9

    const-string v0, "\u06d9\u06e0\u06d9\u06e7\u06d6\u06e5\u06d8\u06ec\u06e1\u06d6\u06d8\u06d6\u06e5\u06e8\u06e7\u06d6\u06db\u06e8\u06e5\u06e8\u06d8\u06d7\u06e4\u06d8\u06e1\u06db\u06dc\u06d8\u06e1\u06eb\u06e4\u06d6\u06da\u06e7\u06e5\u06e0\u06e8\u06d8\u06e8\u06e0\u06df\u06e8\u06dc\u06e8\u06d7\u06da\u06ec"

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v6

    xor-int/2addr v6, v5

    sparse-switch v6, :sswitch_data_2

    goto :goto_2

    :sswitch_b
    const-string v0, "android.permission.CAMERA"

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u06e5\u06e6\u06df\u06e6\u06db\u06e8\u06d7\u06e7\u06e1\u06d8\u06dc\u06dc\u06d8\u06d8\u06e4\u06eb\u06d8\u06d8\u06e5\u06e8\u06e1\u06e7\u06e7\u06eb\u06d8\u06e4\u06d7\u06e4\u06e4\u06eb\u06e4\u06da\u06d8\u06e8\u06da\u06e8\u06e0\u06df\u06d8\u06d8\u06d9\u06e8\u06e6\u06d8\u06df\u06eb\u06e1\u06d9\u06e7\u06e5\u06e1\u06e0\u06e8\u06d8"

    goto :goto_2

    :cond_0
    const-string v0, "\u06ec\u06e8\u06e0\u06e0\u06e1\u06eb\u06e8\u06ec\u06ec\u06d6\u06e0\u06e8\u06d8\u06d9\u06e5\u06d6\u06df\u06db\u06d9\u06d8\u06da\u06dc\u06d8\u06e8\u06da\u06d9\u06df\u06d8\u06d8\u06e1\u06e7\u06e8\u06e5\u06d9\u06e5\u06d6\u06db\u06ec\u06d8\u06e0\u06ec\u06e0\u06db\u06d7\u06dc\u06e4\u06ec\u06d7\u06df\u06d8\u06e0\u06d6\u06d7\u06e6"

    goto :goto_2

    :sswitch_c
    const-string v0, "\u06e7\u06e6\u06e6\u06d8\u06e1\u06eb\u06eb\u06d6\u06e0\u06d9\u06e0\u06e8\u06db\u06dc\u06e7\u06e4\u06e6\u06e0\u06ec\u06e4\u06ec\u06d7\u06d9\u06e5\u06d8\u06e5\u06d9\u06e5\u06e2\u06e1\u06e1\u06d8"

    goto :goto_2

    :sswitch_d
    const-string v0, "\u06e1\u06da\u06e1\u06df\u06e7\u06e5\u06e5\u06e0\u06da\u06e8\u06d8\u06e4\u06da\u06d7\u06e8\u06db\u06df\u06eb\u06d6\u06ec\u06d9\u06e0\u06ec\u06e5\u06d8\u06d7\u06e7\u06db\u06e8\u06e5\u06d8\u06e0\u06e4\u06e1\u06d8\u06e1\u06e1\u06e4\u06e6\u06d9\u06d6\u06d8\u06ec\u06d7\u06dc\u06eb\u06d9\u06eb\u06ec\u06e8\u06e8\u06e2\u06e2\u06dc\u06d7\u06e5\u06e8\u06d8"

    goto :goto_1

    :sswitch_e
    const-string v0, "\u06e6\u06d7\u06e0\u06dc\u06df\u06d7\u06dc\u06da\u06dc\u06d8\u06e7\u06e7\u06d8\u06e0\u06da\u06d6\u06d8\u06e4\u06df\u06dc\u06df\u06e1\u06d7\u06d7\u06e5\u06d6\u06d8\u06e2\u06e0\u06ec\u06e1\u06e6\u06da\u06e2\u06df\u06d6\u06e2\u06e4\u06db\u06e1\u06db\u06da\u06db\u06d9\u06da\u06ec\u06e0\u06df\u06da\u06e2\u06d6"

    goto :goto_1

    :sswitch_f
    const-string v0, "\u06e6\u06e8\u06df\u06d8\u06d9\u06e5\u06e1\u06d8\u06d8\u06d7\u06e5\u06e4\u06e7\u06e6\u06d8\u06e4\u06db\u06e0\u06e8\u06e6\u06e6\u06da\u06e6\u06d8\u06d8\u06db\u06e4\u06e6\u06eb\u06e2\u06da\u06e0\u06e6\u06da\u06d8\u06e2\u06e8\u06e0\u06e1\u06e7\u06eb\u06e5\u06d8\u06e2\u06e4\u06e1\u06d8\u06ec\u06e1\u06db"

    goto :goto_0

    :sswitch_10
    const/4 v3, 0x1

    const-string v0, "\u06d7\u06df\u06e5\u06e0\u06d6\u06df\u06e2\u06e4\u06e7\u06eb\u06e1\u06e8\u06d8\u06d7\u06e6\u06e7\u06d8\u06ec\u06e8\u06d9\u06db\u06d7\u06e8\u06d8\u06e1\u06ec\u06e2\u06da\u06d8\u06dc\u06d9\u06e1\u06ec\u06d9\u06e2\u06d8\u06d8\u06d6\u06d6\u06df\u06e2\u06ec\u06e4\u06da\u06e8\u06e6\u06d8\u06e7\u06eb\u06e8\u06db\u06d7\u06df"

    goto :goto_0

    :sswitch_11
    const-string v0, "\u06e7\u06e0\u06e4\u06e8\u06dc\u06eb\u06ec\u06d9\u06dc\u06d8\u06e6\u06d6\u06e0\u06d9\u06e7\u06da\u06e4\u06e7\u06d7\u06dc\u06e0\u06e5\u06d8\u06ec\u06e6\u06e5\u06e8\u06dc\u06e7\u06d8\u06df\u06d9\u06d7"

    move v1, v3

    goto :goto_0

    :sswitch_12
    const-string v0, "\u06df\u06d8\u06e1\u06d8\u06d8\u06e4\u06e6\u06e2\u06dc\u06d8\u06d8\u06e1\u06d8\u06ec\u06d8\u06e8\u06eb\u06d9\u06e7\u06e1\u06d8\u06e8\u06d9\u06e6\u06e0\u06df\u06e1\u06e1\u06e8\u06e0\u06e8\u06dc\u06d8\u06e0\u06df\u06df\u06e2\u06e1\u06e6\u06d8"

    goto/16 :goto_0

    :sswitch_13
    const-string v0, "\u06ec\u06e1\u06d6\u06da\u06d6\u06d6\u06dc\u06e4\u06e5\u06da\u06eb\u06e4\u06db\u06d6\u06d8\u06db\u06dc\u06e7\u06d8\u06dc\u06d8\u06d7\u06ec\u06d9\u06d8\u06e4\u06da\u06e1\u06eb\u06da"

    move v1, v2

    goto/16 :goto_0

    :sswitch_14
    const v4, 0xe88197b

    const-string v0, "\u06d9\u06e5\u06df\u06da\u06d6\u06eb\u06e6\u06eb\u06e0\u06e6\u06e2\u06e1\u06d8\u06e7\u06e1\u06dc\u06da\u06da\u06e1\u06df\u06eb\u06d7\u06e4\u06e8\u06df\u06e5\u06d6\u06e8\u06d6\u06e0\u06d8\u06d8\u06d9\u06ec\u06d8\u06d8\u06e0\u06dc\u06d7\u06d6\u06e0\u06df\u06e5\u06e0\u06e1\u06da\u06d7\u06d8\u06d8\u06d7\u06db\u06e4\u06eb\u06d8\u06d6\u06d8\u06eb\u06e4\u06e8"

    :goto_3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v5

    xor-int/2addr v5, v4

    sparse-switch v5, :sswitch_data_3

    goto :goto_3

    :sswitch_15
    const-string v0, "\u06e4\u06d9\u06e5\u06d8\u06e4\u06e0\u06e1\u06d8\u06dc\u06d9\u06dc\u06d8\u06d9\u06e7\u06e4\u06d8\u06df\u06d9\u06eb\u06e1\u06e5\u06ec\u06e8\u06d6\u06d8\u06d9\u06d8\u06e5\u06e5\u06e6\u06e7\u06df\u06e7\u06df"

    goto/16 :goto_0

    :sswitch_16
    const-string v0, "\u06d8\u06e6\u06e8\u06db\u06da\u06e7\u06dc\u06e1\u06db\u06d9\u06e0\u06e0\u06d6\u06d9\u06e1\u06d7\u06e2\u06d8\u06d8\u06ec\u06e2\u06dc\u06e2\u06e0\u06e5\u06da\u06e6\u06d8\u06e0\u06db\u06d7"

    goto :goto_3

    :sswitch_17
    const v5, 0x2bb21c25

    const-string v0, "\u06e1\u06db\u06e2\u06d8\u06e7\u06e0\u06e7\u06e4\u06d7\u06e7\u06e4\u06e7\u06e5\u06e4\u06d8\u06e6\u06d7\u06e5\u06d8\u06d6\u06e1\u06db\u06d7\u06db\u06df\u06da\u06eb\u06d8\u06d8\u06e1\u06eb\u06dc\u06ec\u06e2\u06da\u06eb\u06dc\u06ec\u06e2\u06d9\u06d8\u06d8\u06e5\u06e6\u06e8\u06e7\u06d9\u06dc\u06d8\u06e6\u06db\u06d8\u06d8\u06e8\u06d9\u06e8\u06e5\u06e2\u06eb"

    :goto_4
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v6

    xor-int/2addr v6, v5

    sparse-switch v6, :sswitch_data_4

    goto :goto_4

    :sswitch_18
    if-nez v1, :cond_1

    const-string v0, "\u06d6\u06d6\u06ec\u06d6\u06d7\u06e1\u06eb\u06e5\u06dc\u06e0\u06d8\u06d7\u06e0\u06d8\u06dc\u06d8\u06e7\u06dc\u06e2\u06da\u06da\u06d8\u06d8\u06dc\u06d8\u06e1\u06e5\u06e0\u06eb\u06df\u06e4"

    goto :goto_4

    :cond_1
    const-string v0, "\u06e4\u06e1\u06d7\u06e5\u06e5\u06e6\u06d8\u06da\u06e4\u06db\u06e2\u06db\u06d6\u06db\u06e6\u06dc\u06e4\u06e0\u06eb\u06e2\u06dc\u06eb\u06e5\u06d7\u06d6\u06db\u06db\u06d7\u06df\u06e5\u06e1\u06d8\u06e5\u06da\u06dc\u06e6\u06e1\u06e1\u06d8\u06db\u06e4\u06e6\u06ec\u06e0\u06dc\u06e4\u06e0\u06db\u06da\u06e0\u06dc\u06d8"

    goto :goto_4

    :sswitch_19
    const-string v0, "\u06e6\u06db\u06d7\u06db\u06ec\u06ec\u06e7\u06df\u06d7\u06dc\u06ec\u06e6\u06d8\u06e1\u06e4\u06dc\u06e4\u06e4\u06db\u06db\u06e7\u06df\u06e0\u06ec\u06eb\u06e5\u06db\u06db\u06e5\u06ec\u06e0\u06e0\u06d6\u06e6\u06e6\u06e4\u06e8\u06dc\u06e0\u06d8\u06d6\u06e8\u06e1\u06df\u06e1\u06d8\u06df\u06e4\u06df\u06db\u06df\u06e7\u06d8\u06eb\u06d8"

    goto :goto_4

    :sswitch_1a
    const-string v0, "\u06e2\u06df\u06e8\u06d7\u06e5\u06e6\u06d8\u06e5\u06d7\u06e1\u06d8\u06d9\u06eb\u06e7\u06d6\u06d8\u06d8\u06e5\u06e0\u06e8\u06d8\u06d9\u06df\u06db\u06d8\u06d9\u06d6\u06d8\u06db\u06d9\u06e6\u06e7\u06d6\u06e8\u06e5\u06e2\u06dc\u06d8\u06e5\u06e4\u06db\u06d7\u06e1\u06d6\u06d8\u06eb\u06e0\u06e8\u06d9\u06e6\u06e7\u06d8\u06d8\u06db\u06dc"

    goto :goto_3

    :sswitch_1b
    const-string v0, "\u06e1\u06dc\u06e6\u06d8\u06e6\u06e1\u06e6\u06d7\u06db\u06e5\u06dc\u06df\u06e5\u06da\u06d8\u06e5\u06e4\u06dc\u06da\u06ec\u06dc\u06e8\u06e6\u06e1\u06d8\u06e2\u06e6\u06d7\u06e5\u06e1\u06d6\u06d8\u06eb\u06e7\u06d9\u06dc\u06eb\u06e2\u06e5\u06ec\u06e1\u06d8\u06e4\u06e4\u06d9\u06d6\u06df\u06e1\u06e0\u06d6\u06e2\u06d8\u06d6\u06d7\u06e0\u06dc\u06e5\u06d8"

    goto :goto_3

    :sswitch_1c
    invoke-direct {p0}, Lcom/cyjh/elfin/ui/activity/SweepCodeZbarActivity;->OooOOOO()V

    const-string v0, "\u06dc\u06e1\u06da\u06e8\u06d8\u06e7\u06d8\u06e8\u06db\u06e6\u06d8\u06e1\u06e0\u06e2\u06db\u06ec\u06e4\u06eb\u06dc\u06d8\u06e2\u06d9\u06da\u06d8\u06ec\u06dc\u06ec\u06eb\u06e6\u06d8\u06dc\u06da\u06e2\u06db\u06e2\u06d9\u06ec\u06e6\u06d6\u06db\u06e8\u06e5\u06d8\u06e5\u06d6\u06df"

    goto/16 :goto_0

    :sswitch_1d
    invoke-direct {p0}, Lcom/cyjh/elfin/ui/activity/SweepCodeZbarActivity;->OooO()V

    const-string v0, "\u06e0\u06e7\u06db\u06d9\u06d6\u06e0\u06eb\u06e7\u06d8\u06d6\u06ec\u06e2\u06e8\u06d7\u06e4\u06ec\u06df\u06e2\u06eb\u06d6\u06e2\u06e4\u06e7\u06db\u06d9\u06e0\u06e8\u06d8\u06dc\u06e1"

    goto/16 :goto_0

    :sswitch_1e
    const-string v0, "\u06ec\u06e1\u06d6\u06da\u06d6\u06d6\u06dc\u06e4\u06e5\u06da\u06eb\u06e4\u06db\u06d6\u06d8\u06db\u06dc\u06e7\u06d8\u06dc\u06d8\u06d7\u06ec\u06d9\u06d8\u06e4\u06da\u06e1\u06eb\u06da"

    goto/16 :goto_0

    :sswitch_1f
    const-string v0, "\u06dc\u06e4\u06db\u06e7\u06e2\u06e4\u06e4\u06e2\u06dc\u06db\u06db\u06d6\u06d8\u06ec\u06d7\u06e1\u06d8\u06dc\u06da\u06e0\u06e4\u06e4\u06da\u06e2\u06ec\u06e6\u06d6\u06eb\u06dc\u06d8\u06eb\u06e0\u06e6"

    goto/16 :goto_0

    :sswitch_20
    const-string v0, "\u06e0\u06e7\u06db\u06d9\u06d6\u06e0\u06eb\u06e7\u06d8\u06d6\u06ec\u06e2\u06e8\u06d7\u06e4\u06ec\u06df\u06e2\u06eb\u06d6\u06e2\u06e4\u06e7\u06db\u06d9\u06e0\u06e8\u06d8\u06dc\u06e1"

    goto/16 :goto_0

    :sswitch_21
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x693e3ac8 -> :sswitch_1
        -0x693970b3 -> :sswitch_1d
        -0x6277dc6e -> :sswitch_12
        -0x519de2f1 -> :sswitch_13
        -0x485288cb -> :sswitch_6
        -0x44874d8d -> :sswitch_21
        -0x40635298 -> :sswitch_2
        -0x21f2b871 -> :sswitch_14
        -0x13ebf4e8 -> :sswitch_10
        0x124c8a73 -> :sswitch_11
        0x19ed6eff -> :sswitch_1c
        0x1aa86a06 -> :sswitch_0
        0x2fbf0682 -> :sswitch_1e
        0x4a13bcd5 -> :sswitch_4
        0x4cccf65a -> :sswitch_3
        0x4e656ee1 -> :sswitch_7
        0x597a0b17 -> :sswitch_20
        0x710f3a4f -> :sswitch_5
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x21bb735a -> :sswitch_a
        -0x3fb976 -> :sswitch_e
        0xc8b1b39 -> :sswitch_f
        0x48a0733a -> :sswitch_8
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        0xc2f39fc -> :sswitch_c
        0x312ab6bb -> :sswitch_b
        0x3b563675 -> :sswitch_9
        0x75ba71f4 -> :sswitch_d
    .end sparse-switch

    :sswitch_data_3
    .sparse-switch
        -0x6865b8c6 -> :sswitch_15
        0xa193272 -> :sswitch_1f
        0x4104db8d -> :sswitch_17
        0x415b7f35 -> :sswitch_1b
    .end sparse-switch

    :sswitch_data_4
    .sparse-switch
        -0x5d2c54a0 -> :sswitch_1a
        -0x41839b5c -> :sswitch_18
        0x6973ee1d -> :sswitch_19
        0x6e1808ad -> :sswitch_16
    .end sparse-switch
.end method

.method public onDestroy()V
    .locals 4

    const-string v0, "\u06ec\u06eb\u06da\u06eb\u06d8\u06d8\u06d8\u06e7\u06d9\u06e6\u06e4\u06db\u06db\u06e4\u06df\u06dc\u06dc\u06e4\u06e7\u06dc\u06e1\u06e6\u06e2\u06e7\u06e8\u06df\u06e8\u06e0\u06d8\u06e0"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x9

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x333

    const/16 v2, 0x314

    const v3, -0x746bd377

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e4\u06dc\u06d6\u06d8\u06d7\u06e0\u06e8\u06e0\u06e8\u06d8\u06e5\u06e4\u06ec\u06e1\u06d7\u06eb\u06ec\u06dc\u06e7\u06d8\u06db\u06d6\u06d7\u06e0\u06d6\u06e0\u06e7\u06d6\u06dc\u06d8\u06e2\u06d7\u06d8\u06e1\u06dc\u06e8\u06d8\u06e0\u06e2\u06e0\u06e5\u06e0\u06e7\u06db\u06e2\u06e1"

    goto :goto_0

    :sswitch_1
    invoke-super {p0}, Lcom/cyjh/common/base/activity/BaseActivity;->onDestroy()V

    const-string v0, "\u06d7\u06ec\u06da\u06e4\u06db\u06df\u06e6\u06e2\u06e7\u06df\u06e4\u06da\u06e1\u06e7\u06e1\u06d8\u06d6\u06e1\u06db\u06d7\u06e7\u06e7\u06d7\u06da\u06dc\u06d8\u06d8\u06da\u06e7\u06df\u06ec\u06e1\u06d8\u06e5\u06da\u06e6\u06d8\u06d7\u06d8\u06e1\u06d8\u06d6\u06d6\u06e0\u06e5\u06d8\u06dc\u06e2\u06e8\u06e4\u06dc\u06e2\u06e8\u06e1\u06e0\u06e6\u06e2\u06df\u06d6"

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeZbarActivity;->o0OoOo0:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const-string v0, "\u06e6\u06ec\u06ec\u06e1\u06e2\u06e1\u06e5\u06e5\u06d8\u06d8\u06e4\u06dc\u06d8\u06db\u06d9\u06e8\u06e8\u06e7\u06da\u06e5\u06e6\u06da\u06eb\u06e4\u06dc\u06df\u06db\u06d8\u06d8\u06d7\u06d9\u06e5\u06eb\u06e5\u06da\u06e2\u06e5\u06d9\u06e6\u06df\u06e8\u06e0\u06e0\u06d6\u06e1\u06ec\u06df\u06d6\u06e4\u06e2\u06df\u06ec\u06e7\u06ec\u06d6\u06d8"

    goto :goto_0

    :sswitch_3
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x55782690 -> :sswitch_3
        -0x258e8974 -> :sswitch_1
        0x4b389a0 -> :sswitch_0
        0x111212b0 -> :sswitch_2
    .end sparse-switch
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 6
    .param p2    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v5, 0x0

    const/4 v1, 0x0

    const-string v0, "\u06db\u06da\u06e8\u06e4\u06dc\u06e8\u06e0\u06d7\u06e6\u06d8\u06e4\u06eb\u06e1\u06eb\u06ec\u06e1\u06d8\u06e1\u06df\u06db\u06d9\u06e0\u06d9\u06e4\u06da\u06dc\u06d8\u06df\u06eb\u06eb\u06d9\u06df\u06e1\u06d6\u06e0\u06d7\u06e4\u06d8\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v3, 0x202

    xor-int/2addr v2, v3

    xor-int/lit16 v2, v2, 0x1d2

    const/16 v3, 0x3d8

    const v4, -0x773bcf42

    xor-int/2addr v2, v3

    xor-int/2addr v2, v4

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d9\u06e5\u06e5\u06d6\u06e8\u06e1\u06d6\u06e5\u06dc\u06d8\u06db\u06e4\u06d7\u06db\u06d6\u06e1\u06d6\u06e5\u06d8\u06d8\u06e1\u06dc\u06d8\u06d9\u06e5\u06da\u06e2\u06d9\u06d6\u06d8\u06e5\u06eb\u06e2"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06da\u06eb\u06e1\u06d8\u06db\u06e7\u06e4\u06eb\u06e8\u06d7\u06d7\u06e6\u06e1\u06d8\u06ec\u06da\u06df\u06e5\u06da\u06e6\u06da\u06e8\u06d8\u06da\u06d8\u06df\u06ec\u06e8\u06e7\u06d8\u06e6\u06ec\u06e6\u06e8\u06dc\u06dc\u06d8\u06d9\u06e2\u06d8\u06d8\u06db\u06e4\u06d6\u06e8\u06e2\u06e5\u06d8\u06d9\u06d8\u06ec\u06e2\u06e5\u06e4"

    goto :goto_0

    :sswitch_2
    const-string v0, "\u06e2\u06ec\u06e8\u06d7\u06d9\u06e4\u06d7\u06d9\u06da\u06e0\u06dc\u06e6\u06d8\u06d6\u06eb\u06ec\u06e4\u06e8\u06df\u06dc\u06e2\u06e6\u06d8\u06e4\u06df\u06d6\u06eb\u06d6\u06e7\u06e2\u06d6"

    goto :goto_0

    :sswitch_3
    const-string v0, "\u06eb\u06e7\u06d7\u06d9\u06e4\u06e1\u06df\u06e1\u06dc\u06da\u06df\u06e4\u06e0\u06e5\u06dc\u06e5\u06e0\u06ec\u06dc\u06e1\u06e6\u06d8\u06da\u06d9\u06e5\u06e4\u06db\u06d6\u06e2\u06eb\u06e6\u06d8"

    goto :goto_0

    :sswitch_4
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const-string v0, "\u06e5\u06da\u06e7\u06e0\u06ec\u06d9\u06eb\u06e6\u06e5\u06df\u06d8\u06d8\u06d8\u06e4\u06e0\u06dc\u06d8\u06e4\u06eb\u06df\u06d7\u06e6\u06e1\u06e4\u06d7\u06e8\u06d8\u06e2\u06e7\u06eb\u06d7\u06ec\u06ec"

    goto :goto_0

    :sswitch_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u06d6\u06db\u06e2\u06da\u06ec\u06e0\u06db\u06d8\u06d6\u06e4\u06d8\u06e4\u06d8\u06e6\u06d8\u06db\u06e5\u06d8\u06e2\u06e1\u06e7\u06d8\u06d6\u06d8\u06e5\u06d9\u06e1\u06d6\u06e0\u06d7\u06e8\u06d8\u06dc\u06ec\u06eb\u06db\u06eb\u06e0\u06e5\u06dc\u06e0\u06e2\u06df\u06d8\u06d8\u06d7\u06d7\u06ec\u06db"

    goto :goto_0

    :sswitch_6
    const-string v0, "onRequestPermissionsResult --> permissions[0]="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u06e4\u06e8\u06e6\u06dc\u06d9\u06dc\u06d8\u06dc\u06ec\u06d8\u06d8\u06e4\u06e4\u06dc\u06e1\u06dc\u06da\u06d9\u06e1\u06d7\u06e8\u06e6\u06e0\u06db\u06d8\u06d9\u06d7\u06d8\u06e1\u06d8\u06ec\u06d6\u06eb\u06d6\u06df\u06eb\u06da\u06e2\u06e2\u06e5\u06e1\u06d8\u06d8\u06e8\u06e2"

    goto :goto_0

    :sswitch_7
    aget-object v0, p2, v5

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u06d9\u06dc\u06d6\u06d8\u06e7\u06df\u06e5\u06d8\u06d9\u06e7\u06e2\u06df\u06eb\u06e5\u06e1\u06e7\u06d8\u06e6\u06e6\u06db\u06dc\u06da\u06d7\u06d8\u06e5\u06d8\u06d8\u06e6\u06e8\u06e5\u06d8\u06da\u06df\u06eb"

    goto :goto_0

    :sswitch_8
    const-string v0, ",grantResults[0]="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u06d8\u06df\u06db\u06e7\u06e0\u06d6\u06d8\u06e8\u06df\u06e5\u06d7\u06d7\u06eb\u06e5\u06ec\u06d9\u06e1\u06d8\u06d6\u06d8\u06db\u06d7\u06ec\u06e4\u06d8\u06e1\u06d8\u06e0\u06e5\u06d8\u06df\u06d7\u06da\u06dc\u06da\u06e5\u06e1\u06e2\u06e1\u06e5\u06dc\u06e5\u06e7\u06e4\u06dc\u06e7\u06e4\u06e8\u06d8\u06e1\u06df\u06e1\u06d8"

    goto :goto_0

    :sswitch_9
    aget v0, p3, v5

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\u06e8\u06d6\u06e1\u06d8\u06e8\u06e8\u06e4\u06d7\u06e0\u06d8\u06d8\u06d8\u06e7\u06e0\u06e1\u06d8\u06db\u06d6\u06e5\u06da\u06dc\u06d8\u06e6\u06d8\u06e5\u06e1\u06e7\u06d8\u06e2\u06d9\u06dc\u06d8\u06d7\u06e4\u06e6\u06e6\u06d8\u06e6\u06d8\u06e6\u06e0\u06eb"

    goto :goto_0

    :sswitch_a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const-string v0, "\u06e6\u06db\u06e6\u06db\u06e4\u06e7\u06eb\u06e1\u06d6\u06db\u06da\u06e1\u06d8\u06e6\u06db\u06eb\u06e0\u06e8\u06db\u06d7\u06d8\u06d6\u06d8\u06e0\u06e1\u06ec\u06e8\u06ec\u06df\u06db\u06e8\u06dc\u06dc\u06e2\u06e2\u06d7\u06e5\u06e6\u06e8\u06d6\u06df\u06dc\u06e1\u06e5\u06e7\u06da\u06e7\u06e4\u06e7\u06e0\u06e0\u06e2\u06e8\u06d8\u06e7\u06eb\u06e8"

    goto :goto_0

    :sswitch_b
    const v2, 0x31c5682c

    const-string v0, "\u06d6\u06dc\u06e7\u06d8\u06ec\u06da\u06d8\u06d8\u06e4\u06e0\u06e6\u06d8\u06e7\u06e4\u06e7\u06d9\u06d8\u06e8\u06ec\u06da\u06e8\u06da\u06e0\u06e1\u06e0\u06e8\u06d6\u06d8\u06e7\u06da\u06d8\u06d8\u06e8\u06da\u06e4\u06da\u06d8\u06e8\u06d8\u06e0\u06e5\u06e6\u06dc\u06e7\u06e6\u06e1\u06d8\u06da"

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v2

    sparse-switch v3, :sswitch_data_1

    goto :goto_1

    :sswitch_c
    const-string v0, "\u06d6\u06d8\u06ec\u06db\u06e2\u06db\u06e1\u06e8\u06e1\u06e5\u06eb\u06eb\u06d9\u06d8\u06df\u06eb\u06d8\u06d8\u06e2\u06df\u06e4\u06e0\u06e8\u06dc\u06d8\u06eb\u06eb\u06db\u06e4\u06ec\u06da\u06e6\u06e7\u06eb\u06d6\u06d7\u06e1\u06d8\u06d9\u06e6\u06e7\u06e5\u06e4\u06e6"

    goto :goto_0

    :sswitch_d
    const-string v0, "\u06e4\u06d8\u06e7\u06d8\u06df\u06e1\u06d6\u06d8\u06e4\u06e8\u06d7\u06d7\u06dc\u06e8\u06d8\u06d6\u06e4\u06dc\u06d8\u06d8\u06e4\u06e8\u06d8\u06db\u06e8\u06e1\u06db\u06db\u06e8\u06d8\u06d7\u06db\u06d8\u06d8\u06d8\u06e0\u06e8\u06d8\u06e5\u06dc\u06e4\u06db\u06d8\u06df\u06d6\u06d6\u06e7\u06e1\u06eb\u06e8\u06eb\u06d9\u06e5\u06d8\u06d9\u06d7\u06e1\u06d8"

    goto :goto_1

    :sswitch_e
    const v3, 0x24fd1b6c

    const-string v0, "\u06d9\u06e2\u06e4\u06e2\u06da\u06e8\u06e1\u06e8\u06da\u06db\u06db\u06d9\u06d7\u06e0\u06d9\u06e7\u06df\u06e8\u06d9\u06e8\u06d8\u06e8\u06e4\u06df\u06e0\u06ec\u06d7\u06e5\u06db\u06e1\u06d8"

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    xor-int/2addr v4, v3

    sparse-switch v4, :sswitch_data_2

    goto :goto_2

    :sswitch_f
    const-string v0, "\u06e2\u06ec\u06e8\u06e8\u06e6\u06d8\u06d8\u06e8\u06e8\u06e6\u06df\u06dc\u06d7\u06e6\u06e1\u06da\u06e4\u06dc\u06d6\u06d8\u06d8\u06da\u06e0\u06df\u06d7\u06e0\u06e7\u06e1\u06e0\u06df\u06d7\u06e5\u06e4\u06df\u06d7\u06db\u06e5\u06d9"

    goto :goto_1

    :cond_0
    const-string v0, "\u06dc\u06e5\u06e0\u06d9\u06db\u06e4\u06e8\u06d8\u06e1\u06db\u06e8\u06e0\u06d8\u06dc\u06d8\u06e2\u06e5\u06d8\u06e7\u06e6\u06d9\u06e6\u06da\u06db\u06eb\u06eb\u06d8\u06dc\u06e5\u06d6\u06e7\u06e7\u06d8\u06d8\u06d9\u06dc\u06e6\u06d8"

    goto :goto_2

    :sswitch_10
    const/16 v0, 0x63

    if-eq p1, v0, :cond_0

    const-string v0, "\u06e0\u06e1\u06e6\u06d8\u06e2\u06dc\u06e5\u06df\u06e5\u06e8\u06e6\u06e2\u06d7\u06d7\u06d7\u06e6\u06d8\u06e2\u06d9\u06e8\u06dc\u06da\u06e4\u06d9\u06df\u06d6\u06d8\u06e4\u06e0\u06dc\u06d8\u06eb\u06e0\u06e4\u06e7\u06e8\u06e6\u06d8\u06d7\u06e2\u06e2\u06e4\u06da\u06dc\u06d9\u06e5\u06eb\u06da\u06dc\u06d9\u06d8\u06e0"

    goto :goto_2

    :sswitch_11
    const-string v0, "\u06ec\u06d7\u06e1\u06e5\u06e0\u06d6\u06d8\u06e4\u06d9\u06dc\u06d8\u06dc\u06e8\u06e1\u06d8\u06e2\u06df\u06e2\u06e8\u06e8\u06e2\u06dc\u06dc\u06e1\u06d8\u06e5\u06e5\u06d6\u06d9\u06df\u06d8\u06d8\u06e0\u06e5\u06ec"

    goto :goto_2

    :sswitch_12
    const-string v0, "\u06d8\u06e5\u06e8\u06e2\u06da\u06da\u06d6\u06eb\u06e1\u06d8\u06e1\u06e6\u06e4\u06e6\u06da\u06d9\u06e6\u06e7\u06db\u06dc\u06e5\u06d6\u06e4\u06ec\u06e0\u06e0\u06e5\u06e1\u06eb\u06df\u06df\u06e5\u06d6\u06db\u06e6\u06e1\u06d8\u06d8\u06d6\u06e6\u06d7\u06da\u06e1\u06e7\u06d8"

    goto :goto_1

    :sswitch_13
    const v2, -0xfa57fb7

    const-string v0, "\u06dc\u06e1\u06d7\u06e1\u06e0\u06d8\u06d8\u06e8\u06dc\u06e0\u06e6\u06dc\u06d8\u06d8\u06e4\u06d9\u06df\u06db\u06e5\u06df\u06d8\u06df\u06d8\u06d8\u06dc\u06eb\u06e0\u06e2\u06dc\u06e1\u06d8\u06db\u06e2\u06e1\u06e0\u06ec\u06e1\u06d8\u06ec\u06e7\u06ec"

    :goto_3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v2

    sparse-switch v3, :sswitch_data_3

    goto :goto_3

    :sswitch_14
    const-string v0, "\u06dc\u06d7\u06d8\u06d6\u06d8\u06e4\u06df\u06ec\u06d8\u06d8\u06e7\u06e1\u06e5\u06d6\u06e4\u06d6\u06d8\u06e8\u06dc\u06ec\u06d7\u06d9\u06ec\u06d8\u06e1\u06e6\u06d8\u06e0\u06db\u06d6\u06e7\u06da\u06da\u06e8\u06e5\u06d8\u06ec\u06d8\u06d8\u06e6\u06e5\u06e8\u06df\u06e0\u06d6\u06d8\u06ec\u06d8\u06e5\u06d8\u06da\u06e1\u06dc\u06e2\u06e2\u06d8\u06d8\u06e8"

    goto/16 :goto_0

    :sswitch_15
    const-string v0, "\u06d9\u06e6\u06d8\u06d8\u06e2\u06db\u06e7\u06e0\u06e8\u06d6\u06df\u06e5\u06e2\u06e6\u06df\u06e8\u06d8\u06e7\u06e0\u06da\u06ec\u06d8\u06dc\u06d8\u06da\u06e0\u06e6\u06e4\u06df\u06e6\u06e7\u06d7\u06e1\u06d8\u06db\u06e2\u06e7\u06e1\u06e2\u06e7\u06e2\u06e8\u06ec\u06dc\u06d9\u06da"

    goto :goto_3

    :sswitch_16
    const v3, -0x68f1127d

    const-string v0, "\u06e7\u06dc\u06e8\u06d8\u06d9\u06e7\u06e7\u06d8\u06dc\u06e1\u06db\u06e5\u06d6\u06d8\u06db\u06e6\u06da\u06e1\u06e4\u06df\u06db\u06db\u06da\u06d8\u06e1\u06eb\u06d6\u06d9\u06d8\u06e7\u06ec\u06e4\u06d9\u06e2\u06d8\u06da\u06ec\u06db\u06e6\u06d9\u06dc\u06e5\u06e5\u06dc\u06e6\u06e4\u06d9\u06e6"

    :goto_4
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    xor-int/2addr v4, v3

    sparse-switch v4, :sswitch_data_4

    goto :goto_4

    :sswitch_17
    const-string v0, "\u06e2\u06e7\u06e1\u06d8\u06e5\u06e6\u06ec\u06e6\u06e2\u06e5\u06ec\u06df\u06db\u06eb\u06e8\u06da\u06e1\u06e1\u06e4\u06e2\u06e2\u06e6\u06d7\u06dc\u06df\u06e1\u06e6\u06dc\u06db\u06dc\u06d6\u06d8"

    goto :goto_3

    :cond_1
    const-string v0, "\u06eb\u06d8\u06d8\u06d8\u06e4\u06e6\u06dc\u06d8\u06e6\u06d9\u06d9\u06db\u06e5\u06e8\u06dc\u06d6\u06d8\u06da\u06ec\u06dc\u06d8\u06e6\u06e2\u06e4\u06eb\u06e2\u06e6\u06e8\u06df\u06e1\u06d8\u06db\u06e1\u06e5\u06d8\u06e6\u06db\u06e2\u06e7\u06e8\u06d9"

    goto :goto_4

    :sswitch_18
    array-length v0, p3

    if-lez v0, :cond_1

    const-string v0, "\u06e0\u06d9\u06ec\u06df\u06da\u06eb\u06e7\u06e4\u06e5\u06e2\u06e8\u06e2\u06e8\u06e8\u06e7\u06e8\u06e1\u06d8\u06e6\u06df\u06d7\u06e6\u06e2\u06e2\u06d8\u06dc\u06e0\u06d6\u06d7\u06df"

    goto :goto_4

    :sswitch_19
    const-string v0, "\u06ec\u06da\u06e8\u06d8\u06ec\u06e5\u06e5\u06d8\u06e7\u06db\u06e7\u06e5\u06e5\u06d8\u06e7\u06ec\u06e7\u06e7\u06d6\u06e4\u06e8\u06d8\u06e0\u06d6\u06df\u06dc\u06d7\u06e4\u06e5\u06d8\u06e5\u06e4\u06d6\u06d8\u06eb\u06d7\u06dc\u06db\u06e7\u06e1\u06d8"

    goto :goto_4

    :sswitch_1a
    const-string v0, "\u06da\u06e5\u06dc\u06df\u06e8\u06d8\u06e6\u06e7\u06e1\u06e0\u06e4\u06df\u06d7\u06e2\u06e8\u06d8\u06eb\u06e1\u06e1\u06eb\u06da\u06e1\u06d8\u06e4\u06d6\u06d9\u06d9\u06e5\u06eb\u06d9\u06d6\u06d8\u06eb\u06da\u06dc\u06e8\u06e2\u06df"

    goto :goto_3

    :sswitch_1b
    const v2, -0x7ff13f06

    const-string v0, "\u06da\u06e4\u06e8\u06d7\u06d7\u06e6\u06d8\u06e5\u06eb\u06e4\u06e2\u06e0\u06e8\u06d8\u06ec\u06ec\u06e6\u06d8\u06e4\u06e7\u06e2\u06df\u06d9\u06d9\u06e6\u06d7\u06df\u06da\u06db\u06d8\u06d8\u06e2\u06e6\u06d6\u06e5\u06e8\u06d7\u06da\u06e8\u06d6\u06d8\u06ec\u06e8\u06e1\u06d8\u06e4\u06e2\u06e6\u06ec\u06d9\u06e7\u06e2\u06e2"

    :goto_5
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v2

    sparse-switch v3, :sswitch_data_5

    goto :goto_5

    :sswitch_1c
    const-string v0, "\u06e6\u06da\u06e7\u06e4\u06e5\u06d9\u06d7\u06e5\u06e0\u06e7\u06eb\u06db\u06e7\u06d8\u06e1\u06e2\u06da\u06e8\u06d8\u06e0\u06d8\u06e2\u06eb\u06da\u06e5\u06dc\u06d7\u06e4\u06e5\u06db\u06d8\u06d7\u06e1\u06d8\u06d8\u06d8\u06e5\u06e7\u06d8\u06e8\u06dc\u06d6\u06d8\u06dc\u06ec\u06e4\u06e5\u06e6\u06e1\u06df\u06e0\u06e0\u06d7\u06e4\u06d6\u06d8\u06d6\u06df\u06e1\u06d8"

    goto/16 :goto_0

    :sswitch_1d
    const-string v0, "\u06d7\u06e6\u06da\u06e2\u06e6\u06e7\u06d8\u06ec\u06e7\u06d8\u06e6\u06e0\u06e1\u06eb\u06df\u06d7\u06d7\u06db\u06d6\u06e4\u06df\u06dc\u06d8\u06e0\u06da\u06dc\u06e5\u06dc\u06e6\u06e1\u06da\u06dc\u06d8\u06e0\u06e2\u06df\u06e2\u06e8\u06e1\u06e8\u06df\u06e0\u06d7\u06eb\u06d8\u06e8\u06e0\u06d6\u06da\u06e1\u06e6\u06d8\u06e5\u06db\u06e7\u06e8\u06db\u06db"

    goto :goto_5

    :sswitch_1e
    const v3, -0x4f9ec510

    const-string v0, "\u06e0\u06d6\u06d6\u06d8\u06e6\u06e7\u06e6\u06d8\u06df\u06d6\u06dc\u06df\u06ec\u06d6\u06df\u06d8\u06d9\u06e8\u06e1\u06e1\u06d8\u06e5\u06e7\u06d6\u06d8\u06e0\u06e5\u06e8\u06e7\u06db\u06e8\u06d8\u06db\u06e8\u06e7\u06d9\u06df\u06da\u06e1\u06d6\u06d8\u06df\u06d8\u06eb\u06e1\u06e4\u06e2\u06e2\u06df\u06df\u06d6\u06e4\u06d8\u06e7\u06e6\u06d7\u06e5\u06ec\u06ec"

    :goto_6
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    xor-int/2addr v4, v3

    sparse-switch v4, :sswitch_data_6

    goto :goto_6

    :sswitch_1f
    const-string v0, "\u06d8\u06e2\u06dc\u06d8\u06ec\u06e2\u06d9\u06ec\u06df\u06e0\u06eb\u06e7\u06d9\u06e4\u06d9\u06e2\u06e2\u06d9\u06dc\u06d8\u06e4\u06e2\u06e6\u06d8\u06e1\u06e7\u06e6\u06d8\u06e8\u06db\u06e0\u06e1\u06e7\u06e8\u06d8\u06df\u06e6\u06d8\u06e5\u06eb\u06dc\u06d8\u06d6\u06e8\u06e8\u06d8\u06e0\u06ec\u06d7\u06d9\u06e1\u06d6\u06d8\u06df\u06e6\u06e7\u06e0\u06eb\u06db\u06e2\u06d9"

    goto :goto_6

    :cond_2
    const-string v0, "\u06df\u06df\u06e5\u06d8\u06e7\u06d8\u06d8\u06e1\u06da\u06e5\u06eb\u06db\u06e0\u06e8\u06d7\u06dc\u06e8\u06e8\u06d8\u06df\u06e1\u06df\u06db\u06e7\u06dc\u06e6\u06e1\u06d7\u06df\u06eb\u06eb\u06e8\u06e4\u06d6"

    goto :goto_6

    :sswitch_20
    aget v0, p3, v5

    if-nez v0, :cond_2

    const-string v0, "\u06ec\u06e2\u06e8\u06d8\u06ec\u06e8\u06e1\u06e7\u06dc\u06e7\u06d8\u06d8\u06df\u06ec\u06e6\u06d6\u06e7\u06d8\u06e6\u06db\u06e1\u06d6\u06e6\u06db\u06e2\u06e1\u06ec\u06e0\u06e4\u06da\u06e4\u06dc\u06e4\u06e0\u06e6\u06e6\u06d8\u06e2\u06e4\u06d8\u06d8\u06e2\u06d7\u06da\u06e5"

    goto :goto_6

    :sswitch_21
    const-string v0, "\u06db\u06e2\u06db\u06e5\u06d8\u06e1\u06d8\u06db\u06e1\u06d6\u06e7\u06d7\u06e4\u06d7\u06e5\u06d8\u06e8\u06e8\u06da\u06e4\u06e2\u06d8\u06d9\u06df\u06d8\u06d8\u06ec\u06d8\u06e8\u06d8\u06dc\u06d8\u06da\u06e2\u06d6\u06da\u06d9\u06e5\u06dc\u06e6\u06e8\u06e6\u06e2\u06e4"

    goto :goto_5

    :sswitch_22
    const-string v0, "\u06da\u06e1\u06dc\u06eb\u06ec\u06db\u06d7\u06d8\u06e6\u06d8\u06d6\u06e4\u06d8\u06d8\u06e6\u06ec\u06d6\u06d8\u06e2\u06e7\u06e1\u06d8\u06e1\u06e4\u06e6\u06d8\u06ec\u06d8\u06ec\u06e7\u06db\u06e2\u06da\u06e7\u06e6\u06d6\u06e4\u06e8\u06e1\u06e2\u06d7"

    goto :goto_5

    :sswitch_23
    const-string v0, "\u06e8\u06e1\u06e7\u06d8\u06e6\u06e7\u06df\u06e2\u06e2\u06e4\u06df\u06e7\u06e5\u06d8\u06e5\u06dc\u06d9\u06d8\u06e5\u06d7\u06e7\u06d7\u06e2\u06d9\u06e1\u06d8\u06e7\u06e7\u06e1\u06eb\u06e8\u06e2\u06e1\u06ec\u06da\u06d6\u06d8\u06d8\u06d9\u06e6\u06e4\u06db\u06eb\u06d6\u06d8\u06df\u06e8\u06e2\u06df\u06e2\u06ec\u06e5\u06ec\u06d8\u06d8\u06df\u06e0\u06e8\u06d8"

    goto/16 :goto_0

    :sswitch_24
    invoke-direct {p0}, Lcom/cyjh/elfin/ui/activity/SweepCodeZbarActivity;->OooO()V

    const-string v0, "\u06d9\u06e5\u06e7\u06d8\u06d9\u06e7\u06dc\u06d8\u06e7\u06ec\u06ec\u06e8\u06e7\u06ec\u06e2\u06ec\u06d6\u06d8\u06e5\u06d7\u06d9\u06eb\u06d9\u06ec\u06e4\u06e8\u06d8\u06e6\u06db\u06d8\u06d8\u06e8\u06d9\u06e0"

    goto/16 :goto_0

    :sswitch_25
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const-string v0, "\u06e8\u06e1\u06dc\u06d8\u06dc\u06db\u06e2\u06e2\u06e0\u06e5\u06d6\u06d7\u06dc\u06d8\u06e4\u06e1\u06d9\u06dc\u06d9\u06e5\u06d7\u06e4\u06e8\u06d8\u06e2\u06d7\u06e8\u06e2\u06e8\u06e7\u06d6\u06e5"

    goto/16 :goto_0

    :sswitch_26
    const-string v0, "\u06ec\u06d8\u06e5\u06e7\u06ec\u06eb\u06eb\u06da\u06dc\u06e7\u06da\u06e1\u06e1\u06df\u06ec\u06e6\u06e6\u06d8\u06ec\u06da\u06e2\u06e1\u06e6\u06e0\u06e6\u06e1\u06da\u06e7\u06e1\u06e6\u06e8\u06dc\u06e6\u06d8\u06ec\u06ec\u06e5\u06d8\u06e6\u06eb\u06e1\u06d8\u06d9\u06ec\u06e0\u06e2\u06ec\u06df\u06e0\u06ec\u06e5\u06d8"

    goto/16 :goto_0

    :sswitch_27
    const-string v0, "\u06e8\u06e1\u06dc\u06d8\u06dc\u06db\u06e2\u06e2\u06e0\u06e5\u06d6\u06d7\u06dc\u06d8\u06e4\u06e1\u06d9\u06dc\u06d9\u06e5\u06d7\u06e4\u06e8\u06d8\u06e2\u06d7\u06e8\u06e2\u06e8\u06e7\u06d6\u06e5"

    goto/16 :goto_0

    :sswitch_28
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7cb87060 -> :sswitch_27
        -0x753c587c -> :sswitch_a
        -0x6efdffd6 -> :sswitch_0
        -0x6d95b716 -> :sswitch_28
        -0x6c1861c1 -> :sswitch_2
        -0x61754605 -> :sswitch_27
        -0x3aa2c9cd -> :sswitch_4
        -0x1d6f1ad6 -> :sswitch_7
        -0x1b9d8a62 -> :sswitch_13
        -0x15a3e0fc -> :sswitch_6
        0x5ca2abe -> :sswitch_b
        0x927ca87 -> :sswitch_25
        0x9cbeab8 -> :sswitch_5
        0x1594405f -> :sswitch_8
        0x33067a21 -> :sswitch_9
        0x47ff061c -> :sswitch_1
        0x66bab2a5 -> :sswitch_3
        0x6ed1f73d -> :sswitch_1b
        0x71544cc3 -> :sswitch_24
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x7428c0e7 -> :sswitch_c
        0x1a4835b1 -> :sswitch_26
        0x493c15f5 -> :sswitch_e
        0x61d8b321 -> :sswitch_12
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        -0x31742e4b -> :sswitch_11
        -0x300f3417 -> :sswitch_d
        -0x119449f1 -> :sswitch_10
        0x57a109ea -> :sswitch_f
    .end sparse-switch

    :sswitch_data_3
    .sparse-switch
        -0x39258929 -> :sswitch_14
        -0xc43add7 -> :sswitch_1c
        0x32fb5b3a -> :sswitch_16
        0x34367358 -> :sswitch_1a
    .end sparse-switch

    :sswitch_data_4
    .sparse-switch
        0x1bde834f -> :sswitch_18
        0x22600470 -> :sswitch_19
        0x51dfe9ee -> :sswitch_17
        0x6ac7de81 -> :sswitch_15
    .end sparse-switch

    :sswitch_data_5
    .sparse-switch
        -0x5c70674e -> :sswitch_22
        -0x42fa4167 -> :sswitch_1c
        0xdee522 -> :sswitch_1e
        0x674e43d2 -> :sswitch_23
    .end sparse-switch

    :sswitch_data_6
    .sparse-switch
        -0x75b3d18f -> :sswitch_1d
        -0x69f35ed3 -> :sswitch_1f
        0x3bb92f5f -> :sswitch_21
        0x3e72cd19 -> :sswitch_20
    .end sparse-switch
.end method
