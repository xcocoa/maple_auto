.class public Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator$OooO0o;
.super Landroid/widget/TextView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OooO0o"
.end annotation


# instance fields
.field private OoooOoO:I

.field public final OoooOoo:Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;


# direct methods
.method public constructor <init>(Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;Landroid/content/Context;)V
    .locals 2

    iput-object p1, p0, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator$OooO0o;->OoooOoo:Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;

    const/4 v0, 0x0

    const v1, 0x7f040275

    invoke-direct {p0, p2, v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static synthetic OooO00o(Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator$OooO0o;I)I
    .locals 4

    const-string v0, "\u06e0\u06df\u06e6\u06d6\u06da\u06db\u06e1\u06da\u06d9\u06d8\u06d8\u06e7\u06e1\u06eb\u06dc\u06d8\u06d7\u06df\u06e0\u06e8\u06dc\u06e1\u06d8\u06e7\u06ec\u06d7\u06e0\u06e6\u06e1\u06db\u06e1\u06df\u06e5\u06d6\u06d7\u06eb\u06ec\u06e0\u06e4\u06e6\u06d8\u06da\u06da\u06dc\u06d8\u06e6\u06e6\u06e6\u06dc\u06e4\u06e5\u06d8\u06d6\u06d6\u06da\u06e4\u06d8\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x12f

    xor-int/2addr v1, v2

    xor-int/lit8 v1, v1, 0x39

    const/16 v2, 0x224

    const v3, 0x2fc8ec8c

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06df\u06eb\u06ec\u06d8\u06e0\u06e8\u06d8\u06e0\u06e8\u06e8\u06d8\u06e5\u06da\u06dc\u06d8\u06da\u06d8\u06e1\u06e4\u06da\u06e7\u06e0\u06d6\u06dc\u06e5\u06db\u06d9\u06e7\u06da\u06d7\u06dc\u06d8\u06e8\u06e7\u06e7\u06dc\u06d8\u06d6\u06d8\u06e2\u06e2\u06e5\u06d8\u06db\u06eb\u06db\u06d8\u06d6\u06e6\u06d8\u06e1\u06e1\u06d8"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06d9\u06e0\u06df\u06d8\u06d8\u06ec\u06da\u06d8\u06ec\u06e8\u06ec\u06e5\u06d8\u06dc\u06e5\u06d7\u06e0\u06d7\u06d9\u06e2\u06d8\u06eb\u06d8\u06e5\u06e8\u06e4\u06db\u06e0\u06e5\u06d6\u06e7\u06d8\u06e1\u06e6\u06e8\u06e7\u06db\u06da\u06eb\u06e0\u06db\u06e4\u06e5\u06e8"

    goto :goto_0

    :sswitch_2
    iput p1, p0, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator$OooO0o;->OoooOoO:I

    const-string v0, "\u06da\u06e5\u06e1\u06d8\u06e5\u06ec\u06e1\u06d8\u06d7\u06eb\u06e6\u06d8\u06e4\u06d6\u06e6\u06e2\u06e1\u06e1\u06d8\u06e2\u06d8\u06e1\u06df\u06e6\u06d8\u06e4\u06d7\u06d6\u06d8\u06e6\u06e0\u06e8\u06df\u06d9\u06d8\u06d8\u06e0\u06d8\u06d7\u06d7\u06e2\u06dc\u06d8"

    goto :goto_0

    :sswitch_3
    return p1

    :sswitch_data_0
    .sparse-switch
        -0x376e087d -> :sswitch_3
        0x27f6cfc -> :sswitch_1
        0x11c05d02 -> :sswitch_0
        0x2bfebfba -> :sswitch_2
    .end sparse-switch
.end method


# virtual methods
.method public OooO0O0()I
    .locals 4

    const-string v0, "\u06df\u06e7\u06df\u06df\u06d6\u06e7\u06d8\u06e4\u06e4\u06e5\u06e1\u06d6\u06d8\u06e2\u06d8\u06e7\u06d8\u06dc\u06e2\u06df\u06e4\u06d7\u06d6\u06db\u06ec\u06e0\u06df\u06df\u06db\u06d8\u06ec\u06d8\u06d8\u06eb\u06e1\u06d8\u06d8\u06eb\u06db\u06d8\u06d8\u06d9\u06e5\u06e7\u06df\u06ec\u06e6\u06d8\u06eb\u06e8\u06dc\u06d7\u06d8\u06eb\u06d9\u06d7\u06e0\u06e2\u06e5\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x290

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x35b

    const/16 v2, 0x232

    const v3, 0x41a70e95

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e5\u06d8\u06d9\u06ec\u06d7\u06e6\u06db\u06e4\u06e6\u06d8\u06e5\u06dc\u06e1\u06d8\u06db\u06e6\u06dc\u06dc\u06eb\u06d7\u06dc\u06e4\u06dc\u06eb\u06e6\u06e7\u06e5\u06e8\u06d8\u06e2\u06db\u06e8"

    goto :goto_0

    :sswitch_1
    iget v0, p0, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator$OooO0o;->OoooOoO:I

    return v0

    :sswitch_data_0
    .sparse-switch
        -0x48c2d2f8 -> :sswitch_0
        0x8a5f9cb -> :sswitch_1
    .end sparse-switch
.end method

.method public onMeasure(II)V
    .locals 4

    const-string v0, "\u06e2\u06d8\u06d9\u06e5\u06dc\u06ec\u06e6\u06eb\u06e7\u06e5\u06da\u06e2\u06d9\u06e8\u06d6\u06d8\u06da\u06e0\u06d6\u06e1\u06e0\u06e8\u06e2\u06dc\u06da\u06e4\u06da\u06d7\u06e2\u06e8\u06dc\u06d8\u06da\u06eb\u06d6\u06e5\u06df\u06e0"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x10

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x2af

    const/16 v2, 0x2c9

    const v3, -0x50f4e54f

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d9\u06e1\u06d8\u06d7\u06df\u06d8\u06df\u06d6\u06e5\u06d8\u06e6\u06df\u06e8\u06d8\u06d8\u06db\u06e5\u06ec\u06e6\u06e7\u06d8\u06d8\u06eb\u06e8\u06d8\u06e5\u06dc\u06db\u06e1\u06da\u06e6\u06d8\u06e1\u06d6\u06d8\u06da\u06dc\u06d6\u06e1\u06dc\u06e4\u06e8\u06da\u06e8\u06d8\u06e2\u06d7\u06e5\u06d8\u06e0\u06eb\u06e0\u06e8\u06e4"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06e4\u06e2\u06d8\u06d7\u06d6\u06e7\u06e5\u06e1\u06e2\u06e0\u06da\u06e5\u06d8\u06eb\u06e1\u06ec\u06df\u06ec\u06d6\u06dc\u06e5\u06d8\u06d6\u06e0\u06d6\u06d8\u06df\u06e8\u06d6\u06d8\u06d7\u06e8\u06d8"

    goto :goto_0

    :sswitch_2
    const-string v0, "\u06e8\u06da\u06d6\u06e7\u06e5\u06e4\u06dc\u06e0\u06e0\u06eb\u06e6\u06df\u06d8\u06e6\u06e7\u06dc\u06d9\u06d6\u06d8\u06da\u06da\u06e8\u06e6\u06e2\u06e1\u06d8\u06d7\u06e1\u06d8\u06e0\u06da\u06d7\u06dc\u06db\u06ec\u06e4\u06e1\u06e1\u06d8"

    goto :goto_0

    :sswitch_3
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    const-string v0, "\u06e8\u06e1\u06db\u06e4\u06d8\u06da\u06db\u06dc\u06dc\u06d8\u06d9\u06d9\u06d8\u06e0\u06e8\u06d7\u06eb\u06da\u06da\u06d6\u06e2\u06e5\u06d8\u06e6\u06dc\u06d8\u06db\u06e4\u06e8\u06ec\u06dc\u06e6\u06e0\u06e1\u06e7\u06ec\u06da\u06e0\u06da\u06e6\u06e6\u06e1\u06da\u06e5\u06d6\u06df\u06eb\u06eb\u06d7\u06e0"

    goto :goto_0

    :sswitch_4
    const v1, 0x55e0c59a

    const-string v0, "\u06e5\u06e1\u06d8\u06e4\u06d9\u06e1\u06e6\u06da\u06e0\u06da\u06e8\u06e8\u06d8\u06e7\u06e8\u06e7\u06d7\u06d8\u06d9\u06df\u06d7\u06dc\u06eb\u06e0\u06e6\u06db\u06d6\u06e8\u06d8\u06e6\u06e6\u06d7\u06e0\u06e5\u06d8\u06d6\u06d6\u06ec\u06e0\u06e8\u06e6\u06e6\u06d7\u06e5\u06d8"

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v2, v1

    sparse-switch v2, :sswitch_data_1

    goto :goto_1

    :sswitch_5
    const-string v0, "\u06e1\u06dc\u06d8\u06d8\u06e1\u06d9\u06e5\u06d8\u06d7\u06e7\u06e7\u06d6\u06e8\u06db\u06e6\u06d6\u06d7\u06e7\u06d6\u06e8\u06e8\u06df\u06eb\u06df\u06db\u06e5\u06d8\u06e1\u06d8\u06e1\u06d6\u06d7\u06e4\u06e2\u06d8\u06e6\u06e4\u06e4\u06dc\u06e4\u06eb\u06e1\u06d8\u06eb\u06e7\u06e1\u06d8\u06eb\u06da\u06d6\u06e2\u06d6\u06d8"

    goto :goto_0

    :sswitch_6
    const-string v0, "\u06db\u06e2\u06d9\u06da\u06dc\u06d8\u06e0\u06df\u06e8\u06e8\u06e0\u06e1\u06d8\u06ec\u06e0\u06d6\u06d6\u06ec\u06d8\u06e2\u06e1\u06e0\u06df\u06e4\u06db\u06e1\u06db\u06e6\u06db\u06e0\u06df\u06e2\u06ec\u06dc\u06ec\u06e1\u06e6\u06d8\u06e4\u06da\u06e1\u06df\u06da\u06df"

    goto :goto_1

    :sswitch_7
    const v2, 0x53b7412b

    const-string v0, "\u06e5\u06ec\u06e8\u06d8\u06d9\u06df\u06e5\u06d7\u06dc\u06d8\u06e8\u06da\u06e5\u06d7\u06eb\u06e4\u06e7\u06e8\u06e1\u06d8\u06eb\u06dc\u06db\u06e2\u06df\u06db\u06e8\u06eb\u06e6\u06e7\u06e8\u06e4\u06e0\u06e4\u06d7\u06d9\u06e4\u06e5"

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v2

    sparse-switch v3, :sswitch_data_2

    goto :goto_2

    :sswitch_8
    const-string v0, "\u06d7\u06d6\u06e7\u06d8\u06db\u06d8\u06d8\u06eb\u06d6\u06e5\u06d8\u06e5\u06e8\u06e6\u06da\u06eb\u06eb\u06e1\u06d7\u06db\u06e8\u06d7\u06e6\u06db\u06ec\u06e2\u06d9\u06d7\u06e2\u06e1\u06eb\u06e8\u06d8\u06d7\u06e8\u06d8\u06e7\u06d9\u06d8\u06d8\u06d9\u06da\u06dc\u06d8\u06df\u06e4\u06e2\u06e2\u06e6\u06df\u06dc\u06d9"

    goto :goto_2

    :cond_0
    const-string v0, "\u06e0\u06e0\u06d8\u06e4\u06e2\u06eb\u06ec\u06d9\u06e1\u06e2\u06dc\u06d6\u06d8\u06d9\u06d7\u06e7\u06d6\u06e6\u06da\u06d8\u06e7\u06d6\u06db\u06d8\u06eb\u06dc\u06dc\u06dc\u06d8\u06e0\u06df\u06dc\u06e0\u06eb\u06d6\u06d8\u06eb\u06d9\u06d6\u06d8\u06e6\u06e8\u06d7\u06eb\u06d8\u06e1\u06d8\u06d8\u06e0\u06ec\u06eb\u06eb\u06e6\u06d8\u06d9\u06e1\u06d8\u06d8\u06db\u06da\u06dc\u06d8"

    goto :goto_2

    :sswitch_9
    iget-object v0, p0, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator$OooO0o;->OoooOoo:Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;

    invoke-static {v0}, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;->OooO0o(Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;)I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "\u06e5\u06e0\u06d8\u06e2\u06e1\u06e5\u06d8\u06da\u06d7\u06e2\u06db\u06e5\u06e0\u06eb\u06ec\u06dc\u06db\u06d6\u06e0\u06dc\u06d8\u06e2\u06eb\u06e4\u06dc\u06e4\u06e1\u06da\u06d9\u06d6"

    goto :goto_2

    :sswitch_a
    const-string v0, "\u06d7\u06df\u06e7\u06e1\u06dc\u06e1\u06e8\u06d9\u06d6\u06db\u06dc\u06d8\u06e0\u06e1\u06eb\u06dc\u06e8\u06d7\u06d7\u06d6\u06d8\u06df\u06e0\u06e7\u06e6\u06d6\u06e1\u06d8\u06d9\u06e4\u06e8\u06e0\u06e6\u06e6\u06e7\u06df\u06df\u06db\u06e1\u06d9\u06d6\u06dc\u06d8\u06d9\u06e4\u06d6\u06d6\u06da\u06e0\u06e0\u06e1\u06e7\u06d7\u06dc\u06e1\u06d8"

    goto :goto_1

    :sswitch_b
    const-string v0, "\u06e0\u06d9\u06d8\u06e0\u06da\u06e5\u06df\u06d9\u06d6\u06e2\u06d6\u06ec\u06df\u06e7\u06df\u06e2\u06d7\u06df\u06e0\u06d8\u06d8\u06dc\u06e7\u06d8\u06d9\u06e4\u06e7\u06df\u06ec\u06ec\u06df\u06e1\u06d8\u06df\u06ec\u06d6\u06d8\u06da\u06e1\u06e8\u06df\u06d9\u06e1\u06d8\u06e7\u06e0\u06e8\u06d8\u06e0\u06d6\u06e5"

    goto :goto_1

    :sswitch_c
    const-string v0, "\u06d8\u06e8\u06e0\u06eb\u06e2\u06e1\u06dc\u06d6\u06db\u06ec\u06e1\u06e0\u06dc\u06dc\u06d9\u06d6\u06dc\u06e5\u06d9\u06e7\u06e6\u06d8\u06e6\u06dc\u06e7\u06d8\u06db\u06d6\u06e1\u06d8\u06d9\u06d6\u06eb\u06eb\u06e4\u06e7\u06d7\u06db\u06e8\u06d8\u06eb\u06d8\u06e4\u06e5\u06d7\u06d9"

    goto :goto_0

    :sswitch_d
    const v1, -0x28cba820

    const-string v0, "\u06e8\u06dc\u06e7\u06da\u06d6\u06d6\u06d8\u06ec\u06d6\u06e1\u06d9\u06e1\u06d7\u06da\u06ec\u06eb\u06dc\u06d9\u06e6\u06d8\u06d7\u06e4\u06e8\u06e4\u06d9\u06da\u06df\u06e8\u06e1\u06df\u06e0\u06df"

    :goto_3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v2, v1

    sparse-switch v2, :sswitch_data_3

    goto :goto_3

    :sswitch_e
    const-string v0, "\u06e7\u06e2\u06e0\u06dc\u06d9\u06dc\u06e2\u06df\u06dc\u06da\u06da\u06e8\u06ec\u06db\u06e2\u06d9\u06d6\u06d8\u06ec\u06db\u06e1\u06db\u06e8\u06e6\u06e7\u06e5\u06e0\u06da\u06d7\u06eb\u06e0\u06e5\u06d6\u06d8\u06d9\u06d6\u06eb\u06d9\u06ec\u06e6\u06d8\u06e7\u06ec\u06e0\u06eb\u06d6\u06e1\u06d8\u06da\u06e2\u06e5"

    goto :goto_3

    :sswitch_f
    const-string v0, "\u06d6\u06dc\u06ec\u06dc\u06e8\u06e6\u06e5\u06d8\u06e7\u06d7\u06d6\u06db\u06e1\u06da\u06dc\u06d8\u06e0\u06df\u06df\u06ec\u06d8\u06e1\u06d8\u06d8\u06ec\u06d7\u06eb\u06ec\u06df\u06dc\u06e1\u06d8\u06e2\u06da\u06e7\u06e5\u06e8\u06e4\u06e6\u06ec\u06d6\u06d8\u06dc\u06ec\u06e4"

    goto :goto_3

    :sswitch_10
    const v2, -0x5bc13ec2

    const-string v0, "\u06e2\u06e1\u06e0\u06e2\u06d6\u06e5\u06d8\u06ec\u06d8\u06e1\u06e2\u06d8\u06dc\u06d8\u06d8\u06e5\u06dc\u06d6\u06e5\u06e5\u06dc\u06d9\u06e7\u06e2\u06d8\u06dc\u06e8\u06ec\u06dc\u06d8\u06db\u06d8\u06e6\u06d8\u06da\u06e5\u06d6\u06d8\u06df\u06eb\u06e1\u06e7\u06df\u06e2\u06e5\u06da\u06d9\u06d6\u06d6\u06e1\u06e4\u06db\u06d6\u06d6\u06e8\u06e6\u06d8\u06dc\u06d9\u06d8"

    :goto_4
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v2

    sparse-switch v3, :sswitch_data_4

    goto :goto_4

    :sswitch_11
    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    iget-object v3, p0, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator$OooO0o;->OoooOoo:Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;

    invoke-static {v3}, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;->OooO0o(Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;)I

    move-result v3

    if-le v0, v3, :cond_1

    const-string v0, "\u06d7\u06e4\u06d6\u06d8\u06d8\u06d8\u06d8\u06ec\u06e5\u06e6\u06dc\u06eb\u06e8\u06e4\u06e8\u06e5\u06d8\u06d7\u06db\u06e4\u06db\u06dc\u06d9\u06e4\u06dc\u06d9\u06e1\u06d6\u06e7\u06e4\u06e0\u06e4\u06e1\u06e7\u06d7\u06dc\u06e1\u06d8\u06db\u06d8\u06da\u06d8\u06db\u06d9\u06dc\u06e7\u06d9\u06dc\u06e4\u06da\u06e5\u06da\u06e1\u06eb\u06e1\u06d8"

    goto :goto_4

    :cond_1
    const-string v0, "\u06e4\u06e1\u06d6\u06d8\u06e4\u06e2\u06da\u06e8\u06e6\u06e8\u06e1\u06e7\u06e6\u06d8\u06d7\u06e1\u06db\u06ec\u06d7\u06e8\u06d9\u06d9\u06e0\u06d9\u06dc\u06e5\u06e1\u06d6\u06db\u06e4\u06d6\u06ec\u06d7\u06e1\u06d8\u06d7\u06d8\u06da\u06dc\u06d8\u06e8\u06d8\u06ec\u06ec\u06e7\u06eb\u06db\u06d8\u06e5\u06e0\u06df"

    goto :goto_4

    :sswitch_12
    const-string v0, "\u06dc\u06ec\u06d9\u06df\u06dc\u06e6\u06e0\u06ec\u06e8\u06d8\u06e4\u06e5\u06eb\u06da\u06d7\u06df\u06e8\u06d8\u06d6\u06d8\u06dc\u06e0\u06d8\u06d8\u06e7\u06d6\u06e6\u06eb\u06e8\u06ec\u06e5\u06dc\u06e6\u06d8\u06e1\u06e0\u06d6\u06d8\u06df\u06e0"

    goto :goto_4

    :sswitch_13
    const-string v0, "\u06da\u06e1\u06e0\u06e1\u06e7\u06d8\u06e0\u06e4\u06e5\u06d8\u06eb\u06e1\u06d6\u06e7\u06da\u06d9\u06d6\u06df\u06e0\u06e1\u06dc\u06e5\u06d8\u06da\u06db\u06d8\u06d8\u06e0\u06e4\u06d8\u06d8\u06d6\u06eb\u06e8\u06d8"

    goto :goto_3

    :sswitch_14
    const-string v0, "\u06e1\u06d8\u06e4\u06db\u06dc\u06e5\u06d8\u06d9\u06df\u06da\u06e1\u06d6\u06e0\u06d7\u06e6\u06d8\u06d9\u06df\u06e8\u06e4\u06ec\u06dc\u06d8\u06e1\u06e8\u06eb\u06d7\u06e1\u06df\u06e5\u06d9\u06d8\u06db\u06e6\u06df\u06e8\u06e1\u06dc\u06d8"

    goto/16 :goto_0

    :sswitch_15
    iget-object v0, p0, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator$OooO0o;->OoooOoo:Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;

    invoke-static {v0}, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;->OooO0o(Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;)I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {p0, v0, p2}, Landroid/widget/TextView;->onMeasure(II)V

    const-string v0, "\u06e1\u06dc\u06d8\u06d8\u06e1\u06d9\u06e5\u06d8\u06d7\u06e7\u06e7\u06d6\u06e8\u06db\u06e6\u06d6\u06d7\u06e7\u06d6\u06e8\u06e8\u06df\u06eb\u06df\u06db\u06e5\u06d8\u06e1\u06d8\u06e1\u06d6\u06d7\u06e4\u06e2\u06d8\u06e6\u06e4\u06e4\u06dc\u06e4\u06eb\u06e1\u06d8\u06eb\u06e7\u06e1\u06d8\u06eb\u06da\u06d6\u06e2\u06d6\u06d8"

    goto/16 :goto_0

    :sswitch_16
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6113991e -> :sswitch_3
        -0x53481b54 -> :sswitch_0
        0x1c845186 -> :sswitch_1
        0x3652f50c -> :sswitch_15
        0x3a9ac35e -> :sswitch_2
        0x51a81fcb -> :sswitch_16
        0x5e44d560 -> :sswitch_d
        0x6ce6aa70 -> :sswitch_4
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x7d2c02ac -> :sswitch_c
        -0x533f0954 -> :sswitch_7
        -0x47a9131a -> :sswitch_b
        0x34fe7a1 -> :sswitch_5
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        -0x7f07a3b0 -> :sswitch_6
        -0x6594a887 -> :sswitch_a
        -0x5545ac90 -> :sswitch_9
        -0x42b46cc8 -> :sswitch_8
    .end sparse-switch

    :sswitch_data_3
    .sparse-switch
        -0x68b204b2 -> :sswitch_14
        0xa79f1b4 -> :sswitch_5
        0x3f29fbb9 -> :sswitch_e
        0x48e8060f -> :sswitch_10
    .end sparse-switch

    :sswitch_data_4
    .sparse-switch
        -0x36a796aa -> :sswitch_12
        0x258258f3 -> :sswitch_13
        0x59517076 -> :sswitch_11
        0x76d50dfb -> :sswitch_f
    .end sparse-switch
.end method
