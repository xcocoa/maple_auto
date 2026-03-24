.class public Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator$OooO00o;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final OoooOoO:Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;


# direct methods
.method public constructor <init>(Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;)V
    .locals 0

    iput-object p1, p0, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator$OooO00o;->OoooOoO:Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    const/4 v3, 0x0

    const/4 v5, 0x0

    const-string v0, "\u06e5\u06d6\u06db\u06da\u06e5\u06e8\u06e8\u06e2\u06eb\u06e1\u06ec\u06da\u06d6\u06e8\u06e2\u06d7\u06d8\u06eb\u06d9\u06da\u06e4\u06d9\u06d8\u06e4\u06e7\u06e5\u06d8\u06da\u06e6\u06e8\u06d8\u06e5\u06e1\u06e0\u06e4\u06dc\u06d8\u06dc\u06df\u06d9\u06e0\u06db\u06e1\u06d8\u06dc\u06e6\u06e0\u06df\u06df\u06d9"

    move-object v1, v0

    move v2, v3

    move v4, v3

    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v3, 0x13c

    xor-int/2addr v0, v3

    xor-int/lit16 v0, v0, 0x1fe

    const/16 v3, 0x3ae

    const v6, -0x74daf89

    xor-int/2addr v0, v3

    xor-int/2addr v0, v6

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06dc\u06e2\u06e5\u06d8\u06e7\u06e0\u06e2\u06e0\u06e0\u06eb\u06e0\u06db\u06d8\u06d8\u06e5\u06df\u06da\u06e6\u06db\u06df\u06e1\u06e6\u06e8\u06d8\u06db\u06da\u06e2\u06d6\u06dc\u06e7\u06e6\u06e5\u06e7"

    move-object v1, v0

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06d9\u06e0\u06d8\u06d8\u06e8\u06da\u06d9\u06da\u06e4\u06e2\u06e1\u06df\u06e1\u06d8\u06df\u06d7\u06e4\u06e0\u06df\u06e5\u06d8\u06da\u06dc\u06e2\u06e0\u06e5\u06d9\u06d7\u06d8\u06d8\u06d8\u06ec\u06eb\u06e7"

    move-object v1, v0

    goto :goto_0

    :sswitch_2
    move-object v0, p1

    check-cast v0, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator$OooO0o;

    const-string v1, "\u06db\u06dc\u06e1\u06d8\u06eb\u06e4\u06e0\u06e0\u06e0\u06d6\u06e2\u06db\u06d8\u06d8\u06ec\u06df\u06e2\u06e7\u06e4\u06d7\u06e5\u06da\u06e6\u06d8\u06e6\u06e2\u06e2\u06e1\u06e0\u06d6\u06e5\u06d8\u06d8\u06d9\u06e2\u06dc\u06e8\u06dc\u06df\u06e2\u06db\u06e8\u06e1\u06e6\u06d6"

    move-object v5, v0

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator$OooO00o;->OoooOoO:Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;

    invoke-static {v0}, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;->OooO0OO(Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;)Landroidx/viewpager/widget/ViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v3

    const-string v0, "\u06e7\u06d8\u06e2\u06da\u06d8\u06db\u06d8\u06df\u06db\u06d7\u06e1\u06e8\u06d8\u06d7\u06e6\u06e8\u06d8\u06df\u06dc\u06e0\u06e2\u06d9\u06d8\u06d8\u06e2\u06e7\u06d6\u06e6\u06e1\u06d6\u06eb\u06e1\u06d6\u06d8\u06d6\u06ec\u06e7\u06d9\u06e2\u06d9"

    move-object v1, v0

    move v4, v3

    goto :goto_0

    :sswitch_4
    invoke-virtual {v5}, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator$OooO0o;->OooO0O0()I

    move-result v2

    const-string v0, "\u06e7\u06da\u06d6\u06e5\u06e0\u06e5\u06d8\u06e5\u06e7\u06ec\u06df\u06ec\u06d6\u06df\u06eb\u06e2\u06e6\u06e1\u06dc\u06d8\u06e1\u06e4\u06e5\u06d8\u06ec\u06e6\u06e5\u06d8\u06e2\u06d9\u06db\u06e6\u06e1\u06d9\u06e0\u06e5\u06e0\u06d9\u06dc\u06e7\u06e4\u06e2\u06e1\u06d6\u06db\u06e4\u06d7\u06d9\u06e1\u06d8\u06da\u06d6\u06d6\u06d8"

    move-object v1, v0

    goto :goto_0

    :sswitch_5
    iget-object v0, p0, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator$OooO00o;->OoooOoO:Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;

    invoke-static {v0}, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;->OooO0OO(Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;)Landroidx/viewpager/widget/ViewPager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    const-string v0, "\u06da\u06d8\u06e1\u06d8\u06d9\u06e6\u06e7\u06d8\u06e2\u06da\u06da\u06e7\u06df\u06d9\u06d6\u06e0\u06df\u06e1\u06e1\u06ec\u06dc\u06d9\u06e6\u06d8\u06db\u06e7\u06d8\u06d8\u06e5\u06e1\u06e8\u06ec\u06d8\u06ec\u06e0\u06e6\u06e5\u06e7\u06e8\u06e6\u06d8\u06df\u06e2\u06d6\u06e2\u06df\u06ec\u06e2\u06e0\u06e4\u06e6\u06e5\u06e2\u06d8\u06df\u06db\u06e8\u06e5\u06e6\u06d8"

    move-object v1, v0

    goto :goto_0

    :sswitch_6
    const v1, 0x70992630

    const-string v0, "\u06da\u06e4\u06e2\u06e4\u06e7\u06e8\u06d8\u06d7\u06db\u06e2\u06e0\u06e0\u06d6\u06d8\u06e8\u06e6\u06e0\u06e1\u06e6\u06e4\u06dc\u06d8\u06d6\u06d9\u06e4\u06e8\u06dc\u06e8\u06d6\u06e8\u06eb\u06e4\u06d8\u06d8\u06d7\u06e0\u06e8\u06e2\u06dc\u06ec\u06db\u06e0\u06e6\u06e4\u06e7\u06df\u06e5\u06ec\u06e5\u06d8\u06d8"

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v1

    sparse-switch v3, :sswitch_data_1

    goto :goto_1

    :sswitch_7
    const v3, -0x7e550d32

    const-string v0, "\u06dc\u06d8\u06e6\u06d8\u06d8\u06ec\u06e4\u06d9\u06e8\u06d6\u06d8\u06e6\u06df\u06df\u06e0\u06ec\u06e0\u06d9\u06df\u06da\u06e0\u06d6\u06e1\u06eb\u06d9\u06e7\u06db\u06eb\u06da\u06e6\u06df\u06e5\u06d8"

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v6

    xor-int/2addr v6, v3

    sparse-switch v6, :sswitch_data_2

    goto :goto_2

    :sswitch_8
    const-string v0, "\u06ec\u06d8\u06eb\u06e1\u06e2\u06e0\u06da\u06d9\u06df\u06db\u06da\u06e1\u06e4\u06db\u06e0\u06eb\u06e1\u06e6\u06e2\u06e0\u06e8\u06d8\u06e5\u06e8\u06e1\u06ec\u06d7\u06e1\u06d6\u06da\u06d6\u06d7\u06e0\u06db\u06da\u06eb\u06e0\u06e8\u06db\u06da\u06da\u06e7\u06e8\u06d8\u06e4\u06e2\u06d7\u06dc\u06df\u06e1\u06d8"

    goto :goto_2

    :sswitch_9
    const-string v0, "\u06df\u06e1\u06d6\u06db\u06e2\u06e6\u06d8\u06e4\u06e6\u06d8\u06d8\u06dc\u06eb\u06e7\u06eb\u06d7\u06e1\u06ec\u06d6\u06e8\u06d8\u06eb\u06d6\u06e5\u06d8\u06d8\u06dc\u06e8\u06d8\u06d8\u06eb\u06eb\u06ec\u06e6\u06e8\u06eb\u06df\u06ec\u06ec\u06e6\u06e5"

    goto :goto_1

    :cond_0
    const-string v0, "\u06d8\u06e4\u06d8\u06d8\u06db\u06e7\u06d7\u06e1\u06e8\u06d7\u06eb\u06eb\u06d9\u06d6\u06dc\u06e8\u06da\u06e0\u06e7\u06d7\u06d6\u06d9\u06e5\u06d8\u06d9\u06da\u06e5\u06d8\u06e7\u06da\u06d6\u06d8\u06da\u06d6\u06db\u06e8\u06dc\u06e6\u06d8"

    goto :goto_2

    :sswitch_a
    if-ne v4, v2, :cond_0

    const-string v0, "\u06d8\u06e0\u06d8\u06da\u06ec\u06ec\u06e7\u06e2\u06eb\u06ec\u06e4\u06dc\u06d8\u06e6\u06e4\u06db\u06e7\u06d6\u06e6\u06dc\u06d8\u06e0\u06e1\u06d8\u06d6\u06e0\u06dc\u06d8\u06eb\u06db\u06e6\u06e2\u06e6\u06dc\u06d8\u06dc\u06e2\u06dc\u06d8\u06d7\u06eb\u06eb\u06d9\u06df\u06e1\u06e4\u06df\u06dc\u06d8\u06da\u06dc\u06e4\u06dc\u06eb\u06d7\u06ec\u06d8\u06e0"

    goto :goto_2

    :sswitch_b
    const-string v0, "\u06d7\u06e4\u06e8\u06d8\u06df\u06dc\u06e5\u06dc\u06e0\u06e6\u06d7\u06df\u06d6\u06e5\u06e5\u06e6\u06d8\u06d7\u06d6\u06e5\u06d8\u06d6\u06e5\u06df\u06e6\u06d9\u06e6\u06d8\u06d9\u06eb\u06d8\u06d8\u06e8\u06e4\u06d6\u06e6\u06d7\u06e7\u06d6\u06e7\u06d8"

    goto :goto_1

    :sswitch_c
    const-string v0, "\u06e1\u06d9\u06d8\u06dc\u06dc\u06dc\u06d6\u06da\u06da\u06e1\u06dc\u06e4\u06e2\u06e5\u06e4\u06e5\u06db\u06dc\u06d8\u06eb\u06d6\u06e8\u06e0\u06e2\u06e8\u06e7\u06d9\u06e6\u06eb\u06d6\u06eb\u06eb\u06e5\u06e0\u06e1\u06e2\u06e7\u06ec\u06df\u06e5\u06d8\u06e6\u06e2\u06e2\u06e8\u06e4\u06d9\u06e7\u06e7\u06e4"

    goto :goto_1

    :sswitch_d
    const-string v0, "\u06e1\u06dc\u06d6\u06e2\u06e5\u06e5\u06e1\u06e6\u06e2\u06ec\u06d7\u06e8\u06e7\u06e4\u06d9\u06eb\u06d9\u06e8\u06e6\u06e6\u06dc\u06eb\u06da\u06e1\u06e1\u06da\u06df\u06ec\u06eb\u06d7\u06eb\u06ec\u06e5\u06d8\u06d9\u06ec\u06e4\u06dc\u06e1\u06dc\u06db\u06d7\u06e0\u06d9\u06d6\u06d6\u06e7\u06e5\u06e1\u06e0\u06df\u06d9"

    move-object v1, v0

    goto :goto_0

    :sswitch_e
    const v1, -0x632d2819

    const-string v0, "\u06df\u06e1\u06da\u06d6\u06d7\u06e1\u06d8\u06e0\u06df\u06e0\u06e6\u06d7\u06d6\u06d8\u06d8\u06e2\u06e2\u06e4\u06d6\u06e7\u06d8\u06e4\u06e1\u06e4\u06dc\u06e5\u06d8\u06e7\u06d6\u06d9\u06d7\u06e7\u06e1\u06d8\u06d6\u06e0\u06da\u06e7\u06e8\u06e4\u06d7\u06df\u06db\u06da\u06ec\u06da\u06eb\u06d9\u06d6\u06d8\u06e2\u06d9\u06d7\u06d8\u06e8\u06db\u06e1\u06d7\u06e6\u06d8"

    :goto_3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v1

    sparse-switch v3, :sswitch_data_3

    goto :goto_3

    :sswitch_f
    const v3, 0x5059709f

    const-string v0, "\u06e1\u06ec\u06da\u06eb\u06ec\u06ec\u06e1\u06d9\u06d7\u06e6\u06d7\u06d7\u06e6\u06d9\u06da\u06eb\u06e1\u06e8\u06d8\u06d8\u06e6\u06e8\u06d8\u06d7\u06d9\u06e0\u06dc\u06e7\u06e8\u06d8\u06e1\u06e6\u06e5\u06e8\u06da\u06d6\u06e2\u06d7\u06e6\u06d6\u06d8\u06e8\u06eb\u06e7\u06d9\u06dc\u06da\u06df\u06da\u06e8"

    :goto_4
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v6

    xor-int/2addr v6, v3

    sparse-switch v6, :sswitch_data_4

    goto :goto_4

    :sswitch_10
    const-string v0, "\u06e6\u06e5\u06db\u06dc\u06d9\u06e6\u06d8\u06e1\u06e8\u06d6\u06d8\u06eb\u06e5\u06dc\u06d8\u06e2\u06df\u06e8\u06e8\u06d6\u06dc\u06e8\u06e0\u06db\u06e1\u06da\u06d9\u06d8\u06e7\u06dc\u06ec\u06e7\u06df\u06e7\u06e1\u06e1\u06e7\u06d8\u06e1\u06e7\u06e7\u06d6\u06da\u06e1\u06d8\u06e0\u06e0\u06e6\u06e7\u06e8\u06d7"

    goto :goto_3

    :cond_1
    const-string v0, "\u06e5\u06eb\u06ec\u06eb\u06dc\u06e0\u06db\u06e1\u06e5\u06d8\u06e6\u06d8\u06e0\u06ec\u06d8\u06ec\u06db\u06e8\u06db\u06e2\u06e7\u06e8\u06e7\u06e6\u06df\u06db\u06d6\u06d8\u06e1\u06e2\u06d6\u06da\u06d8\u06d8\u06e0\u06e0\u06d6\u06d7\u06e5\u06e7\u06d8\u06e6\u06e2\u06d8\u06d8\u06e7\u06e2\u06d9\u06dc\u06e7\u06d8\u06d8\u06df\u06e7\u06e7\u06e8\u06e6\u06e1"

    goto :goto_4

    :sswitch_11
    iget-object v0, p0, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator$OooO00o;->OoooOoO:Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;

    invoke-static {v0}, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;->OooO0Oo(Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;)Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator$OooO0OO;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "\u06da\u06d9\u06e7\u06db\u06d7\u06d6\u06e6\u06da\u06d7\u06e5\u06db\u06e7\u06e8\u06e4\u06dc\u06d8\u06e7\u06e4\u06e8\u06d8\u06db\u06ec\u06df\u06d6\u06e0\u06ec\u06e4\u06e7\u06e6\u06df\u06e8\u06e6\u06db\u06e0\u06e8\u06eb\u06d8\u06dc\u06d8"

    goto :goto_4

    :sswitch_12
    const-string v0, "\u06db\u06e4\u06e1\u06d8\u06dc\u06d6\u06e5\u06e5\u06d8\u06dc\u06d8\u06d7\u06d9\u06e6\u06d8\u06d9\u06da\u06eb\u06ec\u06dc\u06d8\u06db\u06e7\u06da\u06da\u06e7\u06ec\u06e2\u06da\u06da\u06d6\u06dc\u06e8\u06d8"

    goto :goto_4

    :sswitch_13
    const-string v0, "\u06df\u06dc\u06e8\u06df\u06e5\u06df\u06ec\u06d6\u06dc\u06db\u06e1\u06e5\u06d8\u06d6\u06e7\u06ec\u06d9\u06d8\u06e5\u06eb\u06eb\u06e0\u06e5\u06e8\u06d8\u06d8\u06e7\u06eb\u06d8\u06d8\u06d6\u06e8\u06da\u06e0\u06d9\u06e6\u06dc\u06e4\u06e7\u06e0\u06db\u06df\u06dc\u06d9\u06d8\u06e5\u06e4\u06d7\u06da\u06e6\u06ec\u06e1\u06d6\u06df\u06eb\u06e6"

    goto :goto_3

    :sswitch_14
    const-string v0, "\u06d7\u06df\u06e6\u06d7\u06d8\u06dc\u06d8\u06d8\u06e8\u06d8\u06d8\u06d7\u06da\u06e1\u06dc\u06e7\u06ec\u06e2\u06ec\u06e1\u06d8\u06d6\u06e5\u06d8\u06d8\u06e7\u06da\u06e1\u06d8\u06e6\u06d8\u06d6\u06e6\u06da\u06e4"

    goto :goto_3

    :sswitch_15
    const-string v0, "\u06db\u06e8\u06e5\u06d8\u06d6\u06db\u06eb\u06ec\u06df\u06d6\u06d8\u06e5\u06e1\u06e6\u06d8\u06e1\u06e2\u06d6\u06d8\u06da\u06e6\u06df\u06e8\u06eb\u06d8\u06df\u06e6\u06e7\u06db\u06db\u06d6\u06d8\u06e4\u06ec\u06ec\u06e5\u06dc\u06d9\u06df\u06db\u06db\u06e2\u06eb\u06e1\u06d8\u06e8\u06d9\u06d6"

    move-object v1, v0

    goto/16 :goto_0

    :sswitch_16
    iget-object v0, p0, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator$OooO00o;->OoooOoO:Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;

    invoke-static {v0}, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;->OooO0Oo(Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;)Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator$OooO0OO;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator$OooO0OO;->OooO00o(I)V

    const-string v0, "\u06e0\u06df\u06d6\u06d8\u06da\u06d6\u06dc\u06d8\u06ec\u06e5\u06e4\u06d7\u06da\u06e5\u06e2\u06e1\u06d7\u06e6\u06eb\u06d8\u06d8\u06d9\u06e6\u06e6\u06d8\u06d8\u06d7\u06e0\u06e5\u06db\u06e7\u06e2\u06e7\u06ec\u06e1\u06d8\u06da\u06e0\u06d9\u06e8\u06e1\u06e1\u06d8\u06da\u06da\u06da"

    move-object v1, v0

    goto/16 :goto_0

    :sswitch_17
    const-string v0, "\u06e0\u06df\u06d6\u06d8\u06da\u06d6\u06dc\u06d8\u06ec\u06e5\u06e4\u06d7\u06da\u06e5\u06e2\u06e1\u06d7\u06e6\u06eb\u06d8\u06d8\u06d9\u06e6\u06e6\u06d8\u06d8\u06d7\u06e0\u06e5\u06db\u06e7\u06e2\u06e7\u06ec\u06e1\u06d8\u06da\u06e0\u06d9\u06e8\u06e1\u06e1\u06d8\u06da\u06da\u06da"

    move-object v1, v0

    goto/16 :goto_0

    :sswitch_18
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x3394ae9f -> :sswitch_4
        -0x2b8cb399 -> :sswitch_3
        -0x16b95155 -> :sswitch_6
        -0x83862c3 -> :sswitch_0
        -0x404a067 -> :sswitch_2
        0x10110642 -> :sswitch_18
        0x1e707be8 -> :sswitch_e
        0x33b7fcee -> :sswitch_1
        0x4e5188c3 -> :sswitch_16
        0x5d05a54d -> :sswitch_5
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x7cb67031 -> :sswitch_c
        -0xa317122 -> :sswitch_d
        0x432f3d11 -> :sswitch_17
        0x7b05be94 -> :sswitch_7
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        -0x3ae677a5 -> :sswitch_a
        0x8a73f86 -> :sswitch_8
        0x8c61b01 -> :sswitch_b
        0x11f43cd8 -> :sswitch_9
    .end sparse-switch

    :sswitch_data_3
    .sparse-switch
        -0x66dd9974 -> :sswitch_14
        -0x54625026 -> :sswitch_f
        -0x35b7416e -> :sswitch_17
        0x5859bd93 -> :sswitch_15
    .end sparse-switch

    :sswitch_data_4
    .sparse-switch
        -0x7a4942fc -> :sswitch_13
        -0x55460a1d -> :sswitch_11
        -0x32ede9a8 -> :sswitch_10
        -0x492025a -> :sswitch_12
    .end sparse-switch
.end method
