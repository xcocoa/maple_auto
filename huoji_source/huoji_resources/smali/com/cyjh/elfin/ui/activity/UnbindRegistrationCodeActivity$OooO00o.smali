.class public Lcom/cyjh/elfin/ui/activity/UnbindRegistrationCodeActivity$OooO00o;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/elfin/ui/activity/UnbindRegistrationCodeActivity;->OooO()V
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
.field public final OooO00o:Lcom/cyjh/elfin/ui/activity/UnbindRegistrationCodeActivity;


# direct methods
.method public constructor <init>(Lcom/cyjh/elfin/ui/activity/UnbindRegistrationCodeActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/cyjh/elfin/ui/activity/UnbindRegistrationCodeActivity$OooO00o;->OooO00o:Lcom/cyjh/elfin/ui/activity/UnbindRegistrationCodeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OooO00o(Lcom/cyjh/http/bean/response/RegCodeInfoResponse;)V
    .locals 10
    .param p1    # Lcom/cyjh/http/bean/response/RegCodeInfoResponse;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v2, 0x0

    const-string v0, "\u06ec\u06e1\u06e7\u06d8\u06e0\u06e8\u06ec\u06da\u06e7\u06e5\u06e5\u06e8\u06e8\u06d8\u06e0\u06ec\u06e2\u06dc\u06e7\u06e4\u06e1\u06e4\u06da\u06d7\u06e0\u06df\u06d9\u06d9\u06e5\u06dc\u06d8"

    move-object v1, v2

    move-object v3, v2

    move-object v4, v2

    move-object v6, v2

    move-object v5, v2

    move-object v7, v2

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v8, 0x168

    xor-int/2addr v2, v8

    xor-int/lit16 v2, v2, 0x26e

    const/16 v8, 0x13e

    const v9, 0xce003b2

    xor-int/2addr v2, v8

    xor-int/2addr v2, v9

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06df\u06dc\u06d8\u06d8\u06eb\u06d6\u06e7\u06e6\u06e5\u06e2\u06db\u06e5\u06dc\u06d8\u06e5\u06d9\u06da\u06e7\u06d8\u06da\u06e2\u06eb\u06e6\u06e2\u06dc\u06e1\u06e8\u06db\u06d7\u06e5\u06eb\u06dc\u06d9\u06e6\u06e1\u06ec\u06d6\u06d8\u06e5\u06e6\u06d8\u06e5\u06d9\u06df\u06dc\u06e7\u06d8\u06d6\u06d7\u06d6"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06d9\u06da\u06d6\u06d8\u06e0\u06e6\u06e6\u06d8\u06d8\u06e2\u06d8\u06e4\u06db\u06e8\u06d8\u06df\u06dc\u06e5\u06d8\u06e7\u06df\u06d8\u06d8\u06e0\u06e0\u06e1\u06e8\u06e4\u06e4\u06e6\u06d9\u06e1\u06d8\u06dc\u06e5\u06da\u06d9\u06eb\u06ec\u06d9\u06d6\u06d6"

    goto :goto_0

    :sswitch_2
    iget-object v7, p1, Lcom/cyjh/http/bean/response/RegCodeInfoResponse;->Message:Ljava/lang/String;

    const-string v0, "\u06d6\u06e7\u06df\u06db\u06d8\u06e7\u06d8\u06db\u06e5\u06d8\u06db\u06e0\u06e2\u06e2\u06e5\u06e7\u06d6\u06ec\u06d6\u06e6\u06da\u06e1\u06d8\u06e5\u06e1\u06e8\u06d8\u06e4\u06e1\u06e5\u06d8\u06e5\u06eb\u06e2\u06e8\u06e8\u06e7\u06d8\u06dc\u06e6\u06e2\u06dc\u06d8\u06dc\u06df\u06ec\u06d8\u06db\u06e2\u06d8\u06e1"

    goto :goto_0

    :sswitch_3
    const-string v0, "\u06e0\u06e8\u06e4\u06e8\u06d6\u06e8\u06e0\u06dc\u06d6\u06d8\u06da\u06eb\u06e8\u06e1\u06df\u06eb\u06df\u06da\u06e4\u06df\u06d8\u06e1\u06e0\u06d8\u06d9\u06df\u06e7\u06d6\u06da\u06e0\u06d6\u06d8"

    move-object v5, v7

    goto :goto_0

    :sswitch_4
    const v2, 0xc4a34e8

    const-string v0, "\u06e8\u06e6\u06e4\u06df\u06e4\u06e5\u06e0\u06db\u06d8\u06db\u06d8\u06e5\u06e6\u06e4\u06d8\u06e2\u06d9\u06e8\u06da\u06e5\u06e4\u06d7\u06e7\u06eb\u06e5\u06e1\u06d8\u06d8\u06eb\u06df\u06d8\u06e7\u06e8\u06d8\u06d6\u06eb\u06ec\u06d6\u06e0\u06dc\u06d8\u06d9\u06db\u06e1\u06e7\u06da\u06d8\u06dc\u06d7"

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v8

    xor-int/2addr v8, v2

    sparse-switch v8, :sswitch_data_1

    goto :goto_1

    :sswitch_5
    const-string v0, "\u06eb\u06ec\u06e4\u06e5\u06e5\u06e8\u06e0\u06e6\u06d6\u06d9\u06db\u06d8\u06e8\u06e0\u06e1\u06d8\u06ec\u06e7\u06e8\u06df\u06e0\u06d6\u06d8\u06d9\u06d6\u06e4\u06e5\u06e1\u06eb\u06db\u06da\u06e1\u06d8"

    goto :goto_0

    :sswitch_6
    const-string v0, "\u06eb\u06dc\u06d8\u06ec\u06e7\u06e1\u06ec\u06da\u06e8\u06d8\u06da\u06e1\u06db\u06e8\u06e4\u06e4\u06d9\u06e1\u06e7\u06d8\u06eb\u06e4\u06e0\u06e8\u06d9\u06e1\u06eb\u06dc\u06e6\u06d8\u06e2\u06e6\u06d7\u06e0\u06e2\u06da\u06eb\u06d6\u06db\u06d7\u06d7\u06e5\u06e6\u06e8\u06d8\u06e1\u06eb\u06e8\u06d8\u06da\u06d8\u06d9"

    goto :goto_1

    :sswitch_7
    const v8, 0x51c4676d

    const-string v0, "\u06dc\u06db\u06e8\u06d8\u06e6\u06e7\u06df\u06e4\u06e2\u06d8\u06eb\u06df\u06e8\u06d8\u06d9\u06e2\u06e6\u06d8\u06da\u06e0\u06e5\u06e1\u06db\u06e6\u06d8\u06d7\u06e8\u06e5\u06d8\u06e2\u06e5\u06e6\u06d8\u06d7\u06d7\u06db"

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v9

    xor-int/2addr v9, v8

    sparse-switch v9, :sswitch_data_2

    goto :goto_2

    :sswitch_8
    iget v0, p1, Lcom/cyjh/http/bean/response/RegCodeInfoResponse;->Code:I

    const/16 v9, 0xc8

    if-ne v0, v9, :cond_0

    const-string v0, "\u06da\u06eb\u06d8\u06e4\u06d9\u06dc\u06d8\u06eb\u06d8\u06e5\u06d8\u06e0\u06df\u06da\u06d8\u06e8\u06dc\u06e2\u06e5\u06e0\u06dc\u06d6\u06d8\u06dc\u06df\u06eb\u06eb\u06d6\u06e1\u06d8\u06dc\u06e8\u06e8\u06d6\u06d8\u06ec\u06e4\u06e1\u06d8\u06e5\u06e8\u06e5\u06dc\u06dc\u06d8\u06e4\u06ec\u06dc\u06ec\u06d7\u06e6"

    goto :goto_2

    :cond_0
    const-string v0, "\u06d9\u06d7\u06eb\u06e7\u06dc\u06d6\u06d8\u06e8\u06e2\u06d8\u06df\u06db\u06e1\u06d8\u06dc\u06d9\u06d6\u06df\u06df\u06d7\u06e7\u06db\u06e4\u06e7\u06ec\u06da\u06da\u06d7\u06db\u06df\u06e1"

    goto :goto_2

    :sswitch_9
    const-string v0, "\u06df\u06d8\u06e0\u06e4\u06d9\u06e4\u06e7\u06d8\u06e0\u06e7\u06df\u06d6\u06d8\u06e4\u06e4\u06e8\u06d8\u06df\u06e7\u06d6\u06d8\u06e7\u06d6\u06e7\u06d9\u06e6\u06e8\u06d6\u06e2\u06e0\u06eb\u06e5\u06e1\u06d8\u06e0\u06d9\u06da\u06e1\u06df\u06d9\u06db\u06d6\u06df\u06ec\u06e2\u06d6\u06d8\u06da\u06da\u06d9\u06e1\u06d8\u06e6\u06d8"

    goto :goto_2

    :sswitch_a
    const-string v0, "\u06dc\u06e7\u06dc\u06dc\u06e8\u06e0\u06e8\u06e8\u06d6\u06d7\u06da\u06e5\u06d7\u06dc\u06d8\u06ec\u06e0\u06e8\u06d8\u06d8\u06d7\u06e6\u06d8\u06e1\u06d9\u06df\u06e7\u06e5\u06e5\u06d8\u06db\u06db\u06e6\u06db\u06da\u06dc\u06dc\u06e0\u06e4"

    goto :goto_1

    :sswitch_b
    const-string v0, "\u06e8\u06e5\u06e7\u06d8\u06e0\u06da\u06e5\u06da\u06d9\u06e1\u06df\u06d8\u06d8\u06d8\u06e1\u06e5\u06d8\u06e1\u06e7\u06e1\u06e8\u06e4\u06da\u06d6\u06ec\u06d7\u06dc\u06ec\u06e1\u06e0\u06e4\u06e7\u06df\u06dc\u06d8\u06df\u06e2\u06e4\u06e6\u06e5\u06e4\u06d6\u06e7\u06dc\u06d8\u06d8\u06eb\u06dc\u06d8\u06e6\u06d8"

    goto :goto_1

    :sswitch_c
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/UnbindRegistrationCodeActivity$OooO00o;->OooO00o:Lcom/cyjh/elfin/ui/activity/UnbindRegistrationCodeActivity;

    const v2, 0x7f1002eb

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v0, "\u06e1\u06e2\u06d7\u06da\u06e1\u06d9\u06d6\u06ec\u06e1\u06d8\u06e5\u06d6\u06e1\u06d6\u06d7\u06db\u06e0\u06d6\u06e4\u06d8\u06e6\u06df\u06e1\u06da\u06d6\u06df\u06e7\u06e5\u06dc\u06e5\u06e1"

    move-object v6, v2

    goto :goto_0

    :sswitch_d
    const-string v0, "\u06e2\u06e5\u06e7\u06e2\u06dc\u06e4\u06db\u06e0\u06d7\u06db\u06d7\u06ec\u06e6\u06df\u06eb\u06ec\u06e4\u06db\u06d8\u06df\u06d9\u06e1\u06e6\u06d9\u06df\u06e1\u06dc\u06d8\u06e8\u06e6\u06dc\u06d8\u06d8\u06e8\u06d8\u06ec\u06d9\u06d9"

    move-object v5, v6

    goto :goto_0

    :sswitch_e
    const-string v0, "\u06d9\u06e4\u06e1\u06d8\u06e6\u06d7\u06e7\u06e4\u06eb\u06dc\u06e1\u06eb\u06d8\u06d8\u06da\u06dc\u06e8\u06d7\u06e0\u06dc\u06e8\u06e7\u06db\u06db\u06d8\u06dc\u06da\u06ec\u06ec\u06e5\u06e6\u06dc\u06d8\u06e6\u06df\u06e8\u06e5\u06d8\u06e7\u06d9\u06e8\u06d8\u06e0\u06dc\u06d6"

    move-object v4, v5

    goto :goto_0

    :sswitch_f
    const v2, 0x4c1e6593    # 4.1522764E7f

    const-string v0, "\u06e1\u06e1\u06eb\u06d7\u06e2\u06e0\u06e1\u06e2\u06e2\u06e6\u06d9\u06dc\u06d8\u06e6\u06dc\u06e6\u06d8\u06e0\u06e4\u06d6\u06d8\u06da\u06e4\u06dc\u06e6\u06d6\u06e6\u06e6\u06db\u06d7\u06e1\u06df\u06db\u06e6\u06e6\u06d8\u06e6\u06d8\u06e6\u06e0\u06d8\u06e8\u06d8\u06e2\u06d9\u06dc\u06e1\u06dc\u06e4\u06d8\u06dc\u06d6\u06d8"

    :goto_3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v8

    xor-int/2addr v8, v2

    sparse-switch v8, :sswitch_data_3

    goto :goto_3

    :sswitch_10
    const-string v0, "\u06eb\u06ec\u06e2\u06d8\u06e8\u06e4\u06e2\u06d9\u06db\u06e0\u06e2\u06dc\u06d8\u06d7\u06eb\u06e6\u06d8\u06e1\u06e5\u06e7\u06d8\u06eb\u06d7\u06e6\u06d8\u06ec\u06dc\u06df\u06e2\u06df\u06e1\u06d8\u06e6\u06e5\u06d9\u06d7\u06e8\u06db\u06da\u06d7\u06d8\u06eb\u06d6\u06d8\u06da\u06da\u06d6\u06d8\u06d8\u06ec\u06e7\u06df\u06e8\u06eb\u06d6\u06e8\u06e8\u06d8\u06e8\u06d7\u06da"

    goto :goto_0

    :sswitch_11
    const-string v0, "\u06e4\u06d8\u06e0\u06eb\u06d6\u06d9\u06ec\u06e6\u06e6\u06eb\u06d9\u06e7\u06da\u06d8\u06e8\u06ec\u06e5\u06d7\u06e4\u06da\u06df\u06db\u06e8\u06d8\u06e0\u06d6\u06e1\u06e8\u06d8\u06e2\u06e1\u06e7\u06d8\u06db\u06eb\u06e7\u06e6\u06e2\u06e6\u06d8\u06d7\u06da\u06e0\u06d6\u06ec\u06e6\u06dc\u06e0\u06e5\u06dc\u06e4\u06e0\u06d7\u06d7\u06df"

    goto :goto_3

    :sswitch_12
    const v8, 0x64f01bf2

    const-string v0, "\u06e6\u06d6\u06d9\u06e1\u06e2\u06db\u06e1\u06d6\u06d8\u06eb\u06db\u06dc\u06e7\u06ec\u06e7\u06da\u06e8\u06e7\u06d9\u06df\u06e1\u06d8\u06dc\u06e4\u06e8\u06d8\u06da\u06e0\u06df\u06e2\u06df\u06e7\u06e6\u06d8\u06d6\u06df\u06df\u06dc\u06d8"

    :goto_4
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v9

    xor-int/2addr v9, v8

    sparse-switch v9, :sswitch_data_4

    goto :goto_4

    :sswitch_13
    const-string v0, "\u06e2\u06e6\u06d6\u06e6\u06d8\u06e4\u06e5\u06d8\u06d6\u06d8\u06e5\u06d7\u06e7\u06d8\u06e8\u06df\u06e1\u06d9\u06d8\u06d9\u06e5\u06e1\u06d8\u06da\u06eb\u06dc\u06d8\u06d8\u06e0\u06e0\u06d6\u06dc\u06e7\u06d8\u06e7\u06dc\u06dc\u06e4\u06d6\u06e5\u06d8\u06eb\u06da\u06dc\u06d8\u06e7\u06e6\u06dc\u06d8\u06e1\u06db\u06e7\u06e6\u06eb\u06e8\u06dc\u06e8\u06db\u06e1\u06e6\u06ec"

    goto :goto_4

    :cond_1
    const-string v0, "\u06e8\u06e5\u06da\u06e6\u06e7\u06e0\u06d9\u06df\u06e6\u06d8\u06e2\u06e1\u06e2\u06df\u06db\u06d8\u06e2\u06e6\u06d8\u06e8\u06db\u06e0\u06d9\u06d7\u06d6\u06d8\u06d8\u06e7\u06e5\u06d8\u06d8\u06dc\u06d7\u06e1\u06e8\u06e2\u06eb\u06e2"

    goto :goto_4

    :sswitch_14
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "\u06e6\u06dc\u06e0\u06d9\u06df\u06d6\u06d7\u06e5\u06d6\u06d8\u06d7\u06e7\u06d8\u06e0\u06e8\u06da\u06eb\u06dc\u06e1\u06d8\u06ec\u06db\u06df\u06d9\u06e4\u06d7\u06d6\u06e6\u06d9\u06dc\u06db\u06db\u06e7\u06d9\u06db\u06e0\u06eb\u06e6\u06d8\u06e2\u06dc\u06e8\u06d8\u06e7\u06eb"

    goto :goto_4

    :sswitch_15
    const-string v0, "\u06d6\u06db\u06d9\u06e5\u06df\u06d9\u06d8\u06e5\u06e4\u06d8\u06e0\u06e5\u06e2\u06e5\u06db\u06e6\u06dc\u06d8\u06db\u06d7\u06e8\u06ec\u06da\u06d7\u06dc\u06e1\u06d8\u06da\u06e0\u06e1"

    goto :goto_3

    :sswitch_16
    const-string v0, "\u06e5\u06e0\u06d7\u06df\u06dc\u06d8\u06d8\u06d6\u06df\u06db\u06d9\u06eb\u06db\u06e6\u06e7\u06ec\u06e8\u06da\u06e6\u06d8\u06e0\u06e7\u06e4\u06dc\u06e6\u06d8\u06e4\u06d7\u06df\u06da\u06e7\u06da\u06df\u06ec\u06e8\u06dc\u06db\u06ec\u06e2\u06d7\u06dc\u06d6\u06d7\u06d8\u06da\u06d9\u06da\u06e4"

    goto :goto_3

    :sswitch_17
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u06d7\u06dc\u06ec\u06d8\u06e8\u06d6\u06e1\u06e1\u06e7\u06d9\u06e0\u06e1\u06d7\u06d9\u06e6\u06d8\u06d8\u06dc\u06db\u06e6\u06eb\u06e1\u06e6\u06e6\u06d8\u06e7\u06e1\u06e5\u06d8\u06db\u06e5\u06e8\u06d8\u06df\u06e4\u06e7\u06dc\u06d8\u06eb"

    move-object v3, v2

    goto/16 :goto_0

    :sswitch_18
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/UnbindRegistrationCodeActivity$OooO00o;->OooO00o:Lcom/cyjh/elfin/ui/activity/UnbindRegistrationCodeActivity;

    const v2, 0x7f10028f

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u06e8\u06d7\u06e1\u06e0\u06eb\u06e8\u06ec\u06d9\u06d7\u06dc\u06d6\u06d9\u06d8\u06ec\u06d7\u06d8\u06d6\u06d8\u06e0\u06d9\u06e0\u06e6\u06e6\u06e5\u06d8\u06e7\u06ec\u06df\u06d9\u06ec\u06d9\u06e5\u06e0\u06e2\u06d8\u06e5\u06e8\u06d9\u06df\u06d8\u06e1\u06e7\u06dc"

    goto/16 :goto_0

    :sswitch_19
    iget v0, p1, Lcom/cyjh/http/bean/response/RegCodeInfoResponse;->Code:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\u06eb\u06df\u06d8\u06da\u06e5\u06e5\u06d8\u06eb\u06d9\u06e6\u06e6\u06ec\u06d7\u06d8\u06d6\u06e4\u06e6\u06da\u06df\u06da\u06e1\u06d6\u06da\u06e6\u06e5\u06d8\u06db\u06eb\u06d6\u06d8\u06db\u06d8\u06e8\u06d8\u06e5\u06e4\u06dc\u06eb\u06e5\u06e1"

    goto/16 :goto_0

    :sswitch_1a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v0, "\u06e7\u06df\u06dc\u06d8\u06d8\u06e6\u06e5\u06e1\u06df\u06e5\u06d8\u06df\u06da\u06da\u06e0\u06e4\u06e5\u06d8\u06df\u06db\u06e7\u06e6\u06d7\u06d6\u06ec\u06dc\u06e1\u06d8\u06e4\u06e4\u06e6\u06d8\u06db\u06e2\u06da\u06e4\u06e2\u06d9\u06d6\u06df\u06e0\u06d9\u06dc\u06e7\u06e8\u06e6\u06eb\u06ec\u06e4\u06ec\u06e7\u06dc"

    goto/16 :goto_0

    :sswitch_1b
    const-string v0, "\u06da\u06db\u06ec\u06eb\u06ec\u06d8\u06d6\u06e6\u06da\u06e1\u06df\u06d8\u06dc\u06e8\u06dc\u06e0\u06db\u06dc\u06d8\u06dc\u06d6\u06e8\u06d7\u06e8\u06e1\u06d8\u06d7\u06da\u06e7\u06d9\u06da\u06e2\u06d9\u06ec\u06e6\u06d8\u06d8\u06df\u06d6\u06d8"

    move-object v4, v1

    goto/16 :goto_0

    :sswitch_1c
    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->OooO00o()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v0

    invoke-static {v0, v4}, Lz2/c5;->OooO0OO(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "\u06d6\u06d9\u06da\u06e0\u06e0\u06d9\u06db\u06eb\u06e5\u06d9\u06e8\u06da\u06e8\u06df\u06e1\u06df\u06e7\u06db\u06ec\u06da\u06e4\u06ec\u06e1\u06d9\u06db\u06d7\u06d6\u06e4\u06e0\u06e4\u06df\u06da\u06e6\u06e5\u06d7\u06db\u06e6\u06e2\u06e6\u06e2\u06e5\u06d6\u06d8\u06e2\u06eb\u06e1\u06d8\u06e7\u06e2\u06db\u06ec\u06d6\u06e1\u06e6\u06e0\u06e6\u06d8"

    goto/16 :goto_0

    :sswitch_1d
    const-string v0, "\u06e2\u06e5\u06e7\u06e2\u06dc\u06e4\u06db\u06e0\u06d7\u06db\u06d7\u06ec\u06e6\u06df\u06eb\u06ec\u06e4\u06db\u06d8\u06df\u06d9\u06e1\u06e6\u06d9\u06df\u06e1\u06dc\u06d8\u06e8\u06e6\u06dc\u06d8\u06d8\u06e8\u06d8\u06ec\u06d9\u06d9"

    goto/16 :goto_0

    :sswitch_1e
    const-string v0, "\u06da\u06db\u06ec\u06eb\u06ec\u06d8\u06d6\u06e6\u06da\u06e1\u06df\u06d8\u06dc\u06e8\u06dc\u06e0\u06db\u06dc\u06d8\u06dc\u06d6\u06e8\u06d7\u06e8\u06e1\u06d8\u06d7\u06da\u06e7\u06d9\u06da\u06e2\u06d9\u06ec\u06e6\u06d8\u06d8\u06df\u06d6\u06d8"

    goto/16 :goto_0

    :sswitch_1f
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7eeb94c8 -> :sswitch_0
        -0x58edaba3 -> :sswitch_1f
        -0x43aaaae4 -> :sswitch_1c
        -0x40f94e93 -> :sswitch_19
        -0x388a7b78 -> :sswitch_d
        -0x10322975 -> :sswitch_18
        -0xae664c2 -> :sswitch_c
        0x4863fd1 -> :sswitch_17
        0x108f65be -> :sswitch_3
        0x1e908579 -> :sswitch_e
        0x457d01b5 -> :sswitch_1
        0x488221b7 -> :sswitch_2
        0x59a7ed4c -> :sswitch_1b
        0x5d97cdf8 -> :sswitch_f
        0x68080dec -> :sswitch_4
        0x7f58b13d -> :sswitch_1a
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0xcda8007 -> :sswitch_7
        0x24f10942 -> :sswitch_b
        0x705f23db -> :sswitch_5
        0x7ae3aa13 -> :sswitch_1d
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        -0x6335a636 -> :sswitch_a
        0x166c50ac -> :sswitch_8
        0x3a42ec7d -> :sswitch_6
        0x6e5cc787 -> :sswitch_9
    .end sparse-switch

    :sswitch_data_3
    .sparse-switch
        -0x722700bb -> :sswitch_1e
        -0x53498e4d -> :sswitch_16
        -0x4660762e -> :sswitch_12
        -0xb007b91 -> :sswitch_10
    .end sparse-switch

    :sswitch_data_4
    .sparse-switch
        -0x7c8d3051 -> :sswitch_13
        -0x53c82b40 -> :sswitch_15
        -0x221c4b01 -> :sswitch_11
        0x6632823b -> :sswitch_14
    .end sparse-switch
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "\u06e2\u06e4\u06e8\u06d8\u06e5\u06db\u06df\u06d6\u06e6\u06ec\u06d7\u06e5\u06e4\u06dc\u06d9\u06dc\u06d8\u06e8\u06db\u06e0\u06e6\u06e1\u06e7\u06e2\u06d6\u06d8\u06e5\u06e2\u06db\u06da\u06d7\u06da\u06e7\u06d8\u06e2\u06e5\u06e5\u06ec\u06e8\u06da\u06e1\u06d6\u06d9\u06ec\u06d9\u06e7\u06e2\u06df\u06db\u06dc"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x56

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0xed

    const/16 v2, 0x3b4

    const v3, 0x76974f7d

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d8\u06d8\u06d7\u06d9\u06e1\u06d7\u06e0\u06dc\u06ec\u06e7\u06e4\u06d9\u06d7\u06dc\u06e8\u06e4\u06ec\u06eb\u06e1\u06da\u06db\u06e5\u06db\u06e8\u06d8\u06dc\u06e0\u06da\u06df\u06db\u06e8\u06e5\u06d7\u06df\u06dc\u06d6"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06e7\u06e2\u06e6\u06d6\u06d8\u06e6\u06ec\u06e8\u06ec\u06d9\u06dc\u06ec\u06e5\u06db\u06e5\u06d8\u06e8\u06d7\u06df\u06d9\u06e6\u06d8\u06dc\u06e8\u06e0\u06db\u06da\u06d6\u06d6\u06e1\u06d8\u06d8\u06d8\u06d6\u06d8\u06e1\u06df\u06e4\u06d6\u06e5\u06e0\u06e6\u06d6\u06e7\u06d8\u06e5\u06e2\u06e8\u06e8\u06e6\u06e5\u06d8"

    goto :goto_0

    :sswitch_2
    move-object v0, p1

    check-cast v0, Lcom/cyjh/http/bean/response/RegCodeInfoResponse;

    invoke-virtual {p0, v0}, Lcom/cyjh/elfin/ui/activity/UnbindRegistrationCodeActivity$OooO00o;->OooO00o(Lcom/cyjh/http/bean/response/RegCodeInfoResponse;)V

    const-string v0, "\u06e4\u06df\u06e1\u06da\u06e1\u06eb\u06e4\u06d8\u06e4\u06e0\u06dc\u06d6\u06ec\u06e5\u06e8\u06d8\u06d9\u06e7\u06e6\u06df\u06e0\u06d6\u06d8\u06e1\u06dc\u06e5\u06e4\u06e6\u06ec\u06d7\u06e5\u06e1\u06d8\u06e2\u06d9\u06df\u06e0\u06ec\u06d6\u06e8\u06ec\u06da\u06d9\u06ec\u06ec\u06e5\u06e7\u06dc\u06e2\u06ec\u06dc\u06ec\u06d6\u06df\u06e0\u06e7"

    goto :goto_0

    :sswitch_3
    return-void

    :sswitch_data_0
    .sparse-switch
        0x459f008 -> :sswitch_2
        0x1ee5f65f -> :sswitch_1
        0x4f17abe9 -> :sswitch_0
        0x75f49342 -> :sswitch_3
    .end sparse-switch
.end method
