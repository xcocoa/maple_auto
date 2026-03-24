.class public Lcom/cyjh/elfin/ui/view/customview/TitleView;
.super Landroid/widget/RelativeLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyjh/elfin/ui/view/customview/TitleView$OooO;,
        Lcom/cyjh/elfin/ui/view/customview/TitleView$OooO0O0;,
        Lcom/cyjh/elfin/ui/view/customview/TitleView$OooO0OO;,
        Lcom/cyjh/elfin/ui/view/customview/TitleView$OooO0o;,
        Lcom/cyjh/elfin/ui/view/customview/TitleView$OooOO0;,
        Lcom/cyjh/elfin/ui/view/customview/TitleView$OooOO0O;
    }
.end annotation


# instance fields
.field private OoooOoO:Landroid/widget/TextView;

.field private OoooOoo:Landroid/content/Context;

.field private Ooooo00:Landroid/widget/ImageView;

.field private Ooooo0o:Landroid/widget/ImageView;

.field private OooooO0:Lcom/cyjh/elfin/ui/view/customview/TitleView$OooO0O0;

.field private OooooOO:Lcom/cyjh/elfin/ui/view/customview/TitleView$OooO0OO;

.field private OooooOo:Lcom/cyjh/elfin/ui/view/customview/TitleView$OooO0o;

.field private Oooooo0:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/cyjh/elfin/ui/view/customview/TitleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/cyjh/elfin/ui/view/customview/TitleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object p1, p0, Lcom/cyjh/elfin/ui/view/customview/TitleView;->OoooOoo:Landroid/content/Context;

    invoke-direct {p0}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->OooO0Oo()V

    invoke-direct {p0}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->OooO0o0()V

    return-void
.end method

.method public static synthetic OooO00o(Lcom/cyjh/elfin/ui/view/customview/TitleView;)Lcom/cyjh/elfin/ui/view/customview/TitleView$OooO0O0;
    .locals 4

    const-string v0, "\u06e5\u06d7\u06d9\u06e6\u06d6\u06d8\u06e6\u06e4\u06d6\u06d8\u06e5\u06d9\u06dc\u06e2\u06d9\u06d6\u06e4\u06e8\u06e6\u06df\u06e6\u06e1\u06df\u06d8\u06eb\u06e8\u06e8\u06d8\u06d8\u06e6\u06ec\u06e8\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x1a5

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0xf2

    const/16 v2, 0x302

    const v3, 0x31fd54f1

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e8\u06d7\u06d6\u06d8\u06da\u06e1\u06dc\u06db\u06e1\u06db\u06eb\u06e7\u06d8\u06d8\u06eb\u06e6\u06e4\u06d6\u06df\u06d7\u06d9\u06e4\u06eb\u06e2\u06db\u06e2\u06e7\u06e4\u06d8\u06e4\u06d6\u06d8\u06d9\u06eb\u06db\u06eb\u06e4\u06df\u06e4\u06ec\u06e1\u06e1\u06e1\u06dc\u06dc\u06e8\u06d6\u06e2\u06e8\u06d8\u06e5\u06e1\u06e7\u06d8\u06ec\u06db\u06db"

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/cyjh/elfin/ui/view/customview/TitleView;->OooooO0:Lcom/cyjh/elfin/ui/view/customview/TitleView$OooO0O0;

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x42d408a4 -> :sswitch_0
        -0x3b138b2b -> :sswitch_1
    .end sparse-switch
.end method

.method public static synthetic OooO0O0(Lcom/cyjh/elfin/ui/view/customview/TitleView;)Lcom/cyjh/elfin/ui/view/customview/TitleView$OooO0OO;
    .locals 4

    const-string v0, "\u06d8\u06ec\u06df\u06e2\u06e1\u06dc\u06d6\u06da\u06d8\u06d6\u06d6\u06d6\u06d8\u06df\u06d6\u06df\u06e8\u06d8\u06e2\u06e0\u06df\u06d8\u06d8\u06db\u06e8\u06e6\u06d6\u06da\u06e0\u06d6"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x11

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x152

    const/16 v2, 0x1d0

    const v3, 0x45af7c44

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d9\u06da\u06e7\u06d9\u06d8\u06d8\u06d8\u06e2\u06e2\u06eb\u06eb\u06d9\u06df\u06e7\u06eb\u06d6\u06ec\u06d7\u06e5\u06d6\u06d6\u06e6\u06e1\u06da\u06d6\u06e4\u06d6\u06eb\u06d9\u06e5\u06d6\u06da\u06e5\u06d8\u06e7\u06e4\u06e1\u06e0\u06e2\u06e8\u06e0\u06e8\u06e5"

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/cyjh/elfin/ui/view/customview/TitleView;->OooooOO:Lcom/cyjh/elfin/ui/view/customview/TitleView$OooO0OO;

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x42a63f31 -> :sswitch_0
        0x689276de -> :sswitch_1
    .end sparse-switch
.end method

.method public static synthetic OooO0OO(Lcom/cyjh/elfin/ui/view/customview/TitleView;)Lcom/cyjh/elfin/ui/view/customview/TitleView$OooO0o;
    .locals 4

    const-string v0, "\u06e7\u06e1\u06e4\u06e2\u06e8\u06dc\u06e7\u06e6\u06dc\u06d8\u06eb\u06ec\u06e6\u06e1\u06db\u06d6\u06e1\u06db\u06e1\u06da\u06e8\u06e7\u06db\u06e6\u06d6\u06df\u06e5\u06e8\u06dc\u06ec\u06ec\u06e0\u06dc\u06eb\u06e7\u06d7\u06ec\u06e1\u06d7\u06d9\u06d7\u06e8\u06e7\u06e4\u06d6\u06eb\u06d6\u06e8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x1b3

    xor-int/2addr v1, v2

    xor-int/lit8 v1, v1, 0x16

    const/16 v2, 0x76

    const v3, 0x3e133b53

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d9\u06d6\u06eb\u06d9\u06e6\u06d6\u06ec\u06e5\u06df\u06d7\u06dc\u06d8\u06d8\u06d9\u06e5\u06d7\u06d6\u06d7\u06d8\u06e8\u06e8\u06ec\u06da\u06e0\u06e0\u06df\u06e8\u06d6\u06d8\u06e1\u06d9\u06e8\u06d8\u06e5\u06e5\u06d8\u06e1\u06d6\u06e4\u06e4\u06e1\u06df\u06e6\u06df\u06dc\u06d6\u06e8\u06e4\u06dc\u06df\u06d8\u06e8\u06e1\u06df\u06dc\u06ec\u06e1\u06d8"

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/cyjh/elfin/ui/view/customview/TitleView;->OooooOo:Lcom/cyjh/elfin/ui/view/customview/TitleView$OooO0o;

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x1dd76a6b -> :sswitch_1
        0x24004416 -> :sswitch_0
    .end sparse-switch
.end method

.method private OooO0Oo()V
    .locals 4

    const-string v0, "\u06e5\u06e8\u06d8\u06d8\u06d8\u06e0\u06d6\u06d8\u06e0\u06ec\u06e8\u06df\u06e1\u06eb\u06d8\u06df\u06ec\u06dc\u06e4\u06e4\u06dc\u06db\u06d9\u06e7\u06d6\u06e4\u06e7\u06e7\u06e5\u06da\u06db\u06dc\u06d8\u06e1\u06e5\u06d9\u06dc\u06dc\u06ec\u06e1\u06e5\u06df\u06e1\u06d8\u06e1\u06d8\u06e0\u06d9\u06e8\u06d8\u06e8\u06db\u06e8\u06d8\u06e4\u06ec\u06e4\u06e4\u06e4\u06e7"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x2fc

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x20b

    const/16 v2, 0x126

    const v3, 0x72a7412d

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d9\u06db\u06d8\u06d7\u06db\u06e8\u06d8\u06e2\u06dc\u06d8\u06e1\u06e5\u06e4\u06e8\u06df\u06e4\u06da\u06d9\u06e1\u06d9\u06d9\u06e8\u06d8\u06d6\u06df\u06dc\u06d8\u06da\u06dc\u06e1\u06d8\u06e7\u06e4\u06e6\u06e0\u06e0\u06e4\u06da\u06dc\u06d8\u06ec\u06d6\u06e7\u06da\u06eb\u06dc\u06e4\u06e2\u06e0\u06e8\u06e2\u06dc\u06e7\u06d8\u06da\u06df\u06d9"

    goto :goto_0

    :sswitch_1
    const/16 v0, 0x3c

    const/16 v1, 0x7a

    const/16 v2, 0xc5

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    const-string v0, "\u06db\u06e0\u06df\u06eb\u06d6\u06d9\u06e2\u06d7\u06d6\u06d8\u06e6\u06e0\u06e8\u06e2\u06dc\u06dc\u06eb\u06d8\u06d7\u06d8\u06e1\u06e0\u06e7\u06e7\u06e5\u06d8\u06e1\u06e8\u06d8\u06e5\u06d7\u06e4\u06e8\u06dc\u06da\u06d9\u06df\u06d8\u06d7\u06dc\u06dc\u06d6\u06d9\u06df"

    goto :goto_0

    :sswitch_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x6ab6a5d1 -> :sswitch_0
        -0xe06c673 -> :sswitch_2
        -0x1f14a2b -> :sswitch_1
    .end sparse-switch
.end method

