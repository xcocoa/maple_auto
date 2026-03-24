.class public Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$OooOOOO;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->OooO()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/Observer",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field public final OooO00o:Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;


# direct methods
.method public constructor <init>(Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$OooOOOO;->OooO00o:Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OooO00o(Ljava/lang/Integer;)V
    .locals 4
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "\u06e8\u06e0\u06e6\u06da\u06dc\u06dc\u06e6\u06d9\u06db\u06ec\u06e1\u06e5\u06d6\u06e5\u06d8\u06e6\u06dc\u06e8\u06d7\u06e0\u06d7\u06e6\u06ec\u06da\u06dc\u06e1\u06d8\u06d9\u06e0\u06df\u06e7\u06d9\u06e5\u06d8\u06e0\u06d6\u06e2\u06db\u06d8\u06e8\u06ec\u06d9\u06e5\u06d6\u06e0\u06e1\u06e8\u06da\u06e5\u06d8\u06e7\u06e5\u06e2\u06ec\u06d7"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x1d5

    xor-int/2addr v1, v2

    xor-int/lit8 v1, v1, 0x70

    const/16 v2, 0x3dd

    const v3, -0xa12c746

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e8\u06df\u06dc\u06d9\u06e5\u06eb\u06ec\u06eb\u06e8\u06d8\u06e2\u06e6\u06d7\u06e5\u06eb\u06d9\u06da\u06d7\u06e4\u06e5\u06e5\u06dc\u06e1\u06e7\u06ec\u06df\u06df\u06db\u06d7\u06d8\u06d8\u06e4\u06e8\u06d6\u06d8\u06df\u06e7\u06e2"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06e0\u06e7\u06e1\u06e7\u06db\u06e8\u06d9\u06e1\u06df\u06db\u06e4\u06dc\u06d8\u06dc\u06e7\u06e4\u06e7\u06eb\u06e6\u06db\u06e2\u06ec\u06e6\u06e0\u06d8\u06dc\u06d7\u06e6\u06d8\u06e1\u06d6\u06eb\u06ec\u06e6\u06dc\u06dc\u06df\u06d7\u06e7\u06e5\u06e6\u06d8\u06e7\u06d8\u06e0"

    goto :goto_0

    :sswitch_2
    const v1, -0x42ed3201

    const-string v0, "\u06d6\u06e8\u06e0\u06eb\u06ec\u06e2\u06e0\u06e7\u06da\u06e7\u06e8\u06e6\u06d8\u06d7\u06dc\u06e5\u06d8\u06d7\u06e0\u06e6\u06e5\u06d6\u06e4\u06e1\u06d9\u06d6\u06d8\u06df\u06d8\u06d8\u06e7\u06d7\u06d8"

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v2, v1

    sparse-switch v2, :sswitch_data_1

    goto :goto_1

    :sswitch_3
    const-string v0, "\u06d9\u06e8\u06d7\u06df\u06e7\u06e5\u06d8\u06e0\u06e7\u06dc\u06d8\u06e5\u06db\u06dc\u06d8\u06da\u06e6\u06dc\u06d8\u06e4\u06d6\u06d8\u06e1\u06e6\u06d8\u06da\u06e5\u06e1\u06d8\u06eb\u06e8\u06e4\u06d8\u06e7\u06e6"

    goto :goto_0

    :sswitch_4
    const-string v0, "\u06e5\u06da\u06dc\u06d8\u06dc\u06e7\u06e5\u06d8\u06e1\u06e0\u06df\u06e6\u06ec\u06e2\u06d7\u06da\u06e6\u06e6\u06df\u06e5\u06d7\u06e2\u06e6\u06d8\u06da\u06e7\u06e8\u06d9\u06ec\u06d9\u06d9\u06e1\u06da\u06d9\u06e4\u06d9\u06d7\u06da\u06d8\u06d8\u06e1\u06d8\u06e8\u06d8\u06e1\u06e0\u06e5\u06d8\u06d8\u06d7\u06e7\u06df\u06e2\u06db"

    goto :goto_1

    :sswitch_5
    const v2, -0x6eaed343

    const-string v0, "\u06e4\u06eb\u06dc\u06d8\u06e2\u06e6\u06d6\u06e6\u06eb\u06e2\u06e1\u06e4\u06d7\u06db\u06e6\u06e6\u06d8\u06d7\u06e8\u06d6\u06d8\u06e2\u06d8\u06d9\u06e6\u06da\u06eb\u06e4\u06e8\u06e4\u06e7\u06e1\u06d9\u06e4\u06e1\u06d7\u06df\u06ec\u06df\u06e6\u06e8\u06eb\u06e7\u06d9\u06eb"

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v2

    sparse-switch v3, :sswitch_data_2

    goto :goto_2

    :sswitch_6
    const/16 v0, 0x3ee

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v0, v3, :cond_0

    const-string v0, "\u06e7\u06d9\u06e2\u06d8\u06e2\u06e5\u06e4\u06eb\u06e4\u06ec\u06d6\u06d8\u06d9\u06e1\u06da\u06d6\u06e8\u06d8\u06d9\u06d9\u06e8\u06da\u06e0\u06df\u06e1\u06e1\u06d6\u06d8\u06da\u06ec\u06e7"

    goto :goto_2

    :cond_0
    const-string v0, "\u06e1\u06e0\u06ec\u06d7\u06d6\u06e0\u06dc\u06e7\u06d6\u06d8\u06e6\u06e6\u06df\u06d7\u06db\u06da\u06d6\u06db\u06e1\u06e1\u06e4\u06d7\u06e8\u06e1\u06da\u06e7\u06dc\u06d8\u06db\u06da\u06db\u06ec\u06eb\u06e1\u06d8\u06e2\u06e7\u06e6"

    goto :goto_2

    :sswitch_7
    const-string v0, "\u06df\u06da\u06d8\u06d6\u06d7\u06e7\u06e4\u06e6\u06da\u06d8\u06e2\u06d6\u06d8\u06d6\u06df\u06ec\u06e7\u06eb\u06e1\u06d7\u06e2\u06ec\u06e5\u06eb\u06e8\u06df\u06d6\u06e5\u06d8\u06eb\u06e0\u06d7\u06d9\u06d6\u06e8\u06e1\u06d9\u06e1"

    goto :goto_2

    :sswitch_8
    const-string v0, "\u06d6\u06db\u06d6\u06d8\u06dc\u06da\u06eb\u06eb\u06e0\u06d9\u06d7\u06e7\u06df\u06df\u06dc\u06ec\u06e5\u06e4\u06d8\u06d8\u06da\u06ec\u06e2\u06d8\u06e6\u06e0\u06ec\u06e6\u06d8\u06ec\u06d6\u06e0\u06eb\u06e2\u06ec\u06e4\u06df\u06df\u06d9\u06eb\u06e8\u06d9\u06e1"

    goto :goto_1

    :sswitch_9
    const-string v0, "\u06e0\u06e7\u06e4\u06e7\u06e0\u06e1\u06d8\u06e7\u06d8\u06e6\u06d8\u06e5\u06e1\u06e7\u06df\u06d7\u06d8\u06dc\u06ec\u06dc\u06d8\u06e0\u06e6\u06e1\u06d8\u06e6\u06ec\u06eb\u06e1\u06d9\u06e6\u06d8\u06e8\u06df\u06e0\u06eb\u06d9\u06d9\u06e4\u06e5\u06dc\u06d8\u06d9\u06e8\u06dc\u06d8\u06e4\u06d6\u06e0\u06e0\u06dc\u06e1\u06e6\u06db\u06d6\u06d9\u06dc\u06d9\u06d8\u06e7"

    goto :goto_1

    :sswitch_a
    const-string v0, "\u06e2\u06e5\u06d8\u06e1\u06e8\u06e4\u06ec\u06dc\u06df\u06da\u06e5\u06da\u06d9\u06d8\u06d8\u06e5\u06e7\u06db\u06e5\u06e1\u06e2\u06d6\u06ec\u06e8\u06d8\u06eb\u06d8\u06ec\u06e6\u06e4\u06db\u06e4\u06dc\u06d8\u06e8\u06ec\u06dc\u06d8\u06d9\u06d9\u06da\u06e4\u06e1\u06e1\u06d8\u06df\u06d9\u06e5\u06d8\u06d9\u06e1\u06db"

    goto :goto_0

    :sswitch_b
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$OooOOOO;->OooO00o:Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;

    invoke-static {v0}, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->OooOO0O(Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;)Lz2/oa;

    move-result-object v0

    invoke-static {}, Lz2/q7;->OooO0o0()Lz2/q7;

    move-result-object v1

    invoke-virtual {v1}, Lz2/q7;->OooO0o()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lz2/oa;->OooOo0O(Ljava/lang/String;I)V

    const-string v0, "\u06ec\u06e5\u06e8\u06d8\u06e1\u06e7\u06eb\u06df\u06eb\u06e8\u06e7\u06db\u06d9\u06e0\u06da\u06e0\u06e7\u06e7\u06db\u06e4\u06e1\u06eb\u06d9\u06e4\u06e7\u06e0\u06e4\u06e5\u06d8\u06dc\u06e6\u06e7\u06d8\u06df\u06e1\u06ec\u06db\u06e5\u06e4\u06dc\u06d8\u06da\u06d7\u06e4\u06e5\u06d8\u06da\u06e0\u06db\u06d9\u06eb\u06e4\u06e1\u06da\u06d6\u06d8\u06ec\u06d6\u06e0"

    goto :goto_0

    :sswitch_c
    const v1, 0x7779be5e

    const-string v0, "\u06df\u06d9\u06e5\u06e2\u06db\u06d8\u06e7\u06df\u06e8\u06d8\u06e1\u06d8\u06d9\u06e8\u06e4\u06e0\u06e2\u06e7\u06dc\u06d8\u06d7\u06e7\u06d6\u06d8\u06e2\u06e5\u06eb\u06e1\u06d8\u06e2\u06e2\u06e2"

    :goto_3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v2, v1

    sparse-switch v2, :sswitch_data_3

    goto :goto_3

    :sswitch_d
    const-string v0, "\u06dc\u06ec\u06e4\u06d6\u06eb\u06e5\u06da\u06e1\u06eb\u06db\u06eb\u06d8\u06d8\u06d6\u06df\u06e6\u06d7\u06d8\u06e7\u06e0\u06d7\u06ec\u06da\u06e1\u06e1\u06d8\u06da\u06d6\u06e8\u06e7\u06e2\u06d8\u06d8"

    goto :goto_0

    :sswitch_e
    const-string v0, "\u06d7\u06dc\u06dc\u06e4\u06e8\u06d6\u06d8\u06e8\u06d9\u06e0\u06e2\u06d8\u06d9\u06e7\u06dc\u06e5\u06e1\u06d9\u06db\u06e5\u06e6\u06e7\u06e5\u06d8\u06e7\u06d8\u06e1\u06d7\u06d8\u06dc\u06d8\u06d8\u06da\u06df\u06e2\u06e4\u06da\u06e5"

    goto :goto_3

    :sswitch_f
    const v2, 0x7f0c0fa1

    const-string v0, "\u06e7\u06ec\u06da\u06d9\u06d8\u06d6\u06d8\u06e7\u06d8\u06e7\u06e5\u06d8\u06d8\u06d7\u06d6\u06d6\u06e2\u06e4\u06e6\u06e8\u06e4\u06d6\u06e7\u06e0\u06e6\u06d8\u06da\u06d6\u06e6\u06d8\u06e2\u06d7\u06e1\u06eb\u06e0\u06eb\u06d9\u06da\u06e8\u06d8\u06e4\u06d7\u06dc\u06e7\u06d9\u06d6\u06e5\u06d7\u06d9\u06dc\u06e1\u06d8\u06d7\u06ec\u06e5\u06e1\u06da\u06e5\u06d8"

    :goto_4
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v2

    sparse-switch v3, :sswitch_data_4

    goto :goto_4

    :sswitch_10
    const-string v0, "\u06e4\u06da\u06e5\u06d8\u06e6\u06e7\u06d8\u06d8\u06da\u06d9\u06da\u06e4\u06d9\u06e5\u06d8\u06e0\u06d9\u06e6\u06e7\u06eb\u06d9\u06d6\u06db\u06df\u06eb\u06d8\u06e0\u06d7\u06e8\u06d8\u06e5\u06eb\u06e1\u06eb\u06d9\u06df\u06e2\u06e4\u06e4\u06df\u06e6\u06d6\u06ec\u06e8\u06d7"

    goto :goto_3

    :cond_1
    const-string v0, "\u06dc\u06e6\u06e5\u06d8\u06e1\u06d8\u06e7\u06d8\u06d6\u06e5\u06e1\u06d8\u06e6\u06e1\u06df\u06dc\u06e0\u06e7\u06da\u06e8\u06d7\u06e0\u06df\u06db\u06ec\u06e5\u06e8\u06d8\u06dc\u06d6\u06df\u06d7\u06e2"

    goto :goto_4

    :sswitch_11
    const/16 v0, 0x3ef

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v0, v3, :cond_1

    const-string v0, "\u06db\u06df\u06eb\u06e4\u06d9\u06e2\u06da\u06da\u06e0\u06d8\u06e2\u06e1\u06d9\u06eb\u06d6\u06e1\u06d6\u06e7\u06d8\u06ec\u06e5\u06d8\u06d8\u06e8\u06e6\u06da\u06ec\u06df\u06dc\u06d8\u06e2\u06d6\u06d8\u06e0\u06d7\u06e1\u06d8\u06e4\u06df\u06e8\u06d8\u06e0\u06e5\u06df\u06e2\u06dc\u06e8\u06d8\u06e2\u06e2\u06d8\u06dc\u06d7\u06d8\u06d8\u06d9\u06e8\u06df\u06e2\u06dc\u06e6\u06d8"

    goto :goto_4

    :sswitch_12
    const-string v0, "\u06df\u06dc\u06da\u06dc\u06e7\u06e4\u06df\u06e7\u06e5\u06d8\u06d7\u06d8\u06dc\u06d8\u06e2\u06d6\u06e0\u06d7\u06dc\u06e6\u06d8\u06da\u06df\u06da\u06e6\u06e5\u06e0\u06ec\u06e1\u06d6\u06d7\u06e5\u06e1\u06e0\u06e1\u06df\u06e0\u06ec\u06ec\u06eb\u06d6\u06e2\u06e0\u06e5\u06d7"

    goto :goto_4

    :sswitch_13
    const-string v0, "\u06e7\u06db\u06e8\u06d8\u06e8\u06e6\u06e7\u06e2\u06d6\u06d8\u06da\u06d6\u06e1\u06d8\u06e8\u06da\u06e5\u06d8\u06e8\u06e4\u06e8\u06d8\u06d9\u06e4\u06d7\u06e6\u06df\u06d8\u06ec\u06eb\u06e5\u06d7\u06db\u06e5\u06d8\u06dc\u06e2\u06d6\u06e2\u06db\u06d6\u06e0\u06e2\u06d9\u06d7\u06eb\u06e0\u06d7\u06da\u06db\u06e1\u06e0\u06e8\u06e7\u06d8\u06eb\u06e7\u06e8"

    goto :goto_3

    :sswitch_14
    const-string v0, "\u06d6\u06d8\u06dc\u06dc\u06e6\u06ec\u06e6\u06eb\u06e7\u06d9\u06e4\u06e0\u06e1\u06d8\u06d9\u06e1\u06d9\u06e1\u06d8\u06dc\u06e7\u06e2\u06e5\u06d6\u06e8\u06e2\u06d7\u06dc\u06d8\u06d7\u06eb\u06e5\u06d8\u06d9\u06df\u06e8\u06e8\u06d9\u06e6\u06d8\u06e4\u06e8\u06ec\u06df\u06d7\u06e8\u06d9\u06e1\u06d8\u06eb\u06db\u06dc\u06d8"

    goto/16 :goto_0

    :sswitch_15
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$OooOOOO;->OooO00o:Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;

    invoke-static {v0}, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->OooOO0(Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;)V

    const-string v0, "\u06da\u06df\u06e8\u06df\u06d7\u06e0\u06eb\u06da\u06d6\u06d8\u06e1\u06e2\u06dc\u06d6\u06eb\u06da\u06e2\u06ec\u06e8\u06ec\u06e7\u06dc\u06eb\u06da\u06e5\u06d6\u06e7\u06d6\u06d8\u06d6\u06ec\u06e6"

    goto/16 :goto_0

    :sswitch_16
    const v1, 0x7c75d0c4

    const-string v0, "\u06d9\u06d8\u06e8\u06eb\u06e1\u06d6\u06d8\u06e2\u06e4\u06e8\u06d6\u06e5\u06e5\u06d8\u06e4\u06eb\u06dc\u06e2\u06db\u06da\u06df\u06d9\u06e8\u06e7\u06df\u06d8\u06d8\u06da\u06ec\u06e7\u06e4\u06e2\u06e2\u06d6\u06e7\u06db\u06ec\u06d9\u06d8\u06d8\u06d9\u06e4\u06d9\u06e1\u06e7\u06e1\u06d8\u06e5\u06e0\u06e8\u06dc\u06dc\u06e6\u06df\u06da\u06e4\u06db"

    :goto_5
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v2, v1

    sparse-switch v2, :sswitch_data_5

    goto :goto_5

    :sswitch_17
    const-string v0, "\u06d8\u06e6\u06dc\u06d8\u06d7\u06e4\u06e0\u06e7\u06e4\u06db\u06e0\u06da\u06d7\u06df\u06db\u06d6\u06d8\u06d9\u06d9\u06eb\u06e2\u06e8\u06d7\u06e0\u06e1\u06dc\u06d8\u06d7\u06e7\u06e8\u06e1\u06e7\u06d8\u06e1\u06d6\u06e1\u06d8\u06d7\u06e8\u06e8\u06d8\u06e8\u06dc\u06e1\u06d8\u06e2\u06d8"

    goto/16 :goto_0

    :sswitch_18
    const-string v0, "\u06da\u06e8\u06df\u06da\u06e5\u06e0\u06ec\u06e6\u06e4\u06eb\u06e0\u06e1\u06e5\u06da\u06e7\u06dc\u06eb\u06dc\u06d8\u06d9\u06e2\u06df\u06df\u06e0\u06ec\u06e4\u06e6\u06d9\u06e2\u06db\u06d8\u06d8\u06d6\u06d6\u06e2\u06d6\u06db\u06d8\u06db\u06e1\u06da\u06d7\u06e5\u06dc\u06d8\u06e1\u06da\u06e8\u06d8\u06d7\u06d6\u06dc\u06e0\u06e1\u06e5\u06df"

    goto :goto_5

    :sswitch_19
    const v2, 0x2a39e9e1

    const-string v0, "\u06e0\u06e4\u06eb\u06d6\u06d9\u06e8\u06d8\u06e0\u06e0\u06d8\u06e6\u06e5\u06e6\u06df\u06d8\u06e8\u06d7\u06db\u06e6\u06e5\u06e0\u06e2\u06e7\u06e0\u06ec\u06d6\u06e2\u06e1\u06e6\u06e5\u06d8\u06e4\u06d8\u06d9\u06df\u06dc\u06e0\u06e1\u06d9\u06dc\u06e6\u06d6\u06d8\u06db\u06d8\u06d8\u06d8\u06e2\u06df"

    :goto_6
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v2

    sparse-switch v3, :sswitch_data_6

    goto :goto_6

    :sswitch_1a
    const-string v0, "\u06e4\u06e6\u06d7\u06e5\u06e2\u06d9\u06d8\u06e8\u06e4\u06e2\u06e6\u06d6\u06d8\u06e8\u06e6\u06ec\u06d8\u06d8\u06df\u06e4\u06e6\u06dc\u06e6\u06e1\u06d7\u06e0\u06d7\u06d9\u06d8\u06d6\u06d8\u06e4\u06d8\u06e5\u06e7\u06dc\u06e7\u06da\u06ec\u06e5\u06e5\u06d7"

    goto :goto_5

    :cond_2
    const-string v0, "\u06e2\u06d6\u06e2\u06e2\u06d7\u06e5\u06d8\u06da\u06e8\u06d8\u06e5\u06da\u06e1\u06d8\u06e5\u06d7\u06ec\u06ec\u06e2\u06d6\u06dc\u06db\u06d7\u06e1\u06e7\u06dc\u06d8\u06e6\u06dc\u06d8\u06d8\u06d7\u06d8"

    goto :goto_6

    :sswitch_1b
    const/16 v0, 0x3f0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v0, v3, :cond_2

    const-string v0, "\u06db\u06d8\u06e6\u06d8\u06e8\u06e8\u06e6\u06db\u06da\u06d7\u06e6\u06d7\u06e8\u06dc\u06e2\u06d6\u06eb\u06d6\u06d8\u06d9\u06d8\u06e8\u06d8\u06ec\u06d9\u06db\u06e5\u06dc\u06dc\u06d8\u06dc\u06e2\u06d8\u06e7\u06e6\u06e5\u06e1\u06da\u06e8\u06df\u06e2\u06da\u06e0\u06e2\u06e1\u06d8"

    goto :goto_6

    :sswitch_1c
    const-string v0, "\u06d6\u06d7\u06e6\u06d8\u06db\u06e4\u06d6\u06e1\u06e8\u06e1\u06d8\u06e4\u06ec\u06d7\u06e0\u06d7\u06e8\u06d6\u06d8\u06d6\u06d8\u06eb\u06e2\u06e8\u06d8\u06e2\u06d6\u06db\u06e0\u06d8\u06d8\u06e0\u06e2\u06d7\u06e5\u06e0\u06d6\u06d8\u06df\u06e7\u06dc\u06d8\u06d8\u06e8\u06d8\u06e2\u06d6\u06d9\u06da\u06e8\u06e7\u06d8\u06e1\u06e4\u06e4"

    goto :goto_6

    :sswitch_1d
    const-string v0, "\u06e4\u06e2\u06e1\u06d8\u06dc\u06e7\u06d8\u06da\u06d9\u06e5\u06e4\u06d9\u06e4\u06dc\u06da\u06d8\u06d8\u06dc\u06e1\u06e1\u06e7\u06e6\u06d6\u06d9\u06e1\u06d8\u06e1\u06dc\u06e1\u06d8\u06e0\u06e4\u06d9\u06d7\u06df\u06dc\u06eb\u06e6\u06d6\u06d6\u06e7\u06eb\u06e5\u06eb\u06d8\u06d6\u06df\u06dc\u06ec\u06db\u06d8\u06d8\u06e6\u06e0\u06e8\u06dc\u06d9\u06d7"

    goto :goto_5

    :sswitch_1e
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$OooOOOO;->OooO00o:Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;

    invoke-static {v0}, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->OooOOO0(Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;)Lz2/uc;

    move-result-object v0

    iget-object v1, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$OooOOOO;->OooO00o:Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;

    invoke-virtual {v0, v1}, Lz2/uc;->OooO0OO(Landroid/content/Context;)V

    const-string v0, "\u06e7\u06e2\u06eb\u06d6\u06d8\u06eb\u06eb\u06db\u06ec\u06df\u06e4\u06ec\u06d9\u06db\u06e1\u06d8\u06e7\u06e0\u06df\u06e8\u06e8\u06e5\u06d8\u06d7\u06d6\u06d6\u06e7\u06d9\u06db\u06e5\u06dc\u06e6\u06d8"

    goto/16 :goto_0

    :sswitch_1f
    const-string v0, "\u06e7\u06e2\u06eb\u06d6\u06d8\u06eb\u06eb\u06db\u06ec\u06df\u06e4\u06ec\u06d9\u06db\u06e1\u06d8\u06e7\u06e0\u06df\u06e8\u06e8\u06e5\u06d8\u06d7\u06d6\u06d6\u06e7\u06d9\u06db\u06e5\u06dc\u06e6\u06d8"

    goto/16 :goto_0

    :sswitch_20
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6412efd8 -> :sswitch_1f
        -0x5f37a501 -> :sswitch_15
        -0x5ce48ba3 -> :sswitch_c
        -0x55277736 -> :sswitch_2
        -0x445043ae -> :sswitch_1
        -0x237d210b -> :sswitch_20
        -0x93c19a9 -> :sswitch_16
        0x271979d -> :sswitch_0
        0x2f0c854 -> :sswitch_b
        0x28ed00d3 -> :sswitch_1e
        0x645e0808 -> :sswitch_1f
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x770d8db9 -> :sswitch_9
        -0xca159e5 -> :sswitch_5
        0x25e929fb -> :sswitch_3
        0x6f677fb9 -> :sswitch_a
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        -0x5c601b91 -> :sswitch_7
        -0x2da8ea74 -> :sswitch_6
        0x5d52349d -> :sswitch_8
        0x7f7f74bc -> :sswitch_4
    .end sparse-switch

    :sswitch_data_3
    .sparse-switch
        -0x36edf316 -> :sswitch_f
        0xaa2301f -> :sswitch_14
        0x27fb56b5 -> :sswitch_13
        0x7c61904c -> :sswitch_d
    .end sparse-switch

    :sswitch_data_4
    .sparse-switch
        -0x65ccead5 -> :sswitch_e
        -0xe4de3b5 -> :sswitch_10
        0x1349cdd4 -> :sswitch_12
        0x281bc4d8 -> :sswitch_11
    .end sparse-switch

    :sswitch_data_5
    .sparse-switch
        -0x45a3a6fa -> :sswitch_17
        0xf8259c2 -> :sswitch_1f
        0x52c623e5 -> :sswitch_19
        0x67553362 -> :sswitch_1d
    .end sparse-switch

    :sswitch_data_6
    .sparse-switch
        -0x7cc463ab -> :sswitch_1c
        -0x4b908eb6 -> :sswitch_18
        0x4b49af6c -> :sswitch_1a
        0x52226129 -> :sswitch_1b
    .end sparse-switch
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "\u06e4\u06db\u06e5\u06da\u06e0\u06e7\u06e8\u06e2\u06ec\u06e0\u06da\u06e8\u06d8\u06df\u06eb\u06e6\u06dc\u06d9\u06dc\u06d6\u06e6\u06d8\u06df\u06e4\u06e8\u06db\u06e7\u06d6\u06d8\u06dc\u06df\u06ec"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x237

    xor-int/2addr v1, v2

    xor-int/lit8 v1, v1, 0x22

    const/16 v2, 0x116

    const v3, 0x3b7b5ef2

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e2\u06dc\u06e4\u06dc\u06ec\u06d9\u06d8\u06e6\u06d8\u06e0\u06d7\u06d6\u06e8\u06e0\u06e0\u06ec\u06e8\u06d7\u06ec\u06eb\u06e0\u06d8\u06dc\u06e7\u06db\u06df\u06df\u06da\u06dc\u06d9\u06e7\u06e1\u06dc\u06e5\u06e7\u06d6\u06dc\u06e7\u06ec\u06e8\u06d6\u06d8"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06d9\u06e5\u06db\u06e5\u06d8\u06e0\u06d6\u06db\u06dc\u06d8\u06d6\u06e5\u06e1\u06d7\u06d8\u06e5\u06d8\u06d9\u06e1\u06e1\u06e8\u06d8\u06d8\u06db\u06d9\u06e6\u06d8\u06e1\u06df\u06e6\u06da\u06e4\u06dc\u06d8"

    goto :goto_0

    :sswitch_2
    move-object v0, p1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {p0, v0}, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$OooOOOO;->OooO00o(Ljava/lang/Integer;)V

    const-string v0, "\u06d6\u06e5\u06e0\u06d7\u06d9\u06e5\u06d8\u06e6\u06d7\u06d8\u06e1\u06e7\u06e8\u06e1\u06e8\u06d8\u06eb\u06e5\u06e7\u06e1\u06e6\u06d8\u06e4\u06e8\u06e5\u06d8\u06ec\u06e5\u06db\u06e5\u06db\u06dc\u06e6\u06e8\u06dc\u06d8\u06d8\u06e2\u06e0\u06eb\u06e0\u06e1\u06d8\u06df\u06e5\u06e8\u06d8\u06d7\u06dc\u06e8\u06d9\u06da\u06e4\u06e1\u06e0\u06d6\u06d8\u06ec\u06e6\u06e8\u06d8"

    goto :goto_0

    :sswitch_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7e6a878f -> :sswitch_1
        -0x5a283107 -> :sswitch_2
        -0x54160cfb -> :sswitch_3
        -0x29730d3d -> :sswitch_0
    .end sparse-switch
.end method
