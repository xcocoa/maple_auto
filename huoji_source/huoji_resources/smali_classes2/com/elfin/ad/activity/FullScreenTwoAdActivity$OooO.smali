.class public Lcom/elfin/ad/activity/FullScreenTwoAdActivity$OooO;
.super Lz2/l3;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/elfin/ad/activity/FullScreenTwoAdActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OooO"
.end annotation


# instance fields
.field public final OooO0OO:Lcom/elfin/ad/activity/FullScreenTwoAdActivity;


# direct methods
.method private constructor <init>(Lcom/elfin/ad/activity/FullScreenTwoAdActivity;I)V
    .locals 0

    iput-object p1, p0, Lcom/elfin/ad/activity/FullScreenTwoAdActivity$OooO;->OooO0OO:Lcom/elfin/ad/activity/FullScreenTwoAdActivity;

    invoke-direct {p0, p2}, Lz2/l3;-><init>(I)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/elfin/ad/activity/FullScreenTwoAdActivity;ILcom/elfin/ad/activity/FullScreenTwoAdActivity$OooO00o;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/elfin/ad/activity/FullScreenTwoAdActivity$OooO;-><init>(Lcom/elfin/ad/activity/FullScreenTwoAdActivity;I)V

    return-void
.end method


# virtual methods
.method public OooO0O0(I)V
    .locals 6

    const/4 v5, 0x0

    const-string v0, "\u06e6\u06e8\u06da\u06dc\u06e0\u06e1\u06d6\u06e8\u06e6\u06d8\u06e5\u06e4\u06df\u06df\u06e0\u06dc\u06e5\u06e7\u06e6\u06d8\u06e5\u06e4\u06e0\u06e4\u06db\u06e5\u06d9\u06da\u06db\u06e0\u06eb\u06d9\u06d6\u06da\u06d8\u06e8\u06d6\u06dc\u06d8\u06da\u06d6\u06e5\u06e0\u06e2\u06e6"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x184

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x25d

    const/16 v2, 0x13a

    const v3, 0x7ca00198

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e5\u06d6\u06e1\u06df\u06e0\u06e4\u06e7\u06e1\u06db\u06d7\u06d6\u06e8\u06d8\u06d8\u06e4\u06e6\u06e0\u06d8\u06e6\u06d8\u06eb\u06e2\u06e6\u06d8\u06db\u06ec\u06e8\u06e4\u06db\u06e5\u06d8\u06dc\u06d9\u06d8\u06e7\u06e8\u06e7\u06ec\u06d7\u06e1\u06d8"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06d7\u06e1\u06dc\u06d8\u06e8\u06e1\u06db\u06e8\u06e1\u06eb\u06df\u06da\u06e7\u06df\u06d9\u06d6\u06d8\u06d9\u06e2\u06df\u06e5\u06db\u06e1\u06d8\u06e5\u06da\u06e8\u06eb\u06db\u06d9\u06db\u06ec\u06e6"

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/elfin/ad/activity/FullScreenTwoAdActivity$OooO;->OooO0OO:Lcom/elfin/ad/activity/FullScreenTwoAdActivity;

    invoke-static {v0}, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->OooO(Lcom/elfin/ad/activity/FullScreenTwoAdActivity;)I

    const-string v0, "\u06ec\u06e1\u06e2\u06e4\u06e5\u06da\u06e2\u06da\u06e8\u06e2\u06db\u06d8\u06db\u06d8\u06e6\u06e0\u06e2\u06d8\u06d6\u06d8\u06db\u06e4\u06d9\u06d7\u06da\u06e5\u06ec\u06e6\u06e4\u06e5\u06d8\u06e7\u06e4\u06d6\u06d8\u06da\u06df\u06e1\u06d8\u06e2\u06e4\u06dc\u06e1\u06e8\u06d8\u06d8"

    goto :goto_0

    :sswitch_3
    const v1, -0x6ff1e863

    const-string v0, "\u06d6\u06e1\u06e6\u06d9\u06dc\u06e2\u06e1\u06da\u06d7\u06e1\u06eb\u06df\u06db\u06e6\u06dc\u06e7\u06ec\u06d9\u06d6\u06e5\u06d7\u06e8\u06d8\u06d8\u06e7\u06d6\u06e4\u06db\u06e5"

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v2, v1

    sparse-switch v2, :sswitch_data_1

    goto :goto_1

    :sswitch_4
    const v2, 0x6e0b76c4

    const-string v0, "\u06e7\u06e1\u06db\u06e4\u06da\u06eb\u06d6\u06e1\u06e8\u06e5\u06da\u06e8\u06d8\u06e2\u06df\u06dc\u06d8\u06eb\u06e8\u06e4\u06e2\u06eb\u06e6\u06e2\u06e8\u06d6\u06d9\u06e2\u06ec\u06d6\u06eb\u06da"

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v2

    sparse-switch v3, :sswitch_data_2

    goto :goto_2

    :sswitch_5
    iget-object v0, p0, Lcom/elfin/ad/activity/FullScreenTwoAdActivity$OooO;->OooO0OO:Lcom/elfin/ad/activity/FullScreenTwoAdActivity;

    invoke-static {v0}, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->OooOO0(Lcom/elfin/ad/activity/FullScreenTwoAdActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u06e1\u06d6\u06d7\u06d8\u06e6\u06e8\u06e0\u06d7\u06dc\u06eb\u06e5\u06e5\u06d7\u06e1\u06d8\u06e8\u06e8\u06d7\u06e1\u06eb\u06dc\u06e7\u06e6\u06df\u06e2\u06e0\u06d8\u06d8\u06da\u06eb\u06d8\u06d8\u06e8\u06e1\u06eb\u06db\u06d8\u06d6\u06db\u06e7\u06ec\u06d7\u06e5\u06db\u06e8\u06e8\u06d6\u06d8\u06db\u06da\u06e2\u06e5\u06da\u06e0\u06df\u06d8\u06d9"

    goto :goto_2

    :sswitch_6
    const-string v0, "\u06e2\u06e1\u06e0\u06e8\u06e0\u06dc\u06d8\u06e5\u06e1\u06e8\u06d8\u06dc\u06e0\u06df\u06dc\u06e4\u06d9\u06e5\u06da\u06e7\u06eb\u06d6\u06dc\u06e8\u06e6\u06d6\u06e8\u06d9\u06d7\u06d9\u06ec\u06e6\u06d8\u06d9\u06dc\u06e5\u06d8\u06ec\u06da\u06e5\u06d8\u06ec\u06da\u06dc\u06da\u06e5\u06db\u06d6\u06e5\u06d6\u06e0\u06d6\u06e5\u06d8"

    goto :goto_1

    :cond_0
    const-string v0, "\u06d9\u06eb\u06e1\u06df\u06d7\u06da\u06d7\u06df\u06eb\u06e7\u06d9\u06da\u06d6\u06dc\u06e7\u06e7\u06e1\u06dc\u06d8\u06da\u06d8\u06d8\u06e8\u06e2\u06e1\u06ec\u06e1\u06e1\u06e7\u06da\u06eb\u06d6\u06df\u06d6\u06d8\u06e2\u06da\u06e2\u06eb\u06dc\u06e4\u06e2\u06eb\u06e4"

    goto :goto_2

    :sswitch_7
    const-string v0, "\u06dc\u06df\u06d9\u06e5\u06e8\u06e2\u06eb\u06d6\u06e5\u06e2\u06e5\u06e6\u06d8\u06d7\u06e1\u06e6\u06d8\u06d9\u06e6\u06d8\u06e8\u06e6\u06dc\u06d8\u06e8\u06d8\u06e7\u06d6\u06eb\u06d8\u06e0\u06e6\u06d9\u06d8\u06d8\u06e6\u06d8\u06e8\u06ec\u06d8\u06d8\u06db\u06df\u06eb\u06e2\u06eb\u06e0"

    goto :goto_2

    :sswitch_8
    const-string v0, "\u06e2\u06d6\u06e7\u06eb\u06d8\u06d7\u06db\u06e0\u06e1\u06e8\u06e8\u06dc\u06d7\u06e0\u06eb\u06e6\u06e5\u06e7\u06ec\u06e2\u06eb\u06d6\u06d8\u06df\u06d9\u06e7\u06eb\u06e7\u06d6\u06e2\u06db\u06d6\u06df\u06e7\u06e4\u06eb\u06db\u06da\u06d9\u06dc\u06da\u06dc\u06e2\u06e6\u06d8\u06dc\u06d9\u06d7"

    goto :goto_1

    :sswitch_9
    const-string v0, "\u06da\u06e6\u06d9\u06db\u06e2\u06e5\u06d8\u06e6\u06da\u06d8\u06d9\u06e7\u06e1\u06df\u06e4\u06e5\u06d8\u06e0\u06eb\u06eb\u06e1\u06e2\u06e6\u06e4\u06da\u06e6\u06e2\u06e0\u06d7\u06db\u06eb\u06e2\u06eb\u06eb\u06e6\u06d7\u06e5\u06eb"

    goto :goto_1

    :sswitch_a
    const-string v0, "\u06e4\u06db\u06d6\u06d8\u06df\u06e2\u06e1\u06d8\u06e2\u06df\u06e8\u06d8\u06e4\u06e0\u06e6\u06d8\u06ec\u06db\u06e6\u06d8\u06e7\u06e5\u06e5\u06e1\u06d6\u06e0\u06d9\u06dc\u06d7\u06e4\u06e4\u06dc\u06e0\u06dc\u06d8\u06df\u06e4\u06e8\u06d8\u06d9\u06d6\u06e1\u06d8"

    goto :goto_0

    :sswitch_b
    iget-object v0, p0, Lcom/elfin/ad/activity/FullScreenTwoAdActivity$OooO;->OooO0OO:Lcom/elfin/ad/activity/FullScreenTwoAdActivity;

    invoke-static {v0}, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->OooOO0O(Lcom/elfin/ad/activity/FullScreenTwoAdActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/elfin/ad/activity/FullScreenTwoAdActivity$OooO;->OooO0OO:Lcom/elfin/ad/activity/FullScreenTwoAdActivity;

    sget v2, Lcom/elfin/ad/R$string;->countdown_time:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "\u06e5\u06db\u06e4\u06e0\u06d8\u06d8\u06d6\u06ec\u06d6\u06d8\u06dc\u06eb\u06df\u06d7\u06dc\u06d9\u06e2\u06d8\u06d6\u06e5\u06e2\u06e5\u06db\u06d9\u06ec\u06dc\u06d7\u06e8\u06e6\u06e2"

    goto :goto_0

    :sswitch_c
    iget-object v0, p0, Lcom/elfin/ad/activity/FullScreenTwoAdActivity$OooO;->OooO0OO:Lcom/elfin/ad/activity/FullScreenTwoAdActivity;

    invoke-static {v0}, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->OooOO0O(Lcom/elfin/ad/activity/FullScreenTwoAdActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    const-string v0, "\u06e4\u06e8\u06e5\u06d8\u06eb\u06eb\u06df\u06ec\u06e1\u06e2\u06e6\u06e1\u06e8\u06d8\u06dc\u06e6\u06e4\u06e0\u06e1\u06e8\u06e1\u06e2\u06e1\u06e6\u06dc\u06e0\u06d8\u06db\u06e0\u06e5\u06d8\u06eb\u06e7\u06dc\u06e6\u06e4\u06dc\u06d8\u06e7\u06d6\u06e1\u06d8\u06d8\u06d8\u06e8\u06d8\u06d9\u06eb\u06e7\u06e6\u06d9"

    goto/16 :goto_0

    :sswitch_d
    const-string v0, "\u06e4\u06e8\u06e5\u06d8\u06eb\u06eb\u06df\u06ec\u06e1\u06e2\u06e6\u06e1\u06e8\u06d8\u06dc\u06e6\u06e4\u06e0\u06e1\u06e8\u06e1\u06e2\u06e1\u06e6\u06dc\u06e0\u06d8\u06db\u06e0\u06e5\u06d8\u06eb\u06e7\u06dc\u06e6\u06e4\u06dc\u06d8\u06e7\u06d6\u06e1\u06d8\u06d8\u06d8\u06e8\u06d8\u06d9\u06eb\u06e7\u06e6\u06d9"

    goto/16 :goto_0

    :sswitch_e
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6431174f -> :sswitch_b
        -0x5bf37985 -> :sswitch_0
        -0x437da28b -> :sswitch_2
        -0x42a47482 -> :sswitch_3
        -0x20b6c3a6 -> :sswitch_e
        -0x70fe456 -> :sswitch_c
        0x32a9ef45 -> :sswitch_1
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x7ac94b04 -> :sswitch_4
        -0x73b306ae -> :sswitch_9
        -0x537218ad -> :sswitch_d
        0x61f29550 -> :sswitch_a
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        -0x44fc2c06 -> :sswitch_7
        -0x39bfd4f5 -> :sswitch_6
        -0x159f49cf -> :sswitch_5
        -0x1069ba12 -> :sswitch_8
    .end sparse-switch
.end method

.method public onFinish()V
    .locals 4

    const-string v0, "\u06e7\u06e0\u06e7\u06d7\u06e6\u06da\u06e5\u06e8\u06e0\u06da\u06e2\u06dc\u06df\u06df\u06e0\u06e4\u06d7\u06e5\u06d8\u06e8\u06e5\u06e5\u06d8\u06e1\u06e6\u06d8\u06e6\u06e0\u06e6\u06e8\u06d6\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x2db

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x2d7

    const/16 v2, 0x305

    const v3, 0x3de3c47e

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d8\u06d8\u06dc\u06db\u06e5\u06db\u06e1\u06e6\u06d6\u06d8\u06e2\u06e5\u06d9\u06df\u06d7\u06db\u06d9\u06d8\u06d9\u06e5\u06db\u06d6\u06d8\u06ec\u06e6\u06d6\u06e7\u06ec\u06d7\u06d9\u06e0\u06d7\u06df\u06d7\u06dc\u06e6\u06e6\u06dc\u06d8\u06e0\u06e1\u06e1\u06e4\u06df\u06eb"

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/elfin/ad/activity/FullScreenTwoAdActivity$OooO;->OooO0OO:Lcom/elfin/ad/activity/FullScreenTwoAdActivity;

    invoke-static {v0}, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->OooO0oO(Lcom/elfin/ad/activity/FullScreenTwoAdActivity;)V

    const-string v0, "\u06e2\u06e5\u06dc\u06e7\u06da\u06dc\u06eb\u06e2\u06df\u06eb\u06e5\u06db\u06dc\u06e8\u06e1\u06d8\u06da\u06db\u06e8\u06d8\u06e7\u06e5\u06e8\u06d8\u06e5\u06d8\u06e8\u06e1\u06e7\u06d8\u06eb\u06e7\u06e1\u06e1\u06e1\u06e4\u06e4\u06d6\u06e8\u06e6\u06ec\u06e8\u06df\u06d9\u06eb\u06da\u06e1\u06e2\u06df\u06ec\u06e5\u06e0\u06e1\u06da\u06e7\u06d7\u06e1"

    goto :goto_0

    :sswitch_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x1f67babc -> :sswitch_2
        -0x2530b38 -> :sswitch_1
        0x72c8ef98 -> :sswitch_0
    .end sparse-switch
.end method
