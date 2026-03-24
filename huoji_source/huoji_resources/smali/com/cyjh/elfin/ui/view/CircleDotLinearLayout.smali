.class public Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout;
.super Landroid/widget/LinearLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout$OooO0O0;
    }
.end annotation


# static fields
.field private static final OooooOo:I = 0x6

.field private static final Oooooo:Ljava/lang/String; = "#3c7ac5"

.field private static final Oooooo0:I = 0x0

.field private static final OoooooO:Ljava/lang/String; = "#bababa"

.field private static final Ooooooo:F = 8.0f

.field private static final o0OoOo0:I = 0x64


# instance fields
.field private OoooOoO:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private OoooOoo:Landroid/graphics/drawable/GradientDrawable;

.field private Ooooo00:Landroid/graphics/drawable/GradientDrawable;

.field private Ooooo0o:Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout$OooO0O0;

.field private OooooO0:Landroid/os/Handler;

.field private OooooOO:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout;->OoooOoO:Ljava/util/List;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout;->OooooO0:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout;->OooO0oO()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout;->OoooOoO:Ljava/util/List;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout;->OooooO0:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout;->OooO0oO()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout;->OoooOoO:Ljava/util/List;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout;->OooooO0:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout;->OooO0oO()V

    return-void
.end method

.method public static synthetic OooO00o(Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout;)Landroid/os/Handler;
    .locals 4

    const-string v0, "\u06df\u06e2\u06dc\u06d8\u06db\u06ec\u06e7\u06d8\u06eb\u06df\u06e6\u06e2\u06eb\u06e1\u06e1\u06d8\u06e7\u06ec\u06e6\u06d8\u06e7\u06d8\u06eb\u06d7\u06e8\u06d8\u06e4\u06e7\u06e5\u06e2\u06e1\u06e6\u06d8\u06e7\u06db\u06d9\u06e5\u06d6\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x379

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x36b

    const/16 v2, 0x2eb

    const v3, -0xa066f12

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d7\u06d8\u06e1\u06d7\u06d7\u06dc\u06e2\u06da\u06d6\u06e7\u06e8\u06dc\u06d8\u06db\u06eb\u06e5\u06d8\u06e4\u06e5\u06d6\u06d8\u06e5\u06d6\u06e5\u06d8\u06e6\u06d9\u06eb\u06db\u06df\u06eb\u06df\u06e4\u06db\u06d6\u06e2\u06e5\u06d8\u06e2\u06e0\u06d8\u06d8"

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout;->OooooO0:Landroid/os/Handler;

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x636f78d4 -> :sswitch_1
        0x142a1f64 -> :sswitch_0
    .end sparse-switch
.end method

.method public static synthetic OooO0O0(Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout;)I
    .locals 4

    const-string v0, "\u06e7\u06e5\u06dc\u06d8\u06e1\u06d9\u06d8\u06d8\u06db\u06db\u06d8\u06d8\u06dc\u06dc\u06e6\u06d8\u06d8\u06e0\u06dc\u06d8\u06e1\u06dc\u06d7\u06d6\u06dc\u06dc\u06dc\u06e8\u06dc\u06e6\u06df\u06e1\u06d8\u06ec\u06dc\u06d8\u06da\u06eb\u06e5\u06d8\u06e4\u06e1\u06d6\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x3b4

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x1a4

    const/16 v2, 0x398

    const v3, -0x2b512a4f

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d7\u06e6\u06ec\u06e8\u06d9\u06db\u06d8\u06e8\u06e5\u06df\u06e6\u06da\u06d9\u06d8\u06e1\u06db\u06e8\u06d6\u06df\u06d6\u06d8\u06eb\u06e6\u06e4\u06e1\u06eb\u06dc\u06e5\u06e0\u06e6\u06d8\u06da\u06e7\u06dc\u06dc\u06d9\u06e2\u06d8\u06df\u06eb\u06da"

    goto :goto_0

    :sswitch_1
    iget v0, p0, Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout;->OooooOO:I

    return v0

    :sswitch_data_0
    .sparse-switch
        -0x64bd43d8 -> :sswitch_1
        -0x4fa32fac -> :sswitch_0
    .end sparse-switch
.end method

.method public static synthetic OooO0OO(Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout;)I
    .locals 5

    const/4 v1, 0x0

    const-string v0, "\u06e5\u06e0\u06db\u06db\u06df\u06df\u06ec\u06e4\u06ec\u06da\u06df\u06e1\u06e2\u06eb\u06e2\u06db\u06d7\u06e8\u06e8\u06e6\u06da\u06e0\u06d8\u06d8\u06e2\u06d7\u06d6\u06ec"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v3, 0x3d9

    xor-int/2addr v2, v3

    xor-int/lit16 v2, v2, 0x3e2

    const/16 v3, 0x312

    const v4, 0x1ac3543c

    xor-int/2addr v2, v3

    xor-int/2addr v2, v4

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06ec\u06e1\u06dc\u06d8\u06e8\u06e8\u06e0\u06dc\u06dc\u06e1\u06ec\u06e0\u06df\u06d8\u06df\u06e2\u06e5\u06d7\u06e5\u06e5\u06e7\u06ec\u06dc\u06e7\u06eb\u06e5\u06e8\u06e8\u06e8\u06dc\u06db\u06e6\u06d6\u06ec\u06ec\u06d7\u06e1\u06eb\u06e1\u06d7\u06e8\u06da\u06ec\u06dc\u06e0\u06d8\u06e1\u06d7\u06e5\u06dc\u06e2\u06ec\u06d6\u06e7\u06d8\u06d8"

    goto :goto_0

    :sswitch_1
    iget v1, p0, Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout;->OooooOO:I

    const-string v0, "\u06e6\u06dc\u06df\u06e5\u06d8\u06dc\u06d8\u06e4\u06d9\u06e8\u06d8\u06d8\u06e5\u06da\u06e8\u06e4\u06e8\u06e0\u06d9\u06db\u06e5\u06e6\u06db\u06d6\u06dc\u06d6\u06e7\u06e5\u06db\u06e4\u06ec\u06e5\u06d7\u06e6\u06eb\u06dc\u06e1\u06d6"

    goto :goto_0

    :sswitch_2
    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout;->OooooOO:I

    const-string v0, "\u06dc\u06eb\u06ec\u06dc\u06e8\u06df\u06dc\u06d6\u06e5\u06eb\u06d7\u06e0\u06e6\u06d8\u06e4\u06d9\u06d7\u06ec\u06df\u06e5\u06e2\u06db\u06dc\u06d8\u06da\u06df\u06dc\u06e8\u06ec\u06d8\u06da\u06e6\u06e8\u06d8\u06e2\u06ec\u06dc\u06e6\u06d7\u06eb\u06d6\u06eb\u06d8\u06d8\u06e7\u06dc\u06d6\u06d8\u06d9\u06e8\u06e7\u06d8"

    goto :goto_0

    :sswitch_3
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x772535cb -> :sswitch_1
        -0x50e788bc -> :sswitch_2
        -0x26babe10 -> :sswitch_0
        0x729f0e76 -> :sswitch_3
    .end sparse-switch
