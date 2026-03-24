.class public Lcom/cyjh/elfin/ui/activity/MessageDetailActivity;
.super Lcom/cyjh/common/base/activity/BaseActivity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyjh/elfin/ui/activity/MessageDetailActivity$OooO0O0;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/cyjh/common/base/activity/BaseActivity;-><init>()V

    return-void
.end method

.method private OooO0oO()V
    .locals 6

    const/4 v3, 0x0

    const-string v0, "\u06e0\u06e5\u06e0\u06e0\u06d9\u06d8\u06d8\u06da\u06d7\u06da\u06e8\u06e7\u06dc\u06dc\u06dc\u06e7\u06d6\u06e4\u06e6\u06e6\u06eb\u06e4\u06e7\u06d9\u06e5\u06d6\u06ec\u06e8\u06d6\u06d6\u06e5\u06d8\u06e0\u06d7\u06d6\u06dc\u06e8\u06d6\u06e2\u06eb\u06e2\u06e7\u06e7\u06e4"

    move-object v1, v0

    move-object v2, v3

    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v4, 0x39b

    xor-int/2addr v0, v4

    xor-int/lit16 v0, v0, 0x390

    const/16 v4, 0x2cf

    const v5, 0x3952cc7b

    xor-int/2addr v0, v4

    xor-int/2addr v0, v5

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06df\u06da\u06e1\u06d8\u06e1\u06e1\u06e6\u06e1\u06da\u06ec\u06e7\u06e7\u06e4\u06ec\u06ec\u06eb\u06d9\u06ec\u06ec\u06e0\u06ec\u06d7\u06e0\u06d8\u06e5\u06db\u06e4\u06db\u06e7\u06d7\u06e6\u06ec\u06d8\u06e7\u06d8\u06e0\u06dc\u06d9\u06e2\u06e6\u06e8\u06d8\u06da\u06ec\u06d8\u06db\u06d6\u06e8\u06e8\u06d8\u06d8"

    move-object v1, v0

    goto :goto_0

    :sswitch_1
    const v0, 0x7f0902e2

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cyjh/elfin/ui/view/customview/TitleView;

    const-string v1, "\u06e2\u06e8\u06dc\u06eb\u06ec\u06db\u06e1\u06d6\u06da\u06d8\u06e0\u06e7\u06dc\u06e8\u06d8\u06df\u06d8\u06d7\u06d8\u06ec\u06d6\u06d7\u06df\u06d7\u06e8\u06e4\u06da\u06eb\u06db\u06dc\u06e6\u06d9\u06dc\u06d8\u06e6\u06e5\u06e7\u06d8\u06d9\u06e1\u06dc\u06d8\u06e6\u06d9\u06d7\u06ec\u06d8\u06d7\u06ec\u06ec\u06e1\u06d8"

    move-object v2, v0

    goto :goto_0

    :sswitch_2
    const v0, 0x7f0801c9

    invoke-virtual {v2, v0}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setleftImage(I)V

    const-string v0, "\u06df\u06d7\u06e8\u06d8\u06e2\u06eb\u06e2\u06da\u06ec\u06eb\u06da\u06ec\u06d9\u06e6\u06e1\u06ec\u06e1\u06d6\u06d8\u06d7\u06eb\u06d8\u06d8\u06dc\u06e2\u06e7\u06d7\u06e8\u06e4\u06db\u06e5\u06e1\u06e7\u06d9\u06ec\u06dc\u06d8\u06d8\u06e5\u06db\u06df\u06e8\u06d8\u06e6\u06d8\u06d9\u06e8\u06e7\u06e5\u06eb\u06db"

    move-object v1, v0

    goto :goto_0

    :sswitch_3
    const v0, 0x7f1001cd

    invoke-virtual {v2, v0}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setTitleText(I)V

    const-string v0, "\u06e7\u06db\u06d8\u06dc\u06db\u06e6\u06d8\u06eb\u06d6\u06e7\u06d8\u06d6\u06e6\u06df\u06db\u06df\u06db\u06dc\u06e5\u06d8\u06e7\u06e7\u06db\u06df\u06dc\u06e0\u06db\u06e8\u06df\u06e1\u06d7\u06d9\u06e8\u06e8\u06e0\u06d6\u06e0\u06e1\u06d8\u06df\u06e5\u06e7\u06d8\u06e1\u06d8\u06df"

    move-object v1, v0

    goto :goto_0

    :sswitch_4
    const/4 v0, 0x4

    invoke-virtual {v2, v0}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setVisibilityRightImage(I)V

    const-string v0, "\u06e0\u06e6\u06e1\u06d8\u06d7\u06e0\u06e8\u06d8\u06e7\u06e0\u06d8\u06d8\u06d6\u06d9\u06e7\u06da\u06e8\u06e8\u06d8\u06da\u06e8\u06e0\u06ec\u06da\u06e4\u06e6\u06e1\u06d6\u06d8\u06e8\u06e4\u06d6\u06d8\u06d7\u06d8\u06e6\u06e5\u06e5\u06d8\u06df\u06e6\u06d8\u06e2\u06e5\u06e6\u06e0\u06d9\u06da"

    move-object v1, v0

    goto :goto_0

    :sswitch_5
    new-instance v0, Lcom/cyjh/elfin/ui/activity/MessageDetailActivity$OooO0O0;

    invoke-direct {v0, p0, v3}, Lcom/cyjh/elfin/ui/activity/MessageDetailActivity$OooO0O0;-><init>(Lcom/cyjh/elfin/ui/activity/MessageDetailActivity;Lcom/cyjh/elfin/ui/activity/MessageDetailActivity$OooO00o;)V

    invoke-virtual {v2, v0}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setOnLeftImageViewListener(Lcom/cyjh/elfin/ui/view/customview/TitleView$OooO0O0;)V

    const-string v0, "\u06e7\u06e5\u06e2\u06d8\u06e4\u06e5\u06d8\u06eb\u06e7\u06e1\u06db\u06d6\u06e1\u06d8\u06df\u06e8\u06d8\u06e5\u06d7\u06d6\u06da\u06e0\u06e7\u06df\u06ec\u06ec\u06e8\u06eb\u06e1\u06d8\u06db\u06d7\u06dc\u06e7\u06e6\u06e4\u06dc\u06db\u06e6"

    move-object v1, v0

    goto :goto_0

    :sswitch_6
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x68c1ed62 -> :sswitch_6
        -0x46700eab -> :sswitch_5
        -0x465511c7 -> :sswitch_1
        -0x3b9b0b6d -> :sswitch_2
        -0x113dace0 -> :sswitch_4
        0x1726343d -> :sswitch_0
        0x25378ed9 -> :sswitch_3
    .end sparse-switch
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    const-wide/16 v4, 0x0

    const-string v0, "\u06d6\u06e1\u06d6\u06da\u06d7\u06e8\u06d8\u06d7\u06dc\u06e8\u06d8\u06d8\u06ec\u06d8\u06e2\u06e0\u06e5\u06dc\u06db\u06e8\u06e5\u06d8\u06e1\u06d8\u06e0\u06e8\u06e5\u06d8\u06dc\u06e0\u06e8\u06d8\u06e8\u06d9\u06eb\u06e6\u06e2\u06e6\u06e5\u06e8\u06e1\u06d8\u06e8\u06da\u06d6\u06d8\u06e8\u06d7\u06e5"

    move-wide v2, v4

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v6, 0x9a

    xor-int/2addr v1, v6

    xor-int/lit16 v1, v1, 0x1b1

    const/16 v6, 0x61

    const v7, -0x75d0d011

    xor-int/2addr v1, v6

    xor-int/2addr v1, v7

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06dc\u06ec\u06e5\u06d8\u06ec\u06da\u06d6\u06d8\u06dc\u06eb\u06e0\u06e2\u06e4\u06db\u06e6\u06e6\u06dc\u06ec\u06d6\u06e7\u06e7\u06e5\u06e1\u06d8\u06eb\u06eb\u06e1\u06e8\u06d9\u06e5\u06d8\u06e0\u06dc\u06d6\u06d6\u06e1\u06d8\u06e0\u06e5\u06d6"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06d6\u06d7\u06d8\u06dc\u06e8\u06e8\u06df\u06ec\u06df\u06d9\u06eb\u06e5\u06db\u06d7\u06df\u06dc\u06e2\u06e4\u06e4\u06e0\u06e0\u06e4\u06db\u06e2\u06eb\u06e8\u06e1\u06d9\u06ec\u06e8\u06dc\u06e0\u06d6\u06d8\u06e7\u06d8\u06d8\u06d8\u06db\u06e7\u06d6\u06e6\u06df\u06dc\u06e1\u06dc\u06e2\u06db\u06e8\u06e8\u06dc\u06e6\u06dc\u06e1\u06e5\u06d8"

    goto :goto_0

    :sswitch_2
    invoke-super {p0, p1}, Lcom/cyjh/common/base/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "\u06eb\u06e1\u06e8\u06d8\u06eb\u06e5\u06e2\u06e5\u06d8\u06d8\u06d8\u06e1\u06ec\u06e1\u06d7\u06d6\u06d8\u06d9\u06e2\u06e4\u06e8\u06da\u06df\u06d9\u06ec\u06df\u06ec\u06eb\u06dc\u06d7\u06d7"

    goto :goto_0

    :sswitch_3
    const v0, 0x7f0c0027

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    const-string v0, "\u06e1\u06e2\u06e8\u06eb\u06e5\u06d8\u06d7\u06d8\u06db\u06eb\u06df\u06d9\u06e2\u06da\u06e5\u06d8\u06e4\u06e2\u06e6\u06e1\u06db\u06d6\u06d8\u06eb\u06e8\u06e0\u06ec\u06dc\u06e5\u06d8\u06db\u06e0\u06e8\u06da\u06e6\u06e1\u06eb\u06e7\u06d6\u06d8\u06ec\u06e2\u06e4\u06ec\u06e8\u06e5"

    goto :goto_0

    :sswitch_4
    invoke-direct {p0}, Lcom/cyjh/elfin/ui/activity/MessageDetailActivity;->OooO0oO()V

    const-string v0, "\u06e7\u06e1\u06e8\u06d8\u06e5\u06e7\u06e6\u06d8\u06d9\u06db\u06d8\u06e8\u06df\u06e5\u06d8\u06e5\u06d6\u06e1\u06e4\u06e8\u06d6\u06d8\u06da\u06e5\u06dc\u06d8\u06d7\u06d9\u06d8\u06e2\u06e4\u06e0\u06d9\u06d7\u06e5\u06e6\u06d6\u06d8\u06e7\u06eb\u06dc"

    goto :goto_0

    :sswitch_5
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-class v1, Lcom/cyjh/elfin/ui/activity/MessageDetailActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    const-string v0, "\u06db\u06e0\u06e6\u06e7\u06e0\u06d6\u06da\u06e7\u06d7\u06da\u06e5\u06e5\u06e7\u06e1\u06e7\u06d8\u06d6\u06d8\u06e8\u06d8\u06e5\u06d9\u06d9\u06dc\u06d9\u06df\u06d7\u06e8\u06eb\u06e2\u06e7\u06d8\u06d8\u06e2\u06e2\u06ec\u06d7\u06dc\u06e8\u06df\u06d7\u06ec\u06e4\u06d8\u06ec\u06e6\u06df\u06dc\u06da"

    goto :goto_0

    :sswitch_6
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f0902cb

    invoke-static {v2, v3}, Lz2/ha;->OooOoO0(J)Lz2/ha;

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    const-string v0, "\u06db\u06df\u06df\u06e0\u06d7\u06e6\u06e8\u06dc\u06d8\u06d8\u06d8\u06e8\u06e8\u06d8\u06e2\u06d8\u06eb\u06d9\u06da\u06e6\u06ec\u06db\u06e1\u06db\u06d6\u06df\u06e1\u06d8\u06da\u06db\u06ec\u06db\u06e0\u06d8\u06d9\u06e2\u06e5\u06ec\u06e8\u06e6\u06d8\u06dc\u06e4\u06e5"

    goto :goto_0

    :sswitch_7
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7b606206 -> :sswitch_2
        -0x72ab38ef -> :sswitch_5
        -0x49a7d112 -> :sswitch_6
        -0x3b46cde1 -> :sswitch_4
        -0x10adf542 -> :sswitch_3
        0x308b3339 -> :sswitch_7
        0x53aa6243 -> :sswitch_0
        0x679ab42f -> :sswitch_1
    .end sparse-switch
