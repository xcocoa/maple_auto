.class public Lcom/cyjh/elfin/ui/activity/UnbindRegistrationCodeActivity;
.super Lcom/cyjh/common/base/activity/BaseModelActivity;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyjh/elfin/ui/activity/UnbindRegistrationCodeActivity$OooO0OO;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/cyjh/common/base/activity/BaseModelActivity",
        "<",
        "Lz2/ra;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# static fields
.field private static final o00O0O:I = 0x2

.field public static final o00Oo0:I = 0x3ea


# instance fields
.field private OooooOO:Landroid/os/Handler;

.field private OooooOo:Ljava/lang/String;

.field private Oooooo:Landroid/widget/EditText;

.field private Oooooo0:Ljava/lang/String;

.field private OoooooO:Z

.field private Ooooooo:Landroid/widget/TextView;

.field private o0OoOo0:Landroid/widget/Button;

.field private ooOO:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/cyjh/common/base/activity/BaseModelActivity;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/UnbindRegistrationCodeActivity;->OooooOO:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cyjh/elfin/ui/activity/UnbindRegistrationCodeActivity;->OoooooO:Z

    return-void
.end method

.method public static synthetic OooOO0(Lcom/cyjh/elfin/ui/activity/UnbindRegistrationCodeActivity;Z)Z
    .locals 4

    const-string v0, "\u06db\u06e1\u06e5\u06dc\u06e8\u06db\u06e5\u06db\u06da\u06e6\u06d8\u06eb\u06df\u06e8\u06df\u06d6\u06eb\u06d7\u06d9\u06ec\u06e5\u06e8\u06e8\u06e5\u06d6\u06d8\u06e4\u06eb\u06e1\u06e0\u06e7\u06eb\u06d9\u06e6\u06d6\u06e7\u06ec\u06d8\u06df\u06e5\u06e2\u06d9"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x23d

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0xc1

    const/16 v2, 0xe4

    const v3, -0x28ca5094

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06df\u06d9\u06dc\u06e0\u06d9\u06e7\u06e6\u06db\u06d6\u06e2\u06e8\u06e1\u06d8\u06d8\u06df\u06df\u06e2\u06e6\u06d6\u06e7\u06d6\u06d7\u06ec\u06e2\u06e0\u06da\u06d8\u06d8\u06d9\u06ec\u06e5\u06d8\u06eb\u06e2\u06dc\u06d8\u06e7\u06e4\u06e5\u06d8\u06e2\u06db\u06ec\u06e6\u06e8\u06eb"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06da\u06d6\u06e8\u06d8\u06df\u06eb\u06ec\u06e7\u06dc\u06d6\u06d8\u06e0\u06ec\u06da\u06d9\u06e1\u06e6\u06dc\u06e8\u06e5\u06d9\u06e1\u06d9\u06df\u06e7\u06e6\u06d8\u06d8\u06e5\u06ec\u06e6\u06e6\u06da\u06e1\u06dc\u06e8\u06e7\u06d8\u06eb"

    goto :goto_0

    :sswitch_2
    iput-boolean p1, p0, Lcom/cyjh/elfin/ui/activity/UnbindRegistrationCodeActivity;->OoooooO:Z

    const-string v0, "\u06d7\u06eb\u06e8\u06df\u06e8\u06e5\u06e4\u06ec\u06d8\u06e0\u06e6\u06df\u06d9\u06eb\u06e1\u06db\u06eb\u06df\u06e0\u06e5\u06df\u06e4\u06e6\u06e5\u06e5\u06e7\u06da\u06e4\u06ec\u06e2\u06ec\u06e6\u06d8\u06eb\u06e6\u06e5\u06d8\u06e1\u06e4\u06e6\u06d8\u06d7\u06d9\u06e7\u06e2\u06da\u06e1\u06d8\u06d6\u06e1\u06e7"

    goto :goto_0

    :sswitch_3
    return p1

    :sswitch_data_0
    .sparse-switch
        -0x67dcd0a1 -> :sswitch_1
        -0x618f8527 -> :sswitch_3
        -0x2de1559f -> :sswitch_2
        0x40a1bea3 -> :sswitch_0
    .end sparse-switch
.end method