.end method

.method public static synthetic OooO0Oo(Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout;)Ljava/util/List;
    .locals 4

    const-string v0, "\u06d8\u06df\u06d6\u06ec\u06e7\u06e0\u06e4\u06e4\u06d8\u06e7\u06df\u06db\u06e0\u06db\u06e7\u06d6\u06d6\u06d7\u06db\u06d7\u06d7\u06d8\u06e1\u06e2\u06e8\u06e1\u06e7\u06d8\u06e7\u06d7\u06e6"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x27f

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x348

    const/16 v2, 0x141

    const v3, -0x26c15d43

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e5\u06dc\u06eb\u06eb\u06d7\u06e5\u06d8\u06ec\u06dc\u06e6\u06d8\u06d9\u06e7\u06d7\u06e5\u06e6\u06e8\u06d8\u06d8\u06df\u06e5\u06d8\u06d8\u06e1\u06e4\u06d6\u06e4\u06db\u06d8\u06d8\u06db\u06db\u06e1\u06d6\u06dc\u06e1\u06d8\u06e2\u06d8\u06d6\u06d8\u06d9\u06dc\u06e6\u06d8\u06d7\u06da\u06e2"

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout;->OoooOoO:Ljava/util/List;

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x61c59eb7 -> :sswitch_0
        -0x30718e32 -> :sswitch_1
    .end sparse-switch
.end method

.method public static synthetic OooO0o(Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout;)Landroid/graphics/drawable/GradientDrawable;
    .locals 4

    const-string v0, "\u06da\u06d6\u06e7\u06d8\u06d6\u06eb\u06e2\u06e2\u06d9\u06d9\u06df\u06d8\u06d8\u06ec\u06dc\u06e8\u06e4\u06e2\u06df\u06ec\u06e1\u06db\u06e0\u06e8\u06e6\u06d8\u06d6\u06e6\u06dc\u06d8\u06e6\u06e8\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x3ce

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x37d

    const/16 v2, 0x35d

    const v3, -0x7ea65f8d

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d7\u06d9\u06d8\u06e8\u06d7\u06e1\u06d8\u06e4\u06e0\u06e4\u06d7\u06e5\u06d6\u06e2\u06d7\u06e6\u06d8\u06d7\u06dc\u06ec\u06e6\u06e5\u06e6\u06dc\u06ec\u06da\u06e4\u06d6\u06e1\u06d8\u06e8\u06dc\u06d9\u06e7\u06df\u06dc\u06d8\u06d7\u06ec\u06d8\u06e7\u06e8\u06eb\u06e7\u06d6\u06df\u06e2\u06e5\u06d8\u06e7\u06e7\u06ec"

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout;->Ooooo00:Landroid/graphics/drawable/GradientDrawable;

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x57771f96 -> :sswitch_1
        0x4038638d -> :sswitch_0
    .end sparse-switch
.end method

.method public static synthetic OooO0o0(Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout;)Landroid/graphics/drawable/GradientDrawable;
    .locals 4

    const-string v0, "\u06d9\u06e0\u06e4\u06d8\u06e2\u06e5\u06d9\u06e5\u06e2\u06da\u06e1\u06e1\u06d8\u06db\u06e6\u06dc\u06d8\u06d9\u06e5\u06e8\u06d8\u06e2\u06eb\u06e4\u06eb\u06eb\u06e8\u06d8\u06d6\u06db\u06d9\u06db\u06e6\u06d6"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x125

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x182

    const/16 v2, 0x1b2

    const v3, 0x190201f6

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d8\u06eb\u06d7\u06e7\u06d7\u06e1\u06d8\u06e6\u06e5\u06df\u06e5\u06d6\u06ec\u06eb\u06e0\u06e4\u06e1\u06eb\u06d6\u06d8\u06e2\u06e5\u06e6\u06e0\u06e8\u06d8\u06d8\u06e4\u06e7\u06d9\u06d9\u06d6\u06e2\u06ec\u06d6\u06df\u06ec\u06e1\u06e1\u06d8\u06eb\u06db\u06d9\u06eb\u06ec"

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout;->OoooOoo:Landroid/graphics/drawable/GradientDrawable;

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x16d5f6ea -> :sswitch_0
        0x4a47356d -> :sswitch_1
    .end sparse-switch
.end method

.method private OooO0oO()V
    .locals 6

    const/4 v2, 0x0

    const-string v0, "\u06dc\u06eb\u06d6\u06d8\u06e4\u06e4\u06e5\u06e2\u06e7\u06e5\u06d8\u06db\u06e5\u06ec\u06ec\u06d7\u06d6\u06d8\u06da\u06db\u06df\u06df\u06df\u06e1\u06d8\u06e1\u06d8\u06da\u06dc\u06d7\u06d9\u06db\u06d8\u06d6\u06e4\u06d9\u06e6\u06dc\u06df\u06d7"

    move-object v1, v2

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/16 v4, 0x2e1

    xor-int/2addr v3, v4

    xor-int/lit16 v3, v3, 0xe1

    const/16 v4, 0xdf

    const v5, 0x66a80d6d

    xor-int/2addr v3, v4

    xor-int/2addr v3, v5

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d8\u06dc\u06d6\u06e8\u06e8\u06e1\u06d8\u06e8\u06dc\u06dc\u06d8\u06d7\u06d9\u06e2\u06eb\u06eb\u06dc\u06d8\u06e4\u06d6\u06d7\u06e1\u06e7\u06e5\u06dc\u06eb\u06e2\u06d7\u06d6\u06e1\u06db\u06e2\u06e4\u06ec\u06ec\u06e5\u06d8\u06eb\u06e5\u06e4\u06e0\u06d9\u06e4\u06e2\u06e6\u06e4\u06e6\u06e8\u06e1\u06d8\u06e2\u06d9\u06e4"

    goto :goto_0

    :sswitch_1
    invoke-direct {p0}, Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout;->OooO0oo()V

    const-string v0, "\u06e7\u06e8\u06e6\u06e1\u06e4\u06e4\u06da\u06d9\u06ec\u06d8\u06e1\u06d8\u06d6\u06e8\u06ec\u06d6\u06d6\u06d9\u06da\u06df\u06eb\u06e1\u06e6\u06d8\u06d8\u06d7\u06ec\u06d8\u06d8\u06e7\u06d6\u06ec\u06ec\u06e5\u06d8\u06e7\u06e1\u06e4\u06da\u06d8\u06e4\u06e5\u06e0\u06df\u06e8\u06e6\u06e2\u06e0\u06e2\u06ec"

    goto :goto_0

    :sswitch_2
    new-instance v1, Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout$OooO0O0;

    invoke-direct {v1, p0, v2}, Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout$OooO0O0;-><init>(Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout;Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout$OooO00o;)V

    const-string v0, "\u06eb\u06dc\u06ec\u06da\u06dc\u06e5\u06d8\u06e8\u06d7\u06d9\u06d7\u06df\u06e2\u06da\u06e4\u06dc\u06d8\u06d8\u06dc\u06e7\u06d8\u06e0\u06e4\u06d6\u06d8\u06e8\u06d8\u06e8\u06e0\u06e0\u06d8\u06d8\u06e7\u06eb\u06e6\u06d8\u06e8\u06e6\u06ec\u06e5\u06e8\u06e8\u06da\u06db\u06e2\u06ec\u06e1\u06d9\u06e2\u06db\u06db\u06d8\u06db\u06df"

    goto :goto_0

    :sswitch_3
    iput-object v1, p0, Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout;->Ooooo0o:Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout$OooO0O0;

    const-string v0, "\u06eb\u06e0\u06e8\u06d8\u06eb\u06e6\u06d7\u06d8\u06d9\u06d9\u06e6\u06eb\u06e5\u06d8\u06dc\u06df\u06da\u06e4\u06db\u06d9\u06dc\u06dc\u06e7\u06e1\u06db\u06dc\u06d8\u06e1\u06dc\u06e1\u06d8\u06d7\u06e8\u06d8"

    goto :goto_0

    :sswitch_4
    invoke-virtual {v1}, Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout$OooO0O0;->OooO00o()V

    const-string v0, "\u06e5\u06da\u06d8\u06d8\u06da\u06d9\u06dc\u06da\u06db\u06e4\u06e6\u06e4\u06e5\u06d8\u06e4\u06ec\u06eb\u06e2\u06d7\u06df\u06df\u06e1\u06e6\u06d8\u06e6\u06e2\u06ec\u06d7\u06db\u06e1\u06e4\u06dc\u06da\u06d9\u06e0\u06e2\u06d6\u06e1\u06e5\u06d8\u06e4\u06db\u06e1\u06d8\u06d6\u06e2\u06d6\u06d8\u06e7\u06e8\u06e6\u06eb\u06d7\u06e1\u06d8\u06ec\u06e6\u06e7\u06d8\u06dc\u06dc\u06d8"

    goto :goto_0

    :sswitch_5
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6b84a625 -> :sswitch_2
        -0x5cd07a6d -> :sswitch_3
        -0x4759b383 -> :sswitch_0
        -0x40c36142 -> :sswitch_5
        -0x741ced2 -> :sswitch_4
        0x71b0f4cb -> :sswitch_1
    .end sparse-switch
