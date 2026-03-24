.class public Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/FootView;
.super Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/BaseFootView;


# instance fields
.field public OoooOoo:Landroid/widget/TextView;

.field private Ooooo00:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/BaseFootView;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/FootView$OooO00o;

    invoke-direct {v0, p0}, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/FootView$OooO00o;-><init>(Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/FootView;)V

    iput-object v0, p0, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/FootView;->Ooooo00:Landroid/view/View$OnClickListener;

    invoke-direct {p0}, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/FootView;->OooO0oO()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/BaseFootView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/FootView$OooO00o;

    invoke-direct {v0, p0}, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/FootView$OooO00o;-><init>(Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/FootView;)V

    iput-object v0, p0, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/FootView;->Ooooo00:Landroid/view/View$OnClickListener;

    invoke-direct {p0}, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/FootView;->OooO0oO()V

    return-void
.end method

.method private OooO0oO()V
    .locals 8

    const/4 v7, -0x1

    const/4 v3, 0x0

    const-string v0, "\u06e6\u06dc\u06ec\u06e5\u06e5\u06d8\u06d8\u06d6\u06e7\u06dc\u06d8\u06d6\u06da\u06dc\u06ec\u06dc\u06d8\u06d8\u06d7\u06e7\u06e1\u06d8\u06e6\u06dc\u06d7\u06e0\u06e4\u06d6\u06d8\u06db\u06eb\u06dc\u06d8\u06e7\u06d6\u06ec\u06eb\u06df\u06d6\u06ec\u06e8\u06d6\u06eb\u06e8\u06dc\u06e6\u06dc\u06d6\u06d8\u06e7\u06d7\u06e6\u06d8\u06df\u06d8\u06e5\u06d8\u06dc\u06ec\u06e8\u06d8\u06df\u06e4\u06d8\u06d8"

    move-object v1, v0

    move-object v2, v3

    move-object v4, v3

    move-object v5, v3

    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v3, 0x292

    xor-int/2addr v0, v3

    xor-int/lit16 v0, v0, 0x33e

    const/16 v3, 0x2ee

    const v6, -0x110b65f6

    xor-int/2addr v0, v3

    xor-int/2addr v0, v6

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06dc\u06db\u06d8\u06d8\u06d9\u06d7\u06df\u06e7\u06e2\u06d8\u06e5\u06d9\u06ec\u06db\u06db\u06e7\u06ec\u06ec\u06ec\u06e4\u06e2\u06d6\u06db\u06dc\u06da\u06db\u06dc\u06da\u06d9\u06d6\u06e0\u06e4\u06e0\u06e7\u06e6\u06e7\u06d7\u06da\u06dc\u06eb\u06e8\u06e6"

    move-object v1, v0

    goto :goto_0

    :sswitch_1
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const-string v0, "\u06e1\u06e5\u06df\u06e5\u06e5\u06e4\u06e1\u06e4\u06d6\u06d8\u06d8\u06ec\u06d6\u06d8\u06da\u06e0\u06da\u06ec\u06df\u06dc\u06d7\u06e2\u06d6\u06d8\u06e5\u06ec\u06e4\u06e7\u06e7\u06dc\u06e2\u06e1\u06e0"

    move-object v1, v0

    move-object v5, v3

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/FootView;->getLayout()Landroid/view/View;

    move-result-object v3

    const-string v0, "\u06db\u06da\u06ec\u06e6\u06e4\u06eb\u06d8\u06e7\u06e4\u06e7\u06d6\u06df\u06d6\u06d8\u06db\u06d6\u06ec\u06e4\u06d7\u06e0\u06d7\u06e4\u06e8\u06ec\u06ec\u06df\u06dc\u06d8\u06d8\u06e7\u06d7\u06df\u06e0\u06ec\u06d6\u06ec\u06e1\u06d8\u06d7\u06e8\u06e6\u06db\u06eb\u06dc\u06d8\u06e7\u06e7\u06e6\u06d8\u06ec\u06db\u06e1\u06d8\u06df\u06e2\u06d9\u06e7\u06d9\u06d6"

    move-object v1, v0

    move-object v4, v3

    goto :goto_0

    :sswitch_3
    const/16 v0, 0x11

    iput v0, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const-string v0, "\u06e7\u06d8\u06e5\u06e1\u06db\u06e1\u06d8\u06ec\u06db\u06d9\u06d7\u06e8\u06d9\u06d6\u06e4\u06e4\u06e6\u06da\u06d8\u06e5\u06e7\u06d9\u06d8\u06e0\u06e8\u06d8\u06d8\u06ec\u06e5\u06d8\u06eb\u06d7\u06e5\u06d8\u06db\u06e7\u06e6\u06d9\u06d7\u06e6\u06d8\u06e6\u06d9\u06da\u06dc\u06dc\u06e4"

    move-object v1, v0

    goto :goto_0

    :sswitch_4
    invoke-virtual {p0, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const-string v0, "\u06da\u06db\u06e8\u06d8\u06d6\u06d7\u06d9\u06d9\u06e0\u06d6\u06e5\u06e1\u06d8\u06e6\u06d6\u06e0\u06d7\u06eb\u06da\u06ec\u06eb\u06eb\u06e6\u06db\u06e5\u06e2\u06e0\u06d9\u06df\u06ec\u06e5\u06e0\u06db\u06dc\u06e0\u06d7\u06e5\u06d8\u06dc\u06eb\u06d9\u06e4\u06e8\u06e5\u06d8\u06db\u06ec\u06e7\u06ec\u06d8\u06eb"

    move-object v1, v0

    goto :goto_0

    :sswitch_5
    const v0, 0x7f090365

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "\u06d8\u06e4\u06d6\u06d8\u06d8\u06d6\u06e7\u06d8\u06dc\u06d9\u06e5\u06e8\u06d9\u06d6\u06d8\u06e6\u06e5\u06da\u06d7\u06e6\u06d6\u06ec\u06ec\u06e1\u06d8\u06df\u06d8\u06d8\u06d8\u06dc\u06eb\u06d9\u06eb\u06e5\u06dc\u06db\u06db\u06e5\u06e7\u06d8\u06dc\u06df\u06df\u06e0\u06e1\u06dc\u06e7\u06d6\u06e2\u06db\u06d9"

    move-object v2, v0

    goto :goto_0

    :sswitch_6
    iput-object v2, p0, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/FootView;->OoooOoo:Landroid/widget/TextView;

    const-string v0, "\u06d6\u06e7\u06d6\u06d8\u06ec\u06e5\u06e1\u06d7\u06e4\u06d7\u06dc\u06e6\u06e8\u06d8\u06df\u06d8\u06e2\u06eb\u06e4\u06e8\u06e1\u06ec\u06d7\u06d9\u06db\u06e5\u06d8\u06d6\u06e7\u06e6\u06ec\u06d6\u06d8"

    move-object v1, v0

    goto :goto_0

    :sswitch_7
    iget-object v0, p0, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/FootView;->Ooooo00:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "\u06e8\u06e7\u06d7\u06e5\u06e6\u06dc\u06e2\u06d8\u06d9\u06e7\u06db\u06ec\u06e2\u06d9\u06df\u06df\u06e1\u06d6\u06e6\u06d6\u06d8\u06d9\u06ec\u06e8\u06d8\u06eb\u06dc\u06e6\u06dc\u06e5\u06d8\u06d9\u06e8\u06eb\u06db\u06d8\u06e7\u06d7\u06dc\u06e2\u06e0\u06e6\u06e7"

    move-object v1, v0

    goto :goto_0

    :sswitch_8
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x65ec55ba -> :sswitch_6
        -0x1878b5b9 -> :sswitch_1
        -0x14399745 -> :sswitch_8
        0x14974d54 -> :sswitch_2
        0x2dae248d -> :sswitch_7
        0x3532f12b -> :sswitch_4
        0x6179b782 -> :sswitch_5
        0x72f6c816 -> :sswitch_3
        0x75470634 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public OooO00o()V
    .locals 4

    const-string v0, "\u06e5\u06e6\u06eb\u06e8\u06e8\u06d9\u06db\u06d8\u06da\u06d8\u06d7\u06e8\u06d8\u06e7\u06db\u06da\u06eb\u06d6\u06d8\u06e7\u06e5\u06d8\u06ec\u06dc\u06dc\u06e6\u06d7\u06e1\u06db\u06d7\u06df"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x1e8

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x18b

    const/16 v2, 0x35f

    const v3, -0x4afdb5de

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06ec\u06e0\u06dc\u06e8\u06e6\u06e1\u06dc\u06e2\u06e0\u06e5\u06dc\u06e4\u06e6\u06e7\u06d9\u06da\u06e8\u06da\u06e4\u06e1\u06d6\u06d8\u06e6\u06dc\u06e1\u06d8\u06e7\u06eb\u06e7\u06d7\u06e8\u06db"

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/FootView;->OoooOoo:Landroid/widget/TextView;

    const-string v1, "\u52a0\u8f7d\u4e2d..."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "\u06e6\u06da\u06d6\u06ec\u06ec\u06e2\u06db\u06da\u06e4\u06ec\u06dc\u06e1\u06d8\u06e6\u06e6\u06e1\u06e4\u06db\u06e8\u06d8\u06da\u06e0\u06d7\u06d6\u06e1\u06d7\u06e1\u06e2\u06d6\u06d8\u06ec\u06dc\u06e1\u06d8\u06d9\u06db\u06e0\u06dc\u06db\u06e5\u06d8\u06dc\u06db\u06d7\u06db\u06d8\u06e2"

    goto :goto_0

    :sswitch_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x53f9f8a9 -> :sswitch_0
        -0x17017235 -> :sswitch_1
        -0x511043e -> :sswitch_2
    .end sparse-switch
.end method

.method public OooO0O0()V
    .locals 4

    const-string v0, "\u06df\u06d9\u06df\u06dc\u06e4\u06d6\u06d8\u06e7\u06d6\u06e8\u06d8\u06e2\u06eb\u06e5\u06d9\u06e1\u06e1\u06eb\u06eb\u06e5\u06d8\u06d6\u06e7\u06d6\u06d8\u06d8\u06da\u06d8\u06e2\u06ec\u06d6\u06d8\u06d6\u06da\u06e5\u06d6\u06e4\u06e8\u06d8\u06e5\u06e1\u06d8\u06d8\u06d8\u06ec\u06da\u06d7\u06eb\u06da\u06e2\u06e2\u06d9\u06da\u06ec\u06e5\u06df\u06db\u06e7\u06e1\u06db\u06dc"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x167

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x1ae

    const/16 v2, 0x336

    const v3, 0x7e488494

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d7\u06e8\u06d6\u06e2\u06da\u06df\u06e0\u06d8\u06e6\u06d8\u06d7\u06e8\u06e1\u06d8\u06e1\u06e1\u06da\u06d9\u06e5\u06e8\u06d8\u06e0\u06e4\u06dc\u06e7\u06d9\u06da\u06e1\u06e6\u06e6\u06d8\u06e5\u06d6\u06da"

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/FootView;->OoooOoo:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const-string v0, "\u06dc\u06ec\u06e2\u06e2\u06e5\u06e1\u06e2\u06e4\u06d6\u06d9\u06e2\u06dc\u06e0\u06dc\u06d8\u06ec\u06db\u06e5\u06e6\u06e1\u06dc\u06d6\u06d7\u06ec\u06d6\u06e8\u06e2\u06d8\u06e5\u06e7\u06e8\u06d8\u06e7\u06e8\u06d8\u06d8\u06e4\u06df\u06e5\u06e0\u06e7\u06df\u06df\u06eb\u06e6\u06d8\u06db\u06eb\u06e1\u06d8\u06e1\u06e2\u06e1\u06e0\u06eb\u06d8"

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/FootView;->OoooOoo:Landroid/widget/TextView;

    const-string v1, "\u70b9\u51fb\u52a0\u8f7d\u66f4\u591a"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "\u06da\u06e5\u06d9\u06e5\u06df\u06ec\u06e6\u06e1\u06ec\u06db\u06d8\u06d8\u06d8\u06db\u06e0\u06d6\u06db\u06d6\u06e8\u06d8\u06da\u06eb\u06ec\u06d8\u06e4\u06e0\u06e5\u06e7\u06df\u06df\u06eb"

    goto :goto_0

    :sswitch_3
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x76d9e3bf -> :sswitch_2
        -0x67e3fd2b -> :sswitch_3
        -0x2fee98f5 -> :sswitch_1
        0x3619ac50 -> :sswitch_0
    .end sparse-switch
.end method

.method public OooO0OO()V
    .locals 4

    const-string v0, "\u06eb\u06e0\u06e1\u06d8\u06e0\u06df\u06d7\u06e8\u06e6\u06eb\u06db\u06d6\u06e6\u06d8\u06ec\u06d8\u06d6\u06d8\u06e1\u06df\u06ec\u06e4\u06db\u06dc\u06dc\u06e6\u06db\u06e0\u06dc\u06e6\u06e6\u06e8\u06e1\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x1a5

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x237

    const/16 v2, 0x205

    const v3, 0x3d10e27b

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06ec\u06e7\u06dc\u06d8\u06df\u06eb\u06e1\u06d8\u06eb\u06d7\u06d8\u06df\u06e0\u06d6\u06dc\u06eb\u06e7\u06e4\u06d6\u06d8\u06e4\u06da\u06d6\u06d6\u06d7\u06eb\u06da\u06ec\u06e0\u06eb\u06e5\u06d8\u06da\u06e2\u06e1\u06e1\u06eb\u06dc\u06d8\u06e1\u06e1\u06e7\u06d8\u06e1\u06db\u06e1\u06d9\u06e1\u06e5\u06d8\u06e4\u06e2\u06dc\u06ec\u06df\u06d7\u06d8\u06e8\u06d9"

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/FootView;->OoooOoo:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const-string v0, "\u06df\u06e8\u06ec\u06d6\u06eb\u06ec\u06d8\u06e8\u06e5\u06e0\u06e5\u06e2\u06d8\u06dc\u06d8\u06d8\u06e0\u06e4\u06d7\u06dc\u06d7\u06e1\u06e8\u06e7\u06e1\u06eb\u06d8\u06dc\u06ec\u06e0\u06dc\u06d8\u06da\u06dc\u06d8\u06d7\u06e6\u06eb\u06e2\u06d8\u06dc\u06e5\u06e1\u06e1\u06d8\u06e1\u06e0\u06da\u06e5\u06e0\u06d8\u06d8\u06dc\u06db\u06dc\u06da\u06da\u06d6\u06d8"

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/FootView;->OoooOoo:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/FootView;->OooO0o(Landroid/view/View;)V

    const-string v0, "\u06d6\u06e6\u06e7\u06d8\u06e6\u06e0\u06e1\u06e7\u06e7\u06d7\u06e4\u06e7\u06d8\u06d8\u06e4\u06d6\u06e1\u06d8\u06ec\u06d7\u06e6\u06d8\u06d7\u06e5\u06d9\u06da\u06d6\u06dc\u06d6\u06e8\u06d7\u06ec\u06d7\u06d9\u06df\u06e2\u06d6\u06e2\u06d6\u06d8\u06e7\u06dc\u06e7\u06d8\u06d8\u06d7\u06d6\u06d8"

    goto :goto_0

    :sswitch_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x613a1dc4 -> :sswitch_3
        -0x613dd77 -> :sswitch_0
        0x4911004a -> :sswitch_1
        0x6d0983c0 -> :sswitch_2
    .end sparse-switch
.end method

.method public OooO0Oo()V
    .locals 4

    const-string v0, "\u06d9\u06dc\u06e7\u06e7\u06db\u06dc\u06d8\u06d9\u06e6\u06e6\u06d8\u06e8\u06eb\u06e1\u06df\u06e1\u06d6\u06ec\u06e7\u06ec\u06e2\u06ec\u06e1\u06d8\u06eb\u06d8\u06e7\u06e8\u06d8\u06d6\u06ec\u06df\u06d6\u06d8\u06e1\u06db\u06d8\u06df\u06da"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x1be

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x3cc

    const/16 v2, 0x220

    const v3, -0x2eabdf0e

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e8\u06eb\u06db\u06d7\u06ec\u06d8\u06db\u06eb\u06d8\u06db\u06df\u06e2\u06e1\u06d9\u06e4\u06e5\u06e7\u06d8\u06e2\u06ec\u06e7\u06dc\u06d6\u06e7\u06d8\u06e2\u06ec\u06e5\u06da\u06d6\u06d6\u06d8\u06da\u06e5\u06e6\u06d8\u06e6\u06d8\u06e1\u06df\u06e2\u06e4\u06e4\u06e5\u06d9"

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/FootView;->OoooOoo:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const-string v0, "\u06ec\u06e5\u06e6\u06d8\u06e2\u06e5\u06e6\u06d8\u06df\u06d8\u06db\u06d9\u06dc\u06d8\u06d8\u06ec\u06e8\u06d6\u06d8\u06e5\u06eb\u06e2\u06e1\u06dc\u06e2\u06dc\u06e5\u06ec\u06e1\u06d8\u06da\u06e6\u06eb\u06d9\u06e7\u06ec\u06e0\u06e0\u06eb"

    goto :goto_0

    :sswitch_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x583167d3 -> :sswitch_1
        -0x4a9572e0 -> :sswitch_2
        0x30712f4f -> :sswitch_0
    .end sparse-switch
.end method

.method public OooO0o(Landroid/view/View;)V
    .locals 4

    const-string v0, "\u06da\u06e4\u06eb\u06df\u06e8\u06d6\u06d8\u06d7\u06e0\u06e6\u06d8\u06e1\u06ec\u06d9\u06db\u06e8\u06e6\u06d9\u06e5\u06dc\u06d8\u06e4\u06dc\u06eb\u06e1\u06e5\u06da\u06e8\u06d8\u06d8\u06d8\u06db\u06e6\u06d8\u06e0\u06e7\u06d8\u06e6\u06d6\u06dc\u06e0\u06d8\u06e7\u06e7\u06e8\u06e6\u06d8\u06d7\u06e7\u06e7\u06da\u06da\u06e4\u06d7\u06d6\u06e1\u06d8\u06d7\u06da"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x16e

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x1b7

    const/16 v2, 0x357

    const v3, 0x728a421

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e7\u06d8\u06df\u06d9\u06d9\u06e2\u06eb\u06e2\u06e2\u06e0\u06e1\u06dc\u06d8\u06e8\u06db\u06d9\u06d6\u06d8\u06d9\u06e2\u06e0\u06e6\u06d8\u06d9\u06e6\u06e4\u06e4\u06e6\u06d9\u06e8\u06d6\u06e8\u06d8\u06ec\u06e6\u06e1\u06d8\u06e5\u06e8\u06e2\u06d8\u06e5\u06db\u06e2\u06dc\u06e4\u06e7\u06e4\u06d9\u06eb\u06e7"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06e0\u06ec\u06ec\u06e4\u06d9\u06e7\u06ec\u06da\u06e8\u06eb\u06df\u06d8\u06d8\u06e6\u06dc\u06d8\u06d8\u06ec\u06dc\u06da\u06e5\u06e0\u06d9\u06e4\u06d9\u06da\u06ec\u06ec\u06df\u06eb\u06dc\u06e6\u06e6\u06e7\u06e6\u06d8\u06df\u06df\u06dc\u06d8\u06e0\u06e8\u06e1\u06df\u06df\u06dc"

    goto :goto_0

    :sswitch_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x78f0b018 -> :sswitch_2
        0x4e614b82 -> :sswitch_0
        0x7c55cece -> :sswitch_1
    .end sparse-switch
.end method

.method public OooO0o0()V
    .locals 4

    const-string v0, "\u06e5\u06d6\u06e7\u06db\u06da\u06e0\u06dc\u06e6\u06dc\u06d8\u06d7\u06d8\u06db\u06df\u06dc\u06e2\u06d7\u06ec\u06e1\u06d8\u06ec\u06d6\u06e6\u06d8\u06d9\u06e0\u06d7\u06d8\u06e0\u06d8\u06e6\u06da\u06dc\u06e5\u06e6\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x36a

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x198

    const/16 v2, 0x36f

    const v3, -0x45f5f212

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06ec\u06dc\u06e5\u06d8\u06dc\u06e7\u06e6\u06e6\u06e4\u06db\u06ec\u06db\u06e7\u06e2\u06d9\u06dc\u06e4\u06da\u06dc\u06d8\u06d9\u06e5\u06d8\u06e6\u06d8\u06d9\u06db\u06ec\u06da\u06d6\u06e4\u06ec\u06d9\u06e5\u06e7\u06d8\u06db\u06dc\u06dc"

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/cyjh/elfin/ui/view/customview/loadwidget/swiperefresh/FootView;->OoooOoo:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const-string v0, "\u06e2\u06e1\u06e1\u06e1\u06d9\u06dc\u06d8\u06db\u06dc\u06eb\u06eb\u06e7\u06df\u06e1\u06d6\u06e0\u06e6\u06e6\u06d7\u06e5\u06e5\u06e4\u06df\u06da\u06e1\u06d8\u06da\u06e1\u06db\u06e7\u06d9\u06d7\u06ec\u06df\u06db\u06eb\u06e7\u06df"

    goto :goto_0

    :sswitch_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x51edd667 -> :sswitch_1
        -0x2186a9ac -> :sswitch_2
        -0x1a60a1a0 -> :sswitch_0
    .end sparse-switch
.end method

.method public getLayout()Landroid/view/View;
    .locals 4

    const-string v0, "\u06d9\u06d7\u06da\u06eb\u06d6\u06d9\u06e1\u06d9\u06e0\u06df\u06e8\u06ec\u06da\u06e4\u06d8\u06e6\u06ec\u06e5\u06e2\u06db\u06eb\u06eb\u06e2\u06d7\u06e6\u06e8\u06e1\u06e0\u06d9\u06d7"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x39e

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x200

    const/16 v2, 0x2c6

    const v3, -0x79a9f565

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d8\u06eb\u06d7\u06d9\u06e7\u06d6\u06e6\u06d6\u06d8\u06d8\u06e5\u06e8\u06e6\u06d8\u06dc\u06dc\u06d8\u06e0\u06d7\u06e1\u06eb\u06e6\u06d8\u06d8\u06e6\u06d7\u06d6\u06d8\u06e1\u06da\u06d7\u06d9\u06e5\u06e1\u06d8\u06e4\u06db\u06e4\u06d6\u06d6\u06e8\u06d8\u06e6\u06e4\u06db\u06e8\u06db\u06e0\u06ec\u06ec\u06e1\u06e2\u06ec\u06e0"

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c00ee

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x4c81a658 -> :sswitch_0
        0x317f36e9 -> :sswitch_1
    .end sparse-switch
.end method
