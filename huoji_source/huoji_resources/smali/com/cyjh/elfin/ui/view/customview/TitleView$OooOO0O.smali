.class public Lcom/cyjh/elfin/ui/view/customview/TitleView$OooOO0O;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/elfin/ui/view/customview/TitleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OooOO0O"
.end annotation


# instance fields
.field public final OoooOoO:Lcom/cyjh/elfin/ui/view/customview/TitleView;


# direct methods
.method private constructor <init>(Lcom/cyjh/elfin/ui/view/customview/TitleView;)V
    .locals 0

    iput-object p1, p0, Lcom/cyjh/elfin/ui/view/customview/TitleView$OooOO0O;->OoooOoO:Lcom/cyjh/elfin/ui/view/customview/TitleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/cyjh/elfin/ui/view/customview/TitleView;Lcom/cyjh/elfin/ui/view/customview/TitleView$OooO00o;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cyjh/elfin/ui/view/customview/TitleView$OooOO0O;-><init>(Lcom/cyjh/elfin/ui/view/customview/TitleView;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const-string v0, "\u06e5\u06db\u06e5\u06e8\u06d7\u06d6\u06ec\u06db\u06e4\u06dc\u06eb\u06e6\u06e2\u06d6\u06d6\u06e1\u06eb\u06e8\u06dc\u06d7\u06dc\u06ec\u06e5\u06d6\u06d8\u06e8\u06dc\u06e1\u06e8\u06e4\u06e4"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x1a7

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x18b

    const/16 v2, 0xc9

    const v3, 0x7a0a5518

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06ec\u06df\u06eb\u06dc\u06db\u06e5\u06ec\u06e6\u06e5\u06dc\u06e1\u06dc\u06df\u06e2\u06eb\u06e8\u06dc\u06e2\u06e8\u06da\u06e2\u06e8\u06e6\u06d9\u06d7\u06eb\u06d7\u06d8\u06d8\u06e7\u06dc\u06da\u06e1\u06e2\u06e2\u06ec\u06da\u06d8\u06e5\u06d8\u06d7\u06d9\u06db"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06e5\u06e6\u06ec\u06d6\u06d7\u06e8\u06d8\u06ec\u06e5\u06d6\u06d8\u06eb\u06da\u06e6\u06d8\u06e2\u06e7\u06e1\u06d8\u06e8\u06d8\u06df\u06e8\u06e6\u06ec\u06d6\u06e4\u06eb\u06e7\u06df\u06e0\u06d6\u06df\u06d9\u06eb\u06e5\u06d8\u06dc\u06e4\u06ec\u06d6\u06db\u06e5\u06d8\u06da\u06e1\u06e7\u06d8"

    goto :goto_0

    :sswitch_2
    const v1, 0x496a4023

    const-string v0, "\u06dc\u06eb\u06d6\u06d8\u06dc\u06d9\u06e6\u06e4\u06e7\u06dc\u06e7\u06dc\u06d9\u06ec\u06ec\u06df\u06e5\u06e2\u06e8\u06d8\u06dc\u06e2\u06e5\u06e7\u06e6\u06e1\u06e0\u06da\u06e0\u06da\u06e7\u06ec"

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v2, v1

    sparse-switch v2, :sswitch_data_1

    goto :goto_1

    :sswitch_3
    const-string v0, "\u06d9\u06df\u06da\u06d9\u06e2\u06d8\u06e0\u06e0\u06da\u06e4\u06da\u06dc\u06eb\u06e2\u06dc\u06ec\u06da\u06d8\u06d8\u06eb\u06e2\u06e1\u06d8\u06e1\u06d9\u06e6\u06d8\u06e6\u06e1\u06d6\u06d8\u06e5\u06e1\u06e8\u06da\u06df\u06e2\u06eb\u06e2\u06d6\u06d8\u06ec\u06ec\u06e8\u06d8\u06df\u06d7\u06e8\u06d8\u06e5\u06e8\u06e8\u06d8\u06e2\u06d9\u06e8\u06d8"

    goto :goto_1

    :sswitch_4
    const-string v0, "\u06d7\u06e7\u06e8\u06d8\u06da\u06d7\u06eb\u06e2\u06df\u06d9\u06e2\u06e2\u06e0\u06d8\u06e4\u06d7\u06ec\u06d9\u06eb\u06db\u06e6\u06db\u06e0\u06e5\u06e5\u06eb\u06df\u06ec\u06eb\u06dc\u06e2\u06da\u06e0\u06e5\u06d9\u06e4\u06e4\u06d7\u06e0\u06e0\u06e8\u06d8\u06da\u06e1\u06d8\u06e1\u06e1\u06e6\u06d6\u06df\u06d7\u06da\u06ec\u06e2"

    goto :goto_1

    :sswitch_5
    const v2, -0x49b86984

    const-string v0, "\u06d7\u06e5\u06d7\u06da\u06db\u06da\u06d7\u06d7\u06e1\u06eb\u06e5\u06da\u06e1\u06d9\u06dc\u06d9\u06e4\u06e5\u06d7\u06eb\u06e8\u06d6\u06db\u06d9\u06d8\u06ec\u06e1\u06d8\u06d6\u06dc\u06e4\u06e8\u06e7\u06e5\u06d8\u06e7\u06e0\u06e4"

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v2

    sparse-switch v3, :sswitch_data_2

    goto :goto_2

    :sswitch_6
    iget-object v0, p0, Lcom/cyjh/elfin/ui/view/customview/TitleView$OooOO0O;->OoooOoO:Lcom/cyjh/elfin/ui/view/customview/TitleView;

    invoke-static {v0}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->OooO0O0(Lcom/cyjh/elfin/ui/view/customview/TitleView;)Lcom/cyjh/elfin/ui/view/customview/TitleView$OooO0OO;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "\u06e2\u06d7\u06d8\u06db\u06e4\u06e6\u06d8\u06e0\u06e0\u06d8\u06da\u06d8\u06d8\u06dc\u06ec\u06e8\u06df\u06e1\u06e0\u06d7\u06d7\u06e1\u06db\u06e5\u06d8\u06e8\u06e1\u06d9\u06dc\u06d9\u06e6\u06d8\u06e5\u06d9\u06e5\u06db\u06e8\u06dc\u06d8"

    goto :goto_2

    :cond_0
    const-string v0, "\u06e8\u06ec\u06d8\u06d8\u06e5\u06e4\u06dc\u06d8\u06d8\u06d9\u06d7\u06db\u06d8\u06d8\u06d8\u06d8\u06db\u06e6\u06da\u06d7\u06e8\u06e7\u06ec\u06e4\u06d8\u06e8\u06dc\u06d8\u06ec\u06e2\u06e6\u06d8\u06d9\u06e1\u06e7\u06d8\u06dc\u06e5\u06e5\u06d7\u06d7\u06e8\u06df\u06e7\u06d8\u06d6\u06df\u06e0\u06e7\u06df\u06da\u06d6\u06db\u06e6"

    goto :goto_2

    :sswitch_7
    const-string v0, "\u06e7\u06e0\u06da\u06df\u06e0\u06eb\u06e1\u06eb\u06d8\u06d9\u06e4\u06dc\u06d9\u06e6\u06e6\u06da\u06da\u06d8\u06d8\u06e7\u06db\u06ec\u06e7\u06db\u06ec\u06e8\u06e5\u06e4\u06d9\u06d8\u06e6\u06d8\u06e7\u06db\u06d6\u06ec\u06d6\u06e8\u06e0\u06e4\u06d7\u06e4\u06d8\u06db"

    goto :goto_2

    :sswitch_8
    const-string v0, "\u06eb\u06d9\u06e8\u06d8\u06ec\u06e6\u06e8\u06d8\u06e2\u06e6\u06e5\u06db\u06e1\u06da\u06e1\u06e1\u06d8\u06e7\u06e4\u06e4\u06d7\u06d8\u06df\u06ec\u06e8\u06d9\u06e8\u06df\u06da\u06e5\u06d6\u06d9\u06e6\u06dc\u06e8\u06d8\u06dc\u06e5\u06e1\u06e6\u06db\u06e1\u06d8\u06e6\u06d9\u06e0\u06db\u06dc\u06d6\u06e2\u06e0\u06e0"

    goto :goto_1

    :sswitch_9
    const-string v0, "\u06d8\u06e5\u06d6\u06d8\u06e5\u06db\u06d6\u06d8\u06e6\u06d8\u06e1\u06d8\u06eb\u06e4\u06e5\u06d8\u06d8\u06eb\u06df\u06eb\u06da\u06db\u06d7\u06d8\u06e5\u06d7\u06eb\u06e5\u06d8\u06d6\u06e8\u06d6\u06e7\u06e8\u06e5\u06e5\u06e0\u06e2\u06e1\u06e8\u06d7"

    goto :goto_0

    :sswitch_a
    iget-object v0, p0, Lcom/cyjh/elfin/ui/view/customview/TitleView$OooOO0O;->OoooOoO:Lcom/cyjh/elfin/ui/view/customview/TitleView;

    invoke-static {v0}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->OooO0O0(Lcom/cyjh/elfin/ui/view/customview/TitleView;)Lcom/cyjh/elfin/ui/view/customview/TitleView$OooO0OO;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/cyjh/elfin/ui/view/customview/TitleView$OooO0OO;->onClick(Landroid/view/View;)V

    const-string v0, "\u06e5\u06e7\u06e5\u06dc\u06dc\u06d6\u06e8\u06db\u06da\u06d6\u06d8\u06e8\u06dc\u06d7\u06e1\u06eb\u06db\u06d8\u06d9\u06da\u06e6\u06d8\u06e2\u06ec\u06e8\u06ec\u06eb\u06db\u06d6\u06eb\u06db\u06d8\u06d8\u06e5\u06dc\u06e1\u06d9\u06df\u06e7\u06e5\u06d8\u06db\u06dc\u06d8\u06e0\u06e0\u06e6\u06e0\u06d9\u06dc\u06db\u06d7\u06ec\u06da\u06ec\u06d6\u06d8"

    goto :goto_0

    :sswitch_b
    const-string v0, "\u06e5\u06e7\u06e5\u06dc\u06dc\u06d6\u06e8\u06db\u06da\u06d6\u06d8\u06e8\u06dc\u06d7\u06e1\u06eb\u06db\u06d8\u06d9\u06da\u06e6\u06d8\u06e2\u06ec\u06e8\u06ec\u06eb\u06db\u06d6\u06eb\u06db\u06d8\u06d8\u06e5\u06dc\u06e1\u06d9\u06df\u06e7\u06e5\u06d8\u06db\u06dc\u06d8\u06e0\u06e0\u06e6\u06e0\u06d9\u06dc\u06db\u06d7\u06ec\u06da\u06ec\u06d6\u06d8"

    goto :goto_0

    :sswitch_c
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7667247b -> :sswitch_a
        -0x41e349eb -> :sswitch_2
        -0x3cb481ba -> :sswitch_c
        0x1787595c -> :sswitch_0
        0x609f6bcd -> :sswitch_1
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x6ca64f22 -> :sswitch_9
        -0x634713b7 -> :sswitch_3
        -0x36ff67a -> :sswitch_5
        0x6f73f995 -> :sswitch_b
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        -0x73e4bcc9 -> :sswitch_6
        -0x28d0247e -> :sswitch_7
        -0x132be0e2 -> :sswitch_4
        0x5b61c6a7 -> :sswitch_8
    .end sparse-switch
.end method
