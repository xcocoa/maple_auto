.class public Lcom/cyjh/elfin/ui/activity/MessagePushActivity;
.super Lcom/cyjh/common/base/activity/BaseActivity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyjh/elfin/ui/activity/MessagePushActivity$OooO0O0;,
        Lcom/cyjh/elfin/ui/activity/MessagePushActivity$OooO0OO;
    }
.end annotation


# instance fields
.field private OooooO0:Lcom/cyjh/elfin/ui/view/customview/TitleView;

.field private OooooOO:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cyjh/http/bean/NotifyMsgBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/cyjh/common/base/activity/BaseActivity;-><init>()V

    return-void
.end method

.method private OooO0oO()V
    .locals 6

    const/4 v3, 0x0

    const-string v0, "\u06d6\u06d7\u06e6\u06e5\u06d7\u06e0\u06ec\u06df\u06dc\u06d8\u06eb\u06d9\u06ec\u06df\u06e8\u06e4\u06d7\u06d6\u06d6\u06e1\u06e1\u06d9\u06d6\u06d7\u06e7\u06e7\u06e8\u06e6\u06d8\u06e5\u06e7\u06e1\u06e8\u06da\u06df\u06e8\u06d8\u06e1\u06d8"

    move-object v1, v0

    move-object v2, v3

    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v4, 0x286

    xor-int/2addr v0, v4

    xor-int/lit16 v0, v0, 0x128

    const/16 v4, 0x19c

    const v5, -0x5628b1f

    xor-int/2addr v0, v4

    xor-int/2addr v0, v5

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d6\u06e6\u06e8\u06dc\u06d8\u06e6\u06d8\u06e0\u06da\u06e5\u06dc\u06d7\u06e6\u06db\u06d6\u06e7\u06db\u06e2\u06da\u06e0\u06d6\u06d8\u06e7\u06d8\u06eb\u06e7\u06eb\u06eb\u06d6\u06db\u06d9\u06e4\u06db\u06e7\u06e8\u06d8\u06d6\u06ec\u06ec\u06d9\u06e0\u06ec\u06e4\u06d6\u06e1\u06d7\u06db\u06db\u06df\u06d8\u06e1\u06d6\u06e2\u06d7"

    move-object v1, v0

    goto :goto_0

    :sswitch_1
    const v0, 0x7f0902e3

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cyjh/elfin/ui/view/customview/TitleView;

    const-string v1, "\u06df\u06ec\u06ec\u06da\u06e5\u06e8\u06d8\u06e2\u06da\u06d9\u06d7\u06e0\u06e2\u06e4\u06e5\u06e7\u06d8\u06e5\u06dc\u06d6\u06df\u06dc\u06e1\u06d8\u06e2\u06e7\u06e6\u06e6\u06df\u06e6\u06d8\u06e0\u06eb\u06d6\u06d8\u06e0\u06e6\u06e6\u06df\u06dc\u06e7\u06d8\u06e8\u06eb\u06eb\u06e8\u06df\u06e7"

    move-object v2, v0

    goto :goto_0

    :sswitch_2
    iput-object v2, p0, Lcom/cyjh/elfin/ui/activity/MessagePushActivity;->OooooO0:Lcom/cyjh/elfin/ui/view/customview/TitleView;

    const-string v0, "\u06d8\u06ec\u06dc\u06dc\u06d7\u06e2\u06eb\u06dc\u06e0\u06db\u06d6\u06e7\u06d8\u06e2\u06e0\u06d8\u06db\u06dc\u06dc\u06da\u06da\u06da\u06e8\u06e2\u06dc\u06e4\u06dc\u06d8\u06d8\u06ec\u06e6\u06e5\u06e2\u06ec\u06e1\u06d7\u06d7\u06d6\u06e8\u06e1\u06e1\u06d8\u06e4\u06e8\u06e5\u06d8"

    move-object v1, v0

    goto :goto_0

    :sswitch_3
    const v0, 0x7f0801c9

    invoke-virtual {v2, v0}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setleftImage(I)V

    const-string v0, "\u06da\u06da\u06e5\u06d8\u06da\u06d6\u06dc\u06e0\u06da\u06eb\u06e1\u06e2\u06eb\u06d6\u06e6\u06da\u06eb\u06d9\u06e4\u06d6\u06d6\u06d8\u06da\u06e6\u06d6\u06e8\u06df\u06e5\u06d8\u06e0\u06da\u06e5\u06d7\u06ec\u06e8\u06d8\u06e8\u06da\u06e8\u06e2\u06e7\u06db\u06df\u06d9\u06d6\u06d8\u06eb\u06e2\u06dc\u06d8\u06d6\u06d8\u06eb\u06e1\u06e6\u06e2\u06d9\u06e4\u06d8"

    move-object v1, v0

    goto :goto_0

    :sswitch_4
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/MessagePushActivity;->OooooO0:Lcom/cyjh/elfin/ui/view/customview/TitleView;

    new-instance v1, Lcom/cyjh/elfin/ui/activity/MessagePushActivity$OooO0O0;

    invoke-direct {v1, p0, v3}, Lcom/cyjh/elfin/ui/activity/MessagePushActivity$OooO0O0;-><init>(Lcom/cyjh/elfin/ui/activity/MessagePushActivity;Lcom/cyjh/elfin/ui/activity/MessagePushActivity$OooO00o;)V

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setOnLeftImageViewListener(Lcom/cyjh/elfin/ui/view/customview/TitleView$OooO0O0;)V

    const-string v0, "\u06db\u06eb\u06e8\u06d8\u06d8\u06eb\u06d9\u06e6\u06d9\u06e1\u06d8\u06e5\u06db\u06d7\u06e0\u06e4\u06df\u06ec\u06df\u06d9\u06d8\u06e8\u06e1\u06d8\u06d8\u06e4\u06e6\u06d6\u06e8\u06db\u06e2\u06e2\u06d8\u06d8\u06d9\u06eb\u06e8\u06e1\u06d8\u06d7\u06d7\u06d9\u06e2\u06e0\u06e7\u06e8"

    move-object v1, v0

    goto :goto_0

    :sswitch_5
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/MessagePushActivity;->OooooO0:Lcom/cyjh/elfin/ui/view/customview/TitleView;

    const v1, 0x7f1001cd

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setTitleText(I)V

    const-string v0, "\u06d9\u06e0\u06d8\u06d8\u06da\u06e4\u06ec\u06ec\u06d8\u06e1\u06ec\u06e6\u06d8\u06e7\u06e4\u06d6\u06e6\u06d8\u06d8\u06e0\u06d8\u06dc\u06db\u06e4\u06d6\u06dc\u06e0\u06e4\u06e1\u06d6\u06d8\u06e2\u06e0\u06e1\u06d9\u06d8\u06d8\u06d8"

    move-object v1, v0

    goto :goto_0

    :sswitch_6
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/MessagePushActivity;->OooooO0:Lcom/cyjh/elfin/ui/view/customview/TitleView;

    const v1, 0x7f1000ee

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setRightTvText(I)V

    const-string v0, "\u06d7\u06e2\u06e2\u06da\u06df\u06e5\u06e6\u06eb\u06d8\u06eb\u06e4\u06d8\u06da\u06d9\u06d7\u06e0\u06d8\u06d8\u06ec\u06eb\u06d9\u06da\u06da\u06e0\u06da\u06d8\u06d8\u06d8\u06e6\u06eb\u06d6\u06ec\u06e5\u06e8\u06d8\u06ec\u06ec\u06db\u06e2\u06eb\u06e8\u06d8\u06db\u06df\u06db\u06db\u06e0\u06e0\u06d7\u06d6\u06d6\u06db\u06da\u06dc\u06e0\u06df\u06e2"

    move-object v1, v0

    goto :goto_0

    :sswitch_7
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/MessagePushActivity;->OooooO0:Lcom/cyjh/elfin/ui/view/customview/TitleView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setVisibilityRightImage(I)V

    const-string v0, "\u06d9\u06da\u06d8\u06e6\u06d6\u06e5\u06e6\u06da\u06e8\u06d8\u06d7\u06e8\u06e8\u06db\u06d6\u06d7\u06e7\u06d8\u06e8\u06e2\u06db\u06e8\u06d8\u06db\u06db\u06ec\u06e8\u06d6\u06dc\u06d8\u06dc\u06eb\u06e6\u06df\u06e8\u06e8\u06d8\u06d9\u06e8\u06d8"

    move-object v1, v0

    goto :goto_0

    :sswitch_8
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/MessagePushActivity;->OooooO0:Lcom/cyjh/elfin/ui/view/customview/TitleView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setVisibilityTvRight(I)V

    const-string v0, "\u06e7\u06dc\u06dc\u06d8\u06e5\u06d6\u06e6\u06d8\u06dc\u06e8\u06e4\u06db\u06dc\u06d6\u06e0\u06e0\u06d8\u06d8\u06e0\u06d9\u06e1\u06d8\u06d8\u06da\u06e6\u06d7\u06e6\u06d8\u06d8\u06e1\u06da\u06d6\u06e1\u06e8\u06e6\u06e8\u06db\u06ec\u06e2\u06ec\u06d9\u06d8\u06db\u06dc\u06e1\u06e4\u06e7"

    move-object v1, v0

    goto :goto_0

    :sswitch_9
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/MessagePushActivity;->OooooO0:Lcom/cyjh/elfin/ui/view/customview/TitleView;

    new-instance v1, Lcom/cyjh/elfin/ui/activity/MessagePushActivity$OooO0OO;

    invoke-direct {v1, p0, v3}, Lcom/cyjh/elfin/ui/activity/MessagePushActivity$OooO0OO;-><init>(Lcom/cyjh/elfin/ui/activity/MessagePushActivity;Lcom/cyjh/elfin/ui/activity/MessagePushActivity$OooO00o;)V

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setOnRightTextViewListener(Lcom/cyjh/elfin/ui/view/customview/TitleView$OooO0o;)V

    const-string v0, "\u06e4\u06d9\u06d8\u06ec\u06e2\u06d8\u06d8\u06da\u06e0\u06e6\u06dc\u06dc\u06ec\u06df\u06e7\u06e6\u06d8\u06d6\u06eb\u06d7\u06d9\u06e7\u06d6\u06dc\u06d6\u06d8\u06df\u06e5\u06e5\u06d8\u06e1\u06df\u06dc\u06d8\u06da\u06df\u06e6\u06d9\u06df"

    move-object v1, v0

    goto :goto_0

    :sswitch_a
    invoke-static {}, Lz2/x4;->OooO0O0()Lz2/x4;

    move-result-object v0

    const-string v1, "red_dot_flag"

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v4}, Lz2/x4;->OooO0o(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v0, "\u06dc\u06da\u06db\u06d7\u06d6\u06eb\u06d8\u06e2\u06e1\u06d9\u06dc\u06ec\u06d9\u06e8\u06e8\u06ec\u06e8\u06df\u06e7\u06eb\u06da\u06e1\u06db\u06d8\u06d8\u06e5\u06e6\u06ec\u06e4\u06ec\u06d7\u06e1\u06e4\u06d9\u06e5\u06e0\u06e1\u06e1\u06e4\u06e6\u06df\u06dc\u06d7"

    move-object v1, v0

    goto/16 :goto_0

    :sswitch_b
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7e82b392 -> :sswitch_5
        -0x7b3e07a1 -> :sswitch_2
        -0x5b920dfd -> :sswitch_b
        -0x44a6b6d9 -> :sswitch_3
        -0x40005e45 -> :sswitch_4
        -0x28ae59b3 -> :sswitch_7
        -0x1519513b -> :sswitch_8
        0xe50291b -> :sswitch_1
        0x33878124 -> :sswitch_0
        0x4f47ef76 -> :sswitch_6
        0x593cc168 -> :sswitch_a
        0x5942f406 -> :sswitch_9
    .end sparse-switch
.end method

.method private OooO0oo()V
    .locals 5

    const/4 v1, 0x0

    const-string v0, "\u06df\u06e8\u06d7\u06e4\u06da\u06da\u06e4\u06e7\u06d9\u06db\u06d7\u06db\u06db\u06e4\u06ec\u06da\u06e0\u06e1\u06d8\u06eb\u06da\u06db\u06e6\u06e4\u06d8\u06df\u06e7\u06dc\u06d8\u06e2\u06eb\u06dc\u06df\u06df\u06d6\u06e7\u06e2\u06e1\u06d8\u06e0\u06e4\u06e5\u06e6\u06df\u06dc"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v3, 0x39e

    xor-int/2addr v2, v3

    xor-int/lit16 v2, v2, 0x2cb

    const/16 v3, 0x2fc

    const v4, -0x165f5188

    xor-int/2addr v2, v3

    xor-int/2addr v2, v4

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e4\u06d7\u06d7\u06db\u06db\u06d6\u06d8\u06e8\u06da\u06df\u06e4\u06e2\u06da\u06da\u06d6\u06da\u06db\u06da\u06dc\u06e6\u06e4\u06d6\u06e0\u06d7\u06e8\u06e2\u06e5\u06e8\u06d8\u06db\u06d6\u06d8\u06e5\u06dc\u06ec\u06eb\u06db\u06eb"

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    const-string v0, "\u06dc\u06e4\u06d6\u06d8\u06e6\u06e1\u06e1\u06d6\u06d6\u06d8\u06e2\u06e1\u06e7\u06df\u06e6\u06df\u06ec\u06db\u06e1\u06e7\u06e8\u06e7\u06e5\u06e5\u06e4\u06df\u06dc\u06d8\u06d6\u06e0\u06e8\u06e4\u06df\u06df\u06df\u06df\u06e8\u06d8\u06df\u06d9\u06d7\u06e5\u06e4\u06e1\u06dc\u06d7\u06e8\u06e0\u06e1\u06db"

    goto :goto_0

    :sswitch_2
    const v0, 0x7f0902cb

    iget-object v2, p0, Lcom/cyjh/elfin/ui/activity/MessagePushActivity;->OooooOO:Ljava/util/ArrayList;

    invoke-static {v2}, Lz2/ia;->OooOoO(Ljava/util/ArrayList;)Lz2/ia;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    const-string v0, "\u06e4\u06e5\u06e4\u06da\u06e0\u06df\u06da\u06eb\u06e2\u06db\u06e1\u06e7\u06d8\u06d7\u06df\u06d6\u06d8\u06e4\u06e0\u06d9\u06e1\u06da\u06e2\u06db\u06e8\u06e6\u06ec\u06dc\u06dc\u06e2\u06e5\u06ec\u06d8\u06d8\u06d6\u06d7\u06e4\u06e7\u06e7\u06eb\u06df\u06e8\u06ec"

    goto :goto_0

    :sswitch_3
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    const-string v0, "\u06eb\u06e6\u06ec\u06db\u06e4\u06d8\u06eb\u06d9\u06e5\u06d8\u06eb\u06d7\u06e8\u06d8\u06e7\u06df\u06e8\u06e1\u06e1\u06d8\u06d8\u06dc\u06dc\u06db\u06eb\u06e6\u06df\u06e1\u06dc\u06ec\u06e1\u06df\u06d7\u06e4\u06d8\u06e5\u06d8\u06d9\u06e5\u06e1\u06d6\u06eb\u06e1\u06da\u06e5\u06d9\u06eb\u06e7\u06e7\u06d6\u06dc\u06d8"

    goto :goto_0

    :sswitch_4
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x21e7d345 -> :sswitch_0
        -0x16183560 -> :sswitch_4
        0x21e2154e -> :sswitch_2
        0x3aec841c -> :sswitch_3
        0x77bdb152 -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    const-string v0, "\u06e7\u06e8\u06db\u06df\u06d7\u06d7\u06e4\u06e5\u06d8\u06d8\u06d9\u06e2\u06e8\u06e5\u06e2\u06d6\u06e8\u06e0\u06e1\u06ec\u06e2\u06eb\u06e1\u06e8\u06e5\u06d8\u06e6\u06d6\u06d8\u06d8\u06d9\u06e8\u06d8\u06d7\u06d8\u06e6\u06d8\u06d8\u06ec\u06dc\u06e5\u06dc\u06db\u06e7\u06d9\u06d8\u06d8\u06e8\u06e5\u06e1\u06d8\u06e1\u06d6\u06e1\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x370

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x173

    const/16 v2, 0x60

    const v3, 0x6e96c82a

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06ec\u06d8\u06d8\u06ec\u06d6\u06da\u06e5\u06dc\u06d7\u06d7\u06d6\u06e4\u06e1\u06e1\u06d7\u06e7\u06e1\u06ec\u06e2\u06dc\u06dc\u06d8\u06d8\u06e1\u06e8\u06e1\u06d8\u06d7\u06e7\u06e0\u06e5\u06d8"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06d7\u06e5\u06e8\u06d8\u06dc\u06e0\u06e4\u06ec\u06e0\u06e0\u06e7\u06e2\u06e5\u06e1\u06e4\u06ec\u06ec\u06df\u06d6\u06d8\u06e2\u06d8\u06e1\u06d8\u06da\u06e5\u06d8\u06d8\u06e2\u06e0\u06dc\u06e6\u06e5\u06d8\u06d6\u06ec\u06df\u06e8\u06dc\u06e5\u06d8\u06d7\u06e0\u06e0\u06d6\u06e2\u06e2\u06df\u06e6\u06d9\u06e0\u06e4\u06e1\u06e2\u06e6\u06e6\u06d8\u06e7\u06d8\u06da"

    goto :goto_0

    :sswitch_2
    invoke-super {p0, p1}, Lcom/cyjh/common/base/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "\u06e4\u06e1\u06d9\u06da\u06df\u06e7\u06e7\u06eb\u06d9\u06e5\u06e1\u06eb\u06e7\u06db\u06d8\u06d8\u06e5\u06e0\u06d8\u06d7\u06e0\u06d6\u06d9\u06d6\u06d8\u06dc\u06ec\u06d6\u06d8\u06ec\u06e5\u06e8\u06d7\u06dc\u06dc\u06e2\u06e2\u06d8\u06e4\u06d7\u06d6\u06e1\u06e4\u06e6\u06d8\u06ec\u06da\u06d8\u06e0\u06d6\u06ec"

    goto :goto_0

    :sswitch_3
    const v0, 0x7f0c0028

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    const-string v0, "\u06d8\u06d6\u06e2\u06e8\u06e1\u06e8\u06e4\u06e6\u06e7\u06da\u06da\u06d7\u06e7\u06e8\u06da\u06e7\u06e0\u06d6\u06db\u06e0\u06e1\u06d8\u06db\u06e1\u06e5\u06d8\u06db\u06e7\u06db\u06df\u06df\u06d8\u06d8\u06e7\u06e4\u06d9\u06e4\u06e0\u06e6\u06df\u06e1\u06e6\u06eb\u06e1\u06e8"

    goto :goto_0

    :sswitch_4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "msg_data"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/MessagePushActivity;->OooooOO:Ljava/util/ArrayList;

    const-string v0, "\u06da\u06e8\u06d6\u06e5\u06e2\u06d9\u06e8\u06d9\u06e7\u06eb\u06dc\u06da\u06e4\u06e4\u06d8\u06d8\u06d9\u06ec\u06d7\u06db\u06e7\u06db\u06eb\u06d9\u06dc\u06e2\u06e1\u06e4\u06ec\u06e6\u06d8\u06e0\u06e6\u06e5\u06e6\u06e1\u06e5\u06d8\u06da\u06df\u06ec\u06e0\u06d7\u06da\u06e6\u06e1\u06d8\u06da\u06d7\u06e8\u06e8\u06e1\u06ec\u06e1\u06eb\u06e8"

    goto :goto_0

    :sswitch_5
    invoke-static {}, Lz2/l10;->OooO0o()Lz2/l10;

    move-result-object v0

    new-instance v1, Lcom/cyjh/elfin/entity/MsgItem;

    const/16 v2, 0x3e9

    invoke-direct {v1, v2}, Lcom/cyjh/elfin/entity/MsgItem;-><init>(I)V

    invoke-virtual {v0, v1}, Lz2/l10;->OooOOOO(Ljava/lang/Object;)V

    const-string v0, "\u06e4\u06e7\u06e1\u06db\u06e0\u06e0\u06e4\u06e2\u06dc\u06d8\u06d6\u06d8\u06d8\u06db\u06e8\u06db\u06ec\u06e6\u06e5\u06e8\u06d7\u06e1\u06e6\u06da\u06e8\u06d8\u06ec\u06ec\u06d8\u06d8\u06e2\u06d8\u06da\u06da\u06e5\u06e7\u06d9\u06df\u06e8\u06d8\u06df\u06db\u06d6\u06d9\u06e4\u06e2\u06d9\u06e6\u06d6\u06da\u06e0\u06d6\u06d8\u06ec\u06e1\u06d6\u06d8\u06d8\u06da\u06d7"

    goto :goto_0

    :sswitch_6
    invoke-direct {p0}, Lcom/cyjh/elfin/ui/activity/MessagePushActivity;->OooO0oO()V

    const-string v0, "\u06eb\u06e8\u06d6\u06eb\u06e2\u06e5\u06e0\u06d9\u06e1\u06d8\u06e2\u06e5\u06e2\u06dc\u06db\u06e5\u06d6\u06d6\u06ec\u06e7\u06df\u06ec\u06d8\u06e4\u06e8\u06eb\u06d8\u06d8\u06e5\u06d7\u06d6\u06d8\u06d8\u06e0\u06e6\u06eb\u06e0"

    goto :goto_0

    :sswitch_7
    invoke-direct {p0}, Lcom/cyjh/elfin/ui/activity/MessagePushActivity;->OooO0oo()V

    const-string v0, "\u06dc\u06e7\u06dc\u06d8\u06e7\u06d6\u06db\u06e0\u06e2\u06d9\u06d7\u06e5\u06d8\u06e1\u06ec\u06d7\u06dc\u06da\u06e8\u06d8\u06e0\u06dc\u06d7\u06e2\u06e6\u06df\u06eb\u06db\u06d8\u06d8\u06eb\u06d8\u06dc\u06d8"

    goto :goto_0

    :sswitch_8
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x791b234c -> :sswitch_3
        -0x7428a6a4 -> :sswitch_4
        -0x73726792 -> :sswitch_1
        -0x5a31a25c -> :sswitch_5
        -0x563b4283 -> :sswitch_0
        -0x41c0306b -> :sswitch_7
        -0x388459bd -> :sswitch_2
        0xb8c4ddb -> :sswitch_6
        0x7c9ecd32 -> :sswitch_8
    .end sparse-switch
.end method

.method public onPause()V
    .locals 4

    const-string v0, "\u06eb\u06dc\u06e5\u06d8\u06e6\u06e8\u06dc\u06e5\u06e0\u06e6\u06d8\u06e2\u06db\u06e8\u06d8\u06d7\u06e2\u06dc\u06d8\u06df\u06e1\u06e7\u06d8\u06e6\u06d8\u06d7\u06e7\u06e4\u06e6\u06e2\u06e8\u06e5\u06e6\u06d6\u06d6\u06e0\u06e8\u06df\u06e4\u06d8\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x1da

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x300

    const/16 v2, 0xa

    const v3, -0x77dedafc

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e4\u06da\u06ec\u06e6\u06e0\u06e8\u06d8\u06ec\u06e4\u06db\u06db\u06d9\u06dc\u06e4\u06e1\u06d8\u06e0\u06d6\u06e7\u06da\u06df\u06df\u06d8\u06e1\u06da\u06e7\u06ec\u06e4\u06e2\u06e6\u06e7\u06e8\u06d9\u06d7\u06da\u06e6\u06e1\u06dc\u06d8\u06e7\u06e7\u06eb\u06e2\u06d8\u06d7\u06e0\u06d8\u06eb\u06eb\u06e5\u06d9\u06e8\u06e4\u06d8\u06d8"

    goto :goto_0

    :sswitch_1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    const-string v0, "\u06e2\u06d6\u06d6\u06df\u06dc\u06d6\u06d8\u06e4\u06df\u06e0\u06d8\u06d9\u06e1\u06d8\u06eb\u06e5\u06e1\u06d7\u06d6\u06e7\u06d8\u06e4\u06e7\u06da\u06e4\u06d8\u06db\u06dc\u06d7\u06d9\u06df\u06eb\u06e5\u06d8\u06d8\u06d6\u06d8\u06da\u06dc\u06e5\u06d8\u06e0\u06ec\u06e6\u06e8\u06eb\u06e6\u06d8"

    goto :goto_0

    :sswitch_2
    invoke-static {p0}, Lz2/bh;->OooO0o0(Landroid/content/Context;)V

    const-string v0, "\u06e8\u06e4\u06e6\u06d8\u06d6\u06dc\u06e8\u06e7\u06e5\u06e5\u06d6\u06eb\u06e7\u06dc\u06da\u06e4\u06e7\u06e1\u06d6\u06df\u06eb\u06d7\u06d7\u06ec\u06d6\u06d8\u06e5\u06e0\u06d9\u06d8\u06da\u06d8\u06d8\u06e7\u06e8\u06dc\u06d8\u06d6\u06e6\u06e1\u06e5\u06df\u06db\u06df\u06e4\u06df\u06e6\u06d9\u06d8\u06d8\u06db\u06e2\u06e5"

    goto :goto_0

    :sswitch_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x3b1ec63a -> :sswitch_2
        0x421f802a -> :sswitch_0
        0x42a13b61 -> :sswitch_1
        0x5e7af525 -> :sswitch_3
    .end sparse-switch
.end method

.method public onResume()V
    .locals 4

    const-string v0, "\u06e5\u06dc\u06e5\u06e1\u06d9\u06e1\u06e8\u06d8\u06e2\u06d9\u06dc\u06dc\u06dc\u06e7\u06d8\u06eb\u06db\u06dc\u06dc\u06e7\u06d9\u06d6\u06db\u06e8\u06d9\u06d6\u06d8\u06e5\u06e6\u06d8\u06e8\u06e4\u06d6\u06d8\u06ec\u06e6\u06e7\u06df\u06dc\u06e6\u06e6\u06e7\u06d6\u06e7\u06e7\u06d8\u06da\u06df\u06e2\u06e7\u06e5\u06d6\u06e1\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x2f4

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x263

    const/16 v2, 0x243

    const v3, -0x2db5323b

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e1\u06e7\u06e5\u06db\u06e6\u06da\u06e0\u06e0\u06e1\u06d8\u06dc\u06e8\u06e7\u06d8\u06d6\u06d6\u06e4\u06df\u06d8\u06d8\u06e6\u06e5\u06e6\u06eb\u06e8\u06d8\u06dc\u06e7\u06e2\u06e6\u06df\u06d9\u06e1\u06df\u06d6\u06e8\u06d6\u06e7\u06df\u06e5\u06e6\u06d8\u06e5\u06da\u06d7\u06e7\u06dc\u06e1\u06e5\u06e0\u06e8"

    goto :goto_0

    :sswitch_1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    const-string v0, "\u06db\u06e8\u06e5\u06df\u06e0\u06ec\u06e8\u06ec\u06d8\u06e8\u06e4\u06e5\u06d8\u06e8\u06e7\u06d9\u06e2\u06db\u06e8\u06e6\u06e7\u06dc\u06d8\u06e2\u06e4\u06e0\u06eb\u06e5\u06e2\u06e1\u06db\u06d7\u06e8\u06e0\u06dc\u06ec\u06ec\u06df\u06e6\u06d6\u06d7\u06e5\u06db\u06e2\u06d8\u06d9\u06e5\u06d8\u06da\u06e4\u06dc\u06d8"

    goto :goto_0

    :sswitch_2
    invoke-static {p0}, Lz2/bh;->OooO0o(Landroid/content/Context;)V

    const-string v0, "\u06eb\u06da\u06e1\u06e7\u06e1\u06dc\u06d8\u06e2\u06d7\u06d7\u06da\u06d7\u06db\u06d7\u06db\u06e6\u06d8\u06e1\u06da\u06e5\u06e6\u06df\u06dc\u06d8\u06dc\u06e2\u06e8\u06e2\u06df\u06ec\u06e1\u06dc\u06e1\u06df\u06d9\u06db\u06ec\u06e5\u06e8\u06e7\u06ec\u06e8\u06da\u06e1\u06e4\u06d9\u06e5\u06e1\u06e1\u06d9\u06d9\u06da\u06e6\u06e7\u06ec\u06da\u06e6"

    goto :goto_0

    :sswitch_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x20e6e786 -> :sswitch_2
        0x1d7718f0 -> :sswitch_0
        0x2ad47ad2 -> :sswitch_3
        0x32e67aff -> :sswitch_1
    .end sparse-switch
.end method