.method private OooOO0O()V
    .locals 9

    const/4 v2, 0x0

    const/4 v4, 0x0

    const-string v0, "\u06d9\u06d9\u06e6\u06d8\u06e0\u06db\u06d9\u06db\u06da\u06e7\u06dc\u06e2\u06e2\u06e0\u06dc\u06d8\u06d9\u06eb\u06d9\u06e8\u06d6\u06d9\u06d8\u06e0\u06d6\u06d8\u06db\u06d9\u06d6\u06e2\u06e6\u06dc\u06d9\u06e8\u06db\u06ec\u06e8\u06d8"

    move v1, v2

    move-object v3, v4

    move-object v5, v4

    move-object v6, v4

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/16 v7, 0x39e

    xor-int/2addr v4, v7

    xor-int/lit16 v4, v4, 0x341

    const/16 v7, 0x7e

    const v8, 0x6fc4802b

    xor-int/2addr v4, v7

    xor-int/2addr v4, v8

    sparse-switch v4, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d7\u06e8\u06e6\u06e7\u06e2\u06df\u06e0\u06e4\u06ec\u06e0\u06e1\u06e0\u06da\u06dc\u06e6\u06d8\u06e0\u06d8\u06da\u06da\u06e0\u06d9\u06e6\u06db\u06db\u06e6\u06dc\u06ec\u06d9\u06d8\u06d6\u06d8"

    goto :goto_0

    :sswitch_1
    const v4, 0x61554617

    const-string v0, "\u06e5\u06e8\u06e8\u06d8\u06e0\u06d8\u06d8\u06e8\u06e5\u06e6\u06d8\u06dc\u06e7\u06da\u06d6\u06dc\u06d6\u06d8\u06d7\u06d6\u06eb\u06d8\u06e5\u06db\u06d6\u06e4\u06ec\u06d9\u06d8\u06e6\u06d7\u06e7\u06e0\u06e4\u06e7\u06d9\u06e6\u06eb\u06e1\u06d8\u06da\u06df\u06e4\u06e6\u06dc\u06da\u06d6\u06ec\u06e2\u06e0\u06e7\u06e5\u06e2\u06e5\u06e6\u06e5\u06d6\u06d8\u06d8"

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v7

    xor-int/2addr v7, v4

    sparse-switch v7, :sswitch_data_1

    goto :goto_1

    :sswitch_2
    const-string v0, "\u06e0\u06e4\u06d8\u06d8\u06e8\u06ec\u06e1\u06db\u06d6\u06eb\u06dc\u06e5\u06ec\u06e5\u06e7\u06d8\u06ec\u06e6\u06da\u06d6\u06df\u06df\u06da\u06e5\u06e2\u06e4\u06db\u06e6\u06d7\u06da\u06e0\u06e6\u06e6\u06e5\u06e1\u06e6\u06e0\u06dc\u06dc\u06e7\u06e8\u06e6\u06e5\u06d8\u06d9\u06ec\u06e0\u06d8\u06ec\u06da"

    goto :goto_0

    :sswitch_3
    const-string v0, "\u06db\u06d7\u06d9\u06d9\u06d7\u06df\u06d9\u06d8\u06e5\u06e7\u06d8\u06e6\u06ec\u06e1\u06da\u06d8\u06e8\u06da\u06da\u06db\u06d8\u06e0\u06eb\u06e2\u06df\u06e2\u06eb\u06e7\u06d7\u06e5\u06e7\u06d6\u06e8\u06d8\u06eb\u06d9\u06e2\u06e2\u06e8\u06e5\u06db\u06e5\u06e2\u06eb\u06db\u06e1\u06d8\u06e7\u06d8\u06eb"

    goto :goto_1

    :sswitch_4
    const v7, -0x144116c7

    const-string v0, "\u06e7\u06e4\u06dc\u06e6\u06e8\u06e2\u06db\u06d6\u06d8\u06ec\u06e7\u06ec\u06e2\u06db\u06dc\u06df\u06d7\u06e5\u06d8\u06d8\u06ec\u06dc\u06df\u06eb\u06dc\u06d8\u06df\u06eb\u06d8\u06e5\u06ec\u06e1\u06d8\u06da\u06df\u06dc\u06d8\u06e1\u06df\u06dc\u06d8\u06d9\u06d6\u06ec\u06ec\u06df\u06e5\u06df\u06d9\u06e2\u06da\u06e4\u06e6\u06d8"

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v8

    xor-int/2addr v8, v7

    sparse-switch v8, :sswitch_data_2

    goto :goto_2

    :sswitch_5
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/UnbindRegistrationCodeActivity;->OooooOo:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "\u06d8\u06ec\u06df\u06e6\u06da\u06eb\u06d6\u06e2\u06d8\u06dc\u06e7\u06e1\u06d8\u06e4\u06e6\u06e6\u06e6\u06e0\u06e5\u06da\u06e1\u06d8\u06e2\u06e5\u06d8\u06d7\u06d9\u06d6\u06d8\u06ec\u06e8\u06e2\u06d9\u06dc\u06db\u06e7\u06db\u06e5\u06e7\u06e7\u06da\u06d7\u06e6\u06d8\u06d8\u06d9\u06e4\u06d9\u06e6\u06e7\u06e4\u06e0\u06e1\u06e6\u06d8\u06e6\u06eb\u06db"

    goto :goto_2

    :cond_0
    const-string v0, "\u06e7\u06e4\u06e7\u06e2\u06da\u06d6\u06e0\u06db\u06e8\u06dc\u06eb\u06e8\u06d8\u06dc\u06dc\u06d8\u06d6\u06e1\u06e8\u06e7\u06e2\u06e5\u06d8\u06d6\u06d9\u06e6\u06e6\u06e4\u06d9\u06d8\u06d9\u06da\u06eb\u06d8\u06e7\u06d8\u06d8\u06df\u06ec\u06ec\u06da\u06d8\u06db\u06da\u06e8"

    goto :goto_2

    :sswitch_6
    const-string v0, "\u06e5\u06e4\u06e1\u06d8\u06d9\u06da\u06eb\u06e5\u06e0\u06e8\u06e8\u06d6\u06e0\u06d9\u06d9\u06d7\u06d8\u06e0\u06e0\u06e2\u06df\u06d9\u06e7\u06e6\u06e4\u06e7\u06e7\u06e6\u06dc\u06e2\u06e2\u06da\u06d6\u06d8\u06d8\u06d7\u06e4\u06d9\u06da\u06e7\u06d9\u06e7\u06df\u06e6\u06eb\u06e2\u06db\u06db\u06d7\u06d6\u06e8\u06e8\u06e1\u06df"

    goto :goto_2

    :sswitch_7
    const-string v0, "\u06eb\u06df\u06df\u06e2\u06e2\u06d8\u06d8\u06ec\u06e5\u06e6\u06d8\u06e2\u06da\u06d8\u06d9\u06d8\u06d8\u06e1\u06ec\u06e2\u06e1\u06db\u06df\u06df\u06d9\u06da\u06eb\u06eb\u06e5\u06d8\u06e6\u06e7\u06e2\u06da\u06eb\u06d6\u06e0\u06db\u06e1\u06df\u06e0\u06eb\u06e7\u06e6\u06e1\u06eb\u06db\u06e4\u06e6\u06e6\u06d6\u06d8"

    goto :goto_1

    :sswitch_8
    const-string v0, "\u06da\u06df\u06d6\u06d8\u06eb\u06e1\u06ec\u06e2\u06e1\u06e7\u06e5\u06e0\u06da\u06dc\u06e1\u06e5\u06d9\u06da\u06df\u06d8\u06e4\u06db\u06e1\u06e5\u06e5\u06d7\u06eb\u06e6\u06d8\u06db\u06d9\u06e1\u06d8\u06e0\u06d7\u06e5\u06d8\u06eb\u06dc\u06e8\u06d8\u06d9\u06da\u06da\u06e5\u06dc\u06e2\u06ec\u06df\u06e8\u06e4\u06e1\u06e1\u06d8\u06da\u06d8\u06e8\u06e6\u06da\u06e5\u06d8"

    goto :goto_1

    :sswitch_9
    const-string v0, "\u06e5\u06e6\u06da\u06e7\u06e0\u06e6\u06d8\u06e2\u06da\u06e1\u06e8\u06eb\u06d9\u06e0\u06d8\u06d8\u06e7\u06e7\u06da\u06e2\u06e2\u06e6\u06d8\u06df\u06ec\u06d7\u06db\u06df\u06dc\u06d8\u06e0\u06e1\u06e1\u06d8\u06d6\u06e6\u06db\u06d7\u06d7\u06db\u06ec\u06db\u06da\u06dc\u06d9\u06db\u06e1\u06e7\u06e0\u06e4\u06e4\u06da\u06e7\u06d8\u06e5\u06d8\u06d6\u06d6\u06dc\u06d8"

    goto :goto_0

    :sswitch_a
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/UnbindRegistrationCodeActivity;->Oooooo:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/cyjh/elfin/ui/activity/UnbindRegistrationCodeActivity;->OooooOo:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "\u06e0\u06e4\u06d8\u06d8\u06e8\u06ec\u06e1\u06db\u06d6\u06eb\u06dc\u06e5\u06ec\u06e5\u06e7\u06d8\u06ec\u06e6\u06da\u06d6\u06df\u06df\u06da\u06e5\u06e2\u06e4\u06db\u06e6\u06d7\u06da\u06e0\u06e6\u06e6\u06e5\u06e1\u06e6\u06e0\u06dc\u06dc\u06e7\u06e8\u06e6\u06e5\u06d8\u06d9\u06ec\u06e0\u06d8\u06ec\u06da"

    goto :goto_0

    :sswitch_b
    invoke-static {}, Lz2/m7;->OooO0o0()Lz2/m7;

    move-result-object v0

    iget v0, v0, Lz2/m7;->OooOOO0:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string v0, "\u06e1\u06e8\u06d9\u06db\u06ec\u06df\u06d6\u06d6\u06e1\u06e8\u06d7\u06dc\u06dc\u06e7\u06e1\u06d8\u06eb\u06eb\u06e6\u06d8\u06e0\u06dc\u06d7\u06e6\u06d6\u06db\u06e5\u06dc\u06ec\u06d6\u06e1\u06e5\u06d8\u06df\u06df\u06d8\u06d7\u06e5\u06d7\u06e0\u06da\u06dc\u06da\u06d7\u06e6\u06d7\u06df\u06d8\u06e4\u06e2\u06e0"

    move-object v6, v4

    goto :goto_0

    :sswitch_c
    const v0, 0x7f1002e9

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v6, v4, v2

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "\u06ec\u06e4\u06e0\u06eb\u06ec\u06d8\u06e5\u06d6\u06d6\u06d8\u06e0\u06db\u06d6\u06e6\u06df\u06d9\u06dc\u06d6\u06da\u06d8\u06eb\u06ec\u06e0\u06e6\u06e5\u06d8\u06da\u06e2\u06e7\u06e7\u06e7\u06e8"

    move-object v5, v4

    goto :goto_0

    :sswitch_d
    new-instance v3, Landroid/text/SpannableString;

    invoke-direct {v3, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const-string v0, "\u06e2\u06e8\u06e7\u06d8\u06da\u06df\u06db\u06da\u06d6\u06dc\u06d8\u06db\u06e1\u06e4\u06e4\u06ec\u06d6\u06dc\u06ec\u06db\u06e4\u06e5\u06e8\u06d6\u06e5\u06e7\u06d6\u06d7\u06db\u06e0\u06da\u06d7\u06d7\u06e4\u06dc\u06d8\u06e1\u06d8\u06dc"

    goto/16 :goto_0

    :sswitch_e
    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const-string v0, "\u06dc\u06da\u06d9\u06eb\u06e6\u06e6\u06d8\u06dc\u06ec\u06eb\u06df\u06d7\u06ec\u06df\u06db\u06db\u06df\u06ec\u06dc\u06e7\u06e4\u06e2\u06eb\u06e8\u06d6\u06d8\u06d8\u06e7\u06d6\u06d8\u06e8\u06e1\u06e8\u06d8\u06da\u06df\u06d6\u06e8\u06d9\u06e6\u06e7\u06d8\u06e0\u06d8\u06e6\u06d8\u06dc\u06d9\u06da\u06d8\u06e5\u06e5\u06d8"

    goto/16 :goto_0

    :sswitch_f
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    const-string v4, "#FF4948"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v0, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v1

    add-int/lit8 v4, v4, 0x2

    const/16 v7, 0x11

    invoke-virtual {v3, v0, v1, v4, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    const-string v0, "\u06d7\u06da\u06db\u06e4\u06df\u06e2\u06df\u06e0\u06e6\u06e7\u06e4\u06e7\u06e5\u06e0\u06df\u06e0\u06eb\u06e2\u06e0\u06e2\u06db\u06d9\u06db\u06df\u06db\u06d6\u06e1\u06e1\u06e5\u06dc\u06e5\u06e4\u06e7\u06e2\u06e6\u06e4"

    goto/16 :goto_0

    :sswitch_10
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/UnbindRegistrationCodeActivity;->Ooooooo:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "\u06d7\u06e5\u06d9\u06e4\u06e8\u06df\u06da\u06dc\u06ec\u06e6\u06df\u06e5\u06e2\u06e4\u06dc\u06d9\u06e1\u06d8\u06d8\u06d9\u06e4\u06d6\u06d8\u06dc\u06e1\u06e5\u06d8\u06dc\u06e1\u06e6\u06df\u06eb\u06e8\u06da\u06ec\u06d8\u06e1\u06e7\u06e6\u06d8\u06e2\u06e1\u06d8\u06d6\u06d7\u06e5\u06e7\u06dc\u06e1\u06d8\u06e8\u06e0\u06df"

    goto/16 :goto_0

    :sswitch_11
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/UnbindRegistrationCodeActivity;->o0OoOo0:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "\u06ec\u06e6\u06e2\u06e8\u06e8\u06e1\u06da\u06da\u06e7\u06e5\u06e1\u06ec\u06e2\u06e1\u06d8\u06d8\u06d7\u06e6\u06d8\u06e1\u06e6\u06e5\u06d8\u06d8\u06e7\u06db\u06e7\u06d7\u06e6\u06d7\u06d6\u06e7\u06e4\u06d6\u06da\u06d7\u06da\u06e4"

    goto/16 :goto_0

    :sswitch_12
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/UnbindRegistrationCodeActivity;->ooOO:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "\u06df\u06db\u06e0\u06e6\u06e2\u06d8\u06d8\u06eb\u06d7\u06e5\u06d8\u06e8\u06e6\u06d8\u06e5\u06d7\u06e4\u06d8\u06e0\u06d6\u06df\u06e4\u06ec\u06e2\u06e2\u06df\u06e6\u06ec\u06e0\u06e4\u06eb\u06db\u06d8\u06d8\u06e0\u06ec\u06e0\u06e8\u06d8\u06d7\u06eb\u06d8\u06d8\u06e2\u06eb\u06e2\u06e6\u06eb\u06e7\u06d9\u06e5\u06da"

    goto/16 :goto_0

    :sswitch_13
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7d06ec05 -> :sswitch_c
        -0x4ad28945 -> :sswitch_f
        -0x26ab7830 -> :sswitch_0
        -0x175f49e4 -> :sswitch_b
        -0xb81b60a -> :sswitch_1
        0x833648 -> :sswitch_11
        0x3b863a8 -> :sswitch_d
        0x1a37620e -> :sswitch_e
        0x1d4546bf -> :sswitch_10
        0x2a983bfc -> :sswitch_13
        0x2d58009d -> :sswitch_12
        0x7dc35922 -> :sswitch_a
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x60ca8b1b -> :sswitch_8
        -0x52916b9f -> :sswitch_9
        0x51584162 -> :sswitch_4
        0x64445a7d -> :sswitch_2
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        -0x7ca17016 -> :sswitch_6
        -0x587ce72c -> :sswitch_7
        -0x480d69b6 -> :sswitch_5
        0x5e9e1549 -> :sswitch_3
    .end sparse-switch
.end method


# virtual methods
.method public OooO()V
    .locals 4

    const-string v0, "\u06e6\u06dc\u06e5\u06ec\u06df\u06e8\u06d6\u06e6\u06e5\u06d8\u06d9\u06d7\u06eb\u06df\u06e7\u06d6\u06d8\u06e8\u06e7\u06dc\u06d8\u06e7\u06d9\u06df\u06e0\u06e2\u06da\u06e0\u06e6\u06e6\u06da\u06df\u06da\u06e5\u06e2\u06df\u06e7\u06d9\u06d8\u06d8\u06da\u06db\u06e6\u06e7\u06e8\u06d7\u06e0\u06d8\u06d6\u06df\u06e6\u06eb\u06ec\u06e0\u06d6\u06d8\u06e4\u06e0\u06e2"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x1d7

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x2a1

    const/16 v2, 0x89

    const v3, -0x7b88680

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e1\u06df\u06e5\u06db\u06e6\u06dc\u06db\u06e8\u06e0\u06df\u06dc\u06e5\u06d8\u06e0\u06d8\u06df\u06e5\u06e5\u06df\u06d8\u06e7\u06df\u06d9\u06e6\u06dc\u06d6\u06e8\u06e7\u06d8\u06e0\u06d9\u06dc\u06d8\u06e8\u06d8\u06d7\u06df\u06d8\u06d8\u06e8\u06d9\u06d6\u06d8\u06db\u06dc\u06e5\u06d7\u06ec\u06df\u06e2\u06d7\u06db\u06df\u06da\u06e6\u06d8\u06e0\u06eb\u06dc"

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/cyjh/common/base/activity/BaseModelActivity;->OooooO0:Landroidx/lifecycle/AndroidViewModel;

    check-cast v0, Lz2/ra;

    invoke-virtual {v0}, Lz2/ra;->OooOo00()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/cyjh/elfin/ui/activity/UnbindRegistrationCodeActivity$OooO00o;

    invoke-direct {v1, p0}, Lcom/cyjh/elfin/ui/activity/UnbindRegistrationCodeActivity$OooO00o;-><init>(Lcom/cyjh/elfin/ui/activity/UnbindRegistrationCodeActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    const-string v0, "\u06ec\u06df\u06d9\u06da\u06eb\u06d9\u06d8\u06e8\u06d8\u06d9\u06e8\u06e4\u06e7\u06d7\u06e2\u06ec\u06dc\u06e0\u06ec\u06dc\u06e4\u06eb\u06dc\u06df\u06d7\u06db\u06d7\u06da\u06e2\u06e6\u06eb\u06e8\u06da\u06db\u06e1\u06d8\u06e7\u06e2\u06ec\u06e2\u06eb\u06e5\u06d8\u06eb\u06dc\u06e0\u06ec\u06ec\u06e1\u06d8\u06d7\u06da\u06dc\u06e2\u06e4\u06e7"

    goto :goto_0

    :sswitch_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x742b54cf -> :sswitch_0
        0x13dd4473 -> :sswitch_2
        0x398c0688 -> :sswitch_1
    .end sparse-switch
.end method

.method public OooO0oO()I
    .locals 4

    const-string v0, "\u06da\u06e2\u06dc\u06d8\u06e7\u06e7\u06e1\u06e2\u06db\u06d7\u06d8\u06e6\u06d9\u06e7\u06e7\u06d6\u06d8\u06d8\u06e0\u06d9\u06db\u06df\u06e6\u06d8\u06e2\u06d6\u06e1\u06d8\u06d7\u06dc\u06d8\u06d9\u06e8\u06e8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0xae

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x20a

    const/16 v2, 0x133

    const v3, 0x2fdabe42

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d9\u06dc\u06eb\u06da\u06e1\u06e7\u06d9\u06db\u06e6\u06d8\u06e5\u06d8\u06e5\u06d6\u06e6\u06eb\u06ec\u06e7\u06e8\u06d8\u06e1\u06d6\u06e8\u06db\u06e8\u06da\u06d8\u06e4\u06e2\u06db\u06d8\u06db\u06e7\u06d7\u06e5\u06e0\u06db\u06e7\u06eb\u06e5\u06e6\u06d8\u06e4\u06d6\u06e1\u06d8\u06d8\u06eb\u06d8\u06e8\u06d6\u06d8"

    goto :goto_0

    :sswitch_1
    const v0, 0x7f0c0035

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5f7a1a87 -> :sswitch_0
        -0x2758507a -> :sswitch_1
    .end sparse-switch
.end method

.method public OooO0oo()Ljava/lang/Class;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Lz2/ra;",
            ">;"
        }
    .end annotation

    const-string v0, "\u06e4\u06db\u06d6\u06e4\u06e1\u06d8\u06d8\u06d9\u06e7\u06e2\u06d8\u06da\u06e4\u06e1\u06d8\u06d7\u06da\u06e4\u06d6\u06eb\u06e7\u06e6\u06db\u06e6\u06db\u06db\u06e2\u06eb\u06e7\u06e4\u06db\u06e7\u06e5\u06d8\u06e4\u06d6\u06dc\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x384

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x3e8

    const/16 v2, 0x233

    const v3, -0x494e9834

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d6\u06d7\u06e1\u06e4\u06db\u06e6\u06e1\u06e7\u06d8\u06e1\u06dc\u06e5\u06d8\u06db\u06e1\u06e4\u06d6\u06da\u06df\u06db\u06df\u06d8\u06d8\u06e4\u06e7\u06df\u06df\u06e1\u06da\u06e4\u06e0\u06e6\u06d8\u06d9\u06dc\u06e6\u06d8\u06e5\u06e4\u06e1"

    goto :goto_0

    :sswitch_1
    const-class v0, Lz2/ra;

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x25438a41 -> :sswitch_0
        0x6fa7c082 -> :sswitch_1
    .end sparse-switch
.end method

.method public initView()V
    .locals 6

    const/4 v3, 0x0

    const-string v0, "\u06e0\u06e6\u06e4\u06d9\u06dc\u06d8\u06e8\u06e7\u06dc\u06d8\u06d7\u06da\u06d7\u06eb\u06e0\u06e4\u06e5\u06e8\u06db\u06dc\u06e0\u06d6\u06dc\u06d7\u06e0\u06d6\u06e5\u06dc\u06d8\u06d9\u06d6\u06e5\u06e4\u06eb\u06e5\u06ec\u06ec\u06e5"

    move-object v1, v0

    move-object v2, v3

    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v4, 0xb6

    xor-int/2addr v0, v4

    xor-int/lit16 v0, v0, 0x13c

    const/16 v4, 0x2f3

    const v5, -0x423a5575

    xor-int/2addr v0, v4

    xor-int/2addr v0, v5

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d6\u06e7\u06e1\u06e8\u06eb\u06da\u06d8\u06ec\u06db\u06e5\u06d8\u06e4\u06e0\u06d8\u06d6\u06d8\u06e0\u06e1\u06e8\u06d8\u06e2\u06e6\u06e7\u06d8\u06d9\u06d7\u06d7\u06df\u06e4\u06d8\u06e7\u06e5\u06e7\u06d8\u06e2\u06d7\u06d8\u06e7\u06ec\u06e5\u06d8\u06d8\u06d9\u06d6\u06dc\u06e1\u06e5\u06d9\u06e4\u06da\u06e5\u06da\u06d6\u06d8\u06d6\u06e4\u06eb\u06dc\u06da\u06d7"

    move-object v1, v0

    goto :goto_0

    :sswitch_1
    const v0, 0x7f0902f0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cyjh/elfin/ui/view/customview/TitleView;

    const-string v1, "\u06e0\u06d9\u06d8\u06d8\u06e7\u06e4\u06e2\u06d7\u06e5\u06e1\u06e7\u06da\u06eb\u06d7\u06d8\u06e6\u06d6\u06da\u06df\u06e2\u06e8\u06d8\u06e8\u06df\u06e8\u06d8\u06ec\u06db\u06e5\u06e1\u06db\u06e7\u06dc\u06e1\u06d8\u06da\u06d8"

    move-object v2, v0

    goto :goto_0

    :sswitch_2
    const v0, 0x7f100234

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setTitleText(Ljava/lang/String;)V

    const-string v0, "\u06d7\u06d9\u06e0\u06d6\u06eb\u06d6\u06d8\u06e4\u06e1\u06d6\u06d8\u06d8\u06dc\u06da\u06e4\u06d9\u06e8\u06d8\u06e6\u06db\u06dc\u06d8\u06e0\u06e0\u06ec\u06e8\u06ec\u06e1\u06df\u06df\u06e7\u06da\u06d7\u06d8\u06d8\u06e2\u06df\u06ec\u06da\u06e1\u06eb\u06db\u06d6\u06da\u06db\u06d7\u06e7\u06e2\u06d8\u06db\u06e7\u06e4\u06df\u06df\u06df\u06d6\u06e2\u06e6\u06d8"

    move-object v1, v0

    goto :goto_0

    :sswitch_3
    const/4 v0, 0x4

    invoke-virtual {v2, v0}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setVisibilityRightImage(I)V

    const-string v0, "\u06d6\u06e5\u06e4\u06d6\u06d8\u06d7\u06e1\u06e0\u06e6\u06e1\u06dc\u06e8\u06d6\u06e4\u06d6\u06db\u06d9\u06e8\u06da\u06e5\u06da\u06ec\u06e0\u06e6\u06ec\u06d6\u06eb\u06eb\u06e5\u06d8\u06e0\u06e8\u06e5\u06d7\u06ec\u06e4\u06db\u06e0\u06e5\u06d8\u06df\u06e6\u06e5\u06df\u06d6\u06e6\u06d8\u06d7\u06ec\u06d8\u06e1\u06e6\u06d7\u06e4\u06e0\u06e1"

    move-object v1, v0

    goto :goto_0

    :sswitch_4
    const v0, 0x7f0801c9

    invoke-virtual {v2, v0}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setleftImage(I)V

    const-string v0, "\u06e7\u06d7\u06e4\u06df\u06e2\u06db\u06e6\u06da\u06d8\u06d8\u06e2\u06df\u06e0\u06dc\u06e1\u06e7\u06e1\u06e0\u06e0\u06e4\u06e6\u06e0\u06e8\u06d7\u06da\u06e4\u06e0\u06d8\u06dc"

    move-object v1, v0

    goto :goto_0

    :sswitch_5
    new-instance v0, Lcom/cyjh/elfin/ui/activity/UnbindRegistrationCodeActivity$OooO0OO;

    invoke-direct {v0, p0, v3}, Lcom/cyjh/elfin/ui/activity/UnbindRegistrationCodeActivity$OooO0OO;-><init>(Lcom/cyjh/elfin/ui/activity/UnbindRegistrationCodeActivity;Lcom/cyjh/elfin/ui/activity/UnbindRegistrationCodeActivity$OooO00o;)V

    invoke-virtual {v2, v0}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setOnLeftImageViewListener(Lcom/cyjh/elfin/ui/view/customview/TitleView$OooO0O0;)V

    const-string v0, "\u06e1\u06d8\u06d6\u06eb\u06e8\u06e8\u06d8\u06e8\u06e8\u06e6\u06d8\u06db\u06e2\u06d7\u06e2\u06e8\u06e6\u06df\u06e7\u06e4\u06ec\u06d6\u06d8\u06e1\u06e0\u06dc\u06e8\u06e4\u06e8\u06e8\u06e4\u06e6\u06e4\u06df\u06ec\u06e5\u06e6\u06eb"

    move-object v1, v0

    goto :goto_0

    :sswitch_6
    const v0, 0x7f0903b2

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/UnbindRegistrationCodeActivity;->Oooooo:Landroid/widget/EditText;

    const-string v0, "\u06e4\u06d7\u06e7\u06d8\u06d7\u06ec\u06e6\u06dc\u06d8\u06e7\u06e6\u06d6\u06d7\u06e6\u06e5\u06db\u06db\u06e7\u06e0\u06d8\u06e5\u06db\u06e8\u06e8\u06d8\u06ec\u06d9\u06e6\u06db\u06db\u06df\u06d9\u06e1\u06d9\u06e7\u06e8\u06e8\u06d8"

    move-object v1, v0

    goto :goto_0

    :sswitch_7
    const v0, 0x7f090452

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/UnbindRegistrationCodeActivity;->Ooooooo:Landroid/widget/TextView;

    const-string v0, "\u06d9\u06e0\u06d9\u06dc\u06e7\u06dc\u06db\u06df\u06e4\u06db\u06e2\u06df\u06e1\u06eb\u06eb\u06eb\u06e4\u06e1\u06d6\u06eb\u06d9\u06da\u06da\u06da\u06df\u06eb\u06da\u06e4\u06e1\u06d9\u06d9\u06dc\u06d7\u06e5\u06e0\u06db\u06e5\u06db\u06e0\u06dc\u06d9\u06e8\u06d8\u06db\u06e6\u06e0\u06e8\u06db\u06e8"

    move-object v1, v0

    goto :goto_0

    :sswitch_8
    const v0, 0x7f09023d

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/UnbindRegistrationCodeActivity;->o0OoOo0:Landroid/widget/Button;

    const-string v0, "\u06d7\u06db\u06dc\u06d7\u06e2\u06d9\u06d9\u06e5\u06da\u06e2\u06d7\u06e7\u06d7\u06e8\u06e5\u06d8\u06ec\u06e5\u06e1\u06d8\u06d6\u06d6\u06ec\u06eb\u06d9\u06e6\u06d8\u06d7\u06ec\u06d6\u06e0\u06e6\u06d8\u06dc\u06d9\u06e7\u06e5\u06ec\u06e8\u06e0\u06e1\u06e8\u06d9\u06d9\u06e8\u06d9\u06e8\u06ec\u06e8\u06e1\u06df\u06e5\u06d6\u06e7\u06d7"

    move-object v1, v0

    goto :goto_0

    :sswitch_9
    const v0, 0x7f09023c

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/UnbindRegistrationCodeActivity;->ooOO:Landroid/widget/Button;

    const-string v0, "\u06df\u06db\u06da\u06e7\u06e2\u06e4\u06da\u06eb\u06e0\u06d9\u06db\u06db\u06e1\u06eb\u06dc\u06e6\u06db\u06e7\u06eb\u06d7\u06df\u06e8\u06e4\u06d8\u06d8\u06d9\u06d9\u06db\u06e6\u06e5\u06da\u06ec\u06dc\u06d8\u06d8\u06e6\u06d9\u06d8\u06eb\u06d8\u06e5\u06e6\u06db"

    move-object v1, v0

    goto/16 :goto_0

    :sswitch_a
    invoke-direct {p0}, Lcom/cyjh/elfin/ui/activity/UnbindRegistrationCodeActivity;->OooOO0O()V

    const-string v0, "\u06e7\u06da\u06e8\u06d8\u06d6\u06d6\u06d7\u06df\u06e6\u06e8\u06d8\u06df\u06da\u06e5\u06db\u06ec\u06e1\u06d8\u06e5\u06e5\u06df\u06db\u06dc\u06e4\u06e8\u06dc\u06d8\u06e4\u06e8\u06d9\u06d8\u06e5\u06e1\u06d8\u06db\u06d9\u06e6\u06e2\u06dc\u06eb\u06e8\u06d9\u06d9\u06e0\u06ec\u06d7\u06e2\u06d9\u06e8\u06e1\u06d6"

    move-object v1, v0

    goto/16 :goto_0

    :sswitch_b
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x69af6020 -> :sswitch_a
        -0x5508ca4d -> :sswitch_4
        -0x53c00d4c -> :sswitch_0
        -0x372dca5d -> :sswitch_7
        -0x344b2a3d -> :sswitch_9
        -0x2fb086db -> :sswitch_5
        -0x1f667505 -> :sswitch_8
        -0x16914a58 -> :sswitch_b
        -0x30539c -> :sswitch_1
        0x165ad6c5 -> :sswitch_3
        0x1d9b0806 -> :sswitch_6
        0x546faf3a -> :sswitch_2
    .end sparse-switch
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    const-string v0, "\u06e2\u06e7\u06e7\u06d9\u06da\u06e8\u06d8\u06e6\u06ec\u06e2\u06d6\u06d7\u06ec\u06e1\u06d8\u06e0\u06d7\u06da\u06e8\u06e7\u06e5\u06d8\u06dc\u06dc\u06e1\u06d8\u06e6\u06ec\u06e8\u06e5\u06e5\u06ec\u06e5\u06e7\u06e2\u06e7\u06dc\u06e5\u06eb\u06df\u06e0\u06e6\u06e8\u06d6"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x3a4

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x31a

    const/16 v2, 0x39a

    const v3, -0x5a9d3aa9

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d9\u06da\u06d6\u06e5\u06e4\u06dc\u06d7\u06d6\u06e7\u06d8\u06e0\u06d6\u06e7\u06e0\u06e4\u06e2\u06d6\u06d7\u06dc\u06d8\u06e4\u06d8\u06d8\u06d8\u06eb\u06df\u06dc\u06eb\u06e8\u06d6\u06d8\u06e4\u06df\u06e1\u06db\u06e5\u06e6\u06d8\u06e7\u06dc\u06e2"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06e2\u06dc\u06e8\u06d8\u06e1\u06d7\u06e1\u06e7\u06e6\u06e4\u06e1\u06ec\u06d6\u06d6\u06e1\u06df\u06eb\u06d9\u06d6\u06d8\u06e5\u06e8\u06df\u06dc\u06eb\u06e7\u06d6\u06e1\u06dc\u06d7\u06d8\u06d8\u06d9\u06ec\u06d6\u06d6\u06e0\u06d9\u06e2\u06e1\u06db\u06e8\u06df\u06df\u06ec\u06d7\u06e1\u06df\u06e7"

    goto :goto_0

    :sswitch_2
    const-string v0, "\u06e1\u06e2\u06e1\u06d8\u06da\u06db\u06dc\u06d6\u06e8\u06d9\u06d7\u06df\u06da\u06e5\u06d8\u06e1\u06ec\u06da\u06e1\u06d8\u06da\u06e2\u06e7\u06e6\u06d9\u06d7\u06d7\u06e5\u06d8\u06db\u06e8\u06e7\u06d8\u06dc\u06e0\u06d7\u06e2\u06eb\u06d8\u06d8\u06e4\u06e5\u06e1\u06d9\u06d9\u06e8\u06e5\u06e4\u06d7\u06db\u06e1\u06d9\u06e2\u06e5\u06e5\u06d8\u06e0\u06dc\u06e8"

    goto :goto_0

    :sswitch_3
    const-string v0, "\u06e4\u06e1\u06dc\u06da\u06d9\u06e2\u06d6\u06da\u06e1\u06d8\u06e2\u06e6\u06e7\u06e0\u06d8\u06e1\u06d8\u06d6\u06e0\u06e8\u06d8\u06db\u06e7\u06d8\u06d8\u06dc\u06e1\u06d9\u06e0\u06e2\u06e2\u06e5\u06d9\u06e7\u06da\u06db\u06d6\u06e7\u06d8\u06e4"

    goto :goto_0

    :sswitch_4
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const-string v0, "\u06df\u06ec\u06db\u06e6\u06d8\u06da\u06e5\u06e0\u06d7\u06e6\u06ec\u06d6\u06e8\u06d9\u06e8\u06d8\u06da\u06ec\u06df\u06eb\u06db\u06d8\u06e1\u06d8\u06e0\u06eb\u06e5\u06d8\u06e7\u06d6\u06e8\u06da\u06d9\u06e1\u06e5\u06e2\u06d8\u06d8"

    goto :goto_0

    :sswitch_5
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x64850351 -> :sswitch_1
        -0x6310741a -> :sswitch_0
        -0x1f4f837a -> :sswitch_3
        -0xb7198c -> :sswitch_2
        0x345b7c5f -> :sswitch_4
        0x44840236 -> :sswitch_5
    .end sparse-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    const/4 v2, 0x0

    const-string v0, "\u06e1\u06e6\u06d8\u06d8\u06df\u06e5\u06e5\u06d8\u06e0\u06db\u06eb\u06d9\u06d9\u06dc\u06eb\u06dc\u06e2\u06d6\u06da\u06d6\u06d8\u06df\u06e5\u06d6\u06d8\u06dc\u06dc\u06dc\u06df\u06e0\u06df\u06d7\u06e0\u06da\u06eb\u06e7\u06e4\u06d8\u06e8\u06e6\u06d8\u06d6\u06e5\u06ec\u06e6\u06e7\u06e8\u06d8"

    move-object v1, v2

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/16 v4, 0x5c

    xor-int/2addr v3, v4

    xor-int/lit16 v3, v3, 0x38d

    const/16 v4, 0x4b

    const v5, -0x2f829c58

    xor-int/2addr v3, v4

    xor-int/2addr v3, v5

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d8\u06df\u06dc\u06d8\u06e4\u06d9\u06e2\u06d8\u06e0\u06d7\u06db\u06eb\u06d7\u06e5\u06dc\u06d9\u06e0\u06d9\u06e7\u06e2\u06d7\u06e2\u06d9\u06dc\u06d8\u06e0\u06d8\u06dc\u06ec\u06e4\u06eb\u06df\u06ec\u06e1\u06d8\u06d7\u06eb"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06e0\u06e6\u06e0\u06d7\u06eb\u06e1\u06d8\u06e4\u06d9\u06e4\u06da\u06e8\u06d6\u06d8\u06e5\u06d7\u06eb\u06da\u06dc\u06e4\u06eb\u06ec\u06d9\u06dc\u06e2\u06eb\u06e1\u06e0\u06df\u06df\u06d6\u06e1\u06dc\u06da\u06e1\u06eb\u06dc\u06d8\u06d8\u06e2\u06d8\u06d6\u06d8\u06ec\u06db\u06dc\u06d6\u06e5\u06d8\u06da\u06da\u06e8"

    goto :goto_0

    :sswitch_2
    const v3, -0x2a8d69d

    const-string v0, "\u06d9\u06e4\u06db\u06e7\u06e6\u06dc\u06db\u06d6\u06e8\u06d8\u06e6\u06e2\u06d7\u06db\u06d7\u06d9\u06da\u06db\u06d6\u06d7\u06e7\u06db\u06e2\u06e6\u06eb\u06d7\u06db\u06dc\u06db\u06e2\u06e8\u06d8\u06d6\u06db\u06d8\u06d8\u06da\u06e1"

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    xor-int/2addr v4, v3

    sparse-switch v4, :sswitch_data_1

    goto :goto_1

    :sswitch_3
    const v4, 0x2d18400b

    const-string v0, "\u06e6\u06e0\u06e5\u06e6\u06eb\u06e6\u06d8\u06e7\u06d6\u06e0\u06d8\u06e4\u06e5\u06d8\u06e0\u06eb\u06e1\u06d8\u06e1\u06db\u06d6\u06e8\u06e7\u06e6\u06e5\u06df\u06d9\u06e4\u06da\u06e6\u06d8\u06ec\u06db\u06e1\u06da\u06d9\u06df\u06db\u06d7\u06db\u06e1\u06dc\u06d8\u06d8\u06e7\u06d7\u06d8"

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v5

    xor-int/2addr v5, v4

    sparse-switch v5, :sswitch_data_2

    goto :goto_2

    :sswitch_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v5, 0x7f09023d

    if-eq v0, v5, :cond_0

    const-string v0, "\u06e4\u06e5\u06e8\u06dc\u06d6\u06e6\u06d8\u06e1\u06e7\u06e8\u06df\u06dc\u06e6\u06d8\u06e1\u06e5\u06e6\u06d7\u06e4\u06d7\u06e7\u06e2\u06e6\u06e5\u06eb\u06df\u06dc\u06d7\u06e8\u06dc\u06da\u06eb\u06e2\u06e1\u06d8\u06da\u06d6\u06da\u06e2\u06d8\u06e0\u06d7\u06e7\u06e1\u06df\u06dc\u06e4\u06d6\u06d9\u06d6\u06eb\u06e6\u06e5\u06d8\u06e0\u06e5\u06e2"

    goto :goto_2

    :sswitch_5
    const-string v0, "\u06da\u06e0\u06d8\u06d8\u06db\u06e1\u06e6\u06d8\u06dc\u06e8\u06dc\u06eb\u06d9\u06eb\u06e0\u06e0\u06eb\u06e6\u06e1\u06df\u06e7\u06eb\u06e5\u06eb\u06dc\u06eb\u06d6\u06e7\u06e1\u06d8\u06e0\u06d8\u06eb"

    goto :goto_1

    :cond_0
    const-string v0, "\u06e5\u06e1\u06d6\u06d8\u06da\u06e4\u06eb\u06e2\u06e1\u06e5\u06d8\u06e2\u06e0\u06e8\u06d8\u06d9\u06e0\u06e5\u06d8\u06e1\u06e7\u06d8\u06e1\u06da\u06e1\u06d9\u06ec\u06e4\u06e5\u06d7\u06e1\u06d8\u06d7\u06d9\u06e6\u06d8\u06e0\u06e6\u06e7\u06ec\u06df\u06df\u06dc\u06d9\u06e7\u06e5\u06d7\u06e8\u06ec\u06d7\u06dc\u06d8\u06d9\u06e8\u06d6\u06d8\u06ec\u06d6\u06dc\u06d9\u06e6\u06e7"

    goto :goto_2

    :sswitch_6
    const-string v0, "\u06d6\u06e0\u06eb\u06d8\u06df\u06d9\u06da\u06e5\u06d9\u06d8\u06dc\u06d6\u06d8\u06e2\u06db\u06d6\u06ec\u06e8\u06d6\u06d8\u06e4\u06dc\u06d6\u06d8\u06eb\u06db\u06e8\u06da\u06df\u06d6\u06e4\u06e4\u06d8\u06d8\u06e4\u06e0\u06e8\u06df\u06ec\u06e8"

    goto :goto_2

    :sswitch_7
    const-string v0, "\u06dc\u06dc\u06e1\u06da\u06d9\u06e1\u06d8\u06e4\u06df\u06e1\u06e8\u06eb\u06e2\u06db\u06d8\u06d6\u06ec\u06e6\u06d8\u06e8\u06e4\u06df\u06da\u06d7\u06dc\u06d8\u06e0\u06d7\u06e8\u06e4\u06e1"

    goto :goto_1

    :sswitch_8
    const-string v0, "\u06df\u06da\u06e8\u06d8\u06e5\u06d8\u06d6\u06d8\u06e2\u06e6\u06e4\u06da\u06e7\u06e0\u06e2\u06da\u06d8\u06d8\u06e1\u06eb\u06db\u06dc\u06dc\u06d8\u06da\u06e1\u06df\u06e1\u06e7\u06e1\u06e2\u06e4\u06e1\u06e1\u06dc\u06d6\u06d8\u06d8\u06ec\u06d6\u06d8\u06e8\u06e7\u06e7\u06e8\u06e4\u06e8"

    goto :goto_1

    :sswitch_9
    const-string v0, "\u06e4\u06db\u06e5\u06d8\u06e8\u06eb\u06eb\u06e1\u06e8\u06e5\u06d6\u06db\u06e6\u06db\u06dc\u06dc\u06d8\u06d7\u06e1\u06d6\u06d8\u06d6\u06d6\u06e2\u06d8\u06e4\u06dc\u06d8\u06e4\u06e7\u06e4\u06e8\u06dc\u06e4\u06e5\u06dc\u06e8\u06d6\u06e2\u06e0\u06d6\u06da\u06e5\u06d8\u06df\u06e8\u06e5\u06d8"

    goto :goto_0

    :sswitch_a
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/UnbindRegistrationCodeActivity;->Oooooo:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v0, "\u06df\u06e1\u06e0\u06da\u06e7\u06e8\u06e2\u06e2\u06d7\u06e6\u06df\u06e5\u06db\u06e6\u06ec\u06da\u06d7\u06db\u06eb\u06e4\u06db\u06e1\u06da\u06e2\u06e5\u06e8\u06e7\u06e5\u06da\u06e8"

    goto :goto_0

    :sswitch_b
    iput-object v1, p0, Lcom/cyjh/elfin/ui/activity/UnbindRegistrationCodeActivity;->Oooooo0:Ljava/lang/String;

    const-string v0, "\u06e6\u06e2\u06d7\u06e8\u06e5\u06ec\u06d7\u06d9\u06df\u06e1\u06da\u06e2\u06da\u06df\u06d6\u06e0\u06da\u06e4\u06da\u06e1\u06dc\u06d7\u06e8\u06d6\u06e4\u06e6\u06e4\u06e8\u06e8\u06e8\u06d7\u06e8\u06d6\u06eb\u06e4\u06e0\u06d6\u06e6\u06e0\u06e2\u06e6\u06e6\u06d8"

    goto :goto_0

    :sswitch_c
    const v3, -0x6eac121f

    const-string v0, "\u06da\u06db\u06e5\u06d8\u06eb\u06e1\u06d6\u06d8\u06d6\u06dc\u06d6\u06d8\u06e5\u06e1\u06d8\u06ec\u06e5\u06e7\u06d6\u06da\u06d6\u06d8\u06d8\u06ec\u06d7\u06ec\u06e6\u06e5\u06d8\u06e8\u06d6\u06e7\u06d8\u06e2\u06dc\u06e4\u06e5\u06e1\u06d8\u06e4\u06e0\u06e1\u06d8"

    :goto_3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    xor-int/2addr v4, v3

    sparse-switch v4, :sswitch_data_3

    goto :goto_3

    :sswitch_d
    const-string v0, "\u06e6\u06d7\u06e6\u06d8\u06da\u06df\u06e5\u06d8\u06e1\u06e8\u06e6\u06db\u06db\u06d9\u06da\u06e8\u06e1\u06d8\u06ec\u06d9\u06dc\u06df\u06e6\u06e5\u06e1\u06e8\u06e5\u06d8\u06d7\u06d7\u06e0\u06db\u06df\u06d8\u06df\u06dc\u06e7\u06d8\u06eb\u06df\u06d6\u06da\u06df\u06e2\u06e4\u06d9\u06e5\u06d8\u06d9\u06e1\u06e8"

    goto :goto_0

    :sswitch_e
    const-string v0, "\u06e0\u06eb\u06dc\u06d8\u06d6\u06e7\u06e6\u06db\u06d7\u06e1\u06e2\u06e8\u06e4\u06d8\u06e1\u06e1\u06d8\u06e5\u06d6\u06e8\u06e6\u06db\u06e7\u06eb\u06e2\u06e1\u06d8\u06e8\u06da\u06d8\u06e1\u06e5"

    goto :goto_3

    :sswitch_f
    const v4, -0x688d2c04

    const-string v0, "\u06db\u06eb\u06dc\u06d8\u06e1\u06d9\u06da\u06e1\u06d7\u06dc\u06d8\u06d7\u06d6\u06d6\u06d8\u06d9\u06e0\u06e8\u06d7\u06da\u06dc\u06d8\u06d8\u06d8\u06e7\u06eb\u06e0\u06e4\u06df\u06dc\u06eb\u06e7\u06e6\u06d8\u06eb\u06e5\u06d7\u06dc\u06ec\u06e6\u06e2\u06db\u06e5\u06d8\u06e8\u06db\u06d9\u06e2\u06d7\u06e8\u06d8\u06d7\u06ec\u06df\u06e5\u06eb\u06da\u06e0\u06e8\u06db"

    :goto_4
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v5

    xor-int/2addr v5, v4

    sparse-switch v5, :sswitch_data_4

    goto :goto_4

    :sswitch_10
    const-string v0, "\u06d6\u06dc\u06d6\u06e1\u06da\u06d7\u06d6\u06eb\u06d6\u06e0\u06d7\u06d7\u06dc\u06da\u06eb\u06d8\u06e1\u06da\u06e8\u06e1\u06d8\u06d7\u06e1\u06e0\u06df\u06e8\u06e8\u06d8\u06e8\u06db\u06e5\u06ec\u06e0\u06e8\u06e6\u06e4\u06d7\u06dc\u06d6\u06da\u06e5\u06e0\u06d8\u06d8\u06e2\u06d6\u06dc\u06d6\u06dc\u06e0"

    goto :goto_4

    :cond_1
    const-string v0, "\u06e4\u06dc\u06ec\u06e2\u06e7\u06e0\u06e5\u06e1\u06db\u06ec\u06d7\u06e5\u06eb\u06e6\u06e1\u06d8\u06d9\u06e2\u06e8\u06d8\u06db\u06d8\u06d7\u06eb\u06eb\u06ec\u06e2\u06e8\u06e4\u06d8\u06da\u06dc\u06e2\u06e6\u06d9\u06dc\u06e7\u06e7\u06e0\u06e5\u06d8\u06db\u06e7\u06e4\u06df\u06da\u06e1\u06d8\u06e8\u06e7\u06db\u06d9\u06dc\u06e8\u06e4\u06eb\u06d8"

    goto :goto_4

    :sswitch_11
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "\u06d6\u06db\u06da\u06e2\u06db\u06eb\u06eb\u06df\u06df\u06e2\u06e2\u06e8\u06e7\u06da\u06da\u06e6\u06d8\u06d8\u06e7\u06d7\u06e4\u06e7\u06e6\u06e1\u06e4\u06e4\u06e6\u06d8\u06e4\u06d9\u06e6"

    goto :goto_4

    :sswitch_12
    const-string v0, "\u06e6\u06d9\u06e5\u06d8\u06e6\u06e7\u06e8\u06d8\u06eb\u06e1\u06e8\u06e0\u06e1\u06d7\u06d7\u06e6\u06e1\u06d8\u06e8\u06eb\u06e4\u06e8\u06df\u06e2\u06dc\u06d9\u06da\u06e8\u06e0\u06e6\u06e7\u06d6\u06d6\u06d8\u06df\u06d7\u06e8\u06d8\u06d9\u06d7\u06d9\u06e8\u06d6\u06dc\u06d8\u06d6\u06e0\u06e7\u06da\u06d9\u06e6\u06ec\u06da\u06d6\u06d8\u06d9\u06d8\u06d8\u06e1\u06e8\u06e5"

    goto :goto_3

    :sswitch_13
    const-string v0, "\u06e1\u06e8\u06e1\u06d8\u06e8\u06e8\u06e8\u06d8\u06e0\u06e7\u06d9\u06d6\u06dc\u06e2\u06d7\u06e2\u06d6\u06d8\u06e8\u06e8\u06e8\u06d9\u06e4\u06d8\u06e7\u06e0\u06e1\u06d8\u06d7\u06e6\u06d6\u06d8\u06d6\u06da\u06db\u06da\u06db\u06dc\u06ec\u06e4\u06e1\u06d6\u06e1\u06dc\u06e2\u06d9\u06d8\u06d8"

    goto :goto_3

    :sswitch_14
    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->OooO00o()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v0

    const v3, 0x7f10018b

    invoke-static {v0, v3}, Lz2/c5;->OooO0O0(Landroid/content/Context;I)V

    const-string v0, "\u06e0\u06ec\u06d8\u06d8\u06e0\u06ec\u06d8\u06e2\u06e6\u06dc\u06d8\u06e5\u06e5\u06d6\u06da\u06e5\u06e5\u06d8\u06eb\u06e2\u06d7\u06e1\u06e5\u06e2\u06e6\u06e4\u06d8\u06e4\u06da\u06e4\u06e0\u06df\u06d6\u06e4\u06e8\u06e4\u06e8\u06db\u06e5\u06d8\u06d8\u06e0\u06dc\u06e4\u06e0\u06e4"

    goto/16 :goto_0

    :sswitch_15
    const v3, 0x5e20714e

    const-string v0, "\u06e0\u06e6\u06e1\u06dc\u06db\u06e8\u06d8\u06e2\u06e8\u06d6\u06e0\u06eb\u06e8\u06d7\u06dc\u06d6\u06d7\u06e8\u06e5\u06dc\u06e0\u06d8\u06db\u06d9\u06e5\u06e7\u06e0\u06d8\u06e0\u06e8\u06d8\u06db\u06d9\u06df\u06eb\u06e2\u06df\u06df\u06eb\u06d9\u06e7\u06d6\u06db"

    :goto_5
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    xor-int/2addr v4, v3

    sparse-switch v4, :sswitch_data_5

    goto :goto_5

    :sswitch_16
    const v4, -0x379d9ae9

    const-string v0, "\u06ec\u06e6\u06e6\u06d8\u06df\u06d8\u06d8\u06e5\u06e2\u06d8\u06eb\u06e0\u06e6\u06d8\u06db\u06d9\u06e5\u06e1\u06e2\u06db\u06e7\u06d9\u06dc\u06e5\u06e8\u06ec\u06e1\u06d9\u06eb\u06db\u06e6\u06d9\u06e6\u06ec\u06dc\u06d8\u06d6\u06e5\u06e4\u06e2\u06d9\u06dc\u06d8"

    :goto_6
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v5

    xor-int/2addr v5, v4

    sparse-switch v5, :sswitch_data_6

    goto :goto_6

    :sswitch_17
    const-string v0, "\u06e6\u06da\u06e1\u06d8\u06e7\u06e1\u06e1\u06e2\u06e6\u06ec\u06dc\u06dc\u06eb\u06e5\u06ec\u06e7\u06d8\u06eb\u06eb\u06d6\u06dc\u06df\u06db\u06db\u06e2\u06db\u06da\u06e1\u06d8\u06d6\u06dc\u06da\u06d8\u06d8\u06da\u06e4\u06e2\u06e1\u06d8"

    goto :goto_6

    :sswitch_18
    const-string v0, "\u06df\u06e7\u06da\u06d7\u06d8\u06e5\u06d6\u06e1\u06d8\u06e7\u06db\u06dc\u06dc\u06ec\u06e5\u06d8\u06e2\u06e0\u06e2\u06e7\u06d7\u06d7\u06d6\u06e5\u06dc\u06df\u06df\u06dc\u06e4\u06df\u06da\u06eb\u06e7\u06d8\u06d8\u06e6\u06d6\u06e4\u06d6\u06e1\u06e4\u06d9\u06d8\u06d6\u06d8\u06d9\u06e2\u06d6\u06eb\u06e5\u06eb"

    goto :goto_5

    :cond_2
    const-string v0, "\u06da\u06d9\u06e5\u06e2\u06db\u06ec\u06df\u06e2\u06e2\u06d7\u06e1\u06ec\u06e4\u06d9\u06da\u06e4\u06ec\u06e2\u06d8\u06ec\u06e0\u06d8\u06eb\u06e7\u06df\u06e0\u06d6\u06d9\u06e2\u06e7\u06eb\u06e5\u06d6\u06d8\u06e2\u06e8"

    goto :goto_6

    :sswitch_19
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lz2/t4;->OooOO0(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "\u06da\u06da\u06df\u06e5\u06dc\u06d9\u06e4\u06e0\u06dc\u06e4\u06df\u06d6\u06e0\u06e7\u06e4\u06db\u06e5\u06e2\u06e4\u06db\u06d6\u06db\u06d9\u06e5\u06d8\u06e1\u06d9\u06e6\u06d8\u06d7\u06dc\u06e7\u06e1\u06ec\u06d7\u06d7\u06df\u06d6\u06e8\u06e8\u06e4\u06da\u06e6\u06d7\u06da\u06e8\u06d8\u06d7\u06d8\u06e8\u06d8"

    goto :goto_6

    :sswitch_1a
    const-string v0, "\u06e7\u06d8\u06d9\u06eb\u06e6\u06dc\u06e2\u06d7\u06da\u06da\u06ec\u06da\u06e2\u06e5\u06d9\u06d8\u06d8\u06e6\u06e1\u06e7\u06e0\u06e4\u06d6\u06d8\u06d7\u06d9\u06e1\u06d8\u06e2\u06ec\u06e8\u06d8\u06d7\u06e1\u06e0\u06d8\u06e0\u06e6\u06d8\u06d8\u06d7\u06eb\u06e4\u06e5\u06e6\u06d8\u06dc\u06e0\u06db\u06e5\u06e1\u06e5\u06d8"

    goto :goto_5

    :sswitch_1b
    const-string v0, "\u06e5\u06d6\u06e0\u06dc\u06e4\u06e6\u06e6\u06e6\u06eb\u06e0\u06e4\u06db\u06d6\u06e5\u06e7\u06e2\u06da\u06d6\u06d8\u06e1\u06da\u06e8\u06d8\u06d7\u06df\u06db\u06da\u06ec\u06d8\u06ec\u06d9\u06d6\u06ec\u06e8\u06d8\u06ec\u06e4\u06db\u06e7\u06ec\u06e7\u06ec\u06e2\u06d8\u06d8\u06e4\u06e1\u06dc\u06dc\u06e2\u06d9\u06d7\u06e8\u06d8\u06d6\u06dc\u06e7\u06d8"

    goto :goto_5

    :sswitch_1c
    const-string v0, "\u06e7\u06da\u06df\u06df\u06e5\u06d7\u06e5\u06e4\u06da\u06e0\u06e1\u06eb\u06d8\u06e8\u06e2\u06e2\u06eb\u06e6\u06d8\u06d8\u06da\u06dc\u06d8\u06e8\u06e8\u06e1\u06d8\u06ec\u06e2\u06e8\u06d8\u06dc\u06db\u06e6\u06d8\u06d7\u06e4\u06e5\u06d8\u06e5\u06e5\u06e2"

    goto/16 :goto_0

    :sswitch_1d
    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->OooO00o()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v0

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->OooO00o()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1001d4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lz2/c5;->OooO0OO(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "\u06eb\u06df\u06dc\u06e6\u06ec\u06eb\u06d9\u06da\u06dc\u06ec\u06e0\u06d8\u06e2\u06dc\u06e1\u06df\u06e4\u06db\u06e2\u06d6\u06da\u06eb\u06dc\u06d6\u06e0\u06d9\u06d7\u06e5\u06e6\u06e4\u06ec\u06df\u06e2\u06eb\u06e2\u06e5\u06df\u06dc\u06d8\u06e5\u06e5\u06e0"

    goto/16 :goto_0

    :sswitch_1e
    const v3, -0x2710e10e

    const-string v0, "\u06d6\u06eb\u06e8\u06e1\u06dc\u06d6\u06d8\u06e6\u06e7\u06e4\u06e4\u06db\u06e7\u06db\u06d9\u06d6\u06d9\u06e8\u06e1\u06d6\u06df\u06e1\u06d8\u06e5\u06e1\u06dc\u06e8\u06df\u06eb\u06da\u06e2\u06e2\u06e5\u06e8\u06d6\u06d8\u06d6\u06d7\u06e6\u06d8\u06da\u06d6\u06db\u06d6\u06e8\u06d8\u06df\u06d8\u06d8\u06e8\u06db\u06dc\u06ec\u06e2\u06e8\u06e4\u06e1\u06dc\u06d8"

    :goto_7
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    xor-int/2addr v4, v3

    sparse-switch v4, :sswitch_data_7

    goto :goto_7

    :sswitch_1f
    const-string v0, "\u06e8\u06dc\u06d6\u06d8\u06dc\u06e6\u06ec\u06df\u06e6\u06e1\u06df\u06e2\u06e5\u06e2\u06e4\u06e1\u06e5\u06eb\u06d8\u06da\u06e1\u06d6\u06d8\u06d7\u06da\u06ec\u06d7\u06d7\u06e0\u06e1\u06e5\u06d8\u06e7\u06dc\u06d8\u06d8\u06e1\u06e7\u06d8\u06d8\u06e1\u06d8\u06d8\u06e1\u06da\u06eb"

    goto/16 :goto_0

    :sswitch_20
    const-string v0, "\u06d8\u06da\u06dc\u06d8\u06d7\u06eb\u06e8\u06d8\u06d8\u06ec\u06e8\u06d8\u06d7\u06e1\u06e0\u06df\u06eb\u06d8\u06d8\u06eb\u06d6\u06e5\u06d8\u06e0\u06e2\u06d8\u06db\u06da\u06db\u06e2\u06d7\u06da\u06da\u06db\u06da\u06e8\u06d9\u06e1\u06d8\u06e6\u06e4\u06e6\u06d8\u06df\u06eb\u06d6\u06d8\u06d6\u06e8\u06e5\u06e0\u06d9\u06d6\u06e0\u06e0\u06d6"

    goto :goto_7

    :sswitch_21
    const v4, -0x2d7c3188

    const-string v0, "\u06d8\u06eb\u06e2\u06e6\u06e5\u06e1\u06d8\u06e1\u06d9\u06e1\u06da\u06e5\u06db\u06d6\u06e6\u06d8\u06e4\u06db\u06eb\u06db\u06dc\u06dc\u06e1\u06e4\u06d9\u06d6\u06e1\u06e0\u06dc\u06eb\u06d7\u06db\u06e1\u06d6\u06d8\u06df\u06e2\u06d9"

    :goto_8
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v5

    xor-int/2addr v5, v4

    sparse-switch v5, :sswitch_data_8

    goto :goto_8

    :sswitch_22
    iget-boolean v0, p0, Lcom/cyjh/elfin/ui/activity/UnbindRegistrationCodeActivity;->OoooooO:Z

    if-eqz v0, :cond_3

    const-string v0, "\u06dc\u06e7\u06d8\u06db\u06da\u06d9\u06dc\u06d6\u06d6\u06d8\u06df\u06d9\u06d9\u06d9\u06eb\u06e5\u06d8\u06e5\u06db\u06e0\u06d6\u06e1\u06eb\u06e4\u06e0\u06da\u06d9\u06e7\u06e4\u06da\u06dc\u06db\u06d9\u06d7\u06e5\u06d8\u06ec\u06d9\u06dc"

    goto :goto_8

    :cond_3
    const-string v0, "\u06db\u06d7\u06d7\u06e5\u06d8\u06dc\u06d6\u06e7\u06e1\u06e4\u06e6\u06e0\u06ec\u06e6\u06dc\u06e1\u06e5\u06e5\u06d7\u06e2\u06df\u06d8\u06e5\u06d8\u06e1\u06e0\u06d8\u06d8\u06d6\u06eb\u06e8\u06ec\u06e1\u06e7\u06db\u06e6\u06d8\u06db\u06e6\u06df\u06e5\u06e8\u06dc\u06df\u06ec\u06e0\u06ec\u06d6"

    goto :goto_8

    :sswitch_23
    const-string v0, "\u06e1\u06ec\u06e1\u06d8\u06d9\u06e1\u06e2\u06e1\u06d8\u06e6\u06e2\u06df\u06d6\u06e4\u06e4\u06d9\u06e8\u06d8\u06d6\u06eb\u06e1\u06e1\u06d6\u06e7\u06d6\u06eb\u06dc\u06d8\u06e0\u06e4\u06e8\u06da\u06db\u06d8\u06da\u06eb\u06dc\u06ec\u06e6\u06e8\u06d8\u06e4\u06d7\u06dc\u06dc\u06eb\u06e4\u06da\u06eb\u06e6\u06d8"

    goto :goto_8

    :sswitch_24
    const-string v0, "\u06e6\u06e6\u06e6\u06e6\u06e7\u06da\u06e0\u06e1\u06eb\u06e1\u06d9\u06df\u06db\u06dc\u06d8\u06e8\u06e0\u06df\u06df\u06eb\u06e6\u06dc\u06e7\u06e5\u06d8\u06d7\u06d8\u06e2\u06e2\u06df\u06da\u06e8\u06d8\u06e4\u06da\u06e6\u06d7\u06e1\u06df\u06e6\u06e6\u06d8"

    goto :goto_7

    :sswitch_25
    const-string v0, "\u06e5\u06e8\u06e1\u06d8\u06e2\u06da\u06d8\u06d8\u06e0\u06dc\u06e6\u06d8\u06eb\u06eb\u06ec\u06e1\u06e8\u06da\u06e5\u06e2\u06d8\u06d8\u06d7\u06e7\u06e4\u06e1\u06d7\u06e2\u06df\u06d8\u06d7\u06eb\u06e5\u06e6\u06df\u06df\u06e5\u06dc\u06d8\u06e5\u06e0\u06db\u06e2\u06e0\u06e1"

    goto :goto_7

    :sswitch_26
    const-string v0, "\u06e6\u06d8\u06d8\u06d8\u06eb\u06eb\u06d8\u06d8\u06e7\u06e5\u06dc\u06d8\u06e6\u06da\u06df\u06e7\u06e7\u06dc\u06d8\u06e7\u06e1\u06d7\u06e6\u06e7\u06e8\u06d8\u06df\u06e8\u06dc\u06d8\u06e6\u06eb\u06e2\u06d9\u06df\u06e1\u06d8\u06e2\u06d9\u06d7\u06e7\u06db\u06eb"

    goto/16 :goto_0

    :sswitch_27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cyjh/elfin/ui/activity/UnbindRegistrationCodeActivity;->OoooooO:Z

    const-string v0, "\u06eb\u06e5\u06dc\u06d8\u06d8\u06dc\u06e5\u06e1\u06d8\u06df\u06d6\u06e6\u06d8\u06d8\u06db\u06e1\u06e1\u06d7\u06d7\u06e2\u06e2\u06e4\u06e1\u06e0\u06e4\u06ec\u06e2\u06da\u06e6\u06d8\u06d8\u06da\u06db\u06d7\u06db\u06d7\u06df\u06ec\u06db\u06df\u06e8\u06d6\u06eb\u06e6\u06d8\u06ec\u06e6\u06d9\u06eb\u06d7\u06e7"

    goto/16 :goto_0

    :sswitch_28
    iget-object v0, p0, Lcom/cyjh/common/base/activity/BaseModelActivity;->OooooO0:Landroidx/lifecycle/AndroidViewModel;

    check-cast v0, Lz2/ra;

    iget-object v3, p0, Lcom/cyjh/elfin/ui/activity/UnbindRegistrationCodeActivity;->Oooooo0:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lz2/ra;->OooOo0(Ljava/lang/String;)V

    const-string v0, "\u06eb\u06d7\u06e7\u06d8\u06e4\u06e1\u06d8\u06e2\u06e6\u06d8\u06d6\u06da\u06da\u06db\u06dc\u06d9\u06df\u06e6\u06e4\u06e5\u06e0\u06dc\u06e4\u06d9\u06e6\u06d8\u06e5\u06e6\u06e7\u06e7\u06d8\u06e4\u06e6\u06da\u06e0\u06df\u06d9\u06dc\u06d8\u06db\u06e1\u06e6\u06d8\u06d6\u06da\u06df\u06e8\u06e6\u06d8\u06d8\u06dc\u06d7\u06e6"

    goto/16 :goto_0

    :sswitch_29
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/UnbindRegistrationCodeActivity;->OooooOO:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const-string v0, "\u06ec\u06e0\u06d7\u06e7\u06e5\u06e5\u06d8\u06d9\u06d9\u06e4\u06e0\u06e0\u06eb\u06e1\u06d9\u06e6\u06e8\u06df\u06d9\u06df\u06d8\u06e1\u06e2\u06ec\u06e8\u06d8\u06d6\u06e0\u06d6\u06e2\u06d8\u06d8"

    goto/16 :goto_0

    :sswitch_2a
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/UnbindRegistrationCodeActivity;->OooooOO:Landroid/os/Handler;

    new-instance v3, Lcom/cyjh/elfin/ui/activity/UnbindRegistrationCodeActivity$OooO0O0;

    invoke-direct {v3, p0}, Lcom/cyjh/elfin/ui/activity/UnbindRegistrationCodeActivity$OooO0O0;-><init>(Lcom/cyjh/elfin/ui/activity/UnbindRegistrationCodeActivity;)V

    const-wide/16 v4, 0xbb8

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const-string v0, "\u06eb\u06e4\u06eb\u06e1\u06d9\u06eb\u06ec\u06db\u06da\u06da\u06d7\u06e0\u06eb\u06e6\u06da\u06d6\u06db\u06d7\u06dc\u06e6\u06e5\u06e8\u06db\u06d6\u06d8\u06dc\u06e4\u06dc\u06d8\u06d8\u06db\u06d6\u06ec\u06e4\u06df\u06e0\u06dc\u06da\u06d7\u06e7\u06e4\u06e4\u06e4\u06d7\u06e2\u06e6\u06d8\u06e5\u06e4\u06d6\u06d8"

    goto/16 :goto_0

    :sswitch_2b
    const-string v0, "\u06e4\u06db\u06df\u06e1\u06ec\u06e8\u06d8\u06e6\u06e7\u06e8\u06d8\u06df\u06df\u06e1\u06d8\u06e0\u06e2\u06d9\u06e1\u06e1\u06dc\u06d8\u06da\u06d7\u06dc\u06d8\u06dc\u06df\u06ec\u06e6\u06df\u06dc\u06e7\u06eb\u06d8\u06d8\u06e0\u06db\u06e2\u06e7\u06d9\u06e1\u06d8\u06e7\u06d9\u06e1\u06d8\u06da\u06d7\u06dc\u06d8"

    goto/16 :goto_0

    :sswitch_2c
    const-string v0, "\u06da\u06eb\u06e6\u06e5\u06db\u06da\u06e0\u06eb\u06e1\u06d7\u06d9\u06df\u06dc\u06eb\u06e1\u06df\u06e5\u06e6\u06d8\u06d8\u06da\u06e4\u06e2\u06e6\u06e6\u06d6\u06dc\u06db\u06e6\u06eb\u06e6\u06d8\u06eb\u06e5\u06d6\u06e1\u06e4\u06db"

    goto/16 :goto_0

    :sswitch_2d
    const-string v0, "\u06e5\u06e8\u06eb\u06e4\u06dc\u06dc\u06d8\u06d6\u06df\u06e4\u06e0\u06e1\u06e0\u06ec\u06eb\u06e2\u06e2\u06df\u06d6\u06d8\u06da\u06e7\u06d8\u06ec\u06d9\u06d8\u06db\u06e6\u06da\u06dc\u06e0\u06e6\u06dc\u06e1\u06e8\u06da\u06ec\u06e8\u06d8"

    goto/16 :goto_0

    :sswitch_2e
    const-string v0, "\u06eb\u06e4\u06eb\u06e1\u06d9\u06eb\u06ec\u06db\u06da\u06da\u06d7\u06e0\u06eb\u06e6\u06da\u06d6\u06db\u06d7\u06dc\u06e6\u06e5\u06e8\u06db\u06d6\u06d8\u06dc\u06e4\u06dc\u06d8\u06d8\u06db\u06d6\u06ec\u06e4\u06df\u06e0\u06dc\u06da\u06d7\u06e7\u06e4\u06e4\u06e4\u06d7\u06e2\u06e6\u06d8\u06e5\u06e4\u06d6\u06d8"

    goto/16 :goto_0

    :sswitch_2f
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x798f61a5 -> :sswitch_2a
        -0x65e79d74 -> :sswitch_0
        -0x6422a931 -> :sswitch_2f
        -0x638b633e -> :sswitch_1e
        -0x51fd3565 -> :sswitch_2f
        -0x4c405731 -> :sswitch_1d
        -0x465fa9e9 -> :sswitch_b
        -0x3ef6deb2 -> :sswitch_29
        -0x2298e031 -> :sswitch_1
        -0x12fe451e -> :sswitch_2f
        -0x10050f75 -> :sswitch_2f
        0x1997c0b -> :sswitch_28
        0xc28cf87 -> :sswitch_c
        0xfab0917 -> :sswitch_2e
        0x145faba8 -> :sswitch_2
        0x5c05afe6 -> :sswitch_15
        0x60413a6b -> :sswitch_27
        0x73f662ea -> :sswitch_14
        0x7a777441 -> :sswitch_a
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x706c96b3 -> :sswitch_2b
        -0x6642c5be -> :sswitch_9
        0xde229e7 -> :sswitch_3
        0x581402e4 -> :sswitch_8
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        -0x6da49498 -> :sswitch_6
        -0x667bbdbd -> :sswitch_4
        -0x6407448f -> :sswitch_7
        -0x2d3e22a7 -> :sswitch_5
    .end sparse-switch

    :sswitch_data_3
    .sparse-switch
        -0x5b134f77 -> :sswitch_f
        0x2f14408f -> :sswitch_d
        0x443fbcdb -> :sswitch_2c
        0x63d377ce -> :sswitch_13
    .end sparse-switch

    :sswitch_data_4
    .sparse-switch
        -0x239f75cf -> :sswitch_11
        0x623499d3 -> :sswitch_e
        0x64536d0b -> :sswitch_12
        0x7c3d62e4 -> :sswitch_10
    .end sparse-switch

    :sswitch_data_5
    .sparse-switch
        -0x4257e17f -> :sswitch_1c
        0x16561b0d -> :sswitch_2d
        0x5c549dca -> :sswitch_16
        0x79f1e0c2 -> :sswitch_1b
    .end sparse-switch

    :sswitch_data_6
    .sparse-switch
        -0x3f609991 -> :sswitch_18
        0x2211563d -> :sswitch_19
        0x294a4646 -> :sswitch_1a
        0x34206ac6 -> :sswitch_17
    .end sparse-switch

    :sswitch_data_7
    .sparse-switch
        -0x7e9f28a3 -> :sswitch_25
        -0x73112cb8 -> :sswitch_26
        -0x4f9b57c0 -> :sswitch_1f
        0x6bb697e1 -> :sswitch_21
    .end sparse-switch

    :sswitch_data_8
    .sparse-switch
        -0x521780f5 -> :sswitch_24
        -0x165b8eaa -> :sswitch_23
        0x54eab850 -> :sswitch_22
        0x75a9b5c3 -> :sswitch_20
    .end sparse-switch
.end method

.method public onDestroy()V
    .locals 6

    const/4 v2, 0x0

    const-string v0, "\u06df\u06d6\u06e6\u06ec\u06e4\u06d8\u06d8\u06db\u06e5\u06eb\u06e2\u06e7\u06e2\u06d7\u06d6\u06e8\u06e4\u06dc\u06e7\u06d8\u06e2\u06e6\u06e6\u06d8\u06e1\u06e0\u06dc\u06d8\u06e8\u06eb\u06e5\u06d8\u06e5\u06e8\u06df"

    move-object v1, v2

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/16 v4, 0x266

    xor-int/2addr v3, v4

    xor-int/lit16 v3, v3, 0x38e

    const/16 v4, 0x4e

    const v5, 0x3ea7f341

    xor-int/2addr v3, v4

    xor-int/2addr v3, v5

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06db\u06d7\u06d6\u06d8\u06df\u06e1\u06e8\u06d8\u06d6\u06e8\u06e5\u06e5\u06df\u06e6\u06d6\u06e1\u06d8\u06e0\u06db\u06d8\u06df\u06e6\u06dc\u06d8\u06ec\u06db\u06eb\u06eb\u06d6\u06da\u06df\u06d7\u06dc\u06d8\u06df\u06e1\u06e6\u06d8\u06e1\u06d9\u06e1\u06d8\u06df\u06ec\u06e5\u06d8\u06d6\u06d9\u06e4\u06eb\u06d9\u06d6\u06d7\u06ec\u06da\u06e1\u06d6\u06e4\u06e2"

    goto :goto_0

    :sswitch_1
    invoke-super {p0}, Lcom/cyjh/common/base/activity/BaseActivity;->onDestroy()V

    const-string v0, "\u06e0\u06e7\u06d6\u06e8\u06e0\u06ec\u06e4\u06dc\u06e8\u06d8\u06e7\u06df\u06db\u06e6\u06d6\u06da\u06eb\u06d6\u06e4\u06dc\u06df\u06eb\u06da\u06da\u06dc\u06e1\u06ec\u06e8\u06da\u06e1\u06e5\u06d8"

    goto :goto_0

    :sswitch_2
    iget-object v1, p0, Lcom/cyjh/elfin/ui/activity/UnbindRegistrationCodeActivity;->OooooOO:Landroid/os/Handler;

    const-string v0, "\u06e0\u06e2\u06d8\u06d8\u06da\u06df\u06e8\u06d8\u06df\u06dc\u06d6\u06d8\u06d6\u06e4\u06d8\u06d7\u06e5\u06d8\u06da\u06dc\u06d8\u06db\u06e4\u06df\u06e4\u06d8\u06e4\u06db\u06e6\u06d8\u06ec\u06ec\u06dc\u06d8"

    goto :goto_0

    :sswitch_3
    const v3, -0x3fb33714

    const-string v0, "\u06db\u06e8\u06e6\u06d8\u06df\u06df\u06da\u06d7\u06da\u06df\u06eb\u06d9\u06db\u06e2\u06e6\u06e7\u06d8\u06da\u06db\u06da\u06e0\u06d6\u06da\u06ec\u06d6\u06e8\u06db\u06d6\u06db\u06df\u06d6\u06e7\u06dc\u06d7\u06e8\u06d8\u06e2\u06e0\u06e1\u06d8"

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    xor-int/2addr v4, v3

    sparse-switch v4, :sswitch_data_1

    goto :goto_1

    :sswitch_4
    const v4, -0xef53639

    const-string v0, "\u06e2\u06df\u06da\u06e6\u06e5\u06ec\u06dc\u06e8\u06e8\u06e5\u06df\u06d6\u06df\u06d8\u06ec\u06db\u06e1\u06d8\u06e5\u06d7\u06d8\u06d8\u06e0\u06db\u06d8\u06e6\u06e4\u06e6\u06d8\u06dc\u06d8\u06da\u06e4\u06e6\u06d8\u06df\u06e2\u06e5\u06e0\u06e4\u06eb\u06e8\u06d8\u06e2\u06da\u06d9\u06ec\u06e1\u06d8\u06d9\u06e1\u06da\u06df\u06e2\u06e2\u06dc"

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v5

    xor-int/2addr v5, v4

    sparse-switch v5, :sswitch_data_2

    goto :goto_2

    :sswitch_5
    const-string v0, "\u06e1\u06ec\u06e4\u06d6\u06d8\u06eb\u06e7\u06e4\u06db\u06d9\u06db\u06d8\u06d8\u06d6\u06e5\u06d6\u06d8\u06d9\u06ec\u06e2\u06eb\u06d6\u06da\u06e6\u06e4\u06e1\u06d8\u06eb\u06d7\u06ec\u06d8\u06e0\u06da\u06d6\u06e0\u06d9\u06e2\u06ec\u06e8\u06e6\u06d9\u06e8\u06d8\u06d6\u06d6\u06d9\u06d8\u06dc\u06e8\u06d8\u06e6\u06e5\u06da\u06e7\u06d7\u06e0\u06e4\u06e4\u06eb"

    goto :goto_1

    :sswitch_6
    const-string v0, "\u06e4\u06e2\u06e2\u06d7\u06d9\u06dc\u06d8\u06d8\u06df\u06ec\u06e5\u06e2\u06e1\u06e5\u06e5\u06d9\u06ec\u06d7\u06e0\u06e2\u06dc\u06e0\u06d6\u06e4\u06d6\u06ec\u06e1\u06d8\u06da\u06e1\u06d6\u06d8"

    goto :goto_1

    :cond_0
    const-string v0, "\u06d6\u06d6\u06d8\u06e1\u06d9\u06d6\u06d8\u06e2\u06d9\u06df\u06e5\u06e6\u06ec\u06e6\u06d8\u06db\u06d9\u06d6\u06e8\u06d8\u06e4\u06d6\u06e7\u06d6\u06e7\u06e5\u06d8\u06e7\u06df\u06eb\u06da\u06e4\u06e8\u06d8\u06d9\u06e1\u06da\u06d9\u06ec\u06e6\u06d8\u06e2\u06d9\u06df\u06e7\u06db\u06dc\u06d7\u06e1\u06d8\u06d7\u06e1\u06ec\u06df\u06d9\u06d6\u06d8\u06da\u06e2\u06e7"

    goto :goto_2

    :sswitch_7
    if-eqz v1, :cond_0

    const-string v0, "\u06d8\u06d7\u06e4\u06e1\u06d7\u06d8\u06d8\u06e1\u06e1\u06e5\u06d8\u06e7\u06e5\u06d8\u06e4\u06ec\u06e1\u06d6\u06df\u06e1\u06d8\u06df\u06e5\u06d8\u06d8\u06d7\u06e4\u06dc\u06ec\u06d7\u06dc\u06da\u06d9\u06eb\u06e4\u06e7\u06e5\u06e6\u06d6\u06e6\u06d8\u06e4\u06e8\u06d8\u06ec\u06e0\u06d9\u06d7\u06e8\u06dc\u06e4\u06df\u06e4"

    goto :goto_2

    :sswitch_8
    const-string v0, "\u06da\u06db\u06e6\u06e7\u06db\u06d9\u06eb\u06d9\u06e2\u06e1\u06e8\u06dc\u06d8\u06d8\u06e1\u06e1\u06e1\u06da\u06d6\u06d8\u06e2\u06e4\u06db\u06e6\u06d9\u06d7\u06e0\u06dc\u06d8\u06e5\u06dc\u06e7\u06d8\u06d7\u06e2\u06eb\u06e6\u06df\u06d8\u06d8\u06eb\u06d8\u06df\u06e2\u06e1\u06e8\u06d8\u06e7\u06d6\u06e5\u06d8\u06d7\u06eb\u06e1\u06eb\u06e8\u06e7\u06d8\u06ec\u06ec\u06e0"

    goto :goto_2

    :sswitch_9
    const-string v0, "\u06ec\u06d9\u06e4\u06e2\u06dc\u06e4\u06eb\u06d7\u06db\u06da\u06ec\u06ec\u06da\u06d8\u06e4\u06ec\u06ec\u06d9\u06e1\u06d8\u06d6\u06e2\u06d7\u06e1\u06e6\u06e8\u06d8\u06ec\u06eb\u06dc\u06d9\u06df\u06d9\u06db\u06dc\u06d9\u06e2\u06e1\u06d8\u06dc\u06e7\u06d8\u06d8"

    goto :goto_1

    :sswitch_a
    const-string v0, "\u06e5\u06d9\u06e1\u06d8\u06e1\u06d6\u06dc\u06ec\u06e0\u06dc\u06e0\u06da\u06df\u06dc\u06db\u06da\u06e7\u06d9\u06eb\u06d9\u06e8\u06ec\u06e4\u06e6\u06db\u06e4\u06e6\u06ec\u06d6\u06d8"

    goto :goto_0

    :sswitch_b
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const-string v0, "\u06d6\u06ec\u06e2\u06e1\u06e5\u06d8\u06d8\u06e6\u06db\u06db\u06e5\u06e6\u06ec\u06e0\u06dc\u06d8\u06da\u06d8\u06db\u06d9\u06df\u06e2\u06e8\u06dc\u06e0\u06df\u06e8\u06e1\u06d8\u06e8\u06dc\u06e8\u06e2\u06e4\u06e0\u06df\u06d8\u06d8\u06d8\u06df\u06e4\u06dc\u06e5\u06d8\u06e5\u06e8\u06e5\u06e6\u06d8\u06e8\u06e4\u06ec\u06e8\u06e7\u06e6\u06d8\u06e7\u06d7\u06e8\u06d8"

    goto :goto_0

    :sswitch_c
    const-string v0, "\u06d6\u06ec\u06e2\u06e1\u06e5\u06d8\u06d8\u06e6\u06db\u06db\u06e5\u06e6\u06ec\u06e0\u06dc\u06d8\u06da\u06d8\u06db\u06d9\u06df\u06e2\u06e8\u06dc\u06e0\u06df\u06e8\u06e1\u06d8\u06e8\u06dc\u06e8\u06e2\u06e4\u06e0\u06df\u06d8\u06d8\u06d8\u06df\u06e4\u06dc\u06e5\u06d8\u06e5\u06e8\u06e5\u06e6\u06d8\u06e8\u06e4\u06ec\u06e8\u06e7\u06e6\u06d8\u06e7\u06d7\u06e8\u06d8"

    goto :goto_0

    :sswitch_d
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x3b92ec82 -> :sswitch_b
        -0xe167b17 -> :sswitch_d
        0x30e7a8b9 -> :sswitch_2
        0x631ef628 -> :sswitch_3
        0x7774702c -> :sswitch_1
        0x7bc02781 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x7be4326a -> :sswitch_a
        -0x681e1752 -> :sswitch_4
        -0x1a047bdf -> :sswitch_c
        -0xda970f1 -> :sswitch_9
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        -0x2cc61aa5 -> :sswitch_8
        -0x9500fd5 -> :sswitch_5
        0x30b4914a -> :sswitch_6
        0x6df8adf3 -> :sswitch_7
    .end sparse-switch
.end method

.method public onPause()V
    .locals 4

    const-string v0, "\u06e5\u06e1\u06d6\u06e5\u06e0\u06eb\u06d6\u06e7\u06d8\u06d9\u06d8\u06e6\u06e0\u06da\u06e8\u06e5\u06d8\u06e8\u06d9\u06d7\u06df\u06df\u06df\u06ec\u06e6\u06eb\u06ec\u06da\u06da\u06dc\u06eb\u06e6\u06e8\u06ec\u06e8\u06e6"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x1ac

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x11c

    const/16 v2, 0x8

    const v3, 0xf2ed8a5

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d6\u06d9\u06e6\u06d8\u06dc\u06d6\u06db\u06e7\u06e0\u06d6\u06e7\u06e8\u06e6\u06d8\u06da\u06e1\u06eb\u06e1\u06e0\u06d8\u06e8\u06e6\u06eb\u06da\u06d8\u06e1\u06d8\u06dc\u06d9\u06e7\u06df\u06e5\u06e8\u06d8\u06d6\u06e4\u06dc\u06db\u06d8\u06e7\u06e8\u06dc\u06e1\u06e0\u06e7\u06eb"

    goto :goto_0

    :sswitch_1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    const-string v0, "\u06e0\u06e5\u06d8\u06e5\u06e6\u06da\u06ec\u06d9\u06e1\u06d8\u06eb\u06df\u06e5\u06e4\u06dc\u06d8\u06e4\u06e0\u06e5\u06e4\u06e6\u06e6\u06d8\u06ec\u06d9\u06d7\u06d8\u06dc\u06d6\u06dc\u06e7\u06e1\u06e7\u06d7\u06e8\u06d8\u06d7\u06d9\u06db"

    goto :goto_0

    :sswitch_2
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    const-string v0, "\u06d6\u06e1\u06e5\u06d8\u06d6\u06dc\u06e8\u06db\u06e1\u06e0\u06e0\u06e5\u06d8\u06e8\u06e0\u06e2\u06d6\u06e4\u06db\u06ec\u06e0\u06e8\u06e8\u06d8\u06e8\u06ec\u06da\u06e1\u06e8\u06e6\u06e1\u06e2\u06e0\u06d8\u06e4\u06e6\u06e2"

    goto :goto_0

    :sswitch_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x52e32509 -> :sswitch_1
        -0x43871299 -> :sswitch_3
        0x3e04c692 -> :sswitch_2
        0x5e5f4f47 -> :sswitch_0
    .end sparse-switch
.end method

.method public onResume()V
    .locals 4

    const-string v0, "\u06df\u06d7\u06d7\u06ec\u06e8\u06eb\u06d6\u06d7\u06d6\u06d8\u06db\u06ec\u06d7\u06df\u06ec\u06ec\u06dc\u06d6\u06d8\u06ec\u06d9\u06e5\u06ec\u06eb\u06e0\u06d8\u06e5\u06e1\u06d8\u06e5\u06d9\u06d8\u06d6\u06d7\u06e4\u06d6\u06e2\u06e1\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x17c

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x2a1

    const/16 v2, 0x350

    const v3, 0x2fb94815

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06eb\u06db\u06e5\u06d8\u06df\u06d7\u06e5\u06e8\u06d6\u06df\u06db\u06dc\u06dc\u06d8\u06d8\u06e1\u06e0\u06d6\u06df\u06da\u06da\u06e5\u06e8\u06e5\u06e8\u06e6\u06da\u06df\u06df\u06d6\u06e6\u06e1\u06d8\u06e1\u06e1\u06e7\u06d8\u06e8\u06e1\u06e8\u06db\u06e1\u06e5\u06d8\u06ec\u06d8\u06df\u06e8\u06ec\u06e1\u06d8\u06e0\u06df\u06d7"

    goto :goto_0

    :sswitch_1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    const-string v0, "\u06d7\u06db\u06e5\u06d8\u06ec\u06dc\u06e6\u06d8\u06e4\u06e5\u06e1\u06d8\u06e6\u06e0\u06e8\u06ec\u06e7\u06db\u06d8\u06dc\u06e4\u06df\u06ec\u06dc\u06d8\u06e7\u06d6\u06e6\u06dc\u06ec\u06d8\u06ec\u06eb\u06d6\u06d8\u06e0\u06d7\u06e7\u06e5\u06d8\u06e2\u06ec\u06dc\u06d6\u06d8\u06e1\u06e6\u06ec\u06dc\u06e5\u06d8\u06da\u06e1"

    goto :goto_0

    :sswitch_2
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    const-string v0, "\u06e1\u06e1\u06d6\u06d6\u06d7\u06ec\u06d6\u06da\u06e5\u06d8\u06d9\u06e2\u06e8\u06d8\u06e8\u06d6\u06e5\u06d8\u06e6\u06db\u06e5\u06e5\u06d9\u06e5\u06e5\u06dc\u06d6\u06e7\u06eb\u06e1\u06d8\u06d6\u06d7\u06e1\u06d8\u06e7\u06da\u06e6\u06d8\u06da\u06e5\u06d7"

    goto :goto_0

    :sswitch_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7bd56e3c -> :sswitch_3
        -0x2237d424 -> :sswitch_1
        0x71fc0c0 -> :sswitch_2
        0x2d648679 -> :sswitch_0
    .end sparse-switch
.end method