.end method

.method public onPause()V
    .locals 4

    const-string v0, "\u06d6\u06d9\u06e6\u06d8\u06ec\u06eb\u06e0\u06e1\u06e7\u06e5\u06d8\u06e6\u06df\u06e6\u06d8\u06df\u06db\u06d7\u06d6\u06e2\u06e8\u06e0\u06d8\u06e6\u06e0\u06e4\u06e2\u06ec\u06e6\u06e8\u06eb\u06e0\u06df\u06e4\u06e5\u06e0\u06d7\u06e6\u06dc\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x1ca

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x1c4

    const/16 v2, 0xc2

    const v3, -0x73d519c4

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06da\u06da\u06d8\u06d8\u06e2\u06d8\u06ec\u06e0\u06d8\u06db\u06ec\u06d9\u06dc\u06d8\u06eb\u06d8\u06d8\u06e5\u06db\u06e1\u06e5\u06e5\u06d8\u06d8\u06d8\u06e2\u06e2\u06df\u06d9\u06e1\u06d8\u06e2\u06dc\u06e6\u06d8\u06d9\u06e2\u06d8\u06e1\u06da\u06e5\u06d8\u06d9\u06da\u06eb\u06e7\u06e2\u06d8\u06d8"

    goto :goto_0

    :sswitch_1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    const-string v0, "\u06e1\u06df\u06e5\u06df\u06da\u06e6\u06d6\u06e7\u06e2\u06d6\u06e6\u06e8\u06d8\u06e1\u06e7\u06db\u06eb\u06e1\u06e0\u06da\u06d9\u06e5\u06d8\u06da\u06eb\u06d6\u06d8\u06d9\u06d6\u06db\u06ec\u06df\u06e4\u06e6\u06e2\u06d6\u06d8\u06e7\u06e6\u06e6\u06d8\u06e2\u06d6\u06e6\u06d8\u06da\u06e5\u06e6\u06d8\u06d8\u06e5\u06d9\u06d6\u06d6\u06d6\u06d8\u06eb\u06dc\u06e4\u06d9\u06e5\u06df"

    goto :goto_0

    :sswitch_2
    invoke-static {p0}, Lz2/bh;->OooO0o0(Landroid/content/Context;)V

    const-string v0, "\u06d8\u06eb\u06d8\u06d8\u06d6\u06e2\u06e0\u06e0\u06d9\u06e0\u06e2\u06d7\u06e8\u06e7\u06eb\u06db\u06ec\u06d7\u06e4\u06e7\u06d7\u06e5\u06e0\u06e8\u06d6\u06d8\u06e7\u06e7\u06d9\u06e2\u06e1\u06d6\u06d8\u06e0\u06e6\u06ec\u06e6\u06df\u06d6\u06df\u06e1\u06d8\u06d8\u06dc\u06e6\u06e5\u06d8\u06ec\u06da\u06d6\u06e1\u06d9\u06e1\u06e0\u06eb\u06e1\u06d8\u06d8\u06df\u06d6"

    goto :goto_0

    :sswitch_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x74c9f683 -> :sswitch_0
        -0x3b48486e -> :sswitch_2
        0x60e2b71c -> :sswitch_3
        0x6a2f3ed9 -> :sswitch_1
    .end sparse-switch
