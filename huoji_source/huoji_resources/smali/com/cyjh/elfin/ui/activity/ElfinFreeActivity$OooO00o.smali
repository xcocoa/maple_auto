.class public Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$OooO00o;
.super Landroid/os/CountDownTimer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->Oooo0oo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final OooO00o:Landroid/widget/TextView;

.field public final OooO0O0:Landroid/view/ViewGroup;

.field public final OooO0OO:Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;


# direct methods
.method public constructor <init>(Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;JJLandroid/widget/TextView;Landroid/view/ViewGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$OooO00o;->OooO0OO:Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;

    iput-object p6, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$OooO00o;->OooO00o:Landroid/widget/TextView;

    iput-object p7, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$OooO00o;->OooO0O0:Landroid/view/ViewGroup;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 4

    const-string v0, "\u06e6\u06e8\u06dc\u06d8\u06dc\u06db\u06e4\u06e8\u06df\u06d7\u06d8\u06d9\u06e6\u06dc\u06dc\u06dc\u06eb\u06e7\u06dc\u06d8\u06e4\u06ec\u06e8\u06d7\u06e6\u06da\u06e6\u06e1\u06e6\u06e6\u06da\u06e0"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x37c

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0xc1

    const/16 v2, 0x288

    const v3, -0x491d6344

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06dc\u06d7\u06ec\u06e5\u06e1\u06e6\u06e2\u06e1\u06e7\u06e6\u06df\u06e8\u06df\u06ec\u06e2\u06d7\u06e2\u06d8\u06d8\u06dc\u06d6\u06e7\u06dc\u06e5\u06e0\u06d7\u06dc\u06d8\u06d7\u06e8\u06eb\u06dc\u06e5\u06e8\u06d8\u06e4\u06dc\u06d7\u06db\u06e4\u06e2\u06d9\u06dc"

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$OooO00o;->OooO0O0:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$OooO00o;->OooO0OO:Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;

    invoke-static {v1}, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->OooOOo(Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const-string v0, "\u06d8\u06d6\u06d8\u06d6\u06db\u06df\u06eb\u06d8\u06e1\u06d8\u06df\u06eb\u06d8\u06df\u06df\u06e1\u06da\u06e4\u06df\u06d8\u06ec\u06e1\u06d8\u06d9\u06dc\u06e2\u06eb\u06e2\u06e5\u06d8\u06d9\u06e6\u06e0\u06e2\u06dc\u06e8\u06d8\u06e0\u06e6\u06ec\u06dc\u06e2\u06e5\u06dc\u06d6\u06d8\u06e1\u06e6\u06e1\u06e6\u06d8\u06da"

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$OooO00o;->OooO0OO:Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;

    invoke-static {v0}, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->OooOOO(Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;)V

    const-string v0, "\u06e1\u06dc\u06e8\u06e7\u06d7\u06df\u06d9\u06e5\u06e5\u06d8\u06e4\u06e4\u06e5\u06d8\u06e5\u06e0\u06e1\u06d8\u06e7\u06e7\u06d7\u06e2\u06d8\u06e5\u06ec\u06e4\u06d6\u06dc\u06e0\u06d6\u06d9\u06d6\u06d6\u06e0\u06d8\u06e2\u06e1\u06df\u06e1\u06da\u06e6\u06d8\u06e0\u06d7\u06db"

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$OooO00o;->OooO0OO:Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->OooOOoo(Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;Z)Z

    const-string v0, "\u06e0\u06e5\u06e7\u06d8\u06e2\u06d6\u06e1\u06d9\u06e6\u06e1\u06d8\u06df\u06dc\u06dc\u06d8\u06eb\u06dc\u06eb\u06e1\u06e5\u06df\u06e2\u06da\u06e2\u06eb\u06da\u06dc\u06d8\u06e2\u06e7\u06e1\u06d8\u06e0\u06db\u06e2\u06eb\u06e4\u06d6\u06dc\u06d6"

    goto :goto_0

    :sswitch_4
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x61733d92 -> :sswitch_1
        -0x46c5889b -> :sswitch_4
        -0x24af7761 -> :sswitch_2
        -0x1a7a2423 -> :sswitch_0
        0x10c78a11 -> :sswitch_3
    .end sparse-switch
.end method

.method public onTick(J)V
    .locals 7

    const/4 v2, 0x0

    const/4 v4, 0x0

    const-string v0, "\u06e2\u06ec\u06e6\u06d7\u06dc\u06e6\u06d7\u06e2\u06e5\u06d8\u06dc\u06e7\u06d6\u06e1\u06e7\u06e8\u06db\u06e4\u06df\u06d9\u06db\u06df\u06d7\u06e6\u06e6\u06d8\u06dc\u06df\u06e8\u06d8\u06da\u06d9\u06e1\u06dc\u06eb\u06dc\u06d8\u06e1\u06e0\u06e7\u06d9\u06e5\u06e2\u06e0\u06ec\u06dc\u06d8\u06e7\u06e0\u06ec\u06ec\u06e8\u06e6"

    move-object v1, v2

    move-object v3, v2

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v5, 0x230

    xor-int/2addr v2, v5

    xor-int/lit16 v2, v2, 0x24b

    const/16 v5, 0x1ac

    const v6, 0x34cc3c36

    xor-int/2addr v2, v5

    xor-int/2addr v2, v6

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d7\u06e2\u06df\u06e5\u06e1\u06e6\u06df\u06e0\u06ec\u06e7\u06d6\u06e6\u06e5\u06e0\u06d8\u06d8\u06e8\u06e2\u06e2\u06df\u06e7\u06e7\u06e6\u06e5\u06d6\u06d8\u06ec\u06ec\u06e8\u06dc\u06db\u06e6\u06e2\u06d8\u06e1\u06d8\u06da\u06e6\u06dc\u06d8\u06ec\u06e2\u06e5\u06e8\u06e1\u06dc\u06e4\u06e7\u06d8\u06ec\u06e7\u06e7"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06d6\u06e5\u06d7\u06e8\u06e5\u06db\u06ec\u06e2\u06ec\u06df\u06eb\u06e1\u06d8\u06e4\u06e8\u06d7\u06df\u06df\u06da\u06e1\u06e1\u06e5\u06d8\u06e6\u06e0\u06e5\u06db\u06d7\u06d8\u06d9\u06da\u06e7\u06d8\u06d9\u06e5\u06d8\u06d6\u06db\u06e2\u06e8\u06e4\u06dc\u06db\u06e5\u06ec\u06eb\u06ec\u06e4\u06e5\u06df\u06e6\u06d8"

    goto :goto_0

    :sswitch_2
    long-to-float v0, p1

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v0, v2

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v2, v4

    const-string v0, "\u06d7\u06e5\u06e0\u06e6\u06e7\u06e8\u06d8\u06e0\u06e5\u06e4\u06d7\u06d9\u06e6\u06e4\u06db\u06dc\u06e5\u06e6\u06d7\u06e1\u06df\u06dc\u06e5\u06ec\u06d8\u06d8\u06da\u06e5\u06da\u06e0\u06df\u06dc\u06df\u06e4\u06eb\u06e2\u06dc\u06e8"

    move v4, v2

    goto :goto_0

    :sswitch_3
    iget-object v2, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$OooO00o;->OooO00o:Landroid/widget/TextView;

    const-string v0, "\u06eb\u06e8\u06e1\u06d8\u06d9\u06eb\u06ec\u06da\u06e7\u06e8\u06d8\u06dc\u06dc\u06d6\u06d8\u06e0\u06e6\u06e7\u06d9\u06e2\u06d8\u06d8\u06d9\u06e7\u06d8\u06d8\u06d8\u06e7\u06eb\u06e6\u06dc\u06e7\u06e6\u06e0\u06d6\u06d8\u06e7\u06d8\u06e4\u06ec\u06e5\u06da"

    move-object v3, v2

    goto :goto_0

    :sswitch_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u06d6\u06dc\u06d7\u06dc\u06eb\u06e0\u06e5\u06ec\u06e0\u06d6\u06d7\u06e8\u06d8\u06ec\u06d7\u06ec\u06d8\u06ec\u06e4\u06e4\u06e5\u06e8\u06d8\u06d8\u06eb\u06d9\u06e4\u06d9\u06e4\u06e6\u06e1\u06e7\u06ec\u06dc\u06d6\u06d8\u06e2"

    goto :goto_0

    :sswitch_5
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\u06df\u06e8\u06da\u06eb\u06d8\u06d8\u06d8\u06e7\u06e7\u06e8\u06e4\u06d7\u06e6\u06d8\u06da\u06d9\u06e7\u06db\u06d7\u06e5\u06e0\u06e6\u06e2\u06df\u06e8\u06e1\u06dc\u06e0\u06d9\u06e5\u06df\u06e2\u06e8\u06d8\u06e8\u06d8\u06d8"

    goto :goto_0

    :sswitch_6
    const-string v0, "s"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u06d6\u06e4\u06d8\u06e4\u06df\u06d7\u06e1\u06d6\u06ec\u06d8\u06d9\u06da\u06d8\u06e7\u06d7\u06db\u06e6\u06e1\u06e4\u06e4\u06e2\u06e2\u06e0\u06dc\u06e0\u06ec\u06e1\u06e5\u06eb\u06e5"

    goto :goto_0

    :sswitch_7
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "\u06dc\u06e6\u06e1\u06ec\u06e5\u06e7\u06e8\u06e8\u06e5\u06d8\u06e1\u06d9\u06eb\u06da\u06df\u06eb\u06e7\u06e1\u06e1\u06e0\u06d7\u06e5\u06d8\u06e6\u06d8\u06e7\u06e4\u06e5\u06e8\u06d8\u06ec\u06e8\u06eb\u06e5\u06d6\u06d6\u06db\u06d8\u06d8\u06d9\u06e7\u06d6\u06d8\u06ec\u06d6\u06e7"

    goto :goto_0

    :sswitch_8
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4c0f3b9d -> :sswitch_3
        -0x41ca933c -> :sswitch_0
        -0x402363ca -> :sswitch_5
        0x1c6a2b93 -> :sswitch_4
        0x39ba62d5 -> :sswitch_1
        0x3bbab97d -> :sswitch_2
        0x6ee7f898 -> :sswitch_6
        0x77a5ca29 -> :sswitch_7
        0x77be463b -> :sswitch_8
    .end sparse-switch
.end method