.end method

.method private OooO0oo()V
    .locals 12

    const/4 v11, -0x2

    const/4 v4, 0x0

    const/high16 v10, 0x41000000    # 8.0f

    const/4 v2, 0x0

    const-string v0, "\u06ec\u06eb\u06e8\u06d8\u06e8\u06e4\u06d7\u06e6\u06eb\u06e0\u06d9\u06da\u06e2\u06e7\u06d6\u06eb\u06d6\u06e5\u06dc\u06d7\u06ec\u06d9\u06e7\u06e7\u06e1\u06d8\u06e7\u06e4\u06d6\u06ec\u06e0\u06db\u06e2\u06e8\u06e8\u06e5\u06e7\u06da"

    move v1, v2

    move-object v3, v4

    move-object v5, v4

    move-object v6, v4

    move v7, v2

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/16 v8, 0x218

    xor-int/2addr v4, v8

    xor-int/lit8 v4, v4, 0x5b

    const/16 v8, 0x151

    const v9, 0x74640177

    xor-int/2addr v4, v8

    xor-int/2addr v4, v9

    sparse-switch v4, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06df\u06e0\u06e8\u06d8\u06e7\u06df\u06da\u06e7\u06e4\u06dc\u06da\u06d8\u06da\u06e7\u06e6\u06eb\u06dc\u06e7\u06e2\u06d6\u06e0\u06ec\u06e5\u06e8\u06dc\u06d8\u06d8\u06ec\u06d8\u06e7\u06db\u06db\u06e1\u06db\u06d6\u06d8\u06e7\u06e1\u06d8\u06e4\u06df\u06d8\u06d8\u06d6\u06db\u06ec\u06e1\u06eb\u06e8\u06e6\u06db\u06df\u06da\u06dc\u06d9\u06df\u06eb\u06da"

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->removeAllViews()V

    const-string v0, "\u06d6\u06d9\u06e5\u06da\u06d8\u06eb\u06eb\u06e8\u06e7\u06d8\u06e1\u06e8\u06e7\u06d8\u06eb\u06d7\u06dc\u06d8\u06e7\u06d7\u06e4\u06d8\u06d9\u06dc\u06d8\u06eb\u06e5\u06e5\u06d7\u06d7\u06db\u06d9\u06e8\u06e2"

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout;->OoooOoO:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const-string v0, "\u06d6\u06df\u06db\u06e7\u06d7\u06db\u06da\u06e7\u06e1\u06d8\u06e7\u06db\u06e6\u06d8\u06e8\u06da\u06dc\u06d8\u06d6\u06df\u06e4\u06e7\u06ec\u06e1\u06d8\u06e2\u06e4\u06d9\u06db\u06eb\u06e7\u06e8\u06db\u06ec\u06e2\u06ec\u06e8\u06d8\u06df\u06db\u06e0\u06df\u06d8\u06e8\u06df\u06e7\u06e6"

    goto :goto_0

    :sswitch_3
    const-string v0, "\u06db\u06dc\u06e4\u06d7\u06da\u06dc\u06e0\u06d9\u06d6\u06e6\u06dc\u06d7\u06e0\u06e4\u06e6\u06d8\u06ec\u06e4\u06d6\u06d8\u06e2\u06e6\u06e1\u06e5\u06e8\u06d8\u06d7\u06db\u06d6\u06e7\u06e5\u06ec"

    goto :goto_0

    :sswitch_4
    const-string v0, "\u06e7\u06da\u06e5\u06d8\u06d7\u06dc\u06e6\u06d8\u06e2\u06df\u06e7\u06e7\u06dc\u06d8\u06d8\u06d8\u06ec\u06ec\u06e8\u06d8\u06d7\u06ec\u06d9\u06e8\u06d8\u06df\u06e4\u06e0\u06e6\u06dc\u06ec\u06e8\u06d7\u06e1\u06d8\u06e1\u06d8\u06eb\u06dc\u06e4\u06da\u06e4\u06e7\u06dc\u06d8\u06e7\u06e6\u06dc\u06d8"

    move v7, v2

    goto :goto_0

    :sswitch_5
    const v4, -0x6a75f78c

    const-string v0, "\u06da\u06da\u06d8\u06e5\u06df\u06e5\u06e0\u06ec\u06d6\u06d8\u06db\u06da\u06d6\u06d8\u06e0\u06e0\u06e8\u06e6\u06d6\u06dc\u06d8\u06d9\u06db\u06e8\u06d8\u06da\u06e8\u06d7\u06df\u06d6\u06d6\u06d8\u06d9\u06e7\u06ec\u06e1\u06da\u06e6\u06df\u06d8\u06eb\u06e8\u06e6\u06d7\u06e0\u06d6\u06e7"

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v8

    xor-int/2addr v8, v4

    sparse-switch v8, :sswitch_data_1

    goto :goto_1

    :sswitch_6
    const-string v0, "\u06e6\u06e8\u06d8\u06dc\u06e2\u06e8\u06d7\u06ec\u06db\u06e1\u06da\u06d8\u06d9\u06df\u06eb\u06d6\u06df\u06e4\u06d8\u06e8\u06da\u06e4\u06e4\u06df\u06d8\u06d7\u06d6\u06da\u06e1\u06d8\u06df\u06d9\u06df\u06d8\u06ec\u06dc\u06df\u06e1\u06dc\u06d8\u06df\u06d8\u06ec\u06d6\u06d6\u06e0\u06e6\u06e7\u06e1\u06d8\u06e0\u06e1\u06e1\u06df\u06e5\u06e2"

    goto :goto_0

    :sswitch_7
    const-string v0, "\u06df\u06e0\u06d7\u06db\u06dc\u06e5\u06e5\u06d8\u06d8\u06d8\u06e4\u06e1\u06d8\u06d7\u06d8\u06da\u06e0\u06e7\u06e4\u06eb\u06e5\u06d9\u06d8\u06dc\u06d8\u06eb\u06db\u06db\u06d9\u06e1\u06eb\u06e5\u06e2\u06e0\u06da\u06ec\u06dc\u06e8\u06d8\u06e6\u06d8\u06da\u06e0"

    goto :goto_1

    :sswitch_8
    const v8, -0x4c795ceb

    const-string v0, "\u06e2\u06da\u06e1\u06d9\u06e8\u06e1\u06d9\u06dc\u06d6\u06da\u06d7\u06d6\u06d8\u06d8\u06e4\u06dc\u06d8\u06db\u06d8\u06e1\u06d8\u06e5\u06e6\u06eb\u06e6\u06db\u06dc\u06e4\u06e8\u06e5\u06d8\u06e6\u06eb\u06d8\u06d8\u06d7\u06d9\u06d6\u06d8\u06d6\u06d8\u06e7\u06da\u06d7\u06d9\u06e4\u06e6\u06e7"

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v9

    xor-int/2addr v9, v8

    sparse-switch v9, :sswitch_data_2

    goto :goto_2

    :sswitch_9
    const/4 v0, 0x6

    if-ge v7, v0, :cond_0

    const-string v0, "\u06e4\u06df\u06eb\u06eb\u06dc\u06e4\u06e6\u06e8\u06d8\u06dc\u06d7\u06e4\u06eb\u06e7\u06e4\u06eb\u06d9\u06df\u06df\u06e2\u06e5\u06e7\u06e8\u06dc\u06d8\u06eb\u06d7\u06d8\u06d8\u06da\u06e7\u06e6\u06d8\u06d9\u06ec\u06d8\u06d8\u06d9\u06d7\u06e1\u06e2\u06db\u06d6\u06d8\u06e6\u06d8\u06e8\u06e7\u06eb\u06da\u06e7\u06e8\u06db\u06e2\u06ec\u06e2\u06e7\u06db"

    goto :goto_2

    :cond_0
    const-string v0, "\u06df\u06ec\u06d7\u06eb\u06ec\u06dc\u06d8\u06db\u06df\u06e5\u06d8\u06ec\u06e1\u06e8\u06dc\u06d8\u06e7\u06d8\u06da\u06ec\u06e8\u06d8\u06e8\u06d9\u06d8\u06e1\u06eb\u06da\u06e2\u06ec\u06db\u06e2\u06e8\u06e7\u06d8\u06e0\u06e1\u06ec\u06d9\u06e8\u06e8\u06d8\u06d9\u06df\u06e6\u06d8\u06e4\u06da\u06d8\u06d8\u06d7\u06df\u06dc\u06d8\u06e5\u06e6\u06db"

    goto :goto_2

    :sswitch_a
    const-string v0, "\u06d6\u06db\u06e8\u06e8\u06eb\u06d6\u06e4\u06e7\u06eb\u06d9\u06e0\u06df\u06e8\u06d7\u06e6\u06df\u06ec\u06e1\u06d8\u06db\u06df\u06db\u06d9\u06dc\u06e4\u06e5\u06d6\u06dc\u06d8\u06d7\u06e5\u06e7\u06d8"

    goto :goto_2

    :sswitch_b
    const-string v0, "\u06d7\u06e2\u06e1\u06df\u06db\u06e2\u06e6\u06df\u06e4\u06e2\u06e1\u06e6\u06e7\u06d8\u06df\u06d9\u06e6\u06eb\u06df\u06e6\u06e1\u06e4\u06db\u06e4\u06da\u06da\u06e4\u06e0\u06e2\u06e8\u06e8\u06dc\u06e1\u06dc\u06e0\u06d6\u06d8\u06d9\u06ec\u06e1\u06dc\u06e1\u06d6\u06d8\u06db\u06d7\u06d9\u06da\u06d8\u06d6"

    goto :goto_1

    :sswitch_c
    const-string v0, "\u06e8\u06d7\u06e5\u06d8\u06e7\u06e7\u06e4\u06df\u06db\u06d8\u06d6\u06db\u06e2\u06e4\u06e8\u06e6\u06d7\u06e4\u06e4\u06dc\u06e0\u06e8\u06e6\u06db\u06d8\u06d8\u06ec\u06e1\u06e0\u06e6\u06e0\u06d8\u06d8\u06df\u06eb\u06db\u06d8\u06d6\u06e5\u06eb\u06e7\u06d8\u06eb\u06e6\u06d7"

    goto :goto_1

    :sswitch_d
    new-instance v4, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v4, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const-string v0, "\u06e2\u06eb\u06e2\u06e5\u06db\u06d6\u06df\u06eb\u06d9\u06da\u06e7\u06d7\u06eb\u06ec\u06dc\u06da\u06e6\u06e7\u06d8\u06d9\u06dc\u06d8\u06eb\u06e2\u06e4\u06e2\u06db\u06e0\u06eb\u06df\u06e8\u06d8\u06e8\u06e0\u06e7\u06e2\u06e6\u06e1"

    move-object v6, v4

    goto :goto_0

    :sswitch_e
    new-instance v4, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const-string v0, "\u06d9\u06dc\u06dc\u06e4\u06e8\u06e2\u06e6\u06d9\u06e7\u06e7\u06d9\u06d7\u06e1\u06da\u06d6\u06d8\u06e0\u06e8\u06ec\u06d8\u06e5\u06e1\u06d8\u06e4\u06e8\u06e8\u06eb\u06d8\u06db\u06dc\u06e1\u06ec\u06d9\u06eb\u06e8\u06d6\u06e8\u06d8\u06e4\u06e4\u06e4\u06e0\u06df\u06d8\u06d8"

    move-object v5, v4

    goto :goto_0

    :sswitch_f
    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    const-string v0, "\u06d8\u06d6\u06e1\u06d8\u06e1\u06df\u06e6\u06d8\u06d7\u06e1\u06d9\u06e2\u06df\u06e2\u06e5\u06ec\u06e6\u06d8\u06e0\u06e0\u06e6\u06d8\u06dc\u06e0\u06e2\u06e8\u06dc\u06dc\u06d9\u06d7\u06e8\u06e8\u06eb\u06d8\u06d6\u06d7\u06da\u06e1\u06eb\u06db"

    goto :goto_0

    :sswitch_10
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v10}, Lz2/w3;->OooOOO0(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v5, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const-string v0, "\u06dc\u06d8\u06e4\u06dc\u06e4\u06e6\u06d8\u06d6\u06e0\u06d8\u06e1\u06e1\u06d8\u06db\u06df\u06da\u06dc\u06d8\u06e8\u06d8\u06d7\u06e7\u06d6\u06d8\u06e2\u06e2\u06df\u06ec\u06e5\u06da\u06d9\u06da\u06db\u06ec\u06df\u06ec\u06e0\u06db\u06e6\u06da\u06e5\u06e8\u06eb\u06d9\u06e5\u06d6\u06e2\u06d8\u06e6\u06eb\u06db"

    goto/16 :goto_0

    :sswitch_11
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v10}, Lz2/w3;->OooOOO0(Landroid/content/Context;F)I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v10}, Lz2/w3;->OooOOO0(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v5, v0, v4}, Landroid/graphics/drawable/GradientDrawable;->setSize(II)V

    const-string v0, "\u06d6\u06d7\u06d6\u06d8\u06e2\u06e0\u06dc\u06d8\u06e1\u06e4\u06d6\u06da\u06dc\u06ec\u06e7\u06df\u06eb\u06e6\u06d7\u06e5\u06d8\u06e2\u06db\u06d9\u06d8\u06d9\u06eb\u06db\u06e2\u06e5\u06df\u06dc\u06da\u06e5\u06d7\u06e1\u06d8\u06e6\u06eb\u06eb\u06db\u06e1\u06d8\u06e8\u06e7\u06df"

    goto/16 :goto_0

    :sswitch_12
    const v4, 0x668491c9

    const-string v0, "\u06e1\u06e2\u06da\u06e8\u06da\u06d6\u06d6\u06e8\u06dc\u06d7\u06d9\u06eb\u06df\u06e5\u06d8\u06eb\u06e6\u06da\u06d8\u06df\u06db\u06e0\u06e7\u06dc\u06d8\u06e5\u06e1\u06db\u06e1\u06e5\u06e6\u06d8\u06e2\u06e4\u06e8\u06e0\u06dc\u06e5\u06e1\u06db\u06e8\u06e0\u06d7\u06e1\u06e2\u06e0\u06e0\u06e1\u06ec\u06e2\u06e4\u06d8\u06d6\u06d8\u06eb\u06d9\u06d7"

    :goto_3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v8

    xor-int/2addr v8, v4

    sparse-switch v8, :sswitch_data_3

    goto :goto_3

    :sswitch_13
    const v8, -0x5a34ae82

    const-string v0, "\u06d7\u06e7\u06d7\u06ec\u06d9\u06e6\u06dc\u06da\u06e6\u06d9\u06dc\u06eb\u06da\u06e8\u06eb\u06eb\u06d9\u06e1\u06d8\u06dc\u06e4\u06da\u06e2\u06e1\u06e1\u06dc\u06e1\u06d8\u06e4\u06db\u06d8\u06d8\u06e0\u06e7\u06d7\u06db\u06e6\u06e1\u06dc\u06e6\u06d7\u06eb\u06da\u06e1\u06d8\u06dc\u06e2\u06d6\u06d7\u06df\u06d6\u06d8"

    :goto_4
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v9

    xor-int/2addr v9, v8

    sparse-switch v9, :sswitch_data_4

    goto :goto_4

    :sswitch_14
    const-string v0, "\u06d7\u06d9\u06eb\u06e2\u06ec\u06e8\u06d8\u06d6\u06e0\u06d6\u06d8\u06dc\u06da\u06df\u06e2\u06e8\u06e4\u06e6\u06e8\u06d6\u06e0\u06d6\u06e1\u06d8\u06d9\u06e6\u06db\u06df\u06e1\u06e1\u06e0\u06df\u06db\u06e0\u06e1\u06d8\u06eb\u06df\u06e1\u06db\u06da\u06e2\u06e6\u06e8\u06d6\u06d8\u06dc\u06e4\u06d7\u06ec\u06da\u06d8\u06d8"

    goto :goto_3

    :cond_1
    const-string v0, "\u06e1\u06eb\u06d8\u06eb\u06dc\u06d6\u06dc\u06d7\u06e8\u06e0\u06d7\u06dc\u06da\u06da\u06e6\u06e2\u06db\u06eb\u06e1\u06eb\u06e1\u06d8\u06d6\u06e0\u06d8\u06e4\u06e1\u06e1\u06d8\u06d6\u06dc\u06e5\u06d8\u06e2\u06df\u06d9\u06d8\u06e8\u06d7\u06e2\u06e2\u06db\u06e0\u06eb\u06e4"

    goto :goto_4

    :sswitch_15
    if-nez v7, :cond_1

    const-string v0, "\u06e4\u06db\u06d6\u06d8\u06e0\u06df\u06e8\u06d8\u06d6\u06e1\u06e6\u06e5\u06e0\u06dc\u06dc\u06ec\u06d8\u06e4\u06d7\u06d8\u06d8\u06e5\u06e5\u06e5\u06d8\u06e8\u06d9\u06d8\u06e4\u06ec\u06e5\u06db\u06da\u06da\u06d6\u06e5\u06e5\u06e8\u06d8\u06dc"

    goto :goto_4

    :sswitch_16
    const-string v0, "\u06d9\u06db\u06e4\u06d9\u06e6\u06dc\u06e0\u06e7\u06e4\u06e6\u06d9\u06d8\u06e1\u06eb\u06e2\u06d9\u06e2\u06e2\u06ec\u06e8\u06d8\u06d8\u06ec\u06d7\u06e0\u06d6\u06d8\u06e5\u06e5\u06d7\u06e8\u06e0\u06e7\u06e8\u06d9\u06d8\u06d8\u06dc\u06d6\u06e8\u06df\u06e2\u06e7\u06da\u06e0\u06ec\u06e0\u06eb"

    goto :goto_4

    :sswitch_17
    const-string v0, "\u06db\u06df\u06d8\u06d8\u06d9\u06e6\u06da\u06d7\u06e8\u06e1\u06d8\u06e8\u06d7\u06e8\u06d8\u06df\u06e2\u06d8\u06e7\u06dc\u06db\u06d6\u06e6\u06ec\u06eb\u06e7\u06e2\u06df\u06e7\u06d8\u06e2\u06e2\u06d8\u06d8\u06df\u06eb\u06d8\u06e6\u06e8\u06e5\u06d8"

    goto :goto_3

    :sswitch_18
    const-string v0, "\u06ec\u06d8\u06dc\u06d8\u06e6\u06e4\u06eb\u06e1\u06d8\u06eb\u06e8\u06e1\u06e5\u06d8\u06d6\u06df\u06d6\u06d8\u06eb\u06eb\u06eb\u06e0\u06db\u06e6\u06e5\u06db\u06da\u06e4\u06d6\u06d8\u06e4\u06e8\u06d7\u06e4\u06da\u06e1\u06d8\u06db\u06e0\u06ec\u06d9\u06d6\u06e7\u06ec\u06df\u06da\u06e1\u06da\u06df\u06e1\u06e6\u06d6\u06d8\u06d9\u06e5\u06e5\u06d7\u06e5"

    goto :goto_3

    :sswitch_19
    const-string v0, "\u06df\u06da\u06e4\u06e1\u06e6\u06e2\u06d8\u06e4\u06e8\u06e7\u06d9\u06d6\u06e1\u06dc\u06e1\u06d7\u06db\u06e6\u06e6\u06e8\u06e4\u06e1\u06db\u06e6\u06d8\u06dc\u06eb\u06e6\u06d8\u06e1\u06e1\u06e1\u06d8"

    goto/16 :goto_0

    :sswitch_1a
    const-string v0, "#3c7ac5"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const-string v0, "\u06e4\u06e8\u06e1\u06d8\u06d6\u06dc\u06e6\u06ec\u06db\u06e5\u06d7\u06e1\u06e7\u06dc\u06da\u06e7\u06d6\u06db\u06e6\u06e7\u06e1\u06d6\u06d8\u06e5\u06d6\u06d6\u06d8\u06ec\u06d7\u06e2\u06e5\u06e2\u06da"

    goto/16 :goto_0

    :sswitch_1b
    iput-object v5, p0, Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout;->OoooOoo:Landroid/graphics/drawable/GradientDrawable;

    const-string v0, "\u06e2\u06e6\u06e4\u06d7\u06e6\u06d6\u06d8\u06df\u06e2\u06d9\u06da\u06e7\u06d8\u06d8\u06e7\u06e5\u06d8\u06e4\u06e8\u06d8\u06d8\u06e6\u06d9\u06e7\u06df\u06db\u06e2\u06e0\u06eb\u06df\u06e2\u06ec\u06d7"

    goto/16 :goto_0

    :sswitch_1c
    const-string v0, "#bababa"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const-string v0, "\u06e4\u06d9\u06e1\u06d8\u06e1\u06e6\u06e4\u06d7\u06d7\u06d6\u06d7\u06db\u06e1\u06df\u06db\u06e6\u06d8\u06e0\u06dc\u06d8\u06eb\u06d6\u06dc\u06d8\u06d7\u06df\u06ec\u06db\u06e8\u06ec\u06e5\u06ec\u06d8"

    goto/16 :goto_0

    :sswitch_1d
    const v4, 0x271d30e0

    const-string v0, "\u06e2\u06e8\u06e4\u06d8\u06d8\u06d8\u06e7\u06d9\u06e2\u06d8\u06e5\u06e1\u06d8\u06d8\u06e4\u06e7\u06e0\u06d8\u06d6\u06ec\u06e2\u06e8\u06d9\u06e4\u06db\u06e6\u06e4\u06dc\u06d8\u06e4\u06e4\u06e2\u06e6\u06e2\u06e7\u06eb\u06da\u06d7"

    :goto_5
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v8

    xor-int/2addr v8, v4

    sparse-switch v8, :sswitch_data_5

    goto :goto_5

    :sswitch_1e
    const-string v0, "\u06da\u06e8\u06d8\u06d8\u06e0\u06e8\u06e1\u06d8\u06e5\u06e5\u06e7\u06e6\u06db\u06e8\u06d6\u06ec\u06da\u06e5\u06e8\u06d8\u06e4\u06ec\u06ec\u06d6\u06e7\u06e5\u06e8\u06e6\u06ec\u06e2\u06da\u06e6\u06d8"

    goto/16 :goto_0

    :sswitch_1f
    const-string v0, "\u06dc\u06d8\u06e2\u06df\u06dc\u06e7\u06eb\u06eb\u06e1\u06eb\u06e1\u06e5\u06d8\u06da\u06e0\u06e8\u06e5\u06e4\u06e8\u06dc\u06dc\u06d9\u06e6\u06dc\u06e8\u06d8\u06d9\u06e2\u06d6\u06ec\u06e5\u06e6\u06d6\u06d6\u06e4\u06e2\u06d6\u06d8\u06db\u06e1\u06e0\u06d7\u06e7\u06df"

    goto :goto_5

    :sswitch_20
    const v8, 0x21666bfa

    const-string v0, "\u06d7\u06da\u06e6\u06d8\u06e1\u06e1\u06e2\u06e1\u06e6\u06d8\u06d8\u06e5\u06e8\u06db\u06e7\u06d7\u06e2\u06e5\u06e4\u06e7\u06d6\u06db\u06dc\u06d8\u06ec\u06dc\u06d6\u06d8\u06e5\u06df\u06e2\u06e0\u06dc\u06d8\u06ec\u06dc\u06e6\u06d6\u06e6\u06e2\u06d9\u06d7\u06eb\u06da\u06d8\u06e8\u06d8\u06d8\u06e2\u06dc\u06d8\u06e2\u06e1\u06df\u06e4\u06d7\u06d8\u06e6\u06e8"

    :goto_6
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v9

    xor-int/2addr v9, v8

    sparse-switch v9, :sswitch_data_6

    goto :goto_6

    :sswitch_21
    const-string v0, "\u06e8\u06e4\u06da\u06eb\u06d9\u06d8\u06d8\u06ec\u06d6\u06d7\u06d9\u06e8\u06e8\u06d8\u06e2\u06e7\u06d7\u06d7\u06dc\u06e2\u06da\u06d7\u06df\u06df\u06da\u06d7\u06eb\u06e0\u06dc\u06d7\u06e5\u06df\u06d9\u06e4\u06db\u06e0\u06d8\u06e5\u06d7\u06d8\u06eb\u06e0\u06e7\u06da\u06e4\u06e5\u06e8\u06e1\u06e5\u06db"

    goto :goto_5

    :cond_2
    const-string v0, "\u06d6\u06db\u06e6\u06d8\u06e6\u06dc\u06eb\u06e1\u06e4\u06e0\u06e1\u06d6\u06e6\u06d8\u06e1\u06dc\u06e6\u06d8\u06e8\u06e1\u06e7\u06d8\u06d8\u06d8\u06dc\u06d8\u06d6\u06eb\u06d6\u06d8\u06d6\u06e0\u06ec\u06e6\u06df\u06df\u06eb\u06e5\u06d6\u06df\u06e1\u06d8\u06d6\u06e4\u06e5\u06d8\u06d8\u06e2\u06dc\u06d9\u06e6\u06d6\u06e0\u06e4\u06e7\u06df\u06e1\u06eb\u06db\u06e2\u06d7"

    goto :goto_6

    :sswitch_22
    const/4 v0, 0x5

    if-ne v7, v0, :cond_2

    const-string v0, "\u06e1\u06d7\u06dc\u06e0\u06e6\u06d8\u06e6\u06d6\u06e5\u06d6\u06ec\u06d6\u06d8\u06dc\u06dc\u06e7\u06d9\u06e1\u06db\u06db\u06d9\u06e5\u06d8\u06e4\u06d7\u06e6\u06e4\u06eb\u06e8\u06d8\u06d7\u06d6\u06e1\u06e6\u06e5\u06eb\u06e0\u06e6\u06db\u06ec\u06db\u06eb\u06eb\u06e7\u06e6\u06e8\u06d9\u06d6\u06eb\u06e1\u06e5\u06d8\u06e5\u06da\u06e6\u06d8\u06e5\u06ec"

    goto :goto_6

    :sswitch_23
    const-string v0, "\u06da\u06db\u06e5\u06ec\u06d8\u06d6\u06d7\u06eb\u06da\u06eb\u06d9\u06e7\u06e1\u06e1\u06e4\u06e7\u06e4\u06dc\u06d8\u06e5\u06df\u06da\u06db\u06e6\u06e4\u06eb\u06d8\u06e7\u06d6\u06e4\u06e5\u06d8\u06df\u06e1\u06e2\u06e7\u06db\u06df"

    goto :goto_6

    :sswitch_24
    const-string v0, "\u06da\u06da\u06e0\u06d8\u06d7\u06e8\u06d8\u06e6\u06e2\u06e5\u06d8\u06da\u06d9\u06e1\u06eb\u06e0\u06d6\u06e1\u06ec\u06ec\u06da\u06e8\u06e1\u06d9\u06e7\u06ec\u06da\u06d8\u06e6\u06d8\u06d8\u06d8\u06e7\u06d7\u06e6\u06db\u06e1\u06eb\u06d8\u06d7\u06dc\u06e1\u06db\u06e1\u06e7"

    goto :goto_5

    :sswitch_25
    const-string v0, "\u06d9\u06da\u06e1\u06d8\u06d7\u06d7\u06dc\u06d8\u06df\u06e6\u06d7\u06e7\u06d9\u06e4\u06e7\u06e2\u06db\u06df\u06ec\u06da\u06e7\u06e8\u06e1\u06d6\u06e4\u06dc\u06d8\u06e6\u06e1\u06e8\u06d8\u06eb\u06e6\u06ec"

    goto/16 :goto_0

    :sswitch_26
    iput-object v5, p0, Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout;->Ooooo00:Landroid/graphics/drawable/GradientDrawable;

    const-string v0, "\u06da\u06e8\u06d8\u06d8\u06e0\u06e8\u06e1\u06d8\u06e5\u06e5\u06e7\u06e6\u06db\u06e8\u06d6\u06ec\u06da\u06e5\u06e8\u06d8\u06e4\u06ec\u06ec\u06d6\u06e7\u06e5\u06e8\u06e6\u06ec\u06e2\u06da\u06e6\u06d8"

    goto/16 :goto_0

    :sswitch_27
    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const-string v0, "\u06d8\u06dc\u06e8\u06d8\u06e2\u06da\u06e2\u06d9\u06e8\u06d6\u06e4\u06e7\u06e0\u06da\u06e0\u06e6\u06e4\u06e0\u06dc\u06d8\u06d7\u06dc\u06d8\u06ec\u06e4\u06e1\u06da\u06e6\u06d7\u06e1\u06ec\u06db"

    goto/16 :goto_0

    :sswitch_28
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v11, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const-string v0, "\u06eb\u06ec\u06d7\u06e4\u06eb\u06e1\u06d8\u06df\u06e1\u06e8\u06d8\u06d7\u06e4\u06e2\u06d8\u06df\u06e2\u06e1\u06e4\u06d6\u06e0\u06e4\u06dc\u06d8\u06ec\u06e4\u06e1\u06db\u06ec\u06e2\u06e6\u06e6\u06d8\u06e1\u06d8\u06d6\u06d8\u06e6\u06da\u06ec"

    goto/16 :goto_0

    :sswitch_29
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v10}, Lz2/w3;->OooOOO0(Landroid/content/Context;F)I

    move-result v0

    invoke-virtual {v3, v2, v2, v0, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    const-string v0, "\u06d9\u06df\u06e2\u06eb\u06e0\u06da\u06e2\u06e4\u06df\u06dc\u06dc\u06e2\u06db\u06e4\u06e6\u06d7\u06d9\u06e6\u06eb\u06d6\u06dc\u06d8\u06df\u06e2\u06d7\u06eb\u06eb\u06dc\u06d8\u06db\u06db\u06e8\u06da\u06e0\u06db\u06df\u06e0\u06e0\u06dc\u06da\u06e7\u06db\u06ec\u06d9\u06da\u06e8\u06da\u06db\u06e4\u06d8\u06da\u06e4\u06e6\u06dc\u06df\u06e7"

    goto/16 :goto_0

    :sswitch_2a
    invoke-virtual {p0, v6, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const-string v0, "\u06d8\u06e4\u06d7\u06ec\u06e6\u06d8\u06eb\u06d9\u06e8\u06ec\u06e4\u06d8\u06d8\u06e8\u06da\u06e8\u06e5\u06ec\u06dc\u06eb\u06e4\u06d6\u06df\u06dc\u06df\u06d8\u06d8\u06e8\u06e7\u06e2\u06d9\u06df\u06ec\u06db\u06e8\u06e4\u06e0\u06e6\u06d7\u06d8\u06e0\u06dc"

    goto/16 :goto_0

    :sswitch_2b
    iget-object v0, p0, Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout;->OoooOoO:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "\u06dc\u06e0\u06d6\u06e0\u06da\u06e2\u06e1\u06e1\u06e5\u06d9\u06e0\u06df\u06e6\u06dc\u06da\u06ec\u06db\u06e6\u06d7\u06d7\u06d7\u06e2\u06dc\u06e7\u06d8\u06ec\u06eb\u06dc\u06eb\u06db\u06d9\u06d8\u06e2\u06e2\u06dc\u06d8\u06df\u06e4\u06d8\u06d8\u06e0\u06e5\u06e7"

    goto/16 :goto_0

    :sswitch_2c
    add-int/lit8 v1, v7, 0x1

    const-string v0, "\u06e8\u06e7\u06e0\u06d8\u06e6\u06ec\u06d8\u06e8\u06d9\u06d6\u06d9\u06df\u06df\u06e2\u06e5\u06d8\u06eb\u06d7\u06db\u06e0\u06d9\u06e4\u06e8\u06d6\u06e2\u06d7\u06e5\u06ec\u06ec\u06eb\u06d7\u06d9\u06dc\u06e2\u06e2\u06d7\u06e6\u06eb\u06d9\u06d8\u06d7\u06e2\u06e2\u06e0\u06e2\u06d6\u06d8\u06e7\u06e4\u06d7\u06e0\u06d6\u06e6\u06dc\u06e8"

    goto/16 :goto_0

    :sswitch_2d
    const-string v0, "\u06da\u06e6\u06dc\u06d8\u06d7\u06e8\u06e5\u06e0\u06e4\u06e7\u06eb\u06e0\u06d8\u06e0\u06ec\u06dc\u06e8\u06eb\u06d6\u06d8\u06e5\u06e0\u06d8\u06d8\u06d8\u06eb\u06dc\u06e1\u06dc\u06e0\u06e0\u06e5\u06d8\u06da\u06e8\u06eb\u06d7\u06d7\u06df\u06e4\u06e8\u06d8\u06d6\u06e7"

    move v7, v1

    goto/16 :goto_0

    :sswitch_2e
    const-string v0, "\u06e7\u06da\u06e5\u06d8\u06d7\u06dc\u06e6\u06d8\u06e2\u06df\u06e7\u06e7\u06dc\u06d8\u06d8\u06d8\u06ec\u06ec\u06e8\u06d8\u06d7\u06ec\u06d9\u06e8\u06d8\u06df\u06e4\u06e0\u06e6\u06dc\u06ec\u06e8\u06d7\u06e1\u06d8\u06e1\u06d8\u06eb\u06dc\u06e4\u06da\u06e4\u06e7\u06dc\u06d8\u06e7\u06e6\u06dc\u06d8"

    goto/16 :goto_0

    :sswitch_2f
    const-string v0, "\u06e1\u06d7\u06d6\u06d8\u06e1\u06d7\u06eb\u06e8\u06d8\u06d9\u06e0\u06e8\u06eb\u06da\u06e4\u06e1\u06e2\u06e8\u06dc\u06d8\u06e1\u06dc\u06d9\u06da\u06e8\u06dc\u06e1\u06d7\u06dc\u06df\u06df\u06df"

    goto/16 :goto_0

    :sswitch_30
    const-string v0, "\u06ec\u06e7\u06da\u06d9\u06e0\u06e2\u06e1\u06e7\u06df\u06e0\u06e6\u06e1\u06d8\u06e6\u06d8\u06e6\u06e0\u06eb\u06d7\u06e1\u06e5\u06e6\u06e4\u06d8\u06d8\u06d9\u06e7\u06d8\u06d8\u06da\u06da"

    goto/16 :goto_0

    :sswitch_31
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7e45778c -> :sswitch_2d
        -0x7205fdc6 -> :sswitch_12
        -0x65eeacc4 -> :sswitch_1b
        -0x64ce8a38 -> :sswitch_e
        -0x6494c7f8 -> :sswitch_f
        -0x609ce0a3 -> :sswitch_1
        -0x5cfeb9a6 -> :sswitch_26
        -0x593f3d7e -> :sswitch_5
        -0x4a78ca05 -> :sswitch_27
        -0x427a2da2 -> :sswitch_1d
        -0x14cfd339 -> :sswitch_31
        -0x1890ce5 -> :sswitch_4
        0x28fada9 -> :sswitch_d
        0xc349782 -> :sswitch_28
        0x103b044e -> :sswitch_2
        0x12d17c71 -> :sswitch_2b
        0x220d9f43 -> :sswitch_3
        0x22e375f9 -> :sswitch_0
        0x320582d3 -> :sswitch_29
        0x3a0baaeb -> :sswitch_1a
        0x51524563 -> :sswitch_11
        0x5bfd7c3e -> :sswitch_2c
        0x679e9915 -> :sswitch_2e
        0x7253666e -> :sswitch_1c
        0x727ebf6d -> :sswitch_2a
        0x7af8a4b2 -> :sswitch_1e
        0x7d893ed6 -> :sswitch_10
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x6d94b937 -> :sswitch_8
        -0xfda132 -> :sswitch_30
        0x3c557c9a -> :sswitch_c
        0x6ada0f88 -> :sswitch_6
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        -0x80e0394 -> :sswitch_7
        0x66079c4 -> :sswitch_b
        0x1ec81999 -> :sswitch_9
        0x23842a87 -> :sswitch_a
    .end sparse-switch

    :sswitch_data_3
    .sparse-switch
        -0x21009c9d -> :sswitch_13
        0x188f750b -> :sswitch_2f
        0x2b2f1c35 -> :sswitch_18
        0x52c7b48f -> :sswitch_19
    .end sparse-switch

    :sswitch_data_4
    .sparse-switch
        -0x50ecc38a -> :sswitch_14
        -0x483874ad -> :sswitch_17
        0x1f39aee5 -> :sswitch_16
        0x57dd1029 -> :sswitch_15
    .end sparse-switch

    :sswitch_data_5
    .sparse-switch
        -0x78d44b11 -> :sswitch_25
        -0x70573df6 -> :sswitch_20
        0xbcb3b67 -> :sswitch_1e
        0x2d409165 -> :sswitch_24
    .end sparse-switch

    :sswitch_data_6
    .sparse-switch
        -0x5415464d -> :sswitch_22
        -0x3fb94922 -> :sswitch_1f
        0x7e0de73 -> :sswitch_21
        0x37531f35 -> :sswitch_23
    .end sparse-switch
.end method


# virtual methods
.method public onDetachedFromWindow()V
    .locals 4

    const-string v0, "\u06dc\u06ec\u06e2\u06df\u06d8\u06d8\u06e1\u06e2\u06d7\u06db\u06dc\u06e8\u06d8\u06da\u06e0\u06d6\u06e8\u06e1\u06e0\u06df\u06d7\u06e5\u06d8\u06db\u06e4\u06e8\u06e1\u06d6\u06e6\u06e1\u06d9\u06df\u06e6\u06d6\u06e0\u06e1\u06d7"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x2bf

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x2c3

    const/16 v2, 0x35d

    const v3, 0x3521f146

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e5\u06e5\u06d8\u06d7\u06e6\u06d7\u06d9\u06e5\u06dc\u06e1\u06e5\u06d8\u06db\u06db\u06e2\u06df\u06ec\u06d8\u06e4\u06dc\u06df\u06da\u06d7\u06d6\u06d8\u06e7\u06e0\u06e8\u06d8\u06ec\u06d9\u06d6\u06d6\u06ec\u06e5\u06d8\u06dc\u06db\u06d9\u06e8\u06da\u06e1\u06d8\u06e8\u06d8\u06da\u06ec\u06dc\u06e7\u06df\u06d9\u06df"

    goto :goto_0

    :sswitch_1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    const-string v0, "\u06df\u06ec\u06e5\u06df\u06db\u06dc\u06d8\u06d7\u06ec\u06dc\u06d8\u06e2\u06df\u06dc\u06d8\u06e1\u06ec\u06eb\u06e6\u06d9\u06d6\u06e6\u06e0\u06da\u06dc\u06dc\u06e2\u06d7\u06e7\u06eb\u06e8\u06d7\u06da\u06ec\u06d8\u06d7\u06e4\u06d7\u06ec"

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout;->OooooO0:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const-string v0, "\u06e5\u06e6\u06d6\u06e8\u06e0\u06dc\u06d8\u06db\u06dc\u06e1\u06d8\u06e4\u06e6\u06da\u06e0\u06df\u06db\u06dc\u06e4\u06d7\u06ec\u06df\u06e7\u06df\u06d8\u06e5\u06e7\u06e4\u06db\u06e7\u06da\u06e6\u06e0\u06e1\u06d6\u06e0\u06d7\u06d6\u06e1\u06e0\u06e8\u06e1\u06e4\u06e1\u06d7\u06d7\u06d8\u06d8\u06d7\u06e6\u06e6\u06d8"

    goto :goto_0

    :sswitch_3
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x3b395b6e -> :sswitch_1
        -0x6eb6e70 -> :sswitch_3
        0x6b3d94da -> :sswitch_2
        0x7088334a -> :sswitch_0
    .end sparse-switch
.end method
