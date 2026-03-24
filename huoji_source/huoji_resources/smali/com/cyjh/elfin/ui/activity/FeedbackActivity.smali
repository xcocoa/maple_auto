.class public Lcom/cyjh/elfin/ui/activity/FeedbackActivity;
.super Lcom/cyjh/common/base/activity/BaseActivity;


# instance fields
.field public OooooO0:Lcom/cyjh/elfin/ui/view/customview/TitleView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/cyjh/common/base/activity/BaseActivity;-><init>()V

    return-void
.end method

.method private OooO0oO()V
    .locals 5

    const/4 v2, 0x0

    const-string v0, "\u06e6\u06da\u06e8\u06d8\u06da\u06e0\u06db\u06e6\u06d6\u06ec\u06e1\u06db\u06e2\u06e8\u06d8\u06d6\u06eb\u06e8\u06da\u06e4\u06e8\u06dc\u06d8\u06d9\u06ec\u06da\u06da\u06db\u06d6\u06d8\u06db\u06df\u06e0\u06da\u06db\u06d9\u06e1\u06e5\u06d8\u06df\u06da\u06d6\u06d8\u06e1\u06eb\u06e0\u06e1\u06e5\u06db\u06e7\u06e0\u06ec"

    move-object v1, v0

    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v3, 0x5c

    xor-int/2addr v0, v3

    xor-int/lit8 v0, v0, 0x66

    const/16 v3, 0x23a

    const v4, -0x2f70694d

    xor-int/2addr v0, v3

    xor-int/2addr v0, v4

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e6\u06d6\u06eb\u06db\u06d7\u06e5\u06d8\u06ec\u06eb\u06e2\u06d6\u06e2\u06d9\u06e6\u06d8\u06e4\u06e7\u06e7\u06e6\u06d8\u06df\u06e5\u06e7\u06d8\u06e5\u06eb\u06d9\u06ec\u06d7\u06d9\u06e8\u06dc\u06e1\u06d8\u06d6\u06dc\u06df\u06db\u06db\u06e6\u06e6\u06d6\u06da\u06df\u06da\u06e5\u06e8\u06d8\u06e0\u06e5\u06d8\u06d9\u06dc\u06da\u06d8\u06d8\u06d7\u06eb\u06d9"

    move-object v1, v0

    goto :goto_0

    :sswitch_1
    const v0, 0x7f09043d

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cyjh/elfin/ui/view/customview/TitleView;

    const-string v1, "\u06df\u06d9\u06e0\u06ec\u06eb\u06d9\u06d9\u06ec\u06d9\u06e8\u06ec\u06d8\u06da\u06e8\u06d9\u06d6\u06ec\u06e2\u06e0\u06e8\u06e0\u06eb\u06e5\u06e0\u06e5\u06dc\u06d8\u06e8\u06d7\u06e4\u06d8\u06ec\u06da\u06db\u06d9\u06e7\u06d7\u06e5\u06ec\u06d7\u06d7\u06e2\u06ec\u06e8\u06d8\u06e4\u06ec\u06d8\u06d8"

    move-object v2, v0

    goto :goto_0

    :sswitch_2
    iput-object v2, p0, Lcom/cyjh/elfin/ui/activity/FeedbackActivity;->OooooO0:Lcom/cyjh/elfin/ui/view/customview/TitleView;

    const-string v0, "\u06e5\u06e8\u06e4\u06df\u06e1\u06d8\u06e5\u06e7\u06e8\u06e4\u06e2\u06dc\u06e2\u06ec\u06e2\u06e0\u06d9\u06e4\u06d9\u06e2\u06d6\u06d8\u06e8\u06ec\u06dc\u06d7\u06da\u06e6\u06d8\u06d6\u06e1\u06e0\u06e0\u06df\u06dc\u06df\u06d9\u06e1"

    move-object v1, v0

    goto :goto_0

    :sswitch_3
    const v0, 0x7f100142

    invoke-virtual {v2, v0}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setTitleText(I)V

    const-string v0, "\u06db\u06e1\u06dc\u06d8\u06db\u06e8\u06e4\u06e0\u06e0\u06db\u06d9\u06e8\u06e7\u06d8\u06e1\u06db\u06dc\u06d8\u06d7\u06e2\u06e0\u06e6\u06e0\u06e7\u06e4\u06d7\u06e5\u06d8\u06e6\u06dc\u06d8\u06e4\u06e2\u06e8\u06d8\u06da\u06e6\u06e1\u06ec\u06df\u06e0\u06eb\u06e8\u06e8\u06da\u06ec\u06dc"

    move-object v1, v0

    goto :goto_0

    :sswitch_4
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/FeedbackActivity;->OooooO0:Lcom/cyjh/elfin/ui/view/customview/TitleView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setVisibilityLeftImage(I)V

    const-string v0, "\u06e5\u06ec\u06eb\u06e6\u06db\u06db\u06e6\u06e8\u06db\u06e2\u06df\u06d8\u06d8\u06d8\u06d6\u06e1\u06da\u06df\u06d8\u06d8\u06e6\u06ec\u06df\u06d7\u06d9\u06d8\u06e5\u06da\u06e0\u06db\u06d7\u06e1\u06d8\u06d9\u06d6\u06e6\u06d8\u06e4\u06e1\u06e2\u06e1\u06e5\u06ec\u06d7\u06ec\u06e6\u06d8\u06ec\u06ec\u06e6\u06d8\u06e7\u06e0\u06ec\u06d8\u06d7\u06d6\u06d8\u06e7\u06e7\u06e5\u06d8"

    move-object v1, v0

    goto :goto_0

    :sswitch_5
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/FeedbackActivity;->OooooO0:Lcom/cyjh/elfin/ui/view/customview/TitleView;

    const v1, 0x7f0801c9

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setleftImage(I)V

    const-string v0, "\u06d8\u06e8\u06ec\u06d8\u06eb\u06e1\u06d8\u06da\u06e7\u06dc\u06d8\u06da\u06e0\u06e6\u06db\u06d7\u06e5\u06ec\u06db\u06df\u06df\u06db\u06e2\u06e6\u06e6\u06dc\u06d8\u06eb\u06e6\u06e1\u06e8\u06e1\u06db\u06e8\u06eb\u06eb\u06d9\u06db\u06e4\u06e0\u06e0\u06e0\u06e7\u06dc\u06e6\u06d8"

    move-object v1, v0

    goto :goto_0

    :sswitch_6
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/FeedbackActivity;->OooooO0:Lcom/cyjh/elfin/ui/view/customview/TitleView;

    new-instance v1, Lcom/cyjh/elfin/ui/activity/FeedbackActivity$OooO00o;

    invoke-direct {v1, p0}, Lcom/cyjh/elfin/ui/activity/FeedbackActivity$OooO00o;-><init>(Lcom/cyjh/elfin/ui/activity/FeedbackActivity;)V

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setOnLeftImageViewListener(Lcom/cyjh/elfin/ui/view/customview/TitleView$OooO0O0;)V

    const-string v0, "\u06d7\u06df\u06df\u06d9\u06e8\u06e8\u06d6\u06e0\u06da\u06e4\u06ec\u06d6\u06d9\u06da\u06eb\u06e5\u06d8\u06e6\u06d8\u06df\u06e6\u06e2\u06df\u06d9\u06d6\u06ec\u06e7\u06e2\u06db\u06e5\u06d9\u06d6\u06e8\u06e7\u06e4\u06e5\u06dc\u06d8\u06e2\u06e8\u06d9\u06d6\u06e8\u06d8\u06d9\u06da\u06da\u06d6\u06d6\u06e5\u06d8"

    move-object v1, v0

    goto :goto_0

    :sswitch_7
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/FeedbackActivity;->OooooO0:Lcom/cyjh/elfin/ui/view/customview/TitleView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setVisibilityRightImage(I)V

    const-string v0, "\u06da\u06ec\u06d6\u06d8\u06eb\u06d7\u06d9\u06e8\u06dc\u06dc\u06d8\u06e6\u06da\u06e7\u06d7\u06d8\u06df\u06eb\u06e0\u06e1\u06d8\u06e4\u06e7\u06d8\u06dc\u06d6\u06e1\u06d8\u06e0\u06eb\u06dc\u06e8\u06e7\u06e1\u06d8\u06d8\u06d7\u06e2\u06e1\u06db\u06e0\u06df\u06e8\u06d9\u06d7\u06e6\u06df"

    move-object v1, v0

    goto :goto_0

    :sswitch_8
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7df6fcfc -> :sswitch_1
        -0x6d7284f2 -> :sswitch_3
        -0x67fe0244 -> :sswitch_5
        -0x5fa0bd42 -> :sswitch_4
        -0x3931e914 -> :sswitch_7
        0x79c9080 -> :sswitch_0
        0x152f104b -> :sswitch_2
        0x39f8caf7 -> :sswitch_8
        0x6b0951d4 -> :sswitch_6
    .end sparse-switch
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v1, 0x0

    const-string v0, "\u06e7\u06d6\u06e8\u06d8\u06e0\u06dc\u06e1\u06ec\u06e4\u06e1\u06e4\u06ec\u06dc\u06d8\u06e1\u06da\u06ec\u06e4\u06e4\u06e5\u06db\u06e0\u06d8\u06e1\u06d8\u06e2\u06dc\u06dc\u06d8\u06e8\u06df\u06df\u06e1\u06e0\u06df\u06d9\u06e7\u06d7\u06e4\u06d7\u06d8\u06d6\u06da\u06e8\u06d8\u06ec\u06e1\u06e1\u06e6\u06da\u06d9"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v3, 0x353

    xor-int/2addr v2, v3

    xor-int/lit16 v2, v2, 0x22a

    const/16 v3, 0x74

    const v4, 0x7276801b

    xor-int/2addr v2, v3

    xor-int/2addr v2, v4

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e7\u06d9\u06e6\u06d7\u06e5\u06e7\u06d8\u06da\u06e2\u06da\u06e1\u06e0\u06e6\u06d8\u06d7\u06e7\u06e4\u06eb\u06e0\u06d6\u06d8\u06e5\u06dc\u06d8\u06e7\u06d6\u06d6\u06e0\u06df\u06e6\u06d8\u06e6\u06e7\u06d8\u06d8"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06e2\u06e5\u06ec\u06e4\u06d8\u06e8\u06df\u06db\u06e1\u06e5\u06e1\u06e7\u06d8\u06db\u06d7\u06e4\u06e2\u06e4\u06d6\u06df\u06e6\u06e0\u06e8\u06db\u06e8\u06d8\u06d8\u06e8\u06d6\u06d8\u06e8\u06e7\u06e8\u06da\u06ec\u06db\u06e4\u06e0\u06e8\u06d8\u06e1\u06e1\u06e6\u06eb\u06e7\u06e1\u06d8\u06dc\u06eb\u06e1\u06e1\u06da\u06dc"

    goto :goto_0

    :sswitch_2
    invoke-super {p0, p1}, Lcom/cyjh/common/base/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "\u06e4\u06d7\u06d9\u06e2\u06e1\u06d6\u06d8\u06da\u06d9\u06e7\u06df\u06e5\u06da\u06e6\u06eb\u06d6\u06d8\u06df\u06df\u06d6\u06d8\u06dc\u06e0\u06df\u06e4\u06e7\u06e4\u06e0\u06db\u06e2\u06e6\u06e6\u06d6\u06d8\u06d7\u06df\u06d7\u06e2\u06df\u06db"

    goto :goto_0

    :sswitch_3
    const v0, 0x7f0c0021

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    const-string v0, "\u06e1\u06e4\u06e6\u06d8\u06e6\u06d6\u06ec\u06d9\u06e4\u06e2\u06e0\u06e5\u06e6\u06d8\u06e1\u06d7\u06d6\u06dc\u06e5\u06d8\u06d7\u06e6\u06ec\u06d8\u06e5\u06e8\u06d8\u06d9\u06d8\u06e7\u06dc\u06e2\u06d8\u06d8"

    goto :goto_0

    :sswitch_4
    invoke-direct {p0}, Lcom/cyjh/elfin/ui/activity/FeedbackActivity;->OooO0oO()V

    const-string v0, "\u06e7\u06df\u06d7\u06da\u06d8\u06d6\u06e2\u06df\u06e7\u06e0\u06e0\u06d9\u06df\u06d6\u06d9\u06e1\u06d9\u06e8\u06d8\u06e2\u06e5\u06ec\u06d6\u06db\u06d6\u06e5\u06d8\u06d8\u06e8\u06d9\u06ec\u06dc\u06dc\u06d9\u06ec\u06e7\u06e8\u06e0\u06df\u06d6\u06d6\u06e7\u06e1\u06e8\u06e7\u06e4\u06e1"

    goto :goto_0

    :sswitch_5
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    const-string v0, "\u06d7\u06eb\u06dc\u06d8\u06df\u06ec\u06d6\u06ec\u06df\u06d6\u06e1\u06d8\u06d6\u06e2\u06e6\u06e7\u06e2\u06e2\u06ec\u06e5\u06d6\u06d6\u06d8\u06da\u06d8\u06d6\u06e8\u06e8\u06d8\u06d8\u06e2\u06e8\u06db\u06d8\u06d9\u06eb\u06dc\u06d8\u06d8\u06d7\u06e5\u06df\u06d8\u06e0"

    goto :goto_0

    :sswitch_6
    const v0, 0x7f0902b2

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-class v3, Lcom/cyjh/elfin/ui/activity/FeedbackActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lz2/xb;->OooO0OO()Z

    move-result v3

    invoke-static {v2, v3}, Lz2/sb;->OooOoo(Ljava/lang/String;Z)Lz2/sb;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    const-string v0, "\u06e2\u06da\u06e1\u06d8\u06df\u06e0\u06dc\u06d8\u06e0\u06e2\u06da\u06db\u06d6\u06e6\u06d8\u06e2\u06d8\u06e7\u06d8\u06e8\u06e2\u06d8\u06d9\u06da\u06da\u06dc\u06e1\u06d8\u06e2\u06d9\u06e1\u06d8\u06d7\u06ec\u06e1\u06d8\u06d9\u06e2\u06dc\u06d8\u06ec\u06e2\u06e5\u06d8\u06e1\u06e7\u06e1\u06d8\u06df\u06d8\u06e5\u06d8\u06d6\u06ec\u06d6\u06e0\u06dc\u06e2"

    goto :goto_0

    :sswitch_7
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    const-string v0, "\u06e8\u06d8\u06e6\u06d8\u06e2\u06e5\u06dc\u06e2\u06e5\u06e7\u06d9\u06e2\u06e8\u06d8\u06e8\u06e6\u06e5\u06d8\u06e0\u06da\u06e1\u06db\u06e0\u06eb\u06e6\u06ec\u06d6\u06d8\u06e8\u06df\u06e6\u06e4\u06e6\u06df\u06e4\u06da\u06e4\u06df\u06e7\u06e6\u06db\u06d6\u06dc\u06e4\u06e5\u06e6\u06dc\u06ec\u06e8\u06d8\u06e5\u06df\u06e1\u06eb\u06d8\u06e6\u06dc\u06df\u06da"

    goto :goto_0

    :sswitch_8
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4cf7ce82 -> :sswitch_0
        -0x35764b44 -> :sswitch_4
        -0x246136cb -> :sswitch_2
        -0xdcdc91b -> :sswitch_1
        -0xd0b62ad -> :sswitch_8
        0x35c54439 -> :sswitch_7
        0x43a7b940 -> :sswitch_3
        0x710bab4f -> :sswitch_6
        0x744b0aff -> :sswitch_5
    .end sparse-switch
