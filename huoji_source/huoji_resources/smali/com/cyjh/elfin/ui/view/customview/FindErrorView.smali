.class public Lcom/cyjh/elfin/ui/view/customview/FindErrorView;
.super Landroid/widget/LinearLayout;


# instance fields
.field public OoooOoO:Landroid/content/Context;

.field public OoooOoo:Landroid/widget/ImageView;

.field public Ooooo00:Landroid/widget/TextView;

.field public Ooooo0o:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/cyjh/elfin/ui/view/customview/FindErrorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/cyjh/elfin/ui/view/customview/FindErrorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object p1, p0, Lcom/cyjh/elfin/ui/view/customview/FindErrorView;->OoooOoO:Landroid/content/Context;

    invoke-direct {p0}, Lcom/cyjh/elfin/ui/view/customview/FindErrorView;->OooO00o()V

    return-void
.end method

.method private OooO00o()V
    .locals 4

    const-string v0, "\u06db\u06d8\u06e4\u06e5\u06e6\u06e8\u06d8\u06e4\u06e8\u06e0\u06e1\u06e6\u06d9\u06e0\u06e6\u06e4\u06ec\u06e0\u06e5\u06dc\u06e4\u06d6\u06d7\u06d8\u06e5\u06d8\u06d8\u06e1\u06ec\u06dc\u06e4\u06df\u06e7\u06e5\u06d8\u06d8\u06d7\u06d9\u06d6\u06d8\u06e6\u06d7\u06e1\u06d8\u06e4\u06e5\u06d8\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x15b

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x293

    const/16 v2, 0x222

    const v3, -0x39db2cda

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e7\u06df\u06d7\u06da\u06e4\u06e1\u06d9\u06e8\u06d8\u06da\u06eb\u06e0\u06dc\u06e7\u06d7\u06e6\u06db\u06df\u06e8\u06df\u06db\u06e0\u06d7\u06ec\u06d9\u06eb\u06e5\u06d8\u06e6\u06eb\u06ec\u06d7\u06d6\u06dc\u06d8\u06dc\u06e2\u06e8\u06d7\u06eb\u06dc\u06e1\u06e8\u06ec"

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/cyjh/elfin/ui/view/customview/FindErrorView;->OoooOoO:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f0c0143

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const-string v0, "\u06d8\u06e6\u06e1\u06d8\u06d7\u06e0\u06e2\u06da\u06d9\u06da\u06d7\u06d9\u06dc\u06d8\u06d8\u06e7\u06e0\u06e0\u06e0\u06e4\u06e0\u06e5\u06d8\u06e5\u06e5\u06e7\u06e2\u06d9\u06e8\u06e8\u06dc\u06e8\u06d8\u06e8\u06e8\u06db\u06d9\u06e1\u06e8\u06d8\u06e7\u06ec\u06e5\u06e5\u06e7\u06e6\u06da\u06dc\u06e2\u06d7\u06e1\u06e5\u06d8"

    goto :goto_0

    :sswitch_2
    const v0, 0x7f09049b

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/cyjh/elfin/ui/view/customview/FindErrorView;->OoooOoo:Landroid/widget/ImageView;

    const-string v0, "\u06df\u06e2\u06d9\u06ec\u06eb\u06e8\u06d7\u06dc\u06e1\u06e7\u06dc\u06eb\u06d8\u06e0\u06e1\u06d8\u06df\u06e7\u06e7\u06e1\u06e8\u06e1\u06e5\u06eb\u06d6\u06d8\u06e4\u06e6\u06e6\u06e7\u06d9\u06e6\u06e5\u06e1\u06e1\u06d8\u06db\u06ec\u06e8\u06e5\u06e0\u06e2\u06d8\u06d6\u06e2\u06e2\u06e4\u06eb\u06d7\u06ec\u06e0\u06e4\u06e8\u06df\u06e4\u06da\u06e2"

    goto :goto_0

    :sswitch_3
    const v0, 0x7f09049c

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cyjh/elfin/ui/view/customview/FindErrorView;->Ooooo00:Landroid/widget/TextView;

    const-string v0, "\u06e8\u06e8\u06e5\u06d6\u06e1\u06e7\u06eb\u06e6\u06d8\u06e4\u06dc\u06e1\u06d8\u06eb\u06d8\u06e7\u06df\u06eb\u06e5\u06d8\u06e7\u06e1\u06e1\u06d8\u06d9\u06ec\u06dc\u06e2\u06da\u06df\u06d8\u06da\u06e7\u06e8\u06d9\u06e8\u06d8\u06e1\u06dc\u06e5\u06d8\u06eb\u06d6\u06d9\u06eb\u06e5\u06d8"

    goto :goto_0

    :sswitch_4
    const v0, 0x7f09049a

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cyjh/elfin/ui/view/customview/FindErrorView;->Ooooo0o:Landroid/widget/TextView;

    const-string v0, "\u06d7\u06e2\u06e5\u06e8\u06d9\u06d6\u06e1\u06e5\u06da\u06e4\u06e0\u06d6\u06d8\u06e2\u06d6\u06d8\u06e7\u06dc\u06d9\u06e7\u06eb\u06e6\u06d9\u06e2\u06e5\u06d8\u06da\u06ec\u06db\u06dc\u06e8\u06dc\u06d6\u06e1\u06d8\u06dc\u06dc\u06d7\u06d9\u06e2\u06e1\u06d8\u06d7\u06e8\u06db\u06e1\u06d9\u06e2\u06e6\u06e4\u06dc"

    goto :goto_0

    :sswitch_5
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x47f68d43 -> :sswitch_4
        -0x46eace8c -> :sswitch_5
        -0x1baf103d -> :sswitch_2
        -0x166ef107 -> :sswitch_3
        0x36b90663 -> :sswitch_1
        0x561a5fd2 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public setErrorImg(I)V
    .locals 4

    const-string v0, "\u06d7\u06e1\u06db\u06e4\u06e2\u06e0\u06da\u06d8\u06d8\u06db\u06df\u06d6\u06e6\u06e7\u06da\u06eb\u06e8\u06e8\u06e7\u06d8\u06e7\u06d8\u06dc\u06e7\u06d8\u06d8\u06e8\u06e4\u06da\u06e5\u06e2\u06e8\u06e8\u06e1\u06dc\u06d8\u06e6\u06d9\u06d6"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x29b

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x139

    const/16 v2, 0x17f

    const v3, 0x7a7afa65

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06db\u06e4\u06e2\u06d8\u06ec\u06e7\u06d6\u06e1\u06df\u06e1\u06dc\u06e4\u06d6\u06df\u06da\u06eb\u06e0\u06dc\u06e1\u06da\u06da\u06dc\u06e7\u06d9\u06e5\u06e0\u06ec\u06ec\u06e1\u06db\u06e4\u06e7\u06da\u06dc\u06d8\u06d6\u06dc\u06d6\u06e6\u06db\u06e5\u06da\u06e0\u06dc\u06dc\u06dc"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06e4\u06e8\u06df\u06e1\u06e1\u06e5\u06df\u06da\u06d6\u06df\u06e4\u06e0\u06df\u06e2\u06e0\u06d6\u06e6\u06d6\u06d8\u06e6\u06da\u06e8\u06d8\u06e4\u06e8\u06e6\u06d8\u06e0\u06dc\u06e2\u06ec\u06df\u06dc\u06e0\u06da\u06e8\u06d8\u06df\u06dc\u06dc\u06d8"

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/cyjh/elfin/ui/view/customview/FindErrorView;->OoooOoo:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    const-string v0, "\u06e2\u06d8\u06d8\u06d8\u06e8\u06e8\u06d8\u06e4\u06d8\u06e4\u06e6\u06d7\u06e8\u06d8\u06e7\u06d6\u06d6\u06e2\u06e6\u06d8\u06df\u06e7\u06e6\u06d8\u06e6\u06e7\u06e6\u06e8\u06e5\u06d8\u06e6\u06eb\u06d6\u06d8\u06da\u06e0\u06da\u06d9\u06da\u06df\u06e6\u06d9\u06e1\u06d8\u06e0\u06d6\u06e7\u06d8\u06d7\u06e0\u06db\u06d9\u06e2\u06e1\u06d8\u06ec\u06e2\u06e6\u06da\u06e0\u06dc"

    goto :goto_0

    :sswitch_3
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6b7b385f -> :sswitch_0
        0xb92b3bd -> :sswitch_2
        0x1bbe1432 -> :sswitch_1
        0x5fb78e12 -> :sswitch_3
    .end sparse-switch
