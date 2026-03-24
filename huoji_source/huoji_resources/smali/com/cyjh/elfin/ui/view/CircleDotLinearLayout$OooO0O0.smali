.class public Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout$OooO0O0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OooO0O0"
.end annotation


# instance fields
.field public final OoooOoO:Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout;


# direct methods
.method private constructor <init>(Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout$OooO0O0;->OoooOoO:Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout;Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout$OooO00o;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout$OooO0O0;-><init>(Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout;)V

    return-void
.end method


# virtual methods
.method public OooO00o()V
    .locals 4

    const-string v0, "\u06dc\u06e7\u06dc\u06e6\u06d8\u06e7\u06d8\u06dc\u06d9\u06eb\u06d6\u06e2\u06e6\u06d8\u06e5\u06e5\u06da\u06dc\u06d6\u06e0\u06e6\u06e8\u06e7\u06e7\u06d7\u06e7\u06df\u06e6\u06dc\u06d8\u06db\u06d6\u06d8\u06db\u06e6\u06e7\u06df\u06e0\u06d8\u06d8\u06e1\u06e4\u06d8\u06e7\u06e4\u06e5\u06e4\u06ec\u06e6\u06d8\u06d9\u06db\u06e6\u06e8\u06dc\u06e8\u06d6\u06e1\u06d6"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x1eb

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x19e

    const/16 v2, 0x12d

    const v3, 0x5432dca8

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e0\u06e4\u06e4\u06d8\u06d9\u06d6\u06d8\u06d8\u06e1\u06e6\u06d8\u06e5\u06d9\u06df\u06e5\u06d8\u06d8\u06eb\u06db\u06e6\u06eb\u06df\u06e5\u06d7\u06df\u06e6\u06d8\u06dc\u06dc\u06e6\u06d8\u06e5\u06d8\u06d6"

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout$OooO0O0;->OoooOoO:Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout;

    invoke-static {v0}, Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout;->OooO00o(Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-string v0, "\u06ec\u06e6\u06d8\u06d8\u06dc\u06dc\u06e7\u06d8\u06e1\u06d7\u06e2\u06e0\u06e7\u06df\u06d6\u06e6\u06e8\u06e1\u06e2\u06e4\u06e1\u06e0\u06e4\u06dc\u06df\u06db\u06e7\u06eb\u06df\u06d8\u06e8\u06d8\u06e1\u06d9\u06e8\u06d8\u06eb\u06db\u06db\u06e2\u06df\u06eb\u06e0\u06d6"

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout$OooO0O0;->OoooOoO:Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout;

    invoke-static {v0}, Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout;->OooO00o(Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x64

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const-string v0, "\u06e7\u06e5\u06ec\u06e0\u06d9\u06d9\u06ec\u06d9\u06dc\u06d8\u06dc\u06ec\u06d9\u06e1\u06da\u06df\u06e6\u06e6\u06d8\u06db\u06e5\u06e7\u06d8\u06df\u06d6\u06e0\u06d7\u06d8\u06dc\u06d8\u06d7\u06eb\u06e8\u06d8\u06e8\u06d7\u06e6\u06eb\u06df\u06da\u06ec\u06ec\u06e5\u06d8\u06e2\u06d6\u06e7\u06d7\u06d6\u06e8\u06e0\u06da\u06d8\u06d8\u06dc\u06da\u06e8\u06e7\u06da\u06ec"

    goto :goto_0

    :sswitch_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x592deea0 -> :sswitch_3
        -0x43c49c5b -> :sswitch_0
        -0x42a66b6c -> :sswitch_1
        -0x7322b8d -> :sswitch_2
    .end sparse-switch
.end method

.method public run()V
    .locals 14

    const/4 v3, 0x0

    const/4 v5, 0x0

    const-string v0, "\u06e6\u06ec\u06d8\u06d8\u06d9\u06db\u06e2\u06e7\u06e1\u06eb\u06e6\u06df\u06e7\u06db\u06e6\u06d8\u06d8\u06da\u06da\u06df\u06e2\u06ec\u06e4\u06e5\u06e1\u06db\u06e6\u06e8\u06d9\u06db\u06e2\u06ec\u06e8\u06e0\u06e5\u06d8\u06e6\u06d9\u06e2\u06e1\u06df\u06e4\u06e1\u06e7\u06e1"

    move-object v1, v0

    move v2, v3

    move-object v4, v5

    move-object v6, v5

    move-object v7, v5

    move-object v9, v5

    move-object v8, v5

    move-object v10, v5

    move v11, v3

    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v5, 0x33f

    xor-int/2addr v0, v5

    xor-int/lit16 v0, v0, 0x30d

    const/16 v5, 0xb0

    const v12, 0x6ebcbb24

    xor-int/2addr v0, v5

    xor-int/2addr v0, v12

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e6\u06d7\u06e5\u06df\u06da\u06e5\u06eb\u06e0\u06e2\u06e7\u06e7\u06e0\u06ec\u06d7\u06dc\u06e6\u06d7\u06e6\u06e0\u06d6\u06d6\u06d8\u06e1\u06dc\u06e7\u06db\u06db\u06e2\u06dc\u06d8\u06da"

    move-object v1, v0

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout$OooO0O0;->OoooOoO:Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout;

    invoke-static {v0}, Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout;->OooO0OO(Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout;)I

    const-string v0, "\u06e8\u06e7\u06e7\u06eb\u06ec\u06db\u06d9\u06e6\u06e5\u06e7\u06e0\u06db\u06d9\u06e7\u06d6\u06eb\u06d7\u06ec\u06df\u06e6\u06ec\u06d8\u06d8\u06d6\u06d8\u06e5\u06d8\u06e5\u06d8\u06dc\u06db\u06d8\u06d8\u06d8\u06db\u06e5\u06e0\u06db\u06e4"

    move-object v1, v0

    goto :goto_0

    :sswitch_2
    const-string v0, "\u06e5\u06eb\u06e0\u06e8\u06d6\u06e7\u06eb\u06e2\u06e1\u06d8\u06d9\u06e0\u06d6\u06ec\u06d9\u06e2\u06db\u06e2\u06dc\u06dc\u06df\u06e2\u06dc\u06ec\u06d6\u06e7\u06e7\u06e5\u06e1\u06da\u06dc\u06d8\u06eb\u06eb\u06dc\u06d8\u06d6\u06e7\u06e1"

    move-object v1, v0

    goto :goto_0

    :sswitch_3
    const-string v0, "\u06e1\u06e5\u06e1\u06e7\u06e1\u06dc\u06d8\u06e5\u06e5\u06e2\u06dc\u06e4\u06e8\u06d8\u06df\u06da\u06e8\u06d8\u06d7\u06e6\u06df\u06d6\u06e7\u06e1\u06d8\u06e0\u06d8\u06e6\u06ec\u06d7\u06eb\u06d9\u06e5\u06e2\u06ec\u06df\u06e8\u06dc\u06ec\u06e2\u06e6\u06e6\u06e8\u06d9\u06e6\u06e6\u06e0\u06da\u06dc\u06e5\u06e7\u06e6\u06d8"

    move-object v1, v0

    move v11, v3

    goto :goto_0

    :sswitch_4
    const v1, -0x4532ccec

    const-string v0, "\u06d6\u06e7\u06dc\u06d8\u06eb\u06e8\u06e2\u06ec\u06e5\u06d8\u06e5\u06d6\u06e6\u06d8\u06d8\u06d8\u06e7\u06df\u06eb\u06d8\u06d8\u06ec\u06d6\u06e7\u06e4\u06d7\u06d8\u06e5\u06eb\u06d6\u06d8\u06e8\u06e6\u06e7\u06d8\u06e8\u06e6\u06d8\u06df\u06da\u06d6"

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v5

    xor-int/2addr v5, v1

    sparse-switch v5, :sswitch_data_1

    goto :goto_1

    :sswitch_5
    const-string v0, "\u06e1\u06e4\u06e7\u06d6\u06e4\u06e5\u06d8\u06e0\u06eb\u06e4\u06e5\u06d6\u06d8\u06e4\u06df\u06e5\u06d8\u06e4\u06dc\u06d8\u06df\u06ec\u06e2\u06dc\u06dc\u06d8\u06e7\u06e5\u06e7\u06e0\u06e1\u06d8\u06e0\u06df\u06e4\u06d7\u06df\u06da\u06ec\u06ec\u06e2\u06df\u06e0\u06df\u06e0\u06df\u06e5\u06d8\u06df\u06dc\u06d7\u06e7\u06e5\u06dc\u06d8\u06eb\u06d8\u06df"

    move-object v1, v0

    goto :goto_0

    :sswitch_6
    const-string v0, "\u06da\u06da\u06e0\u06e4\u06e1\u06e1\u06d8\u06d8\u06d9\u06d8\u06d8\u06dc\u06e7\u06e7\u06e4\u06e6\u06e7\u06d8\u06db\u06eb\u06e5\u06d7\u06db\u06d6\u06d8\u06e6\u06e7\u06e8\u06dc\u06d8\u06e5\u06da\u06d9\u06d8\u06d8\u06df\u06e7\u06e7\u06e6\u06e2\u06e2\u06db\u06df\u06e1\u06d8\u06e7\u06e2\u06e5"

    goto :goto_1

    :sswitch_7
    const v5, 0x51d0a5fa

    const-string v0, "\u06e5\u06e7\u06e6\u06df\u06eb\u06e0\u06e2\u06e1\u06eb\u06e2\u06e7\u06db\u06e6\u06e4\u06e6\u06d8\u06e6\u06d7\u06d6\u06e8\u06db\u06db\u06e2\u06ec\u06e2\u06e4\u06db\u06e0\u06d6\u06e7\u06e5\u06d8"

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v12

    xor-int/2addr v12, v5

    sparse-switch v12, :sswitch_data_2

    goto :goto_2

    :sswitch_8
    iget-object v0, p0, Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout$OooO0O0;->OoooOoO:Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout;

    invoke-static {v0}, Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout;->OooO0Oo(Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v11, v0, :cond_0

    const-string v0, "\u06d8\u06d9\u06da\u06d7\u06e4\u06eb\u06e2\u06e5\u06d7\u06e2\u06dc\u06d6\u06e0\u06d7\u06e8\u06e1\u06eb\u06e6\u06e6\u06e8\u06da\u06eb\u06e7\u06eb\u06d8\u06e6\u06e4\u06e8\u06e1\u06d8\u06eb\u06df\u06da\u06d8\u06e8\u06ec\u06d6\u06e0\u06da\u06d8\u06dc\u06eb"

    goto :goto_2

    :cond_0
    const-string v0, "\u06da\u06eb\u06e2\u06e0\u06d7\u06db\u06e0\u06e4\u06d6\u06d8\u06db\u06e4\u06e6\u06da\u06d8\u06e5\u06d8\u06d6\u06e6\u06d8\u06d8\u06e1\u06e6\u06e4\u06d6\u06e1\u06d8\u06db\u06eb\u06da\u06ec\u06e0\u06dc\u06d8\u06e8\u06d6\u06e1\u06ec\u06eb\u06dc\u06d8\u06e0\u06d6\u06e5\u06e4\u06e8\u06d8\u06e2\u06e5\u06d7\u06d8\u06db\u06e6"

    goto :goto_2

    :sswitch_9
    const-string v0, "\u06ec\u06d9\u06e0\u06e1\u06eb\u06dc\u06d8\u06e7\u06d6\u06e5\u06d8\u06e0\u06e5\u06d8\u06d8\u06da\u06e2\u06e8\u06e6\u06ec\u06db\u06e7\u06e5\u06e8\u06d8\u06ec\u06d8\u06e2\u06d6\u06d9\u06df\u06e0\u06d6\u06d8"

    goto :goto_2

    :sswitch_a
    const-string v0, "\u06df\u06e5\u06e7\u06d8\u06e2\u06d9\u06e1\u06df\u06e2\u06d8\u06e1\u06d7\u06e1\u06d8\u06da\u06e1\u06e2\u06e4\u06d8\u06e5\u06ec\u06e8\u06da\u06db\u06d7\u06e8\u06d9\u06d6\u06e7\u06d8\u06e5\u06da\u06e5\u06d6\u06e6\u06e6\u06e8\u06d9\u06e5\u06d8"

    goto :goto_1

    :sswitch_b
    const-string v0, "\u06eb\u06df\u06d9\u06e6\u06d7\u06d8\u06df\u06dc\u06e7\u06d7\u06db\u06e6\u06e8\u06dc\u06e6\u06eb\u06eb\u06d6\u06e7\u06d8\u06e7\u06d8\u06d7\u06d6\u06da\u06d6\u06d6\u06e6\u06d8\u06e0\u06d6\u06d8\u06eb\u06d9\u06e4\u06e5\u06d9\u06e6\u06d8"

    goto :goto_1

    :sswitch_c
    const v1, -0x6604eb2d

    const-string v0, "\u06e5\u06e8\u06e8\u06d8\u06e6\u06db\u06df\u06db\u06d6\u06eb\u06da\u06da\u06e1\u06e1\u06e1\u06e5\u06d7\u06e1\u06e6\u06d8\u06db\u06e4\u06e7\u06ec\u06e1\u06e0\u06d7\u06d8\u06e5\u06d8\u06e6\u06d8\u06da\u06eb\u06e6\u06d6\u06df\u06df\u06da\u06e1\u06ec\u06e5\u06e5\u06e1\u06e6\u06ec\u06e1\u06e7\u06d8\u06d6\u06d7\u06e0\u06df\u06eb\u06df\u06e6\u06e6\u06d8"

    :goto_3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v5

    xor-int/2addr v5, v1

    sparse-switch v5, :sswitch_data_3

    goto :goto_3

    :sswitch_d
    const-string v0, "\u06da\u06e7\u06d8\u06d8\u06d7\u06e0\u06e8\u06e7\u06e7\u06d8\u06d8\u06e8\u06dc\u06d8\u06df\u06e0\u06e8\u06db\u06e6\u06eb\u06e4\u06e7\u06e6\u06d8\u06d6\u06e0\u06e4\u06df\u06dc\u06e6\u06d8\u06e6\u06d8\u06e6\u06d8\u06d9\u06db\u06e2\u06dc\u06e2\u06d8"

    move-object v1, v0

    goto :goto_0

    :sswitch_e
    const-string v0, "\u06db\u06eb\u06dc\u06e6\u06e1\u06eb\u06e8\u06e1\u06e7\u06dc\u06d8\u06e7\u06d8\u06e4\u06d8\u06e6\u06d8\u06e7\u06dc\u06dc\u06d8\u06e4\u06e2\u06e4\u06e4\u06da\u06dc\u06d8\u06e7\u06e0\u06df\u06db\u06d7\u06d6\u06e0\u06d7\u06e5\u06e2\u06e5\u06e5\u06e8\u06d9\u06e2\u06d6\u06e6\u06d8\u06d8\u06d7\u06e2\u06e8\u06d8\u06e7\u06ec\u06e2\u06e7\u06d7\u06d8\u06e6\u06e5\u06e5"

    goto :goto_3

    :sswitch_f
    const v5, -0x62d18ca1

    const-string v0, "\u06d8\u06e8\u06e7\u06d8\u06d7\u06e7\u06e8\u06d8\u06db\u06dc\u06dc\u06d8\u06d9\u06db\u06eb\u06e7\u06e8\u06e8\u06dc\u06d7\u06e6\u06d8\u06d7\u06e8\u06db\u06e6\u06d8\u06da\u06e5\u06da\u06eb\u06e0\u06d7\u06e2\u06e5\u06e4\u06eb\u06e8\u06e2\u06da\u06ec\u06e8\u06d8\u06df\u06e1\u06e1"

    :goto_4
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v12

    xor-int/2addr v12, v5

    sparse-switch v12, :sswitch_data_4

    goto :goto_4

    :sswitch_10
    iget-object v0, p0, Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout$OooO0O0;->OoooOoO:Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout;

    invoke-static {v0}, Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout;->OooO0O0(Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout;)I

    move-result v0

    iget-object v12, p0, Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout$OooO0O0;->OoooOoO:Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout;

    invoke-static {v12}, Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout;->OooO0Oo(Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout;)Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    rem-int/2addr v0, v12

    if-ne v11, v0, :cond_1

    const-string v0, "\u06e2\u06dc\u06e1\u06d8\u06e5\u06e5\u06e1\u06d8\u06d9\u06da\u06e6\u06eb\u06d8\u06e6\u06d7\u06ec\u06db\u06e5\u06e5\u06e7\u06d8\u06d9\u06e2\u06e6\u06d8\u06e8\u06d8\u06db\u06e1\u06d9\u06df\u06db\u06df\u06ec\u06d7\u06da\u06e2\u06eb\u06da\u06d6\u06d8\u06eb\u06db\u06d9\u06d8\u06e6\u06d8"

    goto :goto_4

    :cond_1
    const-string v0, "\u06d8\u06e1\u06db\u06d6\u06d8\u06dc\u06d8\u06d7\u06e2\u06d6\u06e0\u06d8\u06e5\u06d8\u06e1\u06df\u06e5\u06d8\u06e1\u06d6\u06e4\u06e8\u06eb\u06d8\u06ec\u06ec\u06e8\u06e6\u06da\u06d9\u06e8\u06e7\u06da\u06da\u06db\u06ec\u06dc\u06e4\u06e7"

    goto :goto_4

    :sswitch_11
    const-string v0, "\u06ec\u06e7\u06d7\u06e0\u06e2\u06e8\u06e1\u06dc\u06eb\u06dc\u06e4\u06e1\u06d8\u06d9\u06e2\u06db\u06e8\u06d6\u06e8\u06d8\u06db\u06e1\u06d8\u06e5\u06e5\u06d8\u06eb\u06e0\u06e5\u06ec\u06d8\u06e8\u06d8\u06e7\u06d7\u06db\u06d9\u06eb\u06e5\u06d8\u06e8\u06e0\u06e2\u06e5\u06d9\u06dc\u06db\u06d9\u06d6\u06d8\u06e7\u06d6\u06e1\u06e6\u06dc\u06eb\u06e5\u06e4"

    goto :goto_4

    :sswitch_12
    const-string v0, "\u06e8\u06d7\u06e5\u06e0\u06da\u06e5\u06d8\u06e2\u06db\u06e5\u06d8\u06d9\u06ec\u06e1\u06d8\u06e4\u06d9\u06d7\u06d6\u06df\u06e4\u06e8\u06db\u06e8\u06df\u06eb\u06e8\u06da\u06eb\u06ec\u06d6\u06df\u06e2"

    goto :goto_3

    :sswitch_13
    const-string v0, "\u06db\u06e0\u06d9\u06e8\u06e7\u06dc\u06d8\u06d6\u06ec\u06e6\u06e4\u06eb\u06d6\u06d8\u06e0\u06d9\u06e0\u06e0\u06da\u06d7\u06d9\u06e5\u06ec\u06d8\u06db\u06e6\u06dc\u06e5\u06e5\u06da\u06e4\u06e5\u06d8\u06e4\u06e7\u06e6\u06da\u06da\u06e7\u06dc\u06e2\u06e8\u06d8\u06da\u06e6\u06df\u06e8\u06ec\u06e2"

    goto :goto_3

    :sswitch_14
    const-string v0, "\u06df\u06e4\u06d6\u06e1\u06e2\u06e4\u06e8\u06e6\u06e4\u06e7\u06e6\u06d8\u06e8\u06e2\u06d8\u06d8\u06d7\u06d6\u06d8\u06d6\u06e8\u06e1\u06e8\u06d7\u06e5\u06eb\u06e0\u06e6\u06e4\u06d7\u06e0\u06eb\u06d6\u06d8\u06ec\u06ec\u06da\u06d7\u06dc\u06d6\u06d8\u06d7\u06eb\u06d9\u06da\u06e8\u06e6\u06d8\u06e0\u06e5\u06d6"

    move-object v1, v0

    goto/16 :goto_0

    :sswitch_15
    iget-object v0, p0, Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout$OooO0O0;->OoooOoO:Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout;

    invoke-static {v0}, Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout;->OooO0Oo(Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const-string v1, "\u06e5\u06ec\u06e5\u06d8\u06e0\u06d7\u06e5\u06d8\u06eb\u06e5\u06d8\u06d8\u06df\u06db\u06e1\u06d8\u06e2\u06df\u06dc\u06e0\u06e8\u06df\u06df\u06e1\u06e0\u06e7\u06ec\u06d8\u06d8\u06d7\u06df\u06e0\u06e6\u06eb\u06eb\u06e4\u06da\u06e1\u06d8\u06e2\u06e6\u06df\u06e0\u06dc\u06e8\u06d8\u06d8\u06e5\u06d6\u06e2\u06e1\u06d7\u06e0\u06e7\u06db"

    move-object v10, v0

    goto/16 :goto_0

    :sswitch_16
    iget-object v0, p0, Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout$OooO0O0;->OoooOoO:Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout;

    invoke-static {v0}, Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout;->OooO0o0(Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v8

    const-string v0, "\u06dc\u06e4\u06dc\u06d8\u06da\u06df\u06e7\u06e1\u06ec\u06ec\u06eb\u06eb\u06e5\u06d8\u06ec\u06db\u06e8\u06d8\u06d6\u06d6\u06d9\u06e6\u06d8\u06e7\u06e6\u06e8\u06d8\u06d8\u06df\u06d6\u06e6\u06e1\u06d8\u06e5\u06d8\u06df\u06e1\u06dc\u06d8\u06d8\u06d9\u06e5\u06e0\u06eb\u06e5\u06d8\u06ec\u06df\u06d6\u06d7\u06dc\u06e1\u06d8\u06dc\u06eb\u06e6\u06d8\u06ec\u06e7\u06e2\u06eb\u06e2"

    move-object v1, v0

    goto/16 :goto_0

    :sswitch_17
    const-string v0, "\u06e2\u06d6\u06d8\u06d8\u06e1\u06e7\u06d8\u06d8\u06da\u06e8\u06dc\u06d9\u06dc\u06d7\u06e5\u06e6\u06d8\u06d9\u06e8\u06ec\u06d8\u06e2\u06d9\u06e4\u06d8\u06da\u06e6\u06e0\u06e0\u06e0\u06dc\u06e0\u06e5\u06d9\u06da\u06e7\u06d6\u06e8\u06d8\u06e4\u06e0\u06e2\u06d8\u06da\u06db\u06d6\u06df\u06dc\u06d8\u06dc\u06da\u06e6\u06e8\u06df\u06e6\u06d8\u06e4\u06d9\u06dc\u06d8"

    move-object v1, v0

    move-object v9, v10

    goto/16 :goto_0

    :sswitch_18
    const-string v0, "\u06d9\u06ec\u06e0\u06dc\u06eb\u06eb\u06e7\u06d8\u06e7\u06e8\u06e6\u06d8\u06d9\u06eb\u06e5\u06e5\u06e8\u06dc\u06d8\u06d7\u06db\u06e4\u06e6\u06e1\u06dc\u06e1\u06dc\u06e2\u06df\u06d8\u06eb\u06df\u06d7\u06d8\u06db\u06d9\u06e1\u06d8\u06e0\u06d9\u06e2\u06ec\u06dc\u06d6\u06d8"

    move-object v1, v0

    move-object v7, v8

    goto/16 :goto_0

    :sswitch_19
    iget-object v0, p0, Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout$OooO0O0;->OoooOoO:Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout;

    invoke-static {v0}, Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout;->OooO0Oo(Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const-string v1, "\u06db\u06e6\u06e0\u06e4\u06ec\u06e1\u06d8\u06dc\u06ec\u06e6\u06d8\u06dc\u06e1\u06e7\u06d8\u06e6\u06e0\u06e8\u06d8\u06db\u06e4\u06da\u06ec\u06da\u06d8\u06da\u06e1\u06d6\u06e8\u06dc\u06e8\u06d8\u06e6\u06df\u06e8\u06d8\u06d9\u06d9\u06e8\u06d8\u06dc\u06e8\u06da\u06da\u06ec\u06e5\u06e2\u06d7\u06d8\u06d8"

    move-object v6, v0

    goto/16 :goto_0

    :sswitch_1a
    iget-object v0, p0, Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout$OooO0O0;->OoooOoO:Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout;

    invoke-static {v0}, Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout;->OooO0o(Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v4

    const-string v0, "\u06d6\u06e1\u06e5\u06dc\u06d8\u06db\u06e2\u06e7\u06d8\u06e1\u06d9\u06e1\u06d9\u06d9\u06e2\u06d9\u06e8\u06e1\u06d8\u06d9\u06e8\u06db\u06d9\u06e6\u06e8\u06d8\u06e8\u06e6\u06e6\u06e4\u06d7"

    move-object v1, v0

    goto/16 :goto_0

    :sswitch_1b
    const-string v0, "\u06df\u06da\u06e4\u06d6\u06d8\u06e2\u06e0\u06e2\u06e8\u06e2\u06e2\u06dc\u06d9\u06da\u06e5\u06d9\u06ec\u06e4\u06e2\u06e8\u06d7\u06e8\u06e4\u06db\u06da\u06e8\u06d8\u06dc\u06e2"

    move-object v1, v0

    move-object v7, v4

    goto/16 :goto_0

    :sswitch_1c
    const-string v0, "\u06d8\u06e6\u06ec\u06d9\u06d8\u06e5\u06d8\u06e8\u06e7\u06df\u06e1\u06e2\u06e8\u06d8\u06e2\u06e0\u06e7\u06dc\u06d7\u06db\u06d7\u06e5\u06db\u06e1\u06dc\u06e5\u06d6\u06d9\u06dc\u06d8\u06e0\u06e4\u06d9\u06e2\u06ec\u06eb\u06db\u06e6\u06d7\u06e1\u06e8\u06d7\u06e8\u06db\u06e8\u06d9\u06e5\u06d6\u06d6\u06df\u06ec\u06e7\u06dc\u06e1\u06d8\u06e5\u06e4\u06d9"

    move-object v1, v0

    move-object v9, v6

    goto/16 :goto_0

    :sswitch_1d
    invoke-virtual {v9, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const-string v0, "\u06e0\u06d8\u06e0\u06e0\u06da\u06e5\u06d8\u06da\u06dc\u06e8\u06d8\u06df\u06df\u06e8\u06e5\u06e5\u06e1\u06d8\u06e1\u06ec\u06ec\u06d9\u06db\u06e1\u06e5\u06d6\u06e5\u06d8\u06ec\u06d9\u06e0\u06e4\u06e7\u06d8\u06da\u06d8\u06e0\u06db\u06e1\u06e5\u06d6\u06d6\u06e0\u06e4\u06eb\u06e1\u06db\u06e6\u06e2\u06e5\u06e5"

    move-object v1, v0

    goto/16 :goto_0

    :sswitch_1e
    add-int/lit8 v2, v11, 0x1

    const-string v0, "\u06d8\u06e7\u06d9\u06e0\u06d6\u06e1\u06d7\u06ec\u06e1\u06d8\u06d8\u06df\u06e2\u06d7\u06da\u06df\u06d6\u06eb\u06e6\u06d8\u06eb\u06d8\u06da\u06db\u06eb\u06e8\u06d8\u06d9\u06e5\u06e0\u06e8\u06e6\u06d7"

    move-object v1, v0

    goto/16 :goto_0

    :sswitch_1f
    const-string v0, "\u06e6\u06db\u06d6\u06d8\u06e0\u06d8\u06e0\u06d8\u06eb\u06df\u06e5\u06da\u06d8\u06e2\u06e7\u06db\u06ec\u06dc\u06db\u06d8\u06d7\u06d8\u06d8\u06eb\u06e2\u06d8\u06dc\u06df\u06e8\u06ec\u06da\u06e8\u06e5\u06d8\u06e6\u06e1\u06e0\u06e4\u06e1\u06e4\u06dc\u06d8\u06e8\u06da\u06e7\u06e1\u06ec\u06e8\u06dc\u06e0\u06da"

    move-object v1, v0

    move v11, v2

    goto/16 :goto_0

    :sswitch_20
    iget-object v0, p0, Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout$OooO0O0;->OoooOoO:Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout;

    invoke-static {v0}, Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout;->OooO00o(Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-string v0, "\u06e2\u06eb\u06db\u06d9\u06d8\u06e5\u06dc\u06d6\u06dc\u06d6\u06d9\u06dc\u06d8\u06e2\u06e7\u06e8\u06d9\u06e0\u06d7\u06d6\u06d9\u06eb\u06e6\u06e1\u06d9\u06ec\u06d8\u06da\u06e7\u06e0\u06d8\u06d8\u06df\u06e4\u06e8\u06d8\u06ec\u06df\u06e1\u06ec\u06e8\u06d8\u06d8\u06d8\u06df\u06d7"

    move-object v1, v0

    goto/16 :goto_0

    :sswitch_21
    iget-object v0, p0, Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout$OooO0O0;->OoooOoO:Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout;

    invoke-static {v0}, Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout;->OooO00o(Lcom/cyjh/elfin/ui/view/CircleDotLinearLayout;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v12, 0x64

    invoke-virtual {v0, p0, v12, v13}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const-string v0, "\u06e8\u06eb\u06d8\u06da\u06e6\u06ec\u06e1\u06e2\u06d6\u06d8\u06d7\u06eb\u06e2\u06e2\u06d8\u06e5\u06d8\u06d8\u06e1\u06d8\u06dc\u06e7\u06d9\u06e6\u06d8\u06e1\u06e6\u06e8\u06d6\u06d7\u06e2\u06dc\u06e7\u06e1\u06da\u06e5"

    move-object v1, v0

    goto/16 :goto_0

    :sswitch_22
    const-string v0, "\u06e1\u06e5\u06e1\u06e7\u06e1\u06dc\u06d8\u06e5\u06e5\u06e2\u06dc\u06e4\u06e8\u06d8\u06df\u06da\u06e8\u06d8\u06d7\u06e6\u06df\u06d6\u06e7\u06e1\u06d8\u06e0\u06d8\u06e6\u06ec\u06d7\u06eb\u06d9\u06e5\u06e2\u06ec\u06df\u06e8\u06dc\u06ec\u06e2\u06e6\u06e6\u06e8\u06d9\u06e6\u06e6\u06e0\u06da\u06dc\u06e5\u06e7\u06e6\u06d8"

    move-object v1, v0

    goto/16 :goto_0

    :sswitch_23
    const-string v0, "\u06d8\u06e6\u06ec\u06d9\u06d8\u06e5\u06d8\u06e8\u06e7\u06df\u06e1\u06e2\u06e8\u06d8\u06e2\u06e0\u06e7\u06dc\u06d7\u06db\u06d7\u06e5\u06db\u06e1\u06dc\u06e5\u06d6\u06d9\u06dc\u06d8\u06e0\u06e4\u06d9\u06e2\u06ec\u06eb\u06db\u06e6\u06d7\u06e1\u06e8\u06d7\u06e8\u06db\u06e8\u06d9\u06e5\u06d6\u06d6\u06df\u06ec\u06e7\u06dc\u06e1\u06d8\u06e5\u06e4\u06d9"

    move-object v1, v0

    goto/16 :goto_0

    :sswitch_24
    const-string v0, "\u06e7\u06d7\u06ec\u06db\u06e8\u06e8\u06d8\u06da\u06e8\u06e5\u06d8\u06dc\u06dc\u06e1\u06e1\u06e5\u06da\u06db\u06e6\u06e0\u06e5\u06df\u06db\u06eb\u06db\u06e2\u06d9\u06ec\u06e4\u06eb\u06e1\u06d8\u06e8\u06da\u06e7\u06d9\u06d6"

    move-object v1, v0

    goto/16 :goto_0

    :sswitch_25
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7d85fef1 -> :sswitch_25
        -0x7b7295db -> :sswitch_22
        -0x6ee8f3ec -> :sswitch_21
        -0x6cd13ec7 -> :sswitch_1b
        -0x5e13b2f2 -> :sswitch_1c
        -0x53480aba -> :sswitch_18
        -0x4178a88b -> :sswitch_16
        -0x3b30f62f -> :sswitch_1a
        -0x14dc1406 -> :sswitch_17
        -0xa642774 -> :sswitch_20
        -0x571d0e7 -> :sswitch_2
        0x7a2c699 -> :sswitch_19
        0x1eb8dba5 -> :sswitch_3
        0x23625122 -> :sswitch_1e
        0x32bf90e5 -> :sswitch_1
        0x39c0554f -> :sswitch_0
        0x519964ac -> :sswitch_4
        0x56946ffb -> :sswitch_15
        0x6260f6f7 -> :sswitch_23
        0x65cde35b -> :sswitch_1f
        0x68303d62 -> :sswitch_1d
        0x77d03f8f -> :sswitch_c
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x67616161 -> :sswitch_b
        -0x2118eb03 -> :sswitch_7
        -0x1ddecd8d -> :sswitch_5
        0x50c17792 -> :sswitch_24
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        -0x7d18debf -> :sswitch_6
        -0x7230015d -> :sswitch_a
        -0x27066ac8 -> :sswitch_8
        0x53efa2bf -> :sswitch_9
    .end sparse-switch

    :sswitch_data_3
    .sparse-switch
        0x33391e44 -> :sswitch_13
        0x4fc441d2 -> :sswitch_f
        0x6abb6d82 -> :sswitch_d
        0x7a21d5a8 -> :sswitch_14
    .end sparse-switch

    :sswitch_data_4
    .sparse-switch
        -0x73589dfc -> :sswitch_11
        -0x602764b6 -> :sswitch_12
        -0x54e3eef4 -> :sswitch_10
        0x5cd77aa -> :sswitch_e
    .end sparse-switch
.end method