.end method

.method public onPause()V
    .locals 4

    const-string v0, "\u06e1\u06ec\u06e6\u06d6\u06eb\u06d9\u06e2\u06e7\u06da\u06e8\u06e6\u06db\u06df\u06e6\u06d8\u06d8\u06df\u06db\u06eb\u06e2\u06e6\u06e5\u06d8\u06d8\u06e2\u06df\u06ec\u06dc\u06e0\u06ec\u06df\u06d7\u06e6\u06d9\u06dc\u06d8\u06eb\u06d7\u06eb\u06d7\u06e0\u06eb\u06e0\u06ec\u06d6\u06db\u06d8\u06e7\u06dc\u06df\u06e2\u06d8\u06d6\u06e8\u06e2\u06e2\u06dc\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x372

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x29e

    const/16 v2, 0x3a8

    const v3, 0x5a7aaacc

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e1\u06dc\u06d8\u06e4\u06dc\u06e5\u06e2\u06d8\u06d8\u06e8\u06d8\u06e5\u06db\u06eb\u06df\u06e0\u06d7\u06d9\u06e5\u06da\u06df\u06d8\u06e8\u06e6\u06df\u06d7\u06dc\u06d6\u06d8"

    goto :goto_0

    :sswitch_1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    const-string v0, "\u06d9\u06e8\u06e8\u06d8\u06e5\u06d7\u06e8\u06d7\u06da\u06dc\u06e7\u06d6\u06e4\u06d6\u06e1\u06e5\u06eb\u06e0\u06d6\u06d8\u06d6\u06df\u06e5\u06d8\u06e6\u06e5\u06d6\u06d7\u06e7\u06d8\u06e8\u06d6\u06d8\u06d6\u06e4\u06ec\u06e4\u06ec\u06da\u06e7\u06df\u06d8\u06d8\u06e4\u06e7\u06e0\u06eb\u06db\u06da\u06d9\u06e5\u06ec\u06eb\u06e0\u06ec\u06e1\u06d8"

    goto :goto_0

    :sswitch_2
    invoke-static {p0}, Lz2/bh;->OooO0o0(Landroid/content/Context;)V

    const-string v0, "\u06e4\u06d9\u06dc\u06d8\u06d8\u06e6\u06e8\u06e0\u06e4\u06e6\u06d8\u06dc\u06e8\u06e5\u06eb\u06dc\u06d7\u06df\u06dc\u06e0\u06d8\u06df\u06ec\u06eb\u06db\u06d6\u06d8\u06d8\u06e4\u06e1\u06d8\u06ec\u06e8\u06d6\u06d8\u06e8\u06da\u06d9\u06e0\u06db\u06d7"

    goto :goto_0

    :sswitch_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x265aa7e2 -> :sswitch_3
        -0x25b7ccd4 -> :sswitch_1
        0xa861e4e -> :sswitch_2
        0x56950a5c -> :sswitch_0
    .end sparse-switch
