.class public Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$OooOOO;
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
        "Lcom/cyjh/http/bean/response/VersionUpdateInfo;",
        ">;"
    }
.end annotation


# instance fields
.field public final OooO00o:Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;


# direct methods
.method public constructor <init>(Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$OooOOO;->OooO00o:Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OooO00o(Lcom/cyjh/http/bean/response/VersionUpdateInfo;)V
    .locals 12
    .param p1    # Lcom/cyjh/http/bean/response/VersionUpdateInfo;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v11, 0x1

    const/4 v2, 0x0

    const/4 v7, 0x0

    const-string v0, "\u06e4\u06db\u06df\u06e7\u06db\u06d7\u06ec\u06eb\u06e7\u06d9\u06e8\u06db\u06db\u06e4\u06e0\u06d9\u06db\u06e8\u06d8\u06d7\u06da\u06dc\u06d8\u06dc\u06ec\u06d9\u06e6\u06ec\u06d8\u06d8\u06d8\u06ec\u06d6\u06e4\u06e8\u06e2\u06d7\u06d6"

    move v1, v2

    move v3, v2

    move v4, v2

    move v5, v2

    move v6, v2

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v8

    const/16 v9, 0x4a

    xor-int/2addr v8, v9

    xor-int/lit16 v8, v8, 0x17d

    const/16 v9, 0x44

    const v10, -0x59cb787d

    xor-int/2addr v8, v9

    xor-int/2addr v8, v10

    sparse-switch v8, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06ec\u06d6\u06e7\u06d8\u06da\u06db\u06d6\u06d8\u06d6\u06e4\u06d9\u06e1\u06e1\u06e4\u06e2\u06eb\u06e5\u06d8\u06e7\u06df\u06e8\u06d8\u06e0\u06e0\u06db\u06e7\u06d6\u06da\u06ec\u06e5\u06db\u06e7\u06eb\u06e6\u06dc\u06da\u06e5\u06d6\u06e1\u06d8\u06db\u06e2\u06df\u06e5\u06da\u06dc\u06eb\u06eb\u06e2\u06d9\u06e7\u06d6"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06db\u06e1\u06e4\u06e8\u06d6\u06d6\u06e5\u06e7\u06ec\u06d6\u06db\u06e1\u06d8\u06d9\u06e7\u06df\u06e5\u06e8\u06e8\u06e6\u06e2\u06db\u06e5\u06e8\u06e5\u06d8\u06e6\u06e4\u06eb\u06d8\u06db\u06db\u06e0\u06d8\u06dc\u06d8\u06e4\u06df\u06e1\u06d8\u06df\u06df\u06d6\u06d8\u06d8\u06dc\u06e8\u06d8"

    goto :goto_0

    :sswitch_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u06e5\u06d6\u06e1\u06e0\u06e1\u06e7\u06dc\u06e0\u06d8\u06e2\u06db\u06e7\u06e8\u06e6\u06df\u06da\u06eb\u06e4\u06eb\u06da\u06e4\u06db\u06dc\u06e5\u06d8\u06da\u06d7\u06dc\u06d8\u06e2\u06e4\u06e1\u06df\u06e2\u06d8\u06d8\u06e7\u06da\u06e6"

    goto :goto_0

    :sswitch_3
    const-string v0, "getVersionUpdateInfo:"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u06e4\u06e6\u06da\u06e8\u06dc\u06e1\u06d8\u06d7\u06e7\u06dc\u06dc\u06d7\u06da\u06df\u06e2\u06eb\u06db\u06d7\u06e4\u06d6\u06e6\u06e6\u06d8\u06eb\u06e2\u06eb\u06d8\u06ec\u06db\u06d8\u06d6\u06d6\u06d8"

    goto :goto_0

    :sswitch_4
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\u06da\u06e8\u06e6\u06e5\u06e5\u06e4\u06e0\u06e0\u06e0\u06e8\u06e4\u06df\u06e1\u06d9\u06df\u06e0\u06e4\u06d6\u06d6\u06e2\u06d6\u06d8\u06da\u06e8\u06eb\u06d6\u06e8\u06df\u06d9"

    goto :goto_0

    :sswitch_5
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const-string v0, "\u06e8\u06e1\u06ec\u06d6\u06dc\u06e7\u06d8\u06e5\u06d9\u06e5\u06d8\u06d6\u06e0\u06da\u06d8\u06eb\u06db\u06eb\u06d6\u06e6\u06e8\u06db\u06e6\u06e4\u06ec\u06e4\u06db\u06e4\u06eb\u06d8\u06eb\u06da\u06da\u06dc\u06e2\u06ec\u06e5\u06e6\u06dc\u06db\u06e6\u06e8\u06ec\u06eb\u06d6\u06d8\u06e2\u06e5\u06dc\u06db\u06e2\u06e0\u06e8\u06e5\u06df"

    goto :goto_0

    :sswitch_6
    const v8, -0x6dc3eb2e

    const-string v0, "\u06d6\u06dc\u06d9\u06eb\u06d7\u06e5\u06e8\u06d6\u06dc\u06e8\u06e8\u06e4\u06dc\u06eb\u06e8\u06d8\u06d9\u06df\u06e1\u06d8\u06d6\u06e5\u06db\u06e5\u06e8\u06ec\u06d8\u06e7\u06e6\u06e0\u06e8\u06db\u06eb\u06e4\u06e0\u06dc\u06e6\u06d8\u06db\u06d7\u06dc\u06d8\u06ec\u06e5\u06dc\u06d8\u06eb\u06e2\u06e1\u06e0\u06e0\u06d8\u06d8"

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v9

    xor-int/2addr v9, v8

    sparse-switch v9, :sswitch_data_1

    goto :goto_1

    :sswitch_7
    const v9, 0x4dc779a1    # 4.18329632E8f

    const-string v0, "\u06e5\u06da\u06dc\u06d7\u06e8\u06db\u06d9\u06df\u06e4\u06e4\u06df\u06e0\u06d9\u06e1\u06d8\u06d7\u06e1\u06eb\u06d6\u06df\u06e8\u06df\u06d6\u06e1\u06d8\u06da\u06d8\u06e8\u06d8\u06e0\u06d7\u06eb\u06e5\u06d6\u06ec\u06d8\u06eb\u06dc\u06e2\u06eb\u06e2\u06dc\u06e0\u06df"

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v10

    xor-int/2addr v10, v9

    sparse-switch v10, :sswitch_data_2

    goto :goto_2

    :sswitch_8
    if-nez p1, :cond_0

    const-string v0, "\u06dc\u06eb\u06e2\u06e0\u06db\u06d7\u06ec\u06e4\u06d6\u06d8\u06e6\u06e5\u06d9\u06e4\u06e2\u06e2\u06da\u06d7\u06d7\u06d9\u06e2\u06d6\u06e2\u06e1\u06d8\u06d8\u06d9\u06dc\u06d8\u06d6\u06e5\u06d8\u06e8\u06e1\u06d9\u06d8\u06eb\u06e7\u06da\u06e8\u06ec\u06e1\u06e1\u06d8"

    goto :goto_2

    :sswitch_9
    const-string v0, "\u06e4\u06df\u06dc\u06d6\u06e1\u06da\u06e5\u06e4\u06e4\u06e4\u06e7\u06e2\u06ec\u06e1\u06dc\u06da\u06e7\u06e4\u06df\u06e0\u06e5\u06d8\u06e4\u06e5\u06df\u06e0\u06eb\u06e0\u06eb\u06e5\u06e7\u06e4\u06d7\u06d8\u06d8\u06dc\u06e5\u06dc\u06d8\u06da\u06d6\u06e2\u06e6\u06d9\u06ec"

    goto :goto_1

    :cond_0
    const-string v0, "\u06e6\u06e8\u06e5\u06e1\u06eb\u06e8\u06db\u06e4\u06da\u06e2\u06e0\u06dc\u06d8\u06e4\u06dc\u06e5\u06e1\u06e2\u06da\u06d7\u06ec\u06d8\u06da\u06e5\u06e1\u06dc\u06d8\u06e8\u06d8\u06e5\u06e7\u06e8\u06da\u06e7\u06d9\u06df\u06eb\u06e4\u06d6\u06d8\u06e6\u06d9\u06e7"

    goto :goto_2

    :sswitch_a
    const-string v0, "\u06e8\u06d8\u06d8\u06db\u06d6\u06d8\u06d8\u06e4\u06e1\u06e1\u06d8\u06dc\u06e5\u06e7\u06df\u06d7\u06d9\u06e4\u06d7\u06e0\u06e6\u06eb\u06d6\u06d8\u06d6\u06e2\u06ec\u06e1\u06e2\u06dc\u06e8\u06db\u06e5\u06d8\u06da\u06d6\u06d8\u06d7\u06ec\u06e6\u06ec\u06d7\u06dc\u06d8\u06db\u06ec"

    goto :goto_2

    :sswitch_b
    const-string v0, "\u06e4\u06e7\u06dc\u06ec\u06e6\u06dc\u06d6\u06e4\u06eb\u06d9\u06d7\u06d8\u06e1\u06e4\u06e6\u06d9\u06d9\u06df\u06eb\u06e1\u06db\u06d9\u06d6\u06e7\u06d8\u06d8\u06e1\u06e4\u06e5\u06d8\u06d8\u06d8\u06e7\u06dc\u06df\u06d9\u06e7\u06e4"

    goto :goto_1

    :sswitch_c
    const-string v0, "\u06dc\u06da\u06e8\u06dc\u06db\u06e0\u06e0\u06d8\u06e7\u06e0\u06e1\u06e4\u06e4\u06e4\u06e1\u06ec\u06eb\u06db\u06db\u06d8\u06e4\u06df\u06e8\u06e8\u06d8\u06d9\u06da\u06e8\u06e6\u06e2\u06d9\u06e8\u06e1\u06e0\u06d8\u06d9\u06e4"

    goto :goto_1

    :sswitch_d
    const-string v0, "\u06d9\u06e6\u06da\u06dc\u06db\u06e6\u06d8\u06db\u06ec\u06e8\u06d8\u06d7\u06eb\u06da\u06e7\u06e1\u06e7\u06d8\u06e5\u06eb\u06e8\u06d8\u06e6\u06db\u06e8\u06d7\u06d7\u06df\u06e7\u06ec\u06d6\u06e6\u06d6\u06e5\u06d8\u06e7\u06db\u06df\u06e5\u06e6\u06d8\u06e2\u06d7\u06d6\u06df\u06db\u06df"

    goto :goto_0

    :sswitch_e
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$OooOOO;->OooO00o:Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;

    invoke-static {v0, v11}, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->Oooo0O0(Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;Z)Z

    const-string v0, "\u06e4\u06db\u06eb\u06d8\u06da\u06e5\u06e4\u06e6\u06e1\u06d8\u06e4\u06e4\u06e7\u06db\u06df\u06e1\u06d8\u06e7\u06da\u06d7\u06e5\u06d7\u06e4\u06df\u06d7\u06dc\u06df\u06e6\u06e7\u06d8\u06d7\u06da\u06e6\u06d8\u06d6\u06da\u06e5\u06d8\u06d7\u06eb\u06eb\u06e0\u06d6\u06d8\u06d8\u06dc\u06e6"

    goto :goto_0

    :sswitch_f
    iget v6, p1, Lcom/cyjh/http/bean/response/VersionUpdateInfo;->UpgradeMode:I

    const-string v0, "\u06e0\u06d6\u06e6\u06d8\u06dc\u06d7\u06e8\u06d8\u06e2\u06da\u06da\u06e8\u06da\u06d7\u06e5\u06ec\u06e4\u06d9\u06e1\u06e8\u06dc\u06df\u06db\u06dc\u06df\u06d8\u06e6\u06e2\u06df\u06e1\u06d7\u06d7\u06d6\u06e1\u06e7\u06d8\u06d8\u06d7\u06da"

    goto :goto_0

    :sswitch_10
    const v8, 0x720b9160

    const-string v0, "\u06e5\u06e0\u06e7\u06e2\u06db\u06e6\u06e6\u06e2\u06d8\u06e1\u06d6\u06e1\u06d8\u06e1\u06d9\u06d6\u06d8\u06d8\u06df\u06e8\u06d8\u06d8\u06df\u06d9\u06da\u06db\u06e0\u06d8\u06d6\u06db\u06d9\u06e6\u06e1\u06df\u06df\u06d8\u06eb\u06e5\u06e8\u06d8\u06da\u06db\u06e8\u06d8\u06e6\u06e5\u06e8\u06e7\u06d8\u06d6\u06d9\u06df\u06d6"

    :goto_3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v9

    xor-int/2addr v9, v8

    sparse-switch v9, :sswitch_data_3

    goto :goto_3

    :sswitch_11
    const v9, -0x33894a7c    # -6.4673296E7f

    const-string v0, "\u06d9\u06e1\u06e6\u06d8\u06da\u06eb\u06e5\u06e5\u06df\u06df\u06df\u06e0\u06dc\u06da\u06eb\u06d6\u06e2\u06dc\u06d8\u06e4\u06e8\u06d6\u06eb\u06ec\u06e7\u06d9\u06d9\u06e8\u06d8\u06e8\u06e0\u06d9\u06d6\u06ec\u06db"

    :goto_4
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v10

    xor-int/2addr v10, v9

    sparse-switch v10, :sswitch_data_4

    goto :goto_4

    :sswitch_12
    const-string v0, "\u06e7\u06df\u06d9\u06db\u06e5\u06e6\u06d6\u06e7\u06d8\u06d8\u06ec\u06e0\u06d9\u06df\u06d6\u06d6\u06d8\u06e7\u06dc\u06e8\u06d8\u06d6\u06ec\u06d8\u06e4\u06d8\u06e7\u06d8\u06e1\u06e2\u06e1\u06d8\u06e5\u06ec\u06e2\u06e8\u06d9\u06db\u06e6\u06ec\u06e1\u06eb\u06d7\u06e8\u06d8\u06e2\u06d8\u06df"

    goto :goto_3

    :sswitch_13
    const-string v0, "\u06df\u06d7\u06e8\u06d8\u06e4\u06e7\u06d8\u06d8\u06e6\u06e0\u06e1\u06d9\u06da\u06d8\u06d8\u06db\u06da\u06e8\u06eb\u06e5\u06e8\u06db\u06da\u06e8\u06da\u06d9\u06e2\u06dc\u06d7\u06e7\u06dc\u06e2\u06eb"

    goto :goto_3

    :cond_1
    const-string v0, "\u06e4\u06da\u06e8\u06d8\u06d7\u06eb\u06e1\u06d8\u06e0\u06e0\u06df\u06e4\u06da\u06dc\u06d8\u06e0\u06d9\u06e6\u06e5\u06d8\u06e1\u06e8\u06e6\u06d8\u06d8\u06e2\u06da\u06e6\u06d8\u06e5\u06df\u06e6\u06e0\u06db\u06e1\u06e4\u06e7\u06e1\u06eb\u06e8\u06df\u06ec\u06e1\u06e5\u06d7\u06e1\u06e8\u06d8\u06dc\u06db\u06d8\u06d8\u06d6\u06da\u06eb\u06ec\u06e7\u06e5\u06d7\u06da"

    goto :goto_4

    :sswitch_14
    if-ne v6, v11, :cond_1

    const-string v0, "\u06e4\u06e6\u06eb\u06e0\u06d7\u06e8\u06d8\u06e7\u06e6\u06da\u06d9\u06d6\u06d8\u06db\u06dc\u06eb\u06e8\u06e8\u06e8\u06db\u06e5\u06df\u06da\u06dc\u06dc\u06d8\u06d7\u06eb\u06d8\u06d8\u06eb\u06e2\u06e5\u06d8\u06df\u06e6\u06e0\u06db\u06e5\u06e6\u06d8\u06d9\u06dc\u06e7\u06d8\u06df\u06ec\u06da\u06da\u06df\u06e6\u06d6\u06da\u06dc\u06d9\u06eb\u06e1\u06d8\u06da\u06da\u06e5"

    goto :goto_4

    :sswitch_15
    const-string v0, "\u06e7\u06eb\u06db\u06da\u06e4\u06e0\u06e2\u06d6\u06d6\u06e7\u06da\u06ec\u06df\u06e5\u06d8\u06da\u06e6\u06e1\u06d9\u06e8\u06e8\u06d7\u06d6\u06d8\u06d9\u06d9\u06e8\u06d8\u06db\u06ec\u06df\u06eb\u06e6\u06e2\u06dc\u06e7\u06dc\u06d8\u06dc\u06d9\u06dc\u06da\u06db\u06e6"

    goto :goto_4

    :sswitch_16
    const-string v0, "\u06ec\u06ec\u06e2\u06eb\u06e7\u06e6\u06e0\u06eb\u06d8\u06d8\u06da\u06e2\u06d6\u06e6\u06dc\u06d8\u06e6\u06e5\u06e0\u06e5\u06da\u06d6\u06db\u06df\u06e6\u06e4\u06dc\u06e6\u06d8\u06e5\u06e1\u06e5\u06e6\u06da\u06eb\u06df\u06d9\u06e7\u06e1\u06e4\u06e6\u06d8\u06d6\u06e6\u06da\u06ec\u06e5\u06e6\u06d8\u06dc\u06e5\u06e1\u06d8\u06e0\u06d6\u06db\u06e6\u06e4\u06e8"

    goto :goto_3

    :sswitch_17
    const-string v0, "\u06da\u06d7\u06df\u06d7\u06d7\u06e6\u06d8\u06e8\u06d7\u06d6\u06d8\u06e0\u06df\u06d9\u06e4\u06e8\u06d8\u06e0\u06e7\u06ec\u06db\u06ec\u06ec\u06d6\u06da\u06e8\u06db\u06e4\u06ec\u06db\u06eb\u06dc\u06e5\u06ec\u06ec\u06e5\u06e7\u06df\u06e2\u06d9\u06e0\u06e0\u06df\u06d9\u06e6\u06eb\u06e8\u06e5\u06d8\u06e4\u06ec\u06df\u06d8\u06e0\u06e1\u06d8"

    goto/16 :goto_0

    :sswitch_18
    const v8, 0x2b9eccb5

    const-string v0, "\u06dc\u06df\u06e6\u06d8\u06dc\u06eb\u06d7\u06e7\u06e4\u06d6\u06d6\u06eb\u06d6\u06d9\u06da\u06e2\u06eb\u06db\u06d8\u06d8\u06e1\u06e8\u06e1\u06e7\u06db\u06e2\u06e1\u06d7\u06d6\u06d8\u06d6\u06eb\u06db\u06e6\u06df\u06ec\u06e2\u06df\u06da\u06ec\u06e2\u06e8\u06ec\u06e4\u06d6\u06d8\u06d6\u06e2\u06e0\u06e5\u06db\u06e2\u06d8\u06d6\u06d9"

    :goto_5
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v9

    xor-int/2addr v9, v8

    sparse-switch v9, :sswitch_data_5

    goto :goto_5

    :sswitch_19
    const-string v0, "\u06d9\u06eb\u06e1\u06d8\u06e1\u06e6\u06e6\u06d9\u06e2\u06e8\u06dc\u06e6\u06e5\u06d9\u06ec\u06e7\u06d9\u06e4\u06e6\u06e7\u06e4\u06d8\u06e1\u06e1\u06e8\u06d8\u06e6\u06e7\u06eb\u06d8\u06d8"

    goto/16 :goto_0

    :sswitch_1a
    const-string v0, "\u06e2\u06d6\u06e5\u06da\u06dc\u06e7\u06d8\u06d9\u06d9\u06e4\u06eb\u06dc\u06d7\u06d9\u06e0\u06e5\u06d8\u06db\u06e4\u06d6\u06da\u06e5\u06e1\u06d8\u06dc\u06d8\u06e4\u06e0\u06eb\u06da\u06e7\u06da\u06e5\u06d8\u06d9\u06db\u06e2\u06e2\u06da\u06e2\u06e5\u06e5\u06d9\u06d7\u06e2\u06eb\u06dc\u06df\u06ec\u06e8\u06e7\u06d8"

    goto :goto_5

    :sswitch_1b
    const v9, -0x2b398ad5

    const-string v0, "\u06e4\u06e0\u06dc\u06d8\u06ec\u06e8\u06e7\u06dc\u06eb\u06e7\u06d8\u06e4\u06e8\u06d8\u06e4\u06e1\u06dc\u06d8\u06e1\u06d8\u06db\u06e4\u06ec\u06eb\u06ec\u06e8\u06d9\u06d8\u06eb\u06d6\u06d8\u06e4\u06d8\u06db\u06d8\u06d7\u06d8\u06d6\u06d7\u06df\u06e6\u06e7\u06d6\u06d6\u06ec\u06d6\u06d8\u06e2\u06e4\u06d8\u06d8\u06e2\u06e5\u06dc"

    :goto_6
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v10

    xor-int/2addr v10, v9

    sparse-switch v10, :sswitch_data_6

    goto :goto_6

    :sswitch_1c
    iget v0, p1, Lcom/cyjh/http/bean/response/VersionUpdateInfo;->UpdateType:I

    if-ne v0, v11, :cond_2

    const-string v0, "\u06dc\u06e5\u06dc\u06d7\u06eb\u06e2\u06e2\u06e4\u06e8\u06d8\u06e6\u06e7\u06e7\u06e7\u06e0\u06e8\u06df\u06d9\u06e0\u06db\u06e2\u06e5\u06d8\u06ec\u06db\u06dc\u06e5\u06e0\u06eb\u06df\u06eb\u06d7"

    goto :goto_6

    :cond_2
    const-string v0, "\u06db\u06d6\u06d6\u06d8\u06db\u06e0\u06d6\u06d8\u06e7\u06eb\u06d8\u06e0\u06dc\u06e2\u06ec\u06e2\u06d6\u06d8\u06e6\u06e4\u06df\u06d8\u06e5\u06df\u06e8\u06d8\u06e8\u06e1\u06e6\u06e1\u06d7\u06e1\u06d8\u06da\u06e8\u06d8\u06d8\u06d7\u06da\u06e4"

    goto :goto_6

    :sswitch_1d
    const-string v0, "\u06d6\u06e1\u06db\u06d6\u06e0\u06e4\u06eb\u06e6\u06e6\u06e7\u06d6\u06e4\u06da\u06e1\u06d8\u06d7\u06e4\u06e0\u06e0\u06d7\u06e5\u06e0\u06eb\u06db\u06eb\u06eb\u06eb\u06d9\u06e0\u06d6\u06dc\u06d8\u06eb\u06da"

    goto :goto_6

    :sswitch_1e
    const-string v0, "\u06e7\u06e7\u06d7\u06e0\u06df\u06da\u06dc\u06d9\u06e7\u06eb\u06d9\u06d6\u06e8\u06e0\u06dc\u06dc\u06e6\u06e0\u06d8\u06da\u06e5\u06e7\u06e7\u06e4\u06e7\u06e6\u06ec\u06e8\u06d8\u06e8\u06ec\u06df\u06ec\u06d8"

    goto :goto_5

    :sswitch_1f
    const-string v0, "\u06d9\u06d8\u06df\u06e1\u06df\u06e0\u06e5\u06e8\u06dc\u06d8\u06e5\u06da\u06e8\u06d8\u06db\u06d8\u06e0\u06d8\u06ec\u06d8\u06d8\u06e1\u06e0\u06e8\u06e4\u06e6\u06e2\u06e8\u06e2\u06d6\u06dc\u06d6\u06eb\u06d8\u06ec\u06e1\u06e0\u06db\u06df\u06d7\u06e6\u06d8\u06d9\u06eb\u06e0\u06e8\u06e6\u06dc\u06d8\u06d6\u06d7\u06e1\u06d8"

    goto :goto_5

    :sswitch_20
    const-string v0, "\u06e1\u06e1\u06d6\u06eb\u06e6\u06e4\u06d9\u06db\u06e6\u06eb\u06e6\u06e4\u06e1\u06df\u06e8\u06d7\u06d6\u06e6\u06d8\u06ec\u06e7\u06dc\u06d8\u06e1\u06d6\u06e1\u06db\u06db\u06d8\u06ec\u06e2\u06e1\u06db\u06dc\u06dc\u06d8\u06df"

    goto/16 :goto_0

    :sswitch_21
    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->OooO00o()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v0

    iput-boolean v11, v0, Lcom/cyjh/elfin/base/AppContext;->OoooOoo:Z

    const-string v0, "\u06d9\u06eb\u06e1\u06d8\u06e1\u06e6\u06e6\u06d9\u06e2\u06e8\u06dc\u06e6\u06e5\u06d9\u06ec\u06e7\u06d9\u06e4\u06e6\u06e7\u06e4\u06d8\u06e1\u06e1\u06e8\u06d8\u06e6\u06e7\u06eb\u06d8\u06d8"

    goto/16 :goto_0

    :sswitch_22
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$OooOOO;->OooO00o:Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;

    new-instance v8, Lz2/ca;

    iget-object v9, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$OooOOO;->OooO00o:Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;

    invoke-direct {v8, v9, p1, v2}, Lz2/ca;-><init>(Landroid/content/Context;Lcom/cyjh/http/bean/response/VersionUpdateInfo;Z)V

    invoke-static {v0, v8}, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->Oooo0o0(Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;Lz2/ca;)Lz2/ca;

    const-string v0, "\u06ec\u06d9\u06e7\u06db\u06e8\u06e5\u06d9\u06e8\u06e1\u06da\u06df\u06d8\u06d8\u06e2\u06d9\u06d6\u06d8\u06eb\u06d6\u06df\u06eb\u06e0\u06da\u06dc\u06da\u06d7\u06d9\u06e4\u06e8\u06d8\u06e5\u06df\u06e8"

    goto/16 :goto_0

    :sswitch_23
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$OooOOO;->OooO00o:Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;

    invoke-static {v0}, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->Oooo0OO(Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;)Lz2/ca;

    move-result-object v0

    invoke-virtual {v0}, Lz2/ca;->show()V

    const-string v0, "\u06e5\u06d7\u06da\u06d8\u06e5\u06e1\u06df\u06e2\u06e1\u06ec\u06e8\u06d6\u06d8\u06eb\u06d6\u06d8\u06eb\u06e8\u06e4\u06d7\u06e5\u06dc\u06e7\u06e6\u06e0\u06e4\u06eb\u06d6\u06d8\u06d9\u06d8\u06d7\u06da\u06e2\u06ec\u06d9\u06e0\u06e4\u06df\u06d8\u06d8\u06d8\u06d9\u06d7\u06dc\u06eb\u06d7\u06e8\u06d8\u06ec\u06e8\u06d8\u06d8\u06e8\u06e6\u06d8\u06df\u06da\u06e7"

    goto/16 :goto_0

    :sswitch_24
    const v8, 0x34ff2138

    const-string v0, "\u06db\u06e5\u06e6\u06d8\u06d9\u06d6\u06d6\u06e4\u06e1\u06e0\u06da\u06e4\u06e6\u06e0\u06da\u06e6\u06d8\u06d6\u06e6\u06d6\u06d8\u06d8\u06d7\u06e5\u06d7\u06d9\u06d6\u06e5\u06d6\u06d8\u06d8\u06e6\u06db\u06eb\u06ec\u06da\u06e6\u06d8\u06d7\u06e6\u06e2\u06ec\u06e8\u06e0\u06d7\u06ec\u06e6\u06d8\u06e6\u06d9\u06e5\u06dc\u06e8\u06df"

    :goto_7
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v9

    xor-int/2addr v9, v8

    sparse-switch v9, :sswitch_data_7

    goto :goto_7

    :sswitch_25
    const-string v0, "\u06db\u06db\u06d6\u06d8\u06e2\u06e2\u06dc\u06e4\u06d9\u06dc\u06d8\u06eb\u06e5\u06e4\u06d7\u06d9\u06d8\u06d8\u06ec\u06da\u06d6\u06e8\u06e2\u06d9\u06e7\u06da\u06e5\u06d8\u06e0\u06dc\u06dc\u06e1\u06df\u06d7"

    goto/16 :goto_0

    :sswitch_26
    const-string v0, "\u06e7\u06e6\u06e2\u06e4\u06da\u06ec\u06ec\u06da\u06d6\u06d8\u06da\u06da\u06dc\u06d7\u06e6\u06d8\u06e8\u06e1\u06df\u06d6\u06ec\u06e0\u06db\u06e4\u06e0\u06e4\u06ec\u06db\u06eb\u06e4"

    goto :goto_7

    :sswitch_27
    const v9, -0x343bbfcd    # -2.5722982E7f

    const-string v0, "\u06ec\u06df\u06dc\u06e1\u06e4\u06e5\u06da\u06e2\u06e1\u06d8\u06eb\u06e7\u06d8\u06e8\u06eb\u06e5\u06d8\u06dc\u06df\u06d6\u06df\u06ec\u06e4\u06e1\u06e4\u06d9\u06da\u06e2\u06dc\u06e1\u06e7\u06d8"

    :goto_8
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v10

    xor-int/2addr v10, v9

    sparse-switch v10, :sswitch_data_8

    goto :goto_8

    :sswitch_28
    const/4 v0, 0x2

    if-ne v6, v0, :cond_3

    const-string v0, "\u06e4\u06ec\u06e6\u06db\u06ec\u06e7\u06e7\u06e5\u06eb\u06eb\u06db\u06e6\u06e6\u06eb\u06d6\u06e1\u06e2\u06dc\u06e2\u06df\u06e1\u06d8\u06e0\u06e1\u06db\u06e6\u06da\u06e8\u06e2\u06e1\u06d8\u06ec\u06d6\u06db\u06eb\u06e0\u06e2\u06db\u06e6\u06e4\u06e5\u06e6\u06e6\u06d9\u06eb\u06e8\u06df\u06d6\u06d6\u06d8\u06d8\u06da\u06d9\u06df\u06d9\u06e4"

    goto :goto_8

    :cond_3
    const-string v0, "\u06eb\u06e8\u06da\u06e6\u06d7\u06e5\u06d8\u06e7\u06ec\u06eb\u06e0\u06d9\u06d6\u06d8\u06e7\u06e4\u06d9\u06e7\u06e0\u06e4\u06d9\u06eb\u06e0\u06eb\u06eb\u06da\u06e1\u06e1\u06e5\u06da\u06e6\u06e8\u06d8\u06e8\u06d8\u06da\u06d9\u06e1\u06d9\u06e0\u06e5\u06e1\u06d8\u06e1\u06e8\u06e0\u06e2\u06ec\u06e8\u06d6\u06d7\u06d8\u06d8"

    goto :goto_8

    :sswitch_29
    const-string v0, "\u06e6\u06d8\u06e5\u06e0\u06d8\u06d6\u06e7\u06e1\u06db\u06e1\u06d9\u06d8\u06e4\u06d9\u06e1\u06e6\u06da\u06e8\u06d8\u06eb\u06da\u06d8\u06d8\u06e5\u06e6\u06e5\u06d7\u06dc\u06df\u06d7\u06e4\u06e0\u06d7\u06df\u06e5\u06e6\u06eb\u06e5\u06d8"

    goto :goto_8

    :sswitch_2a
    const-string v0, "\u06eb\u06d9\u06e5\u06d8\u06e5\u06da\u06d8\u06db\u06e6\u06d7\u06df\u06eb\u06ec\u06db\u06d9\u06ec\u06dc\u06d8\u06d8\u06d8\u06db\u06e5\u06e6\u06d8\u06df\u06d8\u06d9\u06e5\u06d8\u06e5\u06ec\u06db\u06da\u06da\u06df\u06d9\u06d6\u06e6\u06db\u06ec\u06d9\u06df\u06eb\u06e1"

    goto :goto_7

    :sswitch_2b
    const-string v0, "\u06df\u06da\u06d8\u06d8\u06eb\u06e8\u06da\u06ec\u06eb\u06e2\u06e8\u06e4\u06d9\u06da\u06d6\u06e5\u06d8\u06db\u06e2\u06e5\u06d8\u06e7\u06ec\u06e8\u06ec\u06dc\u06dc\u06d8\u06eb\u06e7\u06d6\u06da\u06e8\u06ec\u06e8\u06e2\u06e2\u06e4\u06dc\u06e1\u06e7\u06e7\u06df\u06e4\u06e1\u06dc\u06d8"

    goto :goto_7

    :sswitch_2c
    invoke-static {}, Lz2/b5;->OooO0OO()Lz2/b5;

    move-result-object v0

    iget-object v8, p1, Lcom/cyjh/http/bean/response/VersionUpdateInfo;->AppVersion:Ljava/lang/String;

    invoke-virtual {v0, v8}, Lz2/b5;->OooO0oO(Ljava/lang/String;)V

    const-string v0, "\u06db\u06d7\u06df\u06e4\u06d6\u06e5\u06d8\u06e2\u06db\u06e7\u06da\u06e8\u06df\u06eb\u06e1\u06e1\u06d8\u06e6\u06d8\u06e7\u06e7\u06d8\u06d8\u06da\u06e4\u06da\u06d8\u06e0\u06e1\u06eb"

    goto/16 :goto_0

    :sswitch_2d
    sget v5, Lz2/c7;->OooO0oo:I

    const-string v0, "\u06dc\u06e8\u06dc\u06d8\u06df\u06eb\u06d8\u06e4\u06e0\u06d8\u06df\u06d6\u06df\u06e1\u06db\u06e5\u06d8\u06eb\u06eb\u06e8\u06d8\u06e7\u06e0\u06e5\u06d7\u06e1\u06e4\u06e1\u06db\u06db\u06e7\u06e7\u06eb\u06df\u06e4\u06d6\u06d8\u06e0\u06e5\u06e4\u06da\u06db\u06e0\u06e6\u06da\u06da\u06d8\u06e0\u06e6\u06d8\u06da\u06ec\u06d8"

    goto/16 :goto_0

    :sswitch_2e
    const-string v0, "\u06ec\u06d7\u06e6\u06d8\u06d7\u06d8\u06e1\u06d8\u06e0\u06e4\u06df\u06d7\u06ec\u06d9\u06db\u06d9\u06e6\u06d8\u06e8\u06d7\u06da\u06d9\u06db\u06d8\u06df\u06e4\u06e1\u06e4\u06e6\u06d8\u06dc\u06e2\u06db\u06e2\u06e8\u06df\u06db\u06eb\u06d7"

    move v4, v5

    goto/16 :goto_0

    :sswitch_2f
    const v8, -0x5bb9991d

    const-string v0, "\u06dc\u06df\u06d8\u06d8\u06e4\u06e1\u06d8\u06e1\u06ec\u06eb\u06e5\u06e7\u06e1\u06d8\u06d7\u06e8\u06e7\u06e8\u06d6\u06da\u06d8\u06df\u06e1\u06e6\u06e6\u06e4\u06d6\u06d8\u06df\u06df\u06dc\u06db\u06e1\u06e2\u06eb\u06e8\u06d8\u06d8\u06d8\u06d6\u06d8\u06d6\u06d8\u06d7\u06db\u06d9\u06d9\u06db\u06d9\u06e5\u06e1\u06d8\u06e7\u06d6\u06e7\u06e6\u06d8"

    :goto_9
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v9

    xor-int/2addr v9, v8

    sparse-switch v9, :sswitch_data_9

    goto :goto_9

    :sswitch_30
    const v9, -0x4adb593f

    const-string v0, "\u06d9\u06e6\u06e0\u06e4\u06e8\u06e8\u06d8\u06d8\u06e8\u06e7\u06d8\u06da\u06d9\u06e8\u06d8\u06db\u06d7\u06e4\u06e7\u06e4\u06d6\u06e7\u06df\u06da\u06e7\u06d6\u06e7\u06d8\u06da\u06df\u06d6\u06d8\u06dc\u06e7\u06e1\u06d7\u06dc\u06e8\u06d8\u06e0\u06d7\u06da\u06db\u06d7\u06dc\u06d8\u06e8\u06d8\u06e5\u06e0\u06df\u06e2\u06e5\u06e7\u06ec"

    :goto_a
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v10

    xor-int/2addr v10, v9

    sparse-switch v10, :sswitch_data_a

    goto :goto_a

    :sswitch_31
    const/4 v0, 0x3

    iget v10, p1, Lcom/cyjh/http/bean/response/VersionUpdateInfo;->UpdateType:I

    if-ne v0, v10, :cond_4

    const-string v0, "\u06e0\u06e2\u06dc\u06d8\u06e0\u06d7\u06e6\u06d8\u06e7\u06e7\u06db\u06e1\u06e5\u06e7\u06d8\u06e4\u06e8\u06df\u06e0\u06d7\u06d6\u06d7\u06e1\u06e2\u06dc\u06d8\u06d8\u06d9\u06e8\u06e8\u06d8\u06da\u06e7\u06db"

    goto :goto_a

    :sswitch_32
    const-string v0, "\u06e2\u06dc\u06d6\u06e8\u06d8\u06d8\u06d8\u06dc\u06df\u06d6\u06d8\u06db\u06da\u06e6\u06e6\u06e6\u06e8\u06e2\u06d8\u06d7\u06e5\u06e5\u06df\u06d9\u06dc\u06d8\u06d8\u06e6\u06ec\u06db\u06e6\u06d8\u06db"

    goto :goto_9

    :cond_4
    const-string v0, "\u06ec\u06df\u06ec\u06e8\u06e8\u06dc\u06d8\u06e0\u06df\u06ec\u06df\u06e7\u06e6\u06e8\u06e0\u06e7\u06e1\u06dc\u06e0\u06d8\u06e8\u06e6\u06d8\u06e6\u06dc\u06e8\u06e7\u06df\u06e7\u06e6\u06d8\u06e1\u06d6\u06d8\u06e5\u06df\u06db\u06da\u06e7\u06eb\u06da\u06e8\u06e1"

    goto :goto_a

    :sswitch_33
    const-string v0, "\u06db\u06e5\u06e8\u06d8\u06e8\u06df\u06e7\u06d9\u06d6\u06da\u06e8\u06e6\u06dc\u06d7\u06d9\u06e4\u06e2\u06e8\u06d6\u06e4\u06e6\u06e2\u06ec\u06e4\u06e6\u06d8\u06e5\u06dc\u06dc\u06d8\u06e8\u06e2\u06da\u06d8\u06e6\u06dc\u06d8\u06db\u06e2\u06e0\u06e1\u06e5\u06db\u06e2\u06e8\u06e1\u06d8"

    goto :goto_a

    :sswitch_34
    const-string v0, "\u06e4\u06df\u06e6\u06d9\u06e7\u06d8\u06d8\u06d9\u06db\u06e8\u06e8\u06d6\u06d6\u06da\u06e4\u06e5\u06eb\u06da\u06eb\u06e8\u06db\u06da\u06e6\u06e0\u06dc\u06d8\u06d8\u06e8\u06dc"

    goto :goto_9

    :sswitch_35
    const-string v0, "\u06d6\u06e8\u06d9\u06e2\u06e1\u06e8\u06dc\u06e5\u06d6\u06e5\u06e5\u06e8\u06ec\u06e2\u06e8\u06d8\u06d6\u06d8\u06e1\u06e5\u06d6\u06e4\u06e7\u06e4\u06d6\u06e0\u06d6\u06df\u06e1\u06d6\u06e6\u06d8\u06e0\u06d7\u06d7\u06d8\u06eb\u06e6\u06d8\u06e7\u06e4\u06e5\u06e6\u06e0\u06d6\u06d8\u06e7\u06eb\u06e0\u06e6\u06d7\u06d9\u06ec\u06d7\u06dc\u06d8\u06df\u06e7\u06e2"

    goto :goto_9

    :sswitch_36
    const-string v0, "\u06d8\u06df\u06e2\u06e6\u06e7\u06e0\u06da\u06df\u06d9\u06d7\u06d7\u06e8\u06e1\u06d7\u06d8\u06e2\u06dc\u06df\u06ec\u06e2\u06e4\u06ec\u06d7\u06e6\u06d8\u06e1\u06e0\u06d6\u06eb\u06e0\u06e2"

    goto/16 :goto_0

    :sswitch_37
    const v8, -0x574c11fd

    const-string v0, "\u06dc\u06ec\u06e7\u06e2\u06e6\u06e8\u06d8\u06da\u06eb\u06e6\u06d9\u06ec\u06e2\u06db\u06d9\u06da\u06db\u06db\u06e6\u06d7\u06e0\u06ec\u06e7\u06d9\u06d6\u06d8\u06df\u06d7\u06e8\u06d8\u06ec\u06dc\u06e6\u06d8"

    :goto_b
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v9

    xor-int/2addr v9, v8

    sparse-switch v9, :sswitch_data_b

    goto :goto_b

    :sswitch_38
    const v9, 0x4e063204    # 5.6285619E8f

    const-string v0, "\u06e8\u06db\u06eb\u06e7\u06e1\u06e8\u06db\u06ec\u06e8\u06e8\u06e5\u06e8\u06d8\u06d7\u06d7\u06e8\u06d8\u06d8\u06eb\u06e8\u06d8\u06d6\u06e1\u06d6\u06d8\u06ec\u06db\u06d8\u06e0\u06df\u06ec\u06ec\u06e8\u06d7\u06e1\u06e2\u06e6\u06e7\u06e2\u06df\u06db\u06e7\u06e0\u06e7"

    :goto_c
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v10

    xor-int/2addr v10, v9

    sparse-switch v10, :sswitch_data_c

    goto :goto_c

    :sswitch_39
    const-string v0, "\u06e4\u06e4\u06e0\u06d8\u06ec\u06e8\u06e8\u06df\u06e1\u06d8\u06e0\u06e7\u06e6\u06db\u06eb\u06da\u06ec\u06e5\u06e6\u06d8\u06e8\u06dc\u06da\u06e2\u06e0\u06e5\u06d9\u06da\u06e5\u06e8\u06da\u06e1\u06d8\u06e2\u06d8\u06e8\u06d8\u06e4\u06db\u06e8\u06d8"

    goto :goto_c

    :sswitch_3a
    const-string v0, "\u06da\u06e2\u06e1\u06dc\u06d7\u06e8\u06d8\u06db\u06d9\u06e0\u06dc\u06da\u06da\u06e8\u06d7\u06e8\u06db\u06d7\u06df\u06d9\u06e5\u06e5\u06e1\u06d7\u06e8\u06d8\u06e5\u06e7\u06e1\u06e8\u06e7\u06e0\u06e1\u06e4\u06db\u06d6\u06e7\u06e2"

    goto :goto_b

    :cond_5
    const-string v0, "\u06eb\u06d6\u06d9\u06ec\u06da\u06e1\u06da\u06e0\u06e0\u06d7\u06db\u06ec\u06df\u06e0\u06e5\u06e2\u06ec\u06db\u06d6\u06e4\u06e0\u06e5\u06e4\u06d9\u06ec\u06eb\u06e7\u06e7\u06eb\u06e7\u06e8\u06e8\u06e4\u06e8\u06d6\u06d8\u06e2\u06e5\u06e1\u06d8\u06d6\u06d9\u06d8\u06d8\u06e1\u06e1\u06d8\u06d8\u06d7\u06e4"

    goto :goto_c

    :sswitch_3b
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$OooOOO;->OooO00o:Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;

    invoke-static {v0}, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->Oooo0o(Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "\u06e1\u06dc\u06dc\u06d8\u06e1\u06df\u06e8\u06d8\u06d8\u06d8\u06e6\u06dc\u06e4\u06db\u06e5\u06e0\u06e5\u06db\u06da\u06d9\u06da\u06d7\u06d8\u06d6\u06e6\u06e8\u06eb\u06da\u06db\u06dc\u06d6\u06d7\u06e4\u06d8\u06e0\u06e2\u06ec\u06e4\u06da\u06e8\u06ec\u06db\u06ec\u06db\u06e5\u06d8\u06d8\u06e8\u06ec\u06d8\u06d8"

    goto :goto_c

    :sswitch_3c
    const-string v0, "\u06ec\u06e1\u06d6\u06e2\u06d6\u06e7\u06d8\u06d7\u06dc\u06db\u06e8\u06e7\u06d8\u06dc\u06e0\u06d6\u06d8\u06da\u06e8\u06d9\u06e4\u06ec\u06ec\u06da\u06d8\u06e8\u06e6\u06d9\u06e8\u06d8\u06e0\u06e0\u06e5\u06d8\u06e6\u06e7\u06e4\u06da\u06e7\u06e0\u06e1\u06e8\u06d8\u06e8\u06e0\u06d8\u06d8\u06d9\u06d7\u06e8\u06d8\u06e6\u06e6\u06d6\u06d8\u06e6\u06d9\u06e1\u06e4\u06ec\u06e8\u06d8"

    goto :goto_b

    :sswitch_3d
    const-string v0, "\u06e6\u06e5\u06e4\u06da\u06d6\u06df\u06d6\u06da\u06e5\u06d8\u06dc\u06da\u06e6\u06d8\u06df\u06db\u06e6\u06d8\u06d9\u06e6\u06d6\u06eb\u06e6\u06e5\u06e4\u06ec\u06e6\u06e2\u06d6\u06d8\u06d7\u06d9\u06dc\u06d8\u06db\u06e0\u06e2\u06e7\u06e5\u06ec\u06d6\u06df\u06e5\u06d8\u06e2\u06e0\u06dc\u06e0\u06e2\u06df\u06e0\u06d6\u06d8"

    goto :goto_b

    :sswitch_3e
    const-string v0, "\u06d6\u06e5\u06d8\u06e6\u06e6\u06e6\u06d8\u06e7\u06ec\u06e8\u06e7\u06e8\u06dc\u06e6\u06db\u06e5\u06d8\u06d8\u06dc\u06dc\u06eb\u06dc\u06d9\u06e6\u06eb\u06e6\u06ec\u06e8\u06e1\u06df\u06e4\u06da\u06df\u06db\u06e4\u06e2\u06ec\u06db\u06e8\u06e2\u06d6\u06e4\u06e7\u06d6\u06d8\u06dc\u06e5\u06d8\u06e1\u06e5\u06e8\u06e8\u06e2\u06d6\u06e0"

    goto/16 :goto_0

    :sswitch_3f
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$OooOOO;->OooO00o:Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;

    invoke-static {v0, v2}, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->Oooo0oO(Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;Z)Z

    const-string v0, "\u06d8\u06e1\u06d8\u06d8\u06ec\u06dc\u06d8\u06e2\u06d7\u06e0\u06e0\u06e1\u06e4\u06db\u06e4\u06d6\u06d8\u06db\u06e0\u06eb\u06d7\u06d8\u06d8\u06da\u06e8\u06d6\u06eb\u06d9\u06db\u06da\u06e7\u06d9\u06d9\u06e4\u06e5\u06db\u06d9\u06dc\u06e0\u06df\u06e6\u06e6"

    goto/16 :goto_0

    :sswitch_40
    sget v3, Lz2/c7;->OooO:I

    const-string v0, "\u06d6\u06e0\u06e1\u06e1\u06d7\u06e1\u06e1\u06da\u06d8\u06eb\u06db\u06e5\u06db\u06d7\u06e4\u06e7\u06e6\u06e0\u06d8\u06e8\u06e6\u06e0\u06e7\u06e8\u06ec\u06e0\u06e0\u06e8\u06dc\u06e7\u06d9\u06d9\u06e4\u06eb\u06e1"

    goto/16 :goto_0

    :sswitch_41
    const-string v0, "\u06d6\u06e0\u06d8\u06d8\u06e0\u06db\u06df\u06db\u06e2\u06e6\u06d9\u06e5\u06d7\u06d8\u06d6\u06e4\u06e4\u06db\u06d7\u06e1\u06e8\u06d6\u06da\u06eb\u06e1\u06d8\u06da\u06e6\u06d8\u06e5\u06d7\u06e5\u06e7\u06e6\u06ec\u06e4\u06eb\u06e4\u06e1\u06d6\u06df\u06d8\u06d8\u06e7\u06e5\u06df\u06d9\u06e0"

    move v4, v3

    goto/16 :goto_0

    :sswitch_42
    sget v1, Lz2/c7;->OooO0oO:I

    const-string v0, "\u06e1\u06dc\u06d8\u06e5\u06d7\u06e8\u06d8\u06d9\u06e4\u06e7\u06e0\u06d7\u06e1\u06d8\u06eb\u06d8\u06d8\u06d8\u06e8\u06e0\u06df\u06d8\u06d9\u06e5\u06ec\u06e8\u06dc\u06e0\u06d7\u06e6\u06d8\u06e8\u06e7\u06d8\u06e1\u06e8\u06e6\u06d8\u06d6\u06ec\u06d8\u06d8\u06d6\u06da\u06dc\u06db\u06e1\u06e1\u06d7\u06dc\u06e6\u06e4\u06d9\u06e2\u06df\u06e5\u06e5\u06ec\u06e8\u06e7\u06d8"

    goto/16 :goto_0

    :sswitch_43
    const-string v0, "\u06d7\u06e7\u06e6\u06d8\u06d6\u06e4\u06dc\u06d8\u06dc\u06e7\u06d8\u06d9\u06d7\u06e1\u06d8\u06e7\u06e0\u06dc\u06d7\u06e2\u06e8\u06d8\u06da\u06dc\u06dc\u06ec\u06d8\u06dc\u06e4\u06e2\u06e5\u06df\u06da\u06e6\u06e0\u06e2\u06d8\u06d8\u06e0\u06eb\u06e0\u06e2\u06da\u06e7\u06e0\u06e2\u06eb\u06e6\u06eb\u06e1\u06d6\u06e1\u06eb"

    move v4, v1

    goto/16 :goto_0

    :sswitch_44
    invoke-static {}, Lz2/c7;->OooO0oo()Lz2/c7;

    move-result-object v0

    iget-object v8, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$OooOOO;->OooO00o:Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;

    invoke-virtual {v8}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {}, Lz2/b7;->OooO0Oo()Lz2/b7;

    move-result-object v9

    invoke-virtual {v9}, Lz2/b7;->OooO0oO()Lcom/cyjh/elfin/entity/Script;

    move-result-object v9

    invoke-virtual {v9}, Lcom/cyjh/elfin/entity/Script;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v8, v9, v4}, Lz2/c7;->OooO(Landroid/content/Context;Ljava/lang/String;I)Lz2/c7;

    move-result-object v0

    iget-object v8, p1, Lcom/cyjh/http/bean/response/VersionUpdateInfo;->UpdateUrl:Ljava/lang/String;

    invoke-virtual {v0, v8}, Lz2/c7;->OooO0oO(Ljava/lang/String;)V

    const-string v0, "\u06e7\u06da\u06da\u06d8\u06db\u06e5\u06d8\u06d7\u06e8\u06e7\u06d8\u06e4\u06dc\u06db\u06d6\u06ec\u06e6\u06d8\u06eb\u06d6\u06d8\u06e5\u06db\u06da\u06db\u06d9\u06e8\u06d6\u06dc\u06ec\u06df\u06eb\u06dc\u06d8"

    goto/16 :goto_0

    :sswitch_45
    const-string v0, "\u06e1\u06eb\u06d6\u06df\u06e1\u06d7\u06e8\u06e1\u06d6\u06d6\u06e7\u06da\u06e6\u06e4\u06d6\u06d8\u06e4\u06df\u06e5\u06d8\u06e4\u06e0\u06e6\u06d8\u06e5\u06db\u06e6\u06d8\u06df\u06dc\u06e8\u06e6\u06eb\u06e6\u06e8\u06e2\u06e6\u06d8\u06df\u06e0\u06e0\u06e1\u06e0\u06da\u06e7\u06eb\u06da\u06dc\u06d6\u06e1\u06d8\u06db\u06db\u06e7\u06da\u06dc\u06dc\u06da\u06d8\u06ec"

    goto/16 :goto_0

    :sswitch_46
    const-string v0, "\u06e5\u06e1\u06e6\u06d8\u06d6\u06dc\u06e6\u06da\u06ec\u06ec\u06df\u06e1\u06d9\u06d9\u06e5\u06e8\u06ec\u06ec\u06ec\u06e6\u06d6\u06e1\u06d9\u06d9\u06e6\u06d8\u06e4\u06dc\u06e5\u06d8\u06d7\u06e8\u06e2"

    goto/16 :goto_0

    :sswitch_47
    const-string v0, "\u06e7\u06df\u06ec\u06e7\u06dc\u06e1\u06d8\u06e7\u06e2\u06e5\u06d8\u06dc\u06e0\u06e5\u06d8\u06d7\u06e5\u06e6\u06d8\u06e6\u06eb\u06d7\u06e4\u06e6\u06e2\u06ec\u06d7\u06df\u06dc\u06da\u06eb\u06e0\u06d8\u06e4\u06eb\u06d8\u06dc\u06d8\u06d8\u06d7\u06e7\u06e6\u06e4\u06dc\u06d8\u06db\u06ec\u06d8\u06d8\u06db\u06dc\u06e8\u06e4\u06d9\u06e6\u06d8\u06e2\u06e7\u06df\u06da\u06e6\u06d8"

    goto/16 :goto_0

    :sswitch_48
    const-string v0, "\u06d7\u06e7\u06e6\u06d8\u06d6\u06e4\u06dc\u06d8\u06dc\u06e7\u06d8\u06d9\u06d7\u06e1\u06d8\u06e7\u06e0\u06dc\u06d7\u06e2\u06e8\u06d8\u06da\u06dc\u06dc\u06ec\u06d8\u06dc\u06e4\u06e2\u06e5\u06df\u06da\u06e6\u06e0\u06e2\u06d8\u06d8\u06e0\u06eb\u06e0\u06e2\u06da\u06e7\u06e0\u06e2\u06eb\u06e6\u06eb\u06e1\u06d6\u06e1\u06eb"

    goto/16 :goto_0

    :sswitch_49
    const-string v0, "\u06e7\u06da\u06da\u06d8\u06db\u06e5\u06d8\u06d7\u06e8\u06e7\u06d8\u06e4\u06dc\u06db\u06d6\u06ec\u06e6\u06d8\u06eb\u06d6\u06d8\u06e5\u06db\u06da\u06db\u06d9\u06e8\u06d6\u06dc\u06ec\u06df\u06eb\u06dc\u06d8"

    goto/16 :goto_0

    :sswitch_4a
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7d7a3b24 -> :sswitch_48
        -0x79ecdf49 -> :sswitch_4a
        -0x67b10500 -> :sswitch_2f
        -0x66cab513 -> :sswitch_21
        -0x5b7665cf -> :sswitch_18
        -0x4f0924f8 -> :sswitch_2d
        -0x4990385d -> :sswitch_6
        -0x3afa672f -> :sswitch_5
        -0x3729ae41 -> :sswitch_44
        -0x1f2d25c7 -> :sswitch_43
        -0x104cf60f -> :sswitch_0
        -0xdeaff59 -> :sswitch_2c
        -0x239432c -> :sswitch_49
        -0x1997fa2 -> :sswitch_4a
        0x39e30bb -> :sswitch_10
        0x7eb23ad -> :sswitch_23
        0x1b0ce7b5 -> :sswitch_41
        0x25f4869b -> :sswitch_4
        0x30f00576 -> :sswitch_1
        0x35c19ee1 -> :sswitch_3
        0x3c816be2 -> :sswitch_2e
        0x40b19966 -> :sswitch_42
        0x4dd40067 -> :sswitch_40
        0x51cca612 -> :sswitch_24
        0x5ab83947 -> :sswitch_f
        0x67523dbb -> :sswitch_e
        0x7765c9b6 -> :sswitch_37
        0x7829b6fc -> :sswitch_2
        0x786fce2a -> :sswitch_22
        0x7bcb687b -> :sswitch_3f
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x65dded39 -> :sswitch_45
        -0x4b21abc9 -> :sswitch_7
        0xfdba6db -> :sswitch_c
        0x45f5917e -> :sswitch_d
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        -0x74d9b940 -> :sswitch_a
        -0x5fc0f2e6 -> :sswitch_9
        -0x31ff66db -> :sswitch_8
        0x2b6c83a9 -> :sswitch_b
    .end sparse-switch

    :sswitch_data_3
    .sparse-switch
        -0x165f6703 -> :sswitch_11
        -0x14933f2b -> :sswitch_46
        0x50076a9 -> :sswitch_16
        0x5ce3cf0b -> :sswitch_17
    .end sparse-switch

    :sswitch_data_4
    .sparse-switch
        -0x355392eb -> :sswitch_14
        -0x311c0c66 -> :sswitch_15
        0x19c1072b -> :sswitch_12
        0x2198bcac -> :sswitch_13
    .end sparse-switch

    :sswitch_data_5
    .sparse-switch
        -0x52d58950 -> :sswitch_1b
        -0x2d9f24b8 -> :sswitch_19
        0x294b107e -> :sswitch_20
        0x353a8bea -> :sswitch_1f
    .end sparse-switch

    :sswitch_data_6
    .sparse-switch
        -0x7e8c6c7d -> :sswitch_1a
        -0x517b47aa -> :sswitch_1c
        -0x11b62cf4 -> :sswitch_1e
        0x53410155 -> :sswitch_1d
    .end sparse-switch

    :sswitch_data_7
    .sparse-switch
        -0x5da14e2f -> :sswitch_25
        -0x47756230 -> :sswitch_2b
        -0x1279c90f -> :sswitch_49
        0x3b1916c4 -> :sswitch_27
    .end sparse-switch

    :sswitch_data_8
    .sparse-switch
        -0x2e6eddb7 -> :sswitch_29
        0x1fb2f1dc -> :sswitch_26
        0x356e9cc5 -> :sswitch_28
        0x4b658c9e -> :sswitch_2a
    .end sparse-switch

    :sswitch_data_9
    .sparse-switch
        -0x5e3674d8 -> :sswitch_35
        -0x27acd8c7 -> :sswitch_36
        0x2f59c6ef -> :sswitch_30
        0x33b71ea4 -> :sswitch_48
    .end sparse-switch

    :sswitch_data_a
    .sparse-switch
        -0x774d7a94 -> :sswitch_34
        -0x28e1e541 -> :sswitch_33
        0x1920278a -> :sswitch_31
        0x1b9175e1 -> :sswitch_32
    .end sparse-switch

    :sswitch_data_b
    .sparse-switch
        0x975627d -> :sswitch_3e
        0x3892a1b1 -> :sswitch_38
        0x62370ed1 -> :sswitch_47
        0x7baf6c16 -> :sswitch_3d
    .end sparse-switch

    :sswitch_data_c
    .sparse-switch
        -0x71d39625 -> :sswitch_39
        -0xb5d5221 -> :sswitch_3b
        0x37f32417 -> :sswitch_3a
        0x5ba085e5 -> :sswitch_3c
    .end sparse-switch
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "\u06d8\u06e6\u06e1\u06e7\u06e1\u06e1\u06e6\u06e1\u06d8\u06d9\u06e0\u06e8\u06d9\u06e1\u06e7\u06d8\u06e8\u06db\u06e6\u06d8\u06d6\u06e4\u06e5\u06df\u06d8\u06e8\u06e5\u06e6\u06e6\u06e0\u06e6\u06e5\u06d8\u06d9\u06d9\u06d8\u06d8\u06db\u06eb\u06e5\u06d8\u06e7\u06db\u06d6"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x20a

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x2d9

    const/16 v2, 0x33b

    const v3, -0x5e778fff

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d9\u06e1\u06e8\u06ec\u06e1\u06d9\u06d8\u06df\u06db\u06e2\u06e2\u06e2\u06dc\u06eb\u06e6\u06d8\u06e4\u06d6\u06d8\u06dc\u06d6\u06d6\u06e6\u06df\u06d7\u06e6\u06ec\u06e6\u06e8\u06e2\u06e5\u06ec\u06d9\u06e6\u06e7\u06d7\u06d6\u06d8\u06d6\u06e4\u06e5\u06d9\u06d6\u06d7\u06e7\u06ec\u06e2\u06da\u06e1\u06ec"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06d6\u06dc\u06e6\u06df\u06da\u06d8\u06e7\u06db\u06e2\u06db\u06d9\u06e8\u06d8\u06d6\u06d6\u06da\u06e8\u06d6\u06e8\u06d8\u06db\u06e6\u06dc\u06d8\u06dc\u06d9\u06dc\u06dc\u06d7\u06d6\u06ec\u06d6\u06e1\u06eb\u06dc\u06d6\u06d6\u06ec\u06e4\u06da\u06e6\u06e5\u06df\u06e2"

    goto :goto_0

    :sswitch_2
    move-object v0, p1

    check-cast v0, Lcom/cyjh/http/bean/response/VersionUpdateInfo;

    invoke-virtual {p0, v0}, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$OooOOO;->OooO00o(Lcom/cyjh/http/bean/response/VersionUpdateInfo;)V

    const-string v0, "\u06e4\u06eb\u06dc\u06da\u06d6\u06eb\u06e4\u06dc\u06e7\u06d8\u06e0\u06e2\u06e6\u06d8\u06d7\u06d6\u06d6\u06d8\u06e7\u06e7\u06e5\u06d8\u06db\u06e5\u06dc\u06d8\u06e4\u06dc\u06d8\u06df\u06ec\u06e5\u06d8\u06e6\u06df\u06e6\u06d8\u06d7\u06d6\u06d8\u06d7\u06ec\u06df\u06ec\u06dc\u06e8\u06e1\u06e8\u06d6"

    goto :goto_0

    :sswitch_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x77c8ff15 -> :sswitch_3
        -0x7197f6fa -> :sswitch_0
        -0x27ce0641 -> :sswitch_1
        0x56332771 -> :sswitch_2
    .end sparse-switch
.end method
