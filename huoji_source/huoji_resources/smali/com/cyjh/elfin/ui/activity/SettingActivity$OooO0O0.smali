.class public Lcom/cyjh/elfin/ui/activity/SettingActivity$OooO0O0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/elfin/ui/activity/SettingActivity;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final OoooOoO:Landroid/widget/EditText;

.field public final OoooOoo:Landroid/app/AlertDialog;

.field public final Ooooo00:Lcom/cyjh/elfin/ui/activity/SettingActivity;


# direct methods
.method public constructor <init>(Lcom/cyjh/elfin/ui/activity/SettingActivity;Landroid/widget/EditText;Landroid/app/AlertDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity$OooO0O0;->Ooooo00:Lcom/cyjh/elfin/ui/activity/SettingActivity;

    iput-object p2, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity$OooO0O0;->OoooOoO:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity$OooO0O0;->OoooOoo:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const-string v0, "\u06eb\u06e1\u06dc\u06d8\u06da\u06dc\u06df\u06e6\u06e7\u06e8\u06ec\u06e2\u06e4\u06e2\u06d8\u06dc\u06e4\u06e6\u06e1\u06d7\u06e7\u06e0\u06d8\u06df\u06d7\u06d8\u06e6\u06e1\u06d8\u06d6\u06e1\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x3b7

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x1ae

    const/16 v2, 0x17b

    const v3, -0x2eb8268e

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e6\u06df\u06e6\u06d8\u06d6\u06dc\u06d6\u06d8\u06d8\u06db\u06e7\u06e4\u06da\u06e4\u06e7\u06e5\u06e7\u06d8\u06e1\u06d7\u06d9\u06e1\u06e0\u06df\u06d7\u06db\u06e8\u06e1\u06e4\u06dc\u06d8\u06e0\u06e4\u06d6\u06dc\u06eb\u06e6\u06d8\u06d7\u06d6\u06da\u06eb\u06d7\u06d8\u06d7\u06e8\u06d6\u06e6\u06e0\u06d9\u06e7\u06dc\u06d8"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06ec\u06d8\u06e0\u06d9\u06e0\u06d8\u06d8\u06e1\u06e8\u06da\u06d6\u06e0\u06e8\u06d8\u06dc\u06e7\u06dc\u06d8\u06e2\u06e1\u06d9\u06eb\u06e6\u06e8\u06d9\u06d9\u06d8\u06db\u06d9\u06e1\u06e0\u06d9\u06d6\u06d8\u06d7\u06e6\u06e6\u06d8\u06e8\u06e8"

    goto :goto_0

    :sswitch_2
    const v1, -0x6cd172e6

    const-string v0, "\u06ec\u06db\u06e2\u06da\u06e5\u06dc\u06dc\u06e4\u06e8\u06d7\u06d7\u06da\u06e1\u06e5\u06e8\u06e6\u06e0\u06d8\u06d8\u06e1\u06ec\u06dc\u06d7\u06dc\u06e1\u06e5\u06d7\u06e2\u06d8\u06e1\u06d9\u06d7\u06eb\u06d7\u06d8\u06d9\u06e2\u06da\u06ec\u06e5\u06d9\u06da\u06dc\u06d8\u06d9\u06e0\u06dc\u06d8\u06d6\u06d7\u06e8\u06d9\u06e2\u06e6\u06e6\u06e7\u06e2"

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v2, v1

    sparse-switch v2, :sswitch_data_1

    goto :goto_1

    :sswitch_3
    const v2, -0x4e26d2d0

    const-string v0, "\u06e2\u06e6\u06e6\u06df\u06d7\u06e4\u06e1\u06e1\u06e1\u06e5\u06e6\u06e6\u06d8\u06e1\u06dc\u06e5\u06d8\u06e8\u06df\u06da\u06eb\u06e4\u06e1\u06e2\u06db\u06dc\u06e0\u06e8\u06d8\u06e0\u06eb\u06e2\u06df\u06e8\u06e6\u06d8\u06e2\u06e4\u06e4\u06e1\u06e2\u06e6\u06e1\u06dc\u06e6\u06d8"

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v2

    sparse-switch v3, :sswitch_data_2

    goto :goto_2

    :sswitch_4
    const-string v0, "\u06da\u06e2\u06dc\u06d8\u06e0\u06d6\u06dc\u06d8\u06e2\u06e5\u06d8\u06d7\u06d7\u06dc\u06d8\u06eb\u06d9\u06d6\u06d8\u06eb\u06ec\u06ec\u06d9\u06e2\u06d8\u06e2\u06db\u06df\u06e8\u06df\u06d9\u06eb\u06e1\u06d8"

    goto :goto_1

    :sswitch_5
    const-string v0, "\u06e6\u06d7\u06e0\u06db\u06e8\u06eb\u06e5\u06e0\u06db\u06d6\u06df\u06eb\u06e6\u06e1\u06e7\u06e6\u06db\u06e1\u06db\u06db\u06e6\u06e4\u06d7\u06d6\u06da\u06da\u06e1\u06e2\u06e4"

    goto :goto_1

    :cond_0
    const-string v0, "\u06dc\u06d8\u06da\u06e1\u06e6\u06da\u06e0\u06ec\u06ec\u06e5\u06e8\u06df\u06e6\u06e6\u06da\u06d6\u06eb\u06e5\u06d8\u06ec\u06ec\u06dc\u06d8\u06e6\u06da\u06dc\u06d7\u06ec\u06e1\u06ec\u06d8\u06d6\u06d7\u06ec\u06d6\u06e1\u06e2\u06e4"

    goto :goto_2

    :sswitch_6
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity$OooO0O0;->OoooOoO:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u06e7\u06e6\u06e2\u06e0\u06ec\u06e2\u06d6\u06e8\u06d6\u06d8\u06da\u06d7\u06df\u06e8\u06e5\u06d9\u06e0\u06da\u06da\u06e8\u06d6\u06eb\u06e0\u06e8\u06d8\u06ec\u06d8\u06d9\u06df\u06eb\u06ec\u06e1\u06e5\u06e7\u06d8\u06e5\u06e6\u06d6\u06e0\u06da\u06eb\u06e2\u06d6\u06d8\u06d8\u06d9\u06e5\u06d8\u06e2\u06d7\u06e8\u06d8"

    goto :goto_2

    :sswitch_7
    const-string v0, "\u06e7\u06e0\u06dc\u06e7\u06df\u06e2\u06ec\u06e5\u06e0\u06ec\u06d9\u06d7\u06e1\u06d9\u06e8\u06d8\u06ec\u06dc\u06e4\u06e4\u06e4\u06dc\u06eb\u06d8\u06e8\u06d8\u06e6\u06e6\u06e1\u06d8\u06d8\u06e4\u06e1"

    goto :goto_2

    :sswitch_8
    const-string v0, "\u06d7\u06e4\u06e1\u06d8\u06e0\u06ec\u06df\u06e6\u06e8\u06e8\u06d8\u06d6\u06df\u06e4\u06df\u06ec\u06dc\u06df\u06e4\u06e6\u06d8\u06ec\u06d8\u06df\u06e7\u06d6\u06eb\u06e7\u06e1\u06e8\u06d8\u06da\u06df\u06e0\u06e8\u06d8\u06d6\u06d8\u06dc\u06e6\u06e1\u06d8\u06e6\u06e0\u06e8\u06d6\u06d6\u06e4"

    goto :goto_1

    :sswitch_9
    const-string v0, "\u06e7\u06dc\u06d8\u06e6\u06d8\u06d8\u06e7\u06e6\u06e1\u06e0\u06d6\u06d7\u06e6\u06d9\u06d8\u06df\u06db\u06e0\u06eb\u06d6\u06d8\u06e4\u06e2\u06e6\u06d8\u06df\u06e5\u06e5\u06d8\u06d8\u06d8\u06d8"

    goto :goto_0

    :sswitch_a
    const-string v0, "\u8f93\u5165\u4e0d\u80fd\u4e3a\u7a7a\uff01"

    invoke-static {v0}, Lz2/t5;->o000oOoO(Ljava/lang/CharSequence;)V

    const-string v0, "O\u06e0\u06e0\u06d6\u06d8\u06e4\u06dc\u06e1\u06d9\u06d8\u06dc\u06d8\u06e8\u06d8\u06df\u06e6\u06d8\u06d8\u06ec\u06e8\u06d9\u06e1\u06e0\u06e4\u06e1\u06d6\u06d6\u06d8\u06e7\u06d9\u06d9\u06ec\u06e1\u06e0\u06e4\u06e0\u06d9\u06e0\u06e5\u06d6\u06e5\u06e5\u06e7"

    goto :goto_0

    :sswitch_b
    invoke-static {}, Lz2/x4;->OooO0O0()Lz2/x4;

    move-result-object v0

    const-string v1, "sp_key_adb_command"

    iget-object v2, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity$OooO0O0;->OoooOoO:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lz2/x4;->OooO0oo(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\u06d8\u06da\u06df\u06e6\u06ec\u06e4\u06eb\u06ec\u06e2\u06e2\u06e1\u06db\u06db\u06e8\u06dc\u06df\u06e8\u06e0\u06da\u06d6\u06d7\u06dc\u06d8\u06ec\u06d8\u06e8\u06e2\u06d8\u06dc\u06e7"

    goto :goto_0

    :sswitch_c
    const-string v0, "\u5df2\u4fdd\u5b58\uff01"

    invoke-static {v0}, Lz2/t5;->o000oOoO(Ljava/lang/CharSequence;)V

    const-string v0, "\u06df\u06da\u06e8\u06d8\u06db\u06dc\u06d6\u06da\u06d9\u06e6\u06e7\u06db\u06df\u06e2\u06e4\u06ec\u06e7\u06e4\u06eb\u06e2\u06d8\u06e8\u06d7\u06e5\u06d8\u06e5\u06ec\u06e6\u06d8\u06e4\u06db\u06e6\u06d8\u06e4\u06da\u06e8\u06d8\u06df\u06e4\u06e6\u06d8"

    goto :goto_0

    :sswitch_d
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity$OooO0O0;->OoooOoo:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    const-string v0, "\u06db\u06d6\u06dc\u06dc\u06eb\u06ec\u06e8\u06eb\u06e1\u06d8\u06e8\u06d6\u06e5\u06d6\u06da\u06e5\u06d8\u06d6\u06e8\u06e2\u06e1\u06eb\u06e8\u06eb\u06d8\u06d6\u06d8\u06eb\u06eb\u06da\u06eb\u06d6\u06e0"

    goto/16 :goto_0

    :sswitch_e
    const-string v0, "\u06ec\u06d7\u06df\u06d7\u06eb\u06e8\u06d8\u06da\u06e2\u06e1\u06e0\u06dc\u06e8\u06db\u06e1\u06e4\u06df\u06e5\u06d8\u06da\u06db\u06dc\u06e7\u06e8\u06e4\u06e2\u06ec\u06e0\u06eb\u06e4\u06d9"

    goto/16 :goto_0

    :sswitch_f
    const-string v0, "\u06db\u06d6\u06dc\u06dc\u06eb\u06ec\u06e8\u06eb\u06e1\u06d8\u06e8\u06d6\u06e5\u06d6\u06da\u06e5\u06d8\u06d6\u06e8\u06e2\u06e1\u06eb\u06e8\u06eb\u06d8\u06d6\u06d8\u06eb\u06eb\u06da\u06eb\u06d6\u06e0"

    goto/16 :goto_0

    :sswitch_10
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7f3e52d3 -> :sswitch_0
        -0x644331e7 -> :sswitch_d
        -0x324a519f -> :sswitch_b
        -0x15567b51 -> :sswitch_1
        -0xf66de60 -> :sswitch_10
        0x92b195a -> :sswitch_c
        0x21b105b6 -> :sswitch_f
        0x3f9283e3 -> :sswitch_2
        0x7fa7e353 -> :sswitch_a
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x718ce1a3 -> :sswitch_3
        -0x298c71c1 -> :sswitch_9
        0x5065a2cf -> :sswitch_e
        0x6bb9d7ed -> :sswitch_8
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        -0x6a87ee69 -> :sswitch_7
        0x51f7c468 -> :sswitch_6
        0x6cbef257 -> :sswitch_4
        0x6e00728d -> :sswitch_5
    .end sparse-switch
.end method
