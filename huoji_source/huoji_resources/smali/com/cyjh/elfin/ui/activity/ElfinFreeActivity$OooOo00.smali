.class public Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$OooOo00;
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final OooO00o:Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;


# direct methods
.method public constructor <init>(Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$OooOo00;->OooO00o:Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OooO00o(Ljava/lang/Boolean;)V
    .locals 4
    .param p1    # Ljava/lang/Boolean;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "\u06eb\u06e4\u06e0\u06e6\u06dc\u06d9\u06e5\u06e0\u06eb\u06e4\u06e4\u06db\u06e6\u06e4\u06dc\u06ec\u06d9\u06e0\u06e1\u06da\u06e5\u06e7\u06eb\u06df\u06dc\u06df\u06e0\u06e7\u06e8\u06df\u06d8\u06e8\u06d6\u06da\u06e1\u06e5\u06da\u06e2\u06e1\u06d8\u06d9\u06e7\u06ec\u06dc\u06d7\u06ec\u06e7\u06e0\u06df\u06e6\u06d8\u06e7\u06da\u06e8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x16e

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x14d

    const/16 v2, 0x149

    const v3, 0x36ff0e96

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d9\u06e6\u06d7\u06db\u06e6\u06e7\u06e8\u06ec\u06d6\u06ec\u06e4\u06e5\u06db\u06d9\u06dc\u06d8\u06e1\u06e7\u06e1\u06e1\u06e0\u06e6\u06e8\u06df\u06e0\u06e1\u06e5\u06e8\u06d6\u06df\u06d8\u06d8"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06d8\u06eb\u06e1\u06d8\u06e6\u06d9\u06e7\u06e8\u06d6\u06e6\u06d8\u06d7\u06e0\u06dc\u06e6\u06e2\u06e6\u06e6\u06e4\u06d8\u06e7\u06e8\u06d8\u06df\u06df\u06e6\u06d8\u06e7\u06e4\u06e6\u06e8\u06e7\u06da\u06d8\u06d6\u06df\u06e0\u06e7\u06db\u06da\u06d7\u06e0\u06e1\u06d7\u06e5\u06d8"

    goto :goto_0

    :sswitch_2
    const v1, 0x5e58cf77

    const-string v0, "\u06e5\u06e5\u06ec\u06d7\u06e7\u06e6\u06e1\u06df\u06e6\u06d8\u06e2\u06e0\u06d6\u06d8\u06d7\u06d6\u06e8\u06d6\u06e1\u06e6\u06d8\u06db\u06dc\u06e6\u06d8\u06e2\u06d8\u06e0\u06d7\u06e6\u06e4\u06d9\u06df\u06e1\u06d8\u06e7\u06d9\u06dc\u06dc\u06e2\u06df\u06e2\u06e6\u06e6\u06eb\u06e8\u06d8\u06ec\u06db\u06e7\u06e6\u06e0\u06e5\u06d8\u06e6\u06e0\u06e5\u06d9\u06e1\u06dc\u06d8"

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v2, v1

    sparse-switch v2, :sswitch_data_1

    goto :goto_1

    :sswitch_3
    const-string v0, "\u06da\u06e8\u06e5\u06d8\u06e2\u06df\u06d8\u06dc\u06e4\u06d6\u06e4\u06e2\u06e5\u06eb\u06e8\u06e5\u06d8\u06e4\u06d7\u06da\u06eb\u06da\u06d6\u06d8\u06eb\u06e2\u06e6\u06d8\u06dc\u06e7\u06e8\u06e0\u06e1\u06e5\u06d8\u06d9\u06df\u06e4\u06e6\u06e6\u06d6\u06d8\u06d8\u06db\u06d6\u06d8\u06e0\u06eb\u06e6\u06d8\u06e2\u06d7\u06ec\u06da\u06eb\u06da\u06e7\u06ec\u06e4\u06da\u06eb\u06ec"

    goto :goto_1

    :sswitch_4
    const-string v0, "\u06d8\u06e1\u06e0\u06e1\u06e4\u06e6\u06e6\u06d7\u06e1\u06d8\u06dc\u06d8\u06d8\u06e6\u06d6\u06e1\u06d8\u06e7\u06da\u06e8\u06d8\u06eb\u06e6\u06db\u06d7\u06df\u06e8\u06e0\u06dc\u06e1\u06ec\u06e7\u06e1\u06d8\u06eb\u06e0\u06e7\u06e8\u06e0\u06e8\u06e6\u06d8\u06d9\u06db\u06e6\u06dc\u06d9\u06e5\u06dc\u06d8\u06d7\u06e5"

    goto :goto_1

    :sswitch_5
    const v2, 0x4ac6dec3    # 6516577.5f

    const-string v0, "\u06ec\u06d9\u06df\u06e0\u06e0\u06d7\u06e4\u06e5\u06df\u06e8\u06e7\u06e6\u06d8\u06e6\u06e2\u06dc\u06d8\u06dc\u06dc\u06e8\u06d8\u06e7\u06d9\u06da\u06db\u06dc\u06e5\u06e4\u06db\u06e6\u06d8\u06e4\u06e4\u06df\u06d8\u06e6\u06d9\u06e5\u06e1\u06e5"

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v2

    sparse-switch v3, :sswitch_data_2

    goto :goto_2

    :sswitch_6
    const-string v0, "\u06e4\u06e2\u06d6\u06dc\u06db\u06e6\u06e8\u06d9\u06e4\u06e0\u06db\u06d8\u06d8\u06d7\u06d8\u06e2\u06e8\u06e1\u06d6\u06d8\u06db\u06d6\u06d6\u06d9\u06e0\u06e8\u06da\u06ec\u06e0\u06d9\u06e2\u06d8\u06e5\u06d9\u06d8\u06dc\u06df\u06d9\u06df\u06df\u06d7\u06e2\u06db"

    goto :goto_1

    :cond_0
    const-string v0, "\u06e5\u06e0\u06e8\u06e5\u06e6\u06ec\u06e2\u06e0\u06d9\u06e7\u06e5\u06dc\u06d8\u06d6\u06df\u06e0\u06e7\u06da\u06dc\u06d8\u06e6\u06eb\u06ec\u06e8\u06e8\u06e1\u06d8\u06df\u06eb\u06dc\u06d8\u06d8\u06e6\u06df\u06d9\u06e7\u06e1\u06d8\u06e5\u06e8\u06db\u06da\u06e4\u06d8\u06e2\u06e0\u06e6\u06dc\u06da\u06dc\u06d6\u06da\u06dc\u06d8"

    goto :goto_2

    :sswitch_7
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u06db\u06e0\u06d7\u06e0\u06e1\u06d8\u06d6\u06d6\u06d8\u06db\u06e4\u06eb\u06df\u06dc\u06e6\u06df\u06da\u06d8\u06d8\u06d8\u06e6\u06e2\u06da\u06db\u06e5\u06e5\u06da\u06e1\u06d8\u06e4\u06e8\u06e8"

    goto :goto_2

    :sswitch_8
    const-string v0, "\u06e5\u06e4\u06d7\u06d8\u06dc\u06e1\u06eb\u06eb\u06dc\u06d8\u06e1\u06e6\u06e8\u06d8\u06e6\u06ec\u06dc\u06e2\u06e5\u06e4\u06e7\u06e1\u06e1\u06d8\u06e6\u06eb\u06e6\u06d8\u06e5\u06da\u06eb\u06d6\u06d6\u06e8\u06d8\u06e6\u06d6\u06e8\u06eb\u06ec\u06d6\u06e4\u06e0\u06e1\u06e5\u06e5\u06d7\u06e6\u06eb\u06df\u06db\u06e7\u06da"

    goto :goto_2

    :sswitch_9
    const-string v0, "\u06ec\u06e6\u06dc\u06df\u06e5\u06d7\u06e6\u06e8\u06ec\u06e1\u06e7\u06d7\u06d8\u06df\u06d6\u06e7\u06da\u06e1\u06da\u06e7\u06e1\u06dc\u06e2\u06ec\u06d6\u06d8\u06da\u06e6\u06db\u06dc"

    goto :goto_0

    :sswitch_a
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$OooOo00;->OooO00o:Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;

    invoke-static {v0}, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->OooOOO(Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;)V

    const-string v0, "\u06df\u06e8\u06d9\u06da\u06e4\u06e7\u06d7\u06e1\u06e1\u06dc\u06da\u06d8\u06d7\u06ec\u06e4\u06e8\u06e8\u06d7\u06e6\u06d8\u06df\u06df\u06d6\u06dc\u06db\u06e4\u06e1\u06e2\u06ec\u06e8\u06e4\u06dc\u06d8\u06e6\u06e4\u06eb\u06d9\u06e8\u06da\u06e0\u06e1\u06e5\u06d8\u06e8\u06d7\u06dc\u06d8\u06e8\u06d6\u06da"

    goto :goto_0

    :sswitch_b
    const-string v0, "\u06df\u06e8\u06d9\u06da\u06e4\u06e7\u06d7\u06e1\u06e1\u06dc\u06da\u06d8\u06d7\u06ec\u06e4\u06e8\u06e8\u06d7\u06e6\u06d8\u06df\u06df\u06d6\u06dc\u06db\u06e4\u06e1\u06e2\u06ec\u06e8\u06e4\u06dc\u06d8\u06e6\u06e4\u06eb\u06d9\u06e8\u06da\u06e0\u06e1\u06e5\u06d8\u06e8\u06d7\u06dc\u06d8\u06e8\u06d6\u06da"

    goto :goto_0

    :sswitch_c
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x64c05191 -> :sswitch_0
        -0x4d2efad5 -> :sswitch_2
        0x42c4e6ea -> :sswitch_a
        0x5d6d884b -> :sswitch_1
        0x5ff1c639 -> :sswitch_c
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x7cc6d4f2 -> :sswitch_5
        -0x511c8793 -> :sswitch_3
        -0x403af36c -> :sswitch_b
        0x3fb2bd8a -> :sswitch_9
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        -0x3d37b81b -> :sswitch_7
        -0x27d03078 -> :sswitch_4
        -0x24620cfd -> :sswitch_6
        -0x6369350 -> :sswitch_8
    .end sparse-switch
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "\u06d9\u06d8\u06e4\u06d8\u06d7\u06e1\u06d8\u06e8\u06e1\u06d6\u06d8\u06e0\u06e5\u06d6\u06da\u06e6\u06e8\u06d8\u06d6\u06e8\u06df\u06eb\u06d6\u06e1\u06ec\u06dc\u06e5\u06d8\u06e4\u06dc\u06ec\u06d7\u06e5\u06e8\u06eb\u06e1\u06e1\u06d8\u06db\u06d6\u06ec\u06e6\u06e8\u06e0\u06e0\u06db\u06e2\u06e0\u06e2\u06e6\u06d8\u06e2\u06e4\u06dc\u06d7\u06e2\u06dc\u06d8\u06d8\u06df\u06da"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x72

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0xaa

    const/16 v2, 0x2a6

    const v3, 0x17d3907e

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e5\u06e8\u06d6\u06d8\u06df\u06eb\u06e6\u06e4\u06e2\u06e0\u06df\u06e0\u06dc\u06e6\u06e4\u06e2\u06d6\u06e1\u06e7\u06da\u06e7\u06da\u06eb\u06e6\u06d8\u06e8\u06e6\u06e5\u06d8\u06eb\u06e8\u06eb"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06d9\u06e5\u06dc\u06d8\u06e4\u06e7\u06d8\u06db\u06e1\u06da\u06ec\u06e6\u06e5\u06eb\u06d8\u06d7\u06e7\u06e0\u06ec\u06db\u06da\u06d9\u06e1\u06e4\u06da\u06e8\u06d9\u06ec\u06e6\u06dc\u06d8"

    goto :goto_0

    :sswitch_2
    move-object v0, p1

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$OooOo00;->OooO00o(Ljava/lang/Boolean;)V

    const-string v0, "\u06e2\u06e6\u06d8\u06e6\u06df\u06d7\u06e4\u06df\u06e1\u06d8\u06df\u06e5\u06e6\u06d9\u06df\u06d6\u06df\u06e5\u06e5\u06d8\u06e0\u06e7\u06e5\u06e8\u06ec\u06e8\u06d8\u06ec\u06ec\u06e2\u06dc\u06ec\u06df\u06dc\u06e8\u06d7\u06e1\u06db\u06e0\u06eb\u06db\u06da\u06e8\u06d8\u06dc\u06d8"

    goto :goto_0

    :sswitch_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x2a880256 -> :sswitch_0
        0x437d667 -> :sswitch_1
        0x22ce5c31 -> :sswitch_2
        0x7f7517a1 -> :sswitch_3
    .end sparse-switch
.end method