.end method

.method public setErrorTips(I)V
    .locals 4

    const-string v0, "\u06e2\u06e2\u06db\u06d7\u06e6\u06e1\u06d8\u06df\u06eb\u06d6\u06e8\u06d7\u06e5\u06df\u06e4\u06e6\u06d8\u06e8\u06dc\u06ec\u06e4\u06e2\u06e0\u06d8\u06e0\u06e8\u06e2\u06db\u06e8\u06eb\u06d9\u06d7\u06df\u06e7\u06e2\u06e1\u06e0\u06e1\u06da\u06e5\u06d6\u06e2\u06e7\u06dc\u06d8\u06dc\u06d9\u06e1\u06d8\u06e0\u06ec\u06db"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x32

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x195

    const/16 v2, 0x290

    const v3, 0x6b1dc87e

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e0\u06db\u06e1\u06d8\u06e8\u06e4\u06d7\u06df\u06d9\u06db\u06d9\u06e5\u06da\u06e5\u06e1\u06eb\u06ec\u06dc\u06e1\u06e0\u06eb\u06d6\u06d9\u06eb\u06e0\u06d9\u06d8\u06dc\u06e1\u06e7\u06da\u06e4\u06d8\u06d7\u06d7\u06df\u06da\u06db\u06eb\u06d6\u06e7\u06e0\u06df\u06ec\u06d6\u06e8\u06d6\u06e1\u06e1\u06d8\u06e4\u06e2\u06e1\u06e4\u06da\u06e6\u06d8"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06e7\u06eb\u06d6\u06e6\u06e7\u06ec\u06db\u06e6\u06e2\u06e6\u06e2\u06e1\u06e7\u06d7\u06db\u06e0\u06d7\u06df\u06df\u06e6\u06dc\u06d8\u06e6\u06e1\u06e6\u06d8\u06db\u06e2\u06dc\u06d8\u06e8\u06e5\u06e7"

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/cyjh/elfin/ui/view/customview/FindErrorView;->Ooooo00:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    const-string v0, "\u06e7\u06d8\u06e6\u06dc\u06db\u06e2\u06e6\u06e4\u06d6\u06e8\u06dc\u06e8\u06e7\u06e6\u06d8\u06d8\u06db\u06e6\u06e1\u06d8\u06d6\u06eb\u06db\u06e0\u06db\u06d9\u06e4\u06d8\u06dc\u06db\u06db\u06da"

    goto :goto_0

    :sswitch_3
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6e11a6e6 -> :sswitch_2
        -0x32fbb856 -> :sswitch_0
        -0x1171c8bb -> :sswitch_1
        0xfef3f1c -> :sswitch_3
    .end sparse-switch
.end method
