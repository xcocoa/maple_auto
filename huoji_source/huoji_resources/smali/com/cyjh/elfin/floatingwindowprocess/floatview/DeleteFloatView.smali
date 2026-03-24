.class public Lcom/cyjh/elfin/floatingwindowprocess/floatview/DeleteFloatView;
.super Landroid/widget/LinearLayout;


# instance fields
.field private OoooOoO:Landroid/view/WindowManager$LayoutParams;

.field private OoooOoo:Landroid/widget/TextView;

.field private Ooooo00:Landroid/widget/ImageView;

.field private Ooooo0o:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/DeleteFloatView;->OooO0O0()V

    invoke-direct {p0}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/DeleteFloatView;->OooO0OO()V

    return-void
.end method

.method private OooO0O0()V
    .locals 4

    const-string v0, "\u06da\u06e5\u06e5\u06d8\u06da\u06e4\u06d9\u06d7\u06d7\u06e8\u06d8\u06df\u06e0\u06e1\u06e1\u06e7\u06e2\u06e8\u06e1\u06dc\u06d8\u06e5\u06e2\u06e6\u06d8\u06d7\u06da\u06d6\u06e2\u06d9\u06e4\u06db\u06db\u06e1\u06d9\u06d9\u06d8\u06d8\u06dc\u06e4\u06e6\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x182

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x1e9

    const/4 v2, 0x2

    const v3, -0x46c5c72b

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e0\u06e4\u06eb\u06dc\u06db\u06e1\u06d8\u06e0\u06d9\u06e6\u06d8\u06df\u06e5\u06d8\u06e5\u06d7\u06e1\u06e5\u06dc\u06ec\u06e1\u06da\u06e8\u06d8\u06e2\u06d9\u06e5\u06d8\u06e8\u06d6\u06d8\u06dc\u06d9\u06e1\u06da\u06db\u06d6\u06e5\u06e8\u06ec\u06db\u06d7\u06e0\u06d6\u06e1\u06d8\u06d8"

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c00c6

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const-string v0, "\u06e7\u06e7\u06e8\u06d8\u06db\u06e2\u06db\u06db\u06e6\u06d7\u06e5\u06e7\u06e6\u06ec\u06dc\u06e6\u06d6\u06e0\u06e2\u06e8\u06e1\u06e7\u06d8\u06e2\u06e1\u06e7\u06d8\u06d9\u06ec\u06dc\u06d8\u06e5\u06d7\u06e0\u06db\u06ec\u06e1\u06d7\u06dc\u06d7"

    goto :goto_0

    :sswitch_2
    const v0, 0x7f09026e

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/DeleteFloatView;->OoooOoo:Landroid/widget/TextView;

    const-string v0, "\u06ec\u06d9\u06e4\u06e4\u06e7\u06db\u06e5\u06d9\u06eb\u06d9\u06eb\u06da\u06e8\u06e5\u06d8\u06d8\u06e4\u06db\u06e6\u06e4\u06e1\u06d9\u06e0\u06e7\u06d7\u06e8\u06e8\u06d8\u06df\u06d8\u06e4\u06e7\u06e5\u06e1\u06e8\u06da\u06ec"

    goto :goto_0

    :sswitch_3
    const v0, 0x7f09026c

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/DeleteFloatView;->Ooooo00:Landroid/widget/ImageView;

    const-string v0, "\u06e1\u06d8\u06dc\u06d8\u06da\u06e1\u06df\u06e6\u06dc\u06eb\u06d7\u06e4\u06db\u06e8\u06e5\u06eb\u06da\u06da\u06eb\u06e2\u06da\u06d8\u06d8\u06e7\u06da\u06db\u06dc\u06eb\u06ec\u06da\u06dc\u06eb\u06da\u06e0\u06e2\u06e6\u06ec\u06e8\u06d8"

    goto :goto_0

    :sswitch_4
    const v0, 0x7f09026d

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/DeleteFloatView;->Ooooo0o:Landroid/widget/LinearLayout;

    const-string v0, "\u06da\u06d7\u06df\u06df\u06db\u06d9\u06e5\u06e0\u06e1\u06d9\u06d9\u06da\u06e0\u06e5\u06d8\u06d8\u06dc\u06e2\u06e4\u06e0\u06d7\u06e0\u06ec\u06e1\u06db\u06e2\u06eb\u06e8\u06e0\u06e8\u06d8\u06d8\u06d9\u06e1\u06eb\u06e5\u06e5\u06d8\u06e2\u06e7\u06e1\u06db\u06d8\u06d9"

    goto :goto_0

    :sswitch_5
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const-string v0, "\u06d7\u06e7\u06e4\u06e4\u06d8\u06e6\u06d8\u06df\u06da\u06d6\u06d8\u06d7\u06e8\u06e6\u06d7\u06dc\u06d7\u06e0\u06d6\u06d9\u06e8\u06d6\u06e6\u06d6\u06e6\u06e5\u06d8\u06df\u06db\u06d8\u06e2\u06e2\u06da\u06d8\u06ec\u06e8\u06e2\u06e6\u06df\u06ec\u06eb\u06d6\u06e7\u06d6\u06e8"

    goto :goto_0

    :sswitch_6
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x716ebe9e -> :sswitch_1
        -0x56f1259e -> :sswitch_3
        -0x1384d284 -> :sswitch_0
        0x53b4ef5 -> :sswitch_2
        0xe7a8d8d -> :sswitch_4
        0x6e49a08f -> :sswitch_6
        0x7b5b6589 -> :sswitch_5
    .end sparse-switch
.end method

