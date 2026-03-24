.class public Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;
.super Landroid/widget/HorizontalScrollView;

# interfaces
.implements Lz2/ab;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator$OooO0OO;,
        Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator$OooO0o;
    }
.end annotation


# static fields
.field private static final Oooooo:Ljava/lang/CharSequence;


# instance fields
.field private OoooOoO:Ljava/lang/Runnable;

.field private final OoooOoo:Landroid/view/View$OnClickListener;

.field private final Ooooo00:Lz2/za;

.field private Ooooo0o:Landroidx/viewpager/widget/ViewPager;

.field private OooooO0:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

.field private OooooOO:I

.field private OooooOo:I

.field private Oooooo0:Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator$OooO0OO;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const-string v0, "\u06d9\u06d8\u06da\u06d9\u06e5\u06eb\u06ec\u06da\u06d8\u06da\u06e8\u06dc\u06d8\u06e2\u06e4\u06d8\u06d7\u06da\u06e6\u06d8\u06df\u06d7\u06e5\u06e6\u06e1\u06e8\u06d8\u06d8\u06eb\u06e1\u06d8\u06d6\u06dc\u06e8\u06dc\u06d7\u06d6\u06e5\u06eb\u06db"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x223

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x8f

    const/16 v2, 0x28f

    const v3, 0xc6f15b1

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, ""

    sput-object v0, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;->Oooooo:Ljava/lang/CharSequence;

    const-string v0, "\u06d9\u06e6\u06e8\u06ec\u06e5\u06d8\u06e1\u06e2\u06e5\u06d8\u06e8\u06ec\u06df\u06e1\u06e5\u06df\u06d9\u06df\u06e8\u06eb\u06e6\u06e1\u06df\u06d9\u06da\u06e4\u06d6\u06d8\u06e2\u06e5\u06ec"

    goto :goto_0

    :sswitch_1
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7e5a1d79 -> :sswitch_0
        -0x765850eb -> :sswitch_1
    .end sparse-switch
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator$OooO00o;

    invoke-direct {v0, p0}, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator$OooO00o;-><init>(Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;)V

    iput-object v0, p0, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;->OoooOoo:Landroid/view/View$OnClickListener;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->setHorizontalScrollBarEnabled(Z)V

    new-instance v0, Lz2/za;

    const v1, 0x7f040275

    invoke-direct {v0, p1, v1}, Lz2/za;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;->Ooooo00:Lz2/za;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static synthetic OooO0OO(Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;)Landroidx/viewpager/widget/ViewPager;
    .locals 4

    const-string v0, "\u06da\u06d7\u06da\u06d6\u06d8\u06e1\u06d8\u06e1\u06e5\u06e7\u06d8\u06e1\u06d8\u06e5\u06eb\u06eb\u06eb\u06da\u06d9\u06e7\u06d6\u06e1\u06d8\u06e4\u06d6\u06e8\u06d8\u06da\u06ec\u06d8\u06d8\u06d6\u06e7\u06e5"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0xd8

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x176

    const/16 v2, 0x2a3

    const v3, 0x66720614

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e8\u06ec\u06e5\u06d8\u06e0\u06d9\u06e1\u06d8\u06d9\u06e4\u06df\u06e2\u06e4\u06e4\u06eb\u06e7\u06eb\u06dc\u06e1\u06d8\u06d9\u06e4\u06d9\u06e5\u06e7\u06e5\u06d8\u06dc\u06e6\u06d8\u06d8\u06e5\u06db\u06da\u06eb\u06e0\u06e6\u06d8\u06db\u06e6\u06d6\u06d8\u06e5\u06d7\u06db\u06d7\u06e2\u06dc\u06d8"

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;->Ooooo0o:Landroidx/viewpager/widget/ViewPager;

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x4dc34cf6 -> :sswitch_0
        -0x242bc70b -> :sswitch_1
    .end sparse-switch
.end method

.method public static synthetic OooO0Oo(Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;)Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator$OooO0OO;
    .locals 4

    const-string v0, "\u06dc\u06ec\u06d6\u06d9\u06eb\u06d6\u06d8\u06d9\u06df\u06e1\u06e1\u06e8\u06ec\u06d9\u06d7\u06e6\u06dc\u06d9\u06db\u06e2\u06df\u06e8\u06d8\u06db\u06d9\u06e6\u06d8\u06ec\u06e4\u06e4\u06e0\u06db\u06e4\u06d9\u06e4\u06e6\u06df\u06d6\u06d7\u06e7\u06d8\u06d9\u06ec\u06eb\u06e6"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x219

    xor-int/2addr v1, v2

    xor-int/lit8 v1, v1, 0x1b

    const/16 v2, 0x8a

    const v3, 0x26a958da

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e6\u06df\u06eb\u06d7\u06ec\u06e1\u06e0\u06e4\u06dc\u06eb\u06e1\u06e5\u06eb\u06e5\u06da\u06e2\u06eb\u06d9\u06d7\u06db\u06e2\u06d9\u06e1\u06e6\u06e6\u06e6\u06e4\u06d7\u06d9"

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;->Oooooo0:Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator$OooO0OO;

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x4565bb17 -> :sswitch_1
        0x7e4b4b0a -> :sswitch_0
    .end sparse-switch
.end method

.method public static synthetic OooO0o(Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;)I
    .locals 4

    const-string v0, "\u06da\u06e7\u06d6\u06e6\u06d8\u06e2\u06d9\u06eb\u06e7\u06eb\u06e8\u06d8\u06d8\u06e6\u06d7\u06e4\u06dc\u06e5\u06e6\u06d8\u06da\u06ec\u06e1\u06da\u06e4\u06e6\u06d8\u06e8\u06df\u06d7\u06dc\u06e2\u06d7\u06d6\u06e2\u06d8\u06e5\u06d6\u06e5\u06d8\u06d7\u06ec\u06db\u06d8\u06d8\u06d6\u06e7\u06db\u06d8\u06da\u06e6\u06d8\u06eb\u06d7\u06e8\u06d8\u06db\u06ec\u06eb"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x11f

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x13c

    const/16 v2, 0x196

    const v3, -0x5ba04171

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e7\u06d7\u06d6\u06e2\u06e5\u06e8\u06e2\u06e4\u06e8\u06d8\u06e4\u06e6\u06d9\u06e0\u06ec\u06e6\u06db\u06e0\u06e2\u06d9\u06e1\u06e2\u06e4\u06dc\u06d8\u06e7\u06d9\u06e6\u06d9\u06e7\u06d8\u06ec\u06dc\u06db\u06d9\u06db\u06e5\u06d8"

    goto :goto_0

    :sswitch_1
    iget v0, p0, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;->OooooOO:I

    return v0

    :sswitch_data_0
    .sparse-switch
        -0x6c3b583f -> :sswitch_1
        -0x3950e92b -> :sswitch_0
    .end sparse-switch
.end method

