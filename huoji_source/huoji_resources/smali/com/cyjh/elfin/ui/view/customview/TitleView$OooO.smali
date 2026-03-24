.class public Lcom/cyjh/elfin/ui/view/customview/TitleView$OooO;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/elfin/ui/view/customview/TitleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OooO"
.end annotation


# instance fields
.field public final OoooOoO:Lcom/cyjh/elfin/ui/view/customview/TitleView;


# direct methods
.method private constructor <init>(Lcom/cyjh/elfin/ui/view/customview/TitleView;)V
    .locals 0

    iput-object p1, p0, Lcom/cyjh/elfin/ui/view/customview/TitleView$OooO;->OoooOoO:Lcom/cyjh/elfin/ui/view/customview/TitleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/cyjh/elfin/ui/view/customview/TitleView;Lcom/cyjh/elfin/ui/view/customview/TitleView$OooO00o;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cyjh/elfin/ui/view/customview/TitleView$OooO;-><init>(Lcom/cyjh/elfin/ui/view/customview/TitleView;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const-string v0, "\u06da\u06e0\u06d6\u06d8\u06e4\u06ec\u06e5\u06d8\u06da\u06e6\u06e2\u06d8\u06eb\u06dc\u06d8\u06e6\u06da\u06d6\u06d8\u06e2\u06ec\u06e1\u06da\u06d6\u06e8\u06d8\u06e6\u06e6\u06df\u06df\u06e6\u06e4\u06dc\u06e7\u06e4"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x2f

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x3f2

    const/16 v2, 0x39e

    const v3, 0x592f6a4a

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06eb\u06d6\u06e8\u06dc\u06db\u06d7\u06df\u06e8\u06d9\u06e4\u06e5\u06e5\u06d8\u06d9\u06e2\u06e5\u06d8\u06da\u06e4\u06d6\u06d8\u06ec\u06e5\u06e7\u06e4\u06eb\u06e7\u06d6\u06e6\u06e0\u06e8\u06e8\u06e4\u06db\u06e0\u06d6\u06e5\u06dc\u06e2\u06e4\u06e4\u06ec\u06e7\u06dc\u06ec\u06d6\u06df\u06e5\u06e2\u06df\u06d6"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06df\u06db\u06e7\u06e4\u06e7\u06eb\u06eb\u06da\u06d9\u06d9\u06e4\u06d6\u06e7\u06d6\u06d9\u06e6\u06d6\u06e4\u06eb\u06db\u06e5\u06d8\u06e8\u06db\u06db\u06d7\u06e8\u06da\u06e4\u06e6\u06d8\u06e2\u06e1\u06e1\u06e8\u06d7\u06d8\u06d6\u06e5\u06df\u06d6\u06da\u06d6\u06d6\u06d7\u06d8\u06d8\u06d9\u06d9\u06e7"

    goto :goto_0

    :sswitch_2
    const v1, -0x17a69b01

    const-string v0, "\u06df\u06eb\u06e8\u06e7\u06eb\u06e4\u06ec\u06e6\u06d9\u06dc\u06e6\u06e7\u06d8\u06e2\u06eb\u06e2\u06ec\u06e4\u06e7\u06d7\u06e1\u06e7\u06e2\u06df\u06e0\u06e2\u06e0\u06da\u06da"

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v2, v1

    sparse-switch v2, :sswitch_data_1

    goto :goto_1

    :sswitch_3
    const-string v0, "\u06e0\u06e2\u06da\u06ec\u06df\u06e5\u06e0\u06dc\u06e0\u06eb\u06e0\u06e4\u06dc\u06e7\u06e2\u06e5\u06db\u06d6\u06e2\u06e0\u06da\u06d8\u06eb\u06e5\u06d8\u06e6\u06d7\u06d6\u06d8\u06e8\u06e8\u06dc\u06e2\u06da\u06e4\u06d6\u06d9\u06db"

    goto :goto_0

    :sswitch_4
    const-string v0, "\u06ec\u06e1\u06e6\u06e7\u06e7\u06e4\u06ec\u06e2\u06e6\u06df\u06e0\u06ec\u06e5\u06ec\u06e1\u06d8\u06e8\u06d8\u06e4\u06e6\u06d8\u06e1\u06d8\u06dc\u06d8\u06df\u06d6\u06da\u06d9\u06da\u06da\u06db\u06dc\u06d9\u06e7\u06d6\u06ec\u06e1\u06df\u06d7\u06d8\u06db\u06e5\u06d8"

    goto :goto_1

    :sswitch_5
    const v2, -0x6c7e0187

    const-string v0, "\u06eb\u06e1\u06e0\u06db\u06d9\u06d8\u06d8\u06e1\u06d7\u06e5\u06e1\u06d8\u06d6\u06d8\u06e4\u06e5\u06d8\u06e1\u06e0\u06ec\u06d6\u06d7\u06e1\u06e5\u06e7\u06e4\u06e7\u06e5\u06d9\u06db\u06e2\u06d6"

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v2

    sparse-switch v3, :sswitch_data_2

    goto :goto_2

    :sswitch_6
    const-string v0, "\u06e6\u06ec\u06d9\u06ec\u06eb\u06e5\u06d8\u06e7\u06e5\u06d6\u06df\u06e5\u06e8\u06df\u06e4\u06df\u06e7\u06df\u06e2\u06e4\u06d9\u06e8\u06d8\u06e0\u06d7\u06d8\u06d8\u06e0\u06d6\u06d8\u06e8\u06db"

    goto :goto_2

    :cond_0
    const-string v0, "\u06d9\u06ec\u06e8\u06d8\u06eb\u06d9\u06e1\u06db\u06eb\u06e2\u06d7\u06e2\u06e2\u06dc\u06e4\u06da\u06eb\u06e7\u06d9\u06e8\u06eb\u06e1\u06db\u06da\u06d7\u06d8\u06e8\u06e5\u06e5\u06e4\u06e7\u06dc\u06d7\u06df\u06e0\u06eb\u06d8\u06d8\u06e1\u06e2\u06e4\u06e4\u06e2\u06e4\u06eb\u06d8\u06e4\u06ec\u06ec\u06d8\u06e5\u06d7\u06d6\u06e6\u06eb\u06d8\u06d8"

    goto :goto_2

    :sswitch_7
    iget-object v0, p0, Lcom/cyjh/elfin/ui/view/customview/TitleView$OooO;->OoooOoO:Lcom/cyjh/elfin/ui/view/customview/TitleView;

    invoke-static {v0}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->OooO0OO(Lcom/cyjh/elfin/ui/view/customview/TitleView;)Lcom/cyjh/elfin/ui/view/customview/TitleView$OooO0o;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "\u06d8\u06dc\u06e6\u06d7\u06d6\u06e6\u06d8\u06e4\u06e6\u06dc\u06e8\u06e1\u06d7\u06e2\u06e1\u06ec\u06db\u06e4\u06d9\u06ec\u06dc\u06e5\u06d8\u06e7\u06d7\u06eb\u06d6\u06e1\u06d8\u06e7\u06da\u06da\u06ec\u06d7\u06e0\u06e5\u06e6\u06e5\u06e8\u06d8\u06e1\u06d8\u06dc\u06d8\u06e5\u06d8\u06d8\u06dc\u06d6\u06d8\u06e2\u06e7\u06d6"

    goto :goto_2

    :sswitch_8
    const-string v0, "\u06e1\u06e6\u06e1\u06d9\u06e8\u06e7\u06d8\u06d8\u06df\u06e1\u06e6\u06eb\u06d8\u06e4\u06eb\u06d6\u06d8\u06d8\u06e2\u06d6\u06d9\u06dc\u06e1\u06db\u06ec\u06e5\u06ec\u06dc\u06ec\u06e0\u06e6\u06d8"

    goto :goto_1

    :sswitch_9
    const-string v0, "\u06d6\u06dc\u06e1\u06d8\u06df\u06dc\u06d6\u06d8\u06d9\u06d8\u06e7\u06d9\u06e8\u06e4\u06e4\u06e8\u06e4\u06d7\u06e0\u06df\u06df\u06e0\u06e5\u06e0\u06d7\u06e8\u06e6\u06e7\u06da\u06da\u06e0\u06e1\u06e6\u06d6\u06d9\u06e7\u06d6\u06d8\u06d9\u06dc\u06e1\u06d8\u06d6\u06d7\u06ec"

    goto :goto_1

    :sswitch_a
    iget-object v0, p0, Lcom/cyjh/elfin/ui/view/customview/TitleView$OooO;->OoooOoO:Lcom/cyjh/elfin/ui/view/customview/TitleView;

    invoke-static {v0}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->OooO0OO(Lcom/cyjh/elfin/ui/view/customview/TitleView;)Lcom/cyjh/elfin/ui/view/customview/TitleView$OooO0o;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/cyjh/elfin/ui/view/customview/TitleView$OooO0o;->OooO00o(Landroid/view/View;)V

    const-string v0, "\u06d6\u06df\u06dc\u06d8\u06df\u06da\u06eb\u06e2\u06d9\u06e5\u06d8\u06e5\u06d9\u06d8\u06d8\u06dc\u06ec\u06e6\u06d6\u06e7\u06e5\u06d6\u06e6\u06df\u06df\u06d6\u06d6\u06d8\u06e7\u06e7\u06e2\u06e4\u06e8\u06e7\u06d8\u06e6\u06eb\u06db\u06d7\u06d6\u06d8\u06d8"

    goto :goto_0

    :sswitch_b
    const-string v0, "\u06d6\u06df\u06dc\u06d8\u06df\u06da\u06eb\u06e2\u06d9\u06e5\u06d8\u06e5\u06d9\u06d8\u06d8\u06dc\u06ec\u06e6\u06d6\u06e7\u06e5\u06d6\u06e6\u06df\u06df\u06d6\u06d6\u06d8\u06e7\u06e7\u06e2\u06e4\u06e8\u06e7\u06d8\u06e6\u06eb\u06db\u06d7\u06d6\u06d8\u06d8"

    goto :goto_0

    :sswitch_c
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x48d52046 -> :sswitch_2
        0xb2f9216 -> :sswitch_c
        0x2b40f2f0 -> :sswitch_1
        0x37eae808 -> :sswitch_a
        0x58a292d9 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x34033e71 -> :sswitch_5
        -0x172fb1bb -> :sswitch_9
        -0xe193568 -> :sswitch_b
        0x306f8adc -> :sswitch_3
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        -0x7d1ed5e6 -> :sswitch_4
        -0x1f8130cb -> :sswitch_7
        0x361e5643 -> :sswitch_8
        0x463cf217 -> :sswitch_6
    .end sparse-switch
.end method
