.class public Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$OooOO0;
.super Landroid/os/CountDownTimer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final OooO00o:Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;


# direct methods
.method public constructor <init>(Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$OooOO0;->OooO00o:Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 4

    const-string v0, "\u06e6\u06d8\u06da\u06d6\u06eb\u06db\u06d6\u06e8\u06d8\u06e7\u06dc\u06d6\u06e0\u06e4\u06e4\u06e4\u06da\u06d8\u06d8\u06d6\u06e2\u06e8\u06dc\u06e2\u06e1\u06d8\u06e8\u06eb\u06e8\u06d8\u06e5\u06e8\u06d6\u06d8\u06e8\u06d8\u06df\u06e5\u06eb\u06d9\u06e8\u06d8\u06da\u06e0\u06e5\u06e6\u06d8\u06e6\u06e6\u06d8\u06db\u06ec\u06d9\u06d7\u06d6\u06e6\u06d8\u06d6\u06ec\u06d6"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x127

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0xd2

    const/16 v2, 0xf4

    const v3, 0x6d0f2d94

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e7\u06e5\u06e5\u06e8\u06e5\u06d8\u06ec\u06dc\u06e8\u06e2\u06eb\u06d6\u06d8\u06d9\u06eb\u06df\u06d9\u06e4\u06d9\u06e0\u06db\u06e2\u06d6\u06e5\u06e5\u06d8\u06e4\u06db\u06e8\u06d8\u06da\u06e4\u06e2"

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$OooOO0;->OooO00o:Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;

    invoke-static {v0}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->OooOoo(Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;)V

    const-string v0, "\u06ec\u06d6\u06e2\u06ec\u06e7\u06dc\u06d7\u06db\u06d7\u06e0\u06e6\u06e2\u06d8\u06da\u06d8\u06d7\u06eb\u06e5\u06d8\u06db\u06df\u06e6\u06e1\u06e6\u06e1\u06d7\u06d7\u06e8\u06d8\u06d6\u06e0\u06e4\u06df\u06e5\u06eb\u06e8\u06e8\u06dc\u06d8\u06df\u06e6\u06df\u06d6\u06e4\u06d8\u06d8\u06d9\u06e8\u06e1\u06e4\u06d6\u06eb"

    goto :goto_0

    :sswitch_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x11144e13 -> :sswitch_1
        0x1c34b1c3 -> :sswitch_0
        0x3a96baa4 -> :sswitch_2
    .end sparse-switch
.end method

.method public onTick(J)V
    .locals 7

    const-string v0, "\u06e1\u06da\u06e6\u06d8\u06d6\u06e2\u06e4\u06e4\u06e8\u06da\u06e4\u06e5\u06e6\u06e1\u06e1\u06ec\u06df\u06dc\u06d7\u06d8\u06ec\u06e1\u06e8\u06d9\u06da\u06e4\u06e0\u06e7\u06e5\u06d8\u06d7\u06d7\u06e6\u06e1\u06d6\u06d9\u06dc\u06d7\u06e4\u06e7\u06e7\u06e8\u06d8\u06e5\u06e7\u06ec\u06dc\u06dc\u06e6\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x1bc

    xor-int/2addr v1, v2

    xor-int/lit8 v1, v1, 0x2

    const/16 v2, 0x347

    const v3, -0x6f5d81f4

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06dc\u06d8\u06df\u06d9\u06d7\u06e2\u06e0\u06d8\u06eb\u06dc\u06db\u06e5\u06d8\u06d6\u06e0\u06d6\u06da\u06e0\u06e6\u06d7\u06e1\u06e1\u06d8\u06e4\u06e0\u06e1\u06db\u06ec\u06dc\u06e8\u06d6\u06e5\u06eb\u06e2\u06e1\u06d8\u06ec\u06d7\u06dc"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06d9\u06da\u06e5\u06e5\u06e6\u06e0\u06dc\u06e5\u06e0\u06db\u06d8\u06d7\u06e5\u06e0\u06e0\u06e1\u06db\u06d7\u06e2\u06d8\u06e0\u06d6\u06e1\u06d8\u06e4\u06e0\u06d8\u06db\u06db\u06d7\u06e7\u06d9\u06d8\u06ec\u06e8"

    goto :goto_0

    :sswitch_2
    const v1, 0x62366cec

    const-string v0, "\u06eb\u06e1\u06ec\u06e1\u06e4\u06df\u06e5\u06eb\u06db\u06e5\u06e5\u06e8\u06e2\u06dc\u06db\u06df\u06d6\u06d7\u06e6\u06dc\u06e1\u06e8\u06d6\u06d8\u06db\u06e5\u06d8\u06e8\u06e2\u06db\u06d6\u06d9\u06e2\u06e2\u06d7\u06e8\u06d8"

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v2, v1

    sparse-switch v2, :sswitch_data_1

    goto :goto_1

    :sswitch_3
    const-string v0, "\u06e6\u06d7\u06da\u06e5\u06db\u06e8\u06d6\u06ec\u06d7\u06e5\u06db\u06d8\u06d6\u06dc\u06e5\u06d9\u06d9\u06e4\u06da\u06e0\u06e5\u06db\u06e8\u06ec\u06e1\u06df\u06d6\u06e7\u06e0\u06e6\u06e1\u06e4\u06e6\u06d7\u06e6\u06ec"

    goto :goto_1

    :sswitch_4
    const-string v0, "\u06e4\u06e6\u06d6\u06d8\u06e5\u06d6\u06d9\u06d6\u06df\u06d6\u06d8\u06d7\u06e6\u06e4\u06e4\u06e1\u06dc\u06d8\u06e2\u06e0\u06d7\u06e6\u06d7\u06d8\u06d8\u06df\u06e1\u06e5\u06d8\u06e8\u06d9\u06d6\u06d8\u06d6\u06eb\u06e5\u06d8"

    goto :goto_1

    :sswitch_5
    const v2, -0x658bc1aa

    const-string v0, "\u06e0\u06d6\u06d8\u06d8\u06e4\u06eb\u06d8\u06d8\u06d8\u06e2\u06d7\u06dc\u06d7\u06dc\u06d6\u06e8\u06dc\u06e6\u06e2\u06e0\u06ec\u06d6\u06d8\u06e4\u06d7\u06da\u06df\u06d8\u06e5\u06e2\u06e0\u06e1\u06db\u06eb\u06e5\u06d8\u06e5\u06eb\u06df\u06e7\u06db\u06e4\u06ec\u06e6\u06e4"

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v2

    sparse-switch v3, :sswitch_data_2

    goto :goto_2

    :sswitch_6
    invoke-static {}, Lz2/b7;->OooO0Oo()Lz2/b7;

    move-result-object v0

    iget v0, v0, Lz2/b7;->OooO0OO:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    const-string v0, "\u06db\u06e0\u06e1\u06da\u06d8\u06d8\u06e6\u06d8\u06e1\u06d8\u06e0\u06d7\u06db\u06e4\u06db\u06e0\u06e2\u06e6\u06df\u06db\u06e4\u06eb\u06e4\u06e8\u06d8\u06df\u06e5\u06da\u06dc\u06e1\u06e1\u06d8"

    goto :goto_2

    :cond_0
    const-string v0, "\u06e5\u06ec\u06e6\u06d8\u06e8\u06e8\u06df\u06df\u06da\u06e0\u06eb\u06ec\u06d6\u06d8\u06d8\u06ec\u06df\u06e7\u06e4\u06dc\u06d8\u06e0\u06e2\u06d6\u06e6\u06d8\u06e6\u06e2\u06da\u06e2\u06d6\u06e1\u06e6"

    goto :goto_2

    :sswitch_7
    const-string v0, "\u06e6\u06e7\u06d9\u06d8\u06ec\u06dc\u06d8\u06e8\u06ec\u06e0\u06e7\u06e6\u06e8\u06e8\u06e7\u06e6\u06d8\u06e6\u06eb\u06e5\u06d8\u06d7\u06e6\u06e6\u06d8\u06e2\u06db\u06e1\u06d8\u06e8\u06e4\u06e6\u06d8\u06e6\u06d8\u06d7\u06e7\u06dc\u06eb\u06dc\u06e8"

    goto :goto_2

    :sswitch_8
    const-string v0, "\u06d8\u06ec\u06e6\u06d8\u06e7\u06d6\u06df\u06dc\u06eb\u06e5\u06d8\u06ec\u06e1\u06e2\u06ec\u06e5\u06e6\u06e4\u06e5\u06e4\u06e8\u06e0\u06d8\u06d8\u06d9\u06d6\u06da\u06db\u06d7\u06e0\u06e7\u06e8\u06e0\u06eb\u06eb\u06d8\u06d8\u06ec\u06eb\u06d8\u06d8\u06d6\u06e0"

    goto :goto_1

    :sswitch_9
    const-string v0, "\u06e6\u06d8\u06d7\u06df\u06e7\u06e4\u06ec\u06e0\u06d9\u06dc\u06da\u06df\u06d8\u06d9\u06d8\u06d8\u06da\u06e6\u06d8\u06e4\u06d8\u06e1\u06d8\u06e8\u06da\u06d9\u06e7\u06e0\u06dc\u06d8\u06e0\u06e0\u06e1\u06d8"

    goto :goto_0

    :sswitch_a
    const v1, 0x20017966

    const-string v0, "\u06e1\u06e0\u06d8\u06d8\u06e5\u06eb\u06db\u06e5\u06dc\u06d8\u06d8\u06e4\u06e7\u06d7\u06e0\u06e0\u06e5\u06d6\u06d7\u06e5\u06e4\u06d6\u06e8\u06e2\u06eb\u06df\u06d6\u06da\u06dc\u06d8\u06e0\u06df\u06e6\u06ec\u06df\u06d7\u06d6\u06db\u06e5\u06d8\u06e6\u06e6\u06df\u06d7\u06e7\u06e8\u06d8\u06e8\u06e7\u06da\u06d7\u06dc\u06df\u06eb\u06e4\u06d8\u06da\u06df\u06dc\u06d8"

    :goto_3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v2, v1

    sparse-switch v2, :sswitch_data_3

    goto :goto_3

    :sswitch_b
    const-string v0, "\u06e2\u06d8\u06e4\u06e8\u06d7\u06e0\u06d7\u06df\u06e1\u06e2\u06d9\u06e6\u06e6\u06e8\u06dc\u06d8\u06db\u06e4\u06e6\u06e2\u06d6\u06db\u06e6\u06d8\u06e1\u06ec\u06e2\u06e6\u06d9"

    goto :goto_0

    :sswitch_c
    const-string v0, "\u06da\u06da\u06eb\u06e8\u06e7\u06d6\u06d8\u06ec\u06d6\u06d6\u06d7\u06e8\u06dc\u06e5\u06d6\u06e1\u06e0\u06e6\u06d8\u06e0\u06d8\u06e7\u06da\u06e5\u06dc\u06d8\u06d7\u06dc\u06e1\u06e2\u06e4\u06e2\u06e5\u06d8\u06e5\u06e8\u06d9\u06e5\u06eb\u06d8\u06dc\u06d8\u06e6\u06df\u06d8\u06d8\u06ec\u06d9\u06eb\u06d6\u06e2\u06e2"

    goto :goto_3

    :sswitch_d
    const v2, -0x75833311

    const-string v0, "\u06e8\u06dc\u06e1\u06dc\u06e2\u06e1\u06d8\u06dc\u06dc\u06dc\u06e4\u06d7\u06e6\u06e4\u06e5\u06e1\u06df\u06e5\u06df\u06e1\u06d8\u06e1\u06d8\u06e4\u06df\u06d6\u06d8\u06db\u06d7\u06e6\u06d8\u06d8\u06e8\u06e2\u06e0\u06e5\u06e6\u06d8\u06df\u06d9\u06e1\u06d8\u06d8\u06e1\u06da\u06e0\u06e2\u06ec\u06ec\u06eb\u06d6\u06e8\u06e7\u06e5\u06e4\u06d6\u06e8\u06e2\u06e2\u06dc\u06d8"

    :goto_4
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v2

    sparse-switch v3, :sswitch_data_4

    goto :goto_4

    :sswitch_e
    const-string v0, "\u06eb\u06d7\u06dc\u06d8\u06e5\u06e1\u06eb\u06ec\u06d7\u06dc\u06e2\u06db\u06e1\u06d8\u06d8\u06df\u06e4\u06d8\u06d7\u06e8\u06d8\u06d7\u06eb\u06db\u06e4\u06e2\u06e4\u06e2\u06d9\u06e5\u06d8\u06e5\u06e6\u06e7\u06df\u06e2\u06df\u06e8\u06d9\u06d8\u06d8\u06e6\u06e4\u06dc\u06e8\u06d8\u06e8\u06d8\u06df\u06ec\u06dc\u06d8\u06e1\u06ec\u06db"

    goto :goto_3

    :cond_1
    const-string v0, "\u06e2\u06e7\u06e8\u06d8\u06e8\u06e0\u06d8\u06d8\u06e6\u06d7\u06d6\u06d8\u06e0\u06da\u06ec\u06db\u06d8\u06dc\u06d8\u06e6\u06e7\u06e1\u06da\u06eb\u06d8\u06d6\u06da\u06e8\u06e6\u06e1\u06d6\u06eb\u06e8\u06d8\u06e8\u06e8\u06e5\u06df\u06d8\u06eb"

    goto :goto_4

    :sswitch_f
    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$OooOO0;->OooO00o:Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;

    invoke-static {v0}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->OooOoo0(Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    const/16 v3, 0x8

    if-ne v0, v3, :cond_1

    const-string v0, "\u06d6\u06e2\u06e7\u06d8\u06e5\u06e7\u06df\u06db\u06e8\u06d8\u06d9\u06db\u06d6\u06d8\u06dc\u06e2\u06e1\u06d8\u06e7\u06e0\u06e8\u06d8\u06e0\u06e8\u06dc\u06d8\u06eb\u06d9\u06dc\u06d8\u06e0\u06e8\u06dc\u06d8\u06d9\u06d7\u06d8\u06d8\u06dc\u06ec\u06e1\u06d8\u06df\u06e7\u06e1\u06d8\u06e2\u06e5\u06d6\u06d8\u06d9\u06da\u06e1"

    goto :goto_4

    :sswitch_10
    const-string v0, "\u06d7\u06e7\u06d6\u06e7\u06db\u06d9\u06d6\u06d9\u06d7\u06e5\u06dc\u06e4\u06e2\u06e7\u06e1\u06d8\u06d7\u06d9\u06e1\u06d8\u06ec\u06e8\u06ec\u06dc\u06db\u06dc\u06e7\u06e1\u06d8\u06d6\u06d6\u06d9\u06e8\u06d9\u06e8\u06df\u06e5\u06db"

    goto :goto_4

    :sswitch_11
    const-string v0, "\u06e4\u06e0\u06e1\u06d8\u06e0\u06e5\u06d8\u06e5\u06e7\u06e1\u06d8\u06d9\u06d8\u06dc\u06e0\u06dc\u06d9\u06e1\u06db\u06df\u06ec\u06e5\u06e8\u06e8\u06db\u06e7\u06da\u06dc\u06d8\u06d6\u06e2\u06e7\u06eb\u06d9\u06d8\u06d8\u06e8\u06e6\u06e5\u06d8"

    goto :goto_3

    :sswitch_12
    const-string v0, "\u06d8\u06e4\u06e6\u06d9\u06e0\u06e7\u06d7\u06d6\u06df\u06db\u06e7\u06d7\u06d7\u06e5\u06d7\u06df\u06dc\u06e2\u06e6\u06df\u06d8\u06d8\u06df\u06d9\u06e0\u06d8\u06e7\u06e1\u06ec\u06e4\u06e7"

    goto/16 :goto_0

    :sswitch_13
    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$OooOO0;->OooO00o:Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;

    invoke-static {v0}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->OooOoo(Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;)V

    const-string v0, "\u06ec\u06e7\u06db\u06e1\u06e7\u06d6\u06ec\u06df\u06ec\u06e4\u06e7\u06e6\u06eb\u06e1\u06e2\u06ec\u06e8\u06dc\u06d8\u06e2\u06d7\u06e7\u06d9\u06d9\u06e4\u06ec\u06d8\u06da\u06e8\u06e8\u06d8"

    goto/16 :goto_0

    :sswitch_14
    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$OooOO0;->OooO00o:Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;

    invoke-static {v0}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->OooOooO(Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;)Landroid/os/CountDownTimer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    const-string v0, "\u06e2\u06d8\u06e4\u06e8\u06d7\u06e0\u06d7\u06df\u06e1\u06e2\u06d9\u06e6\u06e6\u06e8\u06dc\u06d8\u06db\u06e4\u06e6\u06e2\u06d6\u06db\u06e6\u06d8\u06e1\u06ec\u06e2\u06e6\u06d9"

    goto/16 :goto_0

    :sswitch_15
    const v1, -0xd630505

    const-string v0, "\u06df\u06dc\u06ec\u06e6\u06d7\u06df\u06d6\u06e4\u06eb\u06e7\u06d7\u06e0\u06e5\u06dc\u06e6\u06d8\u06db\u06e0\u06eb\u06ec\u06e7\u06da\u06e6\u06e8\u06d8\u06d8\u06e5\u06e6\u06e5\u06df\u06d9\u06e1\u06d8\u06d6\u06e0\u06d6\u06e5\u06eb\u06ec\u06e0\u06e4\u06d6\u06d8\u06df\u06d6\u06e6\u06e5\u06eb\u06d9\u06d8\u06d9\u06d9"

    :goto_5
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v2, v1

    sparse-switch v2, :sswitch_data_5

    goto :goto_5

    :sswitch_16
    const-string v0, "\u06e2\u06d9\u06e7\u06e5\u06e2\u06e2\u06dc\u06dc\u06e8\u06e0\u06e1\u06d9\u06dc\u06ec\u06df\u06e0\u06e1\u06e5\u06dc\u06df\u06da\u06ec\u06e6\u06ec\u06d9\u06d8\u06e4\u06e7\u06dc"

    goto/16 :goto_0

    :sswitch_17
    const-string v0, "\u06eb\u06e4\u06d6\u06d8\u06e4\u06eb\u06e6\u06d8\u06dc\u06db\u06e2\u06d9\u06e4\u06d9\u06e2\u06e8\u06e4\u06e1\u06e0\u06e5\u06d8\u06e6\u06e7\u06dc\u06e6\u06d7\u06dc\u06e0\u06d6\u06df\u06eb\u06e7\u06e7"

    goto :goto_5

    :sswitch_18
    const v2, -0x38c0f782

    const-string v0, "\u06da\u06d7\u06d8\u06d8\u06e0\u06e2\u06e5\u06d8\u06e6\u06d7\u06e8\u06d8\u06df\u06ec\u06e8\u06d8\u06eb\u06e0\u06e0\u06df\u06e8\u06d7\u06d6\u06e2\u06db\u06dc\u06d7\u06eb\u06d8\u06df\u06d6\u06dc\u06e2\u06e2\u06e6\u06d8\u06e6\u06d9\u06d6\u06d8\u06d8\u06d9\u06dc\u06d8\u06ec\u06e6\u06e2\u06e7\u06db\u06e7\u06db\u06dc\u06d9\u06d8\u06d6\u06d8\u06d7\u06df\u06d7"

    :goto_6
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v2

    sparse-switch v3, :sswitch_data_6

    goto :goto_6

    :sswitch_19
    const-string v0, "\u06d7\u06e2\u06d8\u06e2\u06e5\u06e1\u06d8\u06d7\u06d8\u06d7\u06e8\u06e0\u06e5\u06e7\u06eb\u06e4\u06d6\u06e5\u06e8\u06d8\u06da\u06ec\u06d7\u06d7\u06e0\u06dc\u06d8\u06db\u06e1\u06e8\u06e4\u06e7\u06e6\u06d8\u06e8\u06d6\u06d7\u06e5\u06ec\u06dc\u06e8\u06e1\u06da\u06e1\u06d6\u06e2\u06df\u06e1\u06d7\u06d8\u06e1\u06d8\u06e2\u06e1\u06db\u06df\u06d7\u06e1"

    goto :goto_6

    :cond_2
    const-string v0, "\u06dc\u06e8\u06d7\u06e7\u06eb\u06e5\u06df\u06e7\u06e8\u06d8\u06d7\u06d7\u06e7\u06e0\u06ec\u06e4\u06e6\u06d7\u06db\u06df\u06e5\u06d8\u06e1\u06dc\u06d8\u06e2\u06d9\u06e5\u06d8\u06e4\u06dc\u06df\u06e6\u06e2\u06dc\u06d8\u06d8\u06d7"

    goto :goto_6

    :sswitch_1a
    const-wide/16 v4, 0xbb8

    cmp-long v0, p1, v4

    if-gtz v0, :cond_2

    const-string v0, "\u06e1\u06eb\u06e6\u06d8\u06df\u06ec\u06e1\u06e2\u06eb\u06e6\u06db\u06e1\u06d8\u06e6\u06db\u06e4\u06e0\u06ec\u06e5\u06e4\u06e4\u06d6\u06d7\u06e2\u06d8\u06d8\u06e0\u06ec\u06e5\u06d8\u06da\u06e1\u06e7\u06d8\u06e4\u06d9\u06e0\u06e1\u06eb\u06d7\u06d8\u06e5\u06d8\u06e4\u06d8\u06da"

    goto :goto_6

    :sswitch_1b
    const-string v0, "\u06d9\u06e2\u06ec\u06db\u06dc\u06e2\u06da\u06eb\u06e1\u06d8\u06e5\u06e7\u06db\u06e2\u06e6\u06eb\u06dc\u06ec\u06da\u06e0\u06e1\u06e0\u06d8\u06dc\u06d9\u06dc\u06e6\u06da\u06e2\u06e7\u06e7"

    goto :goto_5

    :sswitch_1c
    const-string v0, "\u06e2\u06da\u06da\u06e6\u06e7\u06e6\u06e6\u06d8\u06e5\u06d8\u06df\u06e1\u06e7\u06e0\u06d6\u06e5\u06d8\u06e1\u06e8\u06e7\u06d9\u06d9\u06e6\u06d8\u06db\u06e7\u06d6\u06d8\u06df\u06d6\u06e5\u06d8\u06e8\u06e5\u06e2\u06e4\u06e8\u06db\u06d7\u06db\u06d7\u06eb\u06e6\u06e8\u06d8\u06e6\u06e6\u06e6"

    goto :goto_5

    :sswitch_1d
    const-string v0, "\u06eb\u06df\u06e2\u06dc\u06e4\u06da\u06dc\u06da\u06e0\u06d8\u06e1\u06d8\u06eb\u06dc\u06ec\u06e2\u06e2\u06e4\u06d6\u06e7\u06da\u06e5\u06e2\u06d6\u06d7\u06e8\u06d6\u06d6\u06d7\u06dc\u06e1\u06e5\u06e6\u06df\u06d8\u06d8\u06d9\u06e2\u06e6\u06d8\u06d8\u06ec\u06d9\u06e8\u06e0\u06e5\u06d7\u06e5\u06dc"

    goto/16 :goto_0

    :sswitch_1e
    const v1, -0x1f51fd4d

    const-string v0, "\u06ec\u06ec\u06e6\u06dc\u06e6\u06dc\u06e5\u06e0\u06d9\u06df\u06d6\u06d7\u06e7\u06d8\u06e5\u06d9\u06e6\u06e4\u06e6\u06d6\u06df\u06e4\u06d8\u06e2\u06d9\u06df\u06d8\u06d8\u06d8\u06d8\u06e0\u06e2\u06d8\u06e1\u06e6\u06d8\u06d9\u06dc\u06e1\u06e0\u06db\u06db\u06d9\u06ec\u06d7\u06dc\u06d9\u06e4\u06dc\u06dc\u06ec\u06da\u06e0\u06e7"

    :goto_7
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v2, v1

    sparse-switch v2, :sswitch_data_7

    goto :goto_7

    :sswitch_1f
    const-string v0, "\u06df\u06e2\u06ec\u06e4\u06db\u06e5\u06e1\u06d6\u06e6\u06d8\u06eb\u06ec\u06e5\u06d8\u06e2\u06e7\u06e8\u06db\u06da\u06e5\u06da\u06e8\u06e1\u06d8\u06e5\u06dc\u06e6\u06d8\u06ec\u06d9\u06d8\u06d7\u06e2\u06e6"

    goto :goto_7

    :sswitch_20
    const-string v0, "\u06df\u06df\u06d6\u06e4\u06ec\u06e5\u06d8\u06e0\u06d9\u06d6\u06d8\u06df\u06e4\u06e7\u06ec\u06d7\u06da\u06e1\u06d9\u06eb\u06e7\u06d6\u06e6\u06e0\u06da\u06d6\u06d8\u06e4\u06da\u06e1\u06d8\u06df\u06eb\u06e5\u06d8\u06e6\u06d6\u06eb\u06e4\u06e6\u06e7\u06d8\u06e4\u06d7\u06e7\u06eb\u06d9\u06d6\u06d8\u06d6\u06e7\u06dc\u06e1\u06eb\u06d6\u06d8"

    goto :goto_7

    :sswitch_21
    const v2, 0x336bd27f

    const-string v0, "\u06d6\u06d9\u06e1\u06e4\u06d9\u06e7\u06dc\u06eb\u06e0\u06e0\u06e5\u06d9\u06e2\u06e2\u06d9\u06e6\u06ec\u06eb\u06e7\u06da\u06d7\u06eb\u06e8\u06e8\u06e0\u06e6\u06eb\u06d8\u06e4\u06d7\u06e2\u06e6\u06d8\u06d8\u06da\u06e7\u06eb\u06db\u06e0\u06e6\u06d8\u06e1\u06e0\u06df"

    :goto_8
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v2

    sparse-switch v3, :sswitch_data_8

    goto :goto_8

    :sswitch_22
    const-string v0, "\u06eb\u06e5\u06ec\u06e6\u06e8\u06e5\u06d7\u06e4\u06e6\u06e8\u06d6\u06dc\u06d9\u06dc\u06da\u06eb\u06d8\u06d6\u06da\u06e0\u06e5\u06e6\u06eb\u06e0\u06dc\u06dc\u06d8\u06e7\u06db\u06d6\u06e0\u06db\u06e2\u06db\u06d8\u06d7\u06e0\u06eb\u06e1\u06e1\u06da\u06e8\u06eb\u06e0\u06e1\u06d8\u06d6\u06e4\u06e8\u06d8\u06d6\u06da\u06e6\u06e0\u06d7\u06e6"

    goto :goto_8

    :cond_3
    const-string v0, "\u06e6\u06d7\u06e6\u06e6\u06d8\u06e2\u06e2\u06e0\u06d6\u06d9\u06e4\u06e0\u06e2\u06e8\u06e1\u06d8\u06e1\u06e6\u06e8\u06dc\u06e7\u06d9\u06e2\u06e6\u06e1\u06dc\u06e8\u06e1\u06d8\u06e8\u06d6\u06e2\u06d8\u06eb\u06e6\u06d8\u06e6\u06db\u06d6\u06d8\u06d7\u06d7\u06e5\u06e1\u06e4"

    goto :goto_8

    :sswitch_23
    const-wide/16 v4, 0x7d0

    cmp-long v0, p1, v4

    if-lez v0, :cond_3

    const-string v0, "\u06e0\u06e4\u06ec\u06e7\u06d7\u06da\u06dc\u06d8\u06d8\u06d8\u06d8\u06e0\u06dc\u06e4\u06e6\u06d8\u06eb\u06d7\u06e4\u06e5\u06e1\u06d7\u06db\u06e5\u06d6\u06db\u06db\u06e8\u06d8\u06db\u06e8\u06d9\u06e7\u06e2\u06d8\u06eb\u06e0\u06e1\u06e6\u06d8\u06dc\u06d8\u06d9\u06eb\u06e7"

    goto :goto_8

    :sswitch_24
    const-string v0, "\u06da\u06e6\u06db\u06ec\u06eb\u06e4\u06e5\u06eb\u06e5\u06db\u06dc\u06e5\u06d8\u06e2\u06d6\u06e8\u06d8\u06d6\u06db\u06e6\u06dc\u06e7\u06da\u06d6\u06e8\u06da\u06da\u06e0\u06e6\u06e4\u06d7\u06e6\u06d8\u06eb\u06d9\u06d8\u06e6\u06e6\u06dc\u06d8\u06e2\u06dc\u06e7\u06e0\u06db\u06e6\u06d8"

    goto :goto_7

    :sswitch_25
    const-string v0, "\u06e8\u06da\u06e0\u06db\u06e8\u06e6\u06d8\u06d6\u06d9\u06e4\u06d6\u06e7\u06d8\u06e0\u06eb\u06d9\u06e4\u06e7\u06e1\u06d8\u06ec\u06d8\u06d6\u06d8\u06d8\u06df\u06e6\u06e2\u06d6\u06eb\u06e5\u06e4\u06e6\u06e7\u06d8\u06e4\u06d9\u06e1\u06dc\u06d6\u06e5\u06d8\u06e5\u06da\u06ec\u06db\u06e8\u06eb\u06e7\u06da\u06ec"

    goto/16 :goto_0

    :sswitch_26
    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$OooOO0;->OooO00o:Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;

    invoke-static {v0}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->OooOooo(Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;)Landroid/widget/ImageView;

    move-result-object v0

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    const-string v0, "\u06eb\u06d7\u06eb\u06dc\u06e0\u06d9\u06d8\u06e1\u06df\u06e4\u06d8\u06e5\u06d8\u06e0\u06e8\u06e2\u06d6\u06db\u06d8\u06db\u06e5\u06e2\u06e6\u06e5\u06eb\u06db\u06e1\u06e5\u06d7\u06dc\u06e5\u06dc\u06e2\u06d6\u06e4\u06d7\u06da\u06d8\u06e4\u06ec\u06d9\u06e7\u06df\u06e0\u06e8\u06e5\u06db\u06db\u06d6\u06eb\u06eb\u06e5\u06d8\u06d7\u06e1\u06e6\u06d8"

    goto/16 :goto_0

    :sswitch_27
    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView$OooOO0;->OooO00o:Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->Oooo00o(Z)V

    const-string v0, "\u06e2\u06d9\u06e7\u06e5\u06e2\u06e2\u06dc\u06dc\u06e8\u06e0\u06e1\u06d9\u06dc\u06ec\u06df\u06e0\u06e1\u06e5\u06dc\u06df\u06da\u06ec\u06e6\u06ec\u06d9\u06d8\u06e4\u06e7\u06dc"

    goto/16 :goto_0

    :sswitch_28
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x62ac8de5 -> :sswitch_1e
        -0x50e0e17b -> :sswitch_a
        -0x496a7e65 -> :sswitch_2
        -0x413d16d8 -> :sswitch_13
        -0x3f68411d -> :sswitch_26
        -0x289a9ac2 -> :sswitch_1
        -0xb360954 -> :sswitch_0
        0x18693170 -> :sswitch_28
        0x38b09f10 -> :sswitch_27
        0x3bd7f542 -> :sswitch_15
        0x72025813 -> :sswitch_14
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x6f2ee929 -> :sswitch_b
        -0x30bdb26e -> :sswitch_9
        0x178ef416 -> :sswitch_5
        0x33be255e -> :sswitch_3
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        0x7fa1b03 -> :sswitch_6
        0x21353de5 -> :sswitch_4
        0x5b968639 -> :sswitch_7
        0x64bfa52c -> :sswitch_8
    .end sparse-switch

    :sswitch_data_3
    .sparse-switch
        -0x4da5084d -> :sswitch_12
        -0x478e3e13 -> :sswitch_11
        -0x23c647c5 -> :sswitch_d
        0x55fddbaf -> :sswitch_b
    .end sparse-switch

    :sswitch_data_4
    .sparse-switch
        -0x5df8ab34 -> :sswitch_f
        -0x50259b70 -> :sswitch_c
        -0x22645ba1 -> :sswitch_10
        0x68b08bfc -> :sswitch_e
    .end sparse-switch

    :sswitch_data_5
    .sparse-switch
        -0x4880d65b -> :sswitch_1c
        -0x15f25ad2 -> :sswitch_18
        -0x480b328 -> :sswitch_16
        0x314ca205 -> :sswitch_1d
    .end sparse-switch

    :sswitch_data_6
    .sparse-switch
        0x399dba3 -> :sswitch_1a
        0x4bc9340 -> :sswitch_19
        0x3ad076f3 -> :sswitch_1b
        0x43f2f3e0 -> :sswitch_17
    .end sparse-switch

    :sswitch_data_7
    .sparse-switch
        0x15dfa852 -> :sswitch_25
        0x1f6a90af -> :sswitch_16
        0x22427513 -> :sswitch_1f
        0x2de8c59e -> :sswitch_21
    .end sparse-switch

    :sswitch_data_8
    .sparse-switch
        -0x49b84762 -> :sswitch_24
        0x133b6cc7 -> :sswitch_20
        0x289286e0 -> :sswitch_23
        0x5b2b92fa -> :sswitch_22
    .end sparse-switch
.end method