.method private OooO0o0()V
    .locals 11

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    const-string v0, "\u06e4\u06ec\u06e8\u06d8\u06e4\u06e7\u06e6\u06da\u06d8\u06db\u06e0\u06da\u06e7\u06d8\u06e0\u06e8\u06d8\u06d6\u06df\u06e1\u06eb\u06e8\u06e8\u06e5\u06eb\u06e7\u06e7\u06ec\u06ec\u06d7\u06da\u06dc\u06d8\u06e4\u06e6\u06d8\u06d8\u06e7\u06ec\u06e8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v8

    const/16 v9, 0x2f7

    xor-int/2addr v8, v9

    xor-int/lit16 v8, v8, 0x1b9

    const/16 v9, 0x1df

    const v10, 0xfc8d32c

    xor-int/2addr v8, v9

    xor-int/2addr v8, v10

    sparse-switch v8, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e5\u06d7\u06e5\u06e8\u06d9\u06d9\u06e6\u06e5\u06db\u06ec\u06eb\u06e1\u06e2\u06d7\u06e7\u06d7\u06da\u06e4\u06da\u06e6\u06d6\u06e5\u06d7\u06e2\u06e2\u06e8\u06e5\u06ec\u06db\u06e4\u06dc\u06e1\u06d6\u06db\u06e6"

    goto :goto_0

    :sswitch_1
    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, -0x2

    const/4 v8, -0x2

    invoke-direct {v7, v0, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const-string v0, "\u06e2\u06da\u06e7\u06e4\u06e2\u06eb\u06d6\u06e7\u06e5\u06d8\u06d7\u06ec\u06dc\u06d8\u06d6\u06d6\u06d6\u06e2\u06e4\u06e0\u06ec\u06e7\u06e5\u06d8\u06eb\u06db\u06d9\u06e2\u06db\u06eb\u06e6\u06d8\u06e1\u06d8\u06db\u06e6\u06df\u06d8\u06dc\u06e8\u06ec\u06e2\u06d9\u06e4\u06e5\u06db\u06d8\u06d8\u06e5\u06dc\u06d7"

    goto :goto_0

    :sswitch_2
    const/16 v0, 0xd

    invoke-virtual {v7, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const-string v0, "\u06d9\u06e5\u06e2\u06e8\u06df\u06d6\u06d8\u06da\u06db\u06e2\u06e4\u06e7\u06ec\u06df\u06e5\u06eb\u06d8\u06da\u06e6\u06e5\u06e8\u06e6\u06df\u06ec\u06e2\u06dc\u06e5\u06d7\u06e6\u06da\u06e8\u06d8"

    goto :goto_0

    :sswitch_3
    new-instance v6, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/cyjh/elfin/ui/view/customview/TitleView;->OoooOoo:Landroid/content/Context;

    invoke-direct {v6, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v0, "\u06eb\u06e6\u06eb\u06e6\u06e0\u06dc\u06d9\u06db\u06df\u06e7\u06ec\u06e7\u06ec\u06e4\u06dc\u06d8\u06db\u06ec\u06d9\u06e4\u06d7\u06d6\u06d7\u06d7\u06e8\u06d7\u06e5\u06e0\u06d7\u06e0\u06e2\u06db\u06d6\u06eb\u06d9\u06d7\u06e7\u06df\u06e7\u06e7\u06d9\u06d6\u06d9"

    goto :goto_0

    :sswitch_4
    iput-object v6, p0, Lcom/cyjh/elfin/ui/view/customview/TitleView;->OoooOoO:Landroid/widget/TextView;

    const-string v0, "\u06e5\u06d6\u06e7\u06e6\u06e4\u06e8\u06d6\u06e2\u06e8\u06d6\u06db\u06e6\u06e6\u06e7\u06d8\u06dc\u06dc\u06d8\u06d8\u06df\u06e8\u06d9\u06da\u06e5\u06da\u06e2\u06dc\u06e8\u06e0\u06db\u06e5\u06d8"

    goto :goto_0

    :sswitch_5
    const/4 v0, -0x1

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const-string v0, "\u06e5\u06e2\u06da\u06dc\u06da\u06df\u06d9\u06ec\u06e8\u06d8\u06e2\u06df\u06d7\u06ec\u06e0\u06db\u06df\u06df\u06e0\u06e5\u06e0\u06e7\u06db\u06e5\u06e7\u06d8\u06eb\u06ec\u06e1\u06d9\u06e5\u06dc\u06d8\u06da\u06d7\u06d6\u06db\u06e2\u06df\u06e6\u06e6\u06e4\u06e5\u06e5\u06d6\u06e8\u06eb\u06d9\u06eb\u06eb\u06e0\u06e5\u06d8\u06d6\u06e8\u06d6\u06d8"

    goto :goto_0

    :sswitch_6
    iget-object v0, p0, Lcom/cyjh/elfin/ui/view/customview/TitleView;->OoooOoO:Landroid/widget/TextView;

    const/high16 v8, 0x41900000    # 18.0f

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setTextSize(F)V

    const-string v0, "\u06e2\u06e1\u06db\u06d6\u06e0\u06e7\u06d8\u06e1\u06e6\u06d8\u06e0\u06df\u06d6\u06d6\u06e5\u06e8\u06d8\u06e4\u06df\u06e2\u06d8\u06db\u06e8\u06d8\u06e7\u06e5\u06df\u06e5\u06d6\u06eb\u06e7\u06e7\u06e1"

    goto :goto_0

    :sswitch_7
    iget-object v0, p0, Lcom/cyjh/elfin/ui/view/customview/TitleView;->OoooOoO:Landroid/widget/TextView;

    const/16 v8, 0x10

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setGravity(I)V

    const-string v0, "\u06e6\u06ec\u06d7\u06e2\u06e5\u06e6\u06eb\u06d6\u06e7\u06d8\u06d6\u06e1\u06eb\u06e1\u06dc\u06e4\u06d8\u06e1\u06e8\u06df\u06e7\u06d7\u06e4\u06e5\u06df\u06e4\u06da\u06d7\u06ec\u06dc\u06e8"

    goto :goto_0

    :sswitch_8
    iget-object v0, p0, Lcom/cyjh/elfin/ui/view/customview/TitleView;->OoooOoO:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    const-string v0, "\u06dc\u06d7\u06db\u06ec\u06e8\u06e1\u06e7\u06ec\u06e1\u06eb\u06eb\u06ec\u06e1\u06d7\u06e4\u06e6\u06e8\u06e5\u06d8\u06d9\u06e2\u06d6\u06d7\u06db\u06e5\u06d8\u06e0\u06df\u06db\u06e1\u06e7\u06dc\u06df\u06d7\u06e1\u06d8\u06e6\u06e5\u06e1\u06d8"

    goto :goto_0

    :sswitch_9
    iget-object v0, p0, Lcom/cyjh/elfin/ui/view/customview/TitleView;->OoooOoO:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v7}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const-string v0, "\u06e6\u06e8\u06da\u06d9\u06e1\u06db\u06e7\u06e6\u06d8\u06e2\u06e6\u06e4\u06d7\u06e4\u06e4\u06e7\u06d7\u06da\u06eb\u06e1\u06e6\u06da\u06eb\u06e5\u06d8\u06e8\u06da\u06ec\u06e2\u06e6\u06e1\u06d7\u06e0\u06e7\u06e5\u06e1\u06e6\u06d9\u06e8\u06d7\u06e6\u06e4\u06d6\u06eb\u06db\u06d6\u06d8\u06d6\u06eb\u06d8\u06d8\u06d7\u06e5\u06d8\u06d8\u06e2\u06d7"

    goto :goto_0

    :sswitch_a
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, -0x2

    const/4 v8, -0x2

    invoke-direct {v5, v0, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const-string v0, "\u06d9\u06d8\u06e6\u06e7\u06eb\u06d6\u06d8\u06d8\u06d6\u06e1\u06e8\u06e6\u06e7\u06db\u06ec\u06eb\u06e8\u06db\u06dc\u06d8\u06e5\u06d6\u06e6\u06ec\u06e2\u06df\u06e7\u06ec\u06d8\u06e0\u06da"

    goto :goto_0

    :sswitch_b
    new-instance v0, Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/cyjh/elfin/ui/view/customview/TitleView;->OoooOoo:Landroid/content/Context;

    invoke-direct {v0, v8}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cyjh/elfin/ui/view/customview/TitleView;->Ooooo00:Landroid/widget/ImageView;

    const-string v0, "\u06e0\u06eb\u06d6\u06e1\u06eb\u06e1\u06e6\u06e4\u06e1\u06d8\u06e2\u06e2\u06db\u06db\u06d7\u06e1\u06e6\u06df\u06da\u06e5\u06eb\u06e5\u06d8\u06ec\u06d8\u06db\u06e6\u06df\u06e0\u06e4\u06e8\u06dc\u06d8"

    goto :goto_0

    :sswitch_c
    const/16 v0, 0xf

    invoke-virtual {v5, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const-string v0, "\u06d9\u06e4\u06e5\u06d8\u06eb\u06e7\u06e0\u06e1\u06e0\u06e5\u06d8\u06e2\u06e1\u06e5\u06d8\u06da\u06d7\u06e1\u06ec\u06e5\u06e8\u06da\u06e1\u06da\u06e0\u06d9\u06d6\u06e8\u06d7\u06d9\u06d8\u06d9\u06d9\u06e1\u06e7\u06dc\u06d9\u06e1\u06e1\u06d8\u06df\u06e2\u06dc\u06d8\u06e0\u06e0"

    goto :goto_0

    :sswitch_d
    const/16 v0, 0x9

    invoke-virtual {v5, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const-string v0, "\u06e0\u06dc\u06e0\u06eb\u06eb\u06e1\u06ec\u06db\u06e7\u06e7\u06dc\u06db\u06eb\u06e0\u06e1\u06d8\u06e8\u06e4\u06ec\u06d6\u06e4\u06da\u06e7\u06ec\u06e0\u06df\u06d8\u06e7\u06ec\u06d9\u06e5\u06d8\u06da\u06db\u06e1\u06d8\u06ec\u06e5\u06e6\u06da\u06e7\u06e4\u06e5\u06e1\u06df"

    goto/16 :goto_0

    :sswitch_e
    const/16 v0, 0x14

    const/16 v8, 0xa

    const/4 v9, 0x0

    const/16 v10, 0xa

    invoke-virtual {v5, v0, v8, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    const-string v0, "\u06da\u06e0\u06e5\u06e7\u06d8\u06e7\u06e0\u06d6\u06e5\u06e0\u06e5\u06eb\u06e8\u06e5\u06d6\u06da\u06df\u06d9\u06ec\u06e1\u06e5\u06d6\u06ec\u06ec\u06eb\u06d8\u06d8\u06e1\u06ec\u06d7\u06e8\u06db\u06d8\u06d8\u06d7\u06ec\u06e1\u06d8\u06e2\u06e1\u06e5\u06dc\u06e7\u06eb\u06ec\u06e2\u06e5\u06e6\u06df\u06e7"

    goto/16 :goto_0

    :sswitch_f
    iget-object v0, p0, Lcom/cyjh/elfin/ui/view/customview/TitleView;->Ooooo00:Landroid/widget/ImageView;

    const v8, 0x7f0801dd

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    const-string v0, "\u06dc\u06d8\u06e6\u06e8\u06e0\u06dc\u06dc\u06e1\u06e6\u06d8\u06dc\u06da\u06e2\u06db\u06e0\u06d9\u06db\u06e8\u06d6\u06d8\u06e6\u06eb\u06e1\u06d8\u06ec\u06ec\u06e1\u06d8\u06db\u06d8\u06d8\u06d8\u06da\u06d6\u06e5\u06d8\u06e5\u06df\u06d6\u06e0\u06e4\u06e1\u06e1\u06d8\u06db\u06ec\u06e4\u06e6\u06d8"

    goto/16 :goto_0

    :sswitch_10
    iget-object v0, p0, Lcom/cyjh/elfin/ui/view/customview/TitleView;->Ooooo00:Landroid/widget/ImageView;

    new-instance v8, Lcom/cyjh/elfin/ui/view/customview/TitleView$OooOO0;

    const/4 v9, 0x0

    invoke-direct {v8, p0, v9}, Lcom/cyjh/elfin/ui/view/customview/TitleView$OooOO0;-><init>(Lcom/cyjh/elfin/ui/view/customview/TitleView;Lcom/cyjh/elfin/ui/view/customview/TitleView$OooO00o;)V

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "\u06e2\u06da\u06e1\u06d8\u06e5\u06e6\u06d8\u06da\u06d9\u06e0\u06e0\u06da\u06d6\u06d8\u06e7\u06ec\u06e5\u06d8\u06db\u06e4\u06d9\u06e0\u06e4\u06e5\u06e4\u06e1\u06dc\u06d8\u06d6\u06e1\u06d9\u06e6\u06d7\u06ec"

    goto/16 :goto_0

    :sswitch_11
    iget-object v0, p0, Lcom/cyjh/elfin/ui/view/customview/TitleView;->Ooooo00:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const-string v0, "\u06d9\u06eb\u06df\u06e5\u06e4\u06d9\u06e7\u06dc\u06dc\u06d6\u06db\u06e0\u06e4\u06e6\u06e7\u06e2\u06e7\u06e6\u06d8\u06e6\u06e4\u06e7\u06d7\u06e5\u06df\u06e7\u06e8\u06da\u06d7\u06e8\u06e7\u06d8\u06ec\u06dc\u06e6\u06d8\u06df\u06d6\u06e0\u06eb\u06df\u06df\u06dc\u06df\u06db\u06d6\u06db\u06e2\u06e6\u06e2\u06d6"

    goto/16 :goto_0

    :sswitch_12
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, -0x2

    const/4 v8, -0x2

    invoke-direct {v4, v0, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const-string v0, "\u06dc\u06e6\u06e7\u06d6\u06e8\u06d8\u06d8\u06dc\u06e7\u06e6\u06d8\u06e7\u06e1\u06da\u06d6\u06e6\u06d7\u06eb\u06d6\u06d9\u06da\u06db\u06e8\u06dc\u06d8\u06df\u06e8\u06d7\u06e6\u06e1\u06e0\u06d7\u06df\u06d8\u06e2\u06e1\u06e4\u06e8\u06d6\u06e1\u06e4\u06e1\u06d8\u06d8"

    goto/16 :goto_0

    :sswitch_13
    const/16 v0, 0xf

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const-string v0, "\u06e7\u06ec\u06df\u06e0\u06da\u06dc\u06e1\u06da\u06dc\u06d8\u06e2\u06e8\u06e0\u06e8\u06df\u06d6\u06d8\u06eb\u06dc\u06dc\u06e2\u06e8\u06e5\u06d8\u06da\u06e2\u06e8\u06dc\u06e1\u06e8\u06e4\u06e7\u06e4\u06d7\u06e8\u06eb\u06e6\u06d9"

    goto/16 :goto_0

    :sswitch_14
    const/16 v0, 0xb

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const-string v0, "\u06d9\u06d8\u06d8\u06d8\u06db\u06e8\u06ec\u06d9\u06ec\u06e6\u06e6\u06d6\u06d9\u06db\u06e8\u06ec\u06e0\u06df\u06e6\u06d6\u06dc\u06e8\u06d8\u06e0\u06d6\u06e2\u06e4\u06e1\u06e6\u06e5\u06d6\u06d6\u06e2\u06ec\u06e6\u06d8\u06df\u06eb\u06e1\u06d8\u06d6\u06d6\u06dc\u06d8\u06db\u06e8\u06dc\u06e0\u06d8\u06da\u06e4\u06da\u06eb"

    goto/16 :goto_0

    :sswitch_15
    const/4 v0, 0x0

    const/16 v8, 0xa

    const/16 v9, 0x14

    const/16 v10, 0xa

    invoke-virtual {v4, v0, v8, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    const-string v0, "\u06e2\u06d9\u06df\u06d6\u06d7\u06e5\u06d8\u06e1\u06e4\u06e7\u06e2\u06dc\u06e0\u06e1\u06dc\u06ec\u06e6\u06e4\u06eb\u06ec\u06ec\u06e6\u06d8\u06e2\u06e5\u06d8\u06d8\u06e7\u06d9\u06dc\u06e8\u06ec\u06d6\u06d8\u06ec\u06e4\u06d9\u06e8\u06ec\u06d6\u06d8\u06e0\u06d7\u06dc\u06e0\u06e4\u06e7\u06e4\u06e2\u06d6\u06e7\u06e5\u06e0"

    goto/16 :goto_0

    :sswitch_16
    new-instance v3, Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/cyjh/elfin/ui/view/customview/TitleView;->OoooOoo:Landroid/content/Context;

    invoke-direct {v3, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const-string v0, "\u06e0\u06e2\u06e2\u06e1\u06d6\u06e6\u06d8\u06e1\u06e1\u06d9\u06dc\u06e5\u06e1\u06d8\u06e8\u06eb\u06e5\u06e1\u06db\u06d9\u06ec\u06e7\u06e8\u06df\u06ec\u06dc\u06d8\u06ec\u06d8\u06e2\u06e2\u06da\u06e1\u06df\u06dc\u06e0\u06dc\u06dc\u06ec"

    goto/16 :goto_0

    :sswitch_17
    iput-object v3, p0, Lcom/cyjh/elfin/ui/view/customview/TitleView;->Ooooo0o:Landroid/widget/ImageView;

    const-string v0, "\u06e4\u06d7\u06e8\u06d8\u06db\u06e2\u06ec\u06da\u06e8\u06dc\u06d8\u06e4\u06d7\u06ec\u06e2\u06d6\u06d6\u06d8\u06e1\u06e1\u06d8\u06d8\u06d8\u06d8\u06db\u06da\u06dc\u06dc\u06d6\u06e6\u06d8\u06d8\u06e7\u06d8\u06d6\u06d8\u06da\u06da\u06ec\u06dc\u06d7\u06d7\u06e0\u06ec\u06e5\u06e7\u06e2\u06da\u06e4\u06dc\u06e6\u06d8\u06d8\u06ec\u06d6\u06d8\u06da\u06e7\u06e8\u06e6\u06dc\u06e0"

    goto/16 :goto_0

    :sswitch_18
    const v0, 0x7f0801dd

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    const-string v0, "\u06db\u06e7\u06d6\u06d8\u06dc\u06eb\u06d9\u06df\u06e8\u06e5\u06d8\u06d8\u06d6\u06d8\u06e5\u06eb\u06e4\u06e1\u06eb\u06ec\u06e0\u06e2\u06df\u06d6\u06da\u06e6\u06da\u06e2\u06e6\u06d7\u06e8\u06d8\u06e7\u06e2\u06e2\u06d6\u06e2\u06d6\u06d8\u06e8\u06da\u06dc\u06d8\u06d9\u06d8\u06df\u06e6\u06ec\u06d7\u06d7\u06e6\u06dc\u06d8\u06e8\u06eb\u06e2\u06e1\u06e5\u06e6"

    goto/16 :goto_0

    :sswitch_19
    iget-object v0, p0, Lcom/cyjh/elfin/ui/view/customview/TitleView;->Ooooo0o:Landroid/widget/ImageView;

    new-instance v8, Lcom/cyjh/elfin/ui/view/customview/TitleView$OooOO0O;

    const/4 v9, 0x0

    invoke-direct {v8, p0, v9}, Lcom/cyjh/elfin/ui/view/customview/TitleView$OooOO0O;-><init>(Lcom/cyjh/elfin/ui/view/customview/TitleView;Lcom/cyjh/elfin/ui/view/customview/TitleView$OooO00o;)V

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "\u06ec\u06d9\u06d8\u06e7\u06d6\u06e8\u06e6\u06ec\u06dc\u06d6\u06d9\u06e7\u06e0\u06e6\u06e6\u06eb\u06db\u06e1\u06da\u06d9\u06e2\u06e7\u06e2\u06e1\u06e8\u06e8\u06e7\u06d8\u06e4\u06e1\u06e5\u06d8\u06e2\u06d7\u06e4\u06d6\u06df\u06d9"

    goto/16 :goto_0

    :sswitch_1a
    iget-object v0, p0, Lcom/cyjh/elfin/ui/view/customview/TitleView;->Ooooo0o:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const-string v0, "\u06e4\u06d6\u06d8\u06dc\u06e8\u06e7\u06e4\u06e1\u06e7\u06e4\u06ec\u06d6\u06d8\u06df\u06d7\u06d6\u06e0\u06e5\u06db\u06e7\u06e6\u06eb\u06e2\u06e8\u06d8\u06da\u06e2\u06e6\u06d8\u06df\u06d6\u06e4"

    goto/16 :goto_0

    :sswitch_1b
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, -0x2

    const/4 v8, -0x2

    invoke-direct {v2, v0, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const-string v0, "\u06e1\u06e8\u06dc\u06d8\u06e5\u06d9\u06d9\u06d8\u06e7\u06db\u06e8\u06e2\u06e1\u06d8\u06e1\u06e2\u06e1\u06d9\u06e6\u06e7\u06d8\u06eb\u06db\u06e7\u06e6\u06da\u06e6\u06e5\u06da\u06e6\u06db\u06e1\u06dc\u06d8"

    goto/16 :goto_0

    :sswitch_1c
    const/16 v0, 0xb

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const-string v0, "\u06e7\u06e6\u06df\u06e4\u06df\u06dc\u06d8\u06e1\u06d6\u06ec\u06db\u06d6\u06e5\u06d8\u06db\u06d9\u06d6\u06d8\u06db\u06d6\u06d6\u06d9\u06e1\u06e5\u06d6\u06e6\u06d8\u06e8\u06e0\u06e1\u06d9\u06d6\u06d7\u06eb\u06d8\u06e4\u06d9\u06e5\u06d8\u06d6\u06e5\u06ec\u06db\u06d6\u06ec\u06e6\u06d9\u06e0\u06d9\u06d7\u06df"

    goto/16 :goto_0

    :sswitch_1d
    const/16 v0, 0xf

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const-string v0, "\u06e4\u06dc\u06e6\u06d8\u06d9\u06e1\u06e7\u06eb\u06e0\u06e0\u06d9\u06d8\u06dc\u06da\u06e2\u06dc\u06d8\u06d7\u06eb\u06e2\u06d7\u06e6\u06d8\u06d8\u06da\u06da\u06d8\u06d8\u06df\u06e4\u06e8\u06d8\u06da\u06e8\u06eb\u06d9\u06d7\u06e6\u06d8\u06e0\u06e7\u06e5\u06d9\u06da\u06e1\u06d8\u06e5\u06d7\u06eb\u06d6\u06d8\u06eb\u06df\u06e6\u06e1"

    goto/16 :goto_0

    :sswitch_1e
    const/4 v0, 0x0

    const/16 v8, 0xa

    const/16 v9, 0x14

    const/16 v10, 0xa

    invoke-virtual {v2, v0, v8, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    const-string v0, "\u06e2\u06e2\u06e0\u06e5\u06df\u06e7\u06e8\u06d6\u06e4\u06e4\u06e6\u06e8\u06d8\u06d9\u06dc\u06e7\u06e6\u06eb\u06d9\u06e2\u06e4\u06d8\u06d8\u06d6\u06e1\u06d8\u06e8\u06d9\u06e0\u06e2\u06df\u06e0\u06e8\u06dc\u06e6\u06d8\u06e6\u06e1\u06e4\u06db\u06e5\u06d6\u06e8\u06e8\u06e6\u06d8\u06e5\u06e6\u06d9\u06d7\u06e6\u06d6"

    goto/16 :goto_0

    :sswitch_1f
    new-instance v1, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/cyjh/elfin/ui/view/customview/TitleView;->OoooOoo:Landroid/content/Context;

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v0, "\u06d8\u06d8\u06e7\u06d8\u06ec\u06e8\u06d8\u06e0\u06d8\u06dc\u06d7\u06d8\u06eb\u06e1\u06e7\u06e1\u06e8\u06db\u06df\u06df\u06e5\u06d6\u06e7\u06e5\u06eb\u06db\u06eb\u06e7\u06df\u06d8\u06e2\u06da\u06e4\u06d6\u06eb\u06e0\u06e7\u06ec\u06e2\u06e5\u06e0\u06e8\u06d8"

    goto/16 :goto_0

    :sswitch_20
    iput-object v1, p0, Lcom/cyjh/elfin/ui/view/customview/TitleView;->Oooooo0:Landroid/widget/TextView;

    const-string v0, "\u06e7\u06e8\u06d6\u06d8\u06dc\u06e8\u06d7\u06e8\u06df\u06df\u06eb\u06ec\u06d7\u06d7\u06d7\u06e6\u06db\u06e7\u06db\u06e6\u06e5\u06d8\u06e5\u06e7\u06dc\u06eb\u06e0\u06e6\u06e5\u06df\u06e1"

    goto/16 :goto_0

    :sswitch_21
    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    const-string v0, "\u06eb\u06e8\u06d6\u06e1\u06ec\u06eb\u06e5\u06e1\u06e7\u06d6\u06d6\u06dc\u06d6\u06e4\u06e8\u06d8\u06ec\u06d8\u06d7\u06e6\u06df\u06dc\u06df\u06dc\u06dc\u06e0\u06e7\u06dc\u06d8\u06da\u06d8\u06e7\u06e7\u06e8\u06e5\u06d8\u06e7\u06e2\u06d7\u06dc\u06e0\u06d8\u06d8\u06ec\u06d6\u06e7"

    goto/16 :goto_0

    :sswitch_22
    iget-object v0, p0, Lcom/cyjh/elfin/ui/view/customview/TitleView;->Oooooo0:Landroid/widget/TextView;

    new-instance v8, Lcom/cyjh/elfin/ui/view/customview/TitleView$OooO;

    const/4 v9, 0x0

    invoke-direct {v8, p0, v9}, Lcom/cyjh/elfin/ui/view/customview/TitleView$OooO;-><init>(Lcom/cyjh/elfin/ui/view/customview/TitleView;Lcom/cyjh/elfin/ui/view/customview/TitleView$OooO00o;)V

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "\u06e5\u06eb\u06d7\u06d9\u06d8\u06e8\u06d8\u06d9\u06da\u06dc\u06e5\u06e5\u06e4\u06d9\u06d6\u06db\u06ec\u06ec\u06ec\u06ec\u06e1\u06d8\u06e0\u06dc\u06dc\u06d9\u06d6\u06e4\u06e2\u06e8\u06e6\u06d8\u06e8\u06e5\u06e1\u06e1\u06e7"

    goto/16 :goto_0

    :sswitch_23
    iget-object v0, p0, Lcom/cyjh/elfin/ui/view/customview/TitleView;->Oooooo0:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    const-string v0, "\u06e8\u06e5\u06dc\u06d6\u06e4\u06d7\u06e0\u06e8\u06eb\u06d8\u06dc\u06ec\u06e5\u06e2\u06d7\u06dc\u06d8\u06db\u06e4\u06e5\u06d8\u06d6\u06e7\u06d8\u06d8\u06e7\u06da\u06d6\u06db\u06da\u06df\u06da\u06ec\u06e7\u06df\u06d6\u06e6"

    goto/16 :goto_0

    :sswitch_24
    iget-object v0, p0, Lcom/cyjh/elfin/ui/view/customview/TitleView;->Oooooo0:Landroid/widget/TextView;

    const/high16 v8, 0x41800000    # 16.0f

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setTextSize(F)V

    const-string v0, "\u06d7\u06e7\u06e8\u06d8\u06df\u06db\u06e4\u06df\u06e2\u06d6\u06d8\u06db\u06e5\u06dc\u06d8\u06e6\u06db\u06d7\u06ec\u06e5\u06e8\u06d8\u06d9\u06dc\u06d8\u06d8\u06da\u06d6\u06e6\u06d8\u06d6\u06e8\u06d7\u06e0\u06d8\u06df\u06e0\u06d6\u06ec\u06df\u06eb\u06e5\u06e8\u06e7\u06e1\u06d8\u06e5\u06d8\u06d8"

    goto/16 :goto_0

    :sswitch_25
    iget-object v0, p0, Lcom/cyjh/elfin/ui/view/customview/TitleView;->Oooooo0:Landroid/widget/TextView;

    const/4 v8, -0x1

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setTextColor(I)V

    const-string v0, "\u06e5\u06df\u06eb\u06e7\u06d8\u06dc\u06d8\u06db\u06df\u06e1\u06da\u06e4\u06e4\u06d7\u06d8\u06e2\u06d9\u06d7\u06e1\u06db\u06e5\u06e0\u06d9\u06e1\u06eb\u06da\u06e0\u06e7\u06d6\u06e2\u06e1\u06d8\u06d9\u06eb\u06d8\u06dc\u06d8\u06d8\u06e0\u06e0\u06e8\u06eb\u06e8\u06e7"

    goto/16 :goto_0

    :sswitch_26
    iget-object v0, p0, Lcom/cyjh/elfin/ui/view/customview/TitleView;->Oooooo0:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const-string v0, "\u06e8\u06e8\u06dc\u06d8\u06e2\u06e4\u06e6\u06e4\u06d8\u06dc\u06d8\u06d9\u06e7\u06e6\u06d8\u06eb\u06e6\u06e0\u06e1\u06e7\u06d8\u06e0\u06e5\u06da\u06e7\u06df\u06e5\u06d8\u06dc\u06d7\u06e1\u06e7\u06e5\u06dc\u06d8\u06e2\u06e5\u06d8\u06e5\u06e8\u06e8\u06e8\u06d8\u06dc\u06d8\u06d8\u06d9\u06e1"

    goto/16 :goto_0

    :sswitch_27
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x73bed447 -> :sswitch_11
        -0x72d08351 -> :sswitch_26
        -0x5d04a63e -> :sswitch_27
        -0x5cc7c524 -> :sswitch_25
        -0x5161d20e -> :sswitch_6
        -0x4ead7c6d -> :sswitch_8
        -0x4b1e161e -> :sswitch_4
        -0x3e78445d -> :sswitch_2
        -0x3c395318 -> :sswitch_1c
        -0x3c1e3419 -> :sswitch_1e
        -0x309e4ca5 -> :sswitch_22
        -0x2e1d4d8b -> :sswitch_f
        -0x6d1eb3a -> :sswitch_e
        -0x51596bd -> :sswitch_1f
        -0x200472b -> :sswitch_7
        -0x9e8abb -> :sswitch_20
        0x5a1a83 -> :sswitch_10
        0x16d55f04 -> :sswitch_12
        0x1bdc1c1e -> :sswitch_17
        0x1cd867bb -> :sswitch_1d
        0x20a3e993 -> :sswitch_19
        0x26b438e1 -> :sswitch_13
        0x29923b02 -> :sswitch_23
        0x2b7bc5fe -> :sswitch_b
        0x2f82bd15 -> :sswitch_a
        0x34eec44b -> :sswitch_0
        0x43fabe8e -> :sswitch_15
        0x48f5792f -> :sswitch_1a
        0x4bef5f93 -> :sswitch_16
        0x4e8650fa -> :sswitch_c
        0x502a0bf7 -> :sswitch_18
        0x542a6d76 -> :sswitch_24
        0x63a0a8eb -> :sswitch_1
        0x6a80df0b -> :sswitch_1b
        0x73732c97 -> :sswitch_3
        0x74c3b8eb -> :sswitch_21
        0x758b977a -> :sswitch_d
        0x777564e8 -> :sswitch_9
        0x7d7a8742 -> :sswitch_5
        0x7e3b1a00 -> :sswitch_14
    .end sparse-switch
.end method


# virtual methods
.method public setOnLeftImageViewListener(Lcom/cyjh/elfin/ui/view/customview/TitleView$OooO0O0;)V
    .locals 4

    const-string v0, "\u06dc\u06d8\u06e7\u06d8\u06d7\u06da\u06eb\u06e1\u06e8\u06e0\u06d6\u06d6\u06e2\u06e0\u06d6\u06d9\u06e4\u06e8\u06e5\u06d6\u06e6\u06e5\u06e4\u06e5\u06d8\u06e8\u06eb\u06d6\u06dc\u06e8\u06dc\u06e5\u06e2\u06db\u06e2\u06eb\u06db\u06d9\u06e5\u06e2\u06e2\u06df\u06e1\u06e7\u06e6\u06e2\u06da\u06e5\u06e0\u06d7\u06d7\u06dc\u06db\u06d8\u06d9"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x3aa

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0xa7

    const/16 v2, 0x204

    const v3, -0x6a68d4c4

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d6\u06e8\u06e1\u06e0\u06eb\u06e8\u06d8\u06e7\u06eb\u06df\u06df\u06e0\u06df\u06df\u06df\u06e0\u06df\u06df\u06e1\u06d8\u06e6\u06df\u06df\u06df\u06da\u06eb\u06e2\u06dc\u06dc\u06e7\u06d8\u06eb\u06d8\u06e8\u06ec\u06e4\u06eb"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06e5\u06d6\u06d6\u06d8\u06dc\u06e0\u06e2\u06eb\u06e0\u06e0\u06e1\u06e1\u06e4\u06d6\u06e0\u06e6\u06d8\u06e1\u06d8\u06db\u06e7\u06e2\u06e1\u06d8\u06e6\u06e0\u06e2\u06e4\u06e8\u06db\u06eb\u06d9\u06da\u06da\u06e4\u06e6\u06d8\u06da\u06e7\u06ec"

    goto :goto_0

    :sswitch_2
    iput-object p1, p0, Lcom/cyjh/elfin/ui/view/customview/TitleView;->OooooO0:Lcom/cyjh/elfin/ui/view/customview/TitleView$OooO0O0;

    const-string v0, "\u06e0\u06e5\u06df\u06e5\u06db\u06db\u06d8\u06eb\u06eb\u06e6\u06d6\u06eb\u06eb\u06dc\u06e0\u06e4\u06dc\u06da\u06ec\u06e1\u06d9\u06e8\u06d8\u06d8\u06e0\u06dc\u06e8\u06df\u06e1\u06d9\u06e2\u06e1\u06d8\u06dc\u06d6\u06eb\u06e2\u06e4\u06e8\u06e8\u06e7\u06d6\u06d8\u06e5\u06d8\u06d6\u06d8\u06d7\u06e6\u06d8"

    goto :goto_0

    :sswitch_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x293e0d1e -> :sswitch_1
        0x47515200 -> :sswitch_0
        0x593b2fc0 -> :sswitch_3
        0x7dad61a9 -> :sswitch_2
    .end sparse-switch
.end method

.method public setOnRightImageViewListener(Lcom/cyjh/elfin/ui/view/customview/TitleView$OooO0OO;)V
    .locals 4

    const-string v0, "\u06ec\u06e7\u06e4\u06df\u06e0\u06ec\u06e5\u06e5\u06e6\u06dc\u06e2\u06e0\u06d7\u06e5\u06e1\u06ec\u06d9\u06ec\u06e7\u06e1\u06e7\u06df\u06d7\u06e7\u06e0\u06d9\u06dc\u06d8\u06eb\u06e6\u06d6\u06e0\u06da\u06e4"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x130

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x297

    const/16 v2, 0x2e2

    const v3, -0x5a6ca4

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06db\u06ec\u06df\u06d6\u06df\u06e6\u06e8\u06eb\u06ec\u06df\u06e6\u06da\u06e1\u06e5\u06e8\u06d8\u06e8\u06e4\u06d6\u06e4\u06e1\u06d8\u06e1\u06e7\u06d7\u06e0\u06eb\u06e5\u06eb\u06e5\u06d7"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06d9\u06d6\u06e7\u06d8\u06eb\u06db\u06e5\u06d8\u06e6\u06df\u06e2\u06da\u06e8\u06da\u06d7\u06d7\u06e5\u06e2\u06e5\u06db\u06df\u06dc\u06d8\u06e8\u06e6\u06d6\u06d8\u06d7\u06df\u06d8\u06d8\u06e6\u06e2\u06e0\u06dc\u06e8\u06e5\u06d8\u06eb\u06d6\u06e0\u06e4\u06eb\u06dc\u06e1\u06dc\u06da\u06e4\u06d6\u06d9\u06df\u06d7\u06e6\u06d8\u06e1\u06e8\u06da\u06d8\u06e4\u06da"

    goto :goto_0

    :sswitch_2
    iput-object p1, p0, Lcom/cyjh/elfin/ui/view/customview/TitleView;->OooooOO:Lcom/cyjh/elfin/ui/view/customview/TitleView$OooO0OO;

    const-string v0, "\u06d8\u06eb\u06d6\u06e7\u06e2\u06e8\u06d7\u06e5\u06e5\u06e8\u06e1\u06e0\u06e5\u06e8\u06e6\u06d8\u06e7\u06d6\u06e5\u06d8\u06eb\u06e7\u06dc\u06d8\u06e5\u06e1\u06ec\u06e4\u06df\u06eb\u06e8\u06e2\u06db\u06ec\u06e1\u06e5\u06dc\u06eb\u06da"

    goto :goto_0

    :sswitch_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x6597d133 -> :sswitch_2
        -0x1247b58f -> :sswitch_0
        0xa796fff -> :sswitch_1
        0x16cca06a -> :sswitch_3
    .end sparse-switch
.end method

.method public setOnRightTextViewListener(Lcom/cyjh/elfin/ui/view/customview/TitleView$OooO0o;)V
    .locals 4

    const-string v0, "\u06e0\u06db\u06e0\u06df\u06d6\u06e6\u06e0\u06e7\u06dc\u06e1\u06e0\u06eb\u06e1\u06e1\u06eb\u06e6\u06e7\u06ec\u06d7\u06e6\u06eb\u06dc\u06eb\u06eb\u06e8\u06da\u06e8\u06d8\u06df\u06e7\u06e4\u06db\u06e1\u06eb\u06ec\u06da\u06e4\u06e4\u06dc\u06e4\u06da\u06dc\u06e4\u06e1\u06e2\u06e1\u06d8\u06da\u06da\u06da\u06e2\u06e0\u06dc\u06d8\u06e7\u06da\u06db"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x2f2

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x2c8

    const/16 v2, 0x168

    const v3, 0x72c5e15c

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e5\u06d7\u06e4\u06db\u06db\u06d6\u06d8\u06e8\u06e8\u06da\u06e7\u06dc\u06e5\u06df\u06e5\u06e6\u06df\u06dc\u06ec\u06d6\u06e6\u06d6\u06d8\u06e2\u06e2\u06d6\u06d8\u06e8\u06d8\u06dc\u06d8\u06db\u06e7\u06e5\u06d8\u06d6\u06e7\u06d8\u06e8\u06e2\u06e5\u06ec\u06dc\u06d8\u06d8\u06d8\u06db\u06ec\u06e5\u06e8\u06e8\u06e1\u06ec\u06d6"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06db\u06e0\u06d8\u06e4\u06e5\u06e5\u06d8\u06da\u06ec\u06da\u06e0\u06d7\u06e4\u06da\u06e2\u06e8\u06e7\u06e1\u06ec\u06d7\u06e1\u06e0\u06db\u06e0\u06e6\u06e2\u06d6\u06e1\u06d9\u06e6\u06d8\u06e0\u06e6\u06e1\u06d8\u06e0\u06e2\u06e1\u06d8\u06ec\u06ec\u06d6\u06d8\u06ec\u06df\u06d9"

    goto :goto_0

    :sswitch_2
    iput-object p1, p0, Lcom/cyjh/elfin/ui/view/customview/TitleView;->OooooOo:Lcom/cyjh/elfin/ui/view/customview/TitleView$OooO0o;

    const-string v0, "\u06eb\u06d8\u06e7\u06d8\u06d6\u06e4\u06df\u06e6\u06d8\u06e5\u06d8\u06d8\u06e1\u06e8\u06d8\u06d9\u06ec\u06e2\u06e8\u06df\u06e1\u06e0\u06e2\u06d7\u06e1\u06e6\u06e7\u06d8\u06e4\u06e1\u06da\u06eb\u06d8\u06d8\u06d8\u06d9\u06e8\u06eb\u06e7\u06d6\u06ec\u06d7\u06e6\u06e4\u06ec\u06df\u06e5\u06da\u06d7\u06e1\u06ec\u06df\u06e4"

    goto :goto_0

    :sswitch_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x75ec9388 -> :sswitch_3
        -0x662d42d7 -> :sswitch_2
        -0xfbd1b73 -> :sswitch_1
        0x2f144fe2 -> :sswitch_0
    .end sparse-switch
.end method

.method public setRightImage(I)V
    .locals 4

    const-string v0, "\u06da\u06ec\u06e5\u06e1\u06df\u06d6\u06e8\u06e2\u06db\u06dc\u06ec\u06eb\u06da\u06d9\u06e8\u06e4\u06e5\u06eb\u06da\u06e5\u06d8\u06df\u06e1\u06dc\u06e5\u06da\u06da\u06eb\u06db\u06e8\u06db\u06df\u06d8\u06d7\u06d7\u06e6\u06e6\u06df\u06eb\u06ec\u06da\u06e6\u06d9\u06e4\u06d9\u06e5\u06d7\u06eb"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x1ca

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x161

    const/16 v2, 0xab

    const v3, -0x34861689    # -1.6378231E7f

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d8\u06d6\u06e5\u06d8\u06d7\u06ec\u06e1\u06d8\u06e6\u06d6\u06eb\u06e6\u06da\u06e1\u06d8\u06e6\u06da\u06d8\u06d8\u06d9\u06e6\u06e7\u06da\u06e7\u06df\u06d9\u06e6\u06d8\u06e0\u06db\u06e7\u06e1\u06eb\u06db\u06d8\u06e5\u06e5\u06da\u06e4\u06eb\u06da\u06e1\u06d8\u06d8\u06d6\u06e4\u06d6\u06d8\u06e6\u06e0\u06eb\u06e1\u06df\u06e6\u06d8"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06d9\u06df\u06e1\u06dc\u06e2\u06e6\u06ec\u06d7\u06df\u06e4\u06e8\u06d6\u06ec\u06df\u06e1\u06d8\u06d8\u06d9\u06d6\u06e5\u06e0\u06eb\u06eb\u06e7\u06e6\u06db\u06dc\u06d8\u06d8\u06e8\u06e2\u06d8\u06d8"

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/cyjh/elfin/ui/view/customview/TitleView;->Ooooo0o:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    const-string v0, "\u06e6\u06e5\u06e6\u06d6\u06df\u06d8\u06d8\u06e6\u06df\u06d7\u06dc\u06d9\u06e5\u06db\u06e2\u06d9\u06dc\u06e1\u06dc\u06d8\u06e6\u06db\u06e8\u06db\u06db\u06d6\u06ec\u06e7\u06d7\u06d8\u06d8\u06dc\u06da\u06eb\u06e4\u06e7\u06e6\u06d8\u06e5\u06d6\u06d8\u06d9\u06e7\u06e6\u06d6\u06e1\u06e2\u06ec\u06e6\u06e4\u06df\u06e0\u06e6\u06d9\u06e6\u06d8"

    goto :goto_0

    :sswitch_3
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x748d9365 -> :sswitch_3
        0x5bffce34 -> :sswitch_0
        0x64d14511 -> :sswitch_1
        0x7d7c310a -> :sswitch_2
    .end sparse-switch
.end method

.method public setRightTvText(I)V
    .locals 4

    const-string v0, "\u06e5\u06e5\u06e0\u06ec\u06e4\u06d6\u06eb\u06d8\u06d6\u06d8\u06ec\u06d6\u06e5\u06d8\u06ec\u06d9\u06e6\u06eb\u06e8\u06e7\u06e0\u06db\u06e1\u06d8\u06da\u06e6\u06e0\u06eb\u06ec\u06e2\u06d7\u06e2\u06ec\u06d8\u06ec\u06d7\u06d9\u06e0\u06db"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x26

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x311

    const/16 v2, 0x1b4

    const v3, 0x6fc350b0

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e8\u06e5\u06e8\u06e1\u06d6\u06e6\u06db\u06e7\u06e0\u06e6\u06db\u06e8\u06d8\u06e2\u06ec\u06e5\u06e7\u06e4\u06e0\u06e6\u06e0\u06e8\u06e1\u06d7\u06da\u06e4\u06db\u06d9\u06e8\u06d8\u06e7\u06eb\u06e4\u06e4\u06e7\u06d6\u06ec\u06d7\u06d8\u06da\u06e7\u06e2\u06e1\u06e6\u06d8\u06e6\u06db\u06d6\u06d8\u06db\u06e5\u06e5\u06d6\u06e4\u06d7"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06d7\u06d6\u06df\u06dc\u06e1\u06dc\u06d8\u06d7\u06d8\u06e8\u06d8\u06e7\u06e5\u06e6\u06d6\u06e5\u06d8\u06d8\u06d6\u06e2\u06e5\u06d8\u06d9\u06e4\u06e4\u06e1\u06d6\u06dc\u06e0\u06eb\u06e0\u06d7\u06e1\u06d7\u06e8\u06df\u06e5\u06d8\u06e1\u06dc\u06e1"

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/cyjh/elfin/ui/view/customview/TitleView;->Oooooo0:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    const-string v0, "\u06dc\u06ec\u06e1\u06e8\u06ec\u06e6\u06e1\u06dc\u06d9\u06d6\u06d7\u06d9\u06e6\u06d8\u06ec\u06db\u06d8\u06d8\u06d6\u06d6\u06e0\u06e4\u06e6\u06e8\u06d8\u06ec\u06d6\u06e6\u06d8\u06e7\u06df\u06e4\u06d7\u06db\u06da\u06d6\u06e2\u06d7\u06ec\u06e2\u06eb\u06df\u06dc\u06d8\u06df\u06dc\u06e4\u06ec\u06d9\u06ec\u06e7\u06d8\u06d8\u06db\u06e4\u06ec"

    goto :goto_0

    :sswitch_3
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x230fe96 -> :sswitch_3
        -0x5a89df -> :sswitch_2
        0x18f4424f -> :sswitch_1
        0x1e63206b -> :sswitch_0
    .end sparse-switch
.end method

.method public setRightTvText(Ljava/lang/String;)V
    .locals 4

    const-string v0, "\u06dc\u06e6\u06e6\u06e1\u06d6\u06e6\u06d8\u06da\u06d9\u06da\u06da\u06d8\u06e7\u06d6\u06ec\u06e1\u06d8\u06dc\u06e2\u06e8\u06d8\u06e1\u06df\u06eb\u06da\u06df\u06eb\u06d6\u06e2\u06d9\u06e6\u06ec\u06dc\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0xb9

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x144

    const/16 v2, 0x36f

    const v3, 0x189f8e2c

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e8\u06eb\u06e1\u06e1\u06d9\u06ec\u06d8\u06d9\u06e8\u06e7\u06eb\u06e6\u06ec\u06ec\u06d8\u06d8\u06d6\u06e1\u06d6\u06eb\u06e1\u06e2\u06e5\u06e2\u06eb\u06d6\u06eb\u06d9\u06e2\u06e2\u06dc\u06d9\u06ec\u06e8\u06d6\u06eb\u06e7\u06df\u06db\u06e7\u06db\u06e2\u06d9\u06e5\u06d8\u06d8\u06d8\u06e7\u06da\u06e2\u06db\u06d8\u06e2\u06da\u06ec\u06e7"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06d6\u06e8\u06d9\u06e7\u06e1\u06e1\u06ec\u06eb\u06d7\u06e0\u06d9\u06eb\u06e5\u06e1\u06dc\u06e5\u06d7\u06e8\u06d8\u06d9\u06ec\u06d6\u06d8\u06db\u06eb\u06ec\u06db\u06db\u06d7\u06e6\u06d8\u06d8\u06e1\u06d9\u06e6\u06e0\u06db\u06d7\u06db\u06db\u06ec\u06e8\u06eb\u06e0\u06db\u06df\u06d7\u06d7\u06d6\u06e6\u06d8\u06eb\u06e7\u06e6\u06e5\u06db\u06da"

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/cyjh/elfin/ui/view/customview/TitleView;->Oooooo0:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "\u06e7\u06eb\u06d8\u06d8\u06df\u06df\u06e1\u06d8\u06e1\u06ec\u06dc\u06d8\u06db\u06db\u06dc\u06e2\u06e5\u06d6\u06d8\u06d7\u06e4\u06e8\u06d8\u06eb\u06d9\u06e1\u06e8\u06e1\u06d8\u06d8\u06eb\u06d8\u06e1\u06e7\u06ec\u06d7\u06e7\u06e7\u06dc\u06df\u06e2\u06e7\u06e2\u06df\u06df\u06e5\u06d8\u06e6\u06e5\u06df\u06eb\u06da\u06d8\u06e8\u06e8\u06df"

    goto :goto_0

    :sswitch_3
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7742cd84 -> :sswitch_0
        0x8265bef -> :sswitch_2
        0x10b8058a -> :sswitch_1
        0x1866cc29 -> :sswitch_3
    .end sparse-switch
.end method

.method public setTitleSize(I)V
    .locals 4

    const-string v0, "\u06e7\u06eb\u06d9\u06d7\u06df\u06dc\u06d8\u06e8\u06e0\u06dc\u06d8\u06ec\u06da\u06dc\u06eb\u06db\u06d8\u06d8\u06da\u06ec\u06da\u06da\u06e5\u06e5\u06d8\u06df\u06da\u06e5\u06d8\u06d7\u06eb\u06e6\u06d8\u06ec\u06e0\u06ec"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x38f

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x328

    const/16 v2, 0x10d

    const v3, 0x569de9a

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e0\u06e4\u06df\u06db\u06db\u06e8\u06e1\u06db\u06e0\u06e0\u06df\u06dc\u06d8\u06e7\u06d8\u06e6\u06d8\u06e4\u06e6\u06d7\u06e0\u06d8\u06d6\u06e8\u06dc\u06e6\u06eb\u06d6\u06ec\u06e7\u06d8\u06d7\u06e0\u06d9\u06d8\u06d8\u06d9\u06d8\u06e1\u06e6\u06e4\u06ec\u06eb\u06e8\u06e0"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06d9\u06e1\u06e6\u06e7\u06e8\u06e6\u06d8\u06e0\u06df\u06dc\u06e2\u06e8\u06e6\u06e5\u06dc\u06dc\u06d8\u06d8\u06e5\u06da\u06d9\u06e2\u06d6\u06d8\u06db\u06d7\u06e4\u06dc\u06da\u06ec\u06e1\u06e7\u06db\u06e1\u06ec\u06e0\u06e2\u06ec\u06e7\u06d8\u06dc\u06eb\u06df\u06db\u06e4\u06e5\u06d7\u06e8\u06ec\u06e6\u06d8\u06d6\u06e2\u06ec\u06dc\u06ec\u06e1\u06d8"

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/cyjh/elfin/ui/view/customview/TitleView;->OoooOoO:Landroid/widget/TextView;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    const-string v0, "\u06d6\u06d9\u06d6\u06d8\u06e8\u06da\u06d8\u06d8\u06e2\u06d6\u06dc\u06d7\u06dc\u06e6\u06d8\u06d6\u06d7\u06e5\u06db\u06da\u06df\u06d8\u06e0\u06e1\u06e7\u06d9\u06e0\u06da\u06e8\u06d9\u06e5\u06dc\u06d8\u06e2\u06db\u06e5\u06d8\u06da\u06da\u06d6"

    goto :goto_0

    :sswitch_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x5b551201 -> :sswitch_0
        0x11248de8 -> :sswitch_2
        0x4971d02b -> :sswitch_3
        0x667480d7 -> :sswitch_1
    .end sparse-switch
.end method

.method public setTitleText(I)V
    .locals 4

    const-string v0, "\u06eb\u06eb\u06e5\u06d6\u06d9\u06e8\u06d8\u06e6\u06ec\u06dc\u06e0\u06e0\u06d6\u06d8\u06e6\u06d7\u06e7\u06d6\u06e6\u06d8\u06e7\u06e5\u06df\u06d8\u06e8\u06e1\u06d7\u06da\u06e0\u06ec\u06e0\u06d9"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x259

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x14d

    const/16 v2, 0x246

    const v3, -0x1bee889f

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d7\u06e4\u06e5\u06da\u06ec\u06d7\u06db\u06e2\u06d6\u06d8\u06db\u06d9\u06df\u06e1\u06df\u06dc\u06d8\u06e5\u06da\u06db\u06d8\u06e5\u06eb\u06e6\u06da\u06eb\u06d6\u06e6\u06da\u06da\u06e4\u06e0\u06eb\u06e5\u06e8\u06e7\u06ec\u06d8\u06db\u06d6\u06e6\u06d6\u06eb\u06da"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06e5\u06ec\u06ec\u06e2\u06d9\u06da\u06dc\u06e8\u06e0\u06e0\u06e1\u06d7\u06d9\u06ec\u06e6\u06d8\u06e2\u06db\u06df\u06e1\u06e2\u06da\u06d9\u06df\u06d8\u06e7\u06db\u06e6\u06d8\u06d9\u06ec\u06e2\u06e0\u06dc\u06d8\u06da\u06d6\u06df\u06e4\u06da\u06e4\u06e8\u06d7\u06dc\u06e5\u06df\u06ec\u06db\u06d7\u06e7"

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/cyjh/elfin/ui/view/customview/TitleView;->OoooOoO:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    const-string v0, "\u06e2\u06e1\u06d7\u06e7\u06da\u06e2\u06db\u06db\u06e5\u06d8\u06d6\u06e4\u06d9\u06d9\u06da\u06e6\u06d8\u06d9\u06e6\u06df\u06d7\u06d8\u06e4\u06df\u06da\u06e6\u06d8\u06d8\u06da\u06d6\u06d8\u06d9\u06db\u06d6\u06d9\u06dc\u06e1\u06e4\u06dc\u06e1\u06d7\u06e7\u06e4\u06d8\u06e6\u06d8\u06e6\u06e0\u06d6\u06e6\u06db\u06e5"

    goto :goto_0

    :sswitch_3
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5cfa9f6a -> :sswitch_1
        -0x338f7ec3 -> :sswitch_2
        0x793df3c0 -> :sswitch_3
        0x7f17ed59 -> :sswitch_0
    .end sparse-switch
.end method

.method public setTitleText(Ljava/lang/String;)V
    .locals 4

    const-string v0, "\u06df\u06d7\u06e1\u06d8\u06d8\u06e8\u06d6\u06e1\u06dc\u06ec\u06ec\u06eb\u06e0\u06db\u06db\u06ec\u06d7\u06dc\u06da\u06df\u06e5\u06d8\u06d8\u06ec\u06e8\u06d8\u06db\u06d7\u06e5\u06d8\u06e1\u06dc\u06e7\u06d8\u06e8\u06dc\u06d7\u06e4\u06eb\u06e6\u06d7\u06d9\u06e8\u06d8\u06eb\u06e1\u06e7\u06dc\u06e6\u06e0\u06e2\u06da\u06e0\u06d8\u06e2\u06d7\u06e4\u06da\u06e1"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x2b2

    xor-int/2addr v1, v2

    xor-int/lit8 v1, v1, 0x67

    const/16 v2, 0x2db

    const v3, -0x35d20faf

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06dc\u06e8\u06d7\u06e5\u06da\u06e5\u06d8\u06e4\u06e1\u06da\u06dc\u06d7\u06d8\u06d8\u06eb\u06eb\u06e5\u06d8\u06df\u06d9\u06e0\u06e6\u06d6\u06e5\u06d8\u06e6\u06e6\u06d6\u06d6\u06da\u06e1\u06d8\u06da\u06dc\u06d9\u06eb\u06e6\u06d6\u06d8\u06d8\u06e4\u06dc"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06df\u06db\u06e4\u06e8\u06e5\u06e7\u06e2\u06d8\u06d8\u06e0\u06db\u06dc\u06e8\u06e0\u06e7\u06e0\u06e1\u06e1\u06d8\u06e7\u06e6\u06e2\u06da\u06d6\u06db\u06e2\u06eb\u06eb\u06d6\u06df\u06dc\u06d8\u06db\u06df\u06e8\u06d8\u06db\u06dc\u06df\u06eb\u06db\u06d9\u06d6\u06e0\u06e7\u06da\u06e4\u06eb\u06e4\u06e6\u06d7"

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/cyjh/elfin/ui/view/customview/TitleView;->OoooOoO:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "\u06d8\u06db\u06da\u06ec\u06e0\u06e8\u06d8\u06df\u06e2\u06e8\u06e6\u06e4\u06e7\u06e2\u06e0\u06dc\u06e2\u06e4\u06e1\u06e1\u06e2\u06db\u06e7\u06dc\u06e8\u06d8\u06e2\u06e2\u06d8\u06d6\u06d8\u06e4\u06e2\u06d7\u06e6\u06d9\u06dc\u06da\u06df\u06ec\u06e4\u06e0\u06d6\u06d8"

    goto :goto_0

    :sswitch_3
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5e04c6dd -> :sswitch_1
        -0xf6ab45b -> :sswitch_3
        0x3321400d -> :sswitch_0
        0x3b5a2a12 -> :sswitch_2
    .end sparse-switch
.end method

.method public setVisibilityLeftImage(I)V
    .locals 4

    const-string v0, "\u06d9\u06db\u06e6\u06d8\u06e6\u06e8\u06e7\u06df\u06d9\u06e8\u06d8\u06e8\u06d9\u06e7\u06e5\u06eb\u06ec\u06d6\u06d6\u06d6\u06d8\u06d6\u06df\u06eb\u06df\u06e0\u06df\u06d6\u06da\u06d6\u06e8\u06df\u06e0\u06df\u06e8\u06d6\u06d6\u06d9\u06e2\u06e2\u06db\u06d6\u06d8\u06eb\u06e4\u06e4"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x259

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x363

    const/16 v2, 0x361

    const v3, -0x4a60a608

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e0\u06e6\u06ec\u06e7\u06db\u06dc\u06d8\u06d6\u06d9\u06e8\u06d8\u06eb\u06db\u06e6\u06e7\u06d9\u06d9\u06da\u06eb\u06e8\u06d8\u06e2\u06e0\u06e5\u06d8\u06e6\u06e1\u06e0\u06eb\u06e6\u06e4\u06e7\u06da\u06d9\u06e6\u06eb\u06df\u06e7\u06e2\u06dc\u06d8\u06e4\u06e5\u06d9\u06e5\u06e8\u06e7"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06d6\u06df\u06e1\u06ec\u06e0\u06e4\u06da\u06ec\u06d6\u06da\u06dc\u06d8\u06e7\u06d8\u06e0\u06e0\u06e2\u06da\u06d7\u06eb\u06e7\u06da\u06eb\u06e6\u06d8\u06ec\u06e2\u06db\u06e2\u06d8"

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/cyjh/elfin/ui/view/customview/TitleView;->Ooooo00:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    const-string v0, "\u06ec\u06e1\u06eb\u06e7\u06da\u06df\u06e0\u06eb\u06da\u06e0\u06dc\u06d8\u06e4\u06e6\u06d8\u06d8\u06e5\u06eb\u06d6\u06d7\u06da\u06e0\u06e1\u06e0\u06ec\u06dc\u06e7\u06d9\u06d7\u06ec\u06da\u06d9\u06e6\u06d9\u06e1\u06e6\u06d8\u06eb\u06d7\u06da\u06db\u06e4\u06e0"

    goto :goto_0

    :sswitch_3
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x74138c43 -> :sswitch_0
        -0x5148e21c -> :sswitch_1
        -0x36891a5 -> :sswitch_2
        -0x188c81f -> :sswitch_3
    .end sparse-switch
.end method

.method public setVisibilityRightImage(I)V
    .locals 4

    const-string v0, "\u06e8\u06d9\u06da\u06d7\u06e4\u06eb\u06e2\u06eb\u06da\u06e4\u06db\u06e5\u06da\u06e0\u06db\u06eb\u06d8\u06db\u06e8\u06e0\u06dc\u06d8\u06da\u06d6\u06d8\u06e5\u06e8\u06d8\u06d8\u06e8\u06ec\u06e7"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x74

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x22f

    const/16 v2, 0xef

    const v3, -0x3a15c42d

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06ec\u06d7\u06da\u06d6\u06eb\u06d8\u06e4\u06e8\u06d6\u06d8\u06dc\u06e6\u06e7\u06d8\u06d8\u06e5\u06e5\u06db\u06e5\u06e5\u06d8\u06e8\u06d7\u06da\u06e0\u06df\u06d9\u06d9\u06d6\u06ec\u06dc\u06e1\u06df\u06eb\u06d6\u06db\u06ec\u06da\u06e1\u06d8\u06dc\u06e5\u06e8\u06d8\u06e4\u06e1\u06ec\u06e7\u06da\u06d8\u06d8\u06d8\u06e8\u06e1\u06e1\u06e7\u06eb\u06e1\u06ec\u06e5"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06df\u06d6\u06e5\u06dc\u06df\u06db\u06e1\u06e0\u06eb\u06e6\u06db\u06d8\u06ec\u06da\u06e7\u06d7\u06ec\u06db\u06e5\u06d6\u06da\u06dc\u06d8\u06e1\u06e5\u06d6\u06d8\u06db\u06d8\u06ec\u06d8\u06e6\u06e7\u06da\u06eb\u06d6\u06d8\u06da\u06d9\u06db\u06e1\u06e7\u06d8\u06e8\u06d9\u06df\u06db\u06e0\u06d8"

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/cyjh/elfin/ui/view/customview/TitleView;->Ooooo0o:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    const-string v0, "\u06e0\u06e0\u06e6\u06d6\u06d7\u06d8\u06d8\u06e2\u06e6\u06d6\u06d8\u06eb\u06eb\u06d8\u06e7\u06da\u06eb\u06e4\u06e6\u06e6\u06da\u06d9\u06d6\u06d8\u06e4\u06d6\u06e1\u06d8\u06da\u06df\u06e1\u06d8\u06d8\u06e2\u06dc\u06d8\u06d9\u06d6\u06d7\u06e5\u06e8\u06e5\u06d8"

    goto :goto_0

    :sswitch_3
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6a426541 -> :sswitch_1
        0x5cc5b4a -> :sswitch_3
        0x16f16ef2 -> :sswitch_2
        0x1d2d8fc4 -> :sswitch_0
    .end sparse-switch
.end method

.method public setVisibilityTvRight(I)V
    .locals 4

    const-string v0, "\u06d7\u06db\u06e5\u06e7\u06dc\u06e5\u06d8\u06e0\u06e5\u06d8\u06d8\u06d9\u06e0\u06dc\u06d8\u06d9\u06e1\u06d9\u06e7\u06d6\u06eb\u06e4\u06d8\u06e0\u06eb\u06ec\u06d9\u06db\u06e7\u06ec\u06e7\u06db\u06eb\u06e8\u06e0\u06e5\u06e7\u06e2\u06dc\u06da\u06e0\u06e4\u06db\u06dc\u06dc\u06d8\u06e7\u06e8\u06d6\u06d8\u06d8\u06da\u06db"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x1df

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x303

    const/16 v2, 0x1a5

    const v3, 0x75ded7e

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06eb\u06ec\u06e8\u06d8\u06e8\u06dc\u06d8\u06d7\u06e5\u06ec\u06d7\u06d6\u06eb\u06d7\u06ec\u06e8\u06d8\u06e5\u06e7\u06dc\u06e4\u06db\u06e8\u06dc\u06d9\u06dc\u06d6\u06d6\u06e4\u06db\u06e1\u06d6\u06d8\u06e5\u06e8\u06e7\u06d8\u06e5\u06df\u06db\u06e6\u06e6\u06d8\u06e2\u06d9\u06d6"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06e0\u06d8\u06d8\u06d8\u06da\u06d9\u06da\u06db\u06d9\u06e4\u06d6\u06dc\u06da\u06d6\u06e0\u06e1\u06d8\u06db\u06d7\u06d8\u06e2\u06e0\u06e8\u06e7\u06e2\u06d9\u06eb\u06eb\u06e0\u06e6\u06e7\u06d6\u06d8\u06d8\u06e4\u06db\u06d7\u06dc\u06e5\u06e1\u06d8\u06ec\u06da\u06d6\u06e0\u06e7\u06e6\u06dc"

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/cyjh/elfin/ui/view/customview/TitleView;->Oooooo0:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    const-string v0, "\u06e1\u06ec\u06ec\u06d6\u06da\u06d6\u06d8\u06d8\u06e7\u06e2\u06d8\u06e6\u06dc\u06d8\u06d6\u06e0\u06e8\u06d8\u06d8\u06e2\u06d8\u06eb\u06da\u06e1\u06d8\u06d8\u06e8\u06d9\u06e7\u06e4\u06e5\u06db\u06ec\u06d6"

    goto :goto_0

    :sswitch_3
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x46857341 -> :sswitch_2
        -0x292e19b7 -> :sswitch_0
        -0x20b3dddb -> :sswitch_3
        0x453ae86d -> :sswitch_1
    .end sparse-switch
.end method

.method public setleftImage(I)V
    .locals 4

    const-string v0, "\u06da\u06e4\u06d9\u06d7\u06e0\u06df\u06e1\u06d7\u06db\u06d9\u06e0\u06d8\u06d8\u06e1\u06ec\u06dc\u06d8\u06dc\u06d6\u06d6\u06d8\u06ec\u06d7\u06e2\u06df\u06df\u06d6\u06e1\u06e5\u06d8\u06d8\u06df\u06e8\u06e6"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x3d4

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x1d2

    const/16 v2, 0x30a

    const v3, -0x26288f97

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06df\u06db\u06df\u06e0\u06db\u06d6\u06d8\u06e1\u06da\u06d9\u06ec\u06dc\u06db\u06e7\u06d8\u06e6\u06d8\u06e4\u06df\u06d9\u06e4\u06e5\u06da\u06e0\u06da\u06ec\u06d8\u06dc\u06d8\u06d8\u06d6\u06dc\u06eb\u06e0\u06db\u06e5\u06da\u06dc\u06dc\u06d8\u06eb\u06e2\u06e2\u06e0\u06d8\u06e4\u06e1\u06d8\u06d8\u06d8\u06e2\u06e4\u06e1\u06d8"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06e5\u06e8\u06e1\u06e7\u06d8\u06e2\u06dc\u06e4\u06e5\u06db\u06e4\u06e1\u06d8\u06e6\u06d6\u06d8\u06d8\u06e0\u06eb\u06df\u06eb\u06dc\u06e6\u06db\u06e2\u06e1\u06d8\u06e1\u06e5\u06d8\u06e5\u06e7\u06e6\u06dc\u06d9\u06d8\u06e8\u06df\u06da\u06eb\u06d9\u06e5\u06d8\u06d6\u06d9\u06da\u06da\u06e5\u06e5\u06e4\u06d9\u06e4"

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/cyjh/elfin/ui/view/customview/TitleView;->Ooooo00:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    const-string v0, "\u06d7\u06d8\u06e0\u06e0\u06df\u06dc\u06d8\u06e5\u06e4\u06df\u06e5\u06d7\u06d7\u06dc\u06e5\u06e5\u06d8\u06da\u06da\u06d8\u06d8\u06e5\u06d9\u06d6\u06d8\u06dc\u06da\u06dc\u06d6\u06e1\u06dc\u06d8\u06da\u06e6\u06d6\u06d8\u06e7\u06da\u06e6\u06eb\u06e0"

    goto :goto_0

    :sswitch_3
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6b880b7d -> :sswitch_3
        -0x263a1a41 -> :sswitch_2
        0x273a7604 -> :sswitch_1
        0x51eaf677 -> :sswitch_0
    .end sparse-switch
.end method
