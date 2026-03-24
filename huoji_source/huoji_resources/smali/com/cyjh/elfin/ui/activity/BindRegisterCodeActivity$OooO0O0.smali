.class public Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity$OooO0O0;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;->OooO()V
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
        "Lcom/cyjh/http/bean/response/RegCodeInfoResponse;",
        ">;"
    }
.end annotation


# instance fields
.field public final OooO00o:Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;


# direct methods
.method public constructor <init>(Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity$OooO0O0;->OooO00o:Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OooO00o(Lcom/cyjh/http/bean/response/RegCodeInfoResponse;)V
    .locals 7
    .param p1    # Lcom/cyjh/http/bean/response/RegCodeInfoResponse;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v2, 0x0

    const-string v0, "\u06e5\u06d9\u06e2\u06d7\u06dc\u06e1\u06d8\u06d9\u06eb\u06ec\u06dc\u06e2\u06e6\u06e0\u06e8\u06e2\u06d8\u06eb\u06da\u06dc\u06e2\u06e2\u06df\u06d8\u06e7\u06d6\u06ec\u06e7\u06d8\u06e7\u06e5"

    move-object v1, v2

    move-object v3, v2

    move-object v4, v2

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v5, 0x312

    xor-int/2addr v2, v5

    xor-int/lit16 v2, v2, 0x31f

    const/16 v5, 0x255

    const v6, 0x31ee2cfd

    xor-int/2addr v2, v5

    xor-int/2addr v2, v6

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e7\u06d7\u06e2\u06d9\u06e1\u06e6\u06d8\u06ec\u06e4\u06d7\u06d6\u06ec\u06e6\u06d8\u06d9\u06e7\u06e7\u06e4\u06e5\u06da\u06d7\u06e4\u06da\u06eb\u06d8\u06db\u06db\u06d7\u06e7\u06d6\u06df\u06da\u06e7\u06db\u06da\u06dc\u06db\u06e8\u06e7\u06d8\u06e2\u06dc\u06e1\u06d8\u06dc\u06d9\u06d6\u06d8\u06d7\u06db\u06e2\u06d6\u06d8\u06d8\u06e5\u06d7\u06d9"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06e0\u06e8\u06da\u06d8\u06d8\u06df\u06e2\u06d7\u06d9\u06e5\u06d6\u06d8\u06d8\u06e1\u06da\u06df\u06e5\u06dc\u06d8\u06da\u06e5\u06da\u06e4\u06e2\u06e5\u06e7\u06e8\u06dc\u06da\u06e8\u06d8\u06e6\u06d6\u06e5\u06d8\u06eb\u06da\u06e5\u06d8\u06d7\u06da\u06df\u06d7\u06e1\u06d9"

    goto :goto_0

    :sswitch_2
    const v2, 0x49a35d6e    # 1338285.8f

    const-string v0, "\u06e4\u06e2\u06db\u06d9\u06e4\u06e5\u06e7\u06eb\u06da\u06e4\u06db\u06e1\u06d8\u06d7\u06e7\u06d6\u06d8\u06e6\u06e7\u06eb\u06dc\u06e8\u06db\u06df\u06d8\u06e0\u06e0\u06e1\u06e0\u06d9\u06d6\u06dc\u06db\u06e1\u06d8\u06ec\u06eb\u06e1"

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v5

    xor-int/2addr v5, v2

    sparse-switch v5, :sswitch_data_1

    goto :goto_1

    :sswitch_3
    const-string v0, "\u06d6\u06e7\u06d6\u06df\u06d8\u06d8\u06d9\u06dc\u06d6\u06d8\u06dc\u06e1\u06e6\u06e0\u06ec\u06e4\u06d6\u06e8\u06e1\u06e8\u06e7\u06d9\u06d8\u06df\u06d7\u06eb\u06d6\u06dc\u06e4\u06df\u06dc\u06d8\u06eb\u06e1\u06e0\u06df\u06df\u06d9\u06da\u06e4\u06d9\u06d8\u06eb"

    goto :goto_0

    :sswitch_4
    const-string v0, "\u06dc\u06e4\u06e2\u06eb\u06e2\u06e5\u06d8\u06eb\u06e1\u06d9\u06d9\u06eb\u06dc\u06d8\u06e2\u06e2\u06e5\u06d8\u06e8\u06e4\u06e1\u06db\u06da\u06e5\u06d8\u06d9\u06d8\u06e7\u06df\u06dc\u06d6\u06df\u06da\u06da\u06d6\u06e4\u06e0\u06dc\u06d7\u06e8"

    goto :goto_1

    :sswitch_5
    const v5, -0x1bf5f329

    const-string v0, "\u06e4\u06eb\u06e2\u06dc\u06e7\u06e8\u06e5\u06eb\u06db\u06e2\u06d8\u06ec\u06dc\u06d8\u06d8\u06d8\u06d7\u06e6\u06d6\u06ec\u06e4\u06dc\u06d8\u06db\u06e0\u06d8\u06df\u06d7\u06d8\u06d9\u06dc\u06e1\u06d8\u06d8\u06e1\u06e8\u06d9\u06e7\u06d8"

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v6

    xor-int/2addr v6, v5

    sparse-switch v6, :sswitch_data_2

    goto :goto_2

    :sswitch_6
    const-string v0, "\u06e0\u06e0\u06dc\u06e7\u06e4\u06e8\u06d8\u06e0\u06e7\u06eb\u06db\u06e2\u06e6\u06d9\u06d9\u06e5\u06d8\u06e4\u06e8\u06d8\u06e1\u06e7\u06db\u06db\u06e5\u06e1\u06d8\u06d8\u06e7\u06eb\u06d6\u06e5\u06eb\u06da\u06e1\u06eb\u06d8\u06e7\u06e7\u06e5\u06e6\u06d8\u06df\u06eb\u06e7"

    goto :goto_1

    :cond_0
    const-string v0, "\u06d6\u06e1\u06d6\u06d8\u06e8\u06ec\u06eb\u06d9\u06e7\u06e6\u06e2\u06d9\u06e4\u06e4\u06d8\u06e5\u06d8\u06e6\u06e8\u06d6\u06e4\u06dc\u06dc\u06d8\u06da\u06ec\u06d8\u06d9\u06e0\u06e5\u06e8\u06e5\u06e1\u06d8\u06e1\u06e1\u06d8\u06d8\u06e0\u06d9\u06e5\u06d8"

    goto :goto_2

    :sswitch_7
    iget v0, p1, Lcom/cyjh/http/bean/response/RegCodeInfoResponse;->Code:I

    const/16 v6, 0xc8

    if-ne v0, v6, :cond_0

    const-string v0, "\u06da\u06ec\u06e6\u06da\u06d9\u06d8\u06d8\u06eb\u06da\u06d6\u06d6\u06eb\u06e6\u06d8\u06d7\u06e4\u06df\u06ec\u06d7\u06e7\u06e2\u06e1\u06d7\u06d8\u06d6\u06dc\u06d9\u06e2\u06e6\u06d9\u06e6\u06e2\u06d6\u06d8\u06e5\u06d8\u06d9\u06d6\u06e4"

    goto :goto_2

    :sswitch_8
    const-string v0, "\u06dc\u06da\u06e0\u06df\u06d9\u06e6\u06d8\u06e2\u06db\u06e1\u06e2\u06e5\u06da\u06dc\u06e7\u06d8\u06da\u06d8\u06e0\u06e6\u06d6\u06e6\u06e8\u06d6\u06e8\u06e0\u06e0\u06db\u06e8\u06ec\u06dc\u06e8\u06e2\u06e8\u06d8\u06d6\u06d7\u06e6"

    goto :goto_2

    :sswitch_9
    const-string v0, "\u06db\u06da\u06e1\u06d8\u06e2\u06ec\u06d8\u06d8\u06e5\u06eb\u06dc\u06d9\u06e7\u06e6\u06d7\u06e7\u06e1\u06d8\u06e5\u06db\u06e5\u06d8\u06e2\u06e4\u06d8\u06d8\u06d6\u06e8\u06ec\u06e2\u06e1\u06e5\u06e4\u06e5\u06e6\u06d8\u06e7\u06eb\u06e7\u06ec\u06da\u06e6\u06e4\u06e5\u06d6\u06d8\u06da\u06e4\u06e2"

    goto :goto_1

    :sswitch_a
    const-string v0, "\u06eb\u06d7\u06e7\u06db\u06e1\u06e5\u06d8\u06e7\u06e6\u06e7\u06d8\u06e7\u06e6\u06e5\u06d8\u06e7\u06e0\u06d6\u06e7\u06d8\u06d9\u06e4\u06da\u06dc\u06d8\u06e2\u06d8\u06e7\u06df\u06da\u06e1\u06eb\u06e7\u06eb"

    goto :goto_0

    :sswitch_b
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity$OooO0O0;->OooO00o:Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;

    iget-object v2, p1, Lcom/cyjh/http/bean/response/RegCodeInfoResponse;->Data:Lcom/cyjh/http/bean/response/QueryRegCodeInfo;

    invoke-static {v0, v2}, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;->OooOO0(Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;Lcom/cyjh/http/bean/response/QueryRegCodeInfo;)V

    const-string v0, "\u06d7\u06dc\u06e5\u06d8\u06df\u06e6\u06e8\u06eb\u06e8\u06d6\u06dc\u06e7\u06dc\u06d7\u06da\u06d8\u06e1\u06ec\u06e0\u06e5\u06dc\u06e6\u06da\u06e1\u06d8\u06e2\u06da\u06dc\u06d8\u06e4\u06e4\u06da"

    goto :goto_0

    :sswitch_c
    iget-object v4, p1, Lcom/cyjh/http/bean/response/RegCodeInfoResponse;->Message:Ljava/lang/String;

    const-string v0, "\u06da\u06df\u06dc\u06ec\u06e0\u06da\u06eb\u06d6\u06d6\u06d8\u06db\u06da\u06e8\u06d8\u06d6\u06d9\u06d6\u06d8\u06e8\u06e1\u06e1\u06d8\u06df\u06e5\u06ec\u06d8\u06d8\u06e1\u06da\u06e5\u06d7\u06e8\u06d7\u06e8\u06e4\u06d6\u06ec\u06e6\u06d9\u06e0\u06e4\u06e6\u06d8\u06db\u06e2\u06db"

    goto :goto_0

    :sswitch_d
    const-string v0, "\u06da\u06e2\u06e4\u06e6\u06df\u06dc\u06d8\u06e4\u06d6\u06da\u06d6\u06d6\u06eb\u06d8\u06e6\u06e6\u06ec\u06d6\u06e8\u06d8\u06eb\u06df\u06dc\u06e6\u06e4\u06eb\u06ec\u06df\u06df\u06e4\u06d8\u06eb\u06da\u06dc\u06ec\u06ec\u06e1\u06e8\u06da\u06d9\u06da\u06db\u06e0\u06eb\u06e4\u06e8\u06e5\u06e4\u06ec"

    move-object v3, v4

    goto :goto_0

    :sswitch_e
    const v2, 0x530e75c4

    const-string v0, "\u06d9\u06d8\u06e6\u06d8\u06d6\u06db\u06d6\u06e0\u06d7\u06d7\u06eb\u06e8\u06eb\u06e0\u06d6\u06e8\u06d8\u06db\u06eb\u06e8\u06eb\u06e1\u06e5\u06d8\u06e2\u06df\u06e0\u06ec\u06d7\u06dc\u06d8\u06d6\u06e1\u06d8\u06e5\u06e7\u06d8\u06e2\u06e2\u06eb\u06e1\u06da\u06e5\u06d6\u06e1\u06d8"

    :goto_3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v5

    xor-int/2addr v5, v2

    sparse-switch v5, :sswitch_data_3

    goto :goto_3

    :sswitch_f
    const v5, -0x1b8c712d

    const-string v0, "\u06e6\u06e2\u06e8\u06e8\u06e0\u06e0\u06d9\u06da\u06dc\u06eb\u06d8\u06e4\u06db\u06d8\u06e5\u06e5\u06e8\u06e1\u06d8\u06e0\u06dc\u06eb\u06e5\u06ec\u06e5\u06d8\u06e0\u06ec\u06e1\u06d8\u06e5\u06e6\u06e7\u06e2\u06e2\u06d8\u06e5\u06e0\u06e1\u06df\u06d9\u06d8\u06d8\u06e5\u06e6\u06e8\u06d8\u06e0\u06e2\u06e4\u06dc\u06ec\u06e6"

    :goto_4
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v6

    xor-int/2addr v6, v5

    sparse-switch v6, :sswitch_data_4

    goto :goto_4

    :sswitch_10
    const-string v0, "\u06e2\u06d9\u06d6\u06d8\u06dc\u06db\u06e0\u06e1\u06ec\u06db\u06d9\u06e8\u06d8\u06d8\u06eb\u06d9\u06ec\u06e8\u06d6\u06d8\u06e6\u06e5\u06da\u06d8\u06d8\u06e8\u06df\u06db\u06e0\u06d6\u06d8\u06ec\u06db\u06d8\u06d8\u06e7\u06da\u06e4"

    goto :goto_3

    :sswitch_11
    const-string v0, "\u06db\u06df\u06e1\u06d8\u06db\u06eb\u06d8\u06d8\u06df\u06e4\u06e4\u06e0\u06e4\u06e2\u06e5\u06ec\u06e1\u06d8\u06d6\u06d6\u06d9\u06e1\u06e7\u06dc\u06d8\u06d6\u06d7\u06e5\u06d8\u06d6\u06e5\u06d8\u06d8\u06e1\u06dc\u06dc\u06d9\u06e8\u06ec\u06e7\u06ec\u06d6\u06d8\u06e8\u06db\u06df\u06e8\u06d6\u06d8"

    goto :goto_3

    :cond_1
    const-string v0, "\u06df\u06e4\u06e4\u06e8\u06e8\u06db\u06da\u06e5\u06e6\u06d7\u06db\u06e4\u06e7\u06d7\u06db\u06e6\u06e2\u06d6\u06db\u06e0\u06dc\u06d8\u06ec\u06d7\u06d8\u06ec\u06e7\u06d8\u06d9\u06ec\u06eb\u06da\u06e8\u06ec\u06eb\u06ec\u06e6\u06d8\u06d6\u06d6\u06eb\u06e7\u06eb\u06d7"

    goto :goto_4

    :sswitch_12
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "\u06eb\u06e2\u06e1\u06dc\u06ec\u06db\u06d7\u06df\u06d8\u06d8\u06da\u06e8\u06eb\u06da\u06d8\u06da\u06d6\u06d7\u06da\u06dc\u06df\u06db\u06db\u06e0\u06e1\u06d8\u06db\u06e1\u06e4\u06e0\u06eb\u06df"

    goto :goto_4

    :sswitch_13
    const-string v0, "\u06e7\u06e4\u06e4\u06e4\u06e0\u06db\u06ec\u06e6\u06e8\u06dc\u06e2\u06e7\u06e4\u06ec\u06eb\u06d9\u06e4\u06dc\u06d8\u06e8\u06eb\u06d9\u06e2\u06d8\u06d8\u06d8\u06e5\u06d7\u06d7\u06e8\u06db\u06df\u06e6\u06d7\u06da\u06e1\u06e7\u06e2\u06ec\u06dc\u06db\u06e5\u06e6\u06d8\u06da\u06e6\u06e1\u06d8\u06e1\u06eb\u06e8\u06d8\u06df\u06da\u06d6\u06d8\u06e1\u06e8\u06e1\u06d8"

    goto :goto_4

    :sswitch_14
    const-string v0, "\u06e4\u06d7\u06e6\u06d8\u06e6\u06eb\u06e0\u06e0\u06e4\u06d7\u06ec\u06e7\u06e6\u06e8\u06d8\u06e8\u06e2\u06eb\u06dc\u06d8\u06e6\u06d8\u06e5\u06d8\u06e6\u06e1\u06dc\u06d8\u06da\u06d7\u06e7\u06e7\u06d9\u06d9\u06e6\u06e1\u06dc\u06d8\u06e2\u06e8\u06ec\u06eb\u06dc\u06e8\u06d8\u06ec\u06eb\u06dc\u06d8"

    goto :goto_3

    :sswitch_15
    const-string v0, "\u06dc\u06e2\u06da\u06dc\u06e1\u06e7\u06e4\u06e0\u06e8\u06d8\u06eb\u06dc\u06e7\u06d8\u06e6\u06e4\u06d8\u06eb\u06e0\u06d6\u06d8\u06d9\u06e1\u06d6\u06d8\u06e0\u06d6\u06da\u06e7\u06dc\u06df\u06ec\u06d9\u06d8\u06e0\u06e7\u06e1\u06d7\u06d8\u06e8\u06da\u06e2\u06e6\u06d8\u06eb\u06da\u06e2\u06e0\u06da\u06e7\u06df\u06e4\u06d6\u06d8"

    goto/16 :goto_0

    :sswitch_16
    iget v0, p1, Lcom/cyjh/http/bean/response/RegCodeInfoResponse;->Code:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v0, "\u06e7\u06e0\u06e5\u06d8\u06df\u06d6\u06d6\u06e6\u06d6\u06ec\u06e8\u06e2\u06da\u06df\u06e5\u06e8\u06dc\u06d7\u06d6\u06d6\u06dc\u06e4\u06e7\u06d8\u06d8\u06d8\u06e0\u06db\u06da\u06e4\u06ec\u06df\u06e6\u06d8\u06e0\u06eb\u06e8"

    goto/16 :goto_0

    :sswitch_17
    const-string v0, "\u06e4\u06eb\u06e1\u06d8\u06e8\u06d7\u06e6\u06d8\u06d6\u06e0\u06df\u06da\u06db\u06e4\u06d8\u06e1\u06d6\u06d8\u06e5\u06e4\u06db\u06d8\u06df\u06e1\u06d6\u06e8\u06e7\u06e2\u06e8\u06e6\u06d8\u06e2\u06d6\u06e7\u06d8\u06ec\u06e0\u06e6\u06d8\u06e1\u06e2\u06e0\u06e4\u06ec\u06e7\u06dc\u06da\u06d6\u06d8\u06ec\u06d7\u06e6\u06d8\u06d6\u06e0\u06d6\u06e4\u06e2\u06d6\u06e6\u06e6\u06e5"

    move-object v3, v1

    goto/16 :goto_0

    :sswitch_18
    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->OooO00o()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v0

    invoke-static {v0, v3}, Lz2/c5;->OooO0OO(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "\u06e6\u06e0\u06eb\u06e8\u06ec\u06d6\u06d8\u06e1\u06d7\u06e5\u06e5\u06e5\u06eb\u06dc\u06e0\u06e8\u06e1\u06d8\u06e1\u06e8\u06e4\u06eb\u06e2\u06e5\u06e5\u06d6\u06db\u06d6\u06d8\u06eb\u06e8\u06ec\u06d7\u06e8\u06d8\u06e6\u06e5\u06d8\u06d8\u06e4\u06d6\u06d8\u06d6\u06d9\u06ec\u06d7\u06e0\u06d6\u06df\u06e6\u06e0\u06e4\u06e8\u06d6\u06d8\u06e7\u06e8\u06eb"

    goto/16 :goto_0

    :sswitch_19
    const-string v0, "\u06e4\u06eb\u06e1\u06d8\u06e8\u06d7\u06e6\u06d8\u06d6\u06e0\u06df\u06da\u06db\u06e4\u06d8\u06e1\u06d6\u06d8\u06e5\u06e4\u06db\u06d8\u06df\u06e1\u06d6\u06e8\u06e7\u06e2\u06e8\u06e6\u06d8\u06e2\u06d6\u06e7\u06d8\u06ec\u06e0\u06e6\u06d8\u06e1\u06e2\u06e0\u06e4\u06ec\u06e7\u06dc\u06da\u06d6\u06d8\u06ec\u06d7\u06e6\u06d8\u06d6\u06e0\u06d6\u06e4\u06e2\u06d6\u06e6\u06e6\u06e5"

    goto/16 :goto_0

    :sswitch_1a
    const-string v0, "\u06e6\u06e0\u06eb\u06e8\u06ec\u06d6\u06d8\u06e1\u06d7\u06e5\u06e5\u06e5\u06eb\u06dc\u06e0\u06e8\u06e1\u06d8\u06e1\u06e8\u06e4\u06eb\u06e2\u06e5\u06e5\u06d6\u06db\u06d6\u06d8\u06eb\u06e8\u06ec\u06d7\u06e8\u06d8\u06e6\u06e5\u06d8\u06d8\u06e4\u06d6\u06d8\u06d6\u06d9\u06ec\u06d7\u06e0\u06d6\u06df\u06e6\u06e0\u06e4\u06e8\u06d6\u06d8\u06e7\u06e8\u06eb"

    goto/16 :goto_0

    :sswitch_1b
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x675edcf4 -> :sswitch_1
        -0x65a63d61 -> :sswitch_18
        -0x4fe3f119 -> :sswitch_2
        -0x3f9520b5 -> :sswitch_16
        -0x3d2034e1 -> :sswitch_c
        -0x3d0c4cc4 -> :sswitch_d
        -0x29a1758f -> :sswitch_0
        -0x201f53ba -> :sswitch_1a
        -0x9c48e5e -> :sswitch_e
        0x1a986142 -> :sswitch_b
        0x220b428e -> :sswitch_1b
        0x4b88c031 -> :sswitch_17
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x3239a23 -> :sswitch_a
        0x4b4a157 -> :sswitch_5
        0x62a75a3c -> :sswitch_3
        0x6791ec3f -> :sswitch_9
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        -0xf180a68 -> :sswitch_8
        0x16f866ff -> :sswitch_6
        0x3b8d0179 -> :sswitch_7
        0x60a15e1d -> :sswitch_4
    .end sparse-switch

    :sswitch_data_3
    .sparse-switch
        -0x5bd0099 -> :sswitch_15
        0x37e68e82 -> :sswitch_f
        0x46919548 -> :sswitch_14
        0x77eceff3 -> :sswitch_19
    .end sparse-switch

    :sswitch_data_4
    .sparse-switch
        -0x64359acf -> :sswitch_11
        -0x2782fa1e -> :sswitch_12
        0xac81b18 -> :sswitch_10
        0x129b9a6a -> :sswitch_13
    .end sparse-switch
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "\u06db\u06ec\u06e5\u06d8\u06d8\u06da\u06e1\u06d8\u06e0\u06df\u06e1\u06e7\u06d8\u06df\u06dc\u06d8\u06e2\u06e2\u06d6\u06e4\u06e6\u06d6\u06d8\u06eb\u06ec\u06e1\u06e6\u06d7\u06d7\u06d8\u06e4"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x326

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x2f0

    const/16 v2, 0x178

    const v3, -0x23f6d8e3

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06da\u06e7\u06e6\u06e4\u06e8\u06e7\u06d8\u06d8\u06e1\u06e6\u06d8\u06e4\u06e6\u06d8\u06d8\u06da\u06d9\u06da\u06da\u06e5\u06e7\u06d7\u06db\u06d9\u06e1\u06d6\u06d6\u06d8\u06d8\u06e5\u06e8\u06e5\u06d6\u06e2\u06e6\u06e7\u06e8\u06d8\u06e5\u06d8\u06e5\u06d8\u06eb\u06e0\u06e6\u06e7\u06e2\u06db\u06df\u06e0\u06df\u06eb\u06d9\u06dc"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06e6\u06e0\u06dc\u06d8\u06e8\u06e2\u06e1\u06e5\u06e5\u06e6\u06d7\u06e2\u06ec\u06e7\u06e2\u06e7\u06e5\u06d9\u06d7\u06e5\u06d8\u06da\u06e6\u06e6\u06ec\u06e6\u06db\u06e1\u06df\u06db\u06e4\u06e8\u06d9\u06e5"

    goto :goto_0

    :sswitch_2
    move-object v0, p1

    check-cast v0, Lcom/cyjh/http/bean/response/RegCodeInfoResponse;

    invoke-virtual {p0, v0}, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity$OooO0O0;->OooO00o(Lcom/cyjh/http/bean/response/RegCodeInfoResponse;)V

    const-string v0, "\u06e5\u06db\u06ec\u06d7\u06e6\u06df\u06ec\u06e5\u06ec\u06dc\u06df\u06e0\u06d6\u06d7\u06e1\u06d6\u06df\u06e5\u06e0\u06d7\u06e8\u06e7\u06d8\u06e5\u06e1\u06e8\u06dc\u06e1\u06e6\u06d8"

    goto :goto_0

    :sswitch_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x78adfac -> :sswitch_0
        -0x697f7ae -> :sswitch_3
        0x120adbe3 -> :sswitch_2
        0x46ad26ff -> :sswitch_1
    .end sparse-switch
.end method