.end method

.method public onResume()V
    .locals 4

    const-string v0, "\u06e1\u06e0\u06e1\u06d8\u06d7\u06d8\u06e6\u06dc\u06e2\u06d6\u06d8\u06ec\u06ec\u06d6\u06e6\u06d8\u06d6\u06d8\u06eb\u06da\u06e6\u06d6\u06d8\u06d8\u06ec\u06e6\u06e5\u06e4\u06db\u06d9\u06e4\u06e1\u06d6\u06da\u06e5\u06e2\u06e1\u06db\u06dc\u06d8\u06d6\u06e6\u06e6\u06ec\u06d7\u06dc\u06e0\u06ec\u06df\u06e8\u06e4\u06e1"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x1ed

    xor-int/2addr v1, v2

    xor-int/lit8 v1, v1, 0x68

    const/16 v2, 0x331

    const v3, -0x136c1aba

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06da\u06e2\u06eb\u06dc\u06e7\u06e6\u06e1\u06d6\u06e8\u06d8\u06e5\u06eb\u06e1\u06ec\u06d6\u06e1\u06d8\u06e2\u06dc\u06d8\u06dc\u06e0\u06e0\u06dc\u06d7\u06e5\u06d8\u06d8\u06eb\u06e6\u06e1\u06da\u06e4\u06ec\u06df\u06e1\u06eb\u06db\u06ec"

    goto :goto_0

    :sswitch_1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    const-string v0, "\u06dc\u06e8\u06d6\u06d8\u06e2\u06d7\u06e2\u06d9\u06e0\u06d9\u06da\u06e5\u06d8\u06d9\u06eb\u06e7\u06e2\u06e1\u06d8\u06d8\u06e5\u06ec\u06d6\u06e0\u06e5\u06d6\u06d8\u06ec\u06eb\u06eb\u06dc\u06ec\u06d6\u06d8\u06d6\u06d8\u06e6\u06e4\u06df\u06da\u06da\u06dc\u06d6\u06d8\u06d8\u06e6\u06e2\u06d7\u06e8\u06d8\u06d8\u06e4\u06eb\u06e6\u06d8"

    goto :goto_0

    :sswitch_2
    invoke-static {p0}, Lz2/bh;->OooO0o(Landroid/content/Context;)V

    const-string v0, "\u06d8\u06e0\u06da\u06e0\u06e0\u06eb\u06da\u06dc\u06dc\u06dc\u06e4\u06d9\u06dc\u06df\u06ec\u06d7\u06d9\u06e2\u06eb\u06e6\u06e1\u06ec\u06d8\u06e1\u06d8\u06e0\u06e1\u06da\u06ec\u06e5\u06e8\u06df\u06db\u06da\u06e0\u06ec\u06ec\u06d8\u06d8\u06ec\u06ec\u06e1\u06eb\u06e1\u06df\u06eb\u06e6\u06df\u06d8\u06d8\u06d6\u06e6\u06e8\u06d8\u06e8\u06dc\u06e5"

    goto :goto_0

    :sswitch_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x46c37b1d -> :sswitch_1
        0x628959af -> :sswitch_2
        0x6b9d4a7d -> :sswitch_3
        0x776e14b8 -> :sswitch_0
    .end sparse-switch
.end method