.end method

.method public onResume()V
    .locals 4

    const-string v0, "\u06d6\u06e5\u06ec\u06df\u06da\u06d7\u06d6\u06e2\u06e5\u06ec\u06da\u06d8\u06df\u06db\u06e1\u06d8\u06e1\u06e4\u06e2\u06d7\u06e4\u06db\u06e1\u06d7\u06e6\u06d8\u06df\u06d7\u06ec\u06df\u06e7\u06da\u06db\u06e0\u06e5\u06d8\u06e8\u06da\u06db\u06da\u06e5\u06ec\u06df\u06eb\u06da"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x312

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x1e8

    const/16 v2, 0x29f

    const v3, -0x799b2c09

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06ec\u06e0\u06d6\u06d8\u06d7\u06e2\u06da\u06eb\u06db\u06d6\u06d8\u06eb\u06df\u06dc\u06d8\u06e6\u06db\u06eb\u06e7\u06d7\u06d8\u06d8\u06d7\u06d7\u06e0\u06df\u06da\u06e8\u06ec\u06db\u06e7\u06e7\u06db\u06e5"

    goto :goto_0

    :sswitch_1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    const-string v0, "\u06d8\u06db\u06e5\u06e8\u06df\u06ec\u06e8\u06d9\u06db\u06eb\u06e2\u06e0\u06eb\u06d9\u06d7\u06d8\u06d9\u06dc\u06e0\u06e2\u06eb\u06d8\u06d9\u06e6\u06d8\u06e8\u06d6\u06e6\u06d8\u06d6\u06db\u06d6\u06d8\u06db\u06dc\u06db\u06e5\u06e6"

    goto :goto_0

    :sswitch_2
    invoke-static {p0}, Lz2/bh;->OooO0o(Landroid/content/Context;)V

    const-string v0, "\u06d7\u06e6\u06e8\u06da\u06d8\u06e2\u06d9\u06e2\u06ec\u06d8\u06df\u06e5\u06d8\u06e7\u06e1\u06e1\u06eb\u06df\u06e8\u06d8\u06e2\u06d7\u06e2\u06d7\u06e8\u06e4\u06d8\u06e2\u06e4\u06ec\u06e4\u06e1"

    goto :goto_0

    :sswitch_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x67ab68cc -> :sswitch_0
        0x86bdce3 -> :sswitch_1
        0x2c924d4e -> :sswitch_2
        0x2d23c01c -> :sswitch_3
    .end sparse-switch
.end method