.method public static synthetic OooO0o0(Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 4

    const-string v0, "\u06df\u06df\u06da\u06da\u06e2\u06d8\u06d8\u06e6\u06e1\u06d8\u06d8\u06e1\u06e1\u06e7\u06e2\u06d8\u06e0\u06d7\u06ec\u06ec\u06d9\u06ec\u06db\u06e8\u06df\u06e5\u06d9\u06e1\u06e7\u06ec\u06d6\u06d8\u06e7\u06da\u06eb\u06ec\u06d8\u06e1\u06e6\u06dc\u06e4\u06eb\u06d6\u06df"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x180

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x253

    const/16 v2, 0x3b8

    const v3, -0x12f91b39

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d9\u06e2\u06e8\u06d8\u06e7\u06e0\u06da\u06dc\u06e6\u06d8\u06e1\u06dc\u06e8\u06e2\u06e7\u06e8\u06d8\u06d9\u06da\u06e6\u06e7\u06d8\u06dc\u06d8\u06dc\u06e5\u06d8\u06e4\u06df\u06d6\u06e8\u06d8\u06d6\u06e1\u06e5\u06db\u06da\u06d8\u06e0\u06e0\u06e7\u06eb\u06d6\u06d7\u06db\u06db\u06e8\u06eb\u06da\u06d8\u06e8\u06eb\u06df\u06e5\u06eb\u06ec\u06d6"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06ec\u06d6\u06e1\u06df\u06e2\u06e7\u06d9\u06d9\u06dc\u06d8\u06e8\u06d7\u06e1\u06e0\u06db\u06e2\u06e2\u06da\u06e5\u06eb\u06e2\u06da\u06d9\u06e4\u06e8\u06e5\u06da\u06e7\u06e1\u06e1\u06e6\u06d8\u06e8\u06d7\u06e0\u06dc\u06e6\u06d6\u06df\u06e8\u06db\u06e4\u06e0\u06ec\u06eb\u06dc\u06df\u06e0\u06db\u06db"

    goto :goto_0

    :sswitch_2
    iput-object p1, p0, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;->OoooOoO:Ljava/lang/Runnable;

    const-string v0, "\u06e7\u06dc\u06e2\u06d8\u06db\u06dc\u06e8\u06da\u06e6\u06d8\u06e2\u06d7\u06df\u06da\u06e0\u06d6\u06ec\u06d8\u06e5\u06d6\u06e4\u06d9\u06d8\u06df\u06e7\u06d6\u06dc\u06d8\u06e1\u06eb\u06e0\u06e1\u06e6\u06e5\u06eb\u06da\u06dc\u06d6\u06eb\u06d6\u06e0\u06eb\u06ec\u06dc\u06e4\u06eb\u06e0\u06e8\u06d8"

    goto :goto_0

    :sswitch_3
    return-object p1

    :sswitch_data_0
    .sparse-switch
        -0x7d924396 -> :sswitch_2
        -0x6e5674e7 -> :sswitch_1
        -0xc5a66e6 -> :sswitch_3
        0x5b2a4083 -> :sswitch_0
    .end sparse-switch
.end method

.method private OooO0oO(ILjava/lang/CharSequence;I)V
    .locals 6

    const/4 v5, 0x0

    const/4 v1, 0x0

    const-string v0, "\u06e7\u06d7\u06d9\u06da\u06df\u06e0\u06e4\u06e5\u06d9\u06db\u06d8\u06e2\u06d8\u06e6\u06d8\u06eb\u06e0\u06e0\u06e2\u06e0\u06e6\u06dc\u06e5\u06e1\u06e1\u06e7\u06e1\u06e5\u06d6\u06e1\u06e4\u06db\u06da\u06e0\u06e0\u06e2\u06d6\u06d8\u06e8\u06ec\u06da\u06e5\u06e4\u06e8\u06d8\u06e1\u06e2\u06d9"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v3, 0x2a

    xor-int/2addr v2, v3

    xor-int/lit16 v2, v2, 0x1b6

    const/16 v3, 0x1ec

    const v4, 0x62eb4357

    xor-int/2addr v2, v3

    xor-int/2addr v2, v4

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d6\u06e4\u06e0\u06e1\u06d6\u06d7\u06e2\u06d8\u06e8\u06e7\u06e6\u06ec\u06e6\u06d7\u06e2\u06d7\u06e8\u06e8\u06d8\u06d9\u06d8\u06e5\u06d9\u06d8\u06e5\u06db\u06d7\u06e7\u06e2\u06e6\u06e4\u06d7\u06d8\u06ec\u06d7\u06ec\u06da\u06e0\u06db\u06e4\u06da\u06df\u06d8\u06d8\u06e4\u06e2\u06e1\u06d8\u06dc\u06df\u06e8\u06d8"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06e4\u06d7\u06e5\u06d8\u06e5\u06e6\u06e6\u06d8\u06e0\u06e1\u06d6\u06d8\u06e5\u06e6\u06e8\u06dc\u06e5\u06e2\u06d9\u06e6\u06db\u06eb\u06e6\u06d9\u06e7\u06df\u06d8\u06e7\u06d6\u06e6\u06d8\u06ec\u06d6\u06e1\u06e1\u06e2\u06e6\u06d8\u06dc\u06dc\u06e6\u06d8\u06da\u06d7\u06e6\u06e8\u06e8\u06e1\u06d8\u06d9\u06df\u06e7\u06db\u06ec\u06d7"

    goto :goto_0

    :sswitch_2
    const-string v0, "\u06e2\u06d8\u06e2\u06db\u06e1\u06dc\u06e5\u06eb\u06d9\u06da\u06db\u06d8\u06d8\u06e8\u06e5\u06ec\u06e4\u06e5\u06d8\u06db\u06da\u06e6\u06d8\u06e7\u06e2\u06e1\u06d8\u06e5\u06e4\u06d6\u06d8\u06dc\u06e5\u06e5\u06d8\u06e2\u06dc\u06e0\u06e0\u06e7\u06e6\u06d8"

    goto :goto_0

    :sswitch_3
    const-string v0, "\u06dc\u06e6\u06d8\u06e1\u06e6\u06eb\u06eb\u06db\u06e5\u06d8\u06db\u06d6\u06e7\u06d8\u06e4\u06e1\u06e2\u06d9\u06e2\u06e7\u06df\u06da\u06e1\u06d8\u06d6\u06ec\u06e2\u06e5\u06dc\u06e2\u06e4\u06df\u06d8"

    goto :goto_0

    :sswitch_4
    new-instance v1, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator$OooO0o;

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator$OooO0o;-><init>(Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;Landroid/content/Context;)V

    const-string v0, "\u06e8\u06db\u06df\u06e2\u06d9\u06e7\u06ec\u06dc\u06e4\u06e2\u06df\u06e1\u06d8\u06ec\u06e0\u06d6\u06e5\u06d9\u06e6\u06e6\u06e4\u06dc\u06d8\u06e1\u06ec\u06e5\u06d8\u06e0\u06e1\u06db\u06e5\u06d6\u06da\u06d7\u06dc\u06df\u06d6"

    goto :goto_0

    :sswitch_5
    invoke-static {v1, p1}, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator$OooO0o;->OooO00o(Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator$OooO0o;I)I

    const-string v0, "\u06e8\u06e4\u06e5\u06e4\u06d6\u06e6\u06d8\u06e8\u06e2\u06ec\u06e8\u06e7\u06d8\u06dc\u06e4\u06ec\u06e1\u06e4\u06e8\u06ec\u06d7\u06e5\u06da\u06dc\u06d8\u06e7\u06d6\u06dc\u06e1\u06da\u06df\u06d8\u06d7\u06e0\u06e5\u06e7\u06e1\u06e1\u06df\u06e1\u06d6\u06df\u06e6\u06d8\u06d6\u06ec\u06d9\u06ec\u06dc\u06e5\u06d8"

    goto :goto_0

    :sswitch_6
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setFocusable(Z)V

    const-string v0, "\u06e2\u06e8\u06d8\u06e4\u06d6\u06eb\u06e2\u06e5\u06d6\u06d8\u06e1\u06e1\u06e1\u06d8\u06d6\u06e2\u06e5\u06dc\u06eb\u06e0\u06dc\u06d9\u06e8\u06d6\u06df\u06e4\u06ec\u06e8\u06d8\u06e2\u06e5\u06d8\u06d8"

    goto :goto_0

    :sswitch_7
    iget-object v0, p0, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;->OoooOoo:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "\u06d9\u06e1\u06e7\u06da\u06e7\u06e5\u06d8\u06d7\u06e7\u06e5\u06d8\u06e7\u06d9\u06d8\u06d8\u06e8\u06df\u06e1\u06e1\u06ec\u06df\u06da\u06d9\u06e8\u06d8\u06d7\u06d9\u06e2\u06e1\u06da\u06dc\u06d8\u06d7\u06d8\u06e6\u06e1\u06d8\u06d7\u06e2\u06da\u06ec\u06dc\u06db\u06df\u06d7\u06db\u06ec\u06e8\u06e1\u06e6\u06d8\u06da\u06e4\u06e7"

    goto :goto_0

    :sswitch_8
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "\u06ec\u06dc\u06e5\u06d8\u06eb\u06e6\u06e7\u06e6\u06e8\u06e2\u06df\u06e8\u06e1\u06d8\u06e2\u06d6\u06e5\u06d8\u06e6\u06d8\u06d6\u06d7\u06df\u06e6\u06e8\u06df\u06e6\u06d9\u06df\u06da\u06ec\u06db\u06d8\u06d8\u06df\u06dc\u06d7\u06e2\u06d8\u06da\u06da\u06e1\u06ec\u06da\u06ec\u06e4\u06da\u06d6\u06d8\u06d8\u06e5\u06eb"

    goto :goto_0

    :sswitch_9
    const v2, 0x6b2a41ab

    const-string v0, "\u06db\u06d8\u06e4\u06e8\u06d6\u06ec\u06dc\u06d8\u06e7\u06d8\u06d6\u06e6\u06e7\u06d7\u06e1\u06db\u06e6\u06e7\u06d8\u06d6\u06e6\u06e2\u06d9\u06e8\u06e7\u06e4\u06d9\u06e8\u06d8\u06d7\u06d8\u06dc\u06d8\u06d6\u06e7\u06e4\u06d8\u06e0\u06e6\u06d8\u06df\u06e6\u06e5\u06d8\u06df\u06e6\u06e8\u06e4\u06df\u06e1\u06df\u06d7\u06e0\u06da\u06e0\u06e0\u06eb\u06df\u06e1\u06d8"

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v2

    sparse-switch v3, :sswitch_data_1

    goto :goto_1

    :sswitch_a
    const v3, -0x45543067

    const-string v0, "\u06ec\u06e4\u06ec\u06e7\u06d8\u06dc\u06ec\u06d9\u06e7\u06e2\u06eb\u06e7\u06df\u06e8\u06e4\u06d9\u06e1\u06e2\u06e6\u06e1\u06d8\u06e5\u06d8\u06e8\u06d7\u06e1\u06d7\u06e5\u06e7\u06e0\u06d9\u06dc\u06eb\u06e7\u06dc\u06e6\u06d8\u06e2\u06da\u06e4\u06e0\u06d9\u06e0"

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    xor-int/2addr v4, v3

    sparse-switch v4, :sswitch_data_2

    goto :goto_2

    :sswitch_b
    if-eqz p3, :cond_0

    const-string v0, "\u06df\u06dc\u06e7\u06d8\u06e8\u06e8\u06dc\u06e8\u06e7\u06e1\u06d8\u06eb\u06e1\u06d6\u06d8\u06e8\u06e0\u06d7\u06eb\u06d7\u06dc\u06d8\u06dc\u06eb\u06e1\u06e5\u06e2\u06e2\u06da\u06df\u06e6\u06dc\u06ec\u06e8\u06d8"

    goto :goto_2

    :sswitch_c
    const-string v0, "\u06e2\u06da\u06d6\u06eb\u06e4\u06e8\u06e4\u06d7\u06dc\u06e0\u06d6\u06e5\u06eb\u06d7\u06dc\u06e2\u06db\u06db\u06e7\u06ec\u06e6\u06d8\u06e5\u06dc\u06da\u06e8\u06eb\u06e1\u06d8\u06d6\u06ec\u06db"

    goto :goto_1

    :cond_0
    const-string v0, "\u06ec\u06d7\u06e7\u06dc\u06dc\u06eb\u06eb\u06e1\u06e7\u06e8\u06d8\u06e6\u06e8\u06e7\u06e8\u06df\u06e5\u06d9\u06d6\u06d9\u06ec\u06eb\u06db\u06df\u06e0\u06d6\u06db\u06e6\u06e4\u06da\u06e1\u06e4\u06e2\u06d9\u06e5\u06da\u06d8\u06da\u06e0\u06e7\u06e4\u06e2"

    goto :goto_2

    :sswitch_d
    const-string v0, "\u06e1\u06e2\u06ec\u06d8\u06e1\u06e1\u06d8\u06ec\u06e7\u06e6\u06d8\u06e6\u06d9\u06da\u06dc\u06e6\u06d9\u06e2\u06e6\u06dc\u06df\u06e8\u06e2\u06df\u06da\u06dc\u06e7\u06dc\u06e4\u06e0\u06d9\u06e7\u06e4\u06d9\u06e6\u06d8\u06e0\u06e7\u06df\u06da\u06e2\u06da\u06d6\u06d7\u06d9\u06e8\u06d8\u06e1\u06df"

    goto :goto_2

    :sswitch_e
    const-string v0, "\u06d9\u06e1\u06e6\u06d8\u06db\u06e5\u06ec\u06e0\u06e6\u06e2\u06d7\u06eb\u06ec\u06db\u06dc\u06d6\u06d6\u06ec\u06db\u06e6\u06e5\u06d6\u06d8\u06e5\u06eb\u06e5\u06ec\u06e0\u06e8\u06e1\u06e7"

    goto :goto_1

    :sswitch_f
    const-string v0, "\u06eb\u06eb\u06d6\u06da\u06eb\u06db\u06da\u06e2\u06da\u06da\u06e0\u06d7\u06e7\u06e8\u06e6\u06db\u06eb\u06e7\u06e7\u06df\u06e2\u06e7\u06e2\u06e1\u06df\u06e5\u06dc\u06e4\u06e2"

    goto :goto_1

    :sswitch_10
    const-string v0, "\u06ec\u06df\u06d9\u06e5\u06e8\u06e6\u06d8\u06d9\u06d6\u06dc\u06dc\u06e7\u06d8\u06db\u06eb\u06e1\u06d7\u06e8\u06d8\u06d8\u06d6\u06d6\u06d6\u06dc\u06da\u06e0\u06dc\u06e4\u06d7\u06e4\u06e7\u06df\u06e1\u06eb\u06e1\u06d8\u06db\u06e2\u06e8\u06d8"

    goto :goto_0

    :sswitch_11
    invoke-virtual {v1, p3, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    const-string v0, "\u06dc\u06d6\u06e4\u06e8\u06d7\u06e1\u06dc\u06e5\u06e7\u06d8\u06e7\u06e4\u06d9\u06da\u06e2\u06e7\u06e6\u06e2\u06da\u06db\u06ec\u06eb\u06d8\u06e7\u06d6\u06d8\u06e4\u06eb\u06eb\u06d8\u06d6\u06e2\u06db\u06d6\u06d9\u06e1\u06e4\u06e4\u06ec\u06d8\u06e1\u06e0\u06d7\u06e2\u06e2\u06da\u06e2\u06d6\u06e2\u06d8\u06d8\u06e4\u06eb\u06e2\u06da\u06e6\u06e7"

    goto :goto_0

    :sswitch_12
    iget-object v0, p0, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;->Ooooo00:Lz2/za;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, v5, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const-string v0, "\u06e8\u06e6\u06d9\u06d7\u06e0\u06eb\u06e8\u06db\u06ec\u06da\u06dc\u06d9\u06ec\u06ec\u06e7\u06eb\u06d9\u06e2\u06df\u06d8\u06dc\u06e7\u06d8\u06d6\u06e8\u06d8\u06da\u06e1\u06e8\u06e2\u06d7\u06da\u06e4\u06eb\u06e0\u06e4\u06d9\u06d8\u06e7\u06d8\u06e1\u06d9\u06e0"

    goto/16 :goto_0

    :sswitch_13
    const-string v0, "\u06dc\u06d6\u06e4\u06e8\u06d7\u06e1\u06dc\u06e5\u06e7\u06d8\u06e7\u06e4\u06d9\u06da\u06e2\u06e7\u06e6\u06e2\u06da\u06db\u06ec\u06eb\u06d8\u06e7\u06d6\u06d8\u06e4\u06eb\u06eb\u06d8\u06d6\u06e2\u06db\u06d6\u06d9\u06e1\u06e4\u06e4\u06ec\u06d8\u06e1\u06e0\u06d7\u06e2\u06e2\u06da\u06e2\u06d6\u06e2\u06d8\u06d8\u06e4\u06eb\u06e2\u06da\u06e6\u06e7"

    goto/16 :goto_0

    :sswitch_14
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x72546d76 -> :sswitch_3
        -0x718a9462 -> :sswitch_8
        -0x4a68437e -> :sswitch_14
        -0x37fbf7b4 -> :sswitch_12
        -0x36f7e702 -> :sswitch_0
        -0x142ad5b5 -> :sswitch_2
        -0xf20d5cd -> :sswitch_7
        0x169c9f0 -> :sswitch_5
        0x30ab577 -> :sswitch_6
        0x9b81d02 -> :sswitch_9
        0x2b27180d -> :sswitch_11
        0x4f298847 -> :sswitch_1
        0x7fa0cb0b -> :sswitch_4
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x721a009d -> :sswitch_13
        0x34e9c5b8 -> :sswitch_10
        0x51b94dfb -> :sswitch_f
        0x79d78563 -> :sswitch_a
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        -0x391c10a2 -> :sswitch_b
        -0x19f1f9b8 -> :sswitch_c
        0x15d2cbda -> :sswitch_d
        0x564c773f -> :sswitch_e
    .end sparse-switch
.end method

.method private OooO0oo(I)V
    .locals 7

    const/4 v2, 0x0

    const-string v0, "\u06ec\u06e1\u06db\u06d9\u06e7\u06d6\u06d9\u06ec\u06e6\u06eb\u06ec\u06d9\u06e8\u06eb\u06e4\u06dc\u06e1\u06e1\u06da\u06d8\u06eb\u06eb\u06e1\u06e5\u06eb\u06dc\u06e1\u06e5\u06ec\u06e5\u06e8\u06d8\u06e7\u06e8\u06e6\u06d6\u06e5\u06e1\u06d8\u06e7\u06e5\u06e6\u06e7\u06da\u06d6\u06d8\u06dc\u06e5\u06e1\u06d8\u06ec\u06e6\u06df\u06df"

    move-object v1, v2

    move-object v3, v2

    move-object v4, v2

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v5, 0xbb

    xor-int/2addr v2, v5

    xor-int/lit16 v2, v2, 0xc6

    const/16 v5, 0x29

    const v6, 0x7d139ea6

    xor-int/2addr v2, v5

    xor-int/2addr v2, v6

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e6\u06df\u06e7\u06e4\u06da\u06e1\u06d8\u06e1\u06e5\u06da\u06ec\u06e0\u06d9\u06d9\u06e4\u06e7\u06e7\u06e8\u06d8\u06df\u06d6\u06e7\u06ec\u06e4\u06da\u06e8\u06e5\u06d8\u06d6\u06e7\u06db\u06e4\u06db\u06d6\u06e7\u06e8\u06d8\u06e4\u06e4\u06e7\u06ec\u06d7\u06e1\u06ec\u06e5\u06e0\u06da\u06e0\u06db"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06d9\u06e4\u06d8\u06e1\u06e7\u06e1\u06da\u06eb\u06e1\u06d8\u06e8\u06d9\u06e8\u06e0\u06e1\u06da\u06e0\u06e5\u06e4\u06d7\u06dc\u06eb\u06e4\u06e5\u06e7\u06da\u06df\u06e8\u06d6\u06e1\u06e8\u06d8"

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;->Ooooo00:Lz2/za;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const-string v0, "\u06d6\u06e5\u06eb\u06e4\u06d6\u06d8\u06d7\u06e2\u06d6\u06d8\u06d7\u06e8\u06e1\u06d8\u06ec\u06e7\u06df\u06e8\u06d8\u06d6\u06d8\u06e8\u06e6\u06e1\u06d8\u06ec\u06ec\u06db\u06e1\u06e8\u06df\u06e1\u06eb\u06e8\u06dc\u06e2\u06e6\u06d8\u06ec\u06d6\u06d6\u06d8"

    move-object v4, v2

    goto :goto_0

    :sswitch_3
    iget-object v2, p0, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;->OoooOoO:Ljava/lang/Runnable;

    const-string v0, "\u06e8\u06d7\u06e6\u06e4\u06e7\u06e6\u06d8\u06e2\u06da\u06eb\u06d6\u06dc\u06e5\u06d8\u06e6\u06e8\u06df\u06d8\u06e8\u06db\u06d7\u06e0\u06d8\u06e6\u06d9\u06e1\u06e6\u06e6\u06dc\u06df\u06e6\u06d6\u06e6\u06e6\u06e1\u06e2\u06d9\u06e8\u06d8\u06e7\u06d9\u06e6\u06d7\u06d6"

    move-object v3, v2

    goto :goto_0

    :sswitch_4
    const v2, 0x1726cd0c

    const-string v0, "\u06d7\u06da\u06ec\u06d8\u06e5\u06da\u06d8\u06da\u06e4\u06e6\u06da\u06e5\u06d8\u06d7\u06df\u06e6\u06d8\u06e6\u06d8\u06e7\u06eb\u06d8\u06dc\u06d7\u06df\u06d8\u06d8\u06e7\u06e6\u06dc\u06d8\u06eb\u06e1\u06dc"

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v5

    xor-int/2addr v5, v2

    sparse-switch v5, :sswitch_data_1

    goto :goto_1

    :sswitch_5
    const-string v0, "\u06ec\u06e6\u06d6\u06ec\u06e6\u06e8\u06d8\u06df\u06d8\u06df\u06e8\u06e8\u06d9\u06d9\u06da\u06e0\u06d9\u06e7\u06e5\u06d8\u06ec\u06e6\u06e2\u06e6\u06e1\u06e7\u06d8\u06d8\u06e7\u06e6\u06dc\u06dc\u06e7\u06d8\u06e7\u06dc\u06d7\u06e8\u06d8\u06e0\u06e8\u06d9\u06dc\u06d8\u06d9\u06e0\u06e4\u06e4\u06dc\u06da\u06db\u06d7\u06e4\u06da\u06ec\u06d6\u06d8\u06eb\u06e2\u06db"

    goto :goto_0

    :sswitch_6
    const-string v0, "\u06e0\u06e8\u06e6\u06d8\u06db\u06db\u06e0\u06e2\u06e6\u06e8\u06d8\u06ec\u06e7\u06d8\u06d9\u06ec\u06e5\u06eb\u06e4\u06e0\u06e6\u06db\u06d6\u06d8\u06d9\u06ec\u06e8\u06e4\u06eb\u06e6\u06e1\u06df\u06e7\u06e6\u06db\u06e2\u06ec\u06da\u06d8\u06e0\u06da\u06e4\u06e1\u06d7\u06d6\u06dc\u06e8\u06ec\u06dc"

    goto :goto_1

    :sswitch_7
    const v5, 0xf184bdd

    const-string v0, "\u06e6\u06dc\u06e7\u06da\u06e4\u06eb\u06db\u06d9\u06e5\u06e8\u06e7\u06e1\u06df\u06e2\u06e4\u06e6\u06d8\u06da\u06da\u06e7\u06e7\u06e6\u06e7\u06d8\u06e1\u06e2\u06d7\u06e8\u06d7\u06d7\u06e1\u06ec\u06e5\u06d8\u06e1\u06eb\u06db\u06d8\u06d8\u06d6\u06ec\u06d8\u06d8\u06d8\u06db\u06e7\u06e8\u06e2\u06eb\u06e0"

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v6

    xor-int/2addr v6, v5

    sparse-switch v6, :sswitch_data_2

    goto :goto_2

    :sswitch_8
    if-eqz v3, :cond_0

    const-string v0, "\u06d9\u06e0\u06e4\u06e2\u06df\u06e2\u06df\u06e7\u06e6\u06da\u06e8\u06df\u06e4\u06db\u06df\u06d7\u06df\u06e5\u06e2\u06db\u06d8\u06d8\u06d8\u06da\u06e5\u06d8\u06eb\u06d7\u06dc\u06e0\u06e2\u06eb"

    goto :goto_2

    :cond_0
    const-string v0, "\u06d9\u06d8\u06ec\u06e5\u06ec\u06e4\u06d6\u06db\u06d8\u06d8\u06e6\u06e2\u06e8\u06db\u06e2\u06dc\u06d8\u06d8\u06d7\u06df\u06d8\u06d8\u06e4\u06db\u06da\u06db\u06df\u06df\u06dc\u06d8\u06d8\u06e2\u06d6\u06e1\u06d8\u06eb\u06e6\u06d8\u06d7\u06d9\u06d9\u06db\u06d6\u06e1\u06d8"

    goto :goto_2

    :sswitch_9
    const-string v0, "\u06df\u06d6\u06e8\u06e1\u06e0\u06ec\u06d8\u06e6\u06d6\u06d8\u06e5\u06e0\u06e8\u06d8\u06d8\u06ec\u06e0\u06d9\u06e6\u06d6\u06e8\u06e6\u06e4\u06ec\u06e2\u06e0\u06df\u06ec\u06df\u06d8\u06eb\u06d8\u06d8"

    goto :goto_2

    :sswitch_a
    const-string v0, "\u06d6\u06e5\u06e8\u06d8\u06e6\u06eb\u06e7\u06eb\u06e0\u06e1\u06e2\u06d7\u06e2\u06e1\u06e2\u06d6\u06e5\u06e6\u06e4\u06e5\u06d6\u06e8\u06e6\u06dc\u06e6\u06d8\u06eb\u06eb\u06e8\u06d8\u06e0\u06e5\u06d8\u06e4\u06dc\u06e0\u06e1\u06eb\u06e7\u06dc\u06e6\u06e1\u06d8\u06e1\u06e8\u06e0"

    goto :goto_1

    :sswitch_b
    const-string v0, "\u06d9\u06e7\u06e2\u06e0\u06df\u06d9\u06da\u06e8\u06ec\u06e8\u06ec\u06d6\u06d8\u06da\u06d7\u06dc\u06d8\u06d8\u06d7\u06e8\u06e8\u06e4\u06e1\u06d8\u06db\u06dc\u06d8\u06e8\u06e2\u06e5\u06d7\u06e0"

    goto :goto_1

    :sswitch_c
    invoke-virtual {p0, v3}, Landroid/widget/HorizontalScrollView;->removeCallbacks(Ljava/lang/Runnable;)Z

    const-string v0, "\u06d9\u06d9\u06dc\u06e6\u06e0\u06d9\u06e8\u06ec\u06ec\u06e6\u06d8\u06d8\u06db\u06da\u06e8\u06d8\u06e5\u06e2\u06db\u06ec\u06dc\u06e5\u06d8\u06dc\u06dc\u06e7\u06d6\u06e5\u06dc\u06eb\u06dc\u06e7"

    goto :goto_0

    :sswitch_d
    new-instance v1, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator$OooO0O0;

    invoke-direct {v1, p0, v4}, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator$OooO0O0;-><init>(Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;Landroid/view/View;)V

    const-string v0, "\u06e8\u06d6\u06e5\u06d8\u06e7\u06eb\u06e5\u06d8\u06e8\u06da\u06e1\u06d8\u06e4\u06d6\u06ec\u06e8\u06db\u06e0\u06d8\u06da\u06d7\u06da\u06d9\u06e1\u06d8\u06e8\u06e0\u06e2\u06e6\u06e6\u06e7\u06d8\u06d7\u06e5\u06e8\u06d6\u06e0\u06e1\u06e2\u06d9\u06e1\u06d8\u06e0\u06df\u06ec\u06d6\u06d7\u06d8\u06d8"

    goto :goto_0

    :sswitch_e
    iput-object v1, p0, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;->OoooOoO:Ljava/lang/Runnable;

    const-string v0, "\u06e7\u06df\u06dc\u06d8\u06e0\u06e7\u06da\u06e0\u06db\u06e5\u06d8\u06e8\u06da\u06e6\u06d8\u06e2\u06e5\u06d7\u06e0\u06dc\u06dc\u06e8\u06dc\u06d8\u06eb\u06eb\u06df\u06d8\u06da\u06e4\u06da\u06e0"

    goto :goto_0

    :sswitch_f
    invoke-virtual {p0, v1}, Landroid/widget/HorizontalScrollView;->post(Ljava/lang/Runnable;)Z

    const-string v0, "\u06e8\u06d6\u06d6\u06e5\u06e8\u06e1\u06d8\u06db\u06ec\u06e7\u06df\u06d7\u06e5\u06e4\u06e1\u06d8\u06d7\u06d9\u06d8\u06e5\u06d7\u06d8\u06d8\u06e0\u06dc\u06e5\u06e6\u06e2\u06e8\u06eb\u06e1\u06d8\u06da\u06e0\u06df\u06e1\u06e7\u06d8\u06e8\u06e7\u06d8\u06d8\u06e7\u06db\u06e4"

    goto :goto_0

    :sswitch_10
    const-string v0, "\u06d9\u06d9\u06dc\u06e6\u06e0\u06d9\u06e8\u06ec\u06ec\u06e6\u06d8\u06d8\u06db\u06da\u06e8\u06d8\u06e5\u06e2\u06db\u06ec\u06dc\u06e5\u06d8\u06dc\u06dc\u06e7\u06d6\u06e5\u06dc\u06eb\u06dc\u06e7"

    goto :goto_0

    :sswitch_11
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x78785077 -> :sswitch_1
        -0x678bade4 -> :sswitch_0
        -0x66cbaef3 -> :sswitch_d
        -0x289cd173 -> :sswitch_e
        -0x23dfbc1e -> :sswitch_f
        -0x247b0f3 -> :sswitch_11
        0x341137b9 -> :sswitch_4
        0x5a555605 -> :sswitch_2
        0x75c66ceb -> :sswitch_3
        0x7e35a4f1 -> :sswitch_c
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x774cc472 -> :sswitch_5
        -0x4aa94dbf -> :sswitch_b
        -0x471754ba -> :sswitch_7
        0x17befe13 -> :sswitch_10
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        -0x5e8000ca -> :sswitch_8
        0x26874ac8 -> :sswitch_6
        0x41e97b6a -> :sswitch_9
        0x4282f270 -> :sswitch_a
    .end sparse-switch
.end method


# virtual methods
.method public OooO00o()V
    .locals 19

    const/4 v2, 0x0

    const/16 v16, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/4 v13, 0x0

    const/4 v12, 0x0

    const/4 v10, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    const/4 v11, 0x0

    const-string v1, "\u06db\u06eb\u06e8\u06d8\u06e5\u06d9\u06ec\u06e2\u06e1\u06dc\u06e4\u06e5\u06d8\u06d7\u06e5\u06e1\u06db\u06dc\u06da\u06da\u06d6\u06d9\u06df\u06e5\u06e6\u06d8\u06e1\u06d6\u06d6\u06d8\u06dc\u06d7\u06e1"

    move-object v3, v1

    :goto_0
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v17, 0x148

    xor-int v1, v1, v17

    xor-int/lit8 v1, v1, 0x4c

    const/16 v17, 0x29b

    const v18, 0x9ccb830

    xor-int v1, v1, v17

    xor-int v1, v1, v18

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "\u06eb\u06df\u06d8\u06d9\u06ec\u06e1\u06ec\u06dc\u06e7\u06d8\u06e1\u06d8\u06d6\u06d8\u06d9\u06e6\u06eb\u06d8\u06db\u06d6\u06d8\u06dc\u06e2\u06e1\u06d8\u06e0\u06ec\u06e6\u06e1\u06e8\u06e6\u06da\u06e8\u06dc\u06e0\u06d8\u06e8\u06df\u06db\u06e6\u06d8\u06d6\u06e8\u06d7\u06d6\u06d6\u06d6\u06d8"

    move-object v3, v1

    goto :goto_0

    :sswitch_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;->Ooooo00:Lz2/za;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    const-string v1, "\u06e8\u06df\u06e1\u06d8\u06d6\u06dc\u06dc\u06d6\u06d8\u06e1\u06d8\u06e6\u06ec\u06e6\u06d8\u06d6\u06e0\u06d6\u06eb\u06e0\u06e2\u06df\u06d7\u06dc\u06d8\u06db\u06dc\u06dc\u06d8\u06e1\u06e8\u06e6\u06d7\u06d7\u06e7\u06eb\u06db\u06d9\u06e2\u06ec\u06d6\u06e4\u06e6\u06d9\u06da\u06eb\u06da\u06d9\u06d8\u06e1\u06e7\u06dc\u06d8\u06da\u06e1\u06e0\u06d9\u06eb\u06dc"

    move-object v3, v1

    goto :goto_0

    :sswitch_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;->Ooooo0o:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v2

    const-string v1, "\u06e2\u06e1\u06e5\u06d8\u06e6\u06d8\u06e6\u06e1\u06e1\u06e8\u06eb\u06e8\u06dc\u06e2\u06d6\u06d8\u06e8\u06e5\u06e6\u06d8\u06e4\u06e8\u06e7\u06db\u06d6\u06d8\u06d6\u06e7\u06e8\u06eb\u06d7\u06d6\u06d8\u06d9\u06e5\u06df\u06da\u06ec\u06e7\u06df\u06e6\u06e6\u06d8\u06d6\u06d6\u06e2\u06da\u06da\u06e5\u06d8\u06e5\u06dc\u06d6\u06d8"

    move-object v3, v1

    goto :goto_0

    :sswitch_3
    const v3, -0x2dea9ced

    const-string v1, "\u06df\u06e1\u06e2\u06e1\u06d7\u06d7\u06e1\u06e1\u06ec\u06d9\u06db\u06dc\u06d8\u06da\u06e5\u06e4\u06d7\u06e8\u06d6\u06d6\u06e6\u06dc\u06d8\u06eb\u06ec\u06e6\u06e4\u06e5\u06e7\u06d8\u06d6\u06eb\u06d8"

    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v17

    xor-int v17, v17, v3

    sparse-switch v17, :sswitch_data_1

    goto :goto_1

    :sswitch_4
    const v17, -0x5114b8ed

    const-string v1, "\u06e2\u06e6\u06d8\u06d8\u06d7\u06ec\u06db\u06e2\u06e1\u06d8\u06eb\u06e0\u06d8\u06d8\u06ec\u06d6\u06e5\u06db\u06ec\u06e1\u06e8\u06e6\u06df\u06df\u06d7\u06d6\u06d8\u06e1\u06e8\u06d9\u06da\u06d6\u06e5\u06d8\u06e8\u06db\u06d8\u06d8\u06d7\u06ec\u06e6\u06ec\u06d6\u06e6\u06eb\u06e4\u06d8\u06df\u06d9\u06e8\u06e1\u06d6"

    :goto_2
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v18

    xor-int v18, v18, v17

    sparse-switch v18, :sswitch_data_2

    goto :goto_2

    :sswitch_5
    const-string v1, "\u06db\u06df\u06e1\u06d8\u06e6\u06da\u06e6\u06d7\u06e0\u06e2\u06eb\u06d9\u06df\u06e2\u06e7\u06e8\u06e8\u06e0\u06dc\u06d8\u06e0\u06e4\u06e1\u06d7\u06e0\u06dc\u06d8\u06da\u06e1\u06e7\u06d8\u06e6\u06e0\u06d6\u06d8\u06da\u06dc\u06d8\u06e7\u06e4\u06d8\u06d8"

    goto :goto_1

    :cond_0
    const-string v1, "\u06d8\u06d9\u06d6\u06eb\u06d8\u06d6\u06d8\u06e8\u06eb\u06e5\u06d8\u06e8\u06ec\u06e2\u06d8\u06e5\u06d9\u06db\u06e6\u06d8\u06e2\u06e8\u06dc\u06d8\u06e2\u06eb\u06df\u06e1\u06e6\u06dc\u06d8\u06d9\u06db\u06e1\u06d8\u06e2\u06d7\u06dc\u06e2\u06e6\u06e0"

    goto :goto_2

    :sswitch_6
    instance-of v1, v2, Lz2/ya;

    if-eqz v1, :cond_0

    const-string v1, "\u06db\u06e8\u06e8\u06e0\u06e4\u06e1\u06ec\u06df\u06d8\u06db\u06d8\u06e4\u06d8\u06e7\u06e8\u06d8\u06dc\u06e5\u06eb\u06e4\u06e4\u06e0\u06db\u06d9\u06da\u06d7\u06e2\u06df\u06e7\u06e8\u06e1\u06d8\u06e6\u06d8\u06e5\u06d8\u06e0\u06db\u06e7\u06db\u06da\u06e5\u06e0\u06e4\u06d8\u06d8"

    goto :goto_2

    :sswitch_7
    const-string v1, "\u06e7\u06e6\u06d9\u06e7\u06e7\u06d6\u06e6\u06d7\u06df\u06e6\u06db\u06e8\u06e4\u06eb\u06dc\u06da\u06e7\u06db\u06e0\u06dc\u06e1\u06db\u06e7\u06e5\u06d8\u06df\u06e1\u06d9\u06e2\u06d9"

    goto :goto_2

    :sswitch_8
    const-string v1, "\u06e5\u06e2\u06e6\u06d8\u06d8\u06e0\u06d8\u06d8\u06dc\u06e7\u06e1\u06eb\u06e6\u06e5\u06d8\u06e0\u06e1\u06d8\u06df\u06df\u06dc\u06e2\u06d9\u06df\u06db\u06d6\u06e6\u06db\u06d7\u06e4\u06d9\u06da\u06e8\u06d8\u06ec\u06e4\u06e6\u06d7\u06e1\u06ec"

    goto :goto_1

    :sswitch_9
    const-string v1, "\u06e0\u06d6\u06d8\u06e1\u06ec\u06e0\u06eb\u06dc\u06d8\u06d8\u06e8\u06df\u06e8\u06df\u06e6\u06e8\u06d8\u06da\u06e1\u06d7\u06db\u06d9\u06e1\u06d8\u06db\u06d7\u06e5\u06d8\u06e1\u06e2\u06e6\u06e6\u06ec\u06d7\u06e0\u06d9\u06e8\u06d9\u06d8\u06d8\u06d8"

    goto :goto_1

    :sswitch_a
    const-string v1, "\u06e5\u06d8\u06e8\u06e2\u06da\u06dc\u06d8\u06d6\u06e4\u06e1\u06d8\u06d6\u06e2\u06d8\u06d8\u06d9\u06e6\u06dc\u06e0\u06d9\u06eb\u06dc\u06d9\u06e6\u06d8\u06e6\u06df\u06e6\u06d7\u06e4\u06e4\u06d6\u06e6\u06e0\u06d7\u06ec\u06d9\u06d8\u06e5\u06eb\u06e0\u06dc\u06df\u06e0\u06e2\u06e2"

    move-object v3, v1

    goto :goto_0

    :sswitch_b
    move-object v1, v2

    check-cast v1, Lz2/ya;

    const-string v3, "\u06e4\u06df\u06e2\u06e7\u06e1\u06ec\u06d9\u06e7\u06d6\u06d8\u06e0\u06e1\u06da\u06e7\u06dc\u06d8\u06db\u06d9\u06e0\u06df\u06db\u06d8\u06d9\u06eb\u06d6\u06d8\u06e7\u06e5\u06df\u06e7\u06e4\u06d9"

    move-object/from16 v16, v1

    goto :goto_0

    :sswitch_c
    const-string v1, "\u06d8\u06d9\u06dc\u06db\u06e1\u06dc\u06e0\u06e8\u06e7\u06d7\u06ec\u06d8\u06d6\u06ec\u06d7\u06d6\u06e7\u06d9\u06e7\u06db\u06d8\u06e8\u06d8\u06e7\u06d7\u06d9\u06eb\u06df\u06eb"

    move-object v3, v1

    move-object/from16 v15, v16

    goto :goto_0

    :sswitch_d
    const/4 v14, 0x0

    const-string v1, "\u06dc\u06e7\u06e5\u06dc\u06e0\u06e4\u06e8\u06df\u06db\u06d9\u06eb\u06e1\u06d8\u06db\u06e2\u06da\u06d6\u06e4\u06da\u06e7\u06e8\u06d7\u06d6\u06e2\u06dc\u06dc\u06e8\u06e7\u06e7\u06e7\u06e1\u06e5\u06e2\u06ec\u06e6\u06d8\u06e7\u06e6\u06e8\u06da\u06e7\u06e4\u06e4\u06e0\u06e0\u06e8\u06d8\u06e6\u06e5\u06da"

    move-object v3, v1

    goto :goto_0

    :sswitch_e
    const-string v1, "\u06e6\u06ec\u06e5\u06d8\u06da\u06dc\u06d7\u06eb\u06e7\u06e4\u06e6\u06e6\u06e5\u06eb\u06e4\u06e8\u06dc\u06e4\u06ec\u06ec\u06e4\u06e4\u06e2\u06e2\u06da\u06db\u06e8\u06eb\u06e4\u06d9\u06e6\u06d6\u06df\u06e8\u06e0\u06e1\u06ec\u06e4\u06d8\u06d6\u06eb\u06e7\u06e8\u06d8\u06d8\u06d9\u06e2"

    move-object v3, v1

    move-object v15, v14

    goto/16 :goto_0

    :sswitch_f
    invoke-virtual {v2}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v13

    const-string v1, "\u06d9\u06e6\u06d6\u06d8\u06d6\u06e0\u06e8\u06da\u06d9\u06d9\u06eb\u06e6\u06d8\u06d6\u06e0\u06e8\u06d6\u06d6\u06d6\u06d8\u06da\u06e8\u06dc\u06df\u06e5\u06da\u06d7\u06ec\u06df\u06eb\u06e7\u06e6\u06ec\u06e0\u06ec\u06df\u06e8\u06e5\u06e2\u06e8\u06d8\u06da\u06e1\u06e0\u06eb\u06e5\u06e1\u06d8\u06e4\u06db\u06ec"

    move-object v3, v1

    goto/16 :goto_0

    :sswitch_10
    const/4 v12, 0x0

    const-string v1, "\u06e8\u06e4\u06da\u06db\u06d6\u06e6\u06d8\u06db\u06da\u06d8\u06e5\u06e8\u06e8\u06d8\u06d8\u06e5\u06d8\u06d8\u06e6\u06d8\u06d7\u06dc\u06d7\u06e4\u06dc\u06df\u06e7\u06e5\u06d8\u06dc\u06e8\u06e1\u06db\u06e7\u06e7\u06e8\u06e8\u06e8\u06d8"

    move-object v3, v1

    goto/16 :goto_0

    :sswitch_11
    const-string v1, "\u06ec\u06da\u06d6\u06d8\u06e2\u06d8\u06e6\u06d8\u06d9\u06d9\u06e7\u06d8\u06d9\u06e1\u06d6\u06e4\u06da\u06e8\u06e1\u06d6\u06d8\u06d7\u06e4\u06d6\u06e4\u06e2\u06e5\u06d8\u06e8\u06df\u06df\u06d7\u06e4\u06d6\u06d8"

    move-object v3, v1

    move v11, v12

    goto/16 :goto_0

    :sswitch_12
    const v3, 0x34079cb6

    const-string v1, "\u06e6\u06e8\u06d6\u06e2\u06d6\u06e1\u06d9\u06e1\u06e6\u06e6\u06dc\u06e8\u06dc\u06e8\u06e6\u06e7\u06df\u06e7\u06e8\u06e4\u06d9\u06df\u06d8\u06dc\u06dc\u06dc\u06d8\u06d8\u06e8\u06d6\u06e5\u06e8\u06e2\u06d6\u06d8\u06e7\u06e6\u06e2\u06e5\u06e8\u06d6\u06e7\u06db\u06e1"

    :goto_3
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v17

    xor-int v17, v17, v3

    sparse-switch v17, :sswitch_data_3

    goto :goto_3

    :sswitch_13
    const v17, 0x6489a6eb

    const-string v1, "\u06d7\u06d8\u06e5\u06d6\u06e6\u06eb\u06db\u06e6\u06e2\u06d7\u06d8\u06dc\u06d8\u06d8\u06d7\u06e4\u06d6\u06eb\u06d9\u06da\u06e0\u06dc\u06d8\u06e7\u06d7\u06dc\u06d9\u06e8\u06d6\u06d8\u06ec\u06e6\u06e8"

    :goto_4
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v18

    xor-int v18, v18, v17

    sparse-switch v18, :sswitch_data_4

    goto :goto_4

    :sswitch_14
    const-string v1, "\u06da\u06e6\u06df\u06e7\u06da\u06ec\u06e7\u06d8\u06d9\u06e8\u06e7\u06d8\u06e1\u06d7\u06e1\u06e5\u06e0\u06db\u06df\u06e6\u06dc\u06e5\u06d6\u06eb\u06d8\u06e8\u06e2\u06eb\u06e1\u06e7\u06d8\u06db\u06e0\u06d6\u06e6\u06d7\u06eb"

    goto :goto_3

    :cond_1
    const-string v1, "\u06e8\u06da\u06e1\u06db\u06d6\u06d9\u06e8\u06e7\u06db\u06df\u06d6\u06e6\u06e2\u06d8\u06e0\u06df\u06d7\u06da\u06e2\u06e0\u06d8\u06d8\u06e7\u06d7\u06d7\u06e2\u06d6\u06d8\u06df\u06e8\u06e8\u06df\u06e5\u06e2\u06d9\u06e8\u06d8\u06e2\u06d6\u06dc\u06eb\u06e8\u06db\u06eb\u06d7\u06e6\u06d8\u06d8\u06df\u06e6\u06d8\u06d7\u06d7\u06e8\u06e6\u06da"

    goto :goto_4

    :sswitch_15
    if-ge v11, v13, :cond_1

    const-string v1, "\u06da\u06eb\u06df\u06e0\u06d9\u06d6\u06d8\u06e5\u06e4\u06e5\u06e7\u06e2\u06e0\u06e5\u06e2\u06dc\u06d8\u06e7\u06eb\u06df\u06eb\u06db\u06e8\u06e0\u06eb\u06e6\u06d8\u06ec\u06e5\u06dc\u06d7\u06db\u06df\u06df\u06db\u06e4\u06eb\u06db\u06e6\u06d8\u06e7\u06dc\u06d9\u06e8\u06e2\u06d7\u06e7\u06d9\u06d8\u06dc\u06e5\u06e7\u06d8\u06e2\u06dc\u06e8\u06d8\u06df\u06ec"

    goto :goto_4

    :sswitch_16
    const-string v1, "\u06d8\u06df\u06d7\u06e6\u06ec\u06df\u06e0\u06e5\u06e5\u06d8\u06d9\u06d6\u06e8\u06d8\u06d9\u06d6\u06d8\u06e0\u06e0\u06d7\u06e2\u06db\u06e5\u06d7\u06e2\u06d6\u06d8\u06e6\u06e8\u06e8\u06d8\u06ec\u06e5\u06e1\u06d8\u06d7\u06e7\u06e1\u06d8\u06e0\u06e5\u06e7\u06d8\u06d7\u06eb\u06db\u06e4\u06e6\u06e6"

    goto :goto_4

    :sswitch_17
    const-string v1, "\u06e7\u06ec\u06e2\u06da\u06da\u06e6\u06d8\u06e1\u06e5\u06dc\u06d8\u06ec\u06d8\u06d6\u06d8\u06e7\u06d7\u06e5\u06e2\u06e7\u06da\u06e6\u06df\u06d8\u06d8\u06d9\u06eb\u06e8\u06d8\u06eb\u06da\u06da\u06e8\u06d8\u06d8"

    goto :goto_3

    :sswitch_18
    const-string v1, "\u06d9\u06d6\u06e2\u06df\u06d8\u06e6\u06d8\u06d9\u06da\u06e6\u06df\u06d8\u06e7\u06d8\u06d7\u06d6\u06e4\u06dc\u06db\u06dc\u06ec\u06d9\u06d7\u06e0\u06e7\u06e5\u06e0\u06e1\u06db\u06df\u06e7\u06db"

    goto :goto_3

    :sswitch_19
    const-string v1, "\u06d8\u06d9\u06e5\u06d8\u06e0\u06e8\u06e5\u06d8\u06d6\u06d8\u06e2\u06eb\u06e5\u06e6\u06e2\u06dc\u06da\u06e6\u06e5\u06dc\u06e8\u06e5\u06dc\u06d8\u06e6\u06db\u06e7\u06e6\u06d6\u06e6\u06d8\u06ec\u06da\u06e1"

    move-object v3, v1

    goto/16 :goto_0

    :sswitch_1a
    invoke-virtual {v2, v11}, Landroidx/viewpager/widget/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v10

    const-string v1, "\u06e4\u06e7\u06eb\u06e5\u06d7\u06d6\u06d8\u06eb\u06d7\u06e7\u06df\u06ec\u06d6\u06e8\u06dc\u06d8\u06e1\u06d6\u06e6\u06e2\u06d7\u06da\u06e1\u06d7\u06d7\u06da\u06e5\u06e7\u06da\u06d6\u06d8\u06e6\u06e8\u06e1\u06db\u06eb\u06d8\u06d8\u06e1\u06ec\u06d8\u06d9\u06e8\u06e5\u06e1\u06e8\u06e8\u06df\u06d9\u06df\u06da\u06e8\u06e0\u06da\u06e6\u06e6\u06d8"

    move-object v3, v1

    goto/16 :goto_0

    :sswitch_1b
    const-string v1, "\u06dc\u06ec\u06d8\u06e8\u06d8\u06dc\u06d8\u06e0\u06da\u06db\u06e1\u06dc\u06e6\u06eb\u06db\u06e6\u06d8\u06d6\u06e4\u06dc\u06e6\u06d6\u06e1\u06d8\u06db\u06db\u06eb\u06e8\u06d9\u06d6\u06d8\u06e0\u06eb\u06eb"

    move-object v3, v1

    move-object v9, v10

    goto/16 :goto_0

    :sswitch_1c
    const v3, -0x1defffb3

    const-string v1, "\u06e6\u06da\u06e4\u06e7\u06eb\u06e4\u06e7\u06e8\u06d8\u06d8\u06eb\u06d6\u06da\u06dc\u06e4\u06ec\u06e0\u06d7\u06e4\u06e4\u06db\u06e5\u06db\u06e1\u06e1\u06d8\u06e1\u06e7\u06ec\u06da\u06da\u06e7\u06e5\u06dc\u06d8\u06e8\u06e5\u06e1\u06e6\u06eb\u06df\u06e8\u06e8\u06d6\u06d8\u06eb\u06e8\u06d8\u06d9\u06e0\u06e8"

    :goto_5
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v17

    xor-int v17, v17, v3

    sparse-switch v17, :sswitch_data_5

    goto :goto_5

    :sswitch_1d
    const-string v1, "\u06da\u06d6\u06e5\u06e2\u06e2\u06d6\u06e2\u06e7\u06eb\u06df\u06e4\u06dc\u06d8\u06ec\u06e5\u06e2\u06df\u06dc\u06e6\u06dc\u06ec\u06da\u06e1\u06d9\u06d6\u06d8\u06dc\u06e7\u06eb\u06df\u06e8\u06e1\u06d9\u06d7\u06e8\u06d8\u06da\u06e1\u06e1\u06db\u06e5\u06e5\u06d8\u06d9\u06dc\u06dc\u06d8\u06e1\u06d7\u06da\u06e7\u06e8\u06ec"

    move-object v3, v1

    goto/16 :goto_0

    :sswitch_1e
    const-string v1, "\u06e2\u06ec\u06e8\u06d8\u06e4\u06e7\u06df\u06e1\u06d8\u06e8\u06e7\u06df\u06d6\u06e2\u06d6\u06d9\u06d8\u06eb\u06e1\u06e8\u06e0\u06e1\u06eb\u06e5\u06d7\u06da\u06d6\u06d8\u06e4\u06d6\u06e1\u06d8\u06dc\u06e2\u06e1\u06d8\u06e6\u06e2\u06d9"

    goto :goto_5

    :sswitch_1f
    const v17, -0x2d35e3b8

    const-string v1, "\u06e4\u06dc\u06d6\u06d8\u06e1\u06df\u06db\u06e4\u06da\u06eb\u06d7\u06e7\u06da\u06e0\u06ec\u06d6\u06d8\u06dc\u06d8\u06d6\u06e8\u06eb\u06d9\u06db\u06e0\u06dc\u06e6\u06d8\u06e2\u06e7\u06e6\u06d8"

    :goto_6
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v18

    xor-int v18, v18, v17

    sparse-switch v18, :sswitch_data_6

    goto :goto_6

    :sswitch_20
    const-string v1, "\u06dc\u06da\u06d9\u06eb\u06dc\u06e5\u06d8\u06d9\u06ec\u06e8\u06e4\u06e2\u06e1\u06e8\u06e1\u06d6\u06e4\u06d9\u06df\u06d7\u06e7\u06e5\u06d8\u06dc\u06db\u06d7\u06d9\u06dc\u06d6\u06d8\u06da\u06d8\u06d8\u06d8"

    goto :goto_5

    :cond_2
    const-string v1, "\u06e4\u06e1\u06e8\u06d8\u06da\u06ec\u06e5\u06d8\u06d9\u06df\u06e6\u06d8\u06e5\u06d8\u06d8\u06d8\u06dc\u06d9\u06e5\u06d8\u06e8\u06e0\u06e6\u06e2\u06e2\u06d9\u06e6\u06ec\u06d9\u06da\u06e8\u06df\u06d7"

    goto :goto_6

    :sswitch_21
    if-nez v10, :cond_2

    const-string v1, "\u06da\u06e6\u06e7\u06d8\u06e4\u06ec\u06d6\u06d8\u06dc\u06eb\u06d6\u06d8\u06eb\u06e8\u06e1\u06e7\u06d8\u06d8\u06d9\u06da\u06d6\u06d8\u06e2\u06e8\u06e8\u06e4\u06d7\u06e0\u06d9\u06e2\u06e6\u06eb\u06e7\u06d8\u06e5\u06e4\u06e8\u06d8\u06e6\u06ec\u06d6\u06d8\u06d6\u06d7\u06d6\u06d8\u06d9\u06e8\u06e6\u06d8\u06e1\u06eb\u06d7\u06da\u06e0\u06e4\u06e8\u06e1\u06e1\u06d8\u06da\u06e0\u06e6"

    goto :goto_6

    :sswitch_22
    const-string v1, "\u06eb\u06e7\u06e5\u06d8\u06dc\u06e5\u06e4\u06d9\u06d8\u06dc\u06e2\u06db\u06ec\u06e0\u06e1\u06e1\u06d8\u06e8\u06e8\u06e2\u06e1\u06d8\u06e5\u06d8\u06d8\u06ec\u06e5\u06d8\u06eb\u06e6\u06e0\u06eb\u06e8\u06e7\u06d9\u06ec\u06e0\u06e5\u06e6\u06e5\u06d8\u06e0\u06e7\u06e4\u06e8\u06d6\u06e5"

    goto :goto_6

    :sswitch_23
    const-string v1, "\u06da\u06df\u06e6\u06d8\u06e6\u06db\u06dc\u06d8\u06da\u06e6\u06d6\u06d8\u06d8\u06d8\u06eb\u06dc\u06d8\u06e5\u06d8\u06d8\u06e7\u06ec\u06e2\u06d9\u06d6\u06d8\u06e0\u06e8\u06e8\u06da\u06db\u06df\u06d6\u06df\u06e8\u06ec\u06ec\u06d9\u06e0\u06da\u06dc\u06d7\u06e8\u06d8\u06e8\u06df\u06e2\u06eb\u06e6\u06d7\u06e6\u06dc"

    goto :goto_5

    :sswitch_24
    const-string v1, "\u06da\u06e2\u06e4\u06dc\u06e0\u06ec\u06da\u06e7\u06e1\u06d9\u06e0\u06d6\u06dc\u06e2\u06dc\u06d8\u06d7\u06d6\u06dc\u06d9\u06e4\u06e6\u06e6\u06d8\u06e6\u06d8\u06e0\u06dc\u06d8\u06e2\u06e0\u06e1\u06d8\u06df\u06dc\u06d6\u06eb\u06eb\u06e8\u06d8\u06df\u06e4\u06e1\u06e4\u06e1"

    move-object v3, v1

    goto/16 :goto_0

    :sswitch_25
    sget-object v8, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;->Oooooo:Ljava/lang/CharSequence;

    const-string v1, "\u06e5\u06e6\u06dc\u06d8\u06d7\u06da\u06da\u06e7\u06e5\u06d6\u06d8\u06ec\u06e7\u06e5\u06d8\u06ec\u06e1\u06db\u06e0\u06e2\u06e6\u06d7\u06da\u06eb\u06e1\u06e7\u06e5\u06d8\u06d7\u06e0\u06e2\u06da\u06e0"

    move-object v3, v1

    goto/16 :goto_0

    :sswitch_26
    const-string v1, "\u06da\u06d6\u06e5\u06e2\u06e2\u06d6\u06e2\u06e7\u06eb\u06df\u06e4\u06dc\u06d8\u06ec\u06e5\u06e2\u06df\u06dc\u06e6\u06dc\u06ec\u06da\u06e1\u06d9\u06d6\u06d8\u06dc\u06e7\u06eb\u06df\u06e8\u06e1\u06d9\u06d7\u06e8\u06d8\u06da\u06e1\u06e1\u06db\u06e5\u06e5\u06d8\u06d9\u06dc\u06dc\u06d8\u06e1\u06d7\u06da\u06e7\u06e8\u06ec"

    move-object v3, v1

    move-object v9, v8

    goto/16 :goto_0

    :sswitch_27
    const v3, 0x3316bfb

    const-string v1, "\u06d6\u06e0\u06df\u06e0\u06d6\u06dc\u06e6\u06d8\u06da\u06eb\u06e7\u06e4\u06d9\u06db\u06da\u06dc\u06d8\u06d8\u06db\u06df\u06eb\u06e7\u06df\u06d8\u06d6\u06da\u06e2\u06ec\u06dc\u06e7\u06d9\u06d6\u06d6\u06ec\u06e8\u06d7\u06dc\u06e0\u06e0\u06ec\u06e5\u06d8\u06e8\u06d7\u06da\u06e2\u06d7\u06d7\u06db\u06db\u06db\u06e6\u06e1\u06d8\u06d8"

    :goto_7
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v17

    xor-int v17, v17, v3

    sparse-switch v17, :sswitch_data_7

    goto :goto_7

    :sswitch_28
    const v17, 0x4f1f58d7

    const-string v1, "\u06e5\u06e4\u06e8\u06d8\u06e7\u06e2\u06db\u06d8\u06d6\u06e1\u06d8\u06e4\u06eb\u06d6\u06d8\u06e6\u06db\u06dc\u06dc\u06e4\u06e8\u06ec\u06e0\u06e5\u06d8\u06dc\u06d7\u06df\u06e2\u06db\u06e8\u06eb\u06dc\u06e2\u06d7\u06d6\u06dc\u06d8\u06d7\u06d8\u06e6"

    :goto_8
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v18

    xor-int v18, v18, v17

    sparse-switch v18, :sswitch_data_8

    goto :goto_8

    :sswitch_29
    if-eqz v15, :cond_3

    const-string v1, "\u06e4\u06ec\u06d6\u06d7\u06e2\u06e6\u06db\u06d8\u06e6\u06e2\u06d9\u06e1\u06d8\u06e4\u06ec\u06d6\u06d8\u06e5\u06e1\u06da\u06e7\u06e0\u06dc\u06e6\u06df\u06ec\u06e2\u06e6\u06d7\u06da\u06df\u06e5\u06d8\u06e8\u06e6\u06d6\u06d8\u06e0\u06e5\u06e0\u06e0\u06d6\u06e4\u06d7\u06e1\u06e8\u06d8\u06d8\u06db\u06e8\u06e5\u06e4\u06db"

    goto :goto_8

    :sswitch_2a
    const-string v1, "\u06e6\u06e6\u06e1\u06e0\u06da\u06df\u06df\u06e2\u06dc\u06d8\u06e5\u06d9\u06d8\u06e4\u06e1\u06e7\u06d8\u06e8\u06e0\u06d6\u06d8\u06d9\u06e0\u06e8\u06d8\u06ec\u06df\u06e0\u06e7\u06da\u06e0\u06ec\u06da\u06d6\u06e8\u06da\u06eb\u06e0\u06d6\u06d6\u06d8"

    goto :goto_7

    :cond_3
    const-string v1, "\u06d6\u06da\u06dc\u06d7\u06e7\u06e5\u06d8\u06da\u06e5\u06dc\u06d8\u06ec\u06e5\u06e7\u06d8\u06e2\u06ec\u06d6\u06db\u06e7\u06eb\u06d7\u06e4\u06e7\u06e1\u06d6\u06ec\u06e7\u06eb\u06e1\u06d8\u06df\u06e7\u06db\u06e5\u06df\u06d6\u06eb\u06df\u06e1\u06d8\u06e2\u06dc\u06dc\u06d8\u06da\u06db\u06df"

    goto :goto_8

    :sswitch_2b
    const-string v1, "\u06e8\u06d8\u06ec\u06da\u06db\u06d9\u06d7\u06d6\u06dc\u06d8\u06db\u06e0\u06d6\u06d8\u06e6\u06e7\u06e4\u06e1\u06da\u06d7\u06ec\u06df\u06d7\u06eb\u06e5\u06da\u06e0\u06e7\u06e8\u06e8\u06e0\u06df\u06e0\u06dc\u06e7\u06d8\u06da\u06da\u06db\u06e4\u06e4\u06e8\u06e0\u06df\u06db\u06d9\u06dc\u06d8\u06d6\u06df\u06e2"

    goto :goto_8

    :sswitch_2c
    const-string v1, "\u06e2\u06eb\u06e8\u06d9\u06e1\u06e7\u06df\u06e6\u06d7\u06e4\u06e5\u06db\u06d8\u06df\u06eb\u06d8\u06db\u06db\u06e5\u06e4\u06e6\u06e5\u06dc\u06d8\u06df\u06e4\u06df\u06e0\u06d6\u06df"

    goto :goto_7

    :sswitch_2d
    const-string v1, "\u06d6\u06e4\u06e5\u06db\u06ec\u06da\u06e8\u06e6\u06db\u06d6\u06df\u06e2\u06eb\u06e2\u06e6\u06d8\u06da\u06e5\u06d6\u06d8\u06eb\u06e4\u06e1\u06d8\u06e2\u06df\u06dc\u06e4\u06eb\u06e0\u06e1\u06e5\u06d6\u06eb\u06ec\u06e8\u06eb\u06e1\u06d8\u06d7\u06e8\u06d9\u06dc\u06df\u06e7\u06e0\u06da\u06df\u06e4\u06d6\u06d8\u06d9\u06d8\u06d8\u06da\u06e7\u06eb"

    goto :goto_7

    :sswitch_2e
    const-string v1, "\u06e4\u06db\u06df\u06d9\u06e0\u06d8\u06df\u06d8\u06e8\u06d6\u06df\u06e8\u06d8\u06d6\u06d6\u06df\u06db\u06da\u06e6\u06d8\u06e8\u06e6\u06e4\u06d6\u06e7\u06e1\u06d8\u06dc\u06dc\u06e0\u06d9\u06e5\u06e7"

    move-object v3, v1

    goto/16 :goto_0

    :sswitch_2f
    invoke-interface {v15, v11}, Lz2/ya;->OooO00o(I)I

    move-result v7

    const-string v1, "\u06d8\u06d6\u06e5\u06df\u06e1\u06e1\u06eb\u06e1\u06e1\u06ec\u06d6\u06d8\u06d8\u06dc\u06d6\u06e6\u06eb\u06e0\u06e5\u06d8\u06dc\u06ec\u06e4\u06e0\u06e8\u06dc\u06da\u06e4\u06d8\u06d8\u06e7\u06df\u06eb\u06eb\u06ec\u06ec\u06d6\u06e4\u06e7"

    move-object v3, v1

    goto/16 :goto_0

    :sswitch_30
    const-string v1, "\u06e5\u06eb\u06d9\u06d8\u06da\u06da\u06db\u06db\u06e4\u06e5\u06d8\u06eb\u06df\u06df\u06da\u06e4\u06e2\u06dc\u06dc\u06e8\u06e8\u06e8\u06e7\u06e2\u06e1\u06e8\u06d8\u06d8\u06e4\u06dc\u06d8\u06da\u06ec\u06d8\u06eb\u06d6\u06e8\u06d9\u06e1\u06eb\u06e4\u06e8\u06dc"

    move-object v3, v1

    move v6, v7

    goto/16 :goto_0

    :sswitch_31
    const/4 v5, 0x0

    const-string v1, "\u06d7\u06eb\u06e2\u06da\u06d9\u06df\u06d9\u06e1\u06e5\u06ec\u06ec\u06d8\u06da\u06d9\u06d8\u06d8\u06d8\u06df\u06e1\u06d8\u06e2\u06d7\u06e0\u06dc\u06d7\u06df\u06d8\u06dc\u06df\u06ec\u06e6\u06d6\u06d8\u06e6\u06eb\u06e4\u06e0\u06e8\u06e5\u06d8\u06d6\u06db\u06db\u06df\u06e2\u06e7"

    move-object v3, v1

    goto/16 :goto_0

    :sswitch_32
    const-string v1, "\u06d8\u06da\u06ec\u06df\u06dc\u06e7\u06dc\u06ec\u06dc\u06d8\u06da\u06ec\u06e5\u06d7\u06e2\u06e6\u06e6\u06dc\u06e6\u06df\u06ec\u06ec\u06d7\u06e2\u06e5\u06e0\u06e6\u06e5\u06df\u06e5\u06d8\u06db\u06d9\u06db\u06ec\u06e6\u06ec\u06e6\u06da\u06e8\u06d8\u06e1\u06da\u06e1\u06d8\u06e8\u06e0\u06ec\u06da\u06e5\u06dc\u06d8"

    move-object v3, v1

    move v6, v5

    goto/16 :goto_0

    :sswitch_33
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v9, v6}, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;->OooO0oO(ILjava/lang/CharSequence;I)V

    const-string v1, "\u06e6\u06e6\u06d8\u06e2\u06db\u06d9\u06eb\u06db\u06e0\u06df\u06e5\u06d7\u06d9\u06e8\u06e7\u06da\u06eb\u06e6\u06db\u06db\u06e6\u06e7\u06e2\u06e2\u06dc\u06e6\u06dc\u06db\u06e1\u06d8\u06d7\u06e1\u06d6\u06eb\u06e4\u06d8\u06d8\u06e2\u06e4\u06e2\u06da\u06df\u06ec\u06e8\u06e5\u06eb\u06d6\u06e0\u06d7"

    move-object v3, v1

    goto/16 :goto_0

    :sswitch_34
    add-int/lit8 v4, v11, 0x1

    const-string v1, "\u06df\u06e6\u06ec\u06e2\u06eb\u06d8\u06d8\u06e1\u06d7\u06d8\u06d8\u06da\u06df\u06e2\u06d9\u06ec\u06eb\u06d8\u06e0\u06e7\u06ec\u06d9\u06e1\u06e0\u06e6\u06e1\u06df\u06e4\u06e5\u06d8\u06d8\u06d8"

    move-object v3, v1

    goto/16 :goto_0

    :sswitch_35
    const-string v1, "\u06e1\u06e5\u06e5\u06d8\u06d9\u06e2\u06da\u06d9\u06e0\u06dc\u06d8\u06d9\u06e7\u06e8\u06e0\u06e7\u06d6\u06d6\u06df\u06e8\u06d8\u06df\u06e4\u06e2\u06da\u06e2\u06e8\u06d8\u06db\u06e1\u06e1\u06d8\u06d6\u06e0\u06e0\u06d7\u06db\u06d7\u06d6"

    move-object v3, v1

    move v11, v4

    goto/16 :goto_0

    :sswitch_36
    const v3, 0x9a260ff

    const-string v1, "\u06da\u06e4\u06db\u06e2\u06e2\u06df\u06e0\u06df\u06e1\u06d6\u06e1\u06e8\u06ec\u06e4\u06e6\u06e0\u06da\u06e1\u06e0\u06da\u06e8\u06e5\u06da\u06e1\u06df\u06dc\u06e4\u06eb\u06ec\u06e8\u06d8\u06e0\u06da\u06db\u06e4\u06e6\u06d8\u06eb\u06e1\u06d8\u06e1\u06eb\u06db\u06e2\u06da\u06d8\u06e5\u06da\u06d6"

    :goto_9
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v17

    xor-int v17, v17, v3

    sparse-switch v17, :sswitch_data_9

    goto :goto_9

    :sswitch_37
    const-string v1, "\u06e8\u06e5\u06db\u06e7\u06d9\u06e1\u06e0\u06e4\u06eb\u06e1\u06e0\u06e1\u06d8\u06d8\u06da\u06ec\u06df\u06d7\u06e0\u06e1\u06d7\u06e2\u06d9\u06da\u06df\u06df\u06eb\u06e8\u06d8\u06dc\u06db\u06db\u06d9\u06d6\u06d7\u06d9\u06db\u06e1\u06d8"

    goto :goto_9

    :sswitch_38
    const-string v1, "\u06e6\u06e7\u06d8\u06e5\u06d9\u06ec\u06eb\u06d8\u06e2\u06dc\u06dc\u06e6\u06eb\u06e1\u06dc\u06e2\u06e1\u06e7\u06ec\u06ec\u06e4\u06db\u06e5\u06ec\u06df\u06d8\u06e2\u06e1\u06e5\u06e6\u06d8\u06d9\u06d8\u06da\u06e6\u06ec\u06dc\u06d8\u06e4\u06ec\u06e2\u06df\u06db\u06e2\u06d6\u06e7\u06d9\u06d6\u06e1\u06e8\u06d8\u06df\u06e0\u06eb\u06e0\u06eb\u06d6\u06d8"

    goto :goto_9

    :sswitch_39
    const v17, 0x555976d5

    const-string v1, "\u06e7\u06ec\u06e5\u06d8\u06e4\u06e4\u06e8\u06d8\u06e7\u06e8\u06e2\u06df\u06d9\u06e5\u06d8\u06e6\u06e0\u06da\u06da\u06dc\u06e1\u06e5\u06e1\u06e1\u06d8\u06ec\u06d6\u06ec\u06d7\u06d7\u06dc\u06d8\u06e0\u06e7\u06e1\u06d8"

    :goto_a
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v18

    xor-int v18, v18, v17

    sparse-switch v18, :sswitch_data_a

    goto :goto_a

    :sswitch_3a
    const-string v1, "\u06e5\u06e5\u06dc\u06e2\u06da\u06df\u06e8\u06d9\u06e1\u06df\u06e0\u06e0\u06e2\u06e8\u06e7\u06e8\u06e5\u06e0\u06e7\u06ec\u06ec\u06e4\u06e8\u06da\u06eb\u06dc\u06d6\u06e0\u06d6\u06d6\u06d8\u06d9\u06df\u06dc\u06d8\u06e1\u06e1\u06e7\u06d8\u06e5\u06e6\u06db\u06e0\u06db\u06e1\u06d8\u06e5\u06e2\u06e2\u06ec\u06e0\u06eb\u06e8\u06eb\u06dc\u06d8\u06e2\u06d8\u06e1\u06d8"

    goto :goto_a

    :cond_4
    const-string v1, "\u06dc\u06d9\u06e7\u06d6\u06e8\u06d6\u06d7\u06eb\u06db\u06d8\u06ec\u06e8\u06d8\u06ec\u06d6\u06e1\u06d8\u06d6\u06db\u06e5\u06d8\u06eb\u06dc\u06d8\u06d8\u06db\u06db\u06d8\u06d8\u06eb\u06df\u06e1\u06d8\u06e5\u06d6\u06e8\u06d8\u06e2\u06e7\u06d8\u06d8\u06e1\u06e2\u06e5\u06d8\u06da\u06e0\u06dc\u06e8\u06e5\u06d6\u06da\u06d6\u06e7\u06d8\u06e4\u06e0\u06e0"

    goto :goto_a

    :sswitch_3b
    move-object/from16 v0, p0

    iget v1, v0, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;->OooooOo:I

    if-le v1, v13, :cond_4

    const-string v1, "\u06da\u06d8\u06d8\u06ec\u06e4\u06e2\u06d6\u06eb\u06da\u06e1\u06d8\u06ec\u06e2\u06e2\u06e0\u06db\u06ec\u06d7\u06eb\u06e8\u06d8\u06e0\u06e4\u06e8\u06d8\u06e8\u06db\u06e5\u06d8\u06e4\u06e5\u06d8\u06d8\u06dc\u06db\u06d8\u06ec\u06d8\u06e8\u06d6\u06dc\u06e2\u06dc\u06eb\u06df\u06eb\u06d8\u06da\u06e4\u06df\u06db"

    goto :goto_a

    :sswitch_3c
    const-string v1, "\u06e6\u06d8\u06e6\u06d6\u06db\u06e7\u06e7\u06e4\u06e2\u06d7\u06e0\u06d6\u06d8\u06e6\u06df\u06e5\u06da\u06d8\u06e6\u06df\u06d6\u06dc\u06d8\u06d9\u06d8\u06dc\u06d6\u06d9\u06da\u06d8\u06e4\u06e4\u06e5\u06e1\u06e8\u06e4\u06db\u06d8\u06d8"

    goto :goto_9

    :sswitch_3d
    const-string v1, "\u06df\u06dc\u06d8\u06d9\u06dc\u06e2\u06d7\u06d8\u06d7\u06e1\u06ec\u06dc\u06e1\u06da\u06da\u06dc\u06e1\u06e7\u06d8\u06e2\u06dc\u06e5\u06d8\u06da\u06da\u06e6\u06d8\u06e1\u06da\u06dc\u06e4\u06d9\u06d8\u06db\u06e8\u06ec\u06d9\u06e2\u06da\u06e6\u06dc\u06d8\u06d7\u06df\u06eb\u06e2\u06d8\u06e0\u06dc\u06e0\u06da"

    move-object v3, v1

    goto/16 :goto_0

    :sswitch_3e
    add-int/lit8 v1, v13, -0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;->OooooOo:I

    const-string v1, "\u06e2\u06e0\u06e6\u06e5\u06ec\u06d8\u06d8\u06ec\u06e1\u06dc\u06d8\u06e4\u06ec\u06e4\u06ec\u06e6\u06e1\u06d6\u06ec\u06d6\u06d8\u06eb\u06db\u06e6\u06d8\u06e2\u06e0\u06e1\u06d7\u06db\u06e0\u06e8\u06e8\u06d8\u06e4\u06d7\u06d6\u06e6\u06d9\u06e8\u06e6\u06e5\u06e6\u06e5\u06da\u06e7\u06e7\u06e5\u06d8\u06dc\u06e1\u06e6\u06d8\u06e1\u06d6\u06db\u06e1\u06d7\u06d6"

    move-object v3, v1

    goto/16 :goto_0

    :sswitch_3f
    move-object/from16 v0, p0

    iget v1, v0, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;->OooooOo:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;->setCurrentItem(I)V

    const-string v1, "\u06dc\u06e7\u06d8\u06d8\u06e7\u06d8\u06dc\u06d8\u06d8\u06e2\u06dc\u06d8\u06d8\u06e8\u06db\u06e0\u06e8\u06e5\u06d8\u06dc\u06e8\u06e2\u06d7\u06e8\u06d7\u06d8\u06d7\u06db\u06d7\u06db\u06e8\u06d8\u06e5\u06e6\u06d6\u06e8\u06db\u06ec\u06ec\u06e1\u06e7\u06e5\u06e8\u06e4\u06db\u06e8\u06e5\u06d8\u06df\u06e2\u06d8\u06d9\u06e8"

    move-object v3, v1

    goto/16 :goto_0

    :sswitch_40
    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->requestLayout()V

    const-string v1, "\u06e6\u06e2\u06dc\u06d9\u06e0\u06dc\u06d8\u06e4\u06e5\u06ec\u06df\u06d7\u06e5\u06e6\u06e8\u06dc\u06d8\u06ec\u06d7\u06e1\u06d8\u06d7\u06d6\u06e6\u06d8\u06e0\u06e0\u06da\u06ec\u06db\u06e8\u06d8\u06d6\u06e8\u06d8\u06e8\u06d9\u06d6\u06d8\u06da\u06da\u06db\u06e6\u06e0\u06e5\u06e4\u06df\u06d6\u06d8"

    move-object v3, v1

    goto/16 :goto_0

    :sswitch_41
    const-string v1, "\u06e2\u06d7\u06da\u06e0\u06e2\u06da\u06db\u06e8\u06eb\u06e0\u06e0\u06e4\u06e1\u06e7\u06e5\u06e0\u06d6\u06d8\u06da\u06eb\u06ec\u06e6\u06ec\u06d9\u06ec\u06e1\u06da\u06d8\u06d8\u06df\u06dc\u06e6\u06d8\u06df\u06e6\u06d6\u06d8\u06db\u06e1\u06d7\u06db\u06e8\u06e1\u06d8"

    move-object v3, v1

    goto/16 :goto_0

    :sswitch_42
    const-string v1, "\u06e6\u06ec\u06e5\u06d8\u06da\u06dc\u06d7\u06eb\u06e7\u06e4\u06e6\u06e6\u06e5\u06eb\u06e4\u06e8\u06dc\u06e4\u06ec\u06ec\u06e4\u06e4\u06e2\u06e2\u06da\u06db\u06e8\u06eb\u06e4\u06d9\u06e6\u06d6\u06df\u06e8\u06e0\u06e1\u06ec\u06e4\u06d8\u06d6\u06eb\u06e7\u06e8\u06d8\u06d8\u06d9\u06e2"

    move-object v3, v1

    goto/16 :goto_0

    :sswitch_43
    const-string v1, "\u06ec\u06da\u06d6\u06d8\u06e2\u06d8\u06e6\u06d8\u06d9\u06d9\u06e7\u06d8\u06d9\u06e1\u06d6\u06e4\u06da\u06e8\u06e1\u06d6\u06d8\u06d7\u06e4\u06d6\u06e4\u06e2\u06e5\u06d8\u06e8\u06df\u06df\u06d7\u06e4\u06d6\u06d8"

    move-object v3, v1

    goto/16 :goto_0

    :sswitch_44
    const-string v1, "\u06e4\u06d6\u06d6\u06d9\u06db\u06e1\u06d7\u06eb\u06d8\u06d8\u06d9\u06d9\u06e6\u06e6\u06ec\u06e8\u06e1\u06dc\u06e7\u06d8\u06d6\u06e8\u06d8\u06d7\u06e5\u06ec\u06dc\u06eb\u06df\u06e4\u06e6\u06e6"

    move-object v3, v1

    goto/16 :goto_0

    :sswitch_45
    const-string v1, "\u06d8\u06da\u06ec\u06df\u06dc\u06e7\u06dc\u06ec\u06dc\u06d8\u06da\u06ec\u06e5\u06d7\u06e2\u06e6\u06e6\u06dc\u06e6\u06df\u06ec\u06ec\u06d7\u06e2\u06e5\u06e0\u06e6\u06e5\u06df\u06e5\u06d8\u06db\u06d9\u06db\u06ec\u06e6\u06ec\u06e6\u06da\u06e8\u06d8\u06e1\u06da\u06e1\u06d8\u06e8\u06e0\u06ec\u06da\u06e5\u06dc\u06d8"

    move-object v3, v1

    goto/16 :goto_0

    :sswitch_46
    const-string v1, "\u06d9\u06d7\u06e8\u06d8\u06db\u06e6\u06e6\u06e4\u06df\u06d6\u06d7\u06db\u06d9\u06eb\u06eb\u06d8\u06d8\u06e2\u06dc\u06d8\u06e2\u06e1\u06d7\u06dc\u06e5\u06e5\u06d9\u06da\u06db\u06e2\u06d7\u06e5\u06d8\u06d6\u06d6\u06e8\u06d8\u06d6\u06e6\u06e8\u06e4\u06e2\u06da\u06e7\u06d7"

    move-object v3, v1

    goto/16 :goto_0

    :sswitch_47
    const-string v1, "\u06e2\u06e0\u06e6\u06e5\u06ec\u06d8\u06d8\u06ec\u06e1\u06dc\u06d8\u06e4\u06ec\u06e4\u06ec\u06e6\u06e1\u06d6\u06ec\u06d6\u06d8\u06eb\u06db\u06e6\u06d8\u06e2\u06e0\u06e1\u06d7\u06db\u06e0\u06e8\u06e8\u06d8\u06e4\u06d7\u06d6\u06e6\u06d9\u06e8\u06e6\u06e5\u06e6\u06e5\u06da\u06e7\u06e7\u06e5\u06d8\u06dc\u06e1\u06e6\u06d8\u06e1\u06d6\u06db\u06e1\u06d7\u06d6"

    move-object v3, v1

    goto/16 :goto_0

    :sswitch_48
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x5c48d9b9 -> :sswitch_33
        -0x55eb7a21 -> :sswitch_1a
        -0x51202805 -> :sswitch_32
        -0x4adb47c3 -> :sswitch_43
        -0x491bc1a9 -> :sswitch_2f
        -0x44cd1615 -> :sswitch_26
        -0x3d9a60e7 -> :sswitch_e
        -0x34c28dcc -> :sswitch_11
        -0x2fc16558 -> :sswitch_1b
        -0x181c6451 -> :sswitch_30
        -0x17c6a8f0 -> :sswitch_35
        -0x17a6f987 -> :sswitch_1
        -0x15594c44 -> :sswitch_12
        -0x14c25bbf -> :sswitch_f
        -0x14adbc6d -> :sswitch_42
        0x2ef27f9 -> :sswitch_3e
        0x43b7c19 -> :sswitch_25
        0x7626af5 -> :sswitch_2
        0xbc6f5be -> :sswitch_b
        0x10b408fd -> :sswitch_0
        0x1f8d9c6c -> :sswitch_31
        0x219977ad -> :sswitch_3
        0x21ea0298 -> :sswitch_1c
        0x285b45a1 -> :sswitch_c
        0x2b182eae -> :sswitch_45
        0x39cbc1db -> :sswitch_3f
        0x4110f3aa -> :sswitch_10
        0x5cce00e4 -> :sswitch_36
        0x5de3fdec -> :sswitch_48
        0x69528b02 -> :sswitch_27
        0x6d5692f6 -> :sswitch_40
        0x7060f00b -> :sswitch_34
        0x71ed9823 -> :sswitch_d
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x3de54fea -> :sswitch_41
        0x2eb481de -> :sswitch_4
        0x3b497b61 -> :sswitch_a
        0x7046e30b -> :sswitch_9
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        -0x6f1d72d9 -> :sswitch_7
        -0x41cf6306 -> :sswitch_6
        0x36bd6b17 -> :sswitch_8
        0x642406ed -> :sswitch_5
    .end sparse-switch

    :sswitch_data_3
    .sparse-switch
        -0x5181950e -> :sswitch_19
        0x33008e3 -> :sswitch_18
        0x1abad024 -> :sswitch_13
        0x5b309747 -> :sswitch_46
    .end sparse-switch

    :sswitch_data_4
    .sparse-switch
        -0x29b2f9b4 -> :sswitch_16
        -0x25bbb1cd -> :sswitch_14
        0x402bec4 -> :sswitch_15
        0x35e3dee0 -> :sswitch_17
    .end sparse-switch

    :sswitch_data_5
    .sparse-switch
        -0x7b53b129 -> :sswitch_1f
        -0x1bc9ecd6 -> :sswitch_1d
        -0x65a876d -> :sswitch_23
        0x37201f1b -> :sswitch_24
    .end sparse-switch

    :sswitch_data_6
    .sparse-switch
        -0x26ed990a -> :sswitch_21
        -0x7c3708c -> :sswitch_22
        0x47212195 -> :sswitch_20
        0x74ac8409 -> :sswitch_1e
    .end sparse-switch

    :sswitch_data_7
    .sparse-switch
        -0x2bc53526 -> :sswitch_2e
        0x12d9ea8 -> :sswitch_28
        0x9ba8f32 -> :sswitch_44
        0xee30c5c -> :sswitch_2d
    .end sparse-switch

    :sswitch_data_8
    .sparse-switch
        -0x3a7b7af6 -> :sswitch_2a
        -0x1f1dbd5c -> :sswitch_29
        0x1f1713fc -> :sswitch_2c
        0x76efc582 -> :sswitch_2b
    .end sparse-switch

    :sswitch_data_9
    .sparse-switch
        -0x1c4cf650 -> :sswitch_3d
        0x3e8b7cef -> :sswitch_47
        0x509a21e2 -> :sswitch_39
        0x74fcb9e9 -> :sswitch_37
    .end sparse-switch

    :sswitch_data_a
    .sparse-switch
        -0x7d0aef4f -> :sswitch_3b
        -0x7a2f7731 -> :sswitch_3a
        -0x7030ad70 -> :sswitch_3c
        -0x54f126bf -> :sswitch_38
    .end sparse-switch
.end method

.method public OooO0O0(Landroidx/viewpager/widget/ViewPager;I)V
    .locals 4

    const-string v0, "\u06e2\u06df\u06e1\u06d8\u06d6\u06e8\u06d8\u06d8\u06eb\u06e5\u06d6\u06d8\u06da\u06e2\u06e0\u06ec\u06d8\u06e1\u06d8\u06e0\u06e2\u06d8\u06e0\u06db\u06d7\u06e8\u06e2\u06df\u06e7\u06ec\u06e8\u06d8\u06e8\u06eb\u06e8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x3bd

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0xfa

    const/16 v2, 0x221

    const v3, 0x7d15d12e

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d7\u06e6\u06e6\u06d8\u06e1\u06df\u06e4\u06d8\u06dc\u06e6\u06db\u06e5\u06e1\u06d8\u06e7\u06dc\u06e8\u06d8\u06e5\u06d6\u06d8\u06d8\u06e2\u06d7\u06dc\u06e6\u06d8\u06d8\u06e5\u06dc\u06d8\u06d8\u06e0\u06e2\u06e2\u06e0\u06e5\u06eb\u06db\u06e5\u06e4\u06df\u06d6\u06e4\u06e1\u06d9\u06d8\u06da\u06db\u06e1\u06e5\u06e7\u06d8"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06d7\u06e1\u06db\u06e6\u06d8\u06e6\u06e6\u06d7\u06e6\u06d8\u06e1\u06db\u06d7\u06e7\u06e1\u06d8\u06e1\u06e2\u06d9\u06e6\u06d8\u06e7\u06d8\u06d7\u06ec\u06e5\u06d8\u06e6\u06e8\u06e8\u06d8\u06dc\u06e4\u06e4"

    goto :goto_0

    :sswitch_2
    const-string v0, "\u06e6\u06dc\u06df\u06e7\u06da\u06e1\u06d8\u06eb\u06da\u06da\u06e8\u06e0\u06e6\u06e2\u06d6\u06d8\u06e6\u06eb\u06dc\u06d8\u06da\u06da\u06e6\u06d8\u06ec\u06d8\u06e0\u06dc\u06da\u06dc\u06df"

    goto :goto_0

    :sswitch_3
    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;->setViewPager(Landroidx/viewpager/widget/ViewPager;)V

    const-string v0, "\u06e5\u06ec\u06e5\u06d8\u06d6\u06d8\u06dc\u06d8\u06d6\u06df\u06dc\u06eb\u06db\u06d8\u06d6\u06e8\u06d6\u06e1\u06d6\u06e7\u06eb\u06dc\u06e6\u06d8\u06d7\u06d7\u06d8\u06d8\u06e6\u06ec\u06dc\u06d8\u06e6\u06df\u06e6\u06d9\u06e1\u06e1\u06da\u06da\u06e0\u06d8\u06dc\u06e7\u06d8\u06db\u06e8\u06e4\u06e1\u06e2\u06e8\u06e5\u06e6\u06d8\u06e2\u06dc\u06df\u06df\u06d7\u06df"

    goto :goto_0

    :sswitch_4
    invoke-virtual {p0, p2}, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;->setCurrentItem(I)V

    const-string v0, "\u06da\u06eb\u06e4\u06eb\u06e7\u06d6\u06e6\u06eb\u06e8\u06d8\u06dc\u06da\u06dc\u06d8\u06e5\u06ec\u06da\u06ec\u06dc\u06e2\u06e1\u06e0\u06e0\u06db\u06e8\u06db\u06e1\u06d6\u06e0\u06e4\u06dc\u06d8\u06d8\u06e6\u06e1\u06e7\u06d8\u06e0\u06e6\u06e1"

    goto :goto_0

    :sswitch_5
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x4e965c65 -> :sswitch_1
        -0x3d3d30c4 -> :sswitch_3
        0x84509a6 -> :sswitch_5
        0x3166cc28 -> :sswitch_4
        0x43c2ef46 -> :sswitch_2
        0x635ca8c2 -> :sswitch_0
    .end sparse-switch
.end method

.method public onAttachedToWindow()V
    .locals 5

    const/4 v1, 0x0

    const-string v0, "\u06e1\u06e4\u06d7\u06e7\u06e7\u06d6\u06e0\u06e2\u06dc\u06e0\u06e2\u06e2\u06e1\u06d7\u06d8\u06d9\u06e6\u06da\u06dc\u06e4\u06ec\u06d7\u06e6\u06e7\u06e1\u06e4\u06d6\u06d8\u06e1\u06e4\u06e0\u06d8\u06da\u06e7\u06e4\u06eb\u06e2\u06d9\u06e4\u06e6\u06d8\u06e7\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v3, 0x2f1

    xor-int/2addr v2, v3

    xor-int/lit16 v2, v2, 0x347

    const/16 v3, 0x113

    const v4, -0x4b33e4fa

    xor-int/2addr v2, v3

    xor-int/2addr v2, v4

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e4\u06eb\u06ec\u06ec\u06e1\u06ec\u06d6\u06d9\u06d8\u06d8\u06d7\u06df\u06e8\u06d8\u06da\u06e5\u06db\u06e7\u06d6\u06e6\u06d8\u06e0\u06e2\u06e0\u06e8\u06db\u06e8\u06d8\u06df\u06e8\u06d8\u06e1\u06df\u06e2\u06e5\u06dc\u06e8\u06e4\u06d7\u06ec\u06e7\u06dc\u06d8\u06e6\u06e7\u06e6\u06d8\u06e4\u06e8\u06dc\u06d9\u06e0\u06e7"

    goto :goto_0

    :sswitch_1
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onAttachedToWindow()V

    const-string v0, "\u06e2\u06d7\u06ec\u06d9\u06e8\u06dc\u06d8\u06ec\u06e2\u06e1\u06d8\u06e1\u06e7\u06e0\u06dc\u06eb\u06ec\u06ec\u06df\u06db\u06db\u06e4\u06d8\u06d8\u06e1\u06e1\u06e5\u06d8\u06ec\u06eb\u06df\u06da\u06e8\u06d7"

    goto :goto_0

    :sswitch_2
    iget-object v1, p0, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;->OoooOoO:Ljava/lang/Runnable;

    const-string v0, "\u06d9\u06dc\u06e8\u06d8\u06e6\u06dc\u06d9\u06e6\u06ec\u06db\u06e6\u06e4\u06db\u06dc\u06e6\u06d8\u06e7\u06d7\u06e8\u06db\u06df\u06e4\u06e2\u06e5\u06e8\u06e2\u06da\u06e0\u06e1\u06e0\u06e2\u06da\u06e2\u06d7\u06e4\u06e5\u06da\u06e4\u06d7\u06e5\u06d8\u06e1\u06e7\u06e4\u06e8\u06e7\u06d6\u06d7\u06d9\u06df"

    goto :goto_0

    :sswitch_3
    const v2, -0x333541f0

    const-string v0, "\u06d9\u06da\u06e5\u06d7\u06e2\u06eb\u06ec\u06e8\u06d8\u06d8\u06d7\u06ec\u06e2\u06d6\u06d6\u06d8\u06e5\u06e2\u06e4\u06d9\u06e8\u06e7\u06d8\u06e1\u06df\u06d6\u06d7\u06e0\u06d8\u06db\u06ec\u06e5\u06e0\u06eb\u06e1\u06d8\u06d8\u06dc\u06e2"

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v2

    sparse-switch v3, :sswitch_data_1

    goto :goto_1

    :sswitch_4
    const v3, -0x16b885a1

    const-string v0, "\u06e2\u06d9\u06e6\u06d7\u06e7\u06ec\u06e0\u06e2\u06ec\u06dc\u06e1\u06e7\u06d8\u06e7\u06ec\u06d6\u06e4\u06d7\u06d6\u06d8\u06eb\u06e7\u06e1\u06d7\u06e1\u06e7\u06d8\u06d7\u06e7\u06e1\u06e6\u06dc\u06d8"

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    xor-int/2addr v4, v3

    sparse-switch v4, :sswitch_data_2

    goto :goto_2

    :sswitch_5
    if-eqz v1, :cond_0

    const-string v0, "\u06e4\u06d7\u06db\u06e4\u06d6\u06d6\u06d8\u06e6\u06ec\u06db\u06e4\u06da\u06db\u06d9\u06eb\u06e6\u06d8\u06e1\u06ec\u06d7\u06ec\u06e1\u06e8\u06d8\u06eb\u06df\u06dc\u06d8\u06d9\u06d7\u06e6\u06d8\u06dc\u06d8\u06dc\u06d8\u06d7\u06e2\u06e5\u06d8\u06d8\u06d7\u06eb\u06e0\u06da\u06e8\u06d8\u06d6\u06dc\u06e4"

    goto :goto_2

    :sswitch_6
    const-string v0, "\u06e5\u06d7\u06d8\u06dc\u06dc\u06e1\u06d8\u06e1\u06eb\u06eb\u06db\u06eb\u06db\u06d8\u06e6\u06db\u06d7\u06e5\u06e5\u06da\u06e8\u06d8\u06eb\u06db\u06da\u06d8\u06e7\u06e4\u06e6\u06da\u06eb"

    goto :goto_1

    :cond_0
    const-string v0, "\u06d9\u06d7\u06d8\u06d8\u06d7\u06e6\u06d8\u06dc\u06da\u06dc\u06db\u06ec\u06e7\u06d9\u06d8\u06d8\u06da\u06e2\u06dc\u06e2\u06e6\u06da\u06d6\u06db\u06e5\u06da\u06ec\u06e2\u06d7\u06e8\u06d8\u06d8\u06e1\u06eb\u06d8\u06dc\u06da\u06e2\u06db\u06e5\u06e7\u06d8\u06e1\u06eb\u06d9\u06da\u06e5\u06d6\u06da\u06da\u06e5\u06e5\u06db\u06e7\u06d9\u06eb\u06e1"

    goto :goto_2

    :sswitch_7
    const-string v0, "\u06ec\u06df\u06dc\u06d8\u06e1\u06ec\u06dc\u06e1\u06e5\u06e1\u06d8\u06e0\u06e4\u06d6\u06d8\u06e1\u06d6\u06e4\u06e2\u06e8\u06eb\u06e0\u06df\u06e2\u06e4\u06e1\u06d8\u06d9\u06d7\u06e2\u06d8\u06d8\u06e8\u06d8"

    goto :goto_2

    :sswitch_8
    const-string v0, "\u06e6\u06d6\u06e6\u06d8\u06d7\u06d6\u06df\u06dc\u06d8\u06e5\u06e0\u06dc\u06d8\u06e7\u06ec\u06e8\u06d8\u06df\u06e6\u06e2\u06eb\u06e1\u06d8\u06d8\u06eb\u06ec\u06d7\u06e8\u06eb\u06d8\u06d9\u06df\u06db"

    goto :goto_1

    :sswitch_9
    const-string v0, "\u06da\u06e1\u06e5\u06da\u06e5\u06e6\u06e0\u06e6\u06e5\u06d8\u06e6\u06eb\u06d8\u06d8\u06db\u06ec\u06e7\u06e2\u06e8\u06db\u06e8\u06d7\u06d7\u06e2\u06db\u06e8\u06d8\u06e4\u06e1\u06d6\u06d8\u06e4\u06eb\u06d6\u06e5\u06df\u06e1\u06df\u06e7\u06e1\u06e8\u06e6\u06d8\u06dc\u06d6\u06d8\u06d8"

    goto :goto_1

    :sswitch_a
    const-string v0, "\u06d6\u06e6\u06e1\u06d8\u06e8\u06db\u06d8\u06e5\u06eb\u06d6\u06d8\u06dc\u06e0\u06d6\u06e4\u06d8\u06d6\u06d8\u06e6\u06e2\u06dc\u06e5\u06d9\u06dc\u06e1\u06e1\u06d6\u06d8\u06e4\u06ec\u06da\u06e0\u06e0\u06d6\u06e6\u06eb\u06e8\u06d8\u06eb\u06e8\u06d8\u06d8\u06ec\u06eb\u06e8\u06d8\u06d7\u06e5\u06e1\u06d8\u06ec\u06d9\u06eb\u06d8\u06e5\u06dc"

    goto :goto_0

    :sswitch_b
    invoke-virtual {p0, v1}, Landroid/widget/HorizontalScrollView;->post(Ljava/lang/Runnable;)Z

    const-string v0, "\u06df\u06da\u06ec\u06dc\u06da\u06df\u06eb\u06e6\u06e6\u06d8\u06e5\u06db\u06ec\u06e0\u06d7\u06d8\u06d8\u06e2\u06eb\u06d8\u06e7\u06d9\u06e8\u06d8\u06d7\u06dc\u06d8\u06d8\u06db\u06da\u06e1\u06d8\u06dc\u06ec\u06e8\u06d8\u06ec\u06e0\u06db\u06e4\u06e5\u06e5\u06d8\u06e5\u06eb\u06d8\u06d7\u06df\u06dc"

    goto :goto_0

    :sswitch_c
    const-string v0, "\u06df\u06da\u06ec\u06dc\u06da\u06df\u06eb\u06e6\u06e6\u06d8\u06e5\u06db\u06ec\u06e0\u06d7\u06d8\u06d8\u06e2\u06eb\u06d8\u06e7\u06d9\u06e8\u06d8\u06d7\u06dc\u06d8\u06d8\u06db\u06da\u06e1\u06d8\u06dc\u06ec\u06e8\u06d8\u06ec\u06e0\u06db\u06e4\u06e5\u06e5\u06d8\u06e5\u06eb\u06d8\u06d7\u06df\u06dc"

    goto :goto_0

    :sswitch_d
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7db22cea -> :sswitch_0
        -0x663cf15c -> :sswitch_b
        -0xbab8b08 -> :sswitch_2
        0xe5a26e7 -> :sswitch_1
        0x3b8bead1 -> :sswitch_3
        0x51cdf962 -> :sswitch_d
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x7e964925 -> :sswitch_9
        -0x77a5d927 -> :sswitch_a
        0x18dc7ef3 -> :sswitch_4
        0x6f7b9243 -> :sswitch_c
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        -0x21c48cff -> :sswitch_5
        0x121c19e2 -> :sswitch_6
        0x18942440 -> :sswitch_7
        0x5faacc3c -> :sswitch_8
    .end sparse-switch
.end method

.method public onDetachedFromWindow()V
    .locals 5

    const/4 v1, 0x0

    const-string v0, "\u06e7\u06d7\u06dc\u06d8\u06e8\u06df\u06da\u06e5\u06dc\u06e1\u06e8\u06e0\u06e5\u06e4\u06dc\u06da\u06e6\u06db\u06dc\u06d8\u06d6\u06db\u06d6\u06d8\u06e4\u06eb\u06e1\u06d9\u06e5\u06e1\u06d8\u06e7\u06db\u06da\u06e6\u06d6\u06d7\u06dc\u06e5\u06e8\u06ec\u06e7\u06dc\u06d8\u06e0\u06da\u06e5\u06d8\u06d7\u06e0\u06e5\u06d8\u06e6\u06dc\u06e1"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v3, 0x39b

    xor-int/2addr v2, v3

    xor-int/lit16 v2, v2, 0x234

    const/16 v3, 0x155

    const v4, 0x22d014b1

    xor-int/2addr v2, v3

    xor-int/2addr v2, v4

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06da\u06e7\u06e5\u06d8\u06e8\u06e1\u06e0\u06ec\u06db\u06e2\u06e8\u06e5\u06dc\u06d8\u06db\u06dc\u06df\u06ec\u06dc\u06d7\u06e2\u06e7\u06eb\u06d8\u06d8\u06d8\u06e8\u06e6\u06eb\u06e1\u06e1\u06e5\u06d8\u06e5\u06d8\u06d8\u06d6\u06eb\u06d6\u06e8\u06eb\u06eb\u06e7\u06e1\u06eb\u06da\u06d9\u06e2\u06d7\u06dc\u06e2\u06ec\u06e2\u06e6\u06eb\u06e2\u06e6"

    goto :goto_0

    :sswitch_1
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onDetachedFromWindow()V

    const-string v0, "\u06e5\u06e6\u06eb\u06d8\u06d8\u06db\u06d6\u06e4\u06d9\u06e6\u06e2\u06d8\u06d8\u06e4\u06e0\u06eb\u06e7\u06d9\u06df\u06e1\u06e4\u06e5\u06d8\u06d6\u06da\u06d8\u06d6\u06d8\u06d8\u06d8\u06e4\u06ec\u06e1\u06d8\u06d8\u06e4\u06d6\u06d6\u06d7\u06ec\u06e4\u06dc\u06e1\u06e2\u06eb\u06e5\u06db\u06e5\u06e7\u06d8\u06da\u06e5\u06ec\u06e5\u06df\u06da"

    goto :goto_0

    :sswitch_2
    iget-object v1, p0, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;->OoooOoO:Ljava/lang/Runnable;

    const-string v0, "\u06e4\u06e1\u06eb\u06df\u06e8\u06e1\u06d8\u06d9\u06d7\u06e8\u06d8\u06dc\u06e0\u06e5\u06df\u06d8\u06e5\u06d8\u06d8\u06e4\u06e4\u06e8\u06e5\u06e2\u06e5\u06e1\u06e6\u06d8\u06e6\u06d6\u06d8\u06d6\u06dc\u06d8\u06d7\u06e5\u06d6\u06e1\u06d9\u06e1\u06d8\u06d7\u06e7\u06df\u06e8\u06d6\u06e7\u06d8"

    goto :goto_0

    :sswitch_3
    const v2, 0x1727c71f

    const-string v0, "\u06e0\u06e0\u06d8\u06d8\u06da\u06e5\u06e1\u06eb\u06e5\u06e6\u06e8\u06d6\u06d9\u06eb\u06e5\u06e6\u06d8\u06eb\u06e2\u06db\u06d8\u06d8\u06e8\u06d9\u06d9\u06d7\u06d7\u06d7\u06e5\u06df\u06e8"

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v2

    sparse-switch v3, :sswitch_data_1

    goto :goto_1

    :sswitch_4
    const-string v0, "\u06e4\u06d9\u06da\u06e4\u06db\u06d7\u06d9\u06e4\u06ec\u06dc\u06d8\u06e5\u06dc\u06e0\u06d6\u06dc\u06e8\u06e8\u06db\u06d8\u06eb\u06dc\u06d8\u06e6\u06d8\u06e4\u06e1\u06e1\u06eb\u06db\u06e6\u06eb\u06db\u06e5\u06da\u06e6\u06dc\u06ec\u06da\u06e5\u06d8\u06e0\u06d8\u06e4"

    goto :goto_0

    :sswitch_5
    const-string v0, "\u06df\u06d6\u06ec\u06df\u06e5\u06e1\u06d8\u06e1\u06e4\u06da\u06e2\u06da\u06e1\u06d8\u06e4\u06e6\u06da\u06d7\u06d6\u06e8\u06d8\u06e6\u06e4\u06db\u06dc\u06ec\u06eb\u06e7\u06e2\u06db\u06db\u06df\u06d8\u06e4\u06d8\u06e5\u06d9\u06e8\u06d6\u06d8\u06e0\u06e1\u06d9\u06d8\u06e2\u06e4\u06e1\u06e5\u06eb\u06e2\u06e6\u06da"

    goto :goto_1

    :sswitch_6
    const v3, -0x25147748

    const-string v0, "\u06d9\u06d7\u06e2\u06df\u06d9\u06d9\u06ec\u06d6\u06e8\u06e4\u06e7\u06e1\u06e6\u06e7\u06d6\u06d8\u06d7\u06da\u06dc\u06d8\u06e2\u06e8\u06d7\u06e1\u06d7\u06ec\u06e7\u06d9\u06e5\u06d8\u06d6\u06e4\u06ec\u06eb\u06d6\u06d6\u06e0\u06dc\u06dc\u06da\u06e0\u06dc\u06d8\u06ec\u06e5\u06d8"

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    xor-int/2addr v4, v3

    sparse-switch v4, :sswitch_data_2

    goto :goto_2

    :sswitch_7
    const-string v0, "\u06df\u06da\u06ec\u06dc\u06dc\u06db\u06dc\u06e5\u06d7\u06eb\u06ec\u06d9\u06da\u06e5\u06d7\u06d6\u06e0\u06d6\u06e7\u06e1\u06db\u06e1\u06e8\u06e8\u06d8\u06df\u06eb\u06d8\u06d8\u06dc\u06e8\u06e6"

    goto :goto_1

    :cond_0
    const-string v0, "\u06d8\u06e4\u06db\u06da\u06dc\u06d6\u06e1\u06e7\u06ec\u06e5\u06db\u06e5\u06d8\u06d7\u06db\u06d7\u06d6\u06e4\u06e5\u06d8\u06da\u06db\u06e0\u06dc\u06da\u06ec\u06eb\u06e7\u06d6\u06d8\u06e2\u06da\u06e5\u06e7\u06d9\u06da\u06da\u06e2\u06e0"

    goto :goto_2

    :sswitch_8
    if-eqz v1, :cond_0

    const-string v0, "\u06df\u06e2\u06e1\u06e4\u06d7\u06e7\u06e5\u06e4\u06e2\u06d9\u06e0\u06e1\u06e5\u06d8\u06db\u06e0\u06d7\u06d9\u06db\u06dc\u06d8\u06ec\u06e4\u06d8\u06e6\u06ec\u06e1\u06e0\u06da\u06e1\u06d8\u06e6\u06df\u06d8\u06d8\u06d6\u06e7\u06d8\u06eb\u06e0\u06e2\u06dc\u06d7\u06d7\u06db\u06eb\u06e5\u06d8\u06eb\u06e6\u06d8"

    goto :goto_2

    :sswitch_9
    const-string v0, "\u06e1\u06e7\u06df\u06e6\u06e6\u06d6\u06d8\u06dc\u06d8\u06d8\u06db\u06d8\u06ec\u06e8\u06db\u06e6\u06d8\u06df\u06e8\u06d6\u06e5\u06e0\u06d6\u06d8\u06dc\u06db\u06da\u06d8\u06e1\u06eb\u06d6\u06dc\u06e1\u06d9\u06d9\u06d7\u06df\u06e8\u06e1\u06d8\u06e2\u06e4\u06e8\u06d8\u06e0\u06dc\u06d8\u06d8"

    goto :goto_2

    :sswitch_a
    const-string v0, "\u06d7\u06dc\u06e0\u06ec\u06df\u06e6\u06d8\u06d6\u06d7\u06e8\u06e5\u06da\u06e1\u06ec\u06e4\u06e7\u06d8\u06d6\u06e5\u06e6\u06ec\u06dc\u06d8\u06dc\u06dc\u06da\u06e0\u06d9\u06e0\u06db\u06e6\u06e2\u06d7\u06e4\u06df\u06e7\u06e4\u06e1\u06d8\u06df\u06e2\u06db\u06eb\u06e2\u06e2\u06e5\u06e7\u06e2\u06d6\u06d9\u06e8\u06d8"

    goto :goto_1

    :sswitch_b
    invoke-virtual {p0, v1}, Landroid/widget/HorizontalScrollView;->removeCallbacks(Ljava/lang/Runnable;)Z

    const-string v0, "\u06e8\u06e1\u06d6\u06e0\u06d9\u06dc\u06d8\u06e0\u06d9\u06db\u06e1\u06e6\u06ec\u06d7\u06da\u06d6\u06d8\u06e1\u06e8\u06dc\u06dc\u06eb\u06d7\u06ec\u06db\u06e0\u06db\u06da\u06e1\u06e1\u06dc\u06d9\u06d6\u06e6\u06da\u06e1\u06e1\u06e8\u06e1\u06eb\u06dc"

    goto :goto_0

    :sswitch_c
    const-string v0, "\u06e8\u06e1\u06d6\u06e0\u06d9\u06dc\u06d8\u06e0\u06d9\u06db\u06e1\u06e6\u06ec\u06d7\u06da\u06d6\u06d8\u06e1\u06e8\u06dc\u06dc\u06eb\u06d7\u06ec\u06db\u06e0\u06db\u06da\u06e1\u06e1\u06dc\u06d9\u06d6\u06e6\u06da\u06e1\u06e1\u06e8\u06e1\u06eb\u06dc"

    goto :goto_0

    :sswitch_d
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x75ed10bf -> :sswitch_0
        -0x602f133a -> :sswitch_3
        -0x591e9a6b -> :sswitch_1
        0x58fbe0e4 -> :sswitch_b
        0x63473792 -> :sswitch_2
        0x655f3ffd -> :sswitch_d
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x72013b8b -> :sswitch_a
        -0x615a49cf -> :sswitch_c
        0x1604a563 -> :sswitch_6
        0x70c18c1a -> :sswitch_4
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        -0x4ebf7fbf -> :sswitch_9
        0x1f304ea9 -> :sswitch_8
        0x31bdefd0 -> :sswitch_7
        0x3e12cd7e -> :sswitch_5
    .end sparse-switch
.end method

.method public onMeasure(II)V
    .locals 14

    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    const-string v0, "\u06e1\u06ec\u06e6\u06d8\u06dc\u06e0\u06e0\u06e0\u06db\u06d6\u06d8\u06e4\u06e8\u06d8\u06e4\u06e6\u06d6\u06e7\u06e0\u06e7\u06e6\u06e6\u06e0\u06d9\u06df\u06ec\u06e1\u06eb\u06d6\u06e8\u06e8\u06da\u06da\u06e0\u06e4\u06e2\u06d9\u06e5\u06db\u06db\u06d6\u06d8\u06d8\u06df\u06e6\u06d8\u06e8\u06d6\u06dc\u06d8\u06e8\u06db\u06d8\u06e7\u06e0\u06dc\u06d8\u06e0\u06e8\u06e1\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v11

    const/16 v12, 0xda

    xor-int/2addr v11, v12

    xor-int/lit16 v11, v11, 0x22c

    const/16 v12, 0x2cf

    const v13, 0x4a01f5fd    # 2129279.2f

    xor-int/2addr v11, v12

    xor-int/2addr v11, v13

    sparse-switch v11, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d8\u06dc\u06e8\u06d8\u06d7\u06e2\u06dc\u06e6\u06ec\u06eb\u06d6\u06da\u06da\u06ec\u06e2\u06d6\u06d8\u06d7\u06e1\u06d9\u06d6\u06db\u06ec\u06ec\u06e5\u06ec\u06d6\u06d9\u06e0\u06d9\u06dc\u06d6\u06d8"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06d6\u06db\u06e4\u06e4\u06e7\u06d8\u06d8\u06db\u06e1\u06e4\u06e6\u06df\u06e2\u06d9\u06e5\u06da\u06eb\u06e1\u06ec\u06da\u06e7\u06ec\u06e6\u06e7\u06d9\u06d6\u06eb\u06e8\u06d8\u06e0\u06d7\u06df\u06d9\u06d6\u06eb\u06da\u06df\u06e6\u06d8"

    goto :goto_0

    :sswitch_2
    const-string v0, "\u06d7\u06e6\u06ec\u06e1\u06e4\u06e2\u06e7\u06e5\u06d8\u06dc\u06ec\u06ec\u06d8\u06e2\u06e0\u06da\u06d8\u06dc\u06e6\u06d6\u06da\u06dc\u06e2\u06df\u06eb\u06e8\u06d8\u06db\u06d8\u06e6\u06d8\u06e8\u06e1\u06e7\u06d8\u06d7\u06e2\u06dc\u06eb\u06e1\u06d8\u06e7\u06d8\u06d8\u06d6\u06dc\u06e0\u06dc\u06e5\u06db"

    goto :goto_0

    :sswitch_3
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v10

    const-string v0, "\u06da\u06e7\u06e5\u06d8\u06e5\u06e1\u06df\u06e4\u06db\u06e2\u06d7\u06d7\u06da\u06e7\u06dc\u06d6\u06d8\u06da\u06e2\u06e1\u06d8\u06eb\u06dc\u06e6\u06e5\u06d7\u06e6\u06d8\u06eb\u06e0\u06e1\u06d8\u06d9\u06d6\u06e8\u06d8\u06d7\u06e7\u06da\u06da\u06ec\u06eb"

    goto :goto_0

    :sswitch_4
    const v11, -0x1db527be

    const-string v0, "\u06d6\u06da\u06ec\u06e5\u06e1\u06d6\u06ec\u06eb\u06ec\u06da\u06eb\u06e0\u06e6\u06db\u06d8\u06d8\u06eb\u06d7\u06e1\u06d8\u06dc\u06eb\u06d6\u06d8\u06e1\u06dc\u06db\u06d9\u06e8\u06e7\u06e8\u06eb\u06e2\u06e7\u06db\u06df\u06eb\u06e0\u06dc\u06eb\u06d6\u06dc\u06e5\u06dc\u06ec\u06d6\u06d9\u06dc\u06d8\u06d7\u06eb\u06e0"

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v12

    xor-int/2addr v12, v11

    sparse-switch v12, :sswitch_data_1

    goto :goto_1

    :sswitch_5
    const-string v0, "\u06df\u06e1\u06d8\u06db\u06d8\u06eb\u06db\u06d7\u06e6\u06d8\u06e8\u06d8\u06dc\u06ec\u06d6\u06d8\u06df\u06e8\u06dc\u06e7\u06db\u06e7\u06e7\u06dc\u06dc\u06d8\u06e5\u06d8\u06e8\u06d8\u06ec\u06e1\u06df\u06d8\u06ec\u06eb\u06d6\u06e5\u06d6\u06ec\u06e1\u06d9\u06eb\u06e4\u06dc"

    goto :goto_0

    :sswitch_6
    const-string v0, "\u06db\u06e7\u06e5\u06d8\u06e0\u06d7\u06e4\u06e0\u06d9\u06e1\u06ec\u06db\u06e8\u06dc\u06e4\u06d7\u06dc\u06eb\u06e0\u06d6\u06d8\u06e1\u06d7\u06e4\u06dc\u06d8\u06d8\u06df\u06db\u06e5\u06e7\u06e6\u06ec\u06d7\u06e1\u06e5\u06e1\u06d8\u06e8\u06e1\u06e1\u06d8\u06d8\u06e7\u06e1\u06e1\u06e0\u06d6\u06d8\u06db\u06e0\u06dc"

    goto :goto_1

    :sswitch_7
    const v12, 0x305e8449

    const-string v0, "\u06e7\u06e1\u06d8\u06d8\u06dc\u06e4\u06d8\u06d8\u06e0\u06e5\u06e7\u06d8\u06e8\u06e8\u06e4\u06d6\u06e2\u06e4\u06db\u06d8\u06e6\u06d8\u06ec\u06e1\u06e2\u06e7\u06e8\u06df\u06ec\u06e8\u06ec\u06d8\u06e1\u06d8\u06d6\u06db\u06dc\u06d8\u06e1\u06ec\u06e8"

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v13

    xor-int/2addr v13, v12

    sparse-switch v13, :sswitch_data_2

    goto :goto_2

    :sswitch_8
    const-string v0, "\u06e4\u06e0\u06d8\u06d8\u06dc\u06e8\u06ec\u06e0\u06d6\u06d6\u06e8\u06df\u06e4\u06e7\u06e5\u06e6\u06d9\u06ec\u06e0\u06dc\u06df\u06e2\u06eb\u06e2\u06e8\u06d7\u06da\u06d7\u06ec\u06d6\u06e7\u06e8\u06e0\u06df\u06e2\u06e1"

    goto :goto_2

    :cond_0
    const-string v0, "\u06e2\u06e5\u06e2\u06d6\u06e7\u06e5\u06e2\u06d8\u06d8\u06d6\u06e5\u06eb\u06d8\u06e2\u06e8\u06d6\u06d9\u06d8\u06d8\u06d9\u06da\u06eb\u06db\u06ec\u06e4\u06e0\u06e1\u06d8\u06da\u06d8\u06e7\u06d8\u06df\u06d7\u06e8\u06d8\u06e4\u06e6\u06e6\u06d8\u06df\u06e1\u06e4\u06d9\u06d6\u06e5\u06e7\u06e8\u06e7\u06d8\u06dc\u06dc\u06e5\u06d8\u06e6\u06e1\u06dc\u06d8\u06e8\u06da\u06e4"

    goto :goto_2

    :sswitch_9
    const/high16 v0, 0x40000000    # 2.0f

    if-ne v10, v0, :cond_0

    const-string v0, "\u06dc\u06dc\u06e4\u06e8\u06e6\u06d8\u06dc\u06dc\u06e8\u06d8\u06e4\u06e4\u06eb\u06d8\u06e7\u06dc\u06d8\u06e6\u06d8\u06eb\u06db\u06da\u06e4\u06e5\u06df\u06e4\u06e8\u06df\u06e5\u06d6\u06d8"

    goto :goto_2

    :sswitch_a
    const-string v0, "\u06d8\u06e8\u06d6\u06eb\u06e1\u06e6\u06eb\u06d9\u06e5\u06d8\u06db\u06e8\u06eb\u06e6\u06da\u06d8\u06d8\u06da\u06ec\u06db\u06da\u06d6\u06d9\u06e1\u06d8\u06d8\u06d8\u06d9\u06da\u06d7\u06d8\u06da\u06d8\u06d8\u06d9\u06d6\u06d8\u06e0\u06e6\u06da\u06e4\u06da\u06e8\u06d8\u06d9\u06e4\u06d8\u06df\u06e7\u06e8\u06d8\u06eb\u06eb\u06d8\u06d8\u06e7\u06ec\u06e5\u06e5\u06da\u06e1\u06d8"

    goto :goto_1

    :sswitch_b
    const-string v0, "\u06ec\u06e4\u06e5\u06e2\u06dc\u06db\u06eb\u06e8\u06e1\u06d8\u06e5\u06d8\u06d9\u06ec\u06da\u06e1\u06e8\u06e8\u06e8\u06d8\u06e7\u06df\u06e8\u06ec\u06e1\u06e6\u06dc\u06ec\u06e1\u06d8\u06d8\u06d8\u06d9\u06df\u06d8\u06df\u06e0\u06eb\u06da\u06df\u06d7\u06dc\u06d8\u06d7\u06d7\u06d8\u06e0\u06e4\u06e1\u06d8\u06ec\u06d6\u06e2\u06d8\u06eb\u06e0\u06e4\u06da"

    goto :goto_1

    :sswitch_c
    const-string v0, "\u06d8\u06e7\u06e6\u06d8\u06d8\u06df\u06d6\u06e5\u06eb\u06d6\u06d8\u06dc\u06e7\u06d8\u06db\u06e6\u06e1\u06dc\u06dc\u06d8\u06e2\u06db\u06e6\u06d8\u06e1\u06da\u06e5\u06e1\u06e0\u06e1\u06d8\u06d9\u06e2\u06d8\u06d9\u06d8\u06dc\u06e8\u06d7\u06d8\u06d7\u06da\u06dc\u06d8\u06e0\u06eb\u06e6"

    goto :goto_0

    :sswitch_d
    const/4 v9, 0x1

    const-string v0, "\u06e6\u06e0\u06e1\u06d7\u06e4\u06d7\u06db\u06e5\u06d8\u06e1\u06eb\u06df\u06eb\u06e5\u06db\u06e5\u06d6\u06eb\u06e7\u06d9\u06e6\u06d8\u06ec\u06e7\u06e7\u06e8\u06e1\u06dc\u06e0\u06e1\u06d9\u06e1\u06e7\u06e1\u06da\u06d8\u06e7\u06d9\u06e8\u06e5\u06d8\u06d9\u06e4\u06e4\u06ec\u06da\u06e0\u06e1\u06ec\u06e6"

    goto :goto_0

    :sswitch_e
    const-string v0, "\u06e6\u06e2\u06e1\u06e7\u06d8\u06e7\u06dc\u06d8\u06e6\u06d8\u06e6\u06e5\u06d7\u06eb\u06e7\u06e1\u06d8\u06e0\u06d8\u06d6\u06e6\u06e7\u06e6\u06df\u06e2\u06e2\u06db\u06e5\u06eb\u06db\u06e6\u06e5\u06d8"

    move v8, v9

    goto :goto_0

    :sswitch_f
    const/4 v7, 0x0

    const-string v0, "\u06df\u06e6\u06e5\u06d8\u06e5\u06db\u06d8\u06da\u06e7\u06e6\u06d7\u06da\u06e0\u06db\u06d7\u06ec\u06ec\u06d6\u06dc\u06d8\u06ec\u06e0\u06e1\u06e6\u06eb\u06eb\u06ec\u06e4\u06db\u06d6\u06e8\u06df\u06dc\u06d8\u06d6\u06e0\u06df\u06db\u06d8\u06d6\u06d8\u06da\u06d6\u06d6\u06d8\u06e0\u06e8\u06e7\u06d8\u06e2"

    goto :goto_0

    :sswitch_10
    const-string v0, "\u06d7\u06db\u06d8\u06d8\u06e2\u06d8\u06dc\u06d9\u06dc\u06e1\u06ec\u06d8\u06e8\u06d8\u06e2\u06df\u06db\u06eb\u06db\u06da\u06dc\u06da\u06d7\u06dc\u06d8\u06e7\u06e7\u06e5\u06d8\u06d8\u06dc\u06eb\u06df\u06dc\u06db\u06e6\u06da\u06d6\u06e7\u06e4\u06d7\u06dc\u06d6\u06d8"

    move v8, v7

    goto :goto_0

    :sswitch_11
    invoke-virtual {p0, v8}, Landroid/widget/HorizontalScrollView;->setFillViewport(Z)V

    const-string v0, "\u06ec\u06e6\u06e7\u06d8\u06e2\u06e8\u06e4\u06dc\u06eb\u06dc\u06e4\u06d8\u06e2\u06e2\u06df\u06dc\u06d8\u06da\u06dc\u06d9\u06d9\u06e7\u06d7\u06e0\u06dc\u06e7\u06d8\u06e6\u06e6\u06e1\u06df\u06eb\u06d8\u06d8\u06d7\u06d8\u06d6\u06d8\u06df\u06d8\u06df\u06e4\u06da\u06d8\u06d8\u06e0\u06d8\u06d8\u06d8"

    goto :goto_0

    :sswitch_12
    iget-object v0, p0, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;->Ooooo00:Lz2/za;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v6

    const-string v0, "\u06e7\u06e8\u06e5\u06db\u06e8\u06eb\u06d9\u06e2\u06dc\u06d8\u06d9\u06db\u06df\u06e0\u06d8\u06e8\u06d8\u06d7\u06e4\u06e8\u06d8\u06d6\u06dc\u06d6\u06ec\u06e8\u06e5\u06d8\u06e7\u06da\u06e0\u06ec\u06dc\u06e6\u06d8\u06d9\u06e2\u06d8\u06d8\u06d8\u06db\u06e4"

    goto :goto_0

    :sswitch_13
    const v11, 0x192d5cea

    const-string v0, "\u06e4\u06df\u06d6\u06d8\u06e2\u06eb\u06df\u06df\u06e8\u06da\u06d8\u06e1\u06d8\u06ec\u06e1\u06e8\u06d8\u06ec\u06e6\u06d8\u06d8\u06d8\u06d7\u06da\u06e2\u06e0\u06e1\u06e2\u06eb\u06d6\u06d7\u06d9\u06db\u06d6\u06da\u06e1\u06e2\u06e0\u06e5\u06ec\u06e5\u06e0\u06e6\u06e2\u06e4\u06e5\u06eb\u06e6\u06da\u06ec\u06e7\u06df\u06e0\u06e8\u06db\u06e2"

    :goto_3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v12

    xor-int/2addr v12, v11

    sparse-switch v12, :sswitch_data_3

    goto :goto_3

    :sswitch_14
    const-string v0, "\u06e7\u06d8\u06e1\u06e6\u06df\u06d8\u06d8\u06d8\u06e0\u06e7\u06e6\u06df\u06df\u06e4\u06d8\u06dc\u06d8\u06ec\u06e5\u06d6\u06d8\u06e4\u06e7\u06e2\u06d9\u06dc\u06e1\u06d8\u06eb\u06e0\u06d8\u06e1\u06eb\u06db\u06e5\u06eb\u06d6\u06d8\u06d7\u06d8\u06e6\u06d8\u06e0\u06e7\u06e8\u06e7\u06d6\u06e4\u06d9\u06e2\u06e5\u06d9\u06d7\u06d7"

    goto :goto_3

    :sswitch_15
    const-string v0, "\u06df\u06e0\u06e5\u06d8\u06d7\u06e4\u06d6\u06d8\u06d6\u06d6\u06d8\u06d8\u06db\u06e2\u06d9\u06e2\u06da\u06e7\u06dc\u06db\u06dc\u06e4\u06e8\u06e7\u06d8\u06e5\u06d8\u06db\u06e7\u06e5\u06e1\u06d8\u06d9\u06df\u06d7\u06e4\u06e7\u06e0\u06ec\u06d8\u06e4"

    goto :goto_3

    :sswitch_16
    const v12, 0x531542e9

    const-string v0, "\u06da\u06d6\u06d8\u06da\u06e0\u06eb\u06df\u06da\u06e2\u06d6\u06d7\u06d6\u06d8\u06dc\u06d8\u06e7\u06d8\u06e7\u06da\u06dc\u06e8\u06d8\u06d8\u06d7\u06e1\u06d8\u06e7\u06d7\u06e0\u06df\u06e0\u06dc\u06e7\u06e8\u06e7\u06d8\u06e5\u06d6\u06d8\u06d8"

    :goto_4
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v13

    xor-int/2addr v13, v12

    sparse-switch v13, :sswitch_data_4

    goto :goto_4

    :sswitch_17
    const/4 v0, 0x1

    if-le v6, v0, :cond_1

    const-string v0, "\u06dc\u06d9\u06d7\u06e8\u06e7\u06e1\u06d8\u06e0\u06d8\u06da\u06ec\u06e6\u06dc\u06d9\u06d9\u06e8\u06d8\u06d7\u06e5\u06ec\u06e8\u06da\u06dc\u06e1\u06db\u06d6\u06d6\u06db\u06e5\u06d8\u06dc\u06db\u06e2\u06e5\u06eb\u06d7\u06d9\u06dc\u06e7\u06df\u06e1\u06d8\u06d8\u06e5\u06e5\u06dc\u06da\u06da\u06ec\u06e5\u06e7\u06eb"

    goto :goto_4

    :cond_1
    const-string v0, "\u06ec\u06df\u06e6\u06d9\u06e2\u06d6\u06d8\u06da\u06db\u06d9\u06e0\u06e6\u06d8\u06e8\u06eb\u06e6\u06e2\u06db\u06d9\u06e1\u06d8\u06e7\u06d8\u06d7\u06e8\u06e7\u06e7\u06db\u06d9\u06d8\u06d6\u06dc"

    goto :goto_4

    :sswitch_18
    const-string v0, "\u06e1\u06dc\u06e5\u06e1\u06e8\u06dc\u06d8\u06dc\u06db\u06e1\u06ec\u06da\u06e6\u06d8\u06d8\u06d8\u06d9\u06e8\u06e2\u06e2\u06e8\u06d7\u06eb\u06e6\u06d6\u06e8\u06d8\u06e1\u06d9\u06e1\u06d8\u06e4\u06da\u06db\u06e6\u06e5\u06db\u06df\u06da\u06db\u06ec\u06d6\u06e4\u06db\u06e1\u06d7\u06e7\u06e1\u06dc\u06d8\u06e1\u06e7\u06e4"

    goto :goto_4

    :sswitch_19
    const-string v0, "\u06e4\u06d9\u06e1\u06e5\u06db\u06d8\u06d8\u06d9\u06d6\u06e6\u06dc\u06e6\u06e4\u06e6\u06e1\u06dc\u06d8\u06eb\u06d7\u06e8\u06ec\u06e2\u06df\u06d8\u06e0\u06dc\u06d8\u06e8\u06d8\u06d8\u06d6\u06d8\u06d8\u06e4\u06e5\u06e5\u06d8\u06d7\u06e0\u06e4\u06d7\u06e8\u06e6\u06eb\u06e5\u06e6\u06e6\u06dc\u06df\u06e4\u06ec\u06e1\u06d8"

    goto :goto_3

    :sswitch_1a
    const-string v0, "\u06e2\u06e4\u06e7\u06dc\u06dc\u06e2\u06d6\u06dc\u06e1\u06eb\u06e0\u06e0\u06d6\u06e6\u06eb\u06e2\u06e6\u06d6\u06db\u06e8\u06df\u06d9\u06e2\u06e1\u06e7\u06e2\u06dc\u06e0\u06e1\u06df\u06e2\u06e6\u06df\u06e0\u06d7\u06e6\u06e1\u06dc\u06d8\u06e4\u06dc\u06eb\u06e1\u06e6\u06dc\u06d8\u06ec\u06e5\u06e8\u06d8\u06db\u06e0\u06dc\u06d8\u06dc\u06e5"

    goto/16 :goto_0

    :sswitch_1b
    const v11, -0x32b07ccb

    const-string v0, "\u06dc\u06e0\u06d6\u06e8\u06eb\u06d6\u06d9\u06e5\u06d9\u06dc\u06e0\u06d6\u06df\u06e6\u06e4\u06ec\u06d6\u06dc\u06e2\u06d7\u06d7\u06e1\u06e7\u06e5\u06e5\u06e4\u06eb\u06eb\u06dc\u06e5\u06e0\u06d8\u06d6\u06e0\u06e6\u06d7\u06eb\u06df\u06dc\u06e2\u06e8\u06d8\u06d7\u06e0\u06e8\u06d8\u06df\u06e5\u06d6\u06d8\u06d9\u06e4\u06d9\u06e0\u06df"

    :goto_5
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v12

    xor-int/2addr v12, v11

    sparse-switch v12, :sswitch_data_5

    goto :goto_5

    :sswitch_1c
    const-string v0, "\u06e5\u06e0\u06e0\u06d7\u06e0\u06e2\u06df\u06db\u06e2\u06e6\u06dc\u06e7\u06e7\u06d7\u06db\u06e7\u06e8\u06d8\u06e6\u06eb\u06d6\u06d7\u06e0\u06db\u06eb\u06e6\u06e5\u06d6\u06e1\u06e0\u06d9\u06df\u06ec\u06d7\u06d6\u06db\u06e4\u06e8\u06d8\u06db\u06e4\u06e1\u06eb\u06d6\u06e6\u06e8\u06db\u06df\u06e5\u06eb\u06db\u06e6\u06da\u06e6"

    goto/16 :goto_0

    :sswitch_1d
    const-string v0, "\u06e1\u06e2\u06e5\u06e7\u06e0\u06e8\u06d8\u06e4\u06e7\u06e2\u06db\u06eb\u06d9\u06e1\u06e8\u06e1\u06e6\u06e5\u06e0\u06e0\u06e1\u06d6\u06d8\u06e8\u06e6\u06dc\u06d9\u06d8\u06e8\u06d8\u06da\u06d7\u06e5\u06e8\u06e7\u06ec\u06da\u06e2\u06d6\u06e2\u06da\u06e7\u06e7\u06d9\u06d6\u06e5\u06db\u06e0\u06e0"

    goto :goto_5

    :sswitch_1e
    const v12, 0x1caf6131

    const-string v0, "\u06e8\u06e1\u06db\u06dc\u06e1\u06e1\u06d8\u06d7\u06df\u06e4\u06e1\u06eb\u06db\u06e2\u06e0\u06d8\u06d8\u06e5\u06e5\u06d6\u06d8\u06e1\u06e0\u06e6\u06d8\u06e5\u06d6\u06e7\u06e7\u06e2\u06d6\u06d8\u06e5\u06e5\u06e5\u06d8\u06da\u06d9\u06e4\u06e4\u06e7\u06d7\u06db\u06e7\u06df\u06eb\u06dc\u06d8\u06d8\u06e8\u06e5\u06d8\u06dc\u06e0\u06dc\u06d8"

    :goto_6
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v13

    xor-int/2addr v13, v12

    sparse-switch v13, :sswitch_data_6

    goto :goto_6

    :sswitch_1f
    const-string v0, "\u06d6\u06e5\u06da\u06ec\u06da\u06d9\u06d9\u06e7\u06eb\u06e1\u06e1\u06d8\u06d7\u06d7\u06e5\u06d7\u06df\u06df\u06e4\u06d6\u06db\u06e8\u06e6\u06d8\u06d7\u06d8\u06e1\u06d8\u06e6\u06e4\u06eb\u06dc\u06eb\u06e1\u06eb\u06e2\u06eb\u06da\u06e2\u06ec\u06e7\u06db\u06e0\u06df\u06e6\u06e6\u06d7\u06d8\u06d8"

    goto :goto_6

    :cond_2
    const-string v0, "\u06d6\u06e2\u06d9\u06e8\u06e5\u06db\u06e8\u06e4\u06e8\u06db\u06e2\u06e7\u06e4\u06e8\u06d6\u06e7\u06df\u06e4\u06e8\u06df\u06e7\u06e7\u06e1\u06d8\u06e8\u06e4\u06e6\u06d9\u06d8\u06d7"

    goto :goto_6

    :sswitch_20
    const/high16 v0, 0x40000000    # 2.0f

    if-eq v10, v0, :cond_2

    const-string v0, "\u06dc\u06d8\u06d8\u06d8\u06e6\u06df\u06e1\u06d8\u06e5\u06d9\u06d8\u06d8\u06d8\u06d9\u06e8\u06e6\u06d8\u06d6\u06d8\u06d8\u06e7\u06db\u06e7\u06dc\u06d8\u06d8\u06e5\u06e0\u06eb\u06e5\u06d9\u06db\u06d9\u06eb\u06df\u06db\u06e8\u06d8\u06e6\u06e6\u06d8\u06d8\u06df\u06df\u06e8\u06d8\u06db\u06e0\u06e2\u06e2\u06e0\u06eb\u06e6\u06ec\u06d6"

    goto :goto_6

    :sswitch_21
    const-string v0, "\u06ec\u06e2\u06e7\u06e6\u06da\u06ec\u06db\u06db\u06e2\u06e4\u06e1\u06e6\u06d8\u06ec\u06e5\u06d8\u06e5\u06ec\u06d8\u06d8\u06e7\u06e6\u06e4\u06ec\u06d7\u06e8\u06dc\u06e8\u06d8\u06eb\u06da\u06d6\u06dc\u06e5\u06e5\u06db\u06d6\u06e1\u06d6\u06e7\u06da\u06ec\u06e6"

    goto :goto_5

    :sswitch_22
    const-string v0, "\u06ec\u06e4\u06dc\u06d8\u06dc\u06e0\u06e0\u06e4\u06e5\u06d7\u06e2\u06da\u06e1\u06d6\u06e6\u06e0\u06db\u06e5\u06e1\u06e0\u06d6\u06eb\u06e7\u06df\u06e7\u06d6\u06e1\u06e1\u06d8\u06e8\u06d8\u06da\u06d9\u06d6\u06d8\u06d7\u06e8\u06e2\u06eb\u06d7\u06d7\u06da\u06eb\u06df"

    goto :goto_5

    :sswitch_23
    const-string v0, "\u06d9\u06dc\u06e6\u06d8\u06e5\u06e8\u06d6\u06e0\u06e8\u06e1\u06da\u06e2\u06d7\u06d9\u06e6\u06e7\u06e1\u06d8\u06e1\u06d8\u06dc\u06d9\u06df\u06da\u06d8\u06d7\u06d8\u06e4\u06e5\u06e5\u06d9\u06eb\u06d6\u06d8\u06e4\u06e6\u06df\u06d9\u06da\u06dc\u06e5\u06e8\u06dc\u06d9\u06e5\u06d6\u06d8\u06e7\u06eb\u06d9"

    goto/16 :goto_0

    :sswitch_24
    const v11, 0xfc0ac54    # 1.899904E-29f

    const-string v0, "\u06ec\u06ec\u06d6\u06e7\u06d8\u06dc\u06d8\u06d8\u06d8\u06d6\u06e7\u06e8\u06e4\u06d6\u06d8\u06e8\u06e2\u06ec\u06e4\u06e6\u06d8\u06e1\u06da\u06e5\u06d8\u06ec\u06e8\u06d6\u06e8\u06e6\u06d8\u06eb\u06d9\u06e5\u06d8\u06e8\u06df\u06e8\u06d8\u06e4\u06d6\u06e5\u06d6\u06d7\u06db\u06db\u06e0\u06e4\u06eb\u06e1\u06d8\u06d9\u06df\u06e0\u06d7\u06e2\u06dc\u06d8"

    :goto_7
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v12

    xor-int/2addr v12, v11

    sparse-switch v12, :sswitch_data_7

    goto :goto_7

    :sswitch_25
    const-string v0, "\u06d8\u06e6\u06d8\u06e5\u06e7\u06db\u06db\u06ec\u06df\u06d6\u06e8\u06dc\u06d8\u06d9\u06e6\u06e2\u06e4\u06e8\u06e8\u06d8\u06da\u06e7\u06e5\u06d8\u06da\u06d9\u06e8\u06e2\u06e6\u06e1\u06d7\u06ec\u06d7\u06e4\u06df\u06e8\u06d8\u06da\u06d8\u06dc"

    goto/16 :goto_0

    :sswitch_26
    const-string v0, "\u06d9\u06e4\u06dc\u06d8\u06df\u06d9\u06e6\u06db\u06e8\u06e5\u06d8\u06dc\u06e4\u06e8\u06d8\u06e1\u06dc\u06e2\u06db\u06d9\u06e4\u06df\u06db\u06e2\u06d9\u06df\u06e6\u06d8\u06e7\u06e1\u06e6\u06d8\u06e7\u06eb\u06e5\u06d8\u06e1\u06e6\u06d9\u06df\u06e0\u06e8\u06db\u06e0\u06d6\u06d8\u06e2\u06d7\u06d8\u06dc\u06e8\u06eb\u06e2\u06d9\u06d8\u06d8"

    goto :goto_7

    :sswitch_27
    const v12, 0x26eba891

    const-string v0, "\u06db\u06e1\u06d8\u06d8\u06e4\u06e2\u06e6\u06d8\u06e5\u06e5\u06d6\u06e4\u06ec\u06dc\u06d8\u06eb\u06e5\u06dc\u06e4\u06e0\u06e0\u06db\u06e0\u06e7\u06d9\u06ec\u06da\u06e8\u06eb\u06e5\u06d6\u06e5\u06e0\u06da\u06d8\u06d8\u06eb\u06e8\u06ec\u06d6\u06ec\u06d7\u06df\u06ec\u06e8\u06dc\u06d8\u06d9\u06e5\u06dc\u06d8"

    :goto_8
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v13

    xor-int/2addr v13, v12

    sparse-switch v13, :sswitch_data_8

    goto :goto_8

    :sswitch_28
    const-string v0, "\u06e7\u06e0\u06e1\u06da\u06d8\u06e1\u06e1\u06e7\u06d7\u06e0\u06e0\u06d6\u06e0\u06d7\u06dc\u06ec\u06e2\u06e7\u06da\u06e1\u06e7\u06e6\u06e4\u06e8\u06db\u06ec\u06e6\u06e5\u06e8\u06d8\u06d8\u06e0\u06e7\u06da\u06e0\u06db\u06e1\u06e2\u06df\u06da\u06e0\u06d8\u06d8\u06df\u06e1\u06e8\u06d8\u06e7\u06d7\u06df"

    goto :goto_8

    :cond_3
    const-string v0, "\u06e6\u06ec\u06d9\u06e7\u06e2\u06dc\u06eb\u06e2\u06e5\u06d8\u06da\u06d6\u06da\u06db\u06eb\u06d9\u06e1\u06d9\u06eb\u06e6\u06eb\u06ec\u06d8\u06d7\u06e5\u06e4\u06d7\u06d9\u06dc\u06e7\u06e4\u06ec\u06e7\u06ec\u06e6\u06e8\u06d8\u06eb\u06d8\u06d8\u06d8\u06da\u06e0\u06e4\u06e8\u06d6\u06dc\u06d8\u06e1\u06d6\u06e8\u06d8\u06d8\u06e8\u06d8\u06d8\u06e7\u06e7\u06e5"

    goto :goto_8

    :sswitch_29
    const/high16 v0, -0x80000000

    if-ne v10, v0, :cond_3

    const-string v0, "\u06d7\u06eb\u06e6\u06e8\u06d8\u06e1\u06d8\u06d6\u06d7\u06d9\u06d9\u06e1\u06e7\u06e8\u06e7\u06d9\u06dc\u06d7\u06d8\u06d8\u06db\u06ec\u06e7\u06da\u06d8\u06d8\u06d6\u06da\u06eb\u06e1\u06eb\u06e5\u06d6\u06d7\u06e4\u06dc\u06e2\u06db\u06e4\u06eb\u06e0\u06e5\u06e4\u06da\u06e0\u06e1\u06d8\u06d8\u06eb\u06e5\u06e6\u06d8\u06d7\u06e1\u06dc\u06d6\u06db\u06d8"

    goto :goto_8

    :sswitch_2a
    const-string v0, "\u06df\u06d9\u06d7\u06db\u06e5\u06e5\u06ec\u06dc\u06dc\u06d8\u06e7\u06d9\u06da\u06ec\u06d8\u06ec\u06dc\u06d8\u06e2\u06e4\u06d9\u06e6\u06e6\u06db\u06d6\u06d9\u06d6\u06e7\u06d8\u06e0\u06e4\u06d6"

    goto :goto_7

    :sswitch_2b
    const-string v0, "\u06ec\u06da\u06e4\u06d8\u06e6\u06e7\u06e8\u06df\u06e5\u06e1\u06d9\u06dc\u06e7\u06d7\u06e6\u06d8\u06da\u06da\u06db\u06e5\u06dc\u06e6\u06d8\u06e1\u06e7\u06ec\u06e7\u06db\u06dc\u06e0\u06d8\u06e7\u06e5\u06e0\u06df\u06da\u06e2\u06e4\u06d7\u06e5\u06d8\u06eb\u06d8\u06e8\u06d8\u06dc\u06e7\u06e6\u06da\u06ec\u06e6\u06d8\u06e4\u06d7\u06df\u06e7\u06e7\u06e8"

    goto :goto_7

    :sswitch_2c
    const-string v0, "\u06e5\u06e0\u06e0\u06d7\u06e0\u06e2\u06df\u06db\u06e2\u06e6\u06dc\u06e7\u06e7\u06d7\u06db\u06e7\u06e8\u06d8\u06e6\u06eb\u06d6\u06d7\u06e0\u06db\u06eb\u06e6\u06e5\u06d6\u06e1\u06e0\u06d9\u06df\u06ec\u06d7\u06d6\u06db\u06e4\u06e8\u06d8\u06db\u06e4\u06e1\u06eb\u06d6\u06e6\u06e8\u06db\u06df\u06e5\u06eb\u06db\u06e6\u06da\u06e6"

    goto/16 :goto_0

    :sswitch_2d
    const v11, -0x148487f2

    const-string v0, "\u06e5\u06dc\u06d9\u06d9\u06d8\u06db\u06eb\u06e7\u06e1\u06da\u06e6\u06e2\u06e4\u06db\u06d8\u06d8\u06dc\u06d8\u06df\u06e2\u06e8\u06d8\u06ec\u06d8\u06e8\u06d9\u06e5\u06da\u06e4\u06d7\u06d6\u06d8\u06d6\u06e2\u06e1\u06dc\u06df\u06ec"

    :goto_9
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v12

    xor-int/2addr v12, v11

    sparse-switch v12, :sswitch_data_9

    goto :goto_9

    :sswitch_2e
    const-string v0, "\u06e2\u06e2\u06e7\u06e7\u06d6\u06d6\u06e7\u06ec\u06da\u06e1\u06e4\u06dc\u06d8\u06e4\u06d7\u06df\u06e8\u06eb\u06dc\u06d8\u06e6\u06d6\u06e7\u06d8\u06e7\u06e0\u06d8\u06d8\u06d8\u06ec\u06d8\u06dc\u06e4\u06e5\u06e0\u06e6\u06d8\u06df\u06d9\u06e6\u06e1\u06e6\u06d9\u06e8\u06e1\u06eb"

    goto/16 :goto_0

    :sswitch_2f
    const-string v0, "\u06dc\u06d8\u06d8\u06d8\u06e2\u06e1\u06e6\u06e7\u06e2\u06ec\u06dc\u06e0\u06e4\u06d6\u06e2\u06da\u06e7\u06da\u06e7\u06d7\u06d6\u06da\u06db\u06e1\u06d6\u06e8\u06da\u06ec\u06eb\u06e1\u06eb\u06eb\u06df\u06e6\u06d8\u06d9\u06d8\u06e7\u06d8"

    goto :goto_9

    :sswitch_30
    const v12, -0x5a54e2ab

    const-string v0, "\u06d9\u06e5\u06e4\u06d6\u06dc\u06dc\u06da\u06e0\u06e1\u06d6\u06df\u06e1\u06e7\u06d9\u06e5\u06d8\u06e6\u06db\u06e7\u06dc\u06e7\u06d8\u06d8\u06da\u06ec\u06df\u06d7\u06d8\u06d9\u06e6\u06e2"

    :goto_a
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v13

    xor-int/2addr v13, v12

    sparse-switch v13, :sswitch_data_a

    goto :goto_a

    :sswitch_31
    const/4 v0, 0x2

    if-le v6, v0, :cond_4

    const-string v0, "\u06d8\u06e2\u06dc\u06d7\u06e6\u06dc\u06e6\u06d9\u06da\u06e0\u06ec\u06e8\u06d8\u06eb\u06dc\u06e8\u06dc\u06e8\u06db\u06e6\u06dc\u06e8\u06dc\u06dc\u06e5\u06d8\u06df\u06e1\u06df\u06df\u06e7\u06ec\u06d8\u06e6\u06d6\u06d8\u06d8\u06ec\u06d9\u06e5\u06d7\u06dc\u06d8\u06e8\u06da\u06e8\u06d9\u06e5\u06e5\u06d8\u06db\u06d6"

    goto :goto_a

    :cond_4
    const-string v0, "\u06e7\u06e6\u06da\u06eb\u06dc\u06d8\u06d8\u06e8\u06e1\u06eb\u06e5\u06e2\u06e1\u06d9\u06d7\u06e8\u06d8\u06e0\u06d9\u06da\u06e8\u06e4\u06e1\u06d8\u06df\u06d8\u06e6\u06e0\u06eb\u06df\u06eb\u06d6\u06db"

    goto :goto_a

    :sswitch_32
    const-string v0, "\u06d6\u06e8\u06ec\u06df\u06da\u06eb\u06e5\u06d7\u06d6\u06d8\u06df\u06e2\u06e1\u06d8\u06e0\u06df\u06e8\u06e6\u06e2\u06e1\u06d6\u06e7\u06d6\u06eb\u06e8\u06eb\u06db\u06e4\u06e5\u06d8\u06d6\u06e1"

    goto :goto_a

    :sswitch_33
    const-string v0, "\u06e6\u06e2\u06e1\u06ec\u06ec\u06d9\u06d6\u06e1\u06da\u06d7\u06d7\u06e5\u06d8\u06e4\u06da\u06e7\u06e7\u06e8\u06d8\u06da\u06db\u06eb\u06db\u06e1\u06d8\u06e7\u06e0\u06d7\u06da\u06d8\u06d8\u06d8\u06dc\u06ec\u06dc\u06e0\u06e1\u06e7\u06d8"

    goto :goto_9

    :sswitch_34
    const-string v0, "\u06e5\u06d9\u06d6\u06d8\u06e2\u06ec\u06e8\u06e5\u06dc\u06d8\u06ec\u06df\u06e4\u06da\u06d6\u06e7\u06e1\u06da\u06e5\u06e6\u06dc\u06d8\u06d7\u06e6\u06df\u06d8\u06e2\u06da\u06e2"

    goto :goto_9

    :sswitch_35
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    int-to-float v0, v0

    const v5, 0x3ecccccd    # 0.4f

    mul-float/2addr v0, v5

    float-to-int v5, v0

    const-string v0, "\u06e7\u06eb\u06eb\u06ec\u06db\u06da\u06d7\u06e2\u06e1\u06e0\u06eb\u06e5\u06d8\u06e1\u06e7\u06d9\u06d6\u06d6\u06da\u06df\u06e8\u06e6\u06d8\u06da\u06e2\u06e4\u06e5\u06d6\u06e1\u06e8\u06d8\u06d9"

    goto/16 :goto_0

    :sswitch_36
    const-string v0, "\u06d7\u06e7\u06e1\u06e4\u06e7\u06e5\u06d8\u06e7\u06e7\u06e8\u06d8\u06dc\u06e4\u06e7\u06e7\u06d9\u06e7\u06e8\u06e0\u06da\u06e6\u06eb\u06db\u06ec\u06eb\u06dc\u06e6\u06d9\u06e6\u06d9\u06da\u06df\u06d9\u06df\u06e8\u06d8\u06dc\u06eb\u06e6\u06e4\u06d7\u06d6\u06d8\u06ec\u06d6\u06d9\u06eb\u06e0\u06df\u06da\u06e7\u06d8\u06d8"

    move v4, v5

    goto/16 :goto_0

    :sswitch_37
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;->OooooOO:I

    const-string v0, "\u06e4\u06d9\u06e1\u06d8\u06e2\u06d6\u06dc\u06d9\u06e6\u06db\u06e4\u06e1\u06ec\u06e5\u06d6\u06e4\u06e2\u06e4\u06e6\u06e6\u06e5\u06e5\u06e5\u06d8\u06e1\u06e4\u06da\u06e1\u06db\u06d6\u06df\u06e1\u06d8\u06e5\u06df\u06e7\u06d8\u06e6\u06e6\u06d8\u06e6\u06eb\u06eb"

    goto/16 :goto_0

    :sswitch_38
    const/4 v3, -0x1

    const-string v0, "\u06e6\u06e8\u06e7\u06e7\u06e4\u06d7\u06ec\u06d8\u06d6\u06df\u06d7\u06ec\u06e4\u06d7\u06e4\u06d8\u06e2\u06e6\u06d8\u06e8\u06e6\u06df\u06e2\u06df\u06e5\u06d8\u06d9\u06e2\u06db\u06e7\u06e4\u06d9\u06dc\u06e7\u06d6\u06da\u06e5\u06e1\u06d8"

    goto/16 :goto_0

    :sswitch_39
    const-string v0, "\u06da\u06d7\u06d6\u06df\u06e2\u06e8\u06e4\u06e1\u06df\u06ec\u06dc\u06e5\u06d8\u06d9\u06eb\u06d9\u06d7\u06dc\u06d8\u06e1\u06e8\u06e1\u06d6\u06e8\u06d6\u06d9\u06e0\u06dc\u06d8\u06db\u06da\u06e5\u06e7\u06e8\u06df\u06db\u06d6\u06e6\u06dc\u06d9\u06e8\u06df\u06e8"

    move v4, v3

    goto/16 :goto_0

    :sswitch_3a
    iput v4, p0, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;->OooooOO:I

    const-string v0, "\u06dc\u06e6\u06e5\u06eb\u06da\u06e6\u06d8\u06eb\u06d6\u06df\u06e4\u06e7\u06e8\u06d8\u06da\u06e7\u06e0\u06d7\u06db\u06e7\u06ec\u06e0\u06d6\u06d7\u06e1\u06e8\u06d6\u06da\u06dc\u06e2\u06d6\u06db\u06df\u06e4\u06d8\u06d6\u06eb\u06e4\u06d8\u06e1\u06d8\u06ec\u06e5\u06d7\u06d8\u06e2\u06e6\u06d8\u06e7\u06e4\u06d9\u06e7\u06d7\u06da\u06e8\u06e6\u06e5"

    goto/16 :goto_0

    :sswitch_3b
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getMeasuredWidth()I

    move-result v2

    const-string v0, "\u06eb\u06d8\u06dc\u06d8\u06e7\u06d9\u06e1\u06e7\u06e5\u06e8\u06db\u06e6\u06db\u06e8\u06ec\u06e8\u06d9\u06e2\u06df\u06db\u06eb\u06df\u06d9\u06e2\u06e6\u06d8\u06d8\u06df\u06df\u06e4\u06dc\u06e0\u06d9\u06e2\u06d6\u06d8\u06e2\u06d7\u06d8\u06da\u06da\u06e2\u06d9\u06e0\u06e4\u06df\u06ec\u06e0\u06d8\u06eb\u06d8\u06eb\u06e0\u06d6\u06d8"

    goto/16 :goto_0

    :sswitch_3c
    invoke-super/range {p0 .. p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    const-string v0, "\u06d6\u06e7\u06dc\u06d8\u06e0\u06d7\u06d7\u06d6\u06da\u06e0\u06e2\u06e7\u06e5\u06da\u06da\u06e0\u06d8\u06e5\u06ec\u06df\u06e7\u06e2\u06e8\u06e7\u06e1\u06d8\u06df\u06e1\u06dc\u06d8\u06ec\u06e5\u06da"

    goto/16 :goto_0

    :sswitch_3d
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getMeasuredWidth()I

    move-result v1

    const-string v0, "\u06db\u06e2\u06d7\u06d8\u06d8\u06d6\u06da\u06e1\u06e1\u06d8\u06d8\u06d6\u06db\u06da\u06d6\u06e7\u06db\u06d8\u06d7\u06e5\u06d8\u06e1\u06d8\u06d6\u06e7\u06dc\u06d9\u06e5\u06dc\u06e2\u06e7\u06e8\u06e4\u06d7\u06ec\u06e0\u06e7\u06d7"

    goto/16 :goto_0

    :sswitch_3e
    const v11, -0x4da63592

    const-string v0, "\u06df\u06e5\u06da\u06eb\u06e0\u06d8\u06dc\u06dc\u06e0\u06d9\u06ec\u06d6\u06d8\u06d9\u06d7\u06dc\u06d9\u06e0\u06eb\u06e7\u06df\u06d8\u06d8\u06db\u06e5\u06da\u06da\u06e1\u06e8\u06df\u06e1\u06e5\u06d8\u06e7\u06d7\u06e8\u06ec\u06e5\u06dc\u06e1\u06e0\u06d7\u06d6\u06d8\u06d7\u06d7\u06e1\u06ec\u06e6\u06e1\u06d7"

    :goto_b
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v12

    xor-int/2addr v12, v11

    sparse-switch v12, :sswitch_data_b

    goto :goto_b

    :sswitch_3f
    const v12, 0x3fcd2d4b

    const-string v0, "\u06eb\u06e6\u06d9\u06dc\u06eb\u06e2\u06e0\u06eb\u06d7\u06e6\u06d6\u06e5\u06e7\u06e0\u06da\u06d9\u06e2\u06d6\u06d8\u06d8\u06e8\u06ec\u06d6\u06da\u06d8\u06d8\u06d6\u06eb\u06e0\u06d6\u06e6\u06e7"

    :goto_c
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v13

    xor-int/2addr v13, v12

    sparse-switch v13, :sswitch_data_c

    goto :goto_c

    :sswitch_40
    const-string v0, "\u06d8\u06d6\u06d9\u06d9\u06e7\u06e0\u06e7\u06eb\u06e8\u06e1\u06e7\u06da\u06ec\u06d7\u06d8\u06db\u06e1\u06da\u06e1\u06e5\u06e5\u06d8\u06d6\u06d9\u06e0\u06e5\u06e5\u06d8\u06d8\u06da\u06e8\u06e5\u06d8\u06e1\u06d9\u06e1\u06e1\u06d9\u06db\u06df\u06e2\u06ec\u06eb\u06e6\u06e1\u06eb\u06e5\u06e5\u06dc\u06e1"

    goto :goto_b

    :sswitch_41
    const-string v0, "\u06d8\u06d9\u06d6\u06e4\u06e6\u06e6\u06d8\u06d6\u06e7\u06d8\u06eb\u06e6\u06d8\u06d8\u06e6\u06dc\u06d6\u06e0\u06df\u06e1\u06d8\u06df\u06d9\u06d6\u06df\u06e6\u06db\u06e4\u06d9\u06d8\u06d8\u06eb\u06da\u06dc\u06d8\u06e1\u06e5\u06dc\u06d8\u06d9\u06e4\u06db\u06eb\u06e1\u06e5\u06d8\u06e6\u06e1\u06dc\u06d8\u06ec\u06eb\u06d6\u06d8\u06eb\u06e4\u06e0"

    goto :goto_b

    :cond_5
    const-string v0, "\u06e8\u06e1\u06d9\u06d8\u06e5\u06e2\u06df\u06e5\u06d8\u06d6\u06e8\u06e5\u06d7\u06db\u06e4\u06e0\u06df\u06d7\u06df\u06dc\u06e7\u06eb\u06e6\u06e6\u06db\u06e5\u06d8\u06d7\u06dc\u06da\u06da\u06e7\u06e1\u06e2\u06e0\u06d8\u06eb\u06e0\u06e4\u06e2\u06e7\u06e7"

    goto :goto_c

    :sswitch_42
    if-eqz v8, :cond_5

    const-string v0, "\u06df\u06d7\u06db\u06e5\u06e7\u06d8\u06d8\u06e4\u06d6\u06dc\u06e8\u06e1\u06e6\u06d8\u06e1\u06df\u06e6\u06e0\u06dc\u06d8\u06e4\u06e6\u06d8\u06d9\u06d6\u06dc\u06df\u06e4\u06e0\u06d9\u06db\u06d6\u06d8\u06e0\u06e2\u06e1\u06e7\u06e2\u06da\u06df\u06e7\u06e5\u06d8\u06e2\u06ec\u06e0\u06d6\u06dc\u06d8\u06d8\u06e6\u06d8\u06dc\u06e5\u06e6\u06e8\u06d8\u06d7\u06e0\u06e5"

    goto :goto_c

    :sswitch_43
    const-string v0, "\u06d7\u06e0\u06db\u06d9\u06df\u06e8\u06d7\u06d7\u06e8\u06d8\u06d8\u06d6\u06e4\u06e4\u06e5\u06e7\u06e1\u06df\u06e4\u06ec\u06e5\u06d8\u06db\u06e1\u06db\u06d8\u06e8\u06eb\u06d9\u06dc\u06e5\u06ec\u06db\u06d8\u06d6\u06e4\u06e4\u06da\u06d9\u06db\u06d9\u06e2\u06dc\u06e0\u06d7\u06ec\u06d6\u06d8"

    goto :goto_c

    :sswitch_44
    const-string v0, "\u06d8\u06df\u06e2\u06e5\u06da\u06ec\u06e6\u06e1\u06e1\u06d8\u06dc\u06e7\u06da\u06e0\u06e1\u06dc\u06d8\u06dc\u06dc\u06e0\u06e2\u06e2\u06e1\u06df\u06d7\u06e1\u06e0\u06eb\u06d6\u06d8\u06e1\u06e4\u06d6\u06dc\u06e6\u06e0\u06db\u06d8\u06d9\u06e2\u06dc\u06e6\u06e8\u06df\u06d9\u06d8\u06dc\u06d8\u06eb\u06e0"

    goto :goto_b

    :sswitch_45
    const-string v0, "\u06e2\u06e0\u06db\u06e6\u06df\u06d7\u06d6\u06d9\u06e2\u06e0\u06db\u06eb\u06eb\u06e0\u06e6\u06e2\u06e0\u06d6\u06d8\u06dc\u06dc\u06db\u06d7\u06e5\u06e6\u06d6\u06d8\u06d7\u06e6\u06e2\u06ec\u06e5\u06d6\u06e4\u06e2\u06e8\u06d9\u06e0\u06d6\u06d8\u06e5\u06e7\u06d8\u06d8\u06e2\u06d8\u06d8\u06e2\u06e4\u06d9"

    goto/16 :goto_0

    :sswitch_46
    const v11, 0x4da1090b    # 3.37715552E8f

    const-string v0, "\u06d8\u06df\u06d7\u06ec\u06e1\u06e5\u06d8\u06dc\u06df\u06d6\u06d8\u06dc\u06d8\u06dc\u06ec\u06e4\u06d8\u06da\u06eb\u06d6\u06d8\u06d9\u06d7\u06e7\u06e2\u06d9\u06e4\u06ec\u06db\u06d6\u06d8"

    :goto_d
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v12

    xor-int/2addr v12, v11

    sparse-switch v12, :sswitch_data_d

    goto :goto_d

    :sswitch_47
    const-string v0, "\u06df\u06dc\u06e7\u06e2\u06eb\u06ec\u06da\u06e1\u06e2\u06dc\u06dc\u06e4\u06e8\u06d8\u06d7\u06dc\u06d9\u06df\u06e6\u06d6\u06d8\u06d8\u06e4\u06e6\u06e8\u06d8\u06e2\u06e7\u06ec\u06d9\u06eb\u06dc\u06e2\u06d8\u06dc\u06d8\u06df\u06db\u06e2\u06e4\u06e0\u06d6\u06dc\u06e2\u06d7\u06df\u06e4\u06dc\u06d8\u06ec\u06e0\u06e8\u06d8\u06dc\u06e2\u06d9\u06e4\u06e8"

    goto :goto_d

    :sswitch_48
    const-string v0, "\u06d8\u06dc\u06e7\u06da\u06e8\u06e1\u06d8\u06d6\u06e7\u06e4\u06e1\u06d6\u06e7\u06d8\u06e7\u06e7\u06df\u06e2\u06d6\u06e6\u06dc\u06e0\u06db\u06da\u06e8\u06e7\u06d8\u06eb\u06e0\u06da\u06eb\u06d6\u06e7\u06d8"

    goto :goto_d

    :sswitch_49
    const v12, -0x442fa76d

    const-string v0, "\u06d6\u06e7\u06d9\u06e4\u06e0\u06e1\u06d8\u06e5\u06e6\u06eb\u06e5\u06d6\u06d6\u06d8\u06d6\u06e6\u06d8\u06d9\u06da\u06ec\u06e4\u06e1\u06e6\u06db\u06e5\u06d8\u06e0\u06e6\u06e1\u06d8\u06d6\u06df\u06e4\u06d6\u06df\u06e1\u06e5\u06dc\u06e0\u06d7\u06e5\u06e6\u06d8\u06dc\u06ec\u06d6\u06da\u06df\u06e1\u06d8\u06e1\u06da\u06e8\u06d8"

    :goto_e
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v13

    xor-int/2addr v13, v12

    sparse-switch v13, :sswitch_data_e

    goto :goto_e

    :sswitch_4a
    const-string v0, "\u06da\u06e7\u06e2\u06e1\u06eb\u06e4\u06ec\u06d9\u06d6\u06df\u06e8\u06d8\u06d8\u06d7\u06e7\u06d9\u06e4\u06db\u06d6\u06e2\u06d7\u06dc\u06da\u06e6\u06e1\u06d8\u06dc\u06da\u06e0\u06dc\u06e4\u06df\u06e1\u06e8\u06db\u06e4\u06e2\u06eb\u06da\u06d8\u06d8\u06df\u06e4\u06e4\u06e1\u06d7\u06d9\u06da\u06e7\u06d7\u06e8\u06d9\u06e4\u06e6\u06d6\u06e6"

    goto :goto_e

    :cond_6
    const-string v0, "\u06e1\u06e5\u06d6\u06d8\u06d6\u06d8\u06e1\u06eb\u06d6\u06df\u06df\u06e6\u06eb\u06e6\u06e1\u06ec\u06e2\u06e5\u06e5\u06da\u06e8\u06da\u06dc\u06e6\u06d8\u06ec\u06e5\u06e1\u06e2\u06e7\u06e6\u06d8"

    goto :goto_e

    :sswitch_4b
    if-eq v2, v1, :cond_6

    const-string v0, "\u06d8\u06da\u06e8\u06d8\u06db\u06e6\u06e1\u06d8\u06e7\u06d9\u06dc\u06ec\u06df\u06db\u06e5\u06e7\u06e0\u06e4\u06db\u06d9\u06e7\u06e7\u06e2\u06e2\u06dc\u06d8\u06e6\u06da\u06ec\u06d7\u06df\u06e4\u06e8\u06dc\u06e0\u06e5\u06e7\u06d6\u06d6\u06d8\u06d8\u06df\u06e0\u06e5\u06d8\u06eb\u06e8\u06da\u06d7\u06d6\u06dc"

    goto :goto_e

    :sswitch_4c
    const-string v0, "\u06d9\u06e0\u06e5\u06d8\u06ec\u06da\u06d7\u06d9\u06e6\u06d8\u06d8\u06da\u06e5\u06e1\u06d8\u06d9\u06d6\u06dc\u06d8\u06d6\u06e7\u06da\u06da\u06e4\u06e6\u06d8\u06eb\u06d6\u06e5\u06d8\u06df\u06da\u06e4\u06e0\u06e5\u06e1\u06e2\u06d6\u06d7\u06eb\u06dc\u06ec\u06e4\u06d7\u06df\u06df\u06e8\u06d8\u06e0\u06d7\u06d8\u06d8\u06d6\u06e1\u06e2"

    goto :goto_d

    :sswitch_4d
    const-string v0, "\u06d7\u06dc\u06e1\u06d8\u06e4\u06e1\u06e6\u06d8\u06df\u06e1\u06d6\u06d8\u06d7\u06db\u06ec\u06db\u06d9\u06df\u06d6\u06d6\u06e5\u06d8\u06e4\u06df\u06e8\u06d8\u06d6\u06da\u06e2\u06d7\u06df\u06d8\u06d8\u06dc\u06db\u06e1\u06db\u06df\u06e6\u06db\u06e8\u06df"

    goto/16 :goto_0

    :sswitch_4e
    iget v0, p0, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;->OooooOo:I

    invoke-virtual {p0, v0}, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;->setCurrentItem(I)V

    const-string v0, "\u06e2\u06d8\u06e1\u06d8\u06e0\u06e1\u06e6\u06d7\u06eb\u06da\u06d6\u06e2\u06dc\u06d8\u06e7\u06da\u06e1\u06d8\u06eb\u06e2\u06e6\u06d9\u06d8\u06e4\u06d7\u06e6\u06d6\u06e2\u06d6\u06e8\u06eb\u06da\u06dc\u06d8\u06e6\u06d7\u06ec\u06eb\u06e1\u06d7\u06db\u06dc\u06e4\u06db\u06dc\u06d9\u06e8\u06d9\u06e1\u06dc\u06eb\u06ec"

    goto/16 :goto_0

    :sswitch_4f
    const-string v0, "\u06d7\u06db\u06d8\u06d8\u06e2\u06d8\u06dc\u06d9\u06dc\u06e1\u06ec\u06d8\u06e8\u06d8\u06e2\u06df\u06db\u06eb\u06db\u06da\u06dc\u06da\u06d7\u06dc\u06d8\u06e7\u06e7\u06e5\u06d8\u06d8\u06dc\u06eb\u06df\u06dc\u06db\u06e6\u06da\u06d6\u06e7\u06e4\u06d7\u06dc\u06d6\u06d8"

    goto/16 :goto_0

    :sswitch_50
    const-string v0, "\u06df\u06e0\u06d8\u06da\u06df\u06e7\u06d8\u06da\u06d9\u06e2\u06e2\u06d6\u06d8\u06db\u06e5\u06e1\u06e4\u06eb\u06e0\u06dc\u06e4\u06e5\u06d8\u06e5\u06dc\u06da\u06d8\u06d6\u06e8\u06df\u06e7\u06db\u06d9\u06e6\u06e1\u06d8\u06dc\u06d8\u06e6\u06d8\u06e4\u06e4\u06e0\u06d9\u06e4\u06e7\u06ec\u06d6\u06e2\u06e1\u06e6\u06d8\u06d8\u06e8\u06d6\u06e6\u06d8\u06da\u06e2\u06e2"

    goto/16 :goto_0

    :sswitch_51
    const-string v0, "\u06da\u06d7\u06d6\u06df\u06e2\u06e8\u06e4\u06e1\u06df\u06ec\u06dc\u06e5\u06d8\u06d9\u06eb\u06d9\u06d7\u06dc\u06d8\u06e1\u06e8\u06e1\u06d6\u06e8\u06d6\u06d9\u06e0\u06dc\u06d8\u06db\u06da\u06e5\u06e7\u06e8\u06df\u06db\u06d6\u06e6\u06dc\u06d9\u06e8\u06df\u06e8"

    goto/16 :goto_0

    :sswitch_52
    const-string v0, "\u06dc\u06e6\u06e5\u06eb\u06da\u06e6\u06d8\u06eb\u06d6\u06df\u06e4\u06e7\u06e8\u06d8\u06da\u06e7\u06e0\u06d7\u06db\u06e7\u06ec\u06e0\u06d6\u06d7\u06e1\u06e8\u06d6\u06da\u06dc\u06e2\u06d6\u06db\u06df\u06e4\u06d8\u06d6\u06eb\u06e4\u06d8\u06e1\u06d8\u06ec\u06e5\u06d7\u06d8\u06e2\u06e6\u06d8\u06e7\u06e4\u06d9\u06e7\u06d7\u06da\u06e8\u06e6\u06e5"

    goto/16 :goto_0

    :sswitch_53
    const-string v0, "\u06e2\u06d8\u06e1\u06d8\u06e0\u06e1\u06e6\u06d7\u06eb\u06da\u06d6\u06e2\u06dc\u06d8\u06e7\u06da\u06e1\u06d8\u06eb\u06e2\u06e6\u06d9\u06d8\u06e4\u06d7\u06e6\u06d6\u06e2\u06d6\u06e8\u06eb\u06da\u06dc\u06d8\u06e6\u06d7\u06ec\u06eb\u06e1\u06d7\u06db\u06dc\u06e4\u06db\u06dc\u06d9\u06e8\u06d9\u06e1\u06dc\u06eb\u06ec"

    goto/16 :goto_0

    :sswitch_54
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7e4fd009 -> :sswitch_3a
        -0x79267b24 -> :sswitch_e
        -0x78282b9a -> :sswitch_46
        -0x70a4365c -> :sswitch_10
        -0x6807542a -> :sswitch_4e
        -0x67a5319a -> :sswitch_35
        -0x6644e0bb -> :sswitch_38
        -0x63ea4459 -> :sswitch_36
        -0x5c20769f -> :sswitch_1b
        -0x549c86ad -> :sswitch_51
        -0x53dc5351 -> :sswitch_11
        -0x4b2a452f -> :sswitch_3
        -0x43305645 -> :sswitch_d
        -0x4040cff7 -> :sswitch_1
        -0x3ec80b9c -> :sswitch_3c
        -0x25b6f778 -> :sswitch_3b
        -0x62ef44c -> :sswitch_2
        0x31a2672 -> :sswitch_54
        0x1b43a6a4 -> :sswitch_39
        0x1f1f55ed -> :sswitch_3d
        0x2255e8c1 -> :sswitch_13
        0x2b0c8f19 -> :sswitch_f
        0x2d02a9db -> :sswitch_52
        0x316ab108 -> :sswitch_37
        0x4146d234 -> :sswitch_12
        0x51ef0f57 -> :sswitch_4f
        0x55d9299b -> :sswitch_2d
        0x590406fd -> :sswitch_4
        0x738b14f3 -> :sswitch_24
        0x77f3eb3a -> :sswitch_0
        0x7d491a87 -> :sswitch_3e
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x55eeb4ff -> :sswitch_7
        -0x459a1f6d -> :sswitch_5
        0x2bd8f4ee -> :sswitch_b
        0x4f435437 -> :sswitch_c
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        -0x39574c48 -> :sswitch_9
        -0x13675f55 -> :sswitch_8
        0x1c9900fc -> :sswitch_a
        0x40ed37c0 -> :sswitch_6
    .end sparse-switch

    :sswitch_data_3
    .sparse-switch
        -0x5c308cb5 -> :sswitch_25
        -0x36f17907 -> :sswitch_14
        0x19f67db2 -> :sswitch_1a
        0x4511a24e -> :sswitch_16
    .end sparse-switch

    :sswitch_data_4
    .sparse-switch
        -0x7263d685 -> :sswitch_15
        -0x4f0febfa -> :sswitch_19
        0x1b34aa46 -> :sswitch_17
        0x70439b40 -> :sswitch_18
    .end sparse-switch

    :sswitch_data_5
    .sparse-switch
        -0x723202f0 -> :sswitch_23
        -0x6cacea43 -> :sswitch_1c
        -0x588bcae6 -> :sswitch_1e
        0x750e965f -> :sswitch_22
    .end sparse-switch

    :sswitch_data_6
    .sparse-switch
        -0x5f19ff87 -> :sswitch_20
        -0x386a9498 -> :sswitch_21
        -0x662fe5c -> :sswitch_1f
        0x68653d2a -> :sswitch_1d
    .end sparse-switch

    :sswitch_data_7
    .sparse-switch
        -0x3d7d7a47 -> :sswitch_27
        -0x368457fc -> :sswitch_2c
        0x3814cac6 -> :sswitch_25
        0x502e8064 -> :sswitch_2b
    .end sparse-switch

    :sswitch_data_8
    .sparse-switch
        -0x6bac9202 -> :sswitch_28
        -0x69468e33 -> :sswitch_26
        0x19ec5e54 -> :sswitch_2a
        0x6480bb1c -> :sswitch_29
    .end sparse-switch

    :sswitch_data_9
    .sparse-switch
        -0x7671711e -> :sswitch_30
        -0x6a4b1278 -> :sswitch_50
        0x183e82f7 -> :sswitch_2e
        0x4c2eb5b0 -> :sswitch_34
    .end sparse-switch

    :sswitch_data_a
    .sparse-switch
        -0x3042c08c -> :sswitch_2f
        0x2a22862c -> :sswitch_32
        0x6717fb85 -> :sswitch_33
        0x682ec611 -> :sswitch_31
    .end sparse-switch

    :sswitch_data_b
    .sparse-switch
        -0x61b631bb -> :sswitch_53
        -0x336e9fbe -> :sswitch_3f
        0x43db887f -> :sswitch_45
        0x56f9828e -> :sswitch_44
    .end sparse-switch

    :sswitch_data_c
    .sparse-switch
        0x62227db -> :sswitch_40
        0xb874444 -> :sswitch_41
        0x4a77617b -> :sswitch_43
        0x63252df5 -> :sswitch_42
    .end sparse-switch

    :sswitch_data_d
    .sparse-switch
        -0x1e03d312 -> :sswitch_49
        -0xaee7ebe -> :sswitch_4d
        0x28fc722d -> :sswitch_47
        0x659013e4 -> :sswitch_53
    .end sparse-switch

    :sswitch_data_e
    .sparse-switch
        -0x44b309a9 -> :sswitch_4c
        -0x1c38ba2b -> :sswitch_4b
        0x57a5fd90 -> :sswitch_48
        0x7c889a1f -> :sswitch_4a
    .end sparse-switch
.end method

.method public onPageScrollStateChanged(I)V
    .locals 5

    const/4 v1, 0x0

    const-string v0, "\u06e5\u06e8\u06dc\u06d8\u06e7\u06ec\u06da\u06e6\u06e0\u06dc\u06d8\u06e6\u06eb\u06df\u06dc\u06d6\u06e5\u06d8\u06d7\u06e6\u06d9\u06e7\u06e2\u06d8\u06e6\u06db\u06d6\u06d6\u06d6\u06e6\u06e1\u06d9\u06d6"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v3, 0xd2

    xor-int/2addr v2, v3

    xor-int/lit16 v2, v2, 0x1a4

    const/16 v3, 0x1f0

    const v4, -0x5b5ba566

    xor-int/2addr v2, v3

    xor-int/2addr v2, v4

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e2\u06e4\u06d6\u06d8\u06e1\u06da\u06e2\u06e6\u06da\u06da\u06dc\u06e2\u06d6\u06df\u06d6\u06e1\u06d7\u06e6\u06dc\u06d8\u06e2\u06e4\u06db\u06ec\u06e4\u06dc\u06e4\u06e0\u06e8\u06d8\u06db\u06d9\u06da\u06e1\u06e6\u06e6\u06d8\u06ec\u06d7\u06d8\u06e7\u06da\u06dc\u06d8\u06e4\u06e0\u06eb\u06d8\u06dc\u06d8\u06d8\u06d8\u06e7\u06d6\u06d8"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06ec\u06d6\u06e6\u06da\u06e1\u06d6\u06d8\u06df\u06e5\u06e1\u06d8\u06ec\u06d6\u06db\u06db\u06d6\u06e7\u06eb\u06df\u06e4\u06e5\u06e8\u06e7\u06e7\u06da\u06e2\u06e6\u06dc\u06d8\u06d7\u06e7\u06e6\u06df\u06e7\u06e6\u06d9\u06d7\u06e1\u06e1\u06d7\u06e5\u06e7\u06e8\u06d8\u06e0\u06df\u06dc\u06da\u06e1\u06eb"

    goto :goto_0

    :sswitch_2
    iget-object v1, p0, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;->OooooO0:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    const-string v0, "\u06e7\u06e2\u06d7\u06e4\u06e1\u06e7\u06d8\u06db\u06e5\u06e5\u06e8\u06dc\u06e6\u06d8\u06e8\u06e1\u06e4\u06e5\u06e8\u06d6\u06d8\u06db\u06da\u06e7\u06e1\u06da\u06e5\u06d8\u06e6\u06df\u06db\u06d9\u06e8\u06e1\u06e8\u06e2\u06db\u06d8\u06ec\u06d7\u06d8\u06e2\u06e6\u06da\u06e4\u06e5\u06d8\u06da\u06db\u06d9\u06d8\u06e4\u06e1"

    goto :goto_0

    :sswitch_3
    const v2, -0x1468a8e0

    const-string v0, "\u06e5\u06e2\u06e8\u06df\u06e0\u06dc\u06e6\u06da\u06e2\u06eb\u06df\u06e7\u06db\u06dc\u06e1\u06eb\u06e5\u06e7\u06e7\u06e1\u06e8\u06db\u06db\u06e6\u06e4\u06e2\u06e1\u06db\u06dc\u06ec\u06da\u06d6\u06ec\u06eb\u06e2"

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v2

    sparse-switch v3, :sswitch_data_1

    goto :goto_1

    :sswitch_4
    const v3, -0x3906bbc5

    const-string v0, "\u06df\u06e0\u06e7\u06d8\u06e5\u06e0\u06e7\u06d9\u06df\u06df\u06d8\u06e5\u06d8\u06e0\u06d9\u06e5\u06d8\u06da\u06d7\u06d8\u06d8\u06e8\u06e5\u06e5\u06d8\u06df\u06da\u06e0\u06e6\u06eb\u06d7\u06e8\u06e8\u06e2\u06d7\u06da\u06e6\u06d9\u06d8\u06eb\u06e6\u06e5\u06e2\u06d8\u06db\u06d6\u06d8\u06e4\u06dc\u06ec\u06ec\u06df\u06e2"

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    xor-int/2addr v4, v3

    sparse-switch v4, :sswitch_data_2

    goto :goto_2

    :sswitch_5
    const-string v0, "\u06ec\u06e2\u06e1\u06d8\u06d9\u06e4\u06e5\u06d8\u06ec\u06d7\u06e0\u06e5\u06ec\u06dc\u06d8\u06df\u06d8\u06e0\u06d7\u06e2\u06d6\u06da\u06e1\u06d8\u06e0\u06e5\u06ec\u06db\u06d7\u06e1\u06d8\u06e2\u06e5\u06e7\u06e1\u06d8\u06e8\u06eb\u06e8"

    goto :goto_1

    :cond_0
    const-string v0, "\u06dc\u06dc\u06e6\u06d8\u06e6\u06ec\u06da\u06e8\u06db\u06e8\u06d8\u06e8\u06d8\u06e5\u06e5\u06e4\u06d6\u06d8\u06d8\u06e6\u06d8\u06d8\u06e1\u06db\u06e6\u06d8\u06e7\u06e8\u06d6\u06d8\u06d6\u06e6\u06d8\u06d8\u06dc\u06d6\u06df\u06e8\u06ec\u06e1\u06d6\u06da\u06d8\u06d8\u06df\u06e2\u06e5\u06dc\u06db\u06e6\u06e1\u06e1\u06e1\u06e7\u06d7\u06d6\u06d6\u06e2\u06d7\u06e0\u06e5\u06d8\u06d8"

    goto :goto_2

    :sswitch_6
    if-eqz v1, :cond_0

    const-string v0, "\u06e2\u06e4\u06e0\u06e4\u06e0\u06db\u06d6\u06e0\u06e1\u06d8\u06eb\u06e6\u06df\u06e6\u06d8\u06e1\u06e4\u06d8\u06e0\u06db\u06d9\u06df\u06df\u06eb\u06d6\u06d8\u06dc\u06e5\u06dc\u06e7\u06e5"

    goto :goto_2

    :sswitch_7
    const-string v0, "\u06db\u06e7\u06d8\u06d8\u06e0\u06e1\u06e4\u06d7\u06df\u06d9\u06dc\u06e5\u06d8\u06e2\u06e7\u06eb\u06e4\u06d8\u06d7\u06e4\u06e1\u06d6\u06d8\u06e4\u06ec\u06e6\u06e0\u06d8\u06e7\u06e0\u06e6\u06d7"

    goto :goto_2

    :sswitch_8
    const-string v0, "\u06e4\u06df\u06db\u06e5\u06e5\u06e0\u06e6\u06db\u06da\u06e0\u06d9\u06e2\u06e8\u06e8\u06da\u06e2\u06d9\u06e0\u06eb\u06eb\u06d6\u06d8\u06e4\u06d7\u06e6\u06d8\u06e2\u06e7\u06d9\u06d6\u06db\u06eb\u06e6\u06e5\u06d6\u06e1\u06e6"

    goto :goto_1

    :sswitch_9
    const-string v0, "\u06db\u06eb\u06e6\u06d8\u06e8\u06e4\u06e4\u06e0\u06d8\u06d7\u06e4\u06dc\u06da\u06ec\u06df\u06eb\u06e2\u06d8\u06e1\u06d7\u06e5\u06d8\u06d6\u06d6\u06e5\u06d8\u06eb\u06e1\u06d8\u06df\u06e2\u06d8\u06d8\u06e1\u06e8\u06eb\u06e4\u06e2\u06e5\u06e0\u06e8\u06df\u06df\u06dc\u06e6\u06e0\u06e7\u06e0\u06da\u06e1\u06d9"

    goto :goto_1

    :sswitch_a
    const-string v0, "\u06d8\u06db\u06e6\u06d8\u06e6\u06db\u06e6\u06d9\u06e7\u06ec\u06d8\u06e4\u06d9\u06e1\u06d7\u06da\u06e1\u06d6\u06eb\u06e7\u06d9\u06e0\u06df\u06e7\u06e0\u06e5\u06d9\u06e7\u06dc\u06df\u06dc\u06eb\u06e6\u06d8\u06e5\u06da\u06d8\u06eb\u06e5\u06d6\u06da\u06e5\u06d8\u06e1\u06e5\u06d6\u06e0\u06e4\u06db\u06e1\u06d7\u06e1\u06db\u06e1\u06dc"

    goto :goto_0

    :sswitch_b
    invoke-interface {v1, p1}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    const-string v0, "\u06e6\u06df\u06e2\u06d9\u06e7\u06ec\u06db\u06e2\u06db\u06d6\u06e8\u06e6\u06d8\u06eb\u06ec\u06d6\u06d8\u06ec\u06da\u06d6\u06d8\u06e8\u06dc\u06dc\u06e4\u06e8\u06e5\u06d8\u06e2\u06e8\u06e7\u06e0\u06e7\u06df"

    goto :goto_0

    :sswitch_c
    const-string v0, "\u06e6\u06df\u06e2\u06d9\u06e7\u06ec\u06db\u06e2\u06db\u06d6\u06e8\u06e6\u06d8\u06eb\u06ec\u06d6\u06d8\u06ec\u06da\u06d6\u06d8\u06e8\u06dc\u06dc\u06e4\u06e8\u06e5\u06d8\u06e2\u06e8\u06e7\u06e0\u06e7\u06df"

    goto :goto_0

    :sswitch_d
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7074c72b -> :sswitch_3
        -0x37788d26 -> :sswitch_2
        -0x9ca09a9 -> :sswitch_0
        0x37e5ff9c -> :sswitch_d
        0x4352bb02 -> :sswitch_1
        0x4fd34068 -> :sswitch_b
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x7d33c40e -> :sswitch_a
        -0x5f3b319b -> :sswitch_4
        0xe2208e4 -> :sswitch_c
        0x50b3a890 -> :sswitch_9
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        -0x685a7e8f -> :sswitch_6
        -0x562226e6 -> :sswitch_7
        0x1d5e8357 -> :sswitch_5
        0x22dc4754 -> :sswitch_8
    .end sparse-switch
.end method

.method public onPageScrolled(IFI)V
    .locals 5

    const/4 v1, 0x0

    const-string v0, "\u06e0\u06e8\u06e6\u06d8\u06eb\u06e7\u06e8\u06e4\u06d7\u06e1\u06d8\u06d8\u06e6\u06df\u06d8\u06e8\u06d8\u06db\u06d6\u06dc\u06d8\u06da\u06e0\u06e0\u06df\u06e6\u06d7\u06d7\u06e8\u06d6\u06d8\u06e4\u06d8\u06d8\u06d8\u06e8\u06e5\u06df\u06e4\u06e4\u06d6\u06d8\u06e4\u06d9\u06e5\u06d8\u06da\u06dc\u06d8\u06dc\u06eb\u06e6\u06d7\u06e5\u06e4"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v3, 0x1dd

    xor-int/2addr v2, v3

    xor-int/lit16 v2, v2, 0x300

    const/16 v3, 0x1ee

    const v4, 0x773c5975

    xor-int/2addr v2, v3

    xor-int/2addr v2, v4

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e5\u06e5\u06e6\u06d9\u06eb\u06db\u06ec\u06d6\u06d9\u06ec\u06eb\u06dc\u06e1\u06e7\u06d8\u06d8\u06e1\u06e1\u06db\u06df\u06e0\u06e0\u06e1\u06ec\u06d6\u06d8\u06e8\u06db\u06d6\u06e2\u06e1\u06e7\u06d8"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06e7\u06dc\u06e2\u06e6\u06dc\u06eb\u06db\u06d7\u06df\u06e7\u06dc\u06e5\u06d8\u06df\u06eb\u06e5\u06d8\u06e8\u06e1\u06dc\u06e6\u06db\u06eb\u06e4\u06dc\u06e2\u06e0\u06e6\u06dc\u06d7\u06e1\u06e2"

    goto :goto_0

    :sswitch_2
    const-string v0, "\u06e4\u06d8\u06e5\u06d8\u06e5\u06e2\u06da\u06e2\u06db\u06df\u06d7\u06db\u06d8\u06d8\u06da\u06e0\u06d9\u06e7\u06d8\u06e0\u06d6\u06e5\u06eb\u06e2\u06d9\u06e5\u06d8\u06da\u06d8\u06e8\u06d9\u06e5\u06d8\u06dc\u06e7\u06e1\u06e7\u06e0\u06ec\u06eb\u06d8\u06d7\u06e7\u06eb\u06df"

    goto :goto_0

    :sswitch_3
    const-string v0, "\u06eb\u06e8\u06dc\u06d8\u06e0\u06e2\u06dc\u06d8\u06d9\u06e2\u06d6\u06d8\u06d6\u06e6\u06e2\u06d7\u06eb\u06d6\u06d8\u06df\u06d7\u06e5\u06d9\u06e1\u06da\u06e4\u06dc\u06e7\u06d9\u06e2\u06d9\u06e0\u06d7\u06e6\u06e7\u06e6\u06d8\u06e0\u06e1\u06e2"

    goto :goto_0

    :sswitch_4
    iget-object v1, p0, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;->OooooO0:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    const-string v0, "\u06d6\u06d7\u06d7\u06e7\u06d8\u06d6\u06d8\u06dc\u06da\u06e6\u06da\u06ec\u06d6\u06e2\u06e5\u06dc\u06d8\u06ec\u06e1\u06d6\u06d8\u06ec\u06e7\u06e6\u06d7\u06df\u06d8\u06e0\u06e5\u06e5\u06d8\u06da\u06d8\u06e8\u06e4\u06d6\u06e5\u06d8\u06db\u06e2\u06da\u06db\u06ec\u06dc\u06d8\u06e6\u06dc\u06d6\u06d8"

    goto :goto_0

    :sswitch_5
    const v2, -0x4a8b546

    const-string v0, "\u06e6\u06e2\u06eb\u06db\u06d6\u06e7\u06d8\u06e1\u06d8\u06e0\u06d8\u06eb\u06df\u06da\u06ec\u06e8\u06d8\u06d8\u06e7\u06d6\u06e1\u06ec\u06e4\u06e6\u06e7\u06d6\u06e2\u06d9\u06d7\u06e7\u06df\u06da\u06e7\u06e0\u06e8\u06d8\u06d6\u06df\u06d6\u06d8"

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v2

    sparse-switch v3, :sswitch_data_1

    goto :goto_1

    :sswitch_6
    const v3, -0x56a92674

    const-string v0, "\u06d7\u06e4\u06ec\u06df\u06e2\u06e1\u06d7\u06d6\u06eb\u06df\u06d6\u06e0\u06d9\u06d7\u06eb\u06da\u06db\u06d6\u06d8\u06dc\u06d6\u06d8\u06d8\u06da\u06e0\u06d8\u06d8\u06db\u06e1\u06db\u06e2\u06da\u06e7\u06e2\u06eb\u06db\u06e5\u06e1\u06d6\u06d9\u06eb\u06e7\u06d6\u06df\u06e4\u06d6\u06d7\u06e0\u06e5\u06e5\u06e8\u06d8\u06d9\u06d6\u06d8\u06e6\u06d7\u06e0"

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    xor-int/2addr v4, v3

    sparse-switch v4, :sswitch_data_2

    goto :goto_2

    :sswitch_7
    const-string v0, "\u06e2\u06ec\u06e1\u06d8\u06e2\u06e7\u06e1\u06e4\u06d9\u06d6\u06e8\u06d8\u06e7\u06d8\u06d8\u06d7\u06d6\u06d8\u06e1\u06e2\u06dc\u06e6\u06e8\u06eb\u06d7\u06e7\u06da\u06e8\u06dc\u06d9\u06e4\u06e1\u06db\u06db\u06dc\u06dc\u06e5\u06d6\u06e8\u06d8\u06d8\u06e8\u06d8\u06e6\u06e7\u06dc\u06d8\u06e1\u06d7\u06eb\u06e8\u06d8\u06d6\u06d8"

    goto :goto_1

    :sswitch_8
    const-string v0, "\u06e1\u06e7\u06d6\u06d8\u06e5\u06d9\u06e8\u06d8\u06dc\u06e0\u06e7\u06df\u06da\u06d8\u06d8\u06d7\u06e7\u06d9\u06e7\u06e6\u06e8\u06d8\u06e5\u06e2\u06e8\u06d8\u06d9\u06e5\u06e4\u06e5\u06e0\u06df\u06db\u06e7\u06dc\u06df\u06e6\u06e5\u06db\u06d8\u06e2\u06e1\u06e8\u06da\u06dc\u06d8\u06e7\u06e7\u06df\u06ec\u06d7\u06ec\u06e7\u06d7\u06db\u06e8\u06e7\u06e6\u06eb"

    goto :goto_1

    :cond_0
    const-string v0, "\u06da\u06ec\u06e8\u06d8\u06e1\u06e4\u06eb\u06d8\u06e8\u06d6\u06d8\u06eb\u06e5\u06e5\u06d8\u06e7\u06e4\u06da\u06d9\u06df\u06e0\u06eb\u06db\u06e7\u06df\u06d9\u06e1\u06d7\u06e2\u06e0\u06d8\u06e6\u06e1\u06d8"

    goto :goto_2

    :sswitch_9
    if-eqz v1, :cond_0

    const-string v0, "\u06df\u06dc\u06e2\u06ec\u06d9\u06d6\u06e2\u06d9\u06e7\u06db\u06e1\u06e8\u06eb\u06db\u06ec\u06d8\u06d9\u06d9\u06e6\u06e0\u06e6\u06e5\u06d9\u06e8\u06eb\u06db\u06e6\u06e8\u06e7\u06d6\u06eb\u06e7\u06e4\u06d9\u06e0\u06e5\u06d8\u06d9\u06dc\u06e5\u06da\u06e8\u06da"

    goto :goto_2

    :sswitch_a
    const-string v0, "\u06e7\u06d9\u06d7\u06e0\u06dc\u06d8\u06d8\u06e5\u06e0\u06e8\u06d8\u06da\u06da\u06dc\u06dc\u06e5\u06d8\u06e5\u06e4\u06e1\u06e1\u06dc\u06d8\u06d8\u06eb\u06e4\u06e8\u06e5\u06e7\u06e1\u06dc\u06e1\u06e1\u06dc\u06ec\u06e4\u06d6\u06d9\u06e0\u06e6\u06db\u06e0\u06e1\u06e1\u06d8"

    goto :goto_2

    :sswitch_b
    const-string v0, "\u06df\u06db\u06da\u06e0\u06eb\u06d8\u06d7\u06df\u06ec\u06db\u06d6\u06ec\u06e0\u06e6\u06d7\u06e1\u06d8\u06db\u06e1\u06eb\u06e6\u06e4\u06d6\u06ec\u06e7\u06e5\u06da\u06d6\u06eb\u06d9\u06d6\u06db\u06eb\u06e1\u06e8\u06d8\u06db\u06e2\u06e6\u06d8\u06dc\u06d8\u06d8"

    goto :goto_1

    :sswitch_c
    const-string v0, "\u06e7\u06d8\u06e6\u06d8\u06e0\u06e6\u06e2\u06e2\u06d7\u06eb\u06e8\u06e2\u06d6\u06d7\u06d9\u06e4\u06ec\u06da\u06ec\u06df\u06e7\u06d9\u06ec\u06e4\u06d6\u06df\u06e1\u06e1\u06e4\u06e7\u06eb\u06e8\u06e6\u06d6\u06dc\u06df\u06db"

    goto :goto_0

    :sswitch_d
    invoke-interface {v1, p1, p2, p3}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    const-string v0, "\u06dc\u06db\u06d7\u06db\u06eb\u06e5\u06d7\u06e8\u06e2\u06d7\u06d7\u06d9\u06e6\u06d7\u06e1\u06da\u06d7\u06e6\u06d8\u06eb\u06e7\u06d8\u06d8\u06da\u06db\u06e5\u06d8\u06d7\u06db\u06d6\u06d7\u06e6\u06dc\u06d8\u06e4\u06df\u06d9\u06df\u06e1\u06d8\u06e7\u06e8\u06e6\u06eb\u06d8\u06e5\u06d8\u06e6\u06d9\u06eb\u06e0\u06e0\u06e8\u06d8\u06e2\u06d6\u06da"

    goto :goto_0

    :sswitch_e
    const-string v0, "\u06dc\u06db\u06d7\u06db\u06eb\u06e5\u06d7\u06e8\u06e2\u06d7\u06d7\u06d9\u06e6\u06d7\u06e1\u06da\u06d7\u06e6\u06d8\u06eb\u06e7\u06d8\u06d8\u06da\u06db\u06e5\u06d8\u06d7\u06db\u06d6\u06d7\u06e6\u06dc\u06d8\u06e4\u06df\u06d9\u06df\u06e1\u06d8\u06e7\u06e8\u06e6\u06eb\u06d8\u06e5\u06d8\u06e6\u06d9\u06eb\u06e0\u06e0\u06e8\u06d8\u06e2\u06d6\u06da"

    goto :goto_0

    :sswitch_f
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x377b86d9 -> :sswitch_5
        -0x2b04e2e9 -> :sswitch_d
        -0x1a87c420 -> :sswitch_3
        -0x5828793 -> :sswitch_1
        0x115a037e -> :sswitch_f
        0x38ad6456 -> :sswitch_0
        0x3a3245cd -> :sswitch_4
        0x58886631 -> :sswitch_2
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x7dfb3327 -> :sswitch_c
        -0x69609cd5 -> :sswitch_b
        -0x48fad0d4 -> :sswitch_e
        0x107d84c3 -> :sswitch_6
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        -0x5519cd78 -> :sswitch_7
        -0x26041f95 -> :sswitch_9
        -0xdcd627c -> :sswitch_8
        0x3eb2463d -> :sswitch_a
    .end sparse-switch
.end method

.method public onPageSelected(I)V
    .locals 5

    const/4 v1, 0x0

    const-string v0, "\u06e5\u06d6\u06eb\u06e4\u06e0\u06dc\u06d8\u06e4\u06ec\u06e1\u06d8\u06dc\u06eb\u06e6\u06d8\u06e2\u06e1\u06e5\u06e0\u06e0\u06e1\u06da\u06e2\u06d7\u06e0\u06e5\u06e4\u06ec\u06d6\u06d8\u06d8\u06da\u06dc\u06d8\u06e6\u06e8\u06e2\u06da\u06dc\u06dc\u06d8\u06ec\u06e8\u06d8\u06d8\u06d9\u06ec\u06e6\u06df\u06d8\u06e4\u06df\u06dc"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v3, 0x297

    xor-int/2addr v2, v3

    xor-int/lit16 v2, v2, 0x140

    const/16 v3, 0x52

    const v4, 0x5a7cb9d9

    xor-int/2addr v2, v3

    xor-int/2addr v2, v4

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e2\u06db\u06db\u06e6\u06d6\u06e2\u06d7\u06e7\u06e1\u06d8\u06e6\u06ec\u06d9\u06da\u06da\u06e8\u06ec\u06d7\u06d8\u06da\u06d6\u06d8\u06d8\u06e8\u06d8\u06df\u06ec\u06e4\u06e7\u06e0\u06e5\u06db\u06eb\u06e8\u06d8\u06da\u06e8\u06d8\u06d8"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06e0\u06e7\u06e4\u06d7\u06e0\u06dc\u06eb\u06e2\u06e8\u06e1\u06e2\u06e6\u06d8\u06eb\u06e5\u06e4\u06e5\u06e6\u06d8\u06d8\u06d7\u06e1\u06e7\u06d8\u06e7\u06d8\u06dc\u06eb\u06dc\u06e6\u06d8\u06d6\u06e8\u06d6\u06d8\u06e5\u06dc\u06d9\u06e5\u06da\u06e1\u06d8"

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;->setCurrentItem(I)V

    const-string v0, "\u06e1\u06e7\u06d6\u06e8\u06eb\u06e1\u06d8\u06eb\u06e0\u06df\u06e4\u06df\u06e4\u06d6\u06ec\u06d8\u06e1\u06e7\u06e1\u06e6\u06e6\u06e8\u06d8\u06da\u06e7\u06e4\u06da\u06d6\u06d9\u06e5\u06da\u06e8\u06d8\u06eb\u06e2\u06db\u06e6\u06d6\u06e1\u06d8\u06d7\u06e8\u06e7\u06e6\u06e1\u06d8"

    goto :goto_0

    :sswitch_3
    iget-object v1, p0, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;->OooooO0:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    const-string v0, "\u06da\u06e4\u06e6\u06ec\u06da\u06df\u06d9\u06e1\u06ec\u06d8\u06e8\u06dc\u06d8\u06d8\u06e8\u06e7\u06d8\u06d7\u06d8\u06d6\u06e8\u06d6\u06e2\u06dc\u06d7\u06e6\u06e8\u06ec\u06e5\u06d7\u06eb\u06d7\u06ec\u06d8\u06d8\u06e8\u06d9\u06e1\u06da\u06e8\u06d6\u06d8\u06e0\u06e7\u06d6"

    goto :goto_0

    :sswitch_4
    const v2, -0xccde6e1

    const-string v0, "\u06df\u06e8\u06ec\u06d9\u06e6\u06ec\u06da\u06e2\u06e7\u06e2\u06d6\u06d8\u06e5\u06d7\u06d8\u06d8\u06dc\u06db\u06e6\u06da\u06e8\u06d8\u06db\u06db\u06e6\u06d8\u06e1\u06db\u06e5\u06eb\u06d8\u06d6\u06d8\u06d9\u06d8\u06df\u06e1\u06e7\u06d7\u06e2\u06e2\u06e1\u06e6\u06e4\u06db\u06eb\u06da\u06e6\u06e5\u06e4\u06e4\u06e5\u06e1\u06d6\u06d8\u06eb\u06e1\u06e8\u06d8"

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v2

    sparse-switch v3, :sswitch_data_1

    goto :goto_1

    :sswitch_5
    const v3, 0x5f687ac6

    const-string v0, "\u06d8\u06d9\u06e8\u06d8\u06e5\u06d7\u06e8\u06d8\u06d8\u06e1\u06e2\u06e0\u06e6\u06d7\u06da\u06dc\u06e5\u06d8\u06e2\u06eb\u06d6\u06d7\u06e1\u06e1\u06d8\u06d9\u06d6\u06e4\u06e2\u06d6\u06e4\u06db\u06e1\u06e8\u06d8\u06da\u06d6\u06e2\u06ec\u06d9\u06e8\u06d8\u06eb\u06e0\u06db\u06e5\u06eb\u06e8\u06d8\u06e2\u06d6\u06da\u06d8\u06e4\u06e1\u06d8\u06db\u06e6\u06e8\u06e7\u06d8"

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    xor-int/2addr v4, v3

    sparse-switch v4, :sswitch_data_2

    goto :goto_2

    :sswitch_6
    const-string v0, "\u06df\u06e2\u06dc\u06d8\u06d7\u06e5\u06ec\u06df\u06e6\u06e6\u06d8\u06da\u06e2\u06e8\u06d8\u06e0\u06d6\u06e1\u06e2\u06e4\u06d8\u06d6\u06eb\u06e1\u06e2\u06e1\u06e1\u06e2\u06e2\u06e4\u06e5\u06da\u06e6"

    goto :goto_1

    :cond_0
    const-string v0, "\u06db\u06d8\u06e7\u06df\u06e6\u06e8\u06df\u06d6\u06e7\u06ec\u06eb\u06e5\u06d8\u06e1\u06eb\u06df\u06d6\u06db\u06e1\u06e1\u06e1\u06e1\u06e7\u06eb\u06db\u06d7\u06e2\u06da\u06d7\u06d8\u06e2\u06e8\u06e5\u06e2\u06db\u06e4\u06d9\u06e4\u06e1\u06d8\u06e7\u06df\u06e7\u06e8\u06df\u06d7\u06e4\u06da\u06dc\u06d8"

    goto :goto_2

    :sswitch_7
    if-eqz v1, :cond_0

    const-string v0, "\u06d6\u06da\u06e5\u06d8\u06ec\u06ec\u06e8\u06dc\u06db\u06e4\u06e1\u06e7\u06e7\u06d6\u06e8\u06da\u06db\u06d6\u06e0\u06e7\u06e6\u06d8\u06e5\u06e7\u06ec\u06dc\u06dc\u06d6\u06e5\u06d6\u06d8\u06d6\u06e4\u06e5\u06d8\u06e1\u06d8\u06e1\u06d8"

    goto :goto_2

    :sswitch_8
    const-string v0, "\u06e7\u06e1\u06d7\u06e4\u06e0\u06df\u06e8\u06da\u06e7\u06e5\u06e1\u06e2\u06e6\u06e6\u06ec\u06e2\u06eb\u06e1\u06d8\u06ec\u06da\u06e5\u06ec\u06e6\u06d8\u06e4\u06e0\u06e1\u06d8\u06e4\u06e5\u06e7\u06eb\u06d6\u06df\u06d9\u06e6\u06da\u06e4\u06db\u06e1\u06e6\u06da\u06df"

    goto :goto_2

    :sswitch_9
    const-string v0, "\u06e7\u06eb\u06e5\u06d8\u06d6\u06d8\u06e0\u06e7\u06e1\u06d8\u06e1\u06da\u06df\u06d9\u06d7\u06ec\u06d9\u06d7\u06e4\u06e4\u06e0\u06dc\u06d7\u06e7\u06d7\u06e8\u06e1\u06d8\u06d8\u06e0\u06e2\u06e5\u06d8\u06da\u06db\u06db\u06da\u06e5\u06ec"

    goto :goto_1

    :sswitch_a
    const-string v0, "\u06d6\u06dc\u06d6\u06eb\u06dc\u06dc\u06e1\u06e0\u06d9\u06e2\u06ec\u06d9\u06da\u06d8\u06d9\u06da\u06d9\u06e1\u06e8\u06e4\u06e1\u06d8\u06eb\u06e0\u06d8\u06d8\u06e0\u06d9\u06e6\u06d6\u06db\u06e1\u06d8"

    goto :goto_1

    :sswitch_b
    const-string v0, "\u06e4\u06d8\u06e0\u06d8\u06e2\u06e8\u06d8\u06e2\u06e0\u06e8\u06e7\u06e2\u06df\u06d9\u06e2\u06e7\u06d6\u06e6\u06e1\u06ec\u06d9\u06d6\u06d8\u06d8\u06da\u06e1\u06d8\u06e2\u06e2\u06e6\u06d8\u06d7\u06d9\u06e2\u06e0\u06e0\u06df\u06e0\u06d6\u06e5\u06e4\u06d7\u06ec\u06dc\u06e8\u06db"

    goto :goto_0

    :sswitch_c
    invoke-interface {v1, p1}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    const-string v0, "\u06e4\u06e5\u06d9\u06d7\u06e1\u06e6\u06d6\u06e1\u06d8\u06d8\u06db\u06e2\u06e2\u06da\u06e2\u06eb\u06d9\u06e5\u06e5\u06ec\u06db\u06ec\u06eb\u06eb\u06dc\u06dc\u06e0\u06ec\u06da\u06db\u06d9\u06e8\u06e6\u06d8\u06e5\u06da\u06df\u06d8\u06dc\u06e4\u06d8\u06e1\u06e6"

    goto :goto_0

    :sswitch_d
    const-string v0, "\u06e4\u06e5\u06d9\u06d7\u06e1\u06e6\u06d6\u06e1\u06d8\u06d8\u06db\u06e2\u06e2\u06da\u06e2\u06eb\u06d9\u06e5\u06e5\u06ec\u06db\u06ec\u06eb\u06eb\u06dc\u06dc\u06e0\u06ec\u06da\u06db\u06d9\u06e8\u06e6\u06d8\u06e5\u06da\u06df\u06d8\u06dc\u06e4\u06d8\u06e1\u06e6"

    goto :goto_0

    :sswitch_e
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x52462a3e -> :sswitch_e
        -0x1dd5ed7b -> :sswitch_c
        0xd81d2f5 -> :sswitch_4
        0x29290e9c -> :sswitch_0
        0x41ea3938 -> :sswitch_2
        0x52837d2c -> :sswitch_1
        0x55c0a109 -> :sswitch_3
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x1feb1fa4 -> :sswitch_a
        0x2d41a1 -> :sswitch_d
        0x66e390ae -> :sswitch_5
        0x7df060d5 -> :sswitch_b
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        -0x5fede129 -> :sswitch_9
        -0x159890f3 -> :sswitch_7
        0x3852121f -> :sswitch_6
        0x5360fe9d -> :sswitch_8
    .end sparse-switch
.end method

.method public setCurrentItem(I)V
    .locals 12

    const/4 v6, 0x0

    const/4 v2, 0x0

    const-string v0, "\u06e2\u06eb\u06db\u06d7\u06eb\u06d9\u06df\u06d8\u06e6\u06e0\u06e1\u06e5\u06d8\u06db\u06ec\u06e5\u06d8\u06e1\u06e4\u06e5\u06d8\u06e0\u06e4\u06e1\u06d8\u06df\u06d9\u06d6\u06da\u06d8\u06e1\u06e7\u06e7"

    move v1, v2

    move v3, v2

    move v4, v2

    move-object v5, v6

    move v7, v2

    move v8, v2

    move-object v9, v6

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/16 v10, 0x3c3

    xor-int/2addr v6, v10

    xor-int/lit16 v6, v6, 0x136

    const/16 v10, 0x39c

    const v11, -0x5e7e2648

    xor-int/2addr v6, v10

    xor-int/2addr v6, v11

    sparse-switch v6, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06da\u06da\u06e8\u06d9\u06e5\u06e2\u06e7\u06e5\u06d8\u06d9\u06e8\u06d7\u06d8\u06dc\u06e2\u06d8\u06e5\u06e1\u06eb\u06d8\u06df\u06df\u06e4\u06e6\u06d6\u06d6\u06d8\u06d8\u06e1\u06e7\u06d8"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06e1\u06e6\u06e5\u06e1\u06d7\u06eb\u06e7\u06e4\u06dc\u06d8\u06e2\u06e0\u06d6\u06d8\u06e1\u06e1\u06d9\u06d8\u06db\u06e1\u06d9\u06e1\u06e6\u06d8\u06e8\u06dc\u06d8\u06d8\u06e4\u06e0\u06e8\u06d8\u06e8\u06d7\u06d9\u06e0\u06e1\u06d7\u06d6\u06df\u06d6\u06d9\u06e4\u06dc\u06e8\u06e4\u06e2\u06e2\u06e6\u06e6\u06e0\u06e1\u06d8"

    goto :goto_0

    :sswitch_2
    iget-object v6, p0, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;->Ooooo0o:Landroidx/viewpager/widget/ViewPager;

    const-string v0, "\u06ec\u06df\u06d9\u06d6\u06e5\u06e1\u06d8\u06dc\u06e0\u06e1\u06d8\u06e1\u06dc\u06d7\u06dc\u06e1\u06d8\u06e2\u06da\u06e7\u06eb\u06e5\u06e0\u06d9\u06d6\u06d7\u06e0\u06da\u06da\u06db\u06d9\u06e7\u06db\u06d6\u06e6\u06d8\u06e2\u06e4\u06da\u06e5\u06e4\u06e5\u06d8\u06e8\u06d8\u06da"

    move-object v9, v6

    goto :goto_0

    :sswitch_3
    const v6, -0x37de84a6

    const-string v0, "\u06d9\u06e5\u06e5\u06d8\u06dc\u06e1\u06e1\u06d8\u06dc\u06d8\u06e7\u06d8\u06d9\u06e4\u06e2\u06df\u06e2\u06e1\u06d8\u06e0\u06d7\u06df\u06e4\u06d8\u06e1\u06d8\u06ec\u06e5\u06e1\u06d8\u06e4\u06e1\u06d7\u06d7\u06d6\u06d8\u06e2\u06e6\u06dc\u06dc\u06d6\u06d8\u06d9\u06d9\u06d9\u06e2\u06db\u06e0\u06d7\u06d7\u06ec\u06e1\u06e4\u06e8\u06d8\u06eb\u06dc\u06e1\u06e7\u06db\u06e5"

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v10

    xor-int/2addr v10, v6

    sparse-switch v10, :sswitch_data_1

    goto :goto_1

    :sswitch_4
    const v10, 0x155fcd1a

    const-string v0, "\u06d8\u06e7\u06e7\u06e8\u06e1\u06e6\u06d8\u06e5\u06e2\u06e1\u06d8\u06e5\u06d6\u06e7\u06d8\u06db\u06eb\u06e1\u06d8\u06e4\u06e2\u06e4\u06df\u06e8\u06e2\u06e1\u06dc\u06d8\u06ec\u06ec\u06dc\u06e7\u06d6"

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v11

    xor-int/2addr v11, v10

    sparse-switch v11, :sswitch_data_2

    goto :goto_2

    :sswitch_5
    const-string v0, "\u06dc\u06e5\u06e4\u06d8\u06da\u06e1\u06d8\u06d6\u06d7\u06e1\u06d8\u06e1\u06e2\u06e8\u06eb\u06d9\u06e7\u06e8\u06d6\u06d6\u06d9\u06e1\u06e8\u06da\u06e0\u06e6\u06d8\u06e1\u06d8\u06e0\u06db\u06eb"

    goto :goto_2

    :sswitch_6
    const-string v0, "\u06e2\u06eb\u06ec\u06e6\u06d6\u06e0\u06e0\u06eb\u06eb\u06d7\u06d9\u06dc\u06d8\u06e0\u06d9\u06e5\u06df\u06e0\u06d8\u06d8\u06e1\u06df\u06eb\u06ec\u06e5\u06d9\u06e6\u06e1\u06d8\u06e7\u06df\u06e1\u06db\u06d8\u06db\u06e8\u06da\u06e1"

    goto :goto_1

    :cond_0
    const-string v0, "\u06d6\u06db\u06e8\u06e1\u06d6\u06e4\u06e2\u06dc\u06d9\u06e4\u06df\u06e5\u06d8\u06d7\u06eb\u06dc\u06d8\u06e7\u06d7\u06e4\u06e1\u06db\u06d7\u06e5\u06db\u06df\u06e7\u06e5\u06d9\u06da\u06e7\u06d9\u06e6\u06e1\u06e6\u06dc\u06dc\u06e6\u06e4\u06e5\u06dc\u06e0\u06df\u06d7"

    goto :goto_2

    :sswitch_7
    if-eqz v9, :cond_0

    const-string v0, "\u06e5\u06e1\u06db\u06d6\u06db\u06e4\u06d9\u06e6\u06e2\u06db\u06da\u06e5\u06d8\u06e1\u06e2\u06e8\u06e7\u06e0\u06da\u06db\u06eb\u06da\u06d9\u06e2\u06d6\u06e6\u06e6\u06d6\u06e6\u06db\u06e6\u06d8\u06ec\u06e2\u06d6\u06d8\u06d6\u06e4\u06e5\u06d8"

    goto :goto_2

    :sswitch_8
    const-string v0, "\u06e5\u06d6\u06eb\u06da\u06d6\u06e5\u06d8\u06d9\u06db\u06eb\u06e0\u06e5\u06dc\u06e8\u06da\u06e0\u06db\u06e1\u06e7\u06d8\u06d6\u06eb\u06dc\u06df\u06e2\u06da\u06eb\u06d6\u06e2\u06db\u06e4\u06dc\u06da\u06e8\u06d8\u06d8\u06da\u06e4\u06e7\u06ec\u06e5\u06e8\u06da\u06d8\u06e4\u06e5\u06dc\u06e1\u06e1\u06e5\u06db"

    goto :goto_1

    :sswitch_9
    const-string v0, "\u06e2\u06e1\u06e2\u06eb\u06eb\u06da\u06e6\u06eb\u06dc\u06e0\u06da\u06e0\u06eb\u06e1\u06d7\u06d9\u06e8\u06e6\u06e4\u06db\u06e1\u06e6\u06e8\u06d8\u06e2\u06dc\u06dc\u06d8\u06da\u06e7\u06e1\u06d6\u06d7\u06e8\u06e2\u06e5\u06e6\u06d8\u06d9\u06da\u06e0\u06e7\u06d8\u06e7\u06d8\u06e1\u06e7\u06d6\u06d8\u06e1\u06e8\u06e8\u06d6\u06e6\u06df\u06e5\u06d8\u06e7\u06d8"

    goto :goto_1

    :sswitch_a
    const-string v0, "\u06dc\u06e8\u06ec\u06e8\u06dc\u06dc\u06e0\u06e8\u06e8\u06d8\u06e5\u06e7\u06db\u06d9\u06e8\u06d8\u06e6\u06df\u06e8\u06d8\u06d6\u06d7\u06e1\u06e8\u06e4\u06d8\u06d8\u06d9\u06e5\u06d8\u06e6\u06e4\u06e4\u06da\u06e7\u06d8\u06e5\u06da\u06d7\u06d9\u06e6\u06d8\u06e8\u06e1\u06dc\u06d8\u06e1\u06d6\u06db\u06d8\u06eb\u06e4"

    goto :goto_0

    :sswitch_b
    iput p1, p0, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;->OooooOo:I

    const-string v0, "\u06e4\u06db\u06eb\u06e7\u06df\u06e8\u06d9\u06d9\u06d9\u06ec\u06e1\u06e6\u06e8\u06e5\u06d8\u06d8\u06d9\u06eb\u06da\u06d6\u06e5\u06eb\u06d9\u06df\u06e4\u06e1\u06df\u06e0\u06d7\u06dc\u06e1\u06dc\u06e7\u06e5\u06e1\u06e8\u06e0\u06e6\u06e8\u06d6\u06da\u06e5\u06e6\u06d8\u06d6\u06e7\u06e1\u06d8\u06d7\u06e6\u06e7\u06df\u06d8\u06d8\u06d7\u06eb"

    goto :goto_0

    :sswitch_c
    invoke-virtual {v9, p1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    const-string v0, "\u06e7\u06e1\u06e5\u06db\u06d8\u06e8\u06d8\u06e4\u06ec\u06e6\u06dc\u06ec\u06e6\u06db\u06d6\u06e7\u06d8\u06e1\u06e6\u06db\u06d8\u06e7\u06e7\u06ec\u06d7\u06e6\u06d8\u06e6\u06d6\u06e2\u06e2\u06e0\u06e1\u06d8\u06e1\u06df\u06e7\u06e0\u06ec\u06e2\u06da\u06e5\u06dc\u06e0\u06df\u06e2\u06e1\u06e7\u06e2\u06d8\u06e0\u06e2"

    goto :goto_0

    :sswitch_d
    iget-object v0, p0, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;->Ooooo00:Lz2/za;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v6

    const-string v0, "\u06e7\u06e5\u06ec\u06d7\u06da\u06d6\u06d8\u06ec\u06e6\u06d8\u06d8\u06db\u06da\u06eb\u06e8\u06e5\u06e6\u06db\u06e8\u06e8\u06d8\u06d7\u06dc\u06e0\u06e0\u06e6\u06e2\u06e1\u06e4\u06e2\u06d9\u06e1\u06e5\u06e2\u06e0\u06dc\u06d8\u06d9\u06eb\u06e0\u06dc\u06ec\u06eb\u06e8\u06d8\u06d8\u06df\u06e2\u06e8\u06e8\u06e8\u06d8\u06da\u06e7\u06ec"

    move v8, v6

    goto :goto_0

    :sswitch_e
    const-string v0, "\u06e8\u06d9\u06e8\u06da\u06d6\u06d8\u06d6\u06e1\u06e1\u06d8\u06e6\u06e4\u06d7\u06d9\u06d6\u06e0\u06da\u06db\u06e2\u06ec\u06db\u06d6\u06d8\u06d7\u06df\u06e4\u06d6\u06dc\u06d8\u06e0\u06da\u06dc\u06dc\u06df\u06eb\u06db\u06da\u06d8\u06d8\u06e2\u06d9\u06e8\u06e5\u06ec\u06e5\u06e7\u06e6\u06d8\u06d9\u06d8\u06d9\u06df\u06d6\u06e0\u06dc\u06df\u06dc"

    goto :goto_0

    :sswitch_f
    const-string v0, "\u06e6\u06e5\u06e4\u06e0\u06d7\u06e1\u06d8\u06e7\u06dc\u06e6\u06dc\u06e0\u06d7\u06d9\u06e5\u06d8\u06d8\u06eb\u06e0\u06d7\u06da\u06dc\u06d6\u06d8\u06d7\u06e4\u06da\u06e0\u06d6\u06d8\u06d8\u06d8\u06dc\u06d8\u06d9\u06dc\u06d8\u06e6\u06d8\u06e8\u06e4\u06e5\u06e1\u06ec\u06e5"

    move v7, v2

    goto :goto_0

    :sswitch_10
    const v6, 0x775e897

    const-string v0, "\u06d8\u06e2\u06dc\u06d6\u06db\u06d9\u06e6\u06ec\u06e6\u06e2\u06d7\u06e6\u06d6\u06dc\u06e5\u06da\u06e2\u06e6\u06d8\u06e7\u06e0\u06d6\u06e0\u06e2\u06e1\u06df\u06d8\u06d8\u06e0\u06d8\u06d6\u06d8\u06da\u06d7\u06ec\u06d9\u06e4\u06e6\u06d8\u06da\u06e7\u06dc\u06da\u06df\u06eb\u06e5\u06e1\u06e5\u06e5\u06eb\u06e0"

    :goto_3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v10

    xor-int/2addr v10, v6

    sparse-switch v10, :sswitch_data_3

    goto :goto_3

    :sswitch_11
    const v10, 0x56e1a783

    const-string v0, "\u06d8\u06e2\u06e2\u06e0\u06e8\u06db\u06d7\u06d9\u06e1\u06d8\u06e1\u06d8\u06eb\u06e0\u06e6\u06d8\u06d6\u06e5\u06e2\u06e1\u06e6\u06dc\u06da\u06e8\u06e6\u06d6\u06ec\u06db\u06e8\u06da\u06eb\u06df\u06db\u06e1\u06df\u06d7\u06d8\u06e7\u06ec\u06e7\u06e2\u06e2\u06e6"

    :goto_4
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v11

    xor-int/2addr v11, v10

    sparse-switch v11, :sswitch_data_4

    goto :goto_4

    :sswitch_12
    if-ge v7, v8, :cond_1

    const-string v0, "\u06da\u06d7\u06da\u06e4\u06dc\u06ec\u06d7\u06e4\u06e4\u06da\u06d7\u06df\u06d7\u06d8\u06e6\u06da\u06d8\u06eb\u06db\u06d9\u06d7\u06d6\u06e4\u06dc\u06e1\u06e1\u06e8\u06d8\u06e8\u06e4\u06eb\u06d9\u06e5\u06dc\u06d8\u06d7\u06dc\u06d8\u06d6\u06ec\u06e5\u06d7\u06e5\u06e7\u06d8"

    goto :goto_4

    :sswitch_13
    const-string v0, "\u06ec\u06e6\u06e0\u06eb\u06e6\u06da\u06db\u06e5\u06d6\u06d7\u06ec\u06df\u06e1\u06d9\u06e1\u06e0\u06dc\u06e5\u06e5\u06d9\u06eb\u06d7\u06df\u06da\u06e4\u06e1\u06e6\u06d8\u06e1\u06d7\u06dc\u06ec\u06d6\u06d8\u06db\u06df\u06e5\u06d9\u06df\u06d9\u06e7\u06e6\u06e2\u06e5\u06d8\u06d8\u06d6\u06d8\u06e1"

    goto :goto_3

    :cond_1
    const-string v0, "\u06ec\u06e7\u06eb\u06eb\u06d7\u06e7\u06d8\u06e6\u06e2\u06d9\u06e6\u06d8\u06e5\u06d6\u06e2\u06ec\u06e0\u06e5\u06df\u06da\u06d8\u06e0\u06e8\u06e5\u06d6\u06d8\u06db\u06e0\u06ec\u06db\u06e6\u06e4\u06e6\u06da\u06e5"

    goto :goto_4

    :sswitch_14
    const-string v0, "\u06e2\u06df\u06e5\u06d8\u06e6\u06d7\u06d7\u06ec\u06e5\u06d6\u06d8\u06e6\u06d8\u06df\u06ec\u06dc\u06e0\u06e2\u06e8\u06e1\u06ec\u06e8\u06dc\u06d8\u06eb\u06e6\u06e7\u06d7\u06df\u06d6\u06e7\u06e1\u06e8\u06db\u06d6\u06d9\u06ec\u06e2\u06dc\u06d8\u06dc\u06e6\u06ec\u06df\u06db\u06e5\u06e2\u06d9\u06db\u06eb"

    goto :goto_4

    :sswitch_15
    const-string v0, "\u06d8\u06df\u06eb\u06ec\u06e4\u06e6\u06e8\u06e5\u06e5\u06d8\u06e7\u06e0\u06d8\u06dc\u06d6\u06e7\u06da\u06ec\u06e1\u06d8\u06ec\u06e0\u06d8\u06d8\u06df\u06e8\u06dc\u06d8\u06dc\u06db\u06dc\u06e0\u06e6\u06e8\u06e1\u06d9\u06d7\u06e5\u06ec\u06d6\u06d6\u06e4\u06df\u06e5\u06e8\u06e5\u06d8\u06d8\u06df\u06e5\u06d8\u06d9\u06d6\u06e5"

    goto :goto_3

    :sswitch_16
    const-string v0, "\u06ec\u06df\u06e8\u06e5\u06e0\u06d8\u06ec\u06e8\u06d7\u06d7\u06d7\u06e6\u06d6\u06e7\u06eb\u06ec\u06df\u06eb\u06d7\u06e5\u06d9\u06d9\u06ec\u06e4\u06d8\u06dc\u06e1\u06d8\u06e6\u06e0\u06d8\u06d8\u06df\u06e1\u06e6\u06d8\u06df\u06e7\u06d7\u06e0\u06e6\u06d6\u06d8\u06d7\u06e2\u06d8\u06d8\u06e1\u06e0\u06e1\u06d8\u06eb\u06db\u06ec\u06e5\u06e6\u06e2\u06e2\u06e7\u06dc\u06d8"

    goto :goto_3

    :sswitch_17
    const-string v0, "\u06e1\u06e4\u06e6\u06d8\u06eb\u06d6\u06e0\u06e8\u06e8\u06e2\u06d6\u06e2\u06e8\u06d9\u06db\u06da\u06d8\u06d7\u06e8\u06d8\u06db\u06df\u06e1\u06d8\u06d7\u06d9\u06e6\u06d8\u06e0\u06eb\u06dc\u06d8\u06d7\u06e6\u06e4\u06ec\u06dc\u06db\u06da\u06e6\u06e5\u06d8"

    goto/16 :goto_0

    :sswitch_18
    iget-object v0, p0, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;->Ooooo00:Lz2/za;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    const-string v0, "\u06e2\u06df\u06e7\u06e2\u06eb\u06e6\u06dc\u06dc\u06e6\u06d8\u06e7\u06d7\u06e8\u06e7\u06e4\u06df\u06dc\u06eb\u06e5O\u06eb\u06dc\u06d6\u06e7\u06d8\u06e6\u06e6\u06d8"

    goto/16 :goto_0

    :sswitch_19
    const v6, -0x1aacca7f

    const-string v0, "\u06ec\u06d6\u06db\u06d8\u06d8\u06e5\u06dc\u06ec\u06ec\u06eb\u06da\u06e5\u06da\u06df\u06e0\u06eb\u06d7\u06e6\u06d8\u06e7\u06dc\u06e5\u06da\u06e1\u06e6\u06d8\u06d8\u06d8\u06d6\u06d8\u06dc\u06db\u06dc\u06e6\u06d7\u06dc\u06d8\u06e8\u06eb\u06d8\u06d8\u06e2\u06e8\u06ec\u06db\u06d8\u06e6"

    :goto_5
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v10

    xor-int/2addr v10, v6

    sparse-switch v10, :sswitch_data_5

    goto :goto_5

    :sswitch_1a
    const-string v0, "\u06db\u06e8\u06da\u06e6\u06e2\u06d6\u06e8\u06dc\u06e7\u06d8\u06e2\u06eb\u06e0\u06e7\u06db\u06e6\u06da\u06dc\u06e5\u06e5\u06eb\u06d6\u06e2\u06e5\u06ec\u06d7\u06e8\u06e8\u06d6\u06d8\u06e8\u06d8"

    goto :goto_5

    :sswitch_1b
    const-string v0, "\u06dc\u06d7\u06da\u06db\u06e0\u06e5\u06d8\u06e8\u06e0\u06e1\u06e2\u06da\u06e0\u06e4\u06db\u06eb\u06dc\u06e6\u06e5\u06d6\u06da\u06e6\u06d8\u06e7\u06e2\u06e6\u06e0\u06e1\u06dc\u06d8\u06d7\u06dc\u06d7\u06d7\u06e5\u06e7\u06d8\u06db\u06d7\u06e8\u06d9\u06eb\u06d6\u06db\u06db\u06e5\u06d8"

    goto :goto_5

    :sswitch_1c
    const v10, 0x13a60cd1

    const-string v0, "\u06d6\u06e4\u06d6\u06d8\u06e5\u06dc\u06ec\u06e6\u06e1\u06e2\u06dc\u06ec\u06e1\u06d8\u06e2\u06e1\u06e7\u06d8\u06e2\u06d6\u06e2\u06e5\u06e8\u06e6\u06d6\u06da\u06e7\u06d7\u06dc\u06e6\u06d8\u06e7\u06e1\u06d6\u06d8"

    :goto_6
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v11

    xor-int/2addr v11, v10

    sparse-switch v11, :sswitch_data_6

    goto :goto_6

    :sswitch_1d
    const-string v0, "\u06df\u06e7\u06e6\u06e5\u06d8\u06df\u06e8\u06ec\u06dc\u06e7\u06d7\u06e1\u06d8\u06ec\u06d9\u06eb\u06df\u06df\u06e4\u06eb\u06e2\u06e8\u06dc\u06d6\u06d8\u06e5\u06e8\u06eb\u06d9\u06da\u06d7\u06e8\u06e4\u06e8\u06e4\u06da"

    goto :goto_6

    :cond_2
    const-string v0, "\u06eb\u06da\u06eb\u06e6\u06e6\u06e6\u06e1\u06e2\u06e5\u06e8\u06e7\u06e6\u06d8\u06e8\u06e0\u06dc\u06d8\u06da\u06d9\u06d6\u06e2\u06e6\u06e1\u06d8\u06e8\u06e8\u06eb\u06e1\u06e0\u06d8\u06df\u06dc\u06e2\u06d7\u06e4\u06dc\u06d7\u06db\u06d6\u06e5\u06d6\u06d7\u06e1\u06e7\u06d8\u06ec\u06dc\u06d8\u06e8\u06e0"

    goto :goto_6

    :sswitch_1e
    if-ne v7, p1, :cond_2

    const-string v0, "\u06e2\u06e2\u06d8\u06d8\u06e4\u06d6\u06d8\u06df\u06d9\u06e2\u06eb\u06d6\u06e7\u06e6\u06d7\u06db\u06d6\u06e2\u06e4\u06e1\u06ec\u06e5\u06df\u06e1\u06eb\u06e8\u06d8\u06d8"

    goto :goto_6

    :sswitch_1f
    const-string v0, "\u06d7\u06df\u06ec\u06eb\u06db\u06e5\u06d8\u06d7\u06e2\u06d8\u06d8\u06d9\u06e5\u06dc\u06dc\u06dc\u06dc\u06d6\u06df\u06dc\u06d8\u06ec\u06e1\u06e1\u06d8\u06e8\u06d7\u06e6\u06e6\u06df\u06dc\u06d6\u06db\u06e2\u06e5\u06e4\u06ec\u06e6\u06d8"

    goto :goto_5

    :sswitch_20
    const-string v0, "\u06df\u06ec\u06d6\u06d9\u06e1\u06e6\u06d8\u06e8\u06d6\u06df\u06d6\u06e4\u06db\u06d9\u06e7\u06e8\u06d8\u06df\u06e6\u06dc\u06d8\u06d7\u06df\u06e8\u06e2\u06db\u06e6\u06e7\u06e5\u06e7\u06d8\u06dc\u06e5\u06e6"

    goto/16 :goto_0

    :sswitch_21
    const/4 v4, 0x1

    const-string v0, "\u06e7\u06da\u06da\u06e2\u06e1\u06e4\u06ec\u06db\u06e6\u06e0\u06e6\u06e7\u06d8\u06d7\u06df\u06d8\u06d8\u06df\u06da\u06da\u06db\u06eb\u06e6\u06d8\u06e1\u06dc\u06d8\u06e6\u06e8\u06e8\u06e2\u06df\u06eb\u06e0\u06e8\u06eb\u06d9\u06db\u06e4\u06da\u06e5\u06d8\u06d9\u06e0\u06ec\u06dc\u06df\u06e0\u06d9\u06e8\u06d9\u06e2\u06e8\u06d6\u06d8\u06e8\u06d6\u06dc\u06d8"

    goto/16 :goto_0

    :sswitch_22
    const-string v0, "\u06e1\u06eb\u06da\u06e8\u06e6\u06e1\u06e6\u06d9\u06d8\u06d8\u06d6\u06e7\u06e0\u06d7\u06e1\u06ec\u06e6\u06d9\u06e0\u06df\u06e4\u06ec\u06e4\u06eb\u06dc\u06d8\u06db\u06e0\u06e7\u06e0\u06df\u06e1\u06d8"

    move v3, v4

    goto/16 :goto_0

    :sswitch_23
    const-string v0, "\u06e0\u06e4\u06e5\u06db\u06e5\u06db\u06dc\u06e6\u06df\u06e0\u06eb\u06e1\u06d8\u06e2\u06da\u06e7\u06d9\u06e6\u06d8\u06d8\u06e8\u06df\u06e1\u06d8\u06e4\u06d6\u06e6\u06d8\u06e5\u06e6\u06e1\u06d8\u06e0\u06d8\u06d8\u06e4\u06d6\u06e2\u06dc\u06dc\u06db\u06d7\u06ec\u06e7\u06eb\u06e2\u06e6\u06e1\u06e7\u06db\u06e6\u06d6\u06d8\u06e7\u06eb\u06eb\u06df\u06d6\u06e7"

    goto/16 :goto_0

    :sswitch_24
    const-string v0, "\u06e0\u06e7\u06d8\u06d8\u06ec\u06dc\u06d8\u06dc\u06e0\u06d9\u06e0\u06d6\u06d8\u06db\u06e2\u06e6\u06d8\u06e1\u06e7\u06dc\u06d8\u06e1\u06db\u06da\u06e8\u06e5\u06d8\u06eb\u06df\u06dc\u06d8\u06d9\u06ec\u06d8\u06d8\u06ec\u06d7\u06ec\u06e2\u06eb\u06dc"

    move v3, v2

    goto/16 :goto_0

    :sswitch_25
    invoke-virtual {v5, v3}, Landroid/view/View;->setSelected(Z)V

    const-string v0, "\u06e7\u06e1\u06e8\u06e2\u06ec\u06ec\u06d6\u06e0\u06d6\u06db\u06e1\u06db\u06d6\u06ec\u06ec\u06e2\u06e5\u06eb\u06d9\u06eb\u06d8\u06d8\u06d9\u06e5\u06d9\u06e0\u06dc\u06da\u06e2\u06df\u06e5\u06e8\u06e1\u06df\u06eb\u06d9"

    goto/16 :goto_0

    :sswitch_26
    const v6, -0x5e92749c

    const-string v0, "\u06eb\u06df\u06e5\u06db\u06e2\u06e1\u06df\u06dc\u06e8\u06e1\u06eb\u06d8\u06d8\u06e4\u06d9\u06e5\u06d8\u06e4\u06d8\u06e8\u06ec\u06e7\u06d8\u06d8\u06dc\u06e6\u06e1\u06df\u06e5\u06d8\u06e2\u06d9\u06e8\u06d8\u06e8\u06d7\u06eb\u06dc\u06e8\u06d6\u06d9\u06d8\u06e1\u06e1\u06d9"

    :goto_7
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v10

    xor-int/2addr v10, v6

    sparse-switch v10, :sswitch_data_7

    goto :goto_7

    :sswitch_27
    const v10, 0x60bbf5bd

    const-string v0, "\u06d8\u06d9\u06e8\u06d8\u06d7\u06e8\u06db\u06d6\u06e7\u06dc\u06d8\u06e0\u06dc\u06e2\u06ec\u06e7\u06e1\u06d8\u06df\u06ec\u06d6\u06d6\u06da\u06e0\u06da\u06e7\u06d6\u06e6\u06d7\u06d6\u06e2\u06e2\u06e1\u06d7\u06d8\u06e6\u06e0\u06eb\u06e2\u06e4\u06d6\u06d8\u06e0\u06da\u06e7\u06e0\u06e0\u06d8\u06eb\u06eb\u06e7"

    :goto_8
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v11

    xor-int/2addr v11, v10

    sparse-switch v11, :sswitch_data_8

    goto :goto_8

    :sswitch_28
    const-string v0, "\u06eb\u06e5\u06db\u06e4\u06d6\u06e0\u06e2\u06e2\u06ec\u06eb\u06d6\u06df\u06dc\u06d8\u06e8\u06e5\u06df\u06e6\u06e8\u06e5\u06d8\u06eb\u06e8\u06d8\u06d8\u06eb\u06d8\u06d8\u06d6\u06e8\u06e7\u06d8\u06d6\u06d7\u06d7\u06d6\u06df\u06df\u06db\u06df\u06d7\u06e4\u06dc\u06eb\u06d8\u06e2\u06db\u06d6\u06d8\u06e1\u06d8\u06e4\u06eb\u06e1\u06d6\u06d8"

    goto :goto_7

    :sswitch_29
    const-string v0, "\u06d9\u06e0\u06e2\u06e7\u06e6\u06e7\u06d8\u06db\u06e2\u06d8\u06e4\u06d6\u06d6\u06d8\u06e5\u06db\u06da\u06d8\u06e6\u06e0\u06d6\u06e4\u06d6\u06d8\u06e7\u06e2\u06e5\u06d8\u06dc\u06d8\u06d9\u06e5\u06df\u06e0\u06da\u06d8\u06ec\u06e4\u06df\u06e1\u06dc\u06da\u06d8\u06d6\u06e1\u06df\u06d9\u06e4\u06e7\u06da\u06ec\u06e6\u06d8"

    goto :goto_7

    :cond_3
    const-string v0, "\u06e8\u06db\u06e6\u06d8\u06e6\u06e0\u06ec\u06da\u06e4\u06d7\u06df\u06ec\u06da\u06df\u06e5\u06ec\u06dc\u06ec\u06dc\u06d8\u06da\u06d7\u06e5\u06e5\u06d8\u06e1\u06d8\u06da\u06df\u06e5\u06d8\u06ec\u06d7\u06e5\u06d8\u06d8\u06df\u06d6\u06db\u06e5\u06eb"

    goto :goto_8

    :sswitch_2a
    if-eqz v3, :cond_3

    const-string v0, "\u06db\u06e1\u06eb\u06e8\u06e2\u06e5\u06e5\u06db\u06e5\u06d8\u06ec\u06d9\u06dc\u06d6\u06e2\u06d8\u06e0\u06dc\u06d8\u06d9\u06d9\u06e0\u06e1\u06d9\u06e0\u06e5\u06e2\u06e8\u06d8\u06e7\u06e0\u06e5\u06e4\u06e8\u06e6\u06d8\u06d8\u06ec\u06df\u06d9\u06eb\u06df\u06e0\u06e0\u06da"

    goto :goto_8

    :sswitch_2b
    const-string v0, "\u06dc\u06e5\u06d8\u06e7\u06e8\u06df\u06e7\u06e8\u06ec\u06e1\u06e4\u06e5\u06d8\u06e5\u06dc\u06d6\u06e2\u06dc\u06d7\u06e5\u06ec\u06d9\u06d6\u06dc\u06d8\u06e4\u06e0\u06e2\u06e7\u06d8\u06e0\u06d6\u06e7\u06eb\u06e2\u06e1\u06eb\u06e2\u06e7\u06d8\u06eb\u06e6\u06e1"

    goto :goto_8

    :sswitch_2c
    const-string v0, "\u06da\u06ec\u06da\u06ec\u06d7\u06e5\u06ec\u06dc\u06dc\u06e1\u06eb\u06e1\u06e6\u06dc\u06e0\u06e2\u06e7\u06e8\u06d8\u06e4\u06e1\u06da\u06e8\u06e0\u06e6\u06d8\u06da\u06e2\u06d6\u06e5\u06df\u06db\u06df\u06e6\u06d8\u06e5\u06df\u06d9\u06e2\u06d6\u06e1\u06d8\u06e5\u06da\u06db"

    goto :goto_7

    :sswitch_2d
    const-string v0, "\u06e7\u06da\u06df\u06e2\u06e1\u06df\u06d7\u06d7\u06e7\u06eb\u06e7\u06d8\u06d8\u06e5\u06e7\u06e4\u06db\u06d9\u06eb\u06eb\u06e4\u06e1\u06d8\u06d7\u06ec\u06e7\u06da\u06d8\u06d9\u06e1\u06e7\u06e1\u06d8\u06e1\u06d6\u06d8\u06e4\u06ec\u06d8\u06d8\u06d7\u06ec\u06e7\u06e5\u06df\u06e4\u06e4\u06eb\u06e6\u06d8\u06d9\u06e8\u06e2"

    goto/16 :goto_0

    :sswitch_2e
    invoke-direct {p0, p1}, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;->OooO0oo(I)V

    const-string v0, "\u06e7\u06dc\u06e5\u06d8\u06eb\u06da\u06d8\u06df\u06e5\u06e8\u06e2\u06d8\u06e1\u06d8\u06e7\u06e2\u06d8\u06d8\u06ec\u06df\u06e8\u06d8\u06e2\u06e6\u06e8\u06d8\u06e4\u06e7\u06e8\u06d8\u06df\u06da\u06eb\u06e5\u06d9\u06e5\u06d8"

    goto/16 :goto_0

    :sswitch_2f
    add-int/lit8 v1, v7, 0x1

    const-string v0, "\u06dc\u06e1\u06d6\u06d8\u06dc\u06e2\u06e1\u06d8\u06e7\u06e8\u06e2\u06da\u06eb\u06df\u06e5\u06e7\u06e1\u06db\u06e8\u06e4\u06db\u06d8\u06ec\u06eb\u06e4\u06e8\u06d8\u06e5\u06d6\u06e1\u06d8\u06e5\u06e6\u06e4\u06dc\u06e6\u06e1\u06d7\u06d9\u06d8\u06e0\u06e6\u06db\u06e2\u06e6\u06db\u06db\u06e1\u06e7\u06e1"

    goto/16 :goto_0

    :sswitch_30
    const-string v0, "\u06e5\u06e5\u06e4\u06e0\u06dc\u06e2\u06e0\u06e8\u06d8\u06db\u06e2\u06e2\u06e0\u06df\u06e5\u06d8\u06ec\u06e6\u06e0\u06d8\u06e8\u06e4\u06ec\u06db\u06df\u06ec\u06d9\u06e7\u06d7\u06e8\u06d7\u06da\u06dc\u06d8\u06eb\u06da\u06e7\u06e4\u06df\u06e6\u06eb\u06d6\u06d8\u06e1\u06d8\u06dc\u06e0\u06ec\u06d9\u06e2\u06e5\u06d8\u06d8\u06e2\u06e2\u06e6\u06d8"

    move v7, v1

    goto/16 :goto_0

    :sswitch_31
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ViewPager has not been bound."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_32
    const-string v0, "\u06e6\u06e5\u06e4\u06e0\u06d7\u06e1\u06d8\u06e7\u06dc\u06e6\u06dc\u06e0\u06d7\u06d9\u06e5\u06d8\u06d8\u06eb\u06e0\u06d7\u06da\u06dc\u06d6\u06d8\u06d7\u06e4\u06da\u06e0\u06d6\u06d8\u06d8\u06d8\u06dc\u06d8\u06d9\u06dc\u06d8\u06e6\u06d8\u06e8\u06e4\u06e5\u06e1\u06ec\u06e5"

    goto/16 :goto_0

    :sswitch_33
    const-string v0, "\u06db\u06d6\u06d8\u06d8\u06e1\u06e7\u06e5\u06e4\u06df\u06e1\u06eb\u06e4\u06d6\u06d8\u06e1\u06d7\u06e1\u06d6\u06d6\u06df\u06e4\u06e1\u06db\u06ec\u06d6\u06df\u06d7\u06d8\u06db\u06d8\u06e0\u06d9\u06df\u06e8\u06d9\u06e6\u06e0\u06db\u06e6\u06e2\u06dc\u06eb\u06e5\u06d8\u06ec\u06e1\u06dc\u06e5\u06da\u06e5\u06d8\u06e4\u06eb\u06e5\u06d8\u06e6\u06e6\u06d8"

    goto/16 :goto_0

    :sswitch_34
    const-string v0, "\u06e0\u06e7\u06d8\u06d8\u06ec\u06dc\u06d8\u06dc\u06e0\u06d9\u06e0\u06d6\u06d8\u06db\u06e2\u06e6\u06d8\u06e1\u06e7\u06dc\u06d8\u06e1\u06db\u06da\u06e8\u06e5\u06d8\u06eb\u06df\u06dc\u06d8\u06d9\u06ec\u06d8\u06d8\u06ec\u06d7\u06ec\u06e2\u06eb\u06dc"

    goto/16 :goto_0

    :sswitch_35
    const-string v0, "\u06e7\u06dc\u06e5\u06d8\u06eb\u06da\u06d8\u06df\u06e5\u06e8\u06e2\u06d8\u06e1\u06d8\u06e7\u06e2\u06d8\u06d8\u06ec\u06df\u06e8\u06d8\u06e2\u06e6\u06e8\u06d8\u06e4\u06e7\u06e8\u06d8\u06df\u06da\u06eb\u06e5\u06d9\u06e5\u06d8"

    goto/16 :goto_0

    :sswitch_36
    const-string v0, "\u06d7\u06dc\u06d6\u06e8\u06d9\u06df\u06e0\u06df\u06d7\u06e5\u06ec\u06d8\u06e7\u06e2\u06e8\u06d8\u06d9\u06da\u06d7\u06d7\u06e8\u06e4\u06e0\u06d8\u06dc\u06d8\u06e7\u06da\u06e1\u06d6\u06eb\u06e8\u06d8\u06e6\u06e5\u06d8\u06da\u06d7\u06e7\u06e4\u06e7\u06e5\u06e8\u06d8\u06d8\u06d8\u06dc\u06e8\u06d8\u06ec\u06db\u06e5\u06d8"

    goto/16 :goto_0

    :sswitch_37
    const-string v0, "\u06df\u06ec\u06eb\u06e2\u06e6\u06d9\u06e4\u06dc\u06e6\u06d8\u06d8\u06ec\u06ec\u06d9\u06eb\u06df\u06df\u06e7\u06df\u06e2\u06da\u06db\u06e8\u06e0\u06e7\u06e5\u06d8\u06d7\u06e5\u06e2\u06e4\u06d8\u06da\u06df\u06e0\u06e0\u06ec\u06e6\u06eb\u06d6\u06e0\u06d8\u06d8\u06e8\u06e7\u06e6\u06d8\u06df\u06d7\u06e5\u06d8\u06e6\u06e8\u06e6\u06df\u06e2\u06e1\u06d8"

    goto/16 :goto_0

    :sswitch_38
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7f55fa48 -> :sswitch_d
        -0x7729a055 -> :sswitch_f
        -0x64fc0aea -> :sswitch_2e
        -0x5249d9b4 -> :sswitch_23
        -0x4e4bbc9a -> :sswitch_b
        -0x3b6cbd9d -> :sswitch_22
        -0x2a6a54ac -> :sswitch_24
        -0x29b418d1 -> :sswitch_26
        -0x27988ae0 -> :sswitch_1
        -0x147d4d10 -> :sswitch_21
        -0x8d7beb8 -> :sswitch_25
        -0x6e67ee5 -> :sswitch_0
        0x6d0e0f3 -> :sswitch_c
        0xfc2cb01 -> :sswitch_32
        0x1c093e6a -> :sswitch_3
        0x26e3e835 -> :sswitch_2f
        0x42ee17b3 -> :sswitch_34
        0x6754ba05 -> :sswitch_31
        0x6c5ee75f -> :sswitch_38
        0x6ee8e300 -> :sswitch_e
        0x71de82af -> :sswitch_2
        0x72b2e4fb -> :sswitch_19
        0x74a458f3 -> :sswitch_10
        0x7bd569c9 -> :sswitch_18
        0x7cefd7fc -> :sswitch_30
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x7997620a -> :sswitch_37
        -0x234187fd -> :sswitch_9
        0x1d28f5ef -> :sswitch_a
        0x441b3aa9 -> :sswitch_4
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        -0x6a7a30af -> :sswitch_8
        0x160d94e8 -> :sswitch_5
        0x372b4b3b -> :sswitch_7
        0x51dcff22 -> :sswitch_6
    .end sparse-switch

    :sswitch_data_3
    .sparse-switch
        -0x67e72a37 -> :sswitch_17
        -0x4abf656c -> :sswitch_11
        0x102aed35 -> :sswitch_36
        0x32f17711 -> :sswitch_16
    .end sparse-switch

    :sswitch_data_4
    .sparse-switch
        -0x6a8e3a4a -> :sswitch_12
        -0x64067d00 -> :sswitch_14
        -0x308533a8 -> :sswitch_13
        0x15e52592 -> :sswitch_15
    .end sparse-switch

    :sswitch_data_5
    .sparse-switch
        -0x7ea7becf -> :sswitch_1c
        -0x1f297245 -> :sswitch_20
        -0x1b5705a4 -> :sswitch_1a
        0x6a234846 -> :sswitch_33
    .end sparse-switch

    :sswitch_data_6
    .sparse-switch
        -0x19643064 -> :sswitch_1b
        0x2d6dfff9 -> :sswitch_1e
        0x3d298f61 -> :sswitch_1f
        0x6632bba0 -> :sswitch_1d
    .end sparse-switch

    :sswitch_data_7
    .sparse-switch
        -0x12205bb5 -> :sswitch_27
        0x99f1851 -> :sswitch_2d
        0x187c3939 -> :sswitch_2c
        0x5d7acbbb -> :sswitch_35
    .end sparse-switch

    :sswitch_data_8
    .sparse-switch
        0x1065ca26 -> :sswitch_2b
        0x214e8f83 -> :sswitch_28
        0x4fc1b048 -> :sswitch_29
        0x7e7c2bf5 -> :sswitch_2a
    .end sparse-switch
.end method

.method public setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V
    .locals 4

    const-string v0, "\u06da\u06d6\u06e7\u06d7\u06e6\u06e0\u06dc\u06d6\u06da\u06e6\u06d7\u06dc\u06d8\u06dc\u06e0\u06e0\u06d9\u06eb\u06da\u06d9\u06e8\u06e4\u06d6\u06da\u06e7\u06e8\u06e8\u06e2\u06e8\u06d9\u06d9\u06d7\u06d6\u06d6\u06d8\u06ec\u06eb\u06df"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x224

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x29e

    const/16 v2, 0x2a3

    const v3, 0x447881f3

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e4\u06df\u06e6\u06d8\u06e2\u06e8\u06e5\u06d8\u06e6\u06e0\u06e2\u06eb\u06dc\u06e6\u06d8\u06e6\u06d6\u06e5\u06d8\u06d6\u06e8\u06df\u06e2\u06df\u06da\u06d9\u06eb\u06df\u06d7\u06dc\u06e1\u06d8\u06db\u06e7\u06df\u06d7\u06e7\u06d8\u06d8\u06da\u06ec\u06d6\u06d8\u06df\u06da\u06dc\u06d8\u06d8\u06eb\u06dc\u06d7\u06e6\u06dc\u06df\u06e2\u06e1\u06d8"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06db\u06d8\u06dc\u06e2\u06e0\u06e7\u06d6\u06ec\u06dc\u06e5\u06e6\u06e1\u06d8\u06dc\u06e5\u06d9\u06dc\u06e2\u06d7\u06dc\u06db\u06d8\u06d8\u06db\u06e4\u06e5\u06df\u06d9\u06e1\u06db\u06eb\u06df\u06e4\u06e4\u06e4\u06e0\u06ec\u06d9\u06e1\u06d8\u06d9\u06e4\u06e7\u06d8\u06d8\u06da\u06d7\u06d8\u06e7\u06e7\u06e6\u06d6\u06da\u06db\u06df\u06db\u06e6"

    goto :goto_0

    :sswitch_2
    iput-object p1, p0, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;->OooooO0:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    const-string v0, "\u06e1\u06df\u06e2\u06e5\u06d9\u06d6\u06e5\u06e5\u06e8\u06eb\u06e7\u06dc\u06d8\u06d9\u06e7\u06d8\u06d8\u06d6\u06da\u06e6\u06e2\u06e8\u06e6\u06e2\u06e4\u06e8\u06d8\u06d9\u06e1\u06df\u06e6\u06df\u06e8\u06e6\u06e1\u06d6\u06dc\u06e7\u06e1\u06d8\u06e7\u06e7\u06e8\u06dc\u06e4\u06eb\u06eb\u06ec\u06e8\u06d6\u06ec\u06e4"

    goto :goto_0

    :sswitch_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x25df7893 -> :sswitch_3
        -0x1f022440 -> :sswitch_2
        0x8b97911 -> :sswitch_1
        0x12893d52 -> :sswitch_0
    .end sparse-switch
.end method

.method public setOnTabReselectedListener(Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator$OooO0OO;)V
    .locals 4

    const-string v0, "\u06df\u06db\u06d7\u06e4\u06d8\u06e1\u06d8\u06d9\u06da\u06d9\u06db\u06d7\u06eb\u06e8\u06df\u06e6\u06e8\u06e2\u06d8\u06d7\u06dc\u06d6\u06d8\u06d8\u06d6\u06e7\u06d8\u06e4\u06d6\u06db\u06ec\u06d8\u06e7\u06e1\u06d7\u06d6\u06e4\u06d6\u06d8\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x75

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x2ab

    const/16 v2, 0x306

    const v3, -0x36f8ea16

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06da\u06eb\u06e8\u06d8\u06e5\u06d8\u06e0\u06e1\u06eb\u06d9\u06da\u06e4\u06e6\u06d8\u06da\u06dc\u06d8\u06e2\u06d9\u06db\u06d9\u06e5\u06d8\u06e1\u06d6\u06db\u06d9\u06d8\u06e1\u06e1\u06d9\u06d6\u06dc\u06d9\u06ec\u06e4\u06e1\u06e4"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06e5\u06e8\u06db\u06dc\u06e6\u06e5\u06da\u06d8\u06eb\u06e6\u06d7\u06dc\u06eb\u06e7\u06e6\u06e0\u06e2\u06e6\u06da\u06e5\u06d8\u06d8\u06d6\u06d6\u06dc\u06d8\u06e0\u06e5\u06e8\u06d8\u06d6\u06d7\u06d7\u06e6\u06e4\u06e5\u06d8\u06e6\u06ec\u06d8"

    goto :goto_0

    :sswitch_2
    iput-object p1, p0, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;->Oooooo0:Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator$OooO0OO;

    const-string v0, "\u06e0\u06da\u06d8\u06d8\u06e7\u06dc\u06e4\u06e6\u06da\u06d6\u06da\u06d8\u06dc\u06d9\u06d6\u06e1\u06ec\u06d9\u06e4\u06e0\u06e5\u06e7\u06d8\u06e7\u06e2\u06e8\u06d8\u06e5\u06e0\u06e8\u06e8\u06e2\u06d6\u06e5\u06d6\u06d8\u06d8\u06e8\u06d8\u06e6\u06d8\u06e5\u06df\u06d7\u06e5\u06e7\u06e5\u06d8\u06d8\u06d8\u06df\u06ec\u06e2\u06eb"

    goto :goto_0

    :sswitch_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x6c9f0737 -> :sswitch_1
        -0x5f111690 -> :sswitch_2
        -0xf81110d -> :sswitch_3
        0x365d642c -> :sswitch_0
    .end sparse-switch
.end method

.method public setViewPager(Landroidx/viewpager/widget/ViewPager;)V
    .locals 6

    const/4 v2, 0x0

    const-string v0, "\u06d9\u06eb\u06e8\u06e8\u06d8\u06d6\u06d8\u06e8\u06d8\u06d6\u06da\u06d9\u06df\u06e7\u06e1\u06d8\u06d6\u06e7\u06db\u06eb\u06dc\u06e5\u06e4\u06e2\u06d9\u06e8\u06e6\u06d6\u06e2\u06da\u06d8\u06d9\u06d7\u06e8\u06d8\u06d8\u06eb\u06e4\u06d8\u06d8\u06e0\u06df\u06e2\u06e1\u06e5\u06eb\u06ec\u06e5\u06d8\u06d7\u06d7\u06da\u06e8\u06e7\u06d6\u06d8"

    move-object v1, v2

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/16 v4, 0x2fb

    xor-int/2addr v3, v4

    xor-int/lit16 v3, v3, 0x3d3

    const/16 v4, 0xa3

    const v5, -0x7beb7966

    xor-int/2addr v3, v4

    xor-int/2addr v3, v5

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e8\u06e0\u06e5\u06d8\u06e4\u06df\u06e5\u06e6\u06df\u06d8\u06d8\u06df\u06e5\u06e5\u06d8\u06db\u06e5\u06d8\u06d8\u06d8\u06eb\u06d8\u06df\u06dc\u06d8\u06e8\u06da\u06dc\u06e7\u06eb\u06d6\u06d8\u06e2\u06df\u06dc\u06d8\u06e7\u06db\u06e6\u06d8\u06e4\u06d6\u06e1\u06d8"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06e5\u06ec\u06e0\u06d6\u06e2\u06db\u06e6\u06ec\u06e1\u06d6\u06e5\u06d6\u06d8\u06e0\u06d7\u06da\u06e5\u06e5\u06e6\u06dc\u06e5\u06d7\u06e7\u06e5\u06e0\u06e1\u06ec\u06e8\u06e4\u06db\u06e8\u06d8\u06e6\u06e0\u06e5\u06e1\u06eb\u06e2\u06eb\u06e4\u06d7\u06dc\u06d8\u06da\u06e1\u06dc\u06e6\u06d8\u06d7\u06d7\u06ec"

    goto :goto_0

    :sswitch_2
    iget-object v1, p0, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;->Ooooo0o:Landroidx/viewpager/widget/ViewPager;

    const-string v0, "\u06da\u06db\u06dc\u06eb\u06ec\u06e5\u06d7\u06e1\u06db\u06d8\u06e1\u06dc\u06d8\u06df\u06d8\u06d8\u06ec\u06eb\u06e0\u06e6\u06eb\u06db\u06dc\u06eb\u06d6\u06d8\u06e5\u06d6\u06e5\u06d8\u06e0\u06e8\u06ec"

    goto :goto_0

    :sswitch_3
    const v3, 0x1fb85e89

    const-string v0, "\u06e0\u06e0\u06eb\u06eb\u06ec\u06e7\u06e8\u06eb\u06d7\u06d7\u06e2\u06da\u06eb\u06e1\u06d8\u06e8\u06dc\u06e7\u06d8\u06eb\u06eb\u06d6\u06e7\u06e8\u06e4\u06da\u06e2\u06df\u06d8\u06eb\u06e2\u06d7\u06e8\u06e6\u06d8\u06d9\u06e4\u06e0\u06e2\u06dc\u06df\u06e8\u06e0\u06e2\u06da\u06da\u06d8\u06e0\u06d7"

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    xor-int/2addr v4, v3

    sparse-switch v4, :sswitch_data_1

    goto :goto_1

    :sswitch_4
    const v4, -0x61866a3d

    const-string v0, "\u06e4\u06e8\u06e5\u06d8\u06dc\u06d6\u06e8\u06df\u06e4\u06dc\u06d8\u06d9\u06e0\u06da\u06e6\u06e4\u06db\u06d6\u06e4\u06e2\u06e4\u06e5\u06d8\u06e5\u06ec\u06dc\u06d8\u06db\u06e2\u06eb\u06e2\u06dc\u06d9\u06ec\u06e5\u06e6\u06d9\u06e6\u06d8\u06e8\u06e5\u06e8\u06d8\u06e7\u06da\u06e0\u06df\u06dc\u06d8\u06e6\u06df\u06d6\u06d8"

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v5

    xor-int/2addr v5, v4

    sparse-switch v5, :sswitch_data_2

    goto :goto_2

    :sswitch_5
    const-string v0, "\u06dc\u06e7\u06db\u06e6\u06ec\u06ec\u06da\u06e4\u06d7\u06db\u06d8\u06e2\u06d7\u06db\u06d8\u06e6\u06e0\u06e5\u06eb\u06e7\u06e4\u06e1\u06d8\u06e8\u06e4\u06e5\u06e7\u06d9\u06d9\u06df\u06e6\u06d6\u06d8\u06e6\u06d9\u06db\u06eb\u06e2\u06e5\u06d8\u06d7\u06d6\u06d9\u06e4\u06d6\u06e7\u06e5\u06dc"

    goto :goto_1

    :cond_0
    const-string v0, "\u06d9\u06dc\u06d6\u06d8\u06d7\u06e6\u06d7\u06df\u06d6\u06e0\u06db\u06e1\u06d8\u06e8\u06e8\u06d6\u06e7\u06da\u06d7\u06da\u06e1\u06d6\u06e2\u06ec\u06da\u06d6\u06e8\u06d8\u06d6\u06eb\u06e4\u06e6\u06e8\u06da\u06dc\u06e4\u06ec\u06e4\u06ec\u06e1\u06e1\u06ec\u06e5\u06dc\u06da\u06e4\u06d9\u06d6\u06e1\u06d8\u06e2\u06e6\u06da\u06df\u06e6\u06e8"

    goto :goto_2

    :sswitch_6
    if-ne v1, p1, :cond_0

    const-string v0, "\u06da\u06e4\u06e5\u06e8\u06d9\u06d6\u06d8\u06d8\u06d9\u06d8\u06d8\u06e2\u06da\u06e8\u06d8\u06e1\u06dc\u06d9\u06e6\u06e0\u06e5\u06e1\u06e4\u06e5\u06da\u06eb\u06e8\u06d8\u06e4\u06dc\u06e8\u06e7\u06e1"

    goto :goto_2

    :sswitch_7
    const-string v0, "\u06e0\u06d8\u06d9\u06d6\u06df\u06e0\u06da\u06dc\u06da\u06e5\u06eb\u06e1\u06e6\u06e4\u06e2\u06da\u06e0\u06d8\u06d6\u06d8\u06d8\u06df\u06e8\u06e1\u06e0\u06d7\u06e2\u06e2\u06db\u06d9\u06dc\u06d7\u06dc\u06e6\u06df\u06da\u06e8\u06db\u06e7\u06e6\u06d8\u06d9\u06e0\u06e6\u06d8\u06e4\u06d9\u06e8"

    goto :goto_2

    :sswitch_8
    const-string v0, "\u06e0\u06da\u06e1\u06d8\u06ec\u06da\u06d6\u06ec\u06d8\u06e5\u06d7\u06e8\u06e8\u06d8\u06e7\u06da\u06e5\u06e7\u06da\u06e1\u06d9\u06d7\u06e6\u06df\u06e1\u06e5\u06e2\u06d7\u06e7\u06d9\u06dc\u06d8"

    goto :goto_1

    :sswitch_9
    const-string v0, "\u06dc\u06e2\u06d8\u06ec\u06e2\u06d8\u06ec\u06da\u06e7\u06db\u06da\u06e1\u06dc\u06da\u06dc\u06d8\u06d8\u06dc\u06ec\u06e6\u06db\u06e6\u06d8\u06e8\u06e7\u06e6\u06d8\u06df\u06d6\u06d8\u06d8\u06eb\u06d9\u06e0\u06df\u06e5\u06dc\u06da\u06d6\u06db\u06dc\u06e6\u06dc\u06db\u06e5\u06d8\u06e8\u06e2\u06e4\u06da\u06e8\u06e1\u06e4\u06e0\u06e7\u06d7"

    goto :goto_1

    :sswitch_a
    const-string v0, "\u06e2\u06d8\u06e1\u06d8\u06ec\u06e6\u06d6\u06d8\u06e7\u06e8\u06e2\u06dc\u06e5\u06e0\u06e5\u06e7\u06e5\u06e4\u06e7\u06d7\u06e2\u06eb\u06dc\u06e4\u06e7\u06d7\u06d9\u06e2\u06e8\u06e6\u06e7\u06df\u06e6\u06d9\u06ec\u06eb\u06e8\u06d8"

    goto :goto_0

    :sswitch_b
    const v3, 0x622c11f3

    const-string v0, "\u06dc\u06e0\u06e7\u06e8\u06e1\u06d9\u06da\u06e2\u06d9\u06e6\u06d7\u06d6\u06d8\u06d7\u06e0\u06d8\u06e1\u06e1\u06eb\u06e2\u06ec\u06e2\u06d7\u06d6\u06e7\u06d8\u06e8\u06e6\u06e5\u06d6\u06d6\u06d7\u06e0\u06db\u06e0\u06e1\u06dc\u06d6\u06d8\u06ec\u06d8\u06da\u06e5\u06d6\u06e6\u06d8"

    :goto_3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    xor-int/2addr v4, v3

    sparse-switch v4, :sswitch_data_3

    goto :goto_3

    :sswitch_c
    const-string v0, "\u06e6\u06e8\u06d8\u06ec\u06e7\u06e6\u06d7\u06e7\u06db\u06d9\u06e5\u06dc\u06d9\u06e7\u06e0\u06d9\u06e7\u06d6\u06d9\u06e2\u06d9\u06e5\u06da\u06dc\u06d6\u06e2\u06e7\u06eb\u06ec\u06d6\u06dc\u06da\u06d6\u06df\u06d9\u06e7\u06e5\u06eb\u06e5\u06eb\u06e2\u06d6\u06e5\u06e1\u06d8\u06d9\u06e7\u06d6\u06d8\u06e0\u06d9\u06e1\u06df\u06e5\u06da"

    goto :goto_0

    :sswitch_d
    const-string v0, "\u06e7\u06e6\u06db\u06e2\u06d6\u06e2\u06e6\u06d9\u06d8\u06d8\u06e7\u06e0\u06e5\u06d8\u06dc\u06da\u06dc\u06d8\u06df\u06da\u06e4\u06d9\u06da\u06eb\u06da\u06ec\u06db\u06e1\u06ec\u06df\u06e8\u06e4\u06ec\u06d9\u06ec\u06d6\u06e1\u06e4\u06d9\u06e4\u06e8\u06dc\u06d8\u06e4\u06d8\u06d9\u06d7\u06d9\u06e8\u06d8\u06d7\u06d6\u06d8"

    goto :goto_3

    :sswitch_e
    const v4, 0x3796faa0

    const-string v0, "\u06ec\u06d6\u06db\u06e6\u06d6\u06ec\u06e4\u06d8\u06e8\u06d9\u06dc\u06d6\u06e4\u06df\u06e1\u06d8\u06e6\u06d9\u06e8\u06d8\u06e8\u06d9\u06d6\u06d8\u06e0\u06ec\u06db\u06e4\u06db\u06e8\u06d8\u06d7\u06e8\u06e0\u06e6\u06ec\u06da\u06e0\u06e0\u06d6\u06d8\u06d9\u06da\u06e5\u06d7\u06d6\u06d8\u06e4\u06ec\u06d8\u06d8\u06e2\u06e7\u06e1"

    :goto_4
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v5

    xor-int/2addr v5, v4

    sparse-switch v5, :sswitch_data_4

    goto :goto_4

    :sswitch_f
    const-string v0, "\u06ec\u06d9\u06d6\u06d8\u06e8\u06e7\u06dc\u06d8\u06e1\u06d7\u06e4\u06e8\u06e5\u06d8\u06e8\u06e7\u06d6\u06ec\u06df\u06db\u06d8\u06dc\u06e5\u06d8\u06d7\u06d9\u06d8\u06d8\u06e6\u06eb\u06e2\u06d6\u06eb\u06d6\u06d8"

    goto :goto_4

    :cond_1
    const-string v0, "\u06e4\u06e8\u06df\u06e8\u06d9\u06ec\u06d7\u06e8\u06e2\u06e7\u06d8\u06ec\u06da\u06df\u06e6\u06da\u06e2\u06e1\u06ec\u06e7\u06e8\u06d8\u06dc\u06dc\u06d8\u06d8\u06e2\u06d9\u06e7\u06e1\u06e8\u06e2\u06e1\u06d8\u06d7\u06eb\u06d6\u06e6\u06d6\u06e2\u06d6\u06e0\u06e2\u06da\u06e7\u06e4\u06e6\u06d8\u06e2\u06e7\u06dc\u06eb\u06d6\u06db\u06e4\u06e0\u06e1\u06d8"

    goto :goto_4

    :sswitch_10
    if-eqz v1, :cond_1

    const-string v0, "\u06df\u06d9\u06db\u06df\u06e2\u06df\u06d9\u06e7\u06e6\u06ec\u06e1\u06e7\u06d8\u06ec\u06df\u06d8\u06e8\u06da\u06e7\u06d8\u06e6\u06e8\u06e5\u06d8\u06ec\u06e8\u06e0\u06e5\u06e4\u06ec\u06d9\u06e2\u06df\u06e8\u06e7\u06db\u06e0\u06df\u06e1\u06d8\u06db\u06e8\u06e5\u06e7\u06da\u06d8\u06da\u06eb\u06dc\u06e2\u06e2\u06d8\u06dc\u06d6\u06d8"

    goto :goto_4

    :sswitch_11
    const-string v0, "\u06e0\u06da\u06d6\u06d8\u06e7\u06d7\u06e0\u06d8\u06e8\u06eb\u06d8\u06e7\u06dc\u06d8\u06e8\u06d9\u06dc\u06d6\u06d9\u06e1\u06d8\u06e0\u06d8\u06e7\u06d8\u06e7\u06dc\u06d7\u06e8\u06ec\u06db\u06e8\u06df\u06d6\u06d8\u06df\u06e4\u06dc\u06df\u06df\u06e2"

    goto :goto_3

    :sswitch_12
    const-string v0, "\u06d7\u06e0\u06d9\u06e2\u06e1\u06e6\u06d8\u06e5\u06dc\u06dc\u06d7\u06dc\u06da\u06e6\u06d8\u06dc\u06e6\u06db\u06d8\u06d8\u06d8\u06d9\u06d6\u06d8\u06db\u06d6\u06d6\u06d8\u06ec\u06db\u06e1\u06d8\u06db\u06d7\u06df\u06e1\u06e5\u06e4\u06d6\u06e1\u06e7\u06d8\u06d9\u06e5\u06e0\u06df\u06e1\u06e7\u06d8"

    goto :goto_3

    :sswitch_13
    invoke-virtual {v1, v2}, Landroidx/viewpager/widget/ViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    const-string v0, "\u06d6\u06e8\u06eb\u06ec\u06e6\u06d9\u06dc\u06da\u06d6\u06e1\u06d8\u06e6\u06d8\u06db\u06e7\u06dc\u06e6\u06e7\u06e4\u06e1\u06e4\u06e0\u06eb\u06e4\u06dc\u06d9\u06e0\u06e7\u06e1\u06e1\u06d9\u06df\u06ec\u06e8\u06d8\u06e4\u06d8\u06e1\u06e5\u06e5\u06e6\u06d7\u06e0\u06e0\u06da\u06eb\u06d7\u06db\u06d8\u06d8"

    goto/16 :goto_0

    :sswitch_14
    const v3, -0x2fa7daa1

    const-string v0, "\u06e5\u06d7\u06e0\u06da\u06e1\u06df\u06eb\u06eb\u06e7\u06dc\u06d9\u06e1\u06d8\u06e4\u06db\u06dc\u06d9\u06df\u06d8\u06e1\u06e7\u06e0\u06e1\u06e5\u06e7\u06d8\u06d7\u06dc\u06d6\u06e2\u06d8\u06d8\u06d8"

    :goto_5
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    xor-int/2addr v4, v3

    sparse-switch v4, :sswitch_data_5

    goto :goto_5

    :sswitch_15
    const v4, 0x2230b79e

    const-string v0, "\u06d7\u06e1\u06db\u06e5\u06d6\u06e5\u06d6\u06e1\u06db\u06e6\u06e4\u06dc\u06db\u06eb\u06e1\u06d8\u06db\u06e1\u06dc\u06d8\u06e0\u06dc\u06e1\u06d8\u06df\u06dc\u06e5\u06d8\u06d9\u06e2\u06e4\u06db\u06eb\u06e0\u06db\u06e4\u06e4\u06e8\u06df\u06df\u06e6\u06e4\u06d6\u06d8\u06db\u06ec\u06d6\u06eb\u06e6\u06d7\u06e0\u06ec"

    :goto_6
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v5

    xor-int/2addr v5, v4

    sparse-switch v5, :sswitch_data_6

    goto :goto_6

    :sswitch_16
    const-string v0, "\u06e4\u06df\u06d8\u06d8\u06da\u06e0\u06e1\u06e0\u06e5\u06ec\u06e8\u06e6\u06d9\u06da\u06db\u06d6\u06d8\u06e0\u06eb\u06dc\u06d8\u06e8\u06d8\u06d7\u06df\u06e0\u06d8\u06d6\u06e8\u06e1\u06dc\u06ec\u06e0\u06e5\u06eb\u06eb\u06db\u06da\u06d8\u06d8\u06e1\u06ec\u06d8\u06da\u06e5\u06e7"

    goto :goto_6

    :sswitch_17
    const-string v0, "\u06e8\u06e1\u06e5\u06d8\u06e8\u06da\u06e1\u06d8\u06dc\u06e6\u06ec\u06dc\u06e7\u06e0\u06d9\u06e6\u06e0\u06e7\u06eb\u06dc\u06e6\u06d7\u06e1\u06d8\u06d9\u06e6\u06d6\u06d8\u06e8\u06eb\u06df\u06d9\u06dc\u06ec\u06e8\u06e0\u06e4\u06e6\u06e2\u06d6\u06ec\u06d9\u06e6\u06d8\u06e6\u06e6\u06d6\u06d8\u06e2\u06e6\u06e8\u06da\u06da\u06e6\u06d8\u06eb\u06e7\u06e5\u06d8\u06d8\u06df\u06e6\u06d8"

    goto :goto_5

    :cond_2
    const-string v0, "\u06e5\u06db\u06e4\u06dc\u06e1\u06e6\u06e6\u06dc\u06da\u06d9\u06e2\u06d7\u06da\u06d7\u06dc\u06d8\u06e4\u06ec\u06e2\u06ec\u06d7\u06df\u06db\u06e6\u06d6\u06d8\u06e1\u06d8\u06df\u06e4\u06eb\u06e7\u06e5\u06d7\u06db\u06e1\u06e5\u06dc\u06e8\u06e8\u06d7\u06e1\u06db\u06da\u06d8\u06e6\u06da\u06da\u06e0\u06e0"

    goto :goto_6

    :sswitch_18
    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v0, "\u06e6\u06e4\u06dc\u06d8\u06e0\u06e7\u06e0\u06e2\u06ec\u06eb\u06eb\u06ec\u06db\u06da\u06d6\u06da\u06da\u06d8\u06e2\u06d8\u06df\u06db\u06d7\u06dc\u06e1\u06eb\u06d8\u06d7\u06e1\u06e5\u06d8"

    goto :goto_6

    :sswitch_19
    const-string v0, "\u06e2\u06df\u06e5\u06ec\u06d9\u06db\u06e8\u06d9\u06dc\u06ec\u06db\u06d9\u06df\u06ec\u06e4\u06e5\u06eb\u06d7\u06d7\u06e1\u06dc\u06e6\u06dc\u06e5\u06e4\u06ec\u06d7\u06e8\u06d7\u06df"

    goto :goto_5

    :sswitch_1a
    const-string v0, "\u06eb\u06e7\u06e5\u06d8\u06d6\u06ec\u06e7\u06d9\u06db\u06e5\u06e4\u06d6\u06df\u06e4\u06d6\u06eb\u06db\u06dc\u06e4\u06db\u06dc\u06d8\u06e5\u06da\u06d6\u06d7\u06e8\u06e8\u06d8\u06db\u06df\u06e1"

    goto :goto_5

    :sswitch_1b
    const-string v0, "\u06e8\u06e2\u06d6\u06d8\u06db\u06df\u06e4\u06e7\u06d6\u06dc\u06df\u06e7\u06df\u06d7\u06da\u06e8\u06d8\u06e2\u06eb\u06db\u06e7\u06d9\u06e2\u06e2\u06e2\u06dc\u06d9\u06e7\u06eb\u06e6\u06e0\u06d6"

    goto/16 :goto_0

    :sswitch_1c
    iput-object p1, p0, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;->Ooooo0o:Landroidx/viewpager/widget/ViewPager;

    const-string v0, "\u06ec\u06dc\u06ec\u06d7\u06e8\u06d8\u06d8\u06e4\u06e5\u06d6\u06d8\u06d8\u06da\u06dc\u06da\u06d9\u06dc\u06e6\u06d8\u06d8\u06da\u06e0\u06e5\u06e8\u06df\u06ec\u06d8\u06e8\u06d8\u06e4\u06e7\u06db"

    goto/16 :goto_0

    :sswitch_1d
    invoke-virtual {p1, p0}, Landroidx/viewpager/widget/ViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    const-string v0, "\u06e4\u06e1\u06ec\u06da\u06e7\u06d8\u06d8\u06df\u06d6\u06e1\u06d6\u06dc\u06e8\u06e2\u06e7\u06d6\u06d8\u06e0\u06e5\u06ec\u06eb\u06df\u06d6\u06d8\u06d6\u06db\u06e5\u06d8\u06dc\u06dc\u06ec\u06e5\u06e7\u06d9\u06e7\u06e8\u06e5\u06d8\u06e5\u06d8\u06df\u06da\u06e0\u06e5\u06dc\u06e8\u06e4\u06eb\u06da\u06df\u06d9\u06eb\u06e0\u06e7\u06d7\u06df\u06e6\u06d8\u06d8\u06d8"

    goto/16 :goto_0

    :sswitch_1e
    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;->OooO00o()V

    const-string v0, "\u06e6\u06d6\u06e8\u06d8\u06e7\u06e2\u06d6\u06e7\u06e2\u06ec\u06df\u06e4\u06e1\u06d8\u06e1\u06e7\u06e8\u06d8\u06d8\u06df\u06e0\u06d9\u06e5\u06d8\u06ec\u06eb\u06e1\u06e8\u06df\u06e8\u06e2\u06e6\u06db\u06e6\u06d9\u06d8\u06d8\u06db\u06e8\u06e7\u06d8\u06dc\u06ec\u06d6\u06e1\u06e7\u06e5"

    goto/16 :goto_0

    :sswitch_1f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ViewPager does not have adapter instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_20
    const-string v0, "\u06db\u06db\u06ec\u06da\u06e6\u06d8\u06d6\u06e5\u06e2\u06d7\u06e0\u06e6\u06d8\u06e0\u06e1\u06e8\u06d8\u06d6\u06e0\u06d6\u06e7\u06d8\u06eb\u06da\u06e5\u06e7\u06d8\u06e4\u06d7\u06da\u06df\u06dc\u06d6\u06d8\u06d9\u06e0\u06db\u06d7\u06da\u06eb\u06e0\u06dc\u06d8\u06d8\u06db\u06d8"

    goto/16 :goto_0

    :sswitch_21
    const-string v0, "\u06d6\u06e8\u06eb\u06ec\u06e6\u06d9\u06dc\u06da\u06d6\u06e1\u06d8\u06e6\u06d8\u06db\u06e7\u06dc\u06e6\u06e7\u06e4\u06e1\u06e4\u06e0\u06eb\u06e4\u06dc\u06d9\u06e0\u06e7\u06e1\u06e1\u06d9\u06df\u06ec\u06e8\u06d8\u06e4\u06d8\u06e1\u06e5\u06e5\u06e6\u06d7\u06e0\u06e0\u06da\u06eb\u06d7\u06db\u06d8\u06d8"

    goto/16 :goto_0

    :sswitch_22
    const-string v0, "\u06ec\u06d7\u06e2\u06e4\u06da\u06e8\u06e5\u06dc\u06d9\u06d8\u06e8\u06eb\u06d9\u06ec\u06ec\u06e5\u06db\u06e4\u06e6\u06e2\u06e8\u06d8\u06eb\u06e1\u06d7\u06d9\u06df\u06e0\u06e6\u06d7\u06d6\u06e8\u06da\u06da\u06e8\u06e6\u06d8\u06da\u06e4\u06e8\u06d8\u06d8\u06df\u06df\u06db\u06d8\u06e5\u06d8\u06db\u06dc\u06e5"

    goto/16 :goto_0

    :sswitch_23
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7d911232 -> :sswitch_1f
        -0x63516db3 -> :sswitch_1c
        -0x626c15a8 -> :sswitch_14
        -0x5af651c5 -> :sswitch_b
        -0x4d6521b6 -> :sswitch_2
        -0x3369a9cd -> :sswitch_13
        -0x30494cda -> :sswitch_23
        -0x2f9fc07a -> :sswitch_1e
        0x52526a8 -> :sswitch_1d
        0xb939cf9 -> :sswitch_3
        0x123e6537 -> :sswitch_0
        0x16db8743 -> :sswitch_23
        0x53fa7576 -> :sswitch_1
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x7f44985f -> :sswitch_a
        -0x7a15ed76 -> :sswitch_20
        -0x84ab759 -> :sswitch_4
        0x4f563ab4 -> :sswitch_9
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        -0x416abb2c -> :sswitch_6
        0x2200deb7 -> :sswitch_5
        0x5121bf48 -> :sswitch_7
        0x7ae01451 -> :sswitch_8
    .end sparse-switch

    :sswitch_data_3
    .sparse-switch
        -0x2b2a97f7 -> :sswitch_c
        0x18d844b7 -> :sswitch_e
        0x3dfb1f26 -> :sswitch_12
        0x665dc07d -> :sswitch_21
    .end sparse-switch

    :sswitch_data_4
    .sparse-switch
        -0x4ee6bb5b -> :sswitch_f
        -0x22842eed -> :sswitch_11
        0x13dd3934 -> :sswitch_10
        0x1510651c -> :sswitch_d
    .end sparse-switch

    :sswitch_data_5
    .sparse-switch
        0x2dc7ca01 -> :sswitch_22
        0x4a418b62 -> :sswitch_1a
        0x54310769 -> :sswitch_15
        0x77981763 -> :sswitch_1b
    .end sparse-switch

    :sswitch_data_6
    .sparse-switch
        -0x6525dba4 -> :sswitch_18
        -0x11dfa49b -> :sswitch_17
        0xc10cefa -> :sswitch_19
        0x2b1c16ce -> :sswitch_16
    .end sparse-switch
.end method
