.class public Lcom/cyjh/elfin/ui/activity/SplashActivity$OooO00o;
.super Ljava/lang/Object;

# interfaces
.implements Lz2/nh;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/elfin/ui/activity/SplashActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lz2/nh",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final OooO00o:Lcom/cyjh/elfin/ui/activity/SplashActivity;


# direct methods
.method public constructor <init>(Lcom/cyjh/elfin/ui/activity/SplashActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/cyjh/elfin/ui/activity/SplashActivity$OooO00o;->OooO00o:Lcom/cyjh/elfin/ui/activity/SplashActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OooO00o(Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x0

    const-string v0, "\u06d7\u06df\u06d6\u06d7\u06da\u06e6\u06d8\u06db\u06e7\u06e5\u06d8\u06da\u06e6\u06eb\u06dc\u06e8\u06d8\u06e2\u06e6\u06e8\u06d8\u06da\u06e4\u06d6\u06dc\u06d6\u06e1\u06d8\u06db\u06da\u06e7\u06d9\u06e2\u06e6\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0xee

    xor-int/2addr v1, v2

    xor-int/lit8 v1, v1, 0x5a

    const/16 v2, 0xed

    const v3, -0x413c4cb3

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d7\u06e5\u06e7\u06e0\u06e5\u06d8\u06d8\u06e7\u06e2\u06d6\u06d9\u06da\u06da\u06d6\u06e4\u06e5\u06d8\u06d7\u06ec\u06dc\u06e1\u06df\u06db\u06e5\u06eb\u06e1\u06d7\u06df\u06d6\u06d8\u06e5\u06e6\u06e8\u06eb\u06e5\u06d6\u06d8\u06ec\u06db\u06d6\u06d8\u06e7\u06d7\u06e2\u06e7\u06e7\u06d8\u06da\u06d9\u06e6\u06d8\u06e2\u06d7\u06e6\u06d7\u06e8\u06e6\u06d8\u06d9\u06d8\u06dc"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06ec\u06e1\u06df\u06dc\u06df\u06eb\u06e7\u06e1\u06d9\u06da\u06e6\u06db\u06ec\u06d6\u06e2\u06e1\u06e8\u06e5\u06d8\u06e0\u06df\u06e6\u06d8\u06db\u06dc\u06e7\u06d8\u06e7\u06da\u06e8\u06d8\u06e0\u06e8\u06df"

    goto :goto_0

    :sswitch_2
    const v1, -0x6838d3bb

    const-string v0, "\u06d9\u06e7\u06df\u06d8\u06ec\u06e4\u06e1\u06da\u06e5\u06ec\u06d7\u06db\u06dc\u06e8\u06d7\u06e4\u06db\u06d6\u06d8\u06e8\u06e7\u06d8\u06d8\u06e0\u06da\u06da\u06da\u06db\u06dc\u06d8\u06d7\u06db\u06eb\u06e1\u06e4\u06d6\u06d8\u06e1\u06dc\u06eb\u06e8\u06d6\u06e6\u06e4\u06e5\u06e2"

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v2, v1

    sparse-switch v2, :sswitch_data_1

    goto :goto_1

    :sswitch_3
    const v2, 0x19f2a36d

    const-string v0, "\u06e0\u06e0\u06e5\u06e2\u06e4\u06e1\u06d8\u06d6\u06dc\u06d8\u06d9\u06e0\u06eb\u06db\u06d9\u06e8\u06eb\u06d7\u06e1\u06d8\u06e2\u06da\u06d6\u06d8\u06e1\u06e6\u06e5\u06d8\u06e1\u06d6\u06d7\u06d7\u06db\u06db\u06dc\u06e7\u06db\u06db\u06ec\u06e5\u06d8\u06da\u06d9\u06e2\u06e2\u06db\u06e8\u06d8"

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v2

    sparse-switch v3, :sswitch_data_2

    goto :goto_2

    :sswitch_4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "\u06d7\u06e4\u06e7\u06d8\u06e1\u06e6\u06db\u06db\u06e8\u06da\u06e5\u06e8\u06ec\u06d7\u06eb\u06eb\u06e1\u06d6\u06e0\u06e4\u06e6\u06dc\u06d9\u06eb\u06e6\u06da\u06d6\u06d8\u06da\u06e1\u06d6\u06e6\u06e8\u06e1\u06d8\u06e1\u06d9\u06ec\u06e1\u06e0\u06d6\u06d8\u06d9\u06e7\u06e6"

    goto :goto_2

    :sswitch_5
    const-string v0, "\u06ec\u06d8\u06eb\u06df\u06d9\u06ec\u06e0\u06d8\u06d9\u06e6\u06e5\u06d8\u06d7\u06e8\u06e2\u06e8\u06e6\u06da\u06e4\u06df\u06da\u06d8\u06dc\u06d6\u06d8\u06e6\u06e8\u06d9\u06d8\u06e1\u06eb\u06d9\u06e0\u06e6\u06dc\u06d8\u06df\u06e6\u06db\u06e6\u06db\u06e0\u06d9\u06e8\u06dc\u06e8\u06dc\u06e1\u06e8\u06e1\u06e2\u06e1\u06d8\u06d8\u06db\u06eb"

    goto :goto_1

    :cond_0
    const-string v0, "\u06d8\u06da\u06e4\u06dc\u06d7\u06d6\u06d8\u06e6\u06e1\u06d8\u06e5\u06e5\u06e6\u06eb\u06e0\u06d7\u06e6\u06e5\u06eb\u06df\u06e8\u06df\u06e5\u06e6\u06e4\u06ec\u06db\u06e6\u06eb\u06df\u06d8\u06d8\u06e4\u06da\u06df\u06e1\u06df\u06e6\u06e4\u06e7\u06e4\u06e6\u06e8\u06e7\u06db\u06e2\u06e2\u06d6\u06da\u06e1\u06d8"

    goto :goto_2

    :sswitch_6
    const-string v0, "\u06e2\u06e4\u06e7\u06d8\u06e6\u06e7\u06dc\u06e8\u06d7\u06dc\u06e4\u06e8\u06d8\u06db\u06d6\u06e2\u06d6\u06e0\u06e7\u06e1\u06d9\u06e0\u06d6\u06df\u06da\u06d8\u06d8\u06eb\u06e7\u06d8\u06d8\u06d8\u06da\u06da\u06d8\u06d8\u06d9\u06dc\u06df\u06ec\u06d6\u06dc\u06d8\u06e5\u06d8\u06e1\u06d8"

    goto :goto_2

    :sswitch_7
    const-string v0, "\u06e6\u06e8\u06e5\u06eb\u06e1\u06e2\u06e2\u06e5\u06e6\u06d8\u06ec\u06dc\u06e7\u06e6\u06e4\u06e8\u06df\u06e4\u06d6\u06ec\u06e0\u06e6\u06db\u06d9\u06da\u06db\u06d8\u06d8\u06e6\u06d8\u06d8\u06d8\u06da\u06dc\u06da\u06da\u06e5\u06da\u06e0\u06e7\u06d9\u06e4\u06d9\u06dc"

    goto :goto_1

    :sswitch_8
    const-string v0, "\u06e4\u06e1\u06da\u06eb\u06e2\u06d9\u06d7\u06e7\u06e1\u06e7\u06e4\u06e7\u06da\u06e6\u06dc\u06d8\u06e1\u06dc\u06df\u06e1\u06e0\u06e5\u06eb\u06d6\u06d8\u06d6\u06dc\u06e8\u06e6\u06e8\u06df"

    goto :goto_1

    :sswitch_9
    const-string v0, "\u06e8\u06e0\u06d6\u06d8\u06e0\u06e7\u06eb\u06e6\u06e2\u06e7\u06eb\u06e1\u06df\u06db\u06df\u06e2\u06d9\u06d8\u06d8\u06e2\u06e0\u06df\u06df\u06e1\u06d6\u06d8\u06e6\u06d6\u06e1\u06e0\u06df\u06e7\u06d7\u06df\u06e1\u06db\u06e5\u06e1"

    goto :goto_0

    :sswitch_a
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SplashActivity$OooO00o;->OooO00o:Lcom/cyjh/elfin/ui/activity/SplashActivity;

    invoke-static {v0}, Lcom/cyjh/elfin/ui/activity/SplashActivity;->OooOOOO(Lcom/cyjh/elfin/ui/activity/SplashActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/cyjh/elfin/ui/activity/SplashActivity$OooO00o;->OooO00o:Lcom/cyjh/elfin/ui/activity/SplashActivity;

    const v2, 0x7f100041

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "\u06d7\u06d9\u06dc\u06e5\u06d9\u06e4\u06dc\u06e1\u06da\u06e8\u06e0\u06dc\u06db\u06d8\u06e7\u06d8\u06db\u06e7\u06e2\u06e2\u06e0\u06d6\u06d8\u06d9\u06e5\u06e0\u06db\u06e4\u06eb\u06e4\u06e5\u06da\u06df\u06d7\u06e2\u06df\u06e5\u06e2"

    goto :goto_0

    :sswitch_b
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SplashActivity$OooO00o;->OooO00o:Lcom/cyjh/elfin/ui/activity/SplashActivity;

    invoke-static {v0}, Lcom/cyjh/elfin/ui/activity/SplashActivity;->OooOOOO(Lcom/cyjh/elfin/ui/activity/SplashActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    const-string v0, "\u06d9\u06e0\u06db\u06db\u06d6\u06e4\u06da\u06d9\u06e6\u06d8\u06da\u06db\u06dc\u06e8\u06e5\u06e7\u06e2\u06db\u06d6\u06ec\u06e8\u06d8\u06df\u06e6\u06e5\u06db\u06e2\u06db\u06d6\u06df\u06e0\u06e7\u06e5\u06df\u06eb\u06da\u06e5\u06d9\u06e1\u06e5\u06ec\u06da\u06e8\u06d8"

    goto :goto_0

    :sswitch_c
    const-string v0, "\u06d9\u06e0\u06db\u06db\u06d6\u06e4\u06da\u06d9\u06e6\u06d8\u06da\u06db\u06dc\u06e8\u06e5\u06e7\u06e2\u06db\u06d6\u06ec\u06e8\u06d8\u06df\u06e6\u06e5\u06db\u06e2\u06db\u06d6\u06df\u06e0\u06e7\u06e5\u06df\u06eb\u06da\u06e5\u06d9\u06e1\u06e5\u06ec\u06da\u06e8\u06d8"

    goto :goto_0

    :sswitch_d
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x6ac97ce3 -> :sswitch_0
        -0x61dc91aa -> :sswitch_1
        0x13457339 -> :sswitch_2
        0x196bb18e -> :sswitch_b
        0x1aa0d06d -> :sswitch_d
        0x428f0f83 -> :sswitch_a
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x7778f6f6 -> :sswitch_8
        -0x4f2c4d3b -> :sswitch_9
        -0x3dfb9691 -> :sswitch_3
        -0x35be0fbb -> :sswitch_c
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        -0x5fbef7c4 -> :sswitch_6
        -0x4d5ab8cd -> :sswitch_7
        0x27211baa -> :sswitch_5
        0x7b8cc331 -> :sswitch_4
    .end sparse-switch
.end method

.method public bridge synthetic OooO0O0(Ljava/lang/Object;)V
    .locals 4

    const-string v0, "\u06e1\u06e6\u06e6\u06d8\u06dc\u06da\u06db\u06ec\u06da\u06eb\u06e0\u06e8\u06d8\u06db\u06d8\u06e8\u06e7\u06da\u06ec\u06da\u06d6\u06eb\u06d7\u06d6\u06e8\u06d8\u06df\u06e8\u06d6\u06eb\u06d8\u06e6\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x199

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x3cb

    const/16 v2, 0x134

    const v3, 0x3ad7cf75

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06da\u06e4\u06d7\u06df\u06d8\u06e7\u06d8\u06eb\u06e1\u06e6\u06d9\u06e5\u06eb\u06df\u06d8\u06e1\u06d8\u06da\u06e6\u06e2\u06d7\u06d8\u06d7\u06da\u06e8\u06db\u06da\u06d8\u06d6\u06e8\u06e4\u06ec\u06da\u06d8\u06e7\u06d8\u06ec\u06db\u06e6\u06d8"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06e1\u06eb\u06d8\u06e5\u06df\u06d6\u06d8\u06da\u06e8\u06dc\u06d8\u06e8\u06dc\u06e7\u06d8\u06d8\u06da\u06e8\u06d8\u06e0\u06e2\u06e8\u06d8\u06da\u06e7\u06d8\u06e6\u06e2\u06da\u06e8\u06e5\u06ec\u06d7\u06e8\u06d9"

    goto :goto_0

    :sswitch_2
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/cyjh/elfin/ui/activity/SplashActivity$OooO00o;->OooO0o(Ljava/lang/String;)V

    const-string v0, "\u06ec\u06e4\u06e1\u06d7\u06eb\u06e1\u06ec\u06e4\u06e4\u06e5\u06dc\u06e1\u06da\u06d8\u06d8\u06d6\u06e4\u06d8\u06d8\u06e4\u06e4\u06e8\u06ec\u06e8\u06e2\u06e2\u06d8\u06e6\u06d8\u06eb\u06e4\u06e1\u06d8\u06e7\u06d9\u06e0\u06e0\u06e2"

    goto :goto_0

    :sswitch_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x6049f819 -> :sswitch_3
        -0x253de7ba -> :sswitch_0
        -0x243e9646 -> :sswitch_2
        0x24aa97ec -> :sswitch_1
    .end sparse-switch
.end method

.method public OooO0OO()V
    .locals 4

    const-string v0, "\u06d8\u06d8\u06e0\u06dc\u06d9\u06e0\u06d8\u06e6\u06e2\u06d6\u06dc\u06d7\u06e7\u06e0\u06e2\u06dc\u06e5\u06e6\u06e1\u06d8\u06e8\u06d8\u06db\u06e4\u06d6\u06d8\u06e2\u06e0\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x2b0

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x3c2

    const/16 v2, 0x272

    const v3, -0x419fd028

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e6\u06d6\u06e8\u06dc\u06da\u06e5\u06e7\u06db\u06d8\u06d8\u06e0\u06e2\u06eb\u06d9\u06e7\u06d7\u06d7\u06eb\u06d9\u06d7\u06d9\u06e5\u06dc\u06e6\u06e5\u06e0\u06da\u06d7\u06e2\u06db\u06e4\u06e2\u06da\u06e6\u06d8\u06db\u06df\u06d8"

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SplashActivity$OooO00o;->OooO00o:Lcom/cyjh/elfin/ui/activity/SplashActivity;

    invoke-static {v0}, Lcom/cyjh/elfin/ui/activity/SplashActivity;->OooOOo(Lcom/cyjh/elfin/ui/activity/SplashActivity;)V

    const-string v0, "\u06e0\u06d7\u06d7\u06eb\u06db\u06d9\u06d7\u06e8\u06eb\u06e7\u06eb\u06d9\u06e6\u06eb\u06e7\u06e1\u06db\u06d6\u06e0\u06e0\u06eb\u06e7\u06d7\u06ec\u06e0\u06d9\u06dc\u06d8\u06eb\u06e8\u06e6\u06d8\u06d7\u06e0\u06d7\u06eb\u06d7"

    goto :goto_0

    :sswitch_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x10907061 -> :sswitch_2
        0x39f0633a -> :sswitch_1
        0x41f2a24c -> :sswitch_0
    .end sparse-switch
.end method

.method public OooO0Oo(I)V
    .locals 4

    const-string v0, "\u06d9\u06db\u06e4\u06eb\u06e1\u06e7\u06d8\u06d9\u06ec\u06db\u06e5\u06d9\u06eb\u06d9\u06e6\u06e5\u06db\u06e2\u06d7\u06e1\u06e5\u06e5\u06d8\u06e4\u06e6\u06e1\u06e6\u06db\u06e6\u06d8\u06dc\u06d8\u06dc\u06e5\u06e0\u06d7\u06df\u06e8\u06e8\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x243

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x371

    const/16 v2, 0x267

    const v3, -0x336df538    # -7.6568128E7f

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06ec\u06e6\u06ec\u06e2\u06df\u06e6\u06e0\u06df\u06eb\u06db\u06d8\u06d8\u06d8\u06ec\u06dc\u06d6\u06d6\u06e2\u06d9\u06eb\u06e8\u06e4\u06e0\u06eb\u06eb\u06e1\u06d8\u06e1\u06db\u06e4\u06da"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06d7\u06d6\u06d6\u06d8\u06e5\u06e4\u06eb\u06da\u06d9\u06df\u06d7\u06dc\u06dc\u06d9\u06e8\u06da\u06d7\u06e6\u06d8\u06df\u06d9\u06e6\u06e4\u06e4\u06dc\u06d8\u06db\u06da\u06dc\u06eb\u06da\u06e5\u06e5\u06d8\u06d8\u06e8\u06db\u06db"

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SplashActivity$OooO00o;->OooO00o:Lcom/cyjh/elfin/ui/activity/SplashActivity;

    invoke-virtual {v0}, Lcom/cyjh/elfin/ui/activity/SplashActivity;->OooOo()V

    const-string v0, "\u06e6\u06eb\u06e2\u06d7\u06e6\u06e5\u06e4\u06d6\u06df\u06eb\u06df\u06d8\u06d8\u06e8\u06da\u06d6\u06eb\u06d9\u06d8\u06d8\u06e8\u06e5\u06dc\u06d8\u06e5\u06e6\u06df\u06e1\u06e5\u06d9\u06d8\u06e4\u06d8\u06e1\u06e6\u06d8\u06da\u06da\u06d6\u06e8\u06d8\u06d6\u06e5\u06e2"

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SplashActivity$OooO00o;->OooO00o:Lcom/cyjh/elfin/ui/activity/SplashActivity;

    invoke-static {v0}, Lcom/cyjh/elfin/ui/activity/SplashActivity;->OooOOOo(Lcom/cyjh/elfin/ui/activity/SplashActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/cyjh/elfin/ui/activity/SplashActivity$OooO00o;->OooO00o:Lcom/cyjh/elfin/ui/activity/SplashActivity;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "\u06ec\u06e1\u06d9\u06e6\u06e7\u06d6\u06e4\u06d8\u06dc\u06d8\u06ec\u06df\u06d6\u06ec\u06e1\u06eb\u06d7\u06e5\u06e1\u06d8\u06e5\u06dc\u06eb\u06d9\u06e6\u06db\u06e7\u06e5\u06df\u06d8\u06e4\u06ec"

    goto :goto_0

    :sswitch_4
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SplashActivity$OooO00o;->OooO00o:Lcom/cyjh/elfin/ui/activity/SplashActivity;

    invoke-static {v0}, Lcom/cyjh/elfin/ui/activity/SplashActivity;->OooOOOo(Lcom/cyjh/elfin/ui/activity/SplashActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const-string v0, "\u06dc\u06e8\u06e7\u06d8\u06d6\u06e6\u06e0\u06db\u06e2\u06eb\u06e4\u06e6\u06e5\u06e7\u06df\u06e2\u06e7\u06e7\u06d7\u06e8\u06ec\u06dc\u06e6\u06d9\u06e4\u06e4\u06d6\u06df\u06e1\u06eb\u06eb\u06e5\u06eb\u06e5\u06d6\u06e8\u06e5\u06e8\u06ec\u06e7\u06e1\u06d6\u06e1\u06d8\u06d6\u06d6\u06d8\u06e7\u06ec\u06e1"

    goto :goto_0

    :sswitch_5
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SplashActivity$OooO00o;->OooO00o:Lcom/cyjh/elfin/ui/activity/SplashActivity;

    invoke-static {v0}, Lcom/cyjh/elfin/ui/activity/SplashActivity;->OooOOo0(Lcom/cyjh/elfin/ui/activity/SplashActivity;)Landroidx/lifecycle/AndroidViewModel;

    move-result-object v0

    check-cast v0, Lz2/qa;

    invoke-virtual {v0, p1}, Lz2/qa;->Oooo(I)V

    const-string v0, "\u06d7\u06e6\u06da\u06d9\u06d8\u06dc\u06d8\u06da\u06db\u06da\u06eb\u06da\u06e1\u06d8\u06df\u06e5\u06dc\u06d8\u06df\u06e1\u06e7\u06d6\u06e4\u06da\u06eb\u06e8\u06e2\u06e4\u06e0\u06e6\u06d8\u06e2\u06db\u06e7\u06dc\u06da\u06e8\u06e6\u06df\u06d7\u06e6\u06d9\u06e5\u06d8\u06d9\u06e1\u06e5\u06d8\u06e5\u06e2\u06eb\u06d7\u06e1\u06d9"

    goto :goto_0

    :sswitch_6
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x78292c91 -> :sswitch_4
        -0x5719ddd2 -> :sswitch_5
        -0x2f343cdc -> :sswitch_1
        -0x29489512 -> :sswitch_6
        -0x3912bf7 -> :sswitch_0
        0x5721439 -> :sswitch_2
        0x13249853 -> :sswitch_3
    .end sparse-switch
.end method

.method public OooO0o(Ljava/lang/String;)V
    .locals 4

    const-string v0, "\u06e0\u06da\u06e4\u06e7\u06e6\u06eb\u06db\u06d8\u06d8\u06db\u06da\u06dc\u06d7\u06eb\u06d7\u06d6\u06d7\u06d8\u06d6\u06d7\u06da\u06d7\u06d9\u06d7\u06e8\u06df\u06df\u06d6\u06eb\u06e8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x311

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0xbb

    const/16 v2, 0x373

    const v3, 0x4b0217ce    # 8525774.0f

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d6\u06eb\u06dc\u06da\u06d6\u06e6\u06e8\u06e2\u06e8\u06dc\u06df\u06ec\u06e5\u06eb\u06e8\u06ec\u06df\u06e6\u06df\u06e4\u06df\u06dc\u06e6\u06e7\u06e7\u06d6\u06dc\u06e4\u06dc\u06d8\u06e4\u06e5\u06e0\u06e7\u06dc\u06db\u06ec\u06da\u06e7\u06e0\u06da\u06dc"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06e5\u06db\u06d6\u06d8\u06e2\u06e5\u06e1\u06e0\u06e5\u06da\u06d7\u06df\u06e1\u06d8\u06da\u06da\u06d6\u06e6\u06e4\u06e0\u06ec\u06db\u06db\u06d9\u06e0\u06df\u06d6\u06d7\u06e2\u06d7\u06e0\u06e6\u06e2\u06d8\u06e5\u06d8\u06e7\u06e7\u06df\u06d6\u06d8\u06e1\u06e1\u06d9\u06e7\u06e2\u06d8\u06d8\u06ec\u06e5\u06d9\u06e0\u06e2\u06e4\u06dc\u06dc\u06e6"

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SplashActivity$OooO00o;->OooO00o:Lcom/cyjh/elfin/ui/activity/SplashActivity;

    invoke-static {v0, p1}, Lcom/cyjh/elfin/ui/activity/SplashActivity;->OooOO0(Lcom/cyjh/elfin/ui/activity/SplashActivity;Ljava/lang/String;)V

    const-string v0, "\u06e5\u06e0\u06e1\u06e4\u06e8\u06eb\u06e0\u06ec\u06d6\u06eb\u06d7\u06dc\u06eb\u06da\u06e7\u06ec\u06d6\u06d6\u06d8\u06dc\u06e0\u06d6\u06df\u06d6\u06db\u06eb\u06e0\u06d6\u06d8\u06db\u06dc\u06d8\u06e0\u06e6\u06d6\u06e6\u06e6\u06d6\u06d8\u06dc\u06da\u06e2\u06e0\u06d8\u06d7"

    goto :goto_0

    :sswitch_3
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4501ef15 -> :sswitch_3
        -0x2c975d9e -> :sswitch_1
        0x5acec131 -> :sswitch_2
        0x6e107a88 -> :sswitch_0
    .end sparse-switch
.end method

.method public OooO0o0(Ljava/lang/String;)V
    .locals 4

    const-string v0, "\u06da\u06e1\u06e6\u06d8\u06eb\u06e5\u06d6\u06d8\u06eb\u06e4\u06da\u06e5\u06d7\u06e1\u06da\u06e8\u06d8\u06eb\u06e5\u06e1\u06d9\u06e7\u06db\u06eb\u06e4\u06e1\u06d8\u06eb\u06e1\u06df\u06dc\u06eb\u06ec\u06db\u06e2\u06d7\u06dc\u06e6"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x1ce

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0xee

    const/16 v2, 0x61

    const v3, -0x28333233

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e7\u06eb\u06e5\u06e4\u06e1\u06da\u06df\u06e6\u06e5\u06d8\u06d9\u06e6\u06d6\u06d8\u06e7\u06ec\u06d6\u06dc\u06e4\u06e1\u06d8\u06da\u06e6\u06e7\u06da\u06e5\u06e7\u06d8\u06d7\u06e8\u06d8\u06d8\u06e6\u06e2\u06e8"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06e2\u06db\u06d7\u06e5\u06df\u06e5\u06d8\u06db\u06d7\u06eb\u06d8\u06da\u06e6\u06e7\u06e0\u06e7\u06ec\u06e0\u06d7\u06e0\u06e0\u06e0\u06ec\u06db\u06e6\u06dc\u06e0\u06e1\u06e8\u06d8\u06df\u06dc\u06d6\u06e5\u06da\u06d6\u06d8\u06e6\u06ec\u06e4\u06e0\u06e0\u06e8\u06e8\u06e2\u06e5\u06df\u06e7\u06d6\u06e8\u06e2\u06d8\u06da\u06eb"

    goto :goto_0

    :sswitch_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x71b4d17d -> :sswitch_1
        0x2a7b53f -> :sswitch_2
        0x2b8b225 -> :sswitch_0
    .end sparse-switch
.end method

.method public onAdClose()V
    .locals 4

    const-string v0, "\u06e5\u06e7\u06e1\u06d8\u06da\u06dc\u06d6\u06e1\u06e2\u06df\u06df\u06e1\u06e1\u06d8\u06ec\u06e5\u06d6\u06db\u06d9\u06d8\u06da\u06e1\u06e5\u06e6\u06e7\u06e1\u06d8\u06df\u06dc\u06e6\u06d8\u06eb\u06e6\u06ec\u06eb\u06d8\u06d7\u06db\u06d6\u06d8\u06e7\u06e5\u06e5\u06d8\u06e7\u06e0\u06e4\u06e5\u06e4\u06d9\u06e7\u06e6\u06da\u06e4\u06eb\u06d7\u06df\u06e6\u06e8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x2ba

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x19b

    const/16 v2, 0x1a8

    const v3, -0x4b30350

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e6\u06e5\u06d8\u06e7\u06dc\u06d8\u06d8\u06d6\u06d7\u06e8\u06e7\u06d9\u06d8\u06d8\u06d6\u06d9\u06e5\u06e2\u06db\u06df\u06e7\u06e1\u06d8\u06e8\u06d8\u06d6\u06d8\u06dc\u06d9\u06da\u06eb\u06e2\u06e6\u06d8\u06ec\u06d6\u06eb\u06e8\u06d9\u06e4"

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SplashActivity$OooO00o;->OooO00o:Lcom/cyjh/elfin/ui/activity/SplashActivity;

    invoke-static {v0}, Lcom/cyjh/elfin/ui/activity/SplashActivity;->OooOO0O(Lcom/cyjh/elfin/ui/activity/SplashActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const-string v0, "\u06d6\u06e1\u06e0\u06e8\u06e1\u06e7\u06d8\u06e4\u06e2\u06d6\u06d8\u06e6\u06d7\u06d6\u06d8\u06ec\u06e2\u06da\u06eb\u06d7\u06d8\u06d8\u06eb\u06e6\u06e5\u06d8\u06db\u06e0\u06e8\u06df\u06dc\u06d6\u06df\u06d6\u06dc\u06d8"

    goto :goto_0

    :sswitch_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x744a47d3 -> :sswitch_0
        -0x1868a9d4 -> :sswitch_2
        0x41d6dcae -> :sswitch_1
    .end sparse-switch
.end method