.method private OooO0OO()V
    .locals 10

    const/4 v2, 0x0

    const/4 v7, 0x0

    const-string v0, "\u06e8\u06da\u06da\u06d6\u06e8\u06e8\u06e8\u06e8\u06d7\u06e7\u06e5\u06e7\u06d8\u06d9\u06e8\u06e7\u06d8\u06ec\u06e2\u06e1\u06d8\u06e7\u06e5\u06e2\u06db\u06e5\u06eb\u06d8\u06e6\u06d6\u06d9\u06e2\u06e6\u06eb\u06e4\u06db\u06e7\u06e6\u06d6\u06d8\u06e5\u06d8\u06db\u06e0\u06e4\u06e8\u06d8\u06ec\u06da\u06e5\u06e8\u06e4\u06db\u06eb\u06d6\u06e7\u06d8\u06e8\u06ec\u06dc"

    move v1, v2

    move v3, v2

    move v4, v2

    move v5, v2

    move v6, v2

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v8, 0x5e

    xor-int/2addr v2, v8

    xor-int/lit8 v2, v2, 0x20

    const/16 v8, 0x241

    const v9, -0x1364bf37

    xor-int/2addr v2, v8

    xor-int/2addr v2, v9

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06da\u06e8\u06e8\u06d8\u06d6\u06d9\u06e5\u06d8\u06e0\u06e1\u06da\u06d9\u06ec\u06e8\u06d8\u06d9\u06da\u06d6\u06d8\u06da\u06d7\u06dc\u06d9\u06e0\u06e2\u06e0\u06e1\u06db\u06e8\u06d7\u06e4\u06e6\u06db\u06dc\u06d8\u06ec\u06e4\u06e1\u06eb\u06d7\u06ec\u06df\u06e4\u06e5\u06d8\u06d9\u06dc\u06e1\u06e4\u06e4\u06e0\u06d6\u06d7\u06e1\u06d8\u06dc\u06e1\u06e1\u06d6\u06d9\u06e5"

    goto :goto_0

    :sswitch_1
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v2}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const-string v0, "\u06eb\u06db\u06e1\u06d8\u06e0\u06d6\u06d8\u06e0\u06e4\u06e6\u06e4\u06e8\u06dc\u06d8\u06e8\u06dc\u06e8\u06d6\u06e0\u06d8\u06d8\u06ec\u06e1\u06dc\u06d8\u06ec\u06e7\u06da\u06e6\u06e1\u06db\u06e8\u06dc\u06e2\u06d8\u06df\u06d8\u06d8\u06e5\u06e0\u06d7"

    move-object v7, v2

    goto :goto_0

    :sswitch_2
    iput-object v7, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/DeleteFloatView;->OoooOoO:Landroid/view/WindowManager$LayoutParams;

    const-string v0, "\u06e4\u06e2\u06e1\u06d8\u06d9\u06e5\u06eb\u06eb\u06e1\u06e7\u06da\u06d7\u06d8\u06d9\u06d9\u06eb\u06d6\u06df\u06d6\u06d8\u06db\u06df\u06e1\u06d8\u06eb\u06ec\u06e5\u06e1\u06db\u06da\u06e4\u06d8\u06e4\u06dc\u06e6\u06da\u06d6\u06e1\u06dc\u06e7\u06e6\u06d8\u06d9\u06d6\u06e5\u06e4\u06d6\u06da\u06df\u06e0\u06d6\u06d8\u06e5\u06d8\u06d8\u06e4\u06e8\u06e1\u06d8"

    goto :goto_0

    :sswitch_3
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v0, "\u06d9\u06d6\u06e4\u06df\u06d6\u06d6\u06d6\u06dc\u06e5\u06e7\u06e5\u06dc\u06da\u06eb\u06e7\u06e4\u06e8\u06dc\u06d8\u06e8\u06e2\u06e4\u06e7\u06e8\u06df\u06d8\u06ec\u06e2\u06d6\u06d8\u06e6\u06d8\u06e0\u06e1\u06d6\u06d6\u06e8\u06e4"

    move v6, v2

    goto :goto_0

    :sswitch_4
    const v2, -0x2e293598

    const-string v0, "\u06e2\u06df\u06d6\u06ec\u06dc\u06d9\u06e7\u06dc\u06d8\u06d8\u06da\u06d6\u06d6\u06d8\u06e2\u06d8\u06ec\u06eb\u06eb\u06e6\u06d8\u06e6\u06d8\u06e6\u06e1\u06ec\u06e5\u06db\u06d9\u06e6\u06d9\u06d7\u06e1\u06d8\u06df\u06e7\u06e1\u06df\u06d9\u06e8\u06e1\u06e8\u06da\u06da\u06e2\u06da\u06e8\u06d9\u06e4\u06e8\u06d6\u06d9\u06e2\u06da\u06e6\u06d9\u06df\u06e7"

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v8

    xor-int/2addr v8, v2

    sparse-switch v8, :sswitch_data_1

    goto :goto_1

    :sswitch_5
    const-string v0, "\u06db\u06ec\u06e6\u06df\u06e6\u06d9\u06df\u06e4\u06dc\u06d8\u06d6\u06da\u06e0\u06da\u06eb\u06e8\u06df\u06ec\u06e8\u06d8\u06eb\u06e6\u06e6\u06d8\u06e8\u06d7\u06d9\u06ec\u06d6\u06e2\u06d7\u06d9\u06da\u06e6\u06e5\u06d9\u06e5\u06e8\u06e7\u06db\u06eb\u06d6\u06d9\u06d6\u06d6\u06e5\u06e4\u06d7\u06e2\u06e0\u06e5\u06d8"

    goto :goto_1

    :sswitch_6
    const-string v0, "\u06e1\u06ec\u06d6\u06e7\u06d9\u06d9\u06e7\u06d8\u06db\u06d6\u06e4\u06d9\u06e5\u06d6\u06e0\u06d7\u06e7\u06da\u06d6\u06ec\u06da\u06e2\u06e4\u06d8\u06d8\u06ec\u06d9\u06dc\u06e1\u06d8\u06df\u06dc\u06d6\u06e7\u06d8\u06e5\u06d6\u06e7\u06d9\u06db\u06d8\u06d7\u06eb\u06d9\u06e4\u06e8\u06d7\u06d7\u06ec\u06e2\u06e1\u06d9\u06d7\u06df\u06e8\u06e2"

    goto :goto_1

    :sswitch_7
    const v8, 0x797eab7e

    const-string v0, "\u06e6\u06da\u06d9\u06d7\u06dc\u06e7\u06d8\u06e1\u06d9\u06d7\u06d6\u06e5\u06df\u06da\u06eb\u06da\u06e8\u06da\u06e0\u06e7\u06df\u06e6\u06d8\u06e0\u06e7\u06d9\u06d9\u06df\u06e4\u06e1\u06e1\u06d7"

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v9

    xor-int/2addr v9, v8

    sparse-switch v9, :sswitch_data_2

    goto :goto_2

    :sswitch_8
    const-string v0, "\u06e7\u06eb\u06d6\u06d8\u06e0\u06d9\u06dc\u06d8\u06db\u06e8\u06d8\u06da\u06e7\u06d8\u06e2\u06e0\u06df\u06e5\u06e4\u06e1\u06e8\u06dc\u06e8\u06d8\u06df\u06da\u06db\u06d7\u06db\u06ec\u06e8\u06ec\u06da\u06e5\u06e2\u06e5\u06da\u06d7\u06e5\u06e6\u06e0\u06e6\u06d8\u06d7\u06e0\u06d8\u06e5\u06df\u06e6\u06d8\u06e6\u06e4\u06e5\u06e0\u06dc\u06e1\u06d8\u06dc\u06e7"

    goto :goto_2

    :cond_0
    const-string v0, "\u06eb\u06e4\u06e1\u06d7\u06eb\u06e8\u06e5\u06df\u06e1\u06df\u06d9\u06e0\u06e2\u06d9\u06e1\u06d8\u06e1\u06e1\u06dc\u06e5\u06e6\u06d7\u06d6\u06db\u06e4\u06ec\u06d8\u06e0\u06db\u06d8\u06d6\u06d8\u06dc\u06d8\u06d8\u06e0\u06e5\u06da\u06ec\u06e6\u06df\u06d7\u06ec\u06e7\u06e1\u06e8\u06e5\u06d8\u06e6\u06e0\u06e2\u06e6\u06da\u06e6\u06df\u06e5\u06e4"

    goto :goto_2

    :sswitch_9
    const/16 v0, 0x1a

    if-lt v6, v0, :cond_0

    const-string v0, "\u06da\u06da\u06e8\u06d8\u06d9\u06d7\u06e6\u06d8\u06dc\u06d6\u06d7\u06d9\u06e4\u06e2\u06eb\u06ec\u06d7\u06e4\u06e8\u06dc\u06d7\u06e6\u06e0\u06ec\u06da\u06e4\u06d7\u06e8\u06d8\u06d9\u06e0\u06d7\u06d8\u06d6\u06d6\u06d9\u06d6\u06d8"

    goto :goto_2

    :sswitch_a
    const-string v0, "\u06d8\u06dc\u06e5\u06d8\u06d8\u06d7\u06db\u06e5\u06e2\u06da\u06dc\u06e0\u06d8\u06ec\u06dc\u06d8\u06e5\u06e2\u06e1\u06e1\u06db\u06dc\u06e4\u06ec\u06e1\u06d8\u06d6\u06da\u06e4\u06d8\u06e0\u06e6\u06d8\u06d7\u06e1\u06e1\u06d9\u06e0\u06e5\u06d8\u06dc\u06d8\u06df\u06d9\u06ec"

    goto :goto_1

    :sswitch_b
    const-string v0, "\u06d7\u06df\u06dc\u06df\u06db\u06e8\u06ec\u06e6\u06e1\u06d8\u06e2\u06dc\u06e6\u06d8\u06e5\u06df\u06e5\u06d8\u06e5\u06db\u06d9\u06eb\u06e8\u06e7\u06d8\u06ec\u06d9\u06e4\u06da\u06e8\u06e7\u06e6\u06d8\u06db\u06e7\u06e4\u06e6\u06eb\u06ec\u06e1\u06d8\u06e0\u06e0\u06dc\u06d7\u06e6\u06d8"

    goto :goto_0

    :sswitch_c
    const/16 v5, 0x7f6

    const-string v0, "\u06d7\u06d7\u06dc\u06d8\u06d6\u06da\u06df\u06e0\u06e6\u06e2\u06e4\u06d6\u06e1\u06d8\u06d9\u06e2\u06e1\u06eb\u06db\u06d9\u06d7\u06dc\u06d8\u06e4\u06d9\u06d6\u06e4\u06e5\u06e7\u06ec\u06d7\u06e6\u06e0\u06eb\u06ec\u06e6\u06e4\u06d6\u06d8\u06e7\u06e7\u06d9\u06e4\u06dc\u06e6"

    goto :goto_0

    :sswitch_d
    const-string v0, "\u06e2\u06e6\u06d6\u06e6\u06d8\u06dc\u06dc\u06d8\u06ec\u06e0\u06e1\u06df\u06e2\u06eb\u06ec\u06d6\u06d6\u06da\u06d6\u06d6\u06e4\u06e5\u06eb\u06da\u06e0\u06e4\u06df\u06e0\u06e1\u06e0\u06e4\u06e6\u06df\u06e8\u06df\u06d6\u06d8\u06e8\u06e8\u06e5\u06d9\u06d6\u06d7\u06ec\u06d6\u06e4\u06d6\u06d6\u06eb"

    move v4, v5

    goto :goto_0

    :sswitch_e
    iput v4, v7, Landroid/view/WindowManager$LayoutParams;->type:I

    const-string v0, "\u06d9\u06dc\u06e5\u06d8\u06d8\u06d7\u06d8\u06d9\u06eb\u06df\u06d6\u06e7\u06dc\u06d8\u06eb\u06e8\u06dc\u06e2\u06d7\u06d8\u06d8\u06df\u06eb\u06e4\u06e6\u06e4\u06d9\u06e4\u06e1\u06dc\u06e8\u06df\u06d7\u06e1\u06eb\u06d7\u06e8\u06d9\u06d8\u06d8"

    goto :goto_0

    :sswitch_f
    const v2, 0x7ff89220

    const-string v0, "\u06d9\u06e1\u06d6\u06e6\u06d8\u06d8\u06e8\u06da\u06df\u06e8\u06e6\u06e8\u06e0\u06e8\u06e7\u06d8\u06e1\u06da\u06e4\u06e0\u06e6\u06e2\u06db\u06e1\u06eb\u06e7\u06e1\u06e8\u06d8\u06e4\u06da\u06d9\u06e4\u06ec\u06e6\u06d8\u06e1\u06d9\u06e7\u06e8\u06d7\u06dc\u06df\u06e7\u06d6\u06db\u06ec\u06db\u06e7\u06da\u06e5\u06e8\u06dc\u06d9\u06e6"

    :goto_3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v8

    xor-int/2addr v8, v2

    sparse-switch v8, :sswitch_data_3

    goto :goto_3

    :sswitch_10
    const v8, -0x7a23e576

    const-string v0, "\u06da\u06ec\u06e2\u06e1\u06e4\u06e1\u06d8\u06da\u06e6\u06eb\u06e6\u06d8\u06df\u06e1\u06e7\u06d8\u06e5\u06e8\u06e0\u06e8\u06e5\u06dc\u06d8\u06eb\u06da\u06e4\u06e8\u06e0\u06e7\u06e1\u06d6\u06d6\u06d8\u06ec\u06eb\u06d8\u06d8\u06df\u06ec\u06e1\u06d8\u06e5\u06d9\u06d6\u06d9\u06e5\u06d8"

    :goto_4
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v9

    xor-int/2addr v9, v8

    sparse-switch v9, :sswitch_data_4

    goto :goto_4

    :sswitch_11
    const-string v0, "\u06d6\u06df\u06d6\u06d8\u06e0\u06e1\u06d8\u06d8\u06da\u06da\u06d8\u06d8\u06dc\u06d6\u06e1\u06e0\u06dc\u06dc\u06d8\u06e4\u06e5\u06e5\u06e6\u06ec\u06eb\u06db\u06d8\u06d6\u06d8\u06eb\u06e2\u06e0\u06df\u06d7\u06e1\u06eb\u06e8\u06ec\u06d6\u06e6\u06d9\u06ec\u06e2\u06e1\u06d8\u06da\u06d6\u06e6\u06d8"

    goto :goto_3

    :cond_1
    const-string v0, "\u06d8\u06e4\u06d8\u06df\u06d6\u06e7\u06d8\u06e2\u06e8\u06d9\u06e7\u06df\u06d9\u06db\u06e7\u06dc\u06d8\u06e2\u06e4\u06da\u06dc\u06d7\u06e1\u06d8\u06e4\u06e2\u06e0\u06e5\u06d6\u06dc\u06e0\u06e6\u06e1\u06d6\u06e6\u06da\u06e6\u06d9\u06d7\u06e8\u06dc\u06e1\u06ec\u06db\u06e1\u06d8"

    goto :goto_4

    :sswitch_12
    const/16 v0, 0x13

    if-lt v6, v0, :cond_1

    const-string v0, "\u06d8\u06d7\u06e5\u06d8\u06e0\u06e7\u06ec\u06eb\u06eb\u06e1\u06eb\u06d7\u06e5\u06e0\u06dc\u06e7\u06d8\u06e5\u06ec\u06e1\u06d8\u06e1\u06e4\u06e5\u06e5\u06e5\u06d9\u06ec\u06db\u06d8\u06d8\u06e6\u06d8\u06d9"

    goto :goto_4

    :sswitch_13
    const-string v0, "\u06e2\u06d8\u06db\u06e7\u06e7\u06d8\u06d8\u06e4\u06e6\u06da\u06e2\u06e0\u06e5\u06e7\u06df\u06d6\u06e5\u06e7\u06e0\u06e7\u06d6\u06e8\u06d8\u06e0\u06e8\u06e6\u06e1\u06df\u06dc\u06da\u06e6\u06d8\u06e7\u06e2\u06d6\u06e0\u06e4\u06e6\u06d8\u06e2\u06d9\u06d8\u06d8\u06e0\u06d7\u06da\u06d8\u06e7\u06d8\u06d8\u06d9\u06ec\u06dc\u06dc\u06eb\u06e4\u06e0\u06d9\u06df"

    goto :goto_4

    :sswitch_14
    const-string v0, "\u06d9\u06db\u06e0\u06e8\u06e1\u06df\u06dc\u06eb\u06e5\u06e0\u06da\u06d9\u06d8\u06e5\u06d6\u06db\u06d9\u06e7\u06e7\u06d6\u06e5\u06d8\u06e4\u06d7\u06d7\u06d6\u06db\u06e1\u06d8\u06d8\u06e1\u06df\u06dc\u06e2\u06e4\u06ec\u06e0\u06df\u06d9\u06db\u06d8\u06dc\u06db\u06d9"

    goto :goto_3

    :sswitch_15
    const-string v0, "\u06e8\u06dc\u06eb\u06d6\u06e2\u06e4\u06da\u06e2\u06d7\u06e4\u06e6\u06e2\u06e5\u06e4\u06df\u06e4\u06e0\u06e0\u06dc\u06dc\u06d8\u06e0\u06df\u06e8\u06e8\u06d6\u06db\u06d6\u06e1\u06d8\u06e1\u06e2\u06d8\u06db\u06e5\u06e0\u06e2\u06ec\u06e1\u06e8\u06da\u06e1\u06e6\u06eb\u06e0\u06db\u06d8\u06e7\u06d8"

    goto :goto_3

    :sswitch_16
    const-string v0, "\u06d9\u06d7\u06e6\u06d8\u06d9\u06e5\u06e1\u06d8\u06d6\u06e6\u06e7\u06e5\u06e7\u06d6\u06da\u06d8\u06d6\u06d8\u06e8\u06dc\u06e8\u06e0\u06d6\u06e6\u06d8\u06e4\u06df\u06e5\u06e8\u06e1\u06eb\u06e8\u06e2\u06e2\u06e0\u06e8\u06dc\u06df\u06d6\u06e6\u06d8\u06e0\u06d6\u06e5\u06d8\u06e0\u06d9\u06e6\u06ec\u06ec\u06ec\u06e2\u06e1\u06da"

    goto/16 :goto_0

    :sswitch_17
    const v2, -0x7b13577d

    const-string v0, "\u06e8\u06e6\u06d6\u06d8\u06d8\u06d6\u06df\u06e8\u06d9\u06da\u06e0\u06df\u06d7\u06e5\u06d8\u06da\u06e8\u06e6\u06e2\u06e1\u06e5\u06d9\u06e6\u06d6\u06d8\u06d8\u06da\u06ec\u06dc\u06d8\u06db\u06eb\u06eb\u06ec\u06e6\u06d7\u06e5\u06e2\u06e8\u06d8\u06e5\u06e7\u06e4\u06e7\u06e7\u06e5\u06e7\u06d8\u06eb\u06db\u06e4\u06ec\u06e8\u06e2\u06e5\u06d9\u06eb\u06d6\u06d8"

    :goto_5
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v8

    xor-int/2addr v8, v2

    sparse-switch v8, :sswitch_data_5

    goto :goto_5

    :sswitch_18
    const v8, -0xf5761aa

    const-string v0, "\u06eb\u06dc\u06e1\u06e6\u06e8\u06e5\u06df\u06e8\u06dc\u06d8\u06e1\u06e1\u06e7\u06d9\u06eb\u06e1\u06da\u06e7\u06e8\u06e5\u06d9\u06da\u06e7\u06e1\u06ec\u06d6\u06da\u06e4\u06db\u06e0\u06e2\u06da\u06e6\u06e6\u06d8\u06d9\u06da\u06eb\u06d9\u06da\u06d7\u06d9\u06df\u06db\u06da\u06e2\u06e5\u06d6\u06df\u06e4\u06e4\u06e7\u06da\u06e6\u06dc"

    :goto_6
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v9

    xor-int/2addr v9, v8

    sparse-switch v9, :sswitch_data_6

    goto :goto_6

    :sswitch_19
    const-string v0, "\u06da\u06e0\u06d8\u06e5\u06d8\u06ec\u06da\u06e0\u06d7\u06d9\u06ec\u06e1\u06d8\u06df\u06dc\u06dc\u06d8\u06d7\u06e8\u06eb\u06d7\u06e2\u06db\u06e0\u06eb\u06df\u06d7\u06e4\u06e1\u06da\u06ec\u06e6\u06d8\u06d6\u06e4\u06e2\u06e1\u06e0\u06e1\u06d8"

    goto :goto_6

    :sswitch_1a
    const-string v0, "\u06d8\u06df\u06df\u06db\u06e2\u06e2\u06e6\u06e0\u06e2\u06eb\u06dc\u06d6\u06d8\u06df\u06d6\u06d8\u06e7\u06dc\u06e5\u06d8\u06ec\u06e4\u06d6\u06da\u06e5\u06e6\u06d8\u06db\u06d8\u06e6\u06d9\u06e1\u06d7\u06d6\u06db\u06e2\u06e8\u06da\u06e8\u06e2\u06e0\u06d8\u06e0\u06dc\u06e7\u06d6\u06dc\u06da\u06da\u06da"

    goto :goto_5

    :cond_2
    const-string v0, "\u06e8\u06da\u06da\u06e5\u06e2\u06e1\u06da\u06d9\u06e8\u06e5\u06dc\u06e5\u06d8\u06ec\u06d8\u06e1\u06e5\u06df\u06e5\u06da\u06e5\u06db\u06db\u06ec\u06e2\u06e6\u06da\u06ec\u06ec\u06e6\u06d8"

    goto :goto_6

    :sswitch_1b
    const/16 v0, 0x18

    if-ge v6, v0, :cond_2

    const-string v0, "\u06e1\u06e0\u06e4\u06dc\u06db\u06ec\u06e1\u06e0\u06e1\u06e2\u06eb\u06e8\u06d8\u06eb\u06ec\u06e0\u06db\u06e8\u06e7\u06e5\u06d7\u06d6\u06e8\u06e5\u06e8\u06d8\u06dc\u06d8\u06d7\u06d8\u06e2\u06dc\u06da\u06d9\u06df\u06d6\u06da\u06e8"

    goto :goto_6

    :sswitch_1c
    const-string v0, "\u06d7\u06e5\u06e8\u06e0\u06e8\u06ec\u06da\u06dc\u06db\u06d6\u06e0\u06db\u06e6\u06d8\u06e2\u06d8\u06e5\u06e2\u06df\u06d7\u06d7\u06eb\u06e7\u06dc\u06d8\u06e6\u06df\u06e8\u06e6\u06d7\u06e8\u06d8\u06dc\u06df\u06e2\u06d8\u06e5\u06eb\u06dc\u06e5\u06e1\u06d8\u06e6\u06ec\u06db"

    goto :goto_5

    :sswitch_1d
    const-string v0, "\u06ec\u06df\u06ec\u06e2\u06db\u06e8\u06d8\u06e8\u06d7\u06da\u06ec\u06e4\u06dc\u06d7\u06e6\u06ec\u06e5\u06e0\u06d8\u06e5\u06d8\u06da\u06e7\u06d6\u06d8\u06eb\u06e6\u06e5\u06db\u06d6\u06db\u06e0\u06d7\u06e1\u06ec\u06e1\u06d6\u06eb\u06da\u06e1\u06d8\u06e5\u06e7\u06db\u06da\u06e0\u06e1\u06d8\u06dc\u06e6\u06d7\u06eb\u06eb\u06dc\u06e2\u06eb\u06db"

    goto :goto_5

    :sswitch_1e
    const-string v0, "\u06e7\u06da\u06d6\u06db\u06e4\u06e7\u06e6\u06d8\u06df\u06e8\u06e7\u06da\u06dc\u06e1\u06da\u06d8\u06d9\u06e7\u06e7\u06dc\u06e5\u06d8\u06e5\u06d9\u06d8\u06d6\u06dc\u06d8\u06e8\u06e7\u06df\u06e2\u06e2\u06dc\u06d7\u06e2\u06e8\u06e2\u06df\u06e0\u06df\u06d9"

    goto/16 :goto_0

    :sswitch_1f
    const/16 v2, 0x7d5

    const-string v0, "\u06d9\u06e0\u06e6\u06e4\u06df\u06e5\u06d8\u06d8\u06df\u06d6\u06e6\u06e6\u06dc\u06ec\u06e7\u06d7\u06e5\u06eb\u06eb\u06eb\u06eb\u06e6\u06d8\u06e5\u06d6\u06e5\u06d8\u06e5\u06e4\u06e5\u06dc\u06e5\u06e8\u06d8\u06e7\u06e8\u06e6\u06d8\u06d8\u06e5\u06e6\u06d9\u06d8\u06e8\u06d8\u06dc\u06da\u06e8"

    move v3, v2

    goto/16 :goto_0

    :sswitch_20
    const-string v0, "\u06e1\u06e2\u06dc\u06ec\u06e0\u06e4\u06e1\u06d9\u06d7\u06e0\u06da\u06d6\u06d8\u06d7\u06e5\u06d8\u06df\u06e4\u06d7\u06e1\u06d8\u06dc\u06d8\u06e6\u06e6\u06e1\u06d8\u06d7\u06e2\u06e0\u06e0\u06e5\u06d9\u06da\u06e6\u06d8\u06e2\u06df\u06d6\u06d8\u06e5\u06eb\u06e5\u06ec\u06e6\u06e1\u06d8\u06ec\u06eb\u06eb\u06d7\u06ec\u06da"

    move v4, v3

    goto/16 :goto_0

    :sswitch_21
    const/16 v1, 0x7d2

    const-string v0, "\u06e5\u06e8\u06db\u06ec\u06db\u06e5\u06e0\u06e5\u06ec\u06ec\u06e7\u06d9\u06d8\u06e0\u06e5\u06e6\u06e6\u06da\u06ec\u06ec\u06d6\u06e1\u06e0\u06eb\u06e6\u06e2\u06df\u06da\u06e1\u06da\u06df\u06e0\u06db\u06e2\u06d9\u06e6\u06d8\u06e4\u06dc\u06eb\u06ec\u06d6\u06e1\u06df\u06e6\u06da\u06d6\u06da\u06d6\u06d8\u06dc\u06da\u06dc\u06d8\u06e5\u06d6\u06e8"

    goto/16 :goto_0

    :sswitch_22
    const-string v0, "\u06d9\u06e1\u06ec\u06eb\u06df\u06e0\u06d6\u06db\u06e8\u06d8\u06d8\u06e1\u06ec\u06e6\u06e4\u06db\u06e7\u06e5\u06e7\u06dc\u06e7\u06df\u06e5\u06e6\u06da\u06d6\u06d9\u06e4\u06d6\u06df\u06da\u06d8\u06e2\u06e5\u06da\u06e2\u06e7\u06db\u06db\u06e5\u06d8\u06d8\u06e4\u06d8\u06d9\u06d9\u06d8\u06d8\u06d8\u06eb\u06e2\u06ec\u06e0\u06e7\u06e0"

    move v4, v1

    goto/16 :goto_0

    :sswitch_23
    const/4 v0, 0x1

    iput v0, v7, Landroid/view/WindowManager$LayoutParams;->format:I

    const-string v0, "\u06e1\u06da\u06dc\u06d9\u06e6\u06e6\u06e4\u06e2\u06e8\u06d8\u06e6\u06d6\u06df\u06e7\u06e2\u06ec\u06db\u06e2\u06d8\u06d8\u06e1\u06e5\u06e2\u06e1\u06df\u06d6\u06d8\u06dc\u06db\u06dc\u06e2\u06e7\u06e1\u06d6\u06d9\u06e4\u06d8\u06d7\u06da\u06db\u06da\u06e7\u06d9\u06db\u06d9"

    goto/16 :goto_0

    :sswitch_24
    const/16 v0, 0x28

    iput v0, v7, Landroid/view/WindowManager$LayoutParams;->flags:I

    const-string v0, "\u06e2\u06d7\u06dc\u06d8\u06db\u06d6\u06e4\u06da\u06e1\u06e7\u06d8\u06db\u06d6\u06e1\u06d8\u06e5\u06d8\u06e7\u06d9\u06dc\u06d7\u06eb\u06e1\u06e6\u06e4\u06db\u06eb\u06da\u06d9\u06e8\u06df\u06e8\u06e7\u06dc\u06d8\u06e2\u06dc\u06e8\u06ec\u06eb\u06e6\u06d6\u06d8\u06d6\u06db\u06d6\u06d8\u06e7\u06ec\u06d8\u06df\u06d6\u06e5\u06dc\u06db\u06e2\u06da\u06eb\u06d8\u06d8"

    goto/16 :goto_0

    :sswitch_25
    const v0, 0x800033

    iput v0, v7, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const-string v0, "\u06e0\u06e5\u06dc\u06d6\u06ec\u06d6\u06d8\u06dc\u06eb\u06d9\u06e5\u06d6\u06e6\u06d8\u06e2\u06e1\u06e5\u06d8\u06dc\u06e8\u06e6\u06e6\u06d7\u06e6\u06e2\u06e6\u06e6\u06d6\u06e7\u06ec\u06df\u06da\u06d6\u06d8\u06d6\u06df\u06e5\u06e5\u06e8\u06e1\u06d8"

    goto/16 :goto_0

    :sswitch_26
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lz2/w3;->OooOoo0(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/DeleteFloatView;->Ooooo0o:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    iput v0, v7, Landroid/view/WindowManager$LayoutParams;->x:I

    const-string v0, "\u06e6\u06e4\u06ec\u06d6\u06e6\u06e8\u06d8\u06eb\u06e5\u06e1\u06d8\u06e4\u06e2\u06e1\u06d8\u06d9\u06d6\u06e5\u06d8\u06d6\u06e7\u06d6\u06eb\u06e0\u06e4\u06e1\u06e1\u06df\u06e0\u06db\u06d9\u06e8\u06db\u06db\u06e2\u06d6\u06e7\u06d8\u06df\u06db\u06e5\u06e4\u06d7\u06da\u06e5\u06e8\u06e4\u06db\u06df\u06e6\u06d7\u06eb\u06e7\u06da\u06d6\u06d8\u06d8\u06eb\u06e8\u06e8\u06d8"

    goto/16 :goto_0

    :sswitch_27
    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/DeleteFloatView;->OoooOoO:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lz2/w3;->OooOoo0(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->y:I

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    const-string v0, "\u06e2\u06eb\u06dc\u06d8\u06e0\u06e1\u06df\u06dc\u06e0\u06e6\u06d8\u06e5\u06d6\u06d8\u06e1\u06e2\u06e5\u06ec\u06da\u06e1\u06e5\u06eb\u06e6\u06ec\u06e1\u06e7\u06e7\u06d9\u06d7\u06e5\u06d7\u06e0\u06e8\u06eb\u06e1\u06eb\u06eb\u06e5\u06d7\u06e5\u06df\u06eb\u06e8\u06e4\u06d9\u06e2\u06dc\u06d6\u06e1\u06e1\u06d8\u06e0\u06d7\u06d6\u06d8\u06d8\u06e8\u06d7"

    goto/16 :goto_0

    :sswitch_28
    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/DeleteFloatView;->OoooOoO:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/DeleteFloatView;->Ooooo0o:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const-string v0, "\u06eb\u06e4\u06d8\u06e0\u06e5\u06eb\u06e2\u06df\u06e1\u06d8\u06e7\u06e2\u06e6\u06e5\u06df\u06e8\u06d8\u06e0\u06d9\u06e7\u06d9\u06d8\u06d8\u06e2\u06eb\u06e0\u06d7\u06e5\u06d6\u06d8\u06e6\u06e1\u06e1\u06e8\u06e2\u06d9\u06df\u06d8\u06e7\u06e5\u06df\u06d8\u06d8\u06e6\u06eb\u06eb"

    goto/16 :goto_0

    :sswitch_29
    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/DeleteFloatView;->OoooOoO:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/DeleteFloatView;->Ooooo0o:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const-string v0, "\u06e7\u06e6\u06df\u06e2\u06df\u06da\u06e4\u06e4\u06e6\u06db\u06e4\u06e8\u06db\u06db\u06df\u06d9\u06ec\u06d8\u06d8\u06dc\u06df\u06e2\u06d8\u06e1\u06d7\u06e5\u06eb\u06eb\u06dc\u06ec\u06d6\u06e5\u06e1\u06e7\u06d8\u06df\u06e1\u06e1\u06d9\u06ec\u06e8\u06d7\u06e4\u06d9\u06e0\u06d7\u06df\u06e5\u06e6\u06eb"

    goto/16 :goto_0

    :sswitch_2a
    const-string v0, "\u06e2\u06e6\u06d6\u06e6\u06d8\u06dc\u06dc\u06d8\u06ec\u06e0\u06e1\u06df\u06e2\u06eb\u06ec\u06d6\u06d6\u06da\u06d6\u06d6\u06e4\u06e5\u06eb\u06da\u06e0\u06e4\u06df\u06e0\u06e1\u06e0\u06e4\u06e6\u06df\u06e8\u06df\u06d6\u06d8\u06e8\u06e8\u06e5\u06d9\u06d6\u06d7\u06ec\u06d6\u06e4\u06d6\u06d6\u06eb"

    goto/16 :goto_0

    :sswitch_2b
    const-string v0, "\u06da\u06e0\u06d8\u06d8\u06d7\u06e6\u06e7\u06e2\u06e6\u06db\u06e6\u06ec\u06e5\u06db\u06e4\u06d9\u06e0\u06d8\u06d8\u06db\u06df\u06da\u06ec\u06e0\u06e5\u06d8\u06da\u06e1\u06e5\u06e1\u06d6\u06e2"

    goto/16 :goto_0

    :sswitch_2c
    const-string v0, "\u06ec\u06e1\u06d7\u06d8\u06e4\u06dc\u06dc\u06e8\u06d9\u06e1\u06ec\u06dc\u06d8\u06ec\u06db\u06e0\u06e2\u06e4\u06d8\u06d8\u06ec\u06df\u06eb\u06db\u06df\u06db\u06e0\u06da\u06e1\u06d8\u06e8\u06e5\u06e6\u06d7\u06e6\u06d9\u06d8\u06ec\u06e8\u06e2\u06e7\u06e8\u06da\u06da\u06e1\u06df\u06e8\u06d8\u06e1\u06e8\u06e6\u06d8\u06da\u06eb\u06eb\u06e5\u06d8"

    goto/16 :goto_0

    :sswitch_2d
    const-string v0, "\u06db\u06e4\u06e2\u06d8\u06e1\u06e0\u06db\u06da\u06d8\u06d8\u06eb\u06d7\u06ec\u06d7\u06e6\u06e5\u06d8\u06ec\u06db\u06ec\u06e2\u06e4\u06eb\u06dc\u06d9\u06d8\u06e7\u06d9\u06eb\u06e2\u06e7\u06e6\u06e1\u06d8\u06e6\u06d8\u06e1\u06d6\u06e0\u06e5\u06da\u06e8\u06df\u06db\u06d6\u06d8\u06d6\u06e7\u06e0\u06e8\u06e1\u06d6\u06d8"

    goto/16 :goto_0

    :sswitch_2e
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7f881271 -> :sswitch_21
        -0x65f935da -> :sswitch_2
        -0x63aa4de1 -> :sswitch_23
        -0x60a9357b -> :sswitch_22
        -0x45486cc8 -> :sswitch_2a
        -0x42a6f9e0 -> :sswitch_c
        -0x394cfa26 -> :sswitch_4
        -0x36b19c6c -> :sswitch_1
        -0x30efb0b6 -> :sswitch_d
        -0x2e7fe2dd -> :sswitch_2a
        -0x223312b1 -> :sswitch_24
        -0x1c195b16 -> :sswitch_3
        -0x14264cf2 -> :sswitch_28
        -0x11c19697 -> :sswitch_2e
        -0x3039755 -> :sswitch_2d
        0x655cc5a -> :sswitch_1f
        0xbc7e7ef -> :sswitch_29
        0x3c89cbe3 -> :sswitch_26
        0x4584770b -> :sswitch_27
        0x5363e9b6 -> :sswitch_25
        0x5ead74bc -> :sswitch_17
        0x701c8454 -> :sswitch_f
        0x74537ccd -> :sswitch_20
        0x7b97be7d -> :sswitch_e
        0x7d264432 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x2587b60d -> :sswitch_b
        0x4688b9de -> :sswitch_5
        0x58ab8af9 -> :sswitch_7
        0x5e7e6b2f -> :sswitch_2b
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        -0x42be7366 -> :sswitch_a
        -0x29563c6d -> :sswitch_6
        0xd9bd333 -> :sswitch_8
        0x325a2e8e -> :sswitch_9
    .end sparse-switch

    :sswitch_data_3
    .sparse-switch
        -0x3283bce6 -> :sswitch_15
        0x21679468 -> :sswitch_2c
        0x33c2304b -> :sswitch_16
        0x7d0978ac -> :sswitch_10
    .end sparse-switch

    :sswitch_data_4
    .sparse-switch
        -0x562e4a73 -> :sswitch_11
        -0x3ee916e3 -> :sswitch_14
        0x41f31521 -> :sswitch_13
        0x6f9777f0 -> :sswitch_12
    .end sparse-switch

    :sswitch_data_5
    .sparse-switch
        -0x6971c142 -> :sswitch_1e
        0x2a42cad9 -> :sswitch_2c
        0x6a50cf35 -> :sswitch_1d
        0x7e08f4fd -> :sswitch_18
    .end sparse-switch

    :sswitch_data_6
    .sparse-switch
        -0x6c50242 -> :sswitch_1b
        0x2ecc1968 -> :sswitch_19
        0x3c716975 -> :sswitch_1c
        0x47e694e2 -> :sswitch_1a
    .end sparse-switch
.end method


# virtual methods
.method public OooO00o()I
    .locals 4

    const-string v0, "\u06e8\u06d8\u06e7\u06d8\u06da\u06d7\u06e2\u06e0\u06e5\u06e2\u06d9\u06e4\u06e6\u06d8\u06eb\u06e6\u06e7\u06d8\u06e4\u06dc\u06d7\u06d8\u06e5\u06e6\u06d8\u06e1\u06da\u06d8\u06e8\u06e6\u06d7\u06e0\u06db\u06da\u06e1\u06db\u06e6\u06d6\u06eb\u06d6\u06d8\u06df\u06ec\u06e5\u06d8\u06ec\u06e8\u06e5"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x5f

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x245

    const/16 v2, 0x2aa

    const v3, 0xdfd2214

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06db\u06e4\u06d9\u06d8\u06e1\u06ec\u06d9\u06d6\u06e4\u06da\u06d6\u06e6\u06e7\u06e6\u06e7\u06e1\u06d7\u06e1\u06e8\u06e8\u06d7\u06d7\u06e8\u06ec\u06d9\u06d7\u06dc\u06e8\u06dc\u06e0\u06e5\u06e6\u06eb\u06ec\u06df\u06e0\u06e0\u06d6\u06eb\u06d6\u06e6\u06d9\u06ec\u06e6\u06e2\u06d8\u06d9\u06d7\u06e8\u06e6\u06da\u06e1\u06d8"

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/DeleteFloatView;->Ooooo0o:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    return v0

    :sswitch_data_0
    .sparse-switch
        -0x49661959 -> :sswitch_1
        0x16b06ceb -> :sswitch_0
    .end sparse-switch
.end method

.method public OooO0Oo()V
    .locals 5

    const/4 v2, 0x0

    const-string v0, "\u06e1\u06e5\u06df\u06e1\u06ec\u06dc\u06e8\u06d8\u06d6\u06d8\u06db\u06ec\u06e1\u06e5\u06e4\u06e4\u06e7\u06eb\u06e8\u06d8\u06df\u06eb\u06e6\u06e8\u06db\u06e5\u06db\u06e0\u06e6\u06e4"

    move-object v1, v0

    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v3, 0x9

    xor-int/2addr v0, v3

    xor-int/lit16 v0, v0, 0x18f

    const/16 v3, 0x2a2

    const v4, 0x78cce775

    xor-int/2addr v0, v3

    xor-int/2addr v0, v4

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e8\u06e6\u06db\u06e2\u06d8\u06e1\u06d8\u06d9\u06e4\u06e1\u06d8\u06dc\u06d6\u06e1\u06d8\u06e0\u06e8\u06d9\u06da\u06da\u06e4\u06e4\u06e2\u06e2\u06da\u06dc\u06d8\u06e8\u06df\u06df\u06d9\u06d8\u06e8\u06e1\u06e5\u06e0\u06d8\u06df\u06e0"

    move-object v1, v0

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    const-string v1, "\u06e0\u06ec\u06e0\u06e6\u06e7\u06d7\u06e0\u06df\u06eb\u06ec\u06df\u06df\u06dc\u06df\u06e7\u06d7\u06dc\u06d8\u06da\u06da\u06ec\u06ec\u06db\u06e6\u06df\u06e4\u06ec\u06d7\u06da\u06e2\u06df\u06d9\u06e7\u06df\u06ec\u06d8\u06d8\u06dc\u06d8\u06e7\u06d8\u06e8\u06e5\u06e5\u06dc\u06d9\u06e0\u06ec\u06d8\u06eb\u06e2\u06ec\u06df\u06da\u06e8\u06d8"

    move-object v2, v0

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/DeleteFloatView;->OoooOoO:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lz2/w3;->OooOoo0(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/DeleteFloatView;->Ooooo0o:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    sub-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    const-string v0, "\u06d6\u06d7\u06db\u06d7\u06d8\u06d6\u06d8\u06ec\u06d6\u06e8\u06e1\u06e6\u06d9\u06e6\u06e2\u06eb\u06e7\u06d6\u06d9\u06e0\u06ec\u06eb\u06e1\u06e0\u06e1\u06d8\u06e1\u06e8\u06e8\u06e7\u06da\u06e4\u06da\u06df\u06dc\u06d8\u06e7\u06dc\u06e1\u06d8\u06e2\u06e0\u06db\u06d6\u06df\u06e8\u06d8\u06dc\u06df\u06da\u06eb\u06d7\u06d8\u06e7\u06d6\u06d9\u06d6\u06e5\u06e8"

    move-object v1, v0

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/DeleteFloatView;->OoooOoO:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lz2/w3;->OooOoo0(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->y:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    const-string v0, "\u06e8\u06e8\u06ec\u06d8\u06e1\u06d8\u06dc\u06d9\u06db\u06da\u06e7\u06da\u06ec\u06db\u06d6\u06d8\u06dc\u06eb\u06e8\u06d8\u06da\u06db\u06e6\u06d8\u06db\u06e8\u06da\u06d9\u06da\u06ec\u06dc\u06df\u06e2\u06d8\u06dc\u06e5\u06e7\u06e5\u06e7\u06e2\u06e5\u06e7\u06e4\u06e7\u06e8\u06d8\u06e6\u06ec\u06db\u06d7\u06db\u06e5"

    move-object v1, v0

    goto :goto_0

    :sswitch_4
    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/DeleteFloatView;->OoooOoO:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v2, p0, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const-string v0, "\u06e0\u06ec\u06df\u06d8\u06da\u06db\u06d9\u06e4\u06e1\u06d8\u06e0\u06e5\u06ec\u06d8\u06db\u06ec\u06d7\u06d9\u06e4\u06df\u06d9\u06e7\u06da\u06e4\u06e6\u06d8\u06da\u06d7\u06eb\u06d6\u06e1\u06da\u06e6\u06df\u06df\u06db\u06e4\u06e1\u06d8"

    move-object v1, v0

    goto :goto_0

    :sswitch_5
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x288bde63 -> :sswitch_0
        -0x16a60def -> :sswitch_1
        -0x1c22b59 -> :sswitch_3
        0x2ed4b317 -> :sswitch_2
        0x3f57dabe -> :sswitch_4
        0x78d034c5 -> :sswitch_5
    .end sparse-switch
.end method

.method public OooO0o()V
    .locals 4

    const-string v0, "\u06e5\u06dc\u06eb\u06e4\u06e2\u06d8\u06d9\u06db\u06d8\u06d8\u06e5\u06dc\u06e4\u06e0\u06e7\u06d6\u06d8\u06d7\u06e8\u06db\u06e7\u06e1\u06d8\u06d8\u06df\u06e0\u06e2\u06d6\u06e7\u06e8\u06e1\u06ec"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x1cf

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x24d

    const/16 v2, 0x260

    const v3, 0x6d75e700

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06ec\u06e2\u06da\u06eb\u06df\u06e1\u06d8\u06e8\u06e0\u06e8\u06d8\u06e0\u06da\u06eb\u06e1\u06db\u06e4\u06e0\u06d8\u06d8\u06db\u06e6\u06d9\u06e8\u06d9\u06e6\u06eb\u06e7\u06d8\u06d8\u06dc\u06e5\u06e2\u06e1\u06e7\u06e5\u06e0\u06d6\u06e8\u06e8\u06e6\u06dc\u06d8\u06d7\u06e0\u06d6\u06db\u06d7\u06dc\u06d8\u06d8\u06e2\u06e1\u06d8"

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/DeleteFloatView;->Ooooo00:Landroid/widget/ImageView;

    const v1, 0x7f08018e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const-string v0, "\u06dc\u06df\u06e6\u06e0\u06dc\u06e6\u06d8\u06df\u06da\u06d8\u06d8\u06d6\u06d9\u06e4\u06ec\u06e2\u06df\u06e0\u06d9\u06dc\u06d8\u06e7\u06dc\u06df\u06e1\u06db\u06dc\u06d8\u06e8\u06e0\u06da\u06d7\u06e8\u06d9\u06df\u06ec\u06e5\u06e6\u06d9\u06e5\u06d7\u06da\u06d8\u06e5\u06eb\u06e8\u06d8\u06da\u06db\u06ec\u06db\u06e0\u06e0\u06eb\u06dc\u06e6\u06ec\u06e4\u06dc"

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/DeleteFloatView;->OoooOoo:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x106000b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const-string v0, "\u06db\u06e8\u06e8\u06d8\u06e6\u06e1\u06e6\u06dc\u06e2\u06e4\u06d8\u06e6\u06da\u06e8\u06ec\u06df\u06e8\u06db\u06e8\u06d9\u06e5\u06d8\u06d8\u06d9\u06e6\u06dc\u06d8\u06e4\u06da\u06e6\u06d8\u06d6\u06e0\u06e2\u06e4\u06df\u06e2"

    goto :goto_0

    :sswitch_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x6fffb28f -> :sswitch_1
        -0x266a820b -> :sswitch_0
        -0x1c9ce9a0 -> :sswitch_3
        0x108a28b1 -> :sswitch_2
    .end sparse-switch
.end method

.method public OooO0o0()V
    .locals 4

    const-string v0, "\u06e5\u06da\u06d8\u06e5\u06eb\u06d8\u06d8\u06e2\u06d8\u06e6\u06df\u06e5\u06e7\u06e1\u06da\u06e1\u06d8\u06e8\u06e7\u06df\u06e7\u06eb\u06dc\u06e0\u06e6\u06d8\u06d8\u06da\u06e4\u06e1\u06e6\u06d6\u06d8\u06d9\u06e4\u06d8\u06e0\u06df\u06ec\u06db\u06e8\u06e8\u06d8\u06e4\u06e0\u06e5\u06e5\u06da\u06da\u06ec\u06db\u06e1\u06dc\u06d9\u06e7\u06d9\u06dc\u06e5"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x284

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x188

    const/16 v2, 0x364

    const v3, 0x7af27b6f

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06dc\u06df\u06d9\u06df\u06e7\u06e8\u06d8\u06e4\u06e5\u06db\u06e6\u06e6\u06dc\u06e5\u06d8\u06d8\u06e1\u06db\u06d6\u06e1\u06e7\u06e5\u06d8\u06ec\u06e5\u06d6\u06d8\u06dc\u06e0\u06db\u06e7\u06ec\u06d6\u06e4\u06e4\u06d9\u06e0\u06e1\u06db\u06e5\u06d8\u06e6\u06d6\u06d8\u06e0\u06e6\u06e2\u06e8\u06d8\u06e0\u06ec\u06d6\u06dc\u06e1\u06e5\u06d8\u06d8\u06df\u06d6"

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/DeleteFloatView;->Ooooo00:Landroid/widget/ImageView;

    const v1, 0x7f08018d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const-string v0, "\u06e1\u06e7\u06d8\u06d8\u06e5\u06df\u06dc\u06e8\u06dc\u06d6\u06e8\u06d6\u06e2\u06e5\u06d8\u06da\u06d8\u06da\u06da\u06e5\u06d8\u06d8\u06eb\u06d9\u06e4\u06d7\u06d7\u06d8\u06d7\u06e2\u06e1\u06e4\u06e2\u06e7\u06eb\u06e7"

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/DeleteFloatView;->OoooOoo:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0600c2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const-string v0, "\u06eb\u06eb\u06dc\u06db\u06e5\u06e1\u06d8\u06e1\u06e0\u06d6\u06d8\u06e7\u06e8\u06d8\u06e1\u06e1\u06d6\u06e5\u06e7\u06e8\u06d8\u06e0\u06d6\u06d6\u06d8\u06d6\u06e5\u06e1\u06e6\u06d7\u06e4\u06da\u06dc\u06e0\u06d7\u06ec\u06e7\u06e1\u06e2"

    goto :goto_0

    :sswitch_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x768d0cc3 -> :sswitch_1
        -0x2b07d821 -> :sswitch_0
        0x3eb90a90 -> :sswitch_2
        0x5d055a1a -> :sswitch_3
    .end sparse-switch
.end method

.method public bridge synthetic getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 4

    const-string v0, "\u06df\u06dc\u06d8\u06d8\u06db\u06d7\u06e2\u06d6\u06e7\u06da\u06d9\u06e0\u06d6\u06e4\u06e4\u06e2\u06ec\u06e1\u06d8\u06d6\u06d8\u06da\u06d6\u06e1\u06e5\u06d8\u06dc\u06e6\u06e7\u06eb\u06e8\u06dc\u06d7\u06e4\u06e1\u06d9\u06e8\u06dc\u06d8\u06e2\u06dc\u06d8\u06d8\u06d6\u06d8\u06d6"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x371

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x37c

    const/16 v2, 0x12f

    const v3, -0x1312767

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d6\u06e7\u06e8\u06df\u06e0\u06e0\u06e4\u06eb\u06e1\u06da\u06df\u06e6\u06d8\u06e6\u06d8\u06d6\u06e0\u06e4\u06e2\u06db\u06db\u06e7\u06df\u06e8\u06d6\u06d7\u06dc\u06dc\u06d8\u06d7\u06e8\u06dc\u06d8\u06d8\u06d8\u06d8\u06d8\u06e2\u06e7\u06db\u06dc\u06df\u06d6\u06d8\u06e8\u06e7\u06e6\u06ec\u06e2\u06da\u06d8\u06e4\u06e7"

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/DeleteFloatView;->getLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x6c47dd7f -> :sswitch_1
        0x54e4dcd8 -> :sswitch_0
    .end sparse-switch
.end method

.method public getLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 4

    const-string v0, "\u06dc\u06e8\u06d8\u06e1\u06e5\u06d8\u06dc\u06e5\u06e2\u06e5\u06ec\u06d6\u06d8\u06da\u06e2\u06da\u06e4\u06e5\u06e5\u06e7\u06da\u06e6\u06da\u06d6\u06d8\u06e7\u06dc\u06dc\u06d8\u06d9\u06d9\u06d8\u06eb\u06e7\u06e1\u06d8\u06e0\u06da\u06e2\u06e1\u06ec\u06d8\u06e0\u06e7\u06d8\u06d6\u06db\u06e6\u06e7\u06d8\u06ec"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x2ec

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x2b8

    const/16 v2, 0x398

    const v3, -0x4f4378fc

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e7\u06e0\u06d8\u06d8\u06d6\u06db\u06e1\u06e8\u06da\u06da\u06d8\u06dc\u06e8\u06eb\u06d6\u06ec\u06e7\u06e2\u06e8\u06d8\u06e1\u06d8\u06dc\u06d8\u06e7\u06e5\u06df\u06e7\u06dc\u06d8\u06eb\u06df\u06da"

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/DeleteFloatView;->OoooOoO:Landroid/view/WindowManager$LayoutParams;

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x79513434 -> :sswitch_1
        -0x6be0c2f7 -> :sswitch_0
    .end sparse-switch
.end method
