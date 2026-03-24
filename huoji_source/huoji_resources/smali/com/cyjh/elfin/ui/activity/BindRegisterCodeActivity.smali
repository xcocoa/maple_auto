.class public Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;
.super Lcom/cyjh/common/base/activity/BaseModelActivity;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity$OooOOO0;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/cyjh/common/base/activity/BaseModelActivity",
        "<",
        "Lz2/oa;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# static fields
.field public static final o00oO0o:I = 0x3eb

.field public static final oo000o:[Ljava/lang/String;


# instance fields
.field private OooooOO:Ljava/lang/String;

.field private OooooOo:Landroid/widget/EditText;

.field private Oooooo:Landroid/widget/LinearLayout;

.field private Oooooo0:Landroid/widget/TextView;

.field private OoooooO:Landroid/widget/TextView;

.field private Ooooooo:Landroid/widget/TextView;

.field private o00O0O:Landroid/view/View;

.field private o00Oo0:Landroid/view/View;

.field private o00Ooo:Landroid/widget/TextView;

.field private final o00o0O:Landroid/os/Handler;

.field private o00ooo:Z

.field private o0OoOo0:Landroid/widget/TextView;

.field private ooOO:Landroid/view/View;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const-string v0, "\u06e1\u06e1\u06d7\u06e2\u06d6\u06d9\u06d8\u06e5\u06e2\u06dc\u06e1\u06df\u06eb\u06eb\u06dc\u06d8\u06d9\u06eb\u06e6\u06d7\u06e8\u06e7\u06df\u06e5\u06e5\u06d8\u06e1\u06d9\u06d9\u06eb\u06d9\u06e7\u06da\u06e4\u06dc\u06d8\u06e4\u06e4\u06d8\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x16c

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x3c5

    const/16 v2, 0x2b9

    const v3, 0x62edb4e0

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.CAMERA"

    aput-object v2, v0, v1

    sput-object v0, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;->oo000o:[Ljava/lang/String;

    const-string v0, "\u06d6\u06eb\u06e1\u06db\u06d7\u06d8\u06e7\u06e7\u06e4\u06e6\u06dc\u06d6\u06d8\u06e0\u06e6\u06e8\u06d7\u06df\u06e1\u06dc\u06e8\u06e0\u06ec\u06d6\u06e5\u06d8\u06eb\u06d9\u06d6\u06e7\u06d6\u06e6\u06d8\u06e2\u06e2\u06d6\u06d8\u06e8\u06e1\u06e1\u06d8\u06dc\u06e8\u06dc\u06d8\u06eb\u06d7\u06df"

    goto :goto_0

    :sswitch_1
    return-void

    :sswitch_data_0
    .sparse-switch
        0x430de98 -> :sswitch_0
        0x6c54a0e -> :sswitch_1
    .end sparse-switch
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/cyjh/common/base/activity/BaseModelActivity;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;->o00o0O:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic OooOO0(Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;Lcom/cyjh/http/bean/response/QueryRegCodeInfo;)V
    .locals 4

    const-string v0, "\u06e8\u06e7\u06d7\u06e6\u06e2\u06e4\u06d8\u06e6\u06e1\u06df\u06d7\u06e6\u06d8\u06db\u06dc\u06e4\u06e1\u06d8\u06e6\u06d8\u06e7\u06e4\u06ec\u06d6\u06e7\u06dc\u06e5\u06df\u06e1\u06e4\u06e2\u06d8\u06ec\u06d7\u06db\u06e1\u06db\u06e0\u06e5\u06d8\u06ec\u06df\u06df"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x2c7

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x3d9

    const/16 v2, 0xf4

    const v3, 0xde35e2a

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e7\u06d8\u06e4\u06dc\u06d9\u06df\u06e1\u06e7\u06e4\u06e7\u06e8\u06e1\u06db\u06df\u06e5\u06d8\u06e4\u06d6\u06e8\u06d8\u06db\u06e5\u06da\u06d9\u06e8\u06d8\u06d8\u06e0\u06e7\u06e5\u06d8\u06d7\u06e1\u06e5\u06d8\u06e2\u06d7\u06e7\u06e2\u06d6\u06d8\u06d8\u06ec\u06e2\u06eb\u06db\u06ec\u06e5"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06d6\u06da\u06e6\u06e7\u06d8\u06ec\u06e1\u06e8\u06e8\u06e4\u06ec\u06e1\u06d8\u06ec\u06e1\u06e8\u06d8\u06d7\u06d9\u06d9\u06e5\u06d6\u06e0\u06d9\u06e2\u06db\u06e5\u06d9\u06e2\u06eb\u06df\u06e5\u06d8\u06eb\u06e7\u06eb\u06d6\u06da\u06d8\u06d6\u06e5\u06e7\u06d8\u06d7\u06d8\u06e0\u06da\u06eb\u06ec\u06db\u06eb\u06d8\u06e5\u06e8\u06ec\u06db\u06db\u06d6"

    goto :goto_0

    :sswitch_2
    invoke-direct {p0, p1}, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;->OooOOo(Lcom/cyjh/http/bean/response/QueryRegCodeInfo;)V

    const-string v0, "\u06e1\u06d7\u06eb\u06df\u06da\u06d7\u06e0\u06dc\u06dc\u06d8\u06ec\u06e5\u06d6\u06d8\u06e0\u06e7\u06d8\u06d8\u06e8\u06db\u06e6\u06d6\u06e5\u06d8\u06d8\u06e2\u06d8\u06dc\u06e7\u06e7\u06dc\u06d9\u06e5\u06d8\u06e8\u06dc\u06d6\u06e1\u06e0\u06e6\u06d8\u06e7\u06e2\u06d8\u06d8\u06e2\u06e7\u06df"

    goto :goto_0

    :sswitch_3
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5c87823f -> :sswitch_3
        0x1d6298b5 -> :sswitch_0
        0x1ddcdaed -> :sswitch_2
        0x377d5339 -> :sswitch_1
    .end sparse-switch
.end method

.method public static synthetic OooOO0O(Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;)Ljava/lang/String;
    .locals 4

    const-string v0, "\u06d8\u06dc\u06d7\u06e8\u06da\u06da\u06df\u06e8\u06e2\u06ec\u06ec\u06e2\u06d8\u06e1\u06db\u06d6\u06da\u06dc\u06eb\u06dc\u06d8\u06d7\u06dc\u06dc\u06e5\u06eb\u06db\u06d9\u06eb\u06db\u06d9\u06e0\u06da\u06df\u06e4\u06d6\u06d8\u06db\u06d6\u06e0\u06ec\u06d7\u06ec\u06db\u06e4\u06ec\u06e5\u06e5\u06e8\u06e4\u06e5\u06e6\u06e8\u06e7"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x23b

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x26b

    const/16 v2, 0x381

    const v3, 0x2f4f5836

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d7\u06e7\u06e7\u06e1\u06d8\u06e1\u06d8\u06ec\u06d6\u06e4\u06e1\u06d8\u06d6\u06e0\u06e4\u06e6\u06d8\u06eb\u06e1\u06e1\u06d6\u06df\u06dc\u06e1\u06e6\u06eb\u06e0\u06da\u06db\u06dc\u06e6\u06d7\u06d8\u06d8\u06e5\u06d8\u06e6\u06e0\u06e8\u06d8\u06dc\u06e7\u06d8\u06e1\u06e2\u06da\u06e7\u06d7\u06e6\u06d8\u06ec\u06da\u06e1\u06d6\u06e7\u06e2\u06e5\u06d7\u06e6"

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;->OooooOO:Ljava/lang/String;

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x2d1f002a -> :sswitch_0
        0x68f300c6 -> :sswitch_1
    .end sparse-switch
.end method

.method public static synthetic OooOO0o(Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;)Landroidx/lifecycle/AndroidViewModel;
    .locals 4

    const-string v0, "\u06da\u06d8\u06e5\u06d8\u06e6\u06dc\u06e4\u06e1\u06d9\u06eb\u06dc\u06d6\u06e0\u06e6\u06e7\u06e5\u06d8\u06d6\u06e8\u06e0\u06e8\u06e2\u06df\u06e5\u06e2\u06e5\u06dc\u06e0\u06dc\u06e1\u06e4\u06e4"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x3f

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x1be

    const/16 v2, 0xc8

    const v3, -0x5906ff0a

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06df\u06d7\u06e7\u06e4\u06e2\u06d6\u06e2\u06ec\u06d6\u06d8\u06e5\u06e6\u06dc\u06d9\u06e5\u06e5\u06d8\u06e7\u06e7\u06d6\u06e0\u06d7\u06e8\u06eb\u06ec\u06d9\u06df\u06e6\u06e6\u06d8\u06d8\u06d8\u06e4\u06e0\u06df\u06e1\u06e2\u06e4"

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/cyjh/common/base/activity/BaseModelActivity;->OooooO0:Landroidx/lifecycle/AndroidViewModel;

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x7c637977 -> :sswitch_0
        0x62a2444e -> :sswitch_1
    .end sparse-switch
.end method

.method public static synthetic OooOOO(Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;Z)Z
    .locals 4

    const-string v0, "\u06dc\u06ec\u06e5\u06d9\u06eb\u06e1\u06d8\u06e4\u06e2\u06e8\u06d8\u06e1\u06e7\u06e5\u06dc\u06eb\u06d6\u06d8\u06e8\u06e4\u06d6\u06e7\u06ec\u06e2\u06ec\u06d7\u06e2\u06da\u06dc\u06ec\u06e4\u06d7\u06eb\u06e0\u06e5\u06da\u06d6\u06e8\u06d8\u06e1\u06e5\u06dc\u06e7\u06dc\u06d6\u06e8\u06db\u06ec\u06d7\u06d9\u06e5\u06d8\u06ec\u06d9\u06d6\u06d8\u06e0\u06d6\u06e8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x19d

    xor-int/2addr v1, v2

    xor-int/lit8 v1, v1, 0x48

    const/16 v2, 0x130

    const v3, -0x52aefe77

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e8\u06d7\u06da\u06e5\u06da\u06e5\u06db\u06d8\u06e7\u06e1\u06dc\u06d8\u06e7\u06db\u06d9\u06d8\u06e4\u06dc\u06d8\u06db\u06e0\u06dc\u06d8\u06e1\u06d9\u06e4\u06e2\u06df\u06e7\u06d8\u06dc\u06da\u06da\u06d9\u06e5\u06d8\u06e8\u06d6\u06e1\u06e2\u06d8\u06ec\u06dc\u06dc\u06e5\u06d8\u06dc\u06e7\u06db\u06e7\u06dc\u06d8"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06d6\u06e8\u06db\u06da\u06e6\u06e2\u06d9\u06ec\u06eb\u06e7\u06dc\u06da\u06da\u06e6\u06e6\u06d6\u06e8\u06d8\u06e1\u06e6\u06d8\u06d8\u06d9\u06e1\u06e8\u06e4\u06e8\u06e0\u06d9\u06e6\u06e7\u06d8\u06e7\u06e1\u06d8\u06db\u06d6\u06d7"

    goto :goto_0

    :sswitch_2
    iput-boolean p1, p0, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;->o00ooo:Z

    const-string v0, "\u06e5\u06d7\u06e6\u06d8\u06df\u06d9\u06da\u06eb\u06eb\u06d8\u06e6\u06e6\u06e2\u06e0\u06da\u06e6\u06e2\u06e7\u06e2\u06dc\u06d6\u06da\u06db\u06da\u06ec\u06d6\u06e8\u06d8\u06e0\u06e6\u06d8\u06d8\u06d9\u06df\u06e8\u06e7\u06e2\u06e6\u06eb\u06e5\u06d7\u06e1\u06e2"

    goto :goto_0

    :sswitch_3
    return p1

    :sswitch_data_0
    .sparse-switch
        -0x174f505f -> :sswitch_0
        -0x1456174f -> :sswitch_1
        0x2ff8a1e1 -> :sswitch_3
        0x6f18a7ef -> :sswitch_2
    .end sparse-switch
.end method

.method public static synthetic OooOOO0(Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;)Landroidx/lifecycle/AndroidViewModel;
    .locals 4

    const-string v0, "\u06da\u06e8\u06e5\u06d8\u06e8\u06e7\u06e1\u06e2\u06da\u06d8\u06eb\u06d9\u06e5\u06e4\u06e8\u06eb\u06ec\u06da\u06d6\u06ec\u06e8\u06dc\u06d8\u06e2\u06d7\u06d6\u06da\u06d8\u06e8\u06e0\u06e7\u06db\u06d6\u06eb\u06e5\u06d8\u06eb\u06e4\u06dc\u06d8\u06eb\u06e4\u06e2\u06e6\u06e6\u06d6\u06d8\u06e5\u06d8\u06e8\u06d8\u06d6\u06e2\u06e1\u06e2\u06ec\u06e8\u06d8\u06d7\u06db\u06db"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x37f

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x202

    const/16 v2, 0x336

    const v3, -0x27d2dca7

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06db\u06e7\u06db\u06e2\u06e5\u06e2\u06da\u06d6\u06d9\u06df\u06e4\u06ec\u06df\u06e6\u06e1\u06d8\u06d8\u06e4\u06e5\u06db\u06e8\u06ec\u06d8\u06db\u06e1\u06da\u06d9\u06e5\u06d6\u06d6\u06d8\u06e6\u06d8\u06d7\u06ec\u06da\u06e5\u06d8\u06e2\u06da\u06dc\u06e7\u06d6\u06db"

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/cyjh/common/base/activity/BaseModelActivity;->OooooO0:Landroidx/lifecycle/AndroidViewModel;

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x76b78e53 -> :sswitch_0
        -0x6f6d4f2 -> :sswitch_1
    .end sparse-switch
.end method

.method public static synthetic OooOOOO(Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 4

    const-string v0, "\u06e4\u06e7\u06dc\u06e2\u06d7\u06e5\u06df\u06da\u06e8\u06d8\u06da\u06e7\u06d9\u06e6\u06e1\u06df\u06e0\u06df\u06d9\u06e0\u06da\u06d8\u06e6\u06d7\u06e0\u06e7\u06e1\u06e4\u06df\u06d6\u06df"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x2a8

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x3fc

    const/16 v2, 0x243

    const v3, -0xbf2da95

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06df\u06e5\u06e4\u06e1\u06e1\u06e2\u06e6\u06dc\u06e8\u06db\u06d6\u06e6\u06d6\u06ec\u06d6\u06d8\u06e8\u06df\u06e2\u06e6\u06e5\u06dc\u06d8\u06d9\u06e0\u06e4\u06d6\u06d6\u06e7\u06e8\u06e2\u06db\u06eb\u06e2\u06df\u06e7\u06e7\u06dc\u06e7\u06e8\u06e4\u06e1\u06dc\u06e1\u06d8\u06ec\u06d8\u06e6\u06e0\u06e0"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06dc\u06eb\u06e7\u06ec\u06e8\u06e2\u06d8\u06d6\u06e8\u06d8\u06e4\u06e7\u06e0\u06e2\u06df\u06dc\u06d8\u06eb\u06db\u06e1\u06e2\u06da\u06db\u06dc\u06e4\u06e0\u06eb\u06db\u06e8\u06db\u06d9\u06d9\u06e7\u06da\u06e5\u06e4\u06d7\u06da"

    goto :goto_0

    :sswitch_2
    const-string v0, "\u06e4\u06e1\u06d8\u06d8\u06e1\u06e5\u06d8\u06ec\u06e5\u06e1\u06e2\u06e8\u06e7\u06d6\u06e4\u06e5\u06ec\u06d9\u06e6\u06d8\u06df\u06ec\u06e8\u06e1\u06da\u06da\u06eb\u06e4\u06df\u06d9\u06d6\u06e4\u06e2\u06d8\u06ec\u06e6\u06d6\u06eb\u06e7\u06d7\u06e1\u06df"

    goto :goto_0

    :sswitch_3
    invoke-direct {p0, p1, p2}, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;->OooOOOo(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    return v0

    :sswitch_data_0
    .sparse-switch
        -0x3ce2c964 -> :sswitch_3
        0x4d461638 -> :sswitch_2
        0x546ba3e3 -> :sswitch_1
        0x56ad0dd3 -> :sswitch_0
    .end sparse-switch
.end method

.method private OooOOOo(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 4

    const-string v0, "\u06e4\u06d6\u06d7\u06e8\u06da\u06e6\u06d8\u06e8\u06dc\u06e5\u06d8\u06d9\u06e7\u06e1\u06e5\u06e4\u06d6\u06d8\u06e7\u06dc\u06da\u06d9\u06e4\u06e6\u06d8\u06da\u06e5\u06d6\u06e0\u06e7\u06da\u06eb\u06e2\u06dc\u06e1\u06e2\u06e1\u06d8\u06db\u06e6\u06da"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x1bd

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x2d9

    const/16 v2, 0x30c

    const v3, -0x6979d0d

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e7\u06e8\u06e0\u06d7\u06e7\u06d8\u06d8\u06e8\u06e1\u06e5\u06e5\u06e5\u06e2\u06da\u06e6\u06db\u06e4\u06e7\u06dc\u06e4\u06d8\u06e7\u06e6\u06d8\u06e2\u06df\u06dc\u06da\u06e6\u06d7\u06e8\u06e8\u06e5\u06df\u06e6\u06e2\u06e4"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06e2\u06dc\u06e0\u06e1\u06d9\u06e8\u06e2\u06e6\u06e7\u06e7\u06da\u06d8\u06d8\u06e0\u06d8\u06e2\u06eb\u06da\u06e4\u06e1\u06e6\u06ec\u06e2\u06db\u06e6\u06d8\u06da\u06d7\u06eb\u06eb\u06e5\u06d8\u06d7\u06d9\u06db\u06dc\u06da\u06e8\u06d8"

    goto :goto_0

    :sswitch_2
    const-string v0, "\u06dc\u06e8\u06e1\u06d9\u06e0\u06da\u06e7\u06e4\u06e1\u06d8\u06e8\u06db\u06e8\u06d8\u06eb\u06db\u06e8\u06d9\u06e6\u06dc\u06d6\u06e0\u06e4\u06e2\u06df\u06e6\u06e1\u06df\u06d6\u06e6\u06ec\u06d6\u06d7\u06e7\u06e1\u06e1\u06dc\u06e2\u06d7\u06da\u06d6\u06e8\u06e7\u06d8\u06e8\u06da\u06d8\u06e2\u06ec\u06d6\u06ec\u06e0\u06dc\u06ec\u06e0"

    goto :goto_0

    :sswitch_3
    const-string v0, "android"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/high16 v2, 0x10000

    invoke-virtual {v1, p2, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0

    :sswitch_data_0
    .sparse-switch
        0x24443f77 -> :sswitch_1
        0x3ad18d1c -> :sswitch_3
        0x3c5dbe27 -> :sswitch_2
        0x7b64ada3 -> :sswitch_0
    .end sparse-switch
.end method

.method private OooOOo(Lcom/cyjh/http/bean/response/QueryRegCodeInfo;)V
    .locals 8

    const/4 v7, 0x0

    const/4 v3, 0x0

    const-string v0, "\u06ec\u06e1\u06d6\u06e6\u06e7\u06e2\u06e4\u06e5\u06d9\u06e5\u06db\u06e2\u06e7\u06eb\u06d8\u06d8\u06e7\u06ec\u06db\u06e4\u06e6\u06e7\u06d8\u06e8\u06da\u06dc\u06d8\u06d7\u06dc\u06d8\u06db\u06ec\u06e1\u06d6\u06d7\u06da\u06d7\u06e8\u06d8\u06e2\u06ec\u06dc\u06db\u06d6\u06dc\u06d8"

    move-object v1, v0

    move-object v2, v3

    move-object v4, v3

    move-object v5, v3

    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v3, 0x13e

    xor-int/2addr v0, v3

    xor-int/lit16 v0, v0, 0x32b

    const/16 v3, 0x54

    const v6, 0x616f6441    # 2.7599974E20f

    xor-int/2addr v0, v3

    xor-int/2addr v0, v6

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e8\u06d9\u06e1\u06d8\u06df\u06ec\u06e7\u06d9\u06e6\u06e2\u06da\u06dc\u06df\u06e5\u06e2\u06d9\u06df\u06ec\u06e4\u06e2\u06e5\u06e1\u06db\u06d9\u06e6\u06e1\u06eb\u06e0\u06e5\u06da\u06e4\u06e0\u06e7\u06e6\u06e5\u06dc\u06d8\u06e0\u06da\u06e6\u06d8\u06ec\u06db\u06df\u06d6\u06e7\u06d9\u06e6\u06d7\u06e5\u06d8"

    move-object v1, v0

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06d7\u06db\u06dc\u06d8\u06dc\u06e2\u06e2\u06e5\u06d9\u06dc\u06e7\u06db\u06d7\u06dc\u06d8\u06e7\u06eb\u06ec\u06e7\u06e7\u06d8\u06e2\u06dc\u06d6\u06d8\u06d7\u06ec\u06dc\u06d8\u06e2\u06eb\u06e7\u06e1\u06d9\u06d8\u06d7\u06db\u06e8\u06db\u06e5\u06da\u06e5\u06d8\u06e0\u06e6\u06ec\u06eb\u06e8\u06e4"

    move-object v1, v0

    goto :goto_0

    :sswitch_2
    const v1, -0x63856f52

    const-string v0, "\u06db\u06d6\u06d6\u06d9\u06e7\u06e5\u06d8\u06e4\u06dc\u06e7\u06d8\u06e5\u06df\u06eb\u06d6\u06e2\u06da\u06e6\u06ec\u06e6\u06d8\u06d8\u06e6\u06eb\u06d8\u06e6\u06dc\u06ec\u06e0\u06e6\u06d7\u06e1\u06d7\u06df\u06eb\u06e8\u06d8\u06e6\u06df\u06da"

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v1

    sparse-switch v3, :sswitch_data_1

    goto :goto_1

    :sswitch_3
    const-string v0, "\u06da\u06e5\u06e6\u06d8\u06d9\u06eb\u06e6\u06e4\u06e6\u06d8\u06e8\u06e8\u06df\u06eb\u06e5\u06da\u06dc\u06d6\u06e6\u06e4\u06d7\u06e0\u06df\u06dc\u06d8\u06d7\u06d7\u06e2\u06e7\u06e1\u06ec\u06df\u06db\u06d9\u06dc\u06e7\u06d8\u06db\u06e1\u06eb\u06e1\u06d7\u06eb\u06db\u06e1\u06d8\u06df\u06e7\u06d9\u06da\u06e5\u06e5\u06dc\u06e8\u06d6\u06d8"

    goto :goto_1

    :sswitch_4
    const-string v0, "\u06e7\u06e0\u06ec\u06db\u06e8\u06e8O\u06dc\u06e1\u06e8\u06d8\u06e1\u06e8\u06df\u06d6\u06e1\u06e0\u06e7\u06e5\u06d8\u06d6\u06e2\u06e4\u06e8\u06d8\u06e5\u06da\u06db\u06e5\u06d9\u06ec\u06e0\u06d6\u06d6\u06df"

    goto :goto_1

    :sswitch_5
    const v3, 0x40f2567d

    const-string v0, "\u06df\u06df\u06e0\u06d7\u06d9\u06e8\u06e7\u06d9\u06dc\u06e1\u06d9\u06e0\u06eb\u06e7\u06e2\u06dc\u06eb\u06e8\u06d8\u06e7\u06e8\u06d6\u06e7\u06e0\u06d9\u06ec\u06dc\u06d6\u06e2\u06e6\u06df"

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v6

    xor-int/2addr v6, v3

    sparse-switch v6, :sswitch_data_2

    goto :goto_2

    :sswitch_6
    const-string v0, "\u06e7\u06d6\u06e2\u06d6\u06da\u06dc\u06e4\u06e5\u06e8\u06d8\u06da\u06e1\u06db\u06d9\u06d6\u06eb\u06db\u06dc\u06e7\u06d8\u06ec\u06e7\u06eb\u06e6\u06e2\u06df\u06e2\u06e7\u06d7\u06d8\u06e0\u06e8\u06e5\u06e7\u06d9\u06e8\u06ec\u06d9\u06d8\u06e8\u06d8\u06df\u06e5\u06e8\u06d8"

    goto :goto_1

    :cond_0
    const-string v0, "\u06e1\u06e4\u06e2\u06d7\u06e4\u06e2\u06dc\u06d7\u06e1\u06e5\u06e7\u06d6\u06da\u06d9\u06d8\u06d8\u06ec\u06db\u06dc\u06d8\u06d7\u06d9\u06db\u06e5\u06d7\u06e4\u06e8\u06df\u06e0\u06df\u06dc\u06e6\u06e7\u06d9\u06da\u06e2\u06e0\u06e1\u06e6\u06e7\u06d8\u06e1\u06e1\u06d9\u06e6\u06eb\u06df\u06d6\u06d7\u06ec\u06d8\u06eb\u06d6\u06e0\u06d8\u06d8"

    goto :goto_2

    :sswitch_7
    iget v0, p1, Lcom/cyjh/http/bean/response/QueryRegCodeInfo;->IsSuperposeConfirm:I

    const/4 v6, 0x1

    if-ne v0, v6, :cond_0

    const-string v0, "\u06d7\u06df\u06e7\u06e4\u06da\u06e7\u06d9\u06e1\u06e2\u06dc\u06da\u06df\u06df\u06d9\u06eb\u06e2\u06da\u06eb\u06e5\u06da\u06e1\u06e6\u06d7\u06df\u06e8\u06e5\u06dc\u06d8\u06e0\u06e0\u06e0\u06d6\u06eb\u06d9\u06e8\u06e8\u06d8\u06e2\u06eb\u06d7\u06e2\u06d7\u06dc\u06d8\u06d9\u06d8\u06e5\u06e8\u06e6\u06e0"

    goto :goto_2

    :sswitch_8
    const-string v0, "\u06d9\u06ec\u06e2\u06db\u06dc\u06e1\u06d8\u06db\u06e2\u06d7\u06d6\u06ec\u06dc\u06d8\u06e7\u06e5\u06e2\u06d9\u06e5\u06e4\u06dc\u06d7\u06e5\u06d7\u06d8\u06df\u06eb\u06dc\u06dc\u06d8\u06da\u06ec\u06e6\u06ec\u06d6\u06e1\u06d8\u06db\u06e0\u06e0\u06e8\u06e6\u06eb\u06df\u06ec\u06d8"

    goto :goto_2

    :sswitch_9
    const-string v0, "\u06e6\u06d9\u06d8\u06ec\u06e4\u06e7\u06eb\u06e1\u06eb\u06e6\u06e2\u06da\u06e8\u06e4\u06e7\u06d9\u06e2\u06db\u06e2\u06df\u06e5\u06e7\u06e5\u06d7\u06eb\u06d6\u06eb\u06eb\u06e2\u06e6\u06d8"

    move-object v1, v0

    goto :goto_0

    :sswitch_a
    invoke-static {}, Lz2/x9;->OooO0O0()Lz2/x9;

    move-result-object v0

    const v1, 0x7f0c00e3

    const v3, 0x7f110191

    invoke-virtual {v0, p0, v1, v3}, Lz2/x9;->OooO0o0(Landroid/content/Context;II)Landroid/app/AlertDialog;

    move-result-object v3

    const-string v0, "\u06e6\u06e6\u06e2\u06e5\u06dc\u06d9\u06e7\u06e6\u06d7\u06d8\u06dc\u06d8\u06e8\u06da\u06e6\u06d8\u06e2\u06dc\u06dc\u06df\u06e7\u06e6\u06d7\u06e2\u06db\u06d7\u06e0\u06e1\u06e2\u06df\u06d6\u06d8\u06e7\u06da\u06e5\u06d8\u06e6\u06e4\u06e6\u06d8\u06d7\u06d7\u06da\u06d7\u06da\u06e2\u06d6\u06e5\u06e1\u06e1\u06e8\u06d8\u06d8"

    move-object v1, v0

    move-object v5, v3

    goto :goto_0

    :sswitch_b
    invoke-virtual {v5, v7}, Landroid/app/AlertDialog;->setCancelable(Z)V

    const-string v0, "\u06d9\u06e7\u06e4\u06dc\u06e7\u06dc\u06d8\u06d7\u06e5\u06e1\u06ec\u06e5\u06dc\u06db\u06e6\u06e1\u06d8\u06e8\u06db\u06d9\u06e2\u06dc\u06e0\u06e8\u06e2\u06db\u06da\u06d7\u06da\u06df\u06e1\u06d6\u06e4\u06eb\u06e8\u06d8\u06eb\u06e2\u06e8\u06dc\u06d8\u06d7\u06df\u06dc\u06d8"

    move-object v1, v0

    goto :goto_0

    :sswitch_c
    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    const-string v0, "\u06e2\u06d7\u06e6\u06ec\u06db\u06e1\u06d8\u06ec\u06dc\u06ec\u06e7\u06e1\u06e6\u06d7\u06db\u06e8\u06d8\u06e1\u06ec\u06da\u06d6\u06e4\u06e6\u06d6\u06e0\u06d7\u06e1\u06dc\u06e4\u06db\u06e6\u06e2\u06db\u06d6\u06dc\u06e2\u06da\u06e5\u06d8\u06df\u06d6\u06e2\u06e1\u06ec\u06e7\u06d9\u06dc\u06e7\u06e4\u06d9\u06e5"

    move-object v1, v0

    goto :goto_0

    :sswitch_d
    const v0, 0x7f090307

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "\u06d6\u06db\u06e8\u06e6\u06e2\u06dc\u06d7\u06db\u06dc\u06d8\u06e5\u06e8\u06e7\u06e2\u06e1\u06eb\u06e2\u06d9\u06e2\u06eb\u06d7\u06da\u06dc\u06dc\u06e1\u06d8\u06d6\u06eb\u06e7\u06e2\u06e4\u06dc\u06d8\u06e1\u06e0\u06e5\u06d8\u06e6\u06eb\u06db\u06e0\u06db\u06d6\u06e2\u06d6\u06e0\u06e1\u06e2\u06e8\u06d8\u06d7\u06eb\u06d8\u06d8"

    move-object v4, v0

    goto :goto_0

    :sswitch_e
    const v0, 0x7f09030d

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "\u06e4\u06d6\u06e2\u06d7\u06da\u06d7\u06da\u06e2\u06e4\u06d7\u06db\u06e8\u06dc\u06df\u06df\u06df\u06e5\u06d8\u06e5\u06d8\u06d8\u06d8\u06d9\u06e6\u06e5\u06dc\u06d6\u06d8\u06e7\u06ec\u06e1\u06d8\u06e5\u06e6\u06e6\u06d8\u06db\u06e8\u06e2\u06e6\u06e6\u06e5\u06d8\u06d9\u06df\u06d8\u06ec\u06e7\u06e5\u06d8\u06e6\u06e7"

    move-object v2, v0

    goto/16 :goto_0

    :sswitch_f
    new-instance v0, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity$OooO0OO;

    invoke-direct {v0, p0, v5}, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity$OooO0OO;-><init>(Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;Landroid/app/AlertDialog;)V

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "\u06e7\u06da\u06dc\u06e1\u06e8\u06e6\u06d7\u06d7\u06e6\u06d9\u06e8\u06d6\u06e1\u06d7\u06da\u06ec\u06d8\u06e8\u06d8\u06d7\u06e8\u06db\u06dc\u06eb\u06e8\u06d8\u06d9\u06d6\u06e5\u06d8\u06ec\u06e1\u06eb\u06ec\u06e7\u06e1\u06e6\u06e7\u06e5\u06d8\u06e6\u06e0\u06e2\u06d9\u06dc\u06d8\u06e1\u06e5\u06e4\u06d8\u06d9\u06dc\u06ec\u06dc\u06d8\u06d8\u06e7\u06df\u06eb"

    move-object v1, v0

    goto/16 :goto_0

    :sswitch_10
    new-instance v0, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity$OooO0o;

    invoke-direct {v0, p0, v5}, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity$OooO0o;-><init>(Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;Landroid/app/AlertDialog;)V

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "\u06e8\u06e0\u06db\u06da\u06e5\u06e8\u06e4\u06d9\u06d8\u06ec\u06d8\u06e6\u06d8\u06e0\u06e5\u06e7\u06eb\u06df\u06e0\u06d8\u06e5\u06da\u06e5\u06e0\u06ec\u06d7\u06e8\u06d8\u06e7\u06e6\u06e5\u06d8\u06e7\u06db\u06d9\u06ec\u06d6\u06e8\u06e1\u06e5\u06e5\u06e7\u06d8\u06d9\u06eb\u06d7\u06db\u06e5\u06e1"

    move-object v1, v0

    goto/16 :goto_0

    :sswitch_11
    iget-object v0, p0, Lcom/cyjh/common/base/activity/BaseModelActivity;->OooooO0:Landroidx/lifecycle/AndroidViewModel;

    check-cast v0, Lz2/oa;

    iget-object v1, p0, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;->OooooOO:Ljava/lang/String;

    invoke-virtual {v0, v1, v7}, Lz2/oa;->OooOo0O(Ljava/lang/String;I)V

    const-string v0, "\u06e7\u06da\u06da\u06e0\u06e8\u06d6\u06e1\u06df\u06d8\u06d8\u06e6\u06e1\u06e7\u06d8\u06e5\u06e0\u06e5\u06e1\u06e0\u06e6\u06d8\u06e0\u06e0\u06e8\u06d8\u06e7\u06d6\u06ec\u06e5\u06d6\u06e8\u06db\u06e2\u06e8\u06df\u06e7\u06ec\u06ec\u06e8\u06da\u06ec\u06e4\u06d8\u06e5\u06d8\u06d8"

    move-object v1, v0

    goto/16 :goto_0

    :sswitch_12
    const-string v0, "\u06e5\u06e6\u06d9\u06e8\u06d9\u06e7\u06d9\u06e5\u06d8\u06e6\u06ec\u06d6\u06d6\u06e8\u06e8\u06d8\u06d6\u06e0\u06ec\u06e7\u06db\u06d8\u06d9\u06e0\u06da\u06d7\u06e6\u06db\u06df\u06e8\u06e2"

    move-object v1, v0

    goto/16 :goto_0

    :sswitch_13
    const-string v0, "\u06e7\u06da\u06da\u06e0\u06e8\u06d6\u06e1\u06df\u06d8\u06d8\u06e6\u06e1\u06e7\u06d8\u06e5\u06e0\u06e5\u06e1\u06e0\u06e6\u06d8\u06e0\u06e0\u06e8\u06d8\u06e7\u06d6\u06ec\u06e5\u06d6\u06e8\u06db\u06e2\u06e8\u06df\u06e7\u06ec\u06ec\u06e8\u06da\u06ec\u06e4\u06d8\u06e5\u06d8\u06d8"

    move-object v1, v0

    goto/16 :goto_0

    :sswitch_14
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x5688756e -> :sswitch_2
        -0x48a9e097 -> :sswitch_e
        -0x45523079 -> :sswitch_10
        -0x41817874 -> :sswitch_14
        -0x1d044d25 -> :sswitch_b
        0x77bc4df -> :sswitch_0
        0xa7ba211 -> :sswitch_c
        0xf51e943 -> :sswitch_f
        0x1199abc2 -> :sswitch_1
        0x12afc9c7 -> :sswitch_13
        0x34302f3e -> :sswitch_a
        0x3597e9d2 -> :sswitch_d
        0x798e805a -> :sswitch_11
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x7328ecca -> :sswitch_12
        -0x6e89a18f -> :sswitch_9
        -0x1c759e0d -> :sswitch_3
        0x42e11331 -> :sswitch_5
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        0x263dbd09 -> :sswitch_6
        0x45efc51c -> :sswitch_7
        0x51c881af -> :sswitch_4
        0x7d8cbe20 -> :sswitch_8
    .end sparse-switch
.end method

.method private OooOOo0()V
    .locals 17

    const/4 v14, 0x0

    const/4 v13, 0x0

    const/4 v12, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    const-string v1, "\u06d7\u06e2\u06d9\u06ec\u06e6\u06e5\u06d8\u06d9\u06d8\u06e2\u06e8\u06eb\u06e2\u06e1\u06e7\u06d8\u06d6\u06d8\u06e1\u06dc\u06d6\u06e5\u06d8\u06e5\u06d9\u06e1\u06dc\u06e7\u06eb\u06ec\u06dc\u06ec\u06dc\u06e5\u06d8\u06eb\u06d7\u06db\u06e6\u06d6\u06d8\u06e5\u06db\u06df\u06d8\u06e2\u06d8\u06d8\u06e8\u06d9\u06da\u06e1\u06ec\u06dc\u06d8\u06ec\u06e7\u06e2"

    move-object v2, v1

    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v15, 0xe9

    xor-int/2addr v1, v15

    xor-int/lit16 v1, v1, 0x37d

    const/16 v15, 0x1ed

    const v16, 0x5c5442e6

    xor-int/2addr v1, v15

    xor-int v1, v1, v16

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "\u06df\u06e4\u06e7\u06d9\u06db\u06d9\u06e6\u06ec\u06e4\u06e8\u06da\u06d9\u06dc\u06e2\u06e1\u06d8\u06ec\u06ec\u06d7\u06dc\u06e6\u06e5\u06d8\u06e4\u06e2\u06e8\u06dc\u06e7\u06d6\u06d8\u06ec\u06d8\u06e8\u06d8\u06e8\u06dc\u06d6\u06d8\u06ec\u06ec"

    move-object v2, v1

    goto :goto_0

    :sswitch_1
    const v2, 0x27d55b48

    const-string v1, "\u06ec\u06d8\u06df\u06e8\u06dc\u06e1\u06d8\u06e8\u06dc\u06d8\u06d7\u06e8\u06e4\u06d9\u06e7\u06db\u06e7\u06eb\u06d7\u06e8\u06e0\u06db\u06d6\u06e0\u06e4\u06d9\u06da\u06e5\u06d8\u06d7\u06e1\u06e5\u06d8\u06d8\u06e6\u06e5\u06e6\u06d9\u06db\u06e0\u06df\u06eb\u06da\u06d8\u06e8\u06dc\u06d9\u06e5\u06df\u06df\u06dc\u06d8"

    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v15

    xor-int/2addr v15, v2

    sparse-switch v15, :sswitch_data_1

    goto :goto_1

    :sswitch_2
    const-string v1, "\u06da\u06d6\u06e1\u06d8\u06eb\u06df\u06dc\u06e6\u06e4\u06dc\u06d6\u06df\u06e4\u06e7\u06dc\u06ec\u06e1\u06ec\u06ec\u06ec\u06e8\u06d9\u06dc\u06e8\u06d7\u06da\u06e2\u06d8\u06e1\u06d6\u06d6\u06d8"

    move-object v2, v1

    goto :goto_0

    :sswitch_3
    const-string v1, "\u06d7\u06e5\u06d9\u06e5\u06da\u06df\u06e5\u06e5\u06db\u06e6\u06e8\u06e0\u06ec\u06df\u06e0\u06e8\u06e2\u06da\u06e0\u06e1\u06e5\u06d8\u06da\u06e5\u06e7\u06e0\u06e5\u06e2\u06e0\u06e5\u06d8\u06d8\u06e4\u06d7\u06e1\u06d8\u06d9\u06e2\u06e6"

    goto :goto_1

    :sswitch_4
    const v15, -0x6d4260e8

    const-string v1, "\u06d9\u06eb\u06df\u06e7\u06e6\u06e5\u06d8\u06e6\u06e1\u06dc\u06d8\u06da\u06da\u06d6\u06e7\u06e4\u06ec\u06e7\u06d9\u06ec\u06e6\u06e1\u06d8\u06d9\u06e0\u06e8\u06eb\u06df\u06d6\u06d8\u06e4\u06e5\u06e8\u06df\u06df\u06e2\u06d7\u06e1\u06d8\u06d8\u06db\u06e4\u06e5\u06d8\u06d8"

    :goto_2
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v16

    xor-int v16, v16, v15

    sparse-switch v16, :sswitch_data_2

    goto :goto_2

    :sswitch_5
    const-string v1, "\u06e1\u06d9\u06e4\u06e2\u06d9\u06d6\u06d8\u06e0\u06d8\u06d8\u06df\u06d7\u06d6\u06df\u06eb\u06d7\u06e1\u06db\u06db\u06db\u06df\u06e2\u06e2\u06dc\u06ec\u06e7\u06e2\u06d8\u06e6\u06dc\u06d8"

    goto :goto_1

    :cond_0
    const-string v1, "\u06e4\u06e1\u06d9\u06e1\u06d7\u06e1\u06eb\u06e8\u06e2\u06e0\u06e2\u06e5\u06e7\u06db\u06e6\u06db\u06e4\u06e0\u06d9\u06eb\u06e1\u06ec\u06e2\u06d6\u06d8\u06d6\u06e8\u06d8\u06d9\u06d8"

    goto :goto_2

    :sswitch_6
    invoke-static {}, Lz2/m7;->OooO0o0()Lz2/m7;

    move-result-object v1

    iget-object v1, v1, Lz2/m7;->OooO0o:Ljava/util/List;

    if-eqz v1, :cond_0

    const-string v1, "\u06e4\u06ec\u06d6\u06e1\u06dc\u06e6\u06d8\u06d9\u06e7\u06dc\u06d8\u06e1\u06e4\u06d8\u06e7\u06e7\u06db\u06e0\u06e8\u06eb\u06df\u06e4\u06e8\u06dc\u06df\u06ec\u06e7\u06da\u06dc\u06e5\u06e6\u06d8\u06eb\u06e1\u06d8\u06df\u06e6\u06db"

    goto :goto_2

    :sswitch_7
    const-string v1, "\u06eb\u06e8\u06e2\u06e6\u06d8\u06e2\u06e8\u06d9\u06e0\u06db\u06d7\u06e6\u06d8\u06e5\u06e5\u06e6\u06e2\u06e1\u06e1\u06e2\u06e5\u06e7\u06dc\u06e7\u06dc\u06d8\u06d8\u06ec\u06d8\u06d8\u06e1\u06d8\u06e6\u06d8\u06d7\u06e6\u06e7\u06d8\u06db\u06d9\u06d8\u06e4\u06e6\u06e1\u06d8\u06e7\u06d9\u06d7\u06dc\u06e0\u06e1\u06e5\u06dc"

    goto :goto_2

    :sswitch_8
    const-string v1, "\u06ec\u06eb\u06e0\u06e5\u06d9\u06e8\u06e5\u06e5\u06e6\u06d6\u06d8\u06da\u06e0\u06d8\u06d8\u06e5\u06e1\u06e7\u06d8\u06d8\u06eb\u06eb\u06d8\u06e4\u06e6\u06dc\u06d8\u06eb\u06d6\u06db\u06e4\u06da\u06d6\u06d8\u06e5\u06ec\u06df"

    goto :goto_1

    :sswitch_9
    const-string v1, "\u06da\u06da\u06d8\u06d8\u06da\u06e8\u06d9\u06e2\u06eb\u06e2\u06e0\u06e7\u06e0\u06e2\u06df\u06db\u06e5\u06eb\u06e2\u06dc\u06e5\u06d8\u06d8\u06db\u06dc\u06d8\u06ec\u06d6\u06e5\u06d8\u06eb\u06d7\u06e5\u06d8\u06d9\u06e7\u06e5\u06ec\u06ec\u06e5\u06d8"

    move-object v2, v1

    goto :goto_0

    :sswitch_a
    const v2, 0x45b8819

    const-string v1, "\u06d7\u06e6\u06e1\u06db\u06ec\u06d8\u06d8\u06e7\u06d7\u06d8\u06d8\u06da\u06e2\u06e0\u06ec\u06d6\u06df\u06eb\u06e6\u06e6\u06e5\u06e6\u06e0\u06d8\u06ec\u06e6\u06d8\u06df\u06dc\u06e7\u06d8\u06d7\u06d9\u06eb\u06ec\u06e4\u06db\u06eb\u06df\u06e8\u06d8"

    :goto_3
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v15

    xor-int/2addr v15, v2

    sparse-switch v15, :sswitch_data_3

    goto :goto_3

    :sswitch_b
    const v15, -0x18cbc84a

    const-string v1, "\u06e7\u06e8\u06e6\u06d8\u06e8\u06e7\u06e5\u06d8\u06e4\u06e2\u06e1\u06d8\u06d6\u06e1\u06e2\u06dc\u06d6\u06d6\u06d8\u06e2\u06eb\u06d6\u06d8\u06dc\u06e1\u06e1\u06d8\u06e5\u06e5\u06e7\u06d8\u06e1\u06e0\u06e1\u06e0\u06d6\u06e7\u06e0\u06e8\u06da\u06d9\u06ec\u06d6\u06d8\u06eb\u06d9\u06e1\u06dc\u06d7\u06da\u06e2\u06e2\u06e8\u06d8\u06d9\u06e5\u06d8"

    :goto_4
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v16

    xor-int v16, v16, v15

    sparse-switch v16, :sswitch_data_4

    goto :goto_4

    :sswitch_c
    const-string v1, "\u06db\u06df\u06eb\u06e7\u06eb\u06dc\u06ec\u06e0\u06e6\u06db\u06e1\u06d8\u06d6\u06dc\u06e6\u06d8\u06d7\u06d7\u06db\u06eb\u06e2\u06e5\u06d8\u06e2\u06e1\u06eb\u06e2\u06e1\u06e1\u06d8\u06e0\u06e1\u06d6\u06d8\u06eb\u06dc\u06d8"

    goto :goto_3

    :sswitch_d
    const-string v1, "\u06e7\u06e2\u06dc\u06eb\u06d9\u06e4\u06df\u06e8\u06e8\u06d8\u06e8\u06e1\u06d7\u06e5\u06e5\u06d6\u06d8\u06e2\u06e8\u06e1\u06d8\u06d7\u06d9\u06ec\u06ec\u06e4\u06e1\u06d8\u06d7\u06d7\u06d8\u06d8\u06e0\u06df\u06df\u06e7\u06ec\u06d8\u06d6\u06ec\u06d9\u06ec\u06dc\u06e7\u06db\u06e1\u06d9"

    goto :goto_3

    :cond_1
    const-string v1, "\u06e1\u06d8\u06eb\u06e2\u06da\u06d6\u06d7\u06db\u06e5\u06d8\u06e4\u06df\u06d6\u06d8\u06d9\u06db\u06e2\u06df\u06e0\u06d8\u06e4\u06e8\u06e1\u06e4\u06e8\u06da\u06e7\u06dc\u06e2\u06e7\u06e7\u06da\u06e2\u06e8\u06d8\u06e5\u06db\u06d6\u06df\u06e8\u06e5\u06d8\u06eb\u06e7\u06e6\u06dc\u06e5\u06d6\u06d8\u06e6\u06e8\u06e8\u06d8\u06ec\u06d7\u06d7\u06e8\u06e4\u06e1"

    goto :goto_4

    :sswitch_e
    invoke-static {}, Lz2/m7;->OooO0o0()Lz2/m7;

    move-result-object v1

    iget-object v1, v1, Lz2/m7;->OooO0o:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    const-string v1, "\u06dc\u06e1\u06db\u06e5\u06e0\u06eb\u06dc\u06d9\u06d9\u06e2\u06e6\u06df\u06ec\u06e0\u06e6\u06db\u06e6\u06d7\u06dc\u06d7\u06db\u06e4\u06e5\u06ec\u06dc\u06e1\u06d8\u06ec\u06e5\u06db\u06e6\u06e1\u06e1\u06d8\u06ec\u06eb\u06d8\u06d8\u06da\u06ec\u06db\u06e7\u06e6\u06d6\u06d9\u06e5\u06d8\u06ec\u06d6\u06e7\u06d8"

    goto :goto_4

    :sswitch_f
    const-string v1, "\u06e6\u06e0\u06df\u06da\u06eb\u06e5\u06d8\u06dc\u06db\u06d8\u06d8\u06d7\u06dc\u06e8\u06df\u06eb\u06e4\u06eb\u06eb\u06e8\u06d8\u06df\u06e7\u06d8\u06e8\u06e1\u06d8\u06d7\u06db\u06e7\u06e7\u06e0\u06e5\u06d6\u06e0\u06d6\u06d8\u06e6\u06e7\u06e1\u06df\u06e5\u06dc\u06db\u06dc\u06d8"

    goto :goto_4

    :sswitch_10
    const-string v1, "\u06d6\u06da\u06e0\u06e0\u06d6\u06e6\u06e4\u06d6\u06e1\u06d8\u06d7\u06d7\u06e8\u06df\u06da\u06d6\u06d8\u06ec\u06db\u06ec\u06e5\u06da\u06d8\u06d8\u06e4\u06df\u06d8\u06e5\u06e1\u06e0\u06db\u06e1\u06e6\u06df\u06eb\u06ec\u06eb\u06e1\u06d8\u06d6\u06d6\u06da\u06d7\u06e8\u06ec"

    goto :goto_3

    :sswitch_11
    const-string v1, "\u06d9\u06e4\u06eb\u06d7\u06ec\u06d8\u06d8\u06e1\u06eb\u06eb\u06dc\u06d8\u06e6\u06dc\u06e5\u06eb\u06d8\u06df\u06d8\u06e1\u06e1\u06d8\u06e8\u06d7\u06e0\u06e7\u06d9\u06e5\u06ec\u06e5\u06dc\u06d8\u06e5\u06e5\u06e6\u06d8\u06e4\u06d9\u06dc\u06e5\u06d8\u06dc\u06d8\u06eb\u06e2\u06dc\u06e5\u06e8\u06d8\u06e7\u06d6\u06d7"

    move-object v2, v1

    goto/16 :goto_0

    :sswitch_12
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;->OoooooO:Landroid/widget/TextView;

    const-string v1, "\u06dc\u06e5\u06e5\u06d8\u06dc\u06d7\u06e6\u06d8\u06e8\u06d6\u06da\u06e6\u06e0\u06d8\u06d8\u06e0\u06df\u06da\u06e6\u06ec\u06e7\u06db\u06d9\u06ec\u06d9\u06d8\u06e7\u06d8\u06ec\u06e1\u06e8\u06d7\u06e8\u06e6\u06d8\u06e0\u06ec\u06db\u06e5\u06dc\u06e6\u06e6\u06db\u06e8\u06d8\u06d7\u06e0\u06e6\u06db\u06e0\u06da\u06df\u06e5\u06e1\u06e2\u06df\u06d8\u06e0\u06d6"

    move-object v2, v1

    goto/16 :goto_0

    :sswitch_13
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;->Ooooooo:Landroid/widget/TextView;

    const-string v1, "\u06e5\u06ec\u06dc\u06df\u06da\u06e1\u06d8\u06dc\u06d9\u06e6\u06d8\u06e1\u06e5\u06da\u06eb\u06db\u06eb\u06df\u06e2\u06dc\u06d8\u06e0\u06e1\u06d8\u06d8\u06e5\u06ec\u06e5\u06d8\u06da\u06e8\u06e1\u06e8\u06d9\u06e4\u06e6\u06dc\u06e5\u06d8\u06e4\u06e8\u06e1\u06d8\u06e8\u06da\u06e0\u06df\u06e5\u06db"

    move-object v2, v1

    goto/16 :goto_0

    :sswitch_14
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;->o0OoOo0:Landroid/widget/TextView;

    const-string v1, "\u06db\u06e1\u06e6\u06d8\u06dc\u06d6\u06db\u06e2\u06dc\u06e5\u06d7\u06eb\u06e8\u06d7\u06d9\u06e5\u06d8\u06e0\u06dc\u06d9\u06df\u06eb\u06db\u06e8\u06e7\u06e7\u06db\u06e8\u06d8\u06e0\u06da\u06db\u06dc\u06dc\u06d6\u06d8\u06e6\u06ec\u06d6\u06d8"

    move-object v2, v1

    goto/16 :goto_0

    :sswitch_15
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;->o00Ooo:Landroid/widget/TextView;

    const-string v1, "\u06df\u06e7\u06ec\u06d9\u06e0\u06e6\u06e2\u06e0\u06eb\u06d8\u06dc\u06da\u06e7\u06da\u06e0\u06e0\u06e4\u06e8\u06e6\u06e8\u06d7\u06eb\u06db\u06d9\u06dc\u06d7\u06e1\u06d8\u06d8\u06df\u06da\u06df\u06e4\u06db\u06d8\u06e2\u06d6\u06d8\u06d7\u06d6\u06e6\u06d8\u06e4\u06e7\u06e8\u06d7\u06d9\u06dc\u06d8\u06e5\u06db\u06e7"

    move-object v2, v1

    goto/16 :goto_0

    :sswitch_16
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;->ooOO:Landroid/view/View;

    const-string v1, "\u06e4\u06e4\u06e7\u06e4\u06db\u06db\u06e5\u06e4\u06e2\u06d6\u06e5\u06e1\u06d8\u06df\u06d7\u06e6\u06e2\u06e6\u06d8\u06d6\u06e5\u06da\u06da\u06da\u06dc\u06d8\u06e7\u06e7\u06e5\u06eb\u06db\u06d7\u06e4\u06e0\u06e6\u06d8\u06dc\u06e1\u06d6\u06d8\u06d8\u06df\u06e0\u06e4\u06e0\u06d7\u06e4\u06e7\u06db\u06d6\u06d9\u06e5\u06d8"

    move-object v2, v1

    goto/16 :goto_0

    :sswitch_17
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;->o00O0O:Landroid/view/View;

    const-string v1, "\u06e2\u06e6\u06d8\u06d8\u06d7\u06e6\u06d8\u06e2\u06ec\u06e5\u06d8\u06e8\u06e7\u06d8\u06d6\u06df\u06e1\u06d8\u06df\u06dc\u06ec\u06df\u06e8\u06e8\u06e8\u06e7\u06eb\u06eb\u06da\u06d6\u06e7\u06df\u06d8\u06d8\u06db\u06e4\u06dc\u06d8\u06e2\u06df\u06e6"

    move-object v2, v1

    goto/16 :goto_0

    :sswitch_18
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;->o00Oo0:Landroid/view/View;

    const-string v1, "\u06ec\u06df\u06e6\u06e7\u06d6\u06e1\u06d6\u06e8\u06e7\u06d6\u06e2\u06d6\u06eb\u06e1\u06e5\u06d8\u06d9\u06e1\u06d8\u06d8\u06e0\u06e4\u06e0\u06db\u06eb\u06e6\u06d6\u06e8\u06d9\u06e2\u06e5\u06e2"

    move-object v2, v1

    goto/16 :goto_0

    :sswitch_19
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;->Oooooo:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const-string v1, "\u06e0\u06da\u06e5\u06d8\u06df\u06ec\u06d6\u06e1\u06e2\u06eb\u06eb\u06e7\u06d8\u06db\u06d8\u06ec\u06e2\u06e2\u06e1\u06d8\u06d8\u06e4\u06d6\u06e0\u06d9\u06dc\u06df\u06dc\u06d6\u06d8\u06e6\u06d7\u06dc\u06d8"

    move-object v2, v1

    goto/16 :goto_0

    :sswitch_1a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;->Oooooo0:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    const-string v1, "\u06e5\u06d9\u06d7\u06e2\u06e6\u06e0\u06ec\u06d7\u06e1\u06d8\u06dc\u06dc\u06e5\u06e0\u06d7\u06d6\u06e6\u06d8\u06e4\u06db\u06d6\u06e4\u06df\u06e0\u06e2\u06eb\u06d6\u06d8\u06d9\u06db\u06e8\u06d8"

    move-object v2, v1

    goto/16 :goto_0

    :sswitch_1b
    const/4 v7, 0x0

    const-string v1, "\u06d8\u06da\u06d9\u06e4\u06ec\u06da\u06e4\u06da\u06e5\u06d7\u06e6\u06e5\u06d8\u06d9\u06e2\u06e6\u06e7\u06e4\u06e6\u06d8\u06da\u06d8\u06e0\u06e7\u06e0\u06e4\u06eb\u06dc\u06e1\u06d8\u06d9\u06e8\u06e8\u06d8\u06e1\u06e8\u06ec\u06df\u06ec\u06e8\u06df\u06e6\u06d8\u06e1\u06d7\u06d6\u06d8\u06d9\u06df\u06da\u06e0\u06e7\u06e8\u06da\u06d9\u06d6\u06d8\u06dc\u06df\u06e6"

    move-object v2, v1

    goto/16 :goto_0

    :sswitch_1c
    const-string v1, "\u06e4\u06db\u06d8\u06e2\u06e6\u06d8\u06e0\u06dc\u06e0\u06df\u06e8\u06d6\u06d8\u06d6\u06d7\u06e1\u06d8\u06e2\u06e1\u06dc\u06ec\u06d6\u06dc\u06e1\u06dc\u06e7\u06d8\u06e2\u06e2\u06e0\u06ec\u06d9\u06d6"

    move-object v2, v1

    move v6, v7

    goto/16 :goto_0

    :sswitch_1d
    const v2, -0x783bf4e0

    const-string v1, "\u06d6\u06db\u06e8\u06d8\u06e7\u06e5\u06e1\u06d8\u06e0\u06d9\u06d6\u06e2\u06da\u06e1\u06d8\u06e6\u06da\u06e0\u06dc\u06e1\u06e4\u06e6\u06d7\u06da\u06d7\u06e6\u06db\u06d9\u06d6\u06e7\u06d9\u06e5\u06dc\u06e7\u06ec\u06e0\u06e2\u06e4\u06e7\u06ec\u06e6\u06e8\u06d8\u06da\u06dc\u06e6\u06d8\u06e4\u06dc\u06e6\u06d8\u06e4\u06e2\u06da\u06dc\u06db\u06e6\u06d8\u06df\u06e4\u06e8"

    :goto_5
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v15

    xor-int/2addr v15, v2

    sparse-switch v15, :sswitch_data_5

    goto :goto_5

    :sswitch_1e
    const v15, -0x7d391df2

    const-string v1, "\u06da\u06e2\u06da\u06d8\u06da\u06e5\u06e2\u06e5\u06da\u06d8\u06eb\u06df\u06d9\u06eb\u06e0\u06e6\u06dc\u06e6\u06e1\u06e6\u06e8\u06d8\u06dc\u06d9\u06e1\u06d8\u06e0\u06e1\u06d6\u06d8\u06d9\u06e2\u06da\u06d8\u06e2\u06e8\u06d7\u06e8\u06df\u06e4\u06e6\u06eb\u06dc\u06e7\u06e8\u06e7\u06e1\u06d6\u06d8\u06e0\u06e1\u06e1"

    :goto_6
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v16

    xor-int v16, v16, v15

    sparse-switch v16, :sswitch_data_6

    goto :goto_6

    :sswitch_1f
    const-string v1, "\u06e2\u06da\u06e5\u06e1\u06da\u06e6\u06e5\u06e1\u06eb\u06d9\u06d9\u06d7\u06ec\u06df\u06e5\u06eb\u06e1\u06e6\u06d8\u06ec\u06e5\u06e6\u06d8\u06ec\u06dc\u06e5\u06d8\u06d8\u06e2\u06e8\u06e2\u06d7\u06e1\u06e8\u06d6\u06d8\u06e4\u06e2\u06e7\u06d7\u06e5\u06d8\u06e5\u06db\u06e6\u06d8\u06eb\u06ec\u06d6\u06e1\u06df\u06d8\u06eb\u06d8\u06da\u06e8\u06e8\u06e0"

    goto :goto_6

    :sswitch_20
    const-string v1, "\u06d6\u06d9\u06da\u06e8\u06ec\u06e5\u06e7\u06e5\u06e4\u06e1\u06dc\u06e6\u06e5\u06d6\u06ec\u06da\u06d9\u06e8\u06d8\u06e6\u06e1\u06ec\u06e0\u06e1\u06e4\u06dc\u06e7\u06e0\u06d7\u06e5\u06ec\u06d8\u06d9\u06d6\u06d8\u06db\u06d9\u06e8\u06d9\u06d9\u06e8\u06eb\u06e1\u06d8"

    goto :goto_5

    :cond_2
    const-string v1, "\u06e4\u06e6\u06d6\u06dc\u06d7\u06e1\u06d8\u06e7\u06da\u06db\u06db\u06d6\u06e6\u06d8\u06dc\u06e4\u06d6\u06d8\u06e1\u06e1\u06dc\u06df\u06d9\u06d8\u06eb\u06db\u06e2\u06d6\u06ec\u06e8\u06e1\u06e6\u06e1\u06d8\u06d8\u06d8\u06e4\u06e6\u06d8"

    goto :goto_6

    :sswitch_21
    invoke-static {}, Lz2/m7;->OooO0o0()Lz2/m7;

    move-result-object v1

    iget-object v1, v1, Lz2/m7;->OooO0o:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v6, v1, :cond_2

    const-string v1, "\u06ec\u06e0\u06dc\u06df\u06db\u06e0\u06e5\u06d6\u06e2\u06d7\u06e1\u06d6\u06e0\u06e2\u06db\u06e7\u06df\u06e0\u06e5\u06db\u06e5\u06e2\u06d7\u06eb\u06e5\u06d7\u06e0\u06e5\u06e2\u06e1"

    goto :goto_6

    :sswitch_22
    const-string v1, "\u06da\u06e6\u06e2\u06da\u06e0\u06dc\u06e4\u06e0\u06dc\u06e1\u06da\u06da\u06ec\u06e4\u06d9\u06dc\u06d8\u06e5\u06d8\u06da\u06e4\u06d9\u06d6\u06dc\u06e5\u06e2\u06da\u06e5\u06e1\u06df\u06e7\u06e2\u06d6\u06df\u06e1\u06e5\u06d9\u06e1\u06e5\u06e5\u06d8\u06d6\u06da\u06e8\u06d8\u06e6\u06db\u06dc\u06e6\u06e2\u06d7"

    goto :goto_5

    :sswitch_23
    const-string v1, "\u06e6\u06d7\u06e7\u06e7\u06e4\u06d8\u06d7\u06eb\u06d8\u06d8\u06dc\u06e8\u06d8\u06d8\u06e7\u06e5\u06d8\u06d8\u06d7\u06e4\u06df\u06eb\u06e5\u06e6\u06d8\u06d6\u06df\u06da\u06e7\u06d9\u06eb\u06d8\u06d6\u06da\u06e1\u06d7\u06dc\u06dc\u06d6\u06d8\u06e0\u06ec\u06e7\u06d8\u06df\u06eb\u06e8\u06d6\u06e5\u06e5\u06ec\u06d8\u06e7\u06da\u06e1\u06d8\u06df\u06e1\u06e1\u06d8"

    goto :goto_5

    :sswitch_24
    const-string v1, "\u06e2\u06eb\u06e8\u06e4\u06ec\u06dc\u06d8\u06d6\u06db\u06d6\u06e2\u06d7\u06e0\u06db\u06dc\u06da\u06e7\u06d7\u06e6\u06d9\u06db\u06d6\u06d8\u06df\u06da\u06e8\u06d7\u06e7\u06e6\u06db\u06e5\u06e1\u06d8\u06da\u06e2\u06df\u06e6\u06d8\u06e7\u06dc\u06da\u06eb\u06e4\u06df\u06e6\u06d6\u06df\u06eb\u06e0\u06e1\u06d8"

    move-object v2, v1

    goto/16 :goto_0

    :sswitch_25
    invoke-static {}, Lz2/m7;->OooO0o0()Lz2/m7;

    move-result-object v1

    iget-object v1, v1, Lz2/m7;->OooO0o:Ljava/util/List;

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cyjh/http/bean/response/BuyRegCodeConfigInfo;

    const-string v2, "\u06df\u06dc\u06d6\u06d8\u06e7\u06d7\u06da\u06e8\u06e7\u06e5\u06d9\u06eb\u06d8\u06da\u06e6\u06d6\u06d8\u06da\u06e6\u06e8\u06d9\u06d7\u06e5\u06e6\u06db\u06e7\u06e2\u06d7\u06d6\u06db\u06dc\u06e6\u06e7\u06e4\u06e7\u06e6\u06db\u06e6\u06d8"

    move-object v5, v1

    goto/16 :goto_0

    :sswitch_26
    const/4 v1, 0x4

    new-array v1, v1, [Landroid/widget/TextView;

    const/4 v2, 0x0

    aput-object v14, v1, v2

    const/4 v2, 0x1

    aput-object v13, v1, v2

    const/4 v2, 0x2

    aput-object v12, v1, v2

    const/4 v2, 0x3

    aput-object v11, v1, v2

    aget-object v4, v1, v6

    const-string v1, "\u06d8\u06da\u06e6\u06d8\u06d6\u06e2\u06d7\u06e5\u06df\u06dc\u06e1\u06e7\u06d8\u06e2\u06eb\u06e1\u06d8\u06e6\u06e0\u06e6\u06d8\u06e6\u06df\u06e2\u06d7\u06e7\u06e6\u06e5\u06eb\u06e6\u06e1\u06ec\u06e1\u06d8\u06ec\u06eb\u06e6\u06e2\u06e7\u06ec\u06e8\u06e1\u06d9\u06df\u06eb\u06e6\u06d8\u06d9\u06ec\u06db\u06e4\u06e8\u06d8\u06d8"

    move-object v2, v1

    goto/16 :goto_0

    :sswitch_27
    const/4 v1, 0x0

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const-string v1, "\u06e2\u06e0\u06d9\u06e5\u06e0\u06db\u06e4\u06dc\u06d8\u06e0\u06e5\u06e6\u06e0\u06e7\u06e0\u06d8\u06e2\u06ec\u06e6\u06e4\u06e4\u06ec\u06db\u06d7\u06da\u06da\u06e8\u06e5\u06e6\u06d8\u06d9\u06e2\u06eb\u06db\u06e5\u06dc\u06e4\u06e8\u06e1\u06d8\u06d7\u06e4\u06e6\u06d8"

    move-object v2, v1

    goto/16 :goto_0

    :sswitch_28
    iget-object v1, v5, Lcom/cyjh/http/bean/response/BuyRegCodeConfigInfo;->ButtonName:Ljava/lang/String;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v1, "\u06d6\u06e2\u06ec\u06e6\u06e1\u06d6\u06e5\u06db\u06e4\u06eb\u06d7\u06eb\u06dc\u06e2\u06dc\u06d8\u06eb\u06df\u06e4\u06db\u06e6\u06d7\u06dc\u06d8\u06d6\u06e1\u06e1\u06e4\u06e1\u06dc\u06e5\u06d8\u06d6\u06e2\u06da\u06e8\u06ec\u06e1\u06d8"

    move-object v2, v1

    goto/16 :goto_0

    :sswitch_29
    const v2, 0x1ed30596

    const-string v1, "\u06e2\u06d7\u06db\u06d8\u06d8\u06eb\u06d9\u06d7\u06e8\u06d8\u06ec\u06e4\u06db\u06dc\u06e2\u06e8\u06e1\u06e8\u06df\u06e5\u06da\u06d8\u06df\u06db\u06e8\u06df\u06e5\u06e6\u06d8\u06ec\u06e6\u06e5\u06d8\u06db\u06d6\u06d9\u06d8\u06e4\u06e8\u06d8"

    :goto_7
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v15

    xor-int/2addr v15, v2

    sparse-switch v15, :sswitch_data_7

    goto :goto_7

    :sswitch_2a
    const v15, 0x10e37a0c

    const-string v1, "\u06db\u06e2\u06d6\u06d8\u06e2\u06e4\u06e6\u06d8\u06eb\u06e4\u06e1\u06db\u06d7\u06e7\u06e5\u06e2\u06e1\u06d8\u06db\u06db\u06e6\u06d8\u06e7\u06e7\u06e2\u06db\u06d6\u06e1\u06d8\u06d7\u06e1\u06e4\u06d6\u06e7\u06e2\u06e8\u06e5\u06e8\u06e5\u06e7\u06e1"

    :goto_8
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v16

    xor-int v16, v16, v15

    sparse-switch v16, :sswitch_data_8

    goto :goto_8

    :sswitch_2b
    const-string v1, "\u06d9\u06ec\u06d6\u06da\u06e4\u06db\u06e2\u06e2\u06e7\u06e2\u06db\u06e4\u06eb\u06e5\u06d9\u06d6\u06eb\u06eb\u06d6\u06dc\u06e0\u06da\u06e5\u06e1\u06db\u06e2\u06d8\u06e6\u06e5\u06d8\u06e1\u06d8\u06da\u06da\u06df\u06e1\u06d8\u06df\u06dc\u06d7\u06e0\u06d9\u06da"

    goto :goto_8

    :sswitch_2c
    const-string v1, "\u06d7\u06da\u06da\u06df\u06e7\u06e8\u06d8\u06d6\u06eb\u06e6\u06e1\u06df\u06d9\u06df\u06ec\u06e8\u06d7\u06d9\u06e0\u06e1\u06ec\u06e8\u06d8\u06db\u06e7\u06d6\u06da\u06dc\u06d8\u06e5\u06dc\u06e7"

    goto :goto_7

    :cond_3
    const-string v1, "\u06db\u06e2\u06e1\u06e7\u06db\u06e1\u06d8\u06e6\u06df\u06ec\u06df\u06d6\u06db\u06df\u06e1\u06d8\u06d9\u06da\u06e7\u06e2\u06e7\u06e0\u06df\u06e2\u06e4\u06df\u06e1\u06e8\u06db\u06e1\u06e8\u06e2\u06e1\u06e4\u06e6\u06e7\u06d8\u06d8\u06d8\u06d9\u06db\u06eb\u06e7\u06e1\u06d7\u06d6\u06e5\u06e7\u06d9\u06e1"

    goto :goto_8

    :sswitch_2d
    const/4 v1, 0x3

    invoke-static {}, Lz2/m7;->OooO0o0()Lz2/m7;

    move-result-object v16

    move-object/from16 v0, v16

    iget-object v0, v0, Lz2/m7;->OooO0o:Ljava/util/List;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v16

    add-int/lit8 v16, v16, -0x1

    move/from16 v0, v16

    if-ge v1, v0, :cond_3

    const-string v1, "\u06d8\u06ec\u06d6\u06db\u06d9\u06e0\u06d8\u06e6\u06db\u06e7\u06dc\u06e5\u06eb\u06db\u06e6\u06e2\u06d8\u06e5\u06e1\u06e2\u06db\u06e8\u06d8\u06d9\u06ec\u06d6\u06d7\u06ec\u06dc\u06e5\u06d6\u06da\u06df\u06e2\u06e8\u06d8"

    goto :goto_8

    :sswitch_2e
    const-string v1, "\u06df\u06db\u06e2\u06d9\u06e6\u06e4\u06df\u06e6\u06df\u06db\u06dc\u06e7\u06ec\u06d9\u06e5\u06dc\u06da\u06e1\u06d8\u06e5\u06e4\u06e7\u06d8\u06e6\u06ec\u06eb\u06d7\u06db\u06da\u06da\u06e1\u06e1\u06ec\u06e0\u06e0\u06e1"

    goto :goto_7

    :sswitch_2f
    const-string v1, "\u06e4\u06e0\u06e5\u06d8\u06e0\u06db\u06e1\u06d8\u06eb\u06dc\u06d8\u06e0\u06d6\u06d8\u06e0\u06da\u06d8\u06eb\u06ec\u06e5\u06d8\u06eb\u06e4\u06e2\u06e6\u06e8\u06d8\u06d8\u06ec\u06db\u06eb\u06e4\u06e1\u06d6\u06d6\u06e4\u06e4\u06d9\u06e2\u06e5\u06d8\u06d9\u06db\u06e2\u06e4\u06eb\u06d6\u06d8"

    goto :goto_7

    :sswitch_30
    const-string v1, "\u06da\u06df\u06d8\u06e8\u06d6\u06e2\u06d6\u06e5\u06da\u06d9\u06df\u06e6\u06e1\u06eb\u06e1\u06e4\u06da\u06e2\u06d7\u06e0\u06e1\u06d8\u06d9\u06e5\u06d6\u06d8\u06da\u06d6\u06d6\u06eb\u06e5\u06d8\u06df\u06ec\u06dc\u06d8\u06df\u06d8\u06d6\u06d8"

    move-object v2, v1

    goto/16 :goto_0

    :sswitch_31
    const/4 v1, 0x3

    new-array v1, v1, [Landroid/view/View;

    const/4 v2, 0x0

    aput-object v10, v1, v2

    const/4 v2, 0x1

    aput-object v9, v1, v2

    const/4 v2, 0x2

    aput-object v8, v1, v2

    aget-object v1, v1, v6

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    const-string v1, "\u06dc\u06eb\u06d8\u06d8\u06d8\u06e8\u06ec\u06df\u06eb\u06d6\u06d8\u06e4\u06e8\u06e8\u06d6\u06e7\u06e5\u06ec\u06d6\u06d8\u06db\u06d7\u06d8\u06d8\u06d6\u06ec\u06e5\u06d8\u06d7\u06dc\u06ec\u06d8\u06ec\u06e6\u06e8\u06e6\u06e4\u06e0\u06e2\u06e6\u06d8\u06e8\u06e6\u06e8\u06d8\u06e1\u06e0\u06e8\u06d8\u06eb\u06ec\u06dc\u06dc\u06e4\u06e1\u06d8\u06df\u06e8\u06e7\u06d8\u06ec\u06eb\u06d7"

    move-object v2, v1

    goto/16 :goto_0

    :sswitch_32
    new-instance v1, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity$OooOO0O;

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v5}, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity$OooOO0O;-><init>(Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;Lcom/cyjh/http/bean/response/BuyRegCodeConfigInfo;)V

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v1, "\u06e2\u06e0\u06e8\u06d8\u06ec\u06e4\u06d6\u06d6\u06e7\u06e1\u06e5\u06e6\u06e5\u06e4\u06df\u06e6\u06d8\u06d8\u06e7\u06dc\u06d8\u06dc\u06d6\u06d6\u06e5\u06eb\u06eb\u06d8\u06d8\u06dc\u06e2\u06e1\u06df\u06e2\u06e8\u06e1\u06d7\u06e1"

    move-object v2, v1

    goto/16 :goto_0

    :sswitch_33
    add-int/lit8 v3, v6, 0x1

    const-string v1, "\u06e2\u06e4\u06db\u06e1\u06e2\u06db\u06e2\u06e8\u06eb\u06e0\u06db\u06ec\u06eb\u06dc\u06e7\u06e6\u06e5\u06d8\u06d9\u06d7\u06e4\u06df\u06d8\u06e8\u06e1\u06d7\u06dc\u06e4\u06eb\u06d8\u06e7\u06d8\u06e5\u06d8\u06d6\u06e8\u06e6\u06d7\u06da\u06d9\u06e2\u06e2\u06e5\u06e6\u06d8\u06d8\u06e2\u06df\u06ec"

    move-object v2, v1

    goto/16 :goto_0

    :sswitch_34
    const-string v1, "\u06d7\u06e7\u06e6\u06d9\u06db\u06d6\u06d7\u06df\u06d7\u06d8\u06e0\u06e2\u06df\u06e1\u06dc\u06d8\u06e0\u06dc\u06da\u06e0\u06d9\u06da\u06da\u06ec\u06db\u06e1\u06e5\u06dc\u06d8\u06d9\u06d6\u06e8\u06e1\u06e8\u06d8\u06d8\u06e0\u06e7\u06e1"

    move-object v2, v1

    move v6, v3

    goto/16 :goto_0

    :sswitch_35
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;->Oooooo0:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    const-string v1, "\u06da\u06da\u06df\u06ec\u06d7\u06e8\u06d8\u06d9\u06e7\u06df\u06e2\u06e1\u06db\u06e0\u06eb\u06e6\u06d8\u06df\u06d7\u06db\u06e8\u06e2\u06d9\u06e0\u06da\u06ec\u06e2\u06e4\u06db\u06dc\u06e1\u06e8\u06e1\u06d8\u06d9\u06df\u06d7\u06eb\u06df\u06eb\u06d6\u06d8\u06d8\u06e4\u06e2"

    move-object v2, v1

    goto/16 :goto_0

    :sswitch_36
    const-string v1, "\u06e4\u06db\u06d8\u06e2\u06e6\u06d8\u06e0\u06dc\u06e0\u06df\u06e8\u06d6\u06d8\u06d6\u06d7\u06e1\u06d8\u06e2\u06e1\u06dc\u06ec\u06d6\u06dc\u06e1\u06dc\u06e7\u06d8\u06e2\u06e2\u06e0\u06ec\u06d9\u06d6"

    move-object v2, v1

    goto/16 :goto_0

    :sswitch_37
    const-string v1, "\u06dc\u06eb\u06d8\u06d8\u06d8\u06e8\u06ec\u06df\u06eb\u06d6\u06d8\u06e4\u06e8\u06e8\u06d6\u06e7\u06e5\u06ec\u06d6\u06d8\u06db\u06d7\u06d8\u06d8\u06d6\u06ec\u06e5\u06d8\u06d7\u06dc\u06ec\u06d8\u06ec\u06e6\u06e8\u06e6\u06e4\u06e0\u06e2\u06e6\u06d8\u06e8\u06e6\u06e8\u06d8\u06e1\u06e0\u06e8\u06d8\u06eb\u06ec\u06dc\u06dc\u06e4\u06e1\u06d8\u06df\u06e8\u06e7\u06d8\u06ec\u06eb\u06d7"

    move-object v2, v1

    goto/16 :goto_0

    :sswitch_38
    const-string v1, "\u06da\u06da\u06df\u06ec\u06d7\u06e8\u06d8\u06d9\u06e7\u06df\u06e2\u06e1\u06db\u06e0\u06eb\u06e6\u06d8\u06df\u06d7\u06db\u06e8\u06e2\u06d9\u06e0\u06da\u06ec\u06e2\u06e4\u06db\u06dc\u06e1\u06e8\u06e1\u06d8\u06d9\u06df\u06d7\u06eb\u06df\u06eb\u06d6\u06d8\u06d8\u06e4\u06e2"

    move-object v2, v1

    goto/16 :goto_0

    :sswitch_39
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7f8edb6b -> :sswitch_18
        -0x78dbd63e -> :sswitch_1a
        -0x7597e00a -> :sswitch_a
        -0x6d28b521 -> :sswitch_14
        -0x627f5251 -> :sswitch_27
        -0x5ef40922 -> :sswitch_31
        -0x4d942b71 -> :sswitch_1
        -0x48e1c9b0 -> :sswitch_15
        -0x41ee1f9d -> :sswitch_33
        -0x3036ca8b -> :sswitch_1b
        -0x297fd3a9 -> :sswitch_32
        -0x25681780 -> :sswitch_26
        -0x24cb4f78 -> :sswitch_19
        -0x167bd221 -> :sswitch_17
        -0x1614c95f -> :sswitch_1d
        -0x58cd7d7 -> :sswitch_12
        0x102e1aa6 -> :sswitch_39
        0x13a857fb -> :sswitch_34
        0x1b00d497 -> :sswitch_1c
        0x1b37ebc5 -> :sswitch_0
        0x39fadaf5 -> :sswitch_28
        0x4bd72850 -> :sswitch_16
        0x65104358 -> :sswitch_36
        0x77fce746 -> :sswitch_25
        0x79254b38 -> :sswitch_29
        0x7c915442 -> :sswitch_35
        0x7fab5091 -> :sswitch_13
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x749f0ab4 -> :sswitch_2
        -0x3ef75346 -> :sswitch_8
        0x3acc34fe -> :sswitch_9
        0x43cc0ed2 -> :sswitch_4
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        -0x47f12556 -> :sswitch_6
        0x2adae8c8 -> :sswitch_3
        0x32c0c146 -> :sswitch_7
        0x7f55ee90 -> :sswitch_5
    .end sparse-switch

    :sswitch_data_3
    .sparse-switch
        -0x6b4f9479 -> :sswitch_10
        -0xcc8e185 -> :sswitch_2
        -0x9682151 -> :sswitch_b
        0x16e98c2b -> :sswitch_11
    .end sparse-switch

    :sswitch_data_4
    .sparse-switch
        -0x70949953 -> :sswitch_d
        0x1b3798e6 -> :sswitch_c
        0x224bb11f -> :sswitch_e
        0x7b80ad4d -> :sswitch_f
    .end sparse-switch

    :sswitch_data_5
    .sparse-switch
        -0x3ee54fc9 -> :sswitch_24
        0x20f9e86b -> :sswitch_38
        0x24744da6 -> :sswitch_1e
        0x641059a4 -> :sswitch_23
    .end sparse-switch

    :sswitch_data_6
    .sparse-switch
        0x39cb3b11 -> :sswitch_20
        0x6c6559ad -> :sswitch_21
        0x6f81720d -> :sswitch_1f
        0x7a5fcb93 -> :sswitch_22
    .end sparse-switch

    :sswitch_data_7
    .sparse-switch
        -0x574d41d0 -> :sswitch_2a
        -0x11d95085 -> :sswitch_37
        0x240115d6 -> :sswitch_2f
        0x4d90927f -> :sswitch_30
    .end sparse-switch

    :sswitch_data_8
    .sparse-switch
        -0x7b39536b -> :sswitch_2e
        -0x3ba1aae2 -> :sswitch_2c
        0x3677bef5 -> :sswitch_2d
        0x4d819166 -> :sswitch_2b
    .end sparse-switch
.end method

.method private OooOOoo()V
    .locals 4

    const-string v0, "\u06e7\u06db\u06e4\u06eb\u06e7\u06dc\u06ec\u06d8\u06ec\u06e2\u06e4\u06da\u06da\u06df\u06e5\u06d8\u06e8\u06e1\u06e5\u06db\u06ec\u06e6\u06e2\u06eb\u06d9\u06e1\u06e4\u06eb\u06eb\u06e5\u06dc\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x33

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x1d9

    const/16 v2, 0x40

    const v3, 0x648ba4ce

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e4\u06e2\u06e4\u06eb\u06d7\u06e6\u06d8\u06d9\u06d9\u06e7\u06dc\u06da\u06eb\u06e7\u06d7\u06dc\u06d6\u06d8\u06e0\u06df\u06ec\u06e4\u06e6\u06d8\u06d8\u06d9\u06eb\u06e6\u06d8\u06d7\u06e2\u06dc\u06df\u06e6\u06d8\u06da\u06e2\u06e8\u06d8\u06d7\u06eb\u06db\u06e4\u06dc\u06d8\u06d8"

    goto :goto_0

    :sswitch_1
    const v1, -0x2af2d161

    const-string v0, "\u06d6\u06ec\u06ec\u06e4\u06e7\u06db\u06d8\u06db\u06ec\u06d6\u06da\u06e6\u06d8\u06ec\u06e2\u06dc\u06e6\u06e8\u06d8\u06d6\u06da\u06da\u06e5\u06dc\u06ec\u06d9\u06d7\u06e1\u06e7\u06e8\u06e4\u06e6\u06ec\u06db\u06d9\u06ec\u06d9\u06d6\u06dc\u06d9\u06d8\u06ec\u06e1\u06d8\u06df\u06da\u06dc\u06e2\u06df\u06e8\u06d8\u06e1\u06d6\u06da\u06e1\u06eb\u06db"

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v2, v1

    sparse-switch v2, :sswitch_data_1

    goto :goto_1

    :sswitch_2
    const-string v0, "\u06ec\u06d6\u06e4\u06e1\u06e4\u06db\u06da\u06ec\u06dc\u06d8\u06d9\u06e1\u06e8\u06df\u06db\u06da\u06e6\u06e8\u06e0\u06e1\u06df\u06e5\u06dc\u06ec\u06e2\u06d6\u06e0\u06d6\u06df\u06e8"

    goto :goto_1

    :sswitch_3
    const-string v0, "\u06d8\u06d9\u06d6\u06d7\u06dc\u06e6\u06d8\u06dc\u06e2\u06e1\u06d8\u06e1\u06e4\u06d6\u06d8\u06d7\u06e7\u06e4\u06d8\u06e1\u06e1\u06ec\u06d8\u06e6\u06e5\u06d9\u06e0\u06db\u06d6\u06e8\u06db\u06e1\u06d8"

    goto :goto_1

    :sswitch_4
    const v2, 0x4050209d

    const-string v0, "\u06e4\u06db\u06e2\u06eb\u06e1\u06e8\u06d8\u06e5\u06e5\u06db\u06db\u06e2\u06e8\u06d6\u06e0\u06d8\u06d8\u06e4\u06ec\u06e7\u06e0\u06e0\u06d6\u06d8\u06da\u06e0\u06d6\u06d8\u06eb\u06d8\u06ec\u06ec\u06e6\u06e7\u06e4\u06d6\u06df\u06e2\u06e1\u06ec\u06d7\u06e7\u06e0"

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v2

    sparse-switch v3, :sswitch_data_2

    goto :goto_2

    :sswitch_5
    const-string v0, "\u06d7\u06da\u06e7\u06da\u06e0\u06e4\u06df\u06e5\u06e5\u06e7\u06d6\u06e2\u06e0\u06dc\u06e1\u06df\u06d8\u06d6\u06d8\u06db\u06e8\u06d6\u06e1\u06d7\u06d6\u06d8\u06e7\u06dc\u06e1\u06d8\u06ec\u06d8\u06dc\u06d8\u06d7\u06d8\u06ec\u06e8\u06d9\u06da\u06ec\u06d6\u06e8\u06e0\u06db\u06e0"

    goto :goto_1

    :cond_0
    const-string v0, "\u06d8\u06e4\u06e2\u06eb\u06d9\u06e8\u06d8\u06e4\u06e8\u06db\u06e1\u06d6\u06e8\u06d8\u06e0\u06ec\u06e6\u06e2\u06d8\u06d6\u06d8\u06e8\u06da\u06dc\u06d8\u06e0\u06eb\u06e5\u06d8\u06e7\u06dc\u06e2\u06dc\u06db\u06e6\u06d7\u06e1\u06d8\u06e2\u06d6\u06e6\u06d8\u06e0\u06e1\u06da\u06dc\u06e2\u06e6\u06e6\u06df\u06e6\u06d8\u06eb\u06e4\u06d8"

    goto :goto_2

    :sswitch_6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v0, v3, :cond_0

    const-string v0, "\u06e4\u06e8\u06e5\u06d8\u06e6\u06da\u06e5\u06d8\u06df\u06d7\u06dc\u06df\u06da\u06eb\u06e1\u06e8\u06d8\u06e6\u06d8\u06e1\u06d7\u06e5\u06d8\u06e1\u06d6\u06e5\u06d8\u06eb\u06df\u06d8\u06ec\u06d8\u06d7\u06db\u06d7\u06e6\u06eb\u06dc\u06d8\u06d8"

    goto :goto_2

    :sswitch_7
    const-string v0, "\u06e4\u06d7\u06d7\u06e7\u06e6\u06da\u06d9\u06df\u06df\u06e5\u06e0\u06eb\u06d7\u06e4\u06dc\u06d8\u06e0\u06e7\u06ec\u06e8\u06e2\u06e6\u06e2\u06df\u06e5\u06e7\u06d6\u06e6\u06d8\u06e4\u06da\u06e0\u06e0\u06da\u06e5\u06e7\u06d9\u06e8"

    goto :goto_2

    :sswitch_8
    const-string v0, "\u06d9\u06dc\u06df\u06e5\u06ec\u06e1\u06e6\u06d6\u06dc\u06d8\u06d9\u06d7\u06e6\u06e6\u06e4\u06ec\u06e5\u06d8\u06e2\u06db\u06e6\u06d8\u06eb\u06eb\u06d8\u06e0\u06ec\u06d8\u06d8\u06df\u06d7\u06e1"

    goto :goto_0

    :sswitch_9
    const v1, 0x2a3eabbe

    const-string v0, "\u06e8\u06e0\u06df\u06df\u06e1\u06d8\u06e4\u06d9\u06d7\u06d9\u06eb\u06e5\u06e0\u06d7\u06e1\u06d8\u06d6\u06e6\u06e1\u06d8\u06d6\u06e6\u06e8\u06d8\u06d7\u06d7\u06da\u06d7\u06e1\u06e8\u06d7\u06e1\u06d7\u06e6\u06da\u06ec\u06d7\u06eb\u06dc\u06d8\u06e2\u06e8\u06d6\u06dc\u06e2\u06e5\u06e4\u06d8\u06e1\u06dc\u06e1"

    :goto_3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v2, v1

    sparse-switch v2, :sswitch_data_3

    goto :goto_3

    :sswitch_a
    const-string v0, "\u06df\u06e7\u06e2\u06e4\u06e2\u06db\u06db\u06e4\u06e1\u06d8\u06e5\u06d6\u06dc\u06d8\u06eb\u06d8\u06d9\u06d7\u06d6\u06d8\u06d8\u06e4\u06d7\u06d8\u06e4\u06e5\u06db\u06e6\u06e6\u06eb\u06d6\u06df\u06e4"

    goto :goto_3

    :sswitch_b
    const-string v0, "\u06e8\u06db\u06d6\u06d8\u06e4\u06da\u06da\u06d8\u06da\u06df\u06e0\u06e1\u06dc\u06d8\u06e8\u06e8\u06dc\u06d8\u06d9\u06e6\u06d9\u06e2\u06ec\u06e6\u06d8\u06e8\u06df\u06e8\u06e7\u06e6\u06e8\u06d8\u06da\u06d8\u06e5\u06da\u06eb\u06e0\u06d8\u06d8\u06da\u06e2\u06e0\u06d8\u06e5\u06e7"

    goto :goto_3

    :sswitch_c
    const v2, 0x20307e3a

    const-string v0, "\u06d9\u06e5\u06e5\u06e0\u06d6\u06e7\u06d8\u06da\u06d8\u06d7\u06d9\u06e1\u06e7\u06d8\u06d7\u06dc\u06e7\u06d8\u06e6\u06e0\u06d8\u06df\u06e6\u06e1\u06d8\u06df\u06ec\u06d6\u06d8\u06df\u06e6\u06e5\u06d8\u06da\u06e8\u06e7\u06e0\u06d8\u06d9\u06df\u06da\u06d6\u06d8\u06eb\u06df\u06eb\u06e7\u06db\u06e4\u06e2\u06d8\u06d7\u06e8\u06d8"

    :goto_4
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v2

    sparse-switch v3, :sswitch_data_4

    goto :goto_4

    :sswitch_d
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v3, "android.permission.CAMERA"

    invoke-static {v0, v3}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "\u06d8\u06da\u06eb\u06da\u06da\u06d8\u06e2\u06e7\u06d7\u06d9\u06d8\u06eb\u06dc\u06db\u06e7\u06db\u06e2\u06d6\u06d8\u06e6\u06da\u06e0\u06dc\u06e1\u06d8\u06eb\u06e4\u06d8\u06e5\u06d9\u06dc"

    goto :goto_4

    :cond_1
    const-string v0, "\u06ec\u06e5\u06d9\u06d8\u06d7\u06dc\u06d6\u06d8\u06e5\u06d8\u06e8\u06d8\u06e7\u06d8\u06e5\u06e1\u06db\u06d6\u06e4\u06e7\u06ec\u06e4\u06d8\u06e5\u06da\u06e0\u06da\u06d9\u06ec\u06dc\u06e1\u06e7\u06e6\u06d8\u06d8\u06e6\u06eb\u06db\u06db\u06e7\u06dc\u06d8\u06e0\u06d6\u06e1\u06d8"

    goto :goto_4

    :sswitch_e
    const-string v0, "\u06e2\u06e4\u06d9\u06e2\u06d8\u06e0\u06e6\u06e8\u06d8\u06e0\u06ec\u06e8\u06d8\u06e1\u06ec\u06df\u06e7\u06e1\u06e0\u06ec\u06e7\u06d8\u06d8\u06e8\u06d6\u06e4\u06e2\u06dc\u06db\u06e1\u06e6\u06e0\u06eb\u06e4\u06eb\u06d7\u06da\u06e5\u06dc\u06e5\u06e1\u06d7\u06d8\u06d6\u06d8\u06df\u06d9\u06e7\u06e6\u06e4\u06e2"

    goto :goto_4

    :sswitch_f
    const-string v0, "\u06db\u06da\u06e5\u06d8\u06d6\u06d8\u06d8\u06d8\u06d6\u06eb\u06e8\u06d8\u06eb\u06d9\u06e0\u06e8\u06d8\u06d8\u06d8\u06eb\u06e6\u06d8\u06d8\u06e1\u06ec\u06d6\u06d8\u06e7\u06e2\u06e2\u06e4\u06e6\u06e0\u06eb\u06eb\u06e6\u06d8"

    goto :goto_3

    :sswitch_10
    const-string v0, "\u06eb\u06d8\u06e6\u06d8\u06e8\u06e1\u06e1\u06d8\u06d7\u06d9\u06df\u06d7\u06e4\u06db\u06e0\u06d8\u06dc\u06da\u06e7\u06e1\u06eb\u06d6\u06db\u06e1\u06da\u06e5\u06d8\u06e1\u06df\u06e8\u06e6\u06e8\u06d8\u06e8\u06e5\u06d8\u06d8\u06e1\u06e6\u06e1\u06d8\u06d6\u06e8\u06e6\u06d8\u06dc\u06d8\u06e7"

    goto/16 :goto_0

    :sswitch_11
    sget-object v0, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;->oo000o:[Ljava/lang/String;

    const/16 v1, 0x3e8

    invoke-static {p0, v0, v1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    const-string v0, "\u06eb\u06dc\u06e5\u06d8\u06db\u06d6\u06e7\u06e7\u06d8\u06e8\u06d8\u06e4\u06db\u06df\u06da\u06e1\u06d6\u06d8\u06e4\u06df\u06d9\u06e0\u06df\u06e8\u06d8\u06df\u06eb\u06eb\u06db\u06dc\u06e8\u06d8\u06e4\u06ec\u06db\u06dc\u06dc\u06d6\u06d8\u06eb\u06dc\u06e2"

    goto/16 :goto_0

    :sswitch_12
    invoke-direct {p0}, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;->OooOo00()V

    const-string v0, "\u06e2\u06df\u06da\u06d7\u06ec\u06dc\u06d8\u06e5\u06d8\u06db\u06ec\u06e6\u06e7\u06da\u06d9\u06db\u06db\u06ec\u06ec\u06d6\u06e0\u06da\u06db\u06e5\u06d8\u06e7\u06d8\u06d8\u06e2\u06d8\u06df\u06e6\u06db\u06df\u06e4\u06e6\u06e0"

    goto/16 :goto_0

    :sswitch_13
    const-string v0, "\u06e5\u06dc\u06e8\u06eb\u06e8\u06e5\u06d8\u06e6\u06db\u06d9\u06dc\u06d7\u06e7\u06d6\u06df\u06ec\u06dc\u06d8\u06da\u06e0\u06e1\u06d8\u06eb\u06ec\u06e8\u06e2\u06e4\u06db\u06d9\u06e0\u06d9\u06e7\u06e7\u06e4\u06db\u06db\u06e0\u06df\u06e1\u06d8\u06d8\u06e5\u06e4"

    goto/16 :goto_0

    :sswitch_14
    const-string v0, "\u06e2\u06df\u06da\u06d7\u06ec\u06dc\u06d8\u06e5\u06d8\u06db\u06ec\u06e6\u06e7\u06da\u06d9\u06db\u06db\u06ec\u06ec\u06d6\u06e0\u06da\u06db\u06e5\u06d8\u06e7\u06d8\u06d8\u06e2\u06d8\u06df\u06e6\u06db\u06df\u06e4\u06e6\u06e0"

    goto/16 :goto_0

    :sswitch_15
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x55f77912 -> :sswitch_12
        -0x413c693e -> :sswitch_15
        -0x38c11849 -> :sswitch_9
        -0x171a84ed -> :sswitch_0
        0x2831d33c -> :sswitch_1
        0x2ca27403 -> :sswitch_14
        0x6891e992 -> :sswitch_11
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x2e1b8229 -> :sswitch_2
        -0x161f539a -> :sswitch_4
        0x3cd27856 -> :sswitch_13
        0x719201a9 -> :sswitch_8
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        -0x79ee07d9 -> :sswitch_6
        -0x70f42b49 -> :sswitch_5
        -0x63013e69 -> :sswitch_7
        0x6dc91334 -> :sswitch_3
    .end sparse-switch

    :sswitch_data_3
    .sparse-switch
        -0x1dac189 -> :sswitch_13
        0x5621de5e -> :sswitch_10
        0x635eb824 -> :sswitch_a
        0x7a8c1bb1 -> :sswitch_c
    .end sparse-switch

    :sswitch_data_4
    .sparse-switch
        -0x21c6ec3c -> :sswitch_f
        0xc580122 -> :sswitch_e
        0x357c0fec -> :sswitch_d
        0x52a01a08 -> :sswitch_b
    .end sparse-switch
.end method

.method private OooOo00()V
    .locals 4

    const-string v0, "\u06ec\u06e1\u06da\u06df\u06e7\u06db\u06e4\u06e1\u06ec\u06e5\u06d6\u06d6\u06d7\u06d8\u06e2\u06d8\u06d9\u06e5\u06d8\u06df\u06e0\u06db\u06d8\u06db\u06d7\u06d8\u06e8\u06d8\u06d8\u06e5\u06d9\u06dc\u06d8\u06e0\u06eb\u06d6\u06d8\u06d6\u06e2\u06ec\u06dc\u06df\u06e5\u06e4\u06e2\u06df\u06eb\u06e7\u06db\u06d6\u06e6\u06e7\u06eb\u06e0\u06e5\u06e1\u06d8\u06dc"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x2be

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x3ca

    const/16 v2, 0x111

    const v3, -0x13e3ed8e

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06ec\u06da\u06e5\u06e5\u06e0\u06e4\u06ec\u06d8\u06e5\u06d8\u06df\u06e2\u06db\u06dc\u06e1\u06ec\u06e2\u06dc\u06e8\u06d8\u06e5\u06dc\u06e8\u06eb\u06dc\u06dc\u06df\u06d6\u06d8\u06d8\u06da\u06df\u06d6\u06d8\u06e6\u06d9\u06e8\u06d8\u06e4\u06d8\u06e1\u06d8\u06e6\u06dc\u06e8\u06e2\u06e5\u06e5\u06e2\u06df\u06e5\u06d8\u06eb\u06e7\u06d6\u06d8\u06e4\u06e2\u06d8\u06d8\u06db\u06eb\u06df"

    goto :goto_0

    :sswitch_1
    invoke-static {p0}, Lz2/y8;->OooOOO(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x3eb

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    const-string v0, "\u06d9\u06d7\u06e1\u06e8\u06e0\u06e4\u06e6\u06d6\u06e8\u06d8\u06d6\u06e6\u06e8\u06df\u06d7\u06e5\u06d8\u06d9\u06d6\u06e4\u06d6\u06e4\u06e4\u06d8\u06d9\u06dc\u06d8\u06d8\u06e6\u06e2\u06e6\u06df\u06e2\u06d8\u06e0\u06e5\u06ec\u06d7\u06e6"

    goto :goto_0

    :sswitch_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x52b4d2b2 -> :sswitch_2
        0x10debf63 -> :sswitch_0
        0x13ac5e34 -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method public OooO()V
    .locals 4

    const-string v0, "\u06df\u06e4\u06da\u06db\u06e1\u06e4\u06e2\u06d8\u06d8\u06da\u06e6\u06e6\u06e5\u06e0\u06e6\u06e6\u06e4\u06d8\u06e2\u06eb\u06da\u06ec\u06e6\u06d8\u06dc\u06e4\u06e5\u06d8\u06d6\u06dc\u06dc\u06d8\u06e2\u06e7\u06e8\u06d8\u06d6\u06e6\u06e1\u06d8\u06e5\u06d8\u06e8\u06d9\u06da\u06d9\u06dc\u06e1\u06d9\u06e6\u06e6\u06d7"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x10

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x313

    const/16 v2, 0x1bf

    const v3, -0x1edcdd8a

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d8\u06d6\u06df\u06d8\u06e6\u06e7\u06d8\u06e1\u06e8\u06e4\u06e5\u06e4\u06e5\u06e7\u06db\u06e0\u06db\u06e4\u06df\u06e1\u06d6\u06e1\u06e4\u06eb\u06d9\u06da\u06e0\u06d9\u06d8\u06e5\u06e7\u06d8\u06da\u06e5\u06ec\u06eb\u06d9\u06e5\u06ec\u06d8\u06d7\u06e7\u06d9\u06e2\u06e5\u06e2\u06df\u06e0\u06d9\u06ec\u06d9\u06eb\u06e5\u06d8\u06e5\u06e0\u06db"

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/cyjh/common/base/activity/BaseModelActivity;->OooooO0:Landroidx/lifecycle/AndroidViewModel;

    check-cast v0, Lz2/oa;

    invoke-virtual {v0}, Lz2/oa;->OooOo0o()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity$OooO00o;

    invoke-direct {v1, p0}, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity$OooO00o;-><init>(Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    const-string v0, "\u06e7\u06d7\u06dc\u06d8\u06e1\u06d9\u06eb\u06d8\u06eb\u06dc\u06d8\u06ec\u06e5\u06dc\u06d8\u06e8\u06e2\u06d8\u06e6\u06da\u06d8\u06da\u06e1\u06e1\u06d8\u06e4\u06da\u06e6\u06d8\u06e5\u06ec\u06e0\u06e8\u06e7\u06e7\u06d7\u06db\u06e1\u06e8\u06dc\u06e1\u06d8\u06e2\u06e6\u06e8\u06d8\u06e5\u06e7\u06e7"

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/cyjh/common/base/activity/BaseModelActivity;->OooooO0:Landroidx/lifecycle/AndroidViewModel;

    check-cast v0, Lz2/oa;

    invoke-virtual {v0}, Lz2/oa;->OooOo()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity$OooO0O0;

    invoke-direct {v1, p0}, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity$OooO0O0;-><init>(Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    const-string v0, "\u06e0\u06dc\u06d6\u06e1\u06e8\u06e6\u06e7\u06e7\u06d8\u06e8\u06e1\u06d8\u06d9\u06e1\u06d6\u06d8\u06e5\u06e6\u06d8\u06d6\u06e8\u06e2\u06e0\u06e2\u06e5\u06e6\u06e0\u06e7\u06d7\u06df\u06e2\u06d7\u06eb\u06dc\u06d8\u06ec\u06d6\u06e1\u06d8\u06e1\u06db\u06df\u06eb\u06ec\u06dc\u06e4\u06df\u06e1\u06d6\u06e7\u06e5\u06d8\u06dc\u06d8\u06e2\u06d7\u06e1\u06dc"

    goto :goto_0

    :sswitch_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x3673d583 -> :sswitch_1
        -0x2d9e920a -> :sswitch_0
        0x6284ea25 -> :sswitch_2
        0x7768a764 -> :sswitch_3
    .end sparse-switch
.end method

.method public OooO0oO()I
    .locals 4

    const-string v0, "\u06e8\u06e0\u06df\u06e2\u06dc\u06e4\u06e0\u06e6\u06dc\u06d8\u06dc\u06e0\u06d7\u06e5\u06d6\u06e1\u06d7\u06e6\u06e4\u06e5\u06ec\u06e2\u06e7\u06e2\u06e6\u06d7\u06e2\u06eb\u06ec\u06dc\u06e8\u06d8\u06d8\u06e2\u06e1\u06d8\u06eb\u06dc\u06ec\u06e8\u06e0\u06d9\u06d7\u06ec\u06ec\u06e6\u06e2\u06e1\u06dc\u06e2\u06e6\u06eb\u06e1\u06e7\u06db\u06df\u06df"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x7c

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x212

    const/16 v2, 0x22d

    const v3, -0x761240c5

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e8\u06e5\u06e6\u06e0\u06d9\u06da\u06e1\u06ec\u06e7\u06d9\u06d6\u06da\u06e4\u06e6\u06d6\u06ec\u06e0\u06e1\u06e1\u06df\u06ec\u06e8\u06e5\u06e4\u06dc\u06d6\u06df\u06e2\u06d9\u06eb\u06db\u06e1\u06d8\u06db\u06da\u06e2\u06e8\u06dc\u06df\u06d7\u06d9\u06d6\u06d8"

    goto :goto_0

    :sswitch_1
    const v0, 0x7f0c002a

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x3c1793c -> :sswitch_1
        0xf6b7660 -> :sswitch_0
    .end sparse-switch
.end method

.method public OooO0oo()Ljava/lang/Class;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Lz2/oa;",
            ">;"
        }
    .end annotation

    const-string v0, "\u06da\u06df\u06d9\u06e5\u06e4\u06e0\u06d8\u06d8\u06d8\u06e2\u06eb\u06dc\u06da\u06e0\u06e8\u06db\u06df\u06e8\u06e6\u06e7\u06da\u06d6\u06e5\u06e6\u06da\u06d7\u06eb\u06e7\u06e1\u06e7"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x209

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x192

    const/16 v2, 0x231

    const v3, -0x5cdf8e44

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06db\u06e0\u06e8\u06e7\u06d7\u06d8\u06d8\u06da\u06dc\u06d6\u06d8\u06d8\u06d6\u06d6\u06e1\u06df\u06e4\u06d6\u06e7\u06dc\u06d8\u06e8\u06e0\u06d6\u06d8\u06e4\u06e6\u06db\u06ec\u06e4\u06e8\u06ec\u06e5\u06e1\u06e5\u06dc\u06e1\u06d8\u06db\u06d7\u06e5\u06d8\u06da\u06db\u06df\u06df\u06d7\u06eb\u06da\u06df\u06e5\u06e0\u06eb\u06df\u06df\u06d9\u06d7\u06d9\u06e1\u06d8"

    goto :goto_0

    :sswitch_1
    const-class v0, Lz2/oa;

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x6ac08258 -> :sswitch_1
        0x755a51d1 -> :sswitch_0
    .end sparse-switch
.end method

.method public initView()V
    .locals 6

    const/4 v3, 0x0

    const-string v0, "\u06d9\u06e7\u06e5\u06d7\u06d8\u06e2\u06da\u06d6\u06dc\u06d8\u06e0\u06e7\u06e6\u06d8\u06e8\u06dc\u06e5\u06da\u06e1\u06e7\u06e2\u06d9\u06df\u06e8\u06e4\u06e6\u06e7\u06e4\u06d6\u06d6\u06e5\u06e5\u06d8"

    move-object v1, v0

    move-object v2, v3

    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v4, 0x26

    xor-int/2addr v0, v4

    xor-int/lit16 v0, v0, 0xa7

    const/16 v4, 0x220

    const v5, 0x584761a

    xor-int/2addr v0, v4

    xor-int/2addr v0, v5

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06da\u06e8\u06d7\u06d7\u06e8\u06da\u06d9\u06db\u06d9\u06d7\u06e1\u06dc\u06d8\u06d7\u06d7\u06e8\u06d8\u06e0\u06d8\u06ec\u06e7\u06eb\u06e8\u06e2\u06eb\u06e5\u06d8\u06eb\u06d7\u06e7\u06d7\u06d6\u06e6\u06ec\u06ec\u06e8\u06df\u06ec\u06ec\u06df\u06e6\u06e1\u06db\u06db\u06d7\u06eb\u06e1\u06d8\u06e4\u06db\u06e6"

    move-object v1, v0

    goto :goto_0

    :sswitch_1
    const v0, 0x7f0902f0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cyjh/elfin/ui/view/customview/TitleView;

    const-string v1, "\u06dc\u06dc\u06e4\u06ec\u06d8\u06eb\u06e2\u06e7\u06ec\u06d7\u06e4\u06e1\u06db\u06e7\u06dc\u06e7\u06e4\u06dc\u06d8\u06dc\u06dc\u06e8\u06d8\u06db\u06e2\u06e6\u06d8\u06d8\u06e8\u06d8\u06d8\u06dc\u06e7\u06d6\u06dc\u06da\u06e7\u06db\u06e2\u06d8\u06d8\u06d9\u06e2\u06eb\u06d7\u06e1\u06dc\u06d8\u06e5\u06e0\u06e7"

    move-object v2, v0

    goto :goto_0

    :sswitch_2
    const v0, 0x7f10003d

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setTitleText(Ljava/lang/String;)V

    const-string v0, "\u06e6\u06e4\u06e8\u06e1\u06d8\u06e1\u06e7\u06e1\u06e7\u06e2\u06da\u06dc\u06e0\u06da\u06d8\u06eb\u06e7\u06ec\u06dc\u06e2\u06e8\u06d8\u06ec\u06e2\u06e0\u06e6\u06e6\u06e8\u06d8\u06eb\u06d6\u06d8\u06d8\u06e6\u06d8\u06e8\u06d8\u06db\u06e1\u06e5"

    move-object v1, v0

    goto :goto_0

    :sswitch_3
    const/4 v0, 0x4

    invoke-virtual {v2, v0}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setVisibilityRightImage(I)V

    const-string v0, "\u06df\u06e2\u06e1\u06d7\u06eb\u06e8\u06db\u06e8\u06d7\u06da\u06dc\u06da\u06eb\u06ec\u06e6\u06d8\u06df\u06df\u06d7\u06e5\u06e4\u06ec\u06df\u06e4\u06d8\u06eb\u06d8\u06e1\u06eb\u06d9\u06dc\u06d8"

    move-object v1, v0

    goto :goto_0

    :sswitch_4
    const v0, 0x7f0801c9

    invoke-virtual {v2, v0}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setleftImage(I)V

    const-string v0, "\u06e2\u06df\u06dc\u06d8\u06d9\u06da\u06d6\u06d8\u06e5\u06d8\u06ec\u06e4\u06e1\u06db\u06e5\u06df\u06d7\u06e8\u06da\u06e8\u06da\u06da\u06e1\u06d8\u06e7\u06d9\u06d8\u06d9\u06d9\u06d8\u06e4\u06df\u06e6\u06d8\u06e2\u06e8\u06d8\u06ec\u06da\u06e5\u06e4\u06e1\u06dc\u06d8\u06e5\u06da\u06dc\u06ec\u06e8\u06d6\u06d8\u06d8\u06e5\u06df\u06e8\u06d8\u06d6\u06df\u06da\u06df"

    move-object v1, v0

    goto :goto_0

    :sswitch_5
    const v0, 0x7f100234

    invoke-virtual {v2, v0}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setRightTvText(I)V

    const-string v0, "\u06e6\u06df\u06e6\u06ec\u06e6\u06e7\u06d8\u06e0\u06e7\u06e6\u06d8\u06db\u06e6\u06d6\u06d8\u06dc\u06e6\u06ec\u06e6\u06dc\u06e8\u06e0\u06d8\u06e1\u06d8\u06d9\u06e5\u06e6\u06d8\u06df\u06eb\u06eb\u06d6\u06e8"

    move-object v1, v0

    goto :goto_0

    :sswitch_6
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setVisibilityTvRight(I)V

    const-string v0, "\u06d8\u06da\u06ec\u06e5\u06e8\u06e7\u06e6\u06e8\u06e5\u06d8\u06d8\u06da\u06e1\u06d8\u06df\u06e5\u06eb\u06d7\u06d9\u06e1\u06e5\u06e7\u06e8\u06d8\u06e8\u06d8\u06e1\u06d7\u06e7\u06dc\u06d7\u06eb\u06e1\u06e2\u06e4\u06eb\u06e2\u06e5\u06d6\u06d8\u06db\u06e4\u06e8\u06d8\u06e8\u06e5\u06dc"

    move-object v1, v0

    goto :goto_0

    :sswitch_7
    const v0, 0x7f0903b2

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;->OooooOo:Landroid/widget/EditText;

    const-string v0, "\u06eb\u06e8\u06db\u06e4\u06df\u06da\u06dc\u06d9\u06e1\u06e0\u06e4\u06e6\u06e8\u06df\u06d7\u06e0\u06db\u06ec\u06e5\u06d8\u06e5\u06d7\u06e2\u06e5\u06e5\u06d6\u06eb\u06e1\u06e2\u06df\u06e8\u06e7\u06d8\u06e0\u06e6\u06e6\u06d8"

    move-object v1, v0

    goto :goto_0

    :sswitch_8
    const v0, 0x7f09045d

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;->Oooooo0:Landroid/widget/TextView;

    const-string v0, "\u06e7\u06db\u06e6\u06d6\u06da\u06e4\u06d9\u06db\u06ec\u06e6\u06e0\u06e5\u06d8\u06df\u06d7\u06d7\u06e4\u06d9\u06e1\u06d8\u06d6\u06d9\u06d7\u06e0\u06d6\u06d8\u06d8\u06e1\u06df\u06e1\u06d8\u06d8\u06d6\u06e7\u06d8"

    move-object v1, v0

    goto :goto_0

    :sswitch_9
    const v0, 0x7f090361

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;->Oooooo:Landroid/widget/LinearLayout;

    const-string v0, "\u06db\u06e2\u06e1\u06e6\u06db\u06d9\u06d7\u06e2\u06e6\u06d8\u06da\u06db\u06ec\u06e7\u06e6\u06e5\u06d8\u06d9\u06d7\u06d8\u06d8\u06df\u06e4\u06df\u06e6\u06dc\u06e5\u06d8\u06e0\u06d6\u06e1\u06d8\u06e4\u06e7\u06e1\u06d8"

    move-object v1, v0

    goto/16 :goto_0

    :sswitch_a
    const v0, 0x7f090457

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;->OoooooO:Landroid/widget/TextView;

    const-string v0, "\u06dc\u06d7\u06d6\u06d8\u06e6\u06e4\u06e2\u06e8\u06e5\u06e7\u06eb\u06e0\u06dc\u06d8\u06dc\u06e7\u06e8\u06d8\u06d7\u06db\u06d9\u06df\u06d6\u06e1\u06ec\u06da\u06e8\u06d8\u06e1\u06eb\u06e6\u06e4\u06df\u06d9\u06d7\u06da\u06db\u06d7\u06e2\u06dc\u06d8\u06da\u06df\u06d6\u06d8\u06e4\u06e7\u06da\u06e2\u06d7\u06e1\u06d8\u06e1\u06e8\u06db\u06db\u06e8\u06e1\u06d8\u06db\u06e7\u06d8\u06d8"

    move-object v1, v0

    goto/16 :goto_0

    :sswitch_b
    const v0, 0x7f090475

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;->Ooooooo:Landroid/widget/TextView;

    const-string v0, "\u06da\u06d8\u06e6\u06d8\u06dc\u06d9\u06d6\u06d8\u06e0\u06ec\u06e8\u06d9\u06ec\u06ec\u06da\u06e4\u06e1\u06d8\u06d8\u06e6\u06e1\u06e0\u06d9\u06d8\u06eb\u06e7\u06da\u06da\u06d9\u06db\u06d9\u06e4\u06db\u06e1\u06ec\u06e7\u06d7\u06e5\u06ec\u06d6\u06d9\u06d6\u06d7\u06db\u06eb\u06ec\u06e1\u06da\u06e4\u06e4\u06d7\u06da\u06d7\u06dc\u06dc\u06e7\u06e0"

    move-object v1, v0

    goto/16 :goto_0

    :sswitch_c
    const v0, 0x7f090463

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;->o0OoOo0:Landroid/widget/TextView;

    const-string v0, "\u06e6\u06eb\u06d8\u06d7\u06e0\u06df\u06e1\u06df\u06e1\u06d8\u06e4\u06e7\u06e6\u06d8\u06ec\u06d7\u06e1\u06d8\u06d6\u06e4\u06e8\u06d8\u06e2\u06d7\u06dc\u06d8\u06e8\u06e8\u06d8\u06ec\u06e4\u06db\u06e6\u06d6\u06e6\u06e4\u06d7\u06e6\u06d6\u06eb\u06e1\u06d8\u06e0\u06e5\u06ec\u06dc\u06ec\u06e2\u06da\u06e8\u06e8\u06d8\u06e4\u06dc\u06d6\u06e5\u06da\u06d9\u06d7\u06e0"

    move-object v1, v0

    goto/16 :goto_0

    :sswitch_d
    const v0, 0x7f090353

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;->ooOO:Landroid/view/View;

    const-string v0, "\u06dc\u06e7\u06e5\u06d8\u06ec\u06d9\u06dc\u06d8\u06ec\u06db\u06d6\u06e7\u06e4\u06e4\u06ec\u06e1\u06e8\u06d8\u06db\u06df\u06e8\u06d8\u06e6\u06e7\u06d7\u06d6\u06df\u06dc\u06d8\u06e7\u06d6\u06e0\u06e8\u06e7\u06e8\u06e7\u06e8\u06d7\u06e8\u06d7\u06e6\u06d8"

    move-object v1, v0

    goto/16 :goto_0

    :sswitch_e
    const v0, 0x7f090355

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;->o00O0O:Landroid/view/View;

    const-string v0, "\u06e4\u06d6\u06d6\u06d8\u06da\u06eb\u06dc\u06db\u06e4\u06d8\u06e1\u06e2\u06e6\u06e7\u06e6\u06d8\u06df\u06d7\u06e5\u06d8\u06e4\u06e7\u06d9\u06dc\u06e0\u06e8\u06d8\u06e5\u06e7\u06e2\u06d7\u06e7\u06d8\u06d8\u06dc\u06d9\u06dc\u06d8\u06dc\u06e7\u06e6\u06d8\u06e8\u06db\u06e8\u06e7\u06e1\u06ec"

    move-object v1, v0

    goto/16 :goto_0

    :sswitch_f
    const v0, 0x7f090354

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;->o00Oo0:Landroid/view/View;

    const-string v0, "\u06e4\u06da\u06e5\u06da\u06db\u06e6\u06eb\u06db\u06ec\u06e7\u06da\u06db\u06d7\u06e0\u06d7\u06dc\u06db\u06e0\u06e0\u06e6\u06d8\u06e6\u06d6\u06d8\u06d8\u06d9\u06eb\u06e5\u06d8\u06d9\u06e6\u06ec\u06da\u06df\u06e0\u06e4\u06e0\u06e6\u06eb\u06e4\u06d8\u06d8\u06e0\u06df\u06d8\u06d8"

    move-object v1, v0

    goto/16 :goto_0

    :sswitch_10
    const v0, 0x7f090466

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;->o00Ooo:Landroid/widget/TextView;

    const-string v0, "\u06d7\u06e1\u06e1\u06e7\u06e1\u06e7\u06e8\u06e8\u06e2\u06ec\u06db\u06dc\u06d8\u06eb\u06da\u06ec\u06dc\u06dc\u06d9\u06e5\u06e4\u06d7\u06d6\u06d7\u06ec\u06d8\u06e4\u06dc\u06dc\u06e1\u06df\u06db\u06eb\u06d9\u06e4\u06da\u06e0\u06e6\u06e1\u06e0\u06d8\u06dc\u06d8"

    move-object v1, v0

    goto/16 :goto_0

    :sswitch_11
    const v0, 0x7f090232

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "\u06da\u06d7\u06e6\u06e2\u06e0\u06e5\u06d8\u06dc\u06e1\u06e8\u06d8\u06e0\u06e4\u06e6\u06db\u06d9\u06e1\u06d8\u06e2\u06dc\u06d6\u06da\u06e8\u06e6\u06da\u06e2\u06e6\u06d8\u06ec\u06e1\u06d8\u06da\u06eb\u06d6\u06d9\u06dc\u06e5\u06ec\u06df\u06e8\u06d8\u06da\u06e6\u06d8\u06d8\u06df\u06e6\u06da\u06df\u06eb\u06e1\u06d8\u06eb\u06e1\u06e4"

    move-object v1, v0

    goto/16 :goto_0

    :sswitch_12
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;->OooooOo:Landroid/widget/EditText;

    invoke-static {}, Lz2/q7;->OooO0o0()Lz2/q7;

    move-result-object v1

    invoke-virtual {v1}, Lz2/q7;->OooO0o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "\u06e4\u06e2\u06e6\u06e6\u06e0\u06e8\u06e6\u06e2\u06d8\u06d7\u06e0\u06eb\u06e2\u06d8\u06e6\u06d8\u06d8\u06e7\u06d8\u06d6\u06db\u06e8\u06d8\u06d6\u06d6\u06db\u06e6\u06ec\u06e8\u06e8\u06e8\u06dc\u06df\u06e0\u06d6\u06d9\u06dc\u06ec\u06e8\u06dc\u06dc\u06dc\u06d6\u06d8"

    move-object v1, v0

    goto/16 :goto_0

    :sswitch_13
    const v0, 0x7f09023b

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "\u06e7\u06da\u06ec\u06e0\u06d9\u06d7\u06dc\u06db\u06e8\u06d8\u06e7\u06e4\u06dc\u06d8\u06e6\u06e5\u06db\u06e6\u06df\u06dc\u06dc\u06e8\u06e8\u06e7\u06d8\u06d8\u06e0\u06da\u06e5\u06d8\u06d8\u06da\u06e6\u06d8\u06e4\u06e0\u06d6\u06e4\u06e8\u06d9\u06da\u06db\u06e6\u06e5\u06d9\u06e8\u06da\u06d6\u06e8\u06d8\u06e7\u06e1\u06d9\u06db\u06e2\u06d7\u06d9\u06df"

    move-object v1, v0

    goto/16 :goto_0

    :sswitch_14
    new-instance v0, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity$OooO;

    invoke-direct {v0, p0}, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity$OooO;-><init>(Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;)V

    invoke-virtual {v2, v0}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setOnRightTextViewListener(Lcom/cyjh/elfin/ui/view/customview/TitleView$OooO0o;)V

    const-string v0, "\u06e5\u06e1\u06e4\u06e1\u06e7\u06d8\u06d7\u06e0\u06e4\u06e1\u06d9\u06e8\u06e4\u06d6\u06e2\u06d8\u06d9\u06e4\u06e6\u06e8\u06e0\u06d7\u06ec\u06d7\u06e1\u06df\u06d8\u06e1\u06e7\u06d8"

    move-object v1, v0

    goto/16 :goto_0

    :sswitch_15
    new-instance v0, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity$OooOOO0;

    invoke-direct {v0, p0, v3}, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity$OooOOO0;-><init>(Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity$OooO00o;)V

    invoke-virtual {v2, v0}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setOnLeftImageViewListener(Lcom/cyjh/elfin/ui/view/customview/TitleView$OooO0O0;)V

    const-string v0, "\u06e8\u06e5\u06ec\u06e4\u06dc\u06d8\u06e6\u06eb\u06e5\u06d8\u06da\u06d9\u06df\u06d9\u06d6\u06e1\u06d8\u06e6\u06e6\u06e7\u06d8\u06df\u06eb\u06d6\u06d8\u06d6\u06df\u06db\u06ec\u06e7\u06d9\u06d9\u06eb\u06ec\u06d8\u06d7\u06dc\u06e4\u06db\u06e5\u06e6\u06e1\u06e7\u06d8\u06e5"

    move-object v1, v0

    goto/16 :goto_0

    :sswitch_16
    invoke-direct {p0}, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;->OooOOo0()V

    const-string v0, "\u06d8\u06e8\u06e5\u06d8\u06dc\u06d6\u06d9\u06d6\u06d6\u06dc\u06d8\u06e4\u06e6\u06e8\u06d8\u06db\u06e4\u06e8\u06d9\u06db\u06dc\u06ec\u06d8\u06ec\u06e1\u06d7\u06e4\u06e4\u06e7\u06db\u06e0\u06e2\u06e0\u06ec\u06d8\u06d8\u06d8\u06db\u06e5\u06d8\u06e7\u06d9\u06d6\u06da\u06e2\u06d8\u06e1\u06e8\u06e8\u06d8\u06da\u06d9"

    move-object v1, v0

    goto/16 :goto_0

    :sswitch_17
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7c790155 -> :sswitch_f
        -0x645bd289 -> :sswitch_9
        -0x620aea53 -> :sswitch_a
        -0x607d0074 -> :sswitch_c
        -0x44366aec -> :sswitch_0
        -0x2867d848 -> :sswitch_b
        -0x2662195d -> :sswitch_4
        -0x19928f48 -> :sswitch_2
        -0xff929d1 -> :sswitch_10
        0x508459f -> :sswitch_e
        0x10f3cabd -> :sswitch_1
        0x1365215f -> :sswitch_16
        0x149f892e -> :sswitch_13
        0x16a834ae -> :sswitch_8
        0x1dd3918c -> :sswitch_3
        0x2d9ea2fb -> :sswitch_11
        0x3694d74d -> :sswitch_6
        0x536b6ef1 -> :sswitch_d
        0x5456ba95 -> :sswitch_15
        0x67534f56 -> :sswitch_14
        0x702d1c92 -> :sswitch_12
        0x78f7b7b0 -> :sswitch_17
        0x7b2d8c62 -> :sswitch_5
        0x7fa9dc4d -> :sswitch_7
    .end sparse-switch
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    const/4 v1, 0x0

    const-string v0, "\u06e2\u06ec\u06e8\u06d8\u06e6\u06e0\u06da\u06e8\u06d9\u06eb\u06d9\u06dc\u06d6\u06d8\u06e8\u06eb\u06e5\u06e7\u06da\u06e1\u06d8\u06ec\u06db\u06e7\u06e0\u06df\u06e8\u06d8\u06e2\u06d8\u06e8\u06d8\u06e1\u06e2\u06e7\u06e0\u06d8\u06dc\u06db\u06e5\u06dc\u06e6\u06e4\u06ec\u06db\u06eb\u06dc"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v3, 0x226

    xor-int/2addr v2, v3

    xor-int/lit16 v2, v2, 0x275

    const/16 v3, 0x13a

    const v4, -0x203e2719

    xor-int/2addr v2, v3

    xor-int/2addr v2, v4

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d9\u06e2\u06da\u06db\u06d6\u06da\u06d8\u06da\u06e0\u06d6\u06e7\u06e5\u06d8\u06d8\u06e0\u06e2\u06dc\u06e2\u06e1\u06d8\u06e8\u06df\u06e4\u06d9\u06ec\u06e0\u06db\u06e4\u06e1\u06d8\u06e8\u06e0\u06e2\u06d6\u06d9\u06d6\u06d7\u06e1\u06e5\u06d8"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06e4\u06e5\u06e1\u06e8\u06e1\u06e6\u06d7\u06dc\u06e6\u06dc\u06e1\u06d8\u06e8\u06e5\u06d6\u06ec\u06e1\u06e0\u06d9\u06d8\u06e2\u06e0\u06e6\u06e1\u06d8\u06d6\u06e4\u06d8\u06d8\u06d6\u06e7\u06d7\u06dc\u06e6\u06e6\u06d8\u06dc\u06e8\u06dc\u06d8\u06df\u06e2\u06d6\u06d9\u06da\u06e8\u06e1\u06d9\u06dc\u06d8\u06df\u06d9\u06e1\u06e5\u06da\u06d7\u06eb\u06e7\u06e4"

    goto :goto_0

    :sswitch_2
    const-string v0, "\u06da\u06eb\u06e0\u06df\u06da\u06ec\u06e2\u06d8\u06d9\u06e6\u06e5\u06e1\u06e1\u06e2\u06db\u06e7\u06d9\u06e5\u06d8\u06d6\u06d7\u06d8\u06d8\u06d6\u06d7\u06e8\u06db\u06da\u06e1\u06e8\u06ec\u06d6\u06d9\u06d7\u06d8\u06e4\u06e8\u06d9\u06d8\u06da\u06e8\u06ec\u06d6\u06e1\u06d8\u06da\u06e8\u06d6\u06d7\u06eb\u06e4"

    goto :goto_0

    :sswitch_3
    const-string v0, "\u06ec\u06df\u06dc\u06df\u06da\u06dc\u06d9\u06e7\u06d9\u06d7\u06dc\u06d8\u06da\u06e5\u06e8\u06df\u06e6\u06d6\u06d8\u06d9\u06d6\u06da\u06dc\u06d6\u06e6\u06d8\u06df\u06da\u06e5\u06e8\u06e4\u06d9\u06e7\u06ec\u06e8\u06e6\u06ec\u06e1"

    goto :goto_0

    :sswitch_4
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const-string v0, "\u06e1\u06e6\u06da\u06ec\u06d8\u06e0\u06e7\u06e5\u06d8\u06d8\u06d8\u06ec\u06da\u06eb\u06d9\u06dc\u06eb\u06e4\u06df\u06e8\u06e2\u06e5\u06d8\u06e5\u06e5\u06e7\u06d6\u06e8\u06e1\u06df\u06e4\u06e1\u06d8\u06d7\u06db\u06e4\u06e1\u06e8\u06d6\u06e6\u06e0\u06db\u06e2\u06d8\u06e5\u06d8\u06e2\u06e1\u06e6\u06e7\u06e8\u06e5\u06d8"

    goto :goto_0

    :sswitch_5
    const v2, 0x20d5de7f

    const-string v0, "\u06e5\u06e7\u06e6\u06db\u06e5\u06e5\u06d8\u06eb\u06d6\u06e8\u06d8\u06eb\u06e2\u06e7\u06df\u06e7\u06d6\u06e8\u06e5\u06dc\u06d6\u06e0\u06e5\u06d8\u06d7\u06d9\u06e4\u06e8\u06e6\u06e1\u06d6\u06eb\u06ec\u06d9\u06e8\u06d9\u06eb\u06e5\u06df\u06e2\u06d9\u06e6\u06db\u06e1\u06da\u06e5\u06e7\u06e0\u06ec\u06d7\u06e4\u06d9\u06e8\u06d6\u06db\u06d9\u06d6"

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v2

    sparse-switch v3, :sswitch_data_1

    goto :goto_1

    :sswitch_6
    const-string v0, "\u06db\u06e8\u06eb\u06db\u06ec\u06d9\u06e8\u06d6\u06e2\u06dc\u06da\u06df\u06eb\u06dc\u06dc\u06da\u06e7\u06e6\u06d8\u06db\u06ec\u06e1\u06d8\u06e7\u06ec\u06e2\u06e7\u06d9\u06e0\u06ec\u06df\u06e1\u06d9\u06da\u06d6\u06d8\u06e8\u06ec\u06eb\u06dc\u06e5\u06ec\u06e2\u06d9\u06e0\u06e0\u06df\u06dc\u06db\u06d9\u06da\u06d9\u06e1\u06e7\u06d8\u06dc\u06eb\u06e8"

    goto :goto_1

    :sswitch_7
    const-string v0, "\u06e0\u06e6\u06e5\u06da\u06d9\u06d8\u06d8\u06dc\u06e5\u06d7\u06d7\u06db\u06dc\u06e7\u06d6\u06e8\u06d8\u06e1\u06e5\u06d9\u06ec\u06d6\u06eb\u06e2\u06d7\u06e4\u06d7\u06d9\u06e0\u06d6\u06dc\u06dc\u06d8\u06e4\u06e5\u06e1\u06e6\u06e4\u06df\u06e2\u06e8\u06e6\u06e7\u06d9\u06d7\u06d8\u06d8\u06e8\u06e0\u06db"

    goto :goto_1

    :sswitch_8
    const v3, -0x302aba2e

    const-string v0, "\u06eb\u06dc\u06e5\u06eb\u06df\u06e1\u06d8\u06d7\u06d6\u06d9\u06db\u06df\u06e1\u06d8\u06da\u06e1\u06e6\u06d8\u06d8\u06e2\u06d9\u06e2\u06e2\u06e6\u06e1\u06e7\u06d9\u06e4\u06e4\u06e5\u06e2\u06e1\u06e6\u06e5\u06da\u06eb\u06d8\u06e5\u06e4\u06e0\u06e0\u06dc\u06df\u06db\u06e1\u06e1\u06e6\u06d7\u06dc\u06e7"

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    xor-int/2addr v4, v3

    sparse-switch v4, :sswitch_data_2

    goto :goto_2

    :sswitch_9
    const-string v0, "\u06d9\u06d8\u06e8\u06d8\u06d6\u06d6\u06e2\u06e2\u06eb\u06e0\u06e6\u06d6\u06d9\u06e6\u06eb\u06eb\u06e4\u06e6\u06e0\u06d9\u06d7\u06e4\u06eb\u06e0\u06e1\u06d8\u06e2\u06e8\u06d8\u06db\u06e1\u06e8\u06e5\u06db\u06e6\u06d8\u06d7\u06df\u06e5"

    goto :goto_1

    :cond_0
    const-string v0, "\u06dc\u06e7\u06e7\u06d7\u06d8\u06d8\u06eb\u06e0\u06d6\u06da\u06ec\u06d6\u06e8\u06d8\u06d7\u06ec\u06da\u06e8\u06d8\u06e0\u06d7\u06e1\u06d8\u06e4\u06e8\u06e4\u06da\u06e7\u06d8\u06ec\u06e6\u06e6\u06d7\u06d8\u06e1\u06d8\u06eb\u06d6\u06e1\u06d8\u06eb\u06e8\u06df\u06ec\u06e7\u06db\u06e5\u06d6\u06da\u06e8\u06ec\u06d8\u06e0\u06e5\u06e1\u06e0\u06da"

    goto :goto_2

    :sswitch_a
    const/16 v0, 0x3eb

    if-ne p1, v0, :cond_0

    const-string v0, "\u06dc\u06da\u06ec\u06e5\u06e8\u06d6\u06eb\u06d8\u06e8\u06e7\u06e2\u06e1\u06d8\u06e6\u06da\u06e6\u06e1\u06e7\u06e5\u06e5\u06db\u06d8\u06da\u06e0\u06d9\u06e6\u06e0\u06da\u06e2\u06ec\u06da\u06d6\u06d8\u06d6\u06e4\u06e8\u06e1\u06d8\u06df\u06e6\u06e1\u06ec\u06e2\u06e6\u06e8\u06e8\u06e0\u06d7\u06ec\u06da"

    goto :goto_2

    :sswitch_b
    const-string v0, "\u06eb\u06e8\u06dc\u06eb\u06e6\u06dc\u06e5\u06dc\u06df\u06da\u06eb\u06da\u06df\u06e5\u06d9\u06e6\u06ec\u06e5\u06d8\u06db\u06dc\u06ec\u06db\u06eb\u06db\u06d6\u06e6\u06d8\u06e4\u06e1\u06eb\u06db\u06db\u06e0\u06ec\u06dc\u06d8\u06d6\u06dc\u06e7\u06d8\u06e6\u06e8\u06dc\u06d8"

    goto :goto_2

    :sswitch_c
    const-string v0, "\u06d6\u06e0\u06e8\u06d8\u06e8\u06eb\u06d8\u06d8\u06db\u06e8\u06e0\u06e5\u06e7\u06d9\u06e7\u06e0\u06e0\u06dc\u06e1\u06d8\u06d8\u06e1\u06da\u06df\u06e5\u06e6\u06e2\u06e2\u06e5\u06d6\u06d8\u06d9\u06e7\u06e0\u06ec\u06eb\u06dc\u06d8\u06e7\u06d6\u06e1\u06d8\u06e0\u06e2\u06e5\u06d9\u06dc\u06eb\u06d8\u06d8\u06e8\u06e2\u06d8\u06d6\u06e1\u06e4\u06e6\u06dc\u06e0"

    goto :goto_0

    :sswitch_d
    const v2, -0x2467e7d

    const-string v0, "\u06e6\u06db\u06e0\u06e6\u06e4\u06da\u06e4\u06e8\u06d9\u06e5\u06e6\u06d6\u06d8\u06e6\u06da\u06e5\u06d8\u06d8\u06e7\u06e5\u06d8\u06eb\u06d7\u06d9\u06d6\u06d9\u06e8\u06d8\u06e8\u06e0\u06d8\u06df\u06e5\u06e8\u06d8\u06e4\u06e8\u06e7\u06d8\u06ec\u06e5\u06e5\u06d9\u06e7\u06e7\u06ec\u06dc\u06d6\u06d9\u06da\u06e8\u06d8\u06eb\u06ec"

    :goto_3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v2

    sparse-switch v3, :sswitch_data_3

    goto :goto_3

    :sswitch_e
    const v3, 0x6d16040b

    const-string v0, "\u06e0\u06e4\u06dc\u06d8\u06df\u06e6\u06df\u06e0\u06e8\u06e7\u06d8\u06e8\u06d9\u06eb\u06e0\u06d9\u06db\u06ec\u06d7\u06e8\u06e5\u06e2\u06e5\u06d8\u06dc\u06d7\u06e8\u06d8\u06e8\u06e6\u06e8\u06d8\u06e8\u06da\u06e6\u06e0\u06e6\u06e2\u06ec\u06e6"

    :goto_4
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    xor-int/2addr v4, v3

    sparse-switch v4, :sswitch_data_4

    goto :goto_4

    :sswitch_f
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    const-string v0, "\u06e5\u06e2\u06e1\u06e6\u06ec\u06db\u06e8\u06df\u06e8\u06d8\u06d6\u06df\u06dc\u06e0\u06d9\u06e6\u06e0\u06e0\u06d8\u06d8\u06db\u06d9\u06e0\u06d7\u06df\u06d9\u06d6\u06d7\u06e1\u06d8\u06dc\u06e4\u06e0"

    goto :goto_4

    :sswitch_10
    const-string v0, "\u06d6\u06dc\u06df\u06e4\u06db\u06e8\u06d9\u06d6\u06dc\u06d9\u06dc\u06e1\u06d8\u06db\u06e7\u06d6\u06d8\u06ec\u06e5\u06df\u06e2\u06d8\u06dc\u06d8\u06e8\u06e8\u06db\u06d8\u06ec\u06d8\u06eb\u06e6\u06d8\u06d8\u06e8\u06ec\u06e6\u06d8\u06e5\u06db\u06dc\u06d8\u06e6\u06ec\u06d9\u06e7\u06e6\u06d8\u06ec\u06da\u06dc\u06d8\u06da\u06d7\u06da"

    goto :goto_3

    :cond_1
    const-string v0, "\u06e2\u06da\u06d8\u06d8\u06da\u06e0\u06dc\u06d8\u06d6\u06e8\u06d9\u06d9\u06e0\u06db\u06d7\u06ec\u06e5\u06df\u06d9\u06e6\u06e7\u06d7\u06ec\u06da\u06e0\u06da\u06e5\u06e4\u06e8\u06e2\u06dc\u06df\u06d7\u06dc\u06d8\u06e7\u06df\u06e7\u06df\u06e0\u06d6\u06d8\u06e4\u06df\u06e2"

    goto :goto_4

    :sswitch_11
    const-string v0, "\u06e5\u06d9\u06e8\u06d8\u06e6\u06da\u06dc\u06d8\u06e5\u06e7\u06ec\u06d8\u06d7\u06d8\u06d8\u06e7\u06e7\u06e1\u06e6\u06db\u06da\u06e1\u06d7\u06e8\u06d8\u06db\u06da\u06dc\u06d6\u06d6\u06d9\u06e1\u06d6\u06e5\u06dc\u06d8\u06eb\u06e6\u06d8\u06eb\u06d8\u06dc\u06ec\u06d9\u06e5\u06d8"

    goto :goto_4

    :sswitch_12
    const-string v0, "\u06e7\u06d9\u06e4\u06e5\u06ec\u06e2\u06db\u06d9\u06da\u06d7\u06ec\u06e7\u06e8\u06dc\u06d6\u06d8\u06e5\u06e5\u06e4\u06e2\u06ec\u06d6\u06e4\u06e5\u06d7\u06df\u06e0\u06db\u06e7\u06d9\u06d8\u06da\u06dc\u06e8\u06e1\u06d9\u06e2\u06db\u06e8\u06ec\u06dc\u06e7\u06ec\u06e6\u06d6\u06db\u06e7\u06db\u06e1\u06d8"

    goto :goto_3

    :sswitch_13
    const-string v0, "\u06e2\u06ec\u06e6\u06d8\u06d8\u06e1\u06e5\u06d8\u06e2\u06e1\u06dc\u06d8\u06e0\u06ec\u06e5\u06d8\u06e4\u06e6\u06e1\u06d8\u06d6\u06ec\u06e8\u06e7\u06dc\u06e7\u06e0\u06d6\u06e6\u06dc\u06df\u06df\u06e7\u06e0\u06e6\u06da\u06d8\u06d8\u06d9\u06e5\u06e6\u06eb\u06d7\u06eb\u06e0\u06e6\u06d8"

    goto :goto_3

    :sswitch_14
    const-string v0, "\u06d7\u06d8\u06d8\u06e0\u06d6\u06e8\u06d8\u06e7\u06e6\u06e5\u06d8\u06ec\u06e6\u06eb\u06dc\u06dc\u06d8\u06e4\u06e1\u06d6\u06d8\u06e5\u06eb\u06e2\u06e0\u06e8\u06d6\u06d8\u06d7\u06e6\u06e8\u06d8\u06e7\u06d8\u06e0\u06dc\u06d7\u06d6\u06ec\u06eb\u06e1\u06e0\u06eb\u06e0\u06d9\u06e6\u06e8\u06e1\u06d6\u06d8\u06e1\u06e6\u06e1\u06d8"

    goto/16 :goto_0

    :sswitch_15
    const v2, -0x128d6b2e

    const-string v0, "\u06e5\u06da\u06da\u06e7\u06e5\u06e8\u06e6\u06d7\u06e6\u06e8\u06e0\u06df\u06e6\u06df\u06ec\u06d7\u06da\u06db\u06d9\u06e1\u06e6\u06e1\u06d9\u06e5\u06d8\u06e1\u06e4\u06dc\u06e7\u06d8\u06e7\u06d8\u06eb\u06e0\u06d6\u06d7\u06dc\u06df\u06df\u06d9\u06e4\u06d7\u06e8\u06e8\u06d8"

    :goto_5
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v2

    sparse-switch v3, :sswitch_data_5

    goto :goto_5

    :sswitch_16
    const-string v0, "\u06e0\u06db\u06e6\u06e0\u06eb\u06e6\u06d8\u06e0\u06e1\u06e8\u06d8\u06eb\u06e2\u06d7\u06e2\u06dc\u06da\u06d6\u06e4\u06dc\u06d7\u06d8\u06d6\u06d6\u06e1\u06d8\u06d8\u06e6\u06e6\u06eb\u06e5\u06db\u06e8\u06d8"

    goto/16 :goto_0

    :sswitch_17
    const-string v0, "\u06db\u06e7\u06e5\u06d8\u06da\u06e6\u06eb\u06d9\u06e0\u06e0\u06dc\u06da\u06e7\u06e4\u06e5\u06e1\u06d8\u06e7\u06e2\u06d6\u06d8\u06d8\u06dc\u06d6\u06d8\u06d6\u06e0\u06e1\u06e8\u06e7\u06d6\u06d8\u06e6\u06e7\u06d8\u06d7\u06e5\u06d8\u06e8\u06e5\u06ec"

    goto :goto_5

    :sswitch_18
    const v3, -0xc377601

    const-string v0, "\u06da\u06db\u06e1\u06d9\u06e7\u06e8\u06d8\u06d8\u06d6\u06d6\u06d8\u06d8\u06df\u06d8\u06d8\u06e0\u06e5\u06eb\u06ec\u06e2\u06dc\u06e5\u06e0\u06dc\u06d8\u06e4\u06dc\u06d9\u06e2\u06e8\u06e1\u06e2\u06e0\u06e6\u06d8\u06e7\u06d9\u06df\u06df\u06db\u06e4\u06d9\u06d7\u06d8\u06d8\u06d6\u06db\u06e4\u06db\u06e5\u06dc\u06df\u06ec\u06e1"

    :goto_6
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    xor-int/2addr v4, v3

    sparse-switch v4, :sswitch_data_6

    goto :goto_6

    :sswitch_19
    if-eqz p3, :cond_2

    const-string v0, "\u06d9\u06ec\u06d6\u06e5\u06d9\u06d7\u06d9\u06e6\u06df\u06da\u06df\u06d6\u06d8\u06da\u06e0\u06e8\u06d8\u06e0\u06e2\u06dc\u06d8\u06d8\u06df\u06ec\u06e7\u06d6\u06dc\u06d8\u06ec\u06e6\u06e8\u06d8\u06e5\u06dc\u06d7\u06d6\u06e7\u06d8\u06d8\u06e4\u06e4\u06db\u06e1\u06e5\u06dc\u06d8\u06e0\u06d9\u06d8\u06ec\u06e5\u06eb\u06eb\u06e4\u06d8\u06d8"

    goto :goto_6

    :cond_2
    const-string v0, "\u06e2\u06e0\u06db\u06e0\u06e2\u06d6\u06d8\u06d6\u06da\u06d6\u06e6\u06e6\u06e0\u06db\u06d7\u06e5\u06df\u06e0\u06df\u06d9\u06e6\u06df\u06e5\u06d6\u06db\u06eb\u06db\u06d8\u06e2\u06e5\u06df\u06e8\u06e8\u06d7\u06d8\u06dc\u06d8"

    goto :goto_6

    :sswitch_1a
    const-string v0, "\u06d9\u06e5\u06da\u06e8\u06d8\u06e0\u06d7\u06d8\u06e5\u06ec\u06ec\u06e1\u06d8\u06e2\u06e5\u06d8\u06dc\u06d9\u06e5\u06d8\u06e4\u06e0\u06e6\u06ec\u06e1\u06e4\u06d6\u06e4\u06dc\u06d8\u06e7\u06eb\u06e8\u06d8\u06df\u06db\u06e0\u06d6\u06e0\u06e7\u06e5\u06eb\u06d6\u06d8\u06e5\u06df\u06dc\u06e7\u06d8\u06dc\u06ec\u06eb\u06e5\u06d8\u06e4\u06d9\u06d6\u06d8\u06dc\u06d7\u06da"

    goto :goto_6

    :sswitch_1b
    const-string v0, "\u06e7\u06d8\u06d6\u06e7\u06eb\u06df\u06eb\u06e0\u06e8\u06d8\u06ec\u06e1\u06db\u06e5\u06da\u06d6\u06eb\u06d9\u06e6\u06d8\u06eb\u06d8\u06d7\u06d9\u06e5\u06e1\u06d8\u06eb\u06e2\u06e5\u06d8\u06d6\u06d9\u06e5\u06d8\u06d7\u06e7\u06d9\u06e6\u06db\u06e8\u06d8"

    goto :goto_5

    :sswitch_1c
    const-string v0, "\u06d8\u06d8\u06d6\u06e6\u06d6\u06e5\u06ec\u06e1\u06eb\u06ec\u06e6\u06e7\u06d8\u06eb\u06d9\u06d8\u06d8\u06df\u06e0\u06e6\u06ec\u06d8\u06e1\u06d8\u06e6\u06e2\u06eb\u06d9\u06df\u06d8\u06e0\u06d7\u06df\u06e7\u06e0\u06db\u06db\u06ec\u06d6\u06eb\u06e4\u06e2\u06e5\u06d7\u06d7\u06d6\u06e8\u06d6\u06df\u06e5\u06e8"

    goto :goto_5

    :sswitch_1d
    const-string v0, "SWEEP_RESULT_BACK"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "\u06e5\u06e7\u06db\u06d7\u06d6\u06dc\u06db\u06e4\u06ec\u06e5\u06d8\u06ec\u06e5\u06e6\u06d8\u06ec\u06e6\u06e1\u06dc\u06e8\u06dc\u06d8\u06e2\u06d7\u06e8\u06e1\u06d8\u06d8\u06d6\u06e5\u06df\u06e2\u06d7\u06ec\u06d6\u06d6"

    goto/16 :goto_0

    :sswitch_1e
    iput-object v1, p0, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;->OooooOO:Ljava/lang/String;

    const-string v0, "\u06d8\u06e6\u06df\u06e2\u06e2\u06e1\u06d6\u06eb\u06d8\u06e2\u06e2\u06dc\u06d8\u06db\u06e1\u06eb\u06eb\u06e0\u06e2\u06ec\u06da\u06ec\u06e6\u06e0\u06d6\u06d8\u06e7\u06d7\u06e8\u06eb\u06e7\u06e1\u06dc\u06dc\u06e1\u06e6\u06db\u06e2\u06e2\u06ec\u06e2\u06e4\u06d6\u06d8\u06d8\u06e5\u06eb\u06eb\u06df\u06e8\u06d8\u06d7\u06da\u06da\u06e2\u06ec\u06e5"

    goto/16 :goto_0

    :sswitch_1f
    const v2, -0x502736ae

    const-string v0, "\u06df\u06da\u06d8\u06d8\u06e0\u06e0\u06e1\u06d8\u06e2\u06d9\u06da\u06d9\u06df\u06d7\u06d7\u06d9\u06d9\u06d8\u06db\u06e2\u06e8\u06db\u06e2\u06da\u06ec\u06eb\u06e2\u06e6\u06e0\u06d6\u06ec\u06e1"

    :goto_7
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v2

    sparse-switch v3, :sswitch_data_7

    goto :goto_7

    :sswitch_20
    const-string v0, "\u06d9\u06e2\u06df\u06eb\u06d7\u06e5\u06d7\u06d6\u06db\u06eb\u06e1\u06e2\u06d9\u06d7\u06e1\u06dc\u06d7\u06dc\u06d8\u06d6\u06d7\u06dc\u06d8\u06da\u06d8\u06d8\u06ec\u06e7\u06e1\u06d8\u06db\u06e4\u06d8\u06d6\u06db\u06e8\u06d6\u06d9\u06e0"

    goto :goto_7

    :sswitch_21
    const-string v0, "\u06e0\u06e4\u06d7\u06df\u06e4\u06eb\u06e6\u06e6\u06db\u06ec\u06e7\u06e8\u06d8\u06e4\u06da\u06da\u06e2\u06e5\u06e8\u06e2\u06e7\u06e6\u06d7\u06db\u06d6\u06e0\u06ec\u06df\u06d7\u06db\u06df\u06eb\u06e2\u06e4\u06e2\u06ec\u06dc\u06d8\u06e1\u06e2\u06e6\u06d8\u06dc\u06e4\u06d9\u06e6\u06d8\u06d7\u06d9\u06e5\u06d6\u06d8"

    goto :goto_7

    :sswitch_22
    const v3, -0x696e0174

    const-string v0, "\u06df\u06dc\u06e8\u06d9\u06e6\u06e2\u06e2\u06e8\u06df\u06ec\u06d7\u06dc\u06e0\u06e6\u06e7\u06d8\u06e5\u06e6\u06d9\u06e1\u06ec\u06d6\u06ec\u06e0\u06df\u06e5\u06d8\u06e8\u06d8\u06e2\u06df\u06e8\u06d8\u06eb\u06e4\u06d6\u06e8\u06d8\u06da\u06e4\u06d6\u06e8\u06eb\u06e6\u06d8\u06e2\u06e1\u06d7\u06e2\u06e1\u06d8"

    :goto_8
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    xor-int/2addr v4, v3

    sparse-switch v4, :sswitch_data_8

    goto :goto_8

    :sswitch_23
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "\u06df\u06db\u06e0\u06da\u06d6\u06d8\u06d8\u06e5\u06d9\u06e1\u06d8\u06e4\u06e8\u06e6\u06d6\u06e8\u06e7\u06d7\u06d9\u06e7\u06da\u06ec\u06d9\u06d7\u06e8\u06da\u06da\u06e8\u06eb\u06e5\u06df\u06e2"

    goto :goto_8

    :cond_3
    const-string v0, "\u06e1\u06dc\u06e2\u06d9\u06ec\u06e4\u06e0\u06ec\u06e2\u06e8\u06e5\u06e5\u06da\u06d8\u06e2\u06e7\u06ec\u06e2\u06e5\u06e8\u06e6\u06d8\u06da\u06e0\u06e2\u06e1\u06e4\u06df\u06db\u06e0\u06dc\u06d8\u06e0\u06e2\u06e6\u06d8\u06eb\u06d7\u06ec\u06d9\u06db\u06e5\u06e7\u06df\u06e2"

    goto :goto_8

    :sswitch_24
    const-string v0, "\u06df\u06d6\u06db\u06ec\u06db\u06d8\u06d8\u06d8\u06eb\u06db\u06e6\u06ec\u06e2\u06db\u06e7\u06e2\u06dc\u06d9\u06e2\u06eb\u06eb\u06e6\u06ec\u06d7\u06df\u06e5\u06db\u06e6\u06e0\u06e6\u06e7\u06d8\u06eb\u06e6\u06e7\u06d6\u06e4\u06e7\u06ec\u06d9\u06da\u06e8\u06da\u06dc\u06da\u06d8\u06ec\u06e2\u06d9\u06e1\u06d8\u06ec\u06e6\u06d9\u06dc\u06e2\u06e5"

    goto :goto_8

    :sswitch_25
    const-string v0, "\u06d7\u06db\u06df\u06ec\u06dc\u06e1\u06d8\u06d9\u06d8\u06d8\u06d8\u06e5\u06e5\u06dc\u06d8\u06e4\u06e1\u06db\u06da\u06d7\u06e2\u06e8\u06e6\u06ec\u06e1\u06eb\u06e1\u06e8\u06e4\u06df\u06e5\u06e0\u06db\u06e8\u06d6\u06d8\u06e0\u06e2\u06d6\u06d8\u06e6\u06dc\u06e2\u06df\u06d7"

    goto :goto_7

    :sswitch_26
    const-string v0, "\u06e4\u06da\u06db\u06e0\u06e6\u06e5\u06d8\u06d6\u06d8\u06d6\u06e7\u06e1\u06e1\u06d8\u06eb\u06da\u06d8\u06df\u06ec\u06d9\u06e4\u06e5\u06ec\u06df\u06e7\u06dc\u06d8\u06dc\u06eb\u06da\u06d9\u06d7\u06d8\u06d7\u06dc\u06e8\u06e1\u06e2\u06e7"

    goto/16 :goto_0

    :sswitch_27
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;->OooooOo:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;->OooooOO:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "\u06d8\u06d6\u06eb\u06e8\u06e6\u06ec\u06ec\u06ec\u06eb\u06e7\u06d9\u06eb\u06e1\u06e2\u06e7\u06e1\u06e6\u06da\u06e0\u06da\u06d7\u06e2\u06d8\u06e5\u06d8\u06df\u06e6\u06d7\u06ec\u06e5\u06e0\u06eb\u06e7\u06d7\u06d6\u06d8\u06e2\u06d9\u06d9\u06e2\u06db\u06e1\u06e0\u06e2\u06da\u06e0\u06d9\u06e5\u06e8\u06d8"

    goto/16 :goto_0

    :sswitch_28
    iget-object v0, p0, Lcom/cyjh/common/base/activity/BaseModelActivity;->OooooO0:Landroidx/lifecycle/AndroidViewModel;

    check-cast v0, Lz2/oa;

    iget-object v2, p0, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;->OooooOO:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lz2/oa;->OooOoOO(Ljava/lang/String;)V

    const-string v0, "\u06d7\u06db\u06d8\u06e6\u06e6\u06df\u06e6\u06eb\u06db\u06e1\u06eb\u06e7\u06e0\u06e2\u06d8\u06e5\u06df\u06e7\u06d9\u06d7\u06d8\u06d8\u06e0\u06db\u06df\u06d8\u06e4\u06d6\u06d7\u06df\u06e8\u06e0\u06d7\u06e0\u06e0\u06d9\u06d6\u06d8\u06e2\u06e8\u06e6\u06d8\u06e8\u06d7"

    goto/16 :goto_0

    :sswitch_29
    const v0, 0x7f100233

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lz2/c5;->OooO0OO(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "\u06eb\u06e1\u06db\u06e1\u06dc\u06e6\u06d8\u06e7\u06e8\u06da\u06e4\u06e6\u06e2\u06dc\u06ec\u06e7\u06e4\u06d9\u06e1\u06e6\u06e7\u06e5\u06d6\u06e1\u06d8\u06d6\u06dc\u06e0\u06d8\u06d6\u06dc\u06d8\u06eb\u06e8\u06eb\u06e0\u06dc\u06e7"

    goto/16 :goto_0

    :sswitch_2a
    const-string v0, "\u06df\u06d7\u06dc\u06e2\u06e8\u06e8\u06d8\u06e1\u06e2\u06e4\u06e8\u06e7\u06e6\u06dc\u06d8\u06ec\u06df\u06d8\u06e5\u06d7\u06e7\u06db\u06d6\u06e1\u06e2\u06da\u06df\u06dc\u06d6\u06e7\u06d8\u06dc\u06e0\u06e8\u06eb\u06e7\u06ec\u06d9\u06e7\u06d7\u06ec\u06ec\u06e1\u06d8"

    goto/16 :goto_0

    :sswitch_2b
    const-string v0, "\u06eb\u06e1\u06db\u06e1\u06dc\u06e6\u06d8\u06e7\u06e8\u06da\u06e4\u06e6\u06e2\u06dc\u06ec\u06e7\u06e4\u06d9\u06e1\u06e6\u06e7\u06e5\u06d6\u06e1\u06d8\u06d6\u06dc\u06e0\u06d8\u06d6\u06dc\u06d8\u06eb\u06e8\u06eb\u06e0\u06dc\u06e7"

    goto/16 :goto_0

    :sswitch_2c
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x6e203a38 -> :sswitch_1d
        -0x1ad661cc -> :sswitch_2c
        0x12cc1a49 -> :sswitch_1e
        0x1d7e1c39 -> :sswitch_27
        0x2f0a023c -> :sswitch_5
        0x3a56dd32 -> :sswitch_3
        0x3c695a76 -> :sswitch_2
        0x4148978c -> :sswitch_d
        0x570766b6 -> :sswitch_2b
        0x5cb7769d -> :sswitch_15
        0x62c78406 -> :sswitch_28
        0x64e38572 -> :sswitch_1f
        0x6f35b560 -> :sswitch_4
        0x7446e150 -> :sswitch_29
        0x74c61a87 -> :sswitch_1
        0x74e98d16 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x7b29c37a -> :sswitch_2b
        -0x5b671eda -> :sswitch_c
        0x1e0caf4f -> :sswitch_6
        0x73b9d3bf -> :sswitch_8
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        -0x6257c6cb -> :sswitch_7
        -0x42704bca -> :sswitch_a
        -0x3201a482 -> :sswitch_9
        0x2c0d91a6 -> :sswitch_b
    .end sparse-switch

    :sswitch_data_3
    .sparse-switch
        -0x6f618005 -> :sswitch_2b
        -0x15dca136 -> :sswitch_14
        0x209f7968 -> :sswitch_13
        0x68349b53 -> :sswitch_e
    .end sparse-switch

    :sswitch_data_4
    .sparse-switch
        -0x67e2e6d8 -> :sswitch_12
        -0x6287dce6 -> :sswitch_10
        0x9a69c94 -> :sswitch_11
        0x6e264104 -> :sswitch_f
    .end sparse-switch

    :sswitch_data_5
    .sparse-switch
        -0x6de895c3 -> :sswitch_2b
        -0x5eb742ca -> :sswitch_18
        0x1c58d8f8 -> :sswitch_16
        0x555cdac5 -> :sswitch_1c
    .end sparse-switch

    :sswitch_data_6
    .sparse-switch
        -0x2accbda3 -> :sswitch_19
        0x112f5d5c -> :sswitch_1a
        0x3301e0b2 -> :sswitch_17
        0x7ff3e362 -> :sswitch_1b
    .end sparse-switch

    :sswitch_data_7
    .sparse-switch
        -0x6fe73137 -> :sswitch_2a
        -0x6d8afdae -> :sswitch_20
        -0x2940b60d -> :sswitch_26
        0x5744fa93 -> :sswitch_22
    .end sparse-switch

    :sswitch_data_8
    .sparse-switch
        -0x7f3711bc -> :sswitch_21
        -0x68560838 -> :sswitch_23
        0x51e1a098 -> :sswitch_24
        0x74a98dc3 -> :sswitch_25
    .end sparse-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v0, "\u06e4\u06e0\u06d9\u06e7\u06ec\u06e0\u06e6\u06e1\u06d8\u06e7\u06e6\u06e0\u06d7\u06eb\u06d8\u06eb\u06df\u06eb\u06d7\u06e7\u06db\u06e6\u06d6\u06e2\u06e1\u06e6\u06d8\u06d8\u06d7\u06da\u06e8\u06e4\u06d8\u06dc\u06d8\u06df\u06e7\u06e2\u06df\u06df\u06e0\u06db\u06df\u06dc\u06d9\u06e8\u06d8\u06d8\u06e1\u06df\u06d9"

    move-object v1, v2

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/16 v5, 0xd4

    xor-int/2addr v4, v5

    xor-int/lit16 v4, v4, 0x28f

    const/16 v5, 0xa6

    const v6, -0x5e1d5fed

    xor-int/2addr v4, v5

    xor-int/2addr v4, v6

    sparse-switch v4, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d9\u06d7\u06d7\u06eb\u06eb\u06ec\u06d6\u06df\u06db\u06d6\u06e0\u06ec\u06d8\u06d9\u06db\u06d8\u06e8\u06d8\u06e0\u06d8\u06d8\u06d8\u06e8\u06dc\u06da\u06e8\u06db\u06da\u06d6\u06e4\u06d6\u06e6\u06e6\u06e6\u06e7\u06e2"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06d8\u06e0\u06da\u06ec\u06da\u06e0\u06d6\u06e8\u06e4\u06e5\u06d9\u06da\u06da\u06e6\u06ec\u06ec\u06e0\u06eb\u06d9\u06d6\u06d8\u06e8\u06e5\u06e4\u06e5\u06db\u06d9\u06e2\u06ec\u06e0\u06e0\u06e8\u06e0\u06e2\u06e4\u06df\u06dc\u06eb\u06e7\u06e0\u06e6\u06d8\u06e1\u06d9\u06e4\u06d7\u06db\u06d6\u06d8\u06db\u06e7\u06d9\u06e2\u06e8\u06d8\u06d8"

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    const-string v0, "\u06df\u06eb\u06ec\u06e1\u06db\u06d9\u06ec\u06e6\u06ec\u06d6\u06e8\u06e6\u06e8\u06d6\u06d8\u06d8\u06e0\u06ec\u06e7\u06e8\u06df\u06d6\u06d6\u06e6\u06e1\u06eb\u06ec\u06e7\u06e2\u06e2\u06d8\u06e5\u06d6\u06d8\u06d8\u06e1\u06e1"

    goto :goto_0

    :sswitch_3
    const v4, -0x12a38445

    const-string v0, "\u06e4\u06e1\u06df\u06d9\u06e5\u06dc\u06eb\u06e1\u06e1\u06d8\u06ec\u06da\u06db\u06d8\u06d8\u06db\u06dc\u06e2\u06e8\u06d8\u06d7\u06d7\u06dc\u06e0\u06ec\u06e6\u06d8\u06dc\u06ec\u06ec\u06e5\u06d8"

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v5

    xor-int/2addr v5, v4

    sparse-switch v5, :sswitch_data_1

    goto :goto_1

    :sswitch_4
    const-string v0, "\u06db\u06dc\u06d6\u06eb\u06d8\u06e1\u06d8\u06dc\u06e8\u06e8\u06e8\u06d7\u06dc\u06d8\u06e7\u06e8\u06e6\u06eb\u06df\u06db\u06e6\u06e2\u06e5\u06d8\u06ec\u06e0\u06e1\u06df\u06df\u06eb\u06e8\u06e6\u06da"

    goto :goto_0

    :sswitch_5
    const-string v0, "\u06e0\u06ec\u06d6\u06d8\u06eb\u06e2\u06e6\u06d8\u06d6\u06d6\u06e4\u06e6\u06dc\u06e8\u06d8\u06d8\u06d6\u06ec\u06e7\u06dc\u06d7\u06e6\u06e0\u06e4\u06d7\u06ec\u06eb\u06d6\u06d8\u06dc\u06d8\u06e1\u06ec\u06d8\u06d8\u06e8\u06e1\u06d8\u06d8\u06db\u06d7\u06e6\u06d8"

    goto :goto_1

    :sswitch_6
    const v5, -0x186fe8f3

    const-string v0, "\u06e8\u06e1\u06dc\u06e1\u06e4\u06e6\u06d8\u06df\u06da\u06e5\u06e8\u06d6\u06d8\u06d6\u06ec\u06e8\u06ec\u06da\u06e7\u06e6\u06d7\u06d8\u06eb\u06eb\u06d7\u06d9\u06e7\u06d9\u06da\u06e4\u06e8\u06e6\u06df\u06e7\u06e4\u06df\u06e0\u06ec\u06e7\u06eb\u06e2\u06e5\u06df\u06db\u06e8\u06d8\u06e0\u06d7\u06e2\u06df\u06e7\u06eb\u06e6\u06db\u06ec"

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v6

    xor-int/2addr v6, v5

    sparse-switch v6, :sswitch_data_2

    goto :goto_2

    :sswitch_7
    const-string v0, "\u06e1\u06d8\u06e2\u06e0\u06e2\u06eb\u06e7\u06da\u06ec\u06e8\u06eb\u06d8\u06d9\u06dc\u06d8\u06d8\u06d6\u06e0\u06e6\u06eb\u06e6\u06e2\u06e0\u06e8\u06e7\u06db\u06df\u06d8\u06e5\u06e5\u06ec\u06d6\u06e6\u06e5\u06ec\u06e2\u06e6"

    goto :goto_2

    :cond_0
    const-string v0, "\u06ec\u06dc\u06d9\u06e7\u06e0\u06dc\u06ec\u06d9\u06da\u06df\u06e4\u06e7\u06e8\u06e7\u06d8\u06d8\u06d8\u06e8\u06e8\u06d8\u06e8\u06e0\u06e8\u06d8\u06e4\u06e2\u06db\u06d7\u06eb\u06e7\u06ec\u06eb\u06da\u06e8\u06db\u06e5\u06d8\u06e8\u06e4\u06e8\u06e2\u06e2\u06ec\u06e4\u06e0\u06df\u06eb\u06e7\u06e6\u06e8\u06eb\u06e8\u06e7\u06e2\u06e8\u06db\u06e6\u06e0"

    goto :goto_2

    :sswitch_8
    const v0, 0x7f090232

    if-eq v3, v0, :cond_0

    const-string v0, "\u06d7\u06d7\u06e6\u06d7\u06d8\u06e5\u06d8\u06e6\u06d6\u06db\u06d7\u06e8\u06e6\u06e4\u06e0\u06d8\u06d8\u06e4\u06e2\u06d6\u06e4\u06e6\u06d8\u06e4\u06d6\u06d9\u06ec\u06e4\u06d8\u06d8\u06e5\u06db\u06e6\u06d8\u06e6\u06e5\u06d6\u06dc\u06e2\u06e8\u06d8"

    goto :goto_2

    :sswitch_9
    const-string v0, "\u06eb\u06e1\u06e2\u06e6\u06d8\u06d8\u06e8\u06e4\u06dc\u06d8\u06ec\u06e5\u06eb\u06db\u06df\u06e1\u06d8\u06e2\u06eb\u06e4\u06e7\u06dc\u06eb\u06e7\u06d7\u06df\u06e6\u06eb\u06e1\u06d8\u06ec\u06e7\u06e5\u06da\u06e1\u06da\u06d8\u06e0\u06e5\u06ec\u06d6\u06d8\u06ec\u06df\u06e5\u06d8"

    goto :goto_1

    :sswitch_a
    const-string v0, "\u06dc\u06d8\u06e6\u06d8\u06df\u06d8\u06e8\u06eb\u06eb\u06e4\u06d8\u06d6\u06e6\u06d8\u06d9\u06e6\u06dc\u06db\u06e1\u06e8\u06eb\u06e8\u06d7\u06e1\u06d8\u06d6\u06d8\u06eb\u06df\u06e4\u06d7\u06e0\u06e5\u06d8\u06e6\u06e5\u06d6\u06ec\u06e4\u06ec\u06db\u06d8\u06dc\u06da\u06d6\u06d6\u06e4\u06d8\u06dc\u06d6\u06e8\u06e7\u06e5\u06e6\u06eb"

    goto :goto_1

    :sswitch_b
    const-string v0, "\u06d6\u06d6\u06d6\u06e7\u06d7\u06d7\u06ec\u06ec\u06e6\u06d8\u06eb\u06ec\u06d7\u06e7\u06df\u06e5\u06d8\u06e4\u06d6\u06e8\u06d7\u06d7\u06dc\u06d8\u06d9\u06e0\u06e5\u06db\u06da\u06dc\u06e7\u06e4\u06db"

    goto :goto_0

    :sswitch_c
    const v4, 0xe0a5fc

    const-string v0, "\u06e6\u06d6\u06ec\u06e6\u06e5\u06e1\u06d8\u06e8\u06e6\u06e5\u06e5\u06e8\u06da\u06e8\u06e0\u06e8\u06d8\u06e8\u06e4\u06d8\u06d8\u06e8\u06d7\u06ec\u06d6\u06df\u06e1\u06d8\u06dc\u06d9\u06d6\u06d8\u06e7\u06e1\u06d9\u06e8\u06e0\u06d8\u06e8\u06dc\u06dc\u06e5\u06d6\u06d6\u06e7\u06e1\u06d8"

    :goto_3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v5

    xor-int/2addr v5, v4

    sparse-switch v5, :sswitch_data_3

    goto :goto_3

    :sswitch_d
    const v5, -0x421860ff

    const-string v0, "\u06df\u06d9\u06e7\u06db\u06da\u06e1\u06d8\u06e5\u06e1\u06e6\u06d9\u06e6\u06e2\u06d7\u06ec\u06e1\u06d8\u06d7\u06df\u06e1\u06d9\u06e1\u06e8\u06d8\u06e8\u06df\u06e5\u06e5\u06e2\u06e2\u06e7\u06d7\u06e6\u06d8\u06e1\u06d6\u06eb\u06e7\u06ec\u06d6"

    :goto_4
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v6

    xor-int/2addr v6, v5

    sparse-switch v6, :sswitch_data_4

    goto :goto_4

    :sswitch_e
    const-string v0, "\u06d9\u06dc\u06e6\u06d8\u06e8\u06e4\u06e5\u06d8\u06da\u06e1\u06e5\u06e5\u06e1\u06eb\u06d8\u06e2\u06e8\u06dc\u06dc\u06ec\u06e2\u06da\u06e1\u06e4\u06ec\u06e2\u06da\u06e2\u06ec\u06e8\u06d8\u06e8"

    goto :goto_3

    :cond_1
    const-string v0, "\u06e8\u06da\u06e0\u06e2\u06e5\u06e1\u06d8\u06d6\u06d9\u06d7\u06db\u06dc\u06eb\u06e7\u06e4\u06d8\u06df\u06d9\u06eb\u06e6\u06d9\u06df\u06e2\u06ec\u06d8\u06d8\u06d7\u06d6\u06d6\u06df\u06eb\u06e8\u06df\u06e2\u06e0\u06ec\u06e4\u06d9\u06e6\u06d7\u06eb\u06da\u06e5\u06d8\u06e1\u06d8\u06d8\u06e6\u06e7\u06d8"

    goto :goto_4

    :sswitch_f
    const v0, 0x7f09023b

    if-eq v3, v0, :cond_1

    const-string v0, "\u06e2\u06e0\u06e4\u06e8\u06e2\u06e5\u06d8\u06da\u06da\u06d8\u06d8\u06e8\u06d8\u06e2\u06e7\u06e6\u06e8\u06d9\u06d8\u06e2\u06db\u06d7\u06eb\u06d9\u06dc\u06d8\u06e2\u06df\u06e6\u06db\u06eb\u06e6\u06d8\u06e7\u06e5\u06d7\u06e5\u06d8\u06ec\u06e0\u06d6\u06d8\u06d9\u06eb\u06d9"

    goto :goto_4

    :sswitch_10
    const-string v0, "\u06e8\u06e8\u06df\u06df\u06d7\u06e7\u06d7\u06eb\u06eb\u06d9\u06eb\u06e1\u06e0\u06e2\u06eb\u06e8\u06dc\u06e1\u06d8\u06e7\u06d8\u06e7\u06d9\u06e2\u06e5\u06d8\u06eb\u06d7\u06e5\u06e8\u06df\u06d8\u06d7\u06e6\u06e5\u06df\u06e2\u06e1\u06d8"

    goto :goto_4

    :sswitch_11
    const-string v0, "\u06d6\u06dc\u06db\u06d7\u06e8\u06db\u06d8\u06d8\u06e1\u06e1\u06e2\u06e6\u06d9\u06e5\u06d8\u06dc\u06eb\u06e1\u06d8\u06d8\u06df\u06dc\u06e1\u06df\u06e2\u06e8\u06dc\u06d9\u06df\u06e2\u06e6\u06d8\u06ec\u06dc\u06e8\u06e8\u06e5\u06da\u06e7\u06e1\u06e7\u06e7\u06e6\u06e6"

    goto :goto_3

    :sswitch_12
    const-string v0, "\u06d9\u06ec\u06ec\u06e1\u06d6\u06e5\u06e8\u06d6\u06eb\u06df\u06d7\u06d8\u06d8\u06ec\u06e1\u06db\u06eb\u06ec\u06d7\u06e4\u06e2\u06db\u06df\u06d6\u06e2\u06e4\u06e6\u06d8\u06e4\u06eb\u06e4\u06e8\u06e1\u06d8\u06e8\u06d6\u06e6\u06eb\u06d7\u06e7\u06e2\u06e2\u06e4\u06d8\u06e4\u06e7\u06d7\u06dc\u06d8\u06dc\u06dc\u06e0\u06e0\u06e7\u06db"

    goto :goto_3

    :sswitch_13
    const-string v0, "\u06d6\u06e1\u06dc\u06d8\u06dc\u06ec\u06e5\u06d8\u06e5\u06e5\u06e2\u06dc\u06e1\u06dc\u06eb\u06d7\u06e8\u06d9\u06d6\u06d9\u06d8\u06d6\u06e5\u06d8\u06dc\u06dc\u06d6\u06d8\u06dc\u06da\u06e5\u06df\u06e0\u06e7\u06d6\u06e2\u06e6\u06d8\u06df\u06e4\u06e8\u06d8\u06eb\u06db\u06e5\u06d8\u06df\u06e6\u06dc\u06e8\u06eb\u06e7\u06e1\u06d7\u06da\u06da\u06e0\u06d6\u06d8\u06df\u06da\u06e6\u06d8"

    goto/16 :goto_0

    :sswitch_14
    invoke-direct {p0}, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;->OooOOoo()V

    const-string v0, "\u06db\u06d6\u06e1\u06d8\u06dc\u06e1\u06e0\u06dc\u06dc\u06e5\u06d8\u06e1\u06db\u06d6\u06e4\u06d7\u06db\u06e7\u06d7\u06e6\u06d8\u06d7\u06e1\u06e0\u06db\u06e6\u06d8\u06d8\u06e7\u06ec\u06d7\u06e8\u06eb\u06d8\u06d8"

    goto/16 :goto_0

    :sswitch_15
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;->OooooOo:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v0, "\u06e6\u06d7\u06d8\u06d9\u06d8\u06e6\u06d8\u06e0\u06e0\u06e1\u06e2\u06dc\u06da\u06df\u06e5\u06d8\u06d8\u06e0\u06d7\u06eb\u06eb\u06db\u06eb\u06e1\u06e8\u06e7\u06dc\u06e5\u06d8\u06dc\u06e0\u06e4\u06d7\u06e5\u06e7\u06e4\u06e0\u06dc\u06d8"

    goto/16 :goto_0

    :sswitch_16
    iput-object v1, p0, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;->OooooOO:Ljava/lang/String;

    const-string v0, "\u06ec\u06e8\u06e4\u06db\u06d6\u06db\u06e8\u06e6\u06ec\u06db\u06d7\u06d8\u06e1\u06e1\u06e2\u06df\u06e7\u06eb\u06df\u06e6\u06dc\u06d8\u06da\u06e5\u06e4\u06e2\u06dc\u06d8\u06d8\u06dc\u06e8\u06d6\u06d8\u06e4\u06e7\u06e5\u06d8\u06e0\u06e5\u06d8\u06d8\u06e1\u06e1\u06db\u06eb\u06db\u06ec"

    goto/16 :goto_0

    :sswitch_17
    const v4, 0x40a6588a

    const-string v0, "\u06e1\u06e7\u06e5\u06d8\u06e0\u06d6\u06db\u06ec\u06dc\u06df\u06d9\u06e4\u06e8\u06d8\u06e2\u06e4\u06d9\u06e6\u06eb\u06e7\u06e7\u06e0\u06e8\u06eb\u06e8\u06df\u06e0\u06eb\u06e6\u06d9\u06e1\u06d8\u06d9\u06e7\u06d7\u06e1\u06e7\u06d8\u06dc\u06d6\u06e7\u06d8\u06da\u06e0\u06e1\u06d8\u06e4\u06e7\u06e8\u06dc\u06da\u06e8\u06d8\u06e5\u06e2\u06db\u06d8\u06db\u06e1"

    :goto_5
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v5

    xor-int/2addr v5, v4

    sparse-switch v5, :sswitch_data_5

    goto :goto_5

    :sswitch_18
    const-string v0, "\u06e2\u06d8\u06e4\u06e1\u06dc\u06d9\u06d8\u06e1\u06dc\u06e1\u06d9\u06dc\u06d8\u06e0\u06e8\u06d8\u06d8\u06e5\u06d6\u06da\u06da\u06ec\u06e6\u06d8\u06e5\u06d7\u06d6\u06e5\u06e2\u06ec\u06e6\u06e7\u06e4\u06e2\u06eb\u06e5\u06d8\u06e6\u06e6\u06d8"

    goto/16 :goto_0

    :sswitch_19
    const-string v0, "\u06d6\u06dc\u06ec\u06d6\u06d6\u06d7\u06e7\u06e2\u06da\u06db\u06df\u06e8\u06d8\u06e6\u06df\u06e7\u06e7\u06d7\u06e0\u06df\u06e1\u06da\u06dc\u06e1\u06d7\u06dc\u06e8\u06d8\u06e4\u06d7\u06e1\u06d8\u06db\u06e7\u06df\u06d9\u06ec\u06d8\u06e7\u06e6\u06df\u06e4\u06ec\u06d8"

    goto :goto_5

    :sswitch_1a
    const v5, 0x104cedbf

    const-string v0, "\u06e1\u06e4\u06e0\u06e6\u06e7\u06e6\u06d8\u06e6\u06d8\u06db\u06e0\u06d7\u06ec\u06db\u06e1\u06e6\u06d8\u06df\u06e8\u06df\u06d9\u06d9\u06dc\u06d8\u06d9\u06d9\u06d6\u06df\u06dc\u06da\u06dc\u06e1\u06e7\u06d8\u06e0\u06e0\u06e5\u06e2\u06e2\u06e7\u06d7\u06d6\u06d8\u06e0\u06db\u06e6\u06d8\u06d8\u06e7\u06eb\u06d8\u06d7\u06d6\u06d8\u06df\u06db\u06dc\u06d8\u06e7\u06df\u06e8"

    :goto_6
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v6

    xor-int/2addr v6, v5

    sparse-switch v6, :sswitch_data_6

    goto :goto_6

    :sswitch_1b
    const-string v0, "\u06eb\u06db\u06e7\u06e7\u06eb\u06d6\u06d8\u06dc\u06ec\u06e1\u06d8\u06eb\u06dc\u06dc\u06e5\u06d9\u06d8\u06d7\u06e8\u06e4\u06d8\u06d8\u06d6\u06df\u06d9\u06dc\u06d8\u06e6\u06e6\u06eb\u06df\u06e1\u06e4\u06e5\u06e7\u06db\u06db\u06df\u06e6\u06e1\u06df\u06d9\u06e6\u06e1\u06eb"

    goto :goto_6

    :cond_2
    const-string v0, "\u06d7\u06eb\u06e6\u06dc\u06e2\u06e8\u06e8\u06eb\u06e8\u06df\u06eb\u06e4\u06e5\u06e8\u06e1\u06e7\u06d8\u06d8\u06d8\u06d8\u06eb\u06e6\u06e2\u06ec\u06eb\u06dc\u06d8\u06e7\u06d8\u06e5\u06e6\u06e0\u06e0\u06d6\u06e8\u06dc\u06ec\u06e4\u06e8\u06e1\u06e8\u06d8\u06e7\u06e1\u06eb"

    goto :goto_6

    :sswitch_1c
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "\u06d9\u06e5\u06da\u06e8\u06e8\u06e8\u06ec\u06dc\u06e1\u06d8\u06e7\u06db\u06db\u06e5\u06e1\u06dc\u06ec\u06dc\u06e2\u06ec\u06e7\u06e1\u06d8\u06d8\u06e8\u06dc\u06e6\u06db\u06e4\u06d7\u06d7\u06df\u06e2\u06db\u06da\u06db\u06df\u06ec"

    goto :goto_6

    :sswitch_1d
    const-string v0, "\u06d6\u06e4\u06d6\u06d8\u06e6\u06e4\u06e5\u06d8\u06e5\u06e6\u06e1\u06eb\u06e6\u06d8\u06d6\u06e2\u06dc\u06d8\u06e4\u06da\u06d8\u06d8\u06d6\u06d6\u06d6\u06df\u06df\u06da\u06e2\u06d7\u06dc\u06d8\u06e0\u06e8\u06e6\u06d8\u06e7\u06da\u06d6\u06d8\u06e4\u06db\u06d9\u06da\u06db\u06dc\u06e6\u06d7\u06d6"

    goto :goto_5

    :sswitch_1e
    const-string v0, "\u06d6\u06e6\u06ec\u06eb\u06db\u06da\u06e1\u06e8\u06d6\u06ec\u06e0\u06e7\u06d8\u06eb\u06d6\u06e0\u06dc\u06e0\u06e0\u06e5\u06da\u06d9\u06e4\u06e6\u06d8\u06db\u06e2\u06e7\u06ec\u06d8\u06da"

    goto :goto_5

    :sswitch_1f
    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->OooO00o()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v0

    const v4, 0x7f10018b

    invoke-static {v0, v4}, Lz2/c5;->OooO0O0(Landroid/content/Context;I)V

    const-string v0, "\u06df\u06df\u06d6\u06ec\u06dc\u06e5\u06d8\u06eb\u06e5\u06d8\u06e4\u06dc\u06e1\u06d8\u06db\u06e8\u06e5\u06d8\u06db\u06e7\u06e7\u06e2\u06dc\u06e1\u06d8\u06e0\u06e1\u06e5\u06d8\u06d8\u06dc\u06d6\u06db\u06da"

    goto/16 :goto_0

    :sswitch_20
    const v4, 0x236f48f0

    const-string v0, "\u06d8\u06dc\u06e7\u06d8\u06e1\u06e6\u06ec\u06e2\u06d9\u06dc\u06d8\u06e8\u06d6\u06ec\u06ec\u06df\u06d6\u06e7\u06d6\u06dc\u06da\u06e4\u06e8\u06db\u06e8\u06d6\u06d8\u06e7\u06df\u06e4\u06ec\u06da\u06d6"

    :goto_7
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v5

    xor-int/2addr v5, v4

    sparse-switch v5, :sswitch_data_7

    goto :goto_7

    :sswitch_21
    const v5, 0x9d62683

    const-string v0, "\u06da\u06d6\u06e0\u06e7\u06d9\u06db\u06e0\u06e2\u06e5\u06d8\u06e5\u06df\u06e8\u06d9\u06e5\u06db\u06e8\u06e7\u06ec\u06e6\u06e0\u06dc\u06df\u06e1\u06d6\u06d8\u06df\u06e0\u06d7\u06e4\u06e0\u06e1\u06e6\u06ec\u06d9\u06d6\u06db\u06e8\u06d8\u06eb\u06df\u06dc\u06d8\u06e7\u06ec\u06e1\u06d8\u06d8\u06dc\u06e1\u06eb\u06e1\u06d8"

    :goto_8
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v6

    xor-int/2addr v6, v5

    sparse-switch v6, :sswitch_data_8

    goto :goto_8

    :sswitch_22
    const-string v0, "\u06d9\u06df\u06e6\u06d8\u06eb\u06d6\u06eb\u06e1\u06dc\u06d8\u06e0\u06d6\u06d8\u06e4\u06ec\u06e4\u06eb\u06dc\u06e5\u06e4\u06e5\u06e0\u06dc\u06ec\u06e8\u06df\u06d9\u06e6\u06e7\u06df\u06db\u06d9\u06d7\u06e5\u06e5\u06eb\u06d9\u06e4\u06e6\u06da\u06df\u06e6\u06d6\u06df\u06e7\u06db\u06eb\u06df\u06db\u06db\u06eb\u06dc\u06d8\u06df\u06e2\u06d6"

    goto :goto_8

    :sswitch_23
    const-string v0, "\u06da\u06ec\u06e5\u06d8\u06e5\u06d8\u06e7\u06d8\u06e2\u06e7\u06e6\u06d8\u06df\u06e5\u06d6\u06d7\u06eb\u06e6\u06d7\u06d9\u06e8\u06d8\u06e1\u06e8\u06dc\u06d8\u06e4\u06d7\u06eb\u06d7\u06d9\u06d7\u06da\u06e4\u06d6\u06d8"

    goto :goto_7

    :cond_3
    const-string v0, "\u06df\u06df\u06eb\u06e5\u06e2\u06eb\u06eb\u06e1\u06d8\u06d8\u06e5\u06db\u06da\u06e6\u06e0\u06e0\u06e6\u06d8\u06eb\u06d7\u06eb\u06e1\u06e0\u06e5\u06d7\u06d9\u06e5\u06e6\u06db\u06e7\u06e1\u06df\u06d6\u06e5\u06e7\u06d9\u06dc\u06d7\u06e1\u06d8\u06e8\u06e4\u06db"

    goto :goto_8

    :sswitch_24
    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->OooO00o()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v0

    invoke-static {v0}, Lz2/t4;->OooOO0(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "\u06db\u06dc\u06e8\u06d8\u06dc\u06d6\u06eb\u06e7\u06e0\u06e8\u06da\u06dc\u06e8\u06d8\u06e4\u06dc\u06d8\u06d8\u06e8\u06d6\u06d8\u06d8\u06db\u06d9\u06dc\u06d6\u06d7\u06d8\u06d8\u06df\u06e2\u06e5\u06db\u06dc\u06e7\u06d8\u06e7\u06e2\u06dc\u06e8\u06e8\u06d8\u06da\u06da\u06e5\u06d8\u06d8\u06eb\u06e4\u06d8\u06df\u06ec\u06d7\u06ec\u06e8\u06d8\u06dc\u06db\u06dc\u06d8\u06e2\u06dc\u06e7\u06d8"

    goto :goto_8

    :sswitch_25
    const-string v0, "\u06d6\u06dc\u06e1\u06d8\u06eb\u06dc\u06e8\u06d8\u06eb\u06e6\u06d8\u06d8\u06e0\u06eb\u06d9\u06e0\u06ec\u06e1\u06d8\u06d6\u06eb\u06e7\u06e8\u06e1\u06e7\u06e0\u06e2\u06e7\u06e5\u06e2\u06e1\u06d8\u06eb\u06eb\u06e8\u06da\u06e0\u06dc\u06db\u06db\u06e7\u06d8\u06e5\u06e4\u06e5\u06e4\u06ec\u06df\u06e6\u06e4\u06e4\u06e8\u06d8"

    goto :goto_7

    :sswitch_26
    const-string v0, "\u06e4\u06dc\u06db\u06e4\u06e4\u06dc\u06e8\u06e2\u06e1\u06d8\u06df\u06df\u06e7\u06dc\u06e0\u06dc\u06d8\u06d7\u06e7\u06d9\u06e7\u06e5\u06e1\u06da\u06d9\u06d6\u06eb\u06e4\u06e6\u06e8\u06df"

    goto :goto_7

    :sswitch_27
    const-string v0, "\u06df\u06e1\u06e0\u06e5\u06d7\u06e5\u06d8\u06e1\u06e4\u06e6\u06d8\u06eb\u06e5\u06e0\u06e7\u06dc\u06d8\u06d8\u06e1\u06df\u06eb\u06d8\u06e6\u06e8\u06d8\u06ec\u06e0\u06d7\u06e2\u06db\u06e4\u06e7\u06e0\u06dc\u06ec\u06e1\u06e8\u06d8\u06eb\u06e8\u06d6\u06db\u06d6\u06da\u06dc\u06d8\u06d8\u06d8"

    goto/16 :goto_0

    :sswitch_28
    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->OooO00o()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v0

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->OooO00o()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v4

    const v5, 0x7f1001d4

    invoke-virtual {v4, v5}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lz2/c5;->OooO0OO(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "\u06e2\u06e7\u06e2\u06e1\u06d7\u06dc\u06d8\u06e4\u06dc\u06e6\u06d8\u06d6\u06e2\u06e7\u06e2\u06e2\u06e6\u06d8\u06ec\u06e6\u06d6\u06d8\u06eb\u06dc\u06dc\u06ec\u06e2\u06ec\u06dc\u06df\u06d8\u06d8\u06e5\u06d9\u06eb\u06df\u06e2\u06e2\u06e1\u06e0\u06e2\u06d7\u06e2\u06e7\u06e4\u06ec"

    goto/16 :goto_0

    :sswitch_29
    const v4, -0x794fc800

    const-string v0, "\u06e8\u06e5\u06e6\u06d8\u06e5\u06da\u06e6\u06df\u06d7\u06d9\u06eb\u06df\u06e1\u06d8\u06d8\u06e6\u06df\u06da\u06e5\u06e6\u06d8\u06e0\u06d6\u06e4\u06d9\u06e2\u06eb\u06da\u06e8\u06df\u06dc\u06e1\u06dc"

    :goto_9
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v5

    xor-int/2addr v5, v4

    sparse-switch v5, :sswitch_data_9

    goto :goto_9

    :sswitch_2a
    const v5, 0x48872ccb

    const-string v0, "\u06e5\u06d8\u06d8\u06d8\u06e1\u06df\u06d8\u06d8\u06e8\u06df\u06e7\u06e7\u06d9\u06e6\u06da\u06e5\u06e1\u06d8\u06e7\u06e4\u06e0\u06d8\u06ec\u06d6\u06d8\u06e0\u06db\u06e0\u06d7\u06e1\u06dc\u06e0\u06d7\u06d8\u06d8\u06e6\u06d7\u06e8\u06db\u06e6\u06e1\u06d8"

    :goto_a
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v6

    xor-int/2addr v6, v5

    sparse-switch v6, :sswitch_data_a

    goto :goto_a

    :sswitch_2b
    const-string v0, "\u06e1\u06e8\u06d9\u06da\u06e8\u06db\u06e5\u06d6\u06dc\u06e4\u06e7\u06e6\u06e7\u06eb\u06e5\u06d8\u06d6\u06e1\u06e7\u06d8\u06dc\u06e7\u06d7\u06d7\u06da\u06e4\u06e6\u06d6\u06db\u06dc\u06e7\u06eb\u06e5\u06db\u06e4\u06da\u06d6\u06e8\u06e2\u06e5\u06e8\u06d8\u06e0\u06eb\u06df\u06d9\u06da\u06e5\u06eb\u06e1\u06e7\u06d8"

    goto :goto_9

    :sswitch_2c
    const-string v0, "\u06db\u06dc\u06e6\u06da\u06d8\u06e2\u06db\u06e7\u06df\u06e6\u06e4\u06dc\u06d8\u06df\u06e0\u06eb\u06d8\u06e5\u06e8\u06e1\u06e1\u06e8\u06d9\u06e1\u06e5\u06d6\u06db\u06d6\u06d8\u06dc\u06e5\u06eb\u06e4\u06e8\u06d6\u06d8\u06d6\u06e7\u06e6"

    goto :goto_9

    :cond_4
    const-string v0, "\u06dc\u06df\u06d9\u06ec\u06da\u06db\u06e8\u06d8\u06dc\u06dc\u06e1\u06d8\u06e1\u06ec\u06ec\u06dc\u06e8\u06d9\u06e0\u06d7\u06ec\u06e4\u06e0\u06ec\u06e7\u06df\u06d8\u06d6\u06da\u06da\u06d9\u06d8\u06e0\u06e0\u06dc\u06e0\u06dc\u06da\u06df\u06eb\u06e8\u06e6\u06d8\u06d9\u06e4\u06d9\u06eb\u06da"

    goto :goto_a

    :sswitch_2d
    iget-boolean v0, p0, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;->o00ooo:Z

    if-eqz v0, :cond_4

    const-string v0, "\u06ec\u06e1\u06e0\u06e7\u06d7\u06e6\u06da\u06eb\u06e6\u06d8\u06d8\u06e6\u06dc\u06e1\u06ec\u06d7\u06df\u06d6\u06dc\u06d8\u06df\u06e1\u06d8\u06d8\u06e2\u06eb\u06e1\u06d8\u06e5\u06eb\u06d7\u06e4\u06dc\u06d9\u06db\u06e5\u06db\u06e7\u06e4\u06da\u06e4\u06e1\u06d6\u06e5\u06e5\u06e1\u06e7\u06da\u06e8\u06e0\u06e2\u06e6\u06e8\u06d7\u06e6\u06db\u06e1\u06e8"

    goto :goto_a

    :sswitch_2e
    const-string v0, "\u06e0\u06e2\u06db\u06eb\u06dc\u06e1\u06e6\u06e5\u06e8\u06d8\u06e8\u06eb\u06dc\u06e6\u06ec\u06df\u06ec\u06e8\u06d8\u06d8\u06eb\u06e0\u06ec\u06e7\u06d7\u06df\u06d7\u06e6"

    goto :goto_a

    :sswitch_2f
    const-string v0, "\u06e6\u06d7\u06d9\u06e0\u06e2\u06e1\u06d9\u06d8\u06d7\u06e8\u06e5\u06db\u06d7\u06d7\u06e8\u06e1\u06d8\u06e1\u06d7\u06d6\u06d8\u06e0\u06d8\u06d8\u06d8\u06d6\u06eb\u06e0\u06eb\u06ec\u06db\u06e2\u06eb\u06da\u06d7\u06df\u06e6\u06d8"

    goto :goto_9

    :sswitch_30
    const-string v0, "\u06e5\u06d6\u06e7\u06d8\u06d9\u06dc\u06e6\u06d8\u06e7\u06e8\u06e1\u06d8\u06d9\u06d8\u06e5\u06d6\u06d6\u06d6\u06d7\u06df\u06e1\u06e1\u06e8\u06e2\u06e1\u06dc\u06d6\u06d9\u06e4\u06eb\u06e1\u06d8\u06e4\u06e2\u06e8\u06e5\u06d6\u06e7\u06dc\u06e4\u06df\u06db\u06dc\u06d8\u06e1\u06e6\u06d7\u06eb\u06df\u06ec\u06df\u06db\u06e4\u06df\u06e0\u06db"

    goto/16 :goto_0

    :sswitch_31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;->o00ooo:Z

    const-string v0, "\u06d8\u06e4\u06dc\u06e2\u06e1\u06e5\u06d8\u06db\u06db\u06e7\u06eb\u06e7\u06e2\u06e7\u06ec\u06dc\u06e8\u06dc\u06e8\u06df\u06dc\u06d7\u06da\u06eb\u06e2\u06db\u06e8\u06e2\u06d7\u06e6\u06eb\u06d7\u06dc\u06e0\u06ec\u06e0\u06e6\u06d8"

    goto/16 :goto_0

    :sswitch_32
    iget-object v0, p0, Lcom/cyjh/common/base/activity/BaseModelActivity;->OooooO0:Landroidx/lifecycle/AndroidViewModel;

    check-cast v0, Lz2/oa;

    iget-object v4, p0, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;->OooooOO:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lz2/oa;->OooOoOO(Ljava/lang/String;)V

    const-string v0, "\u06e1\u06ec\u06e0\u06d7\u06d9\u06e2\u06e2\u06e2\u06e0\u06e8\u06ec\u06e8\u06e4\u06d7\u06e2\u06eb\u06eb\u06e4\u06e4\u06da\u06d7\u06e2\u06e8\u06d8\u06df\u06da\u06dc\u06e0\u06da\u06d6\u06d8\u06e1\u06d6\u06e1\u06db\u06ec\u06df\u06e8\u06e8\u06d8\u06e7\u06d9"

    goto/16 :goto_0

    :sswitch_33
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;->o00o0O:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const-string v0, "\u06d6\u06d9\u06e7\u06d8\u06dc\u06d9\u06e6\u06df\u06db\u06e8\u06e2\u06e7\u06e4\u06e5\u06e5\u06da\u06d9\u06ec\u06dc\u06d8\u06e1\u06d8\u06e7\u06e1\u06dc\u06d8\u06e7\u06ec\u06e2\u06e6\u06e5"

    goto/16 :goto_0

    :sswitch_34
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;->o00o0O:Landroid/os/Handler;

    new-instance v4, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity$OooOO0;

    invoke-direct {v4, p0}, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity$OooOO0;-><init>(Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;)V

    const-wide/16 v6, 0xbb8

    invoke-virtual {v0, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const-string v0, "\u06d6\u06e0\u06e5\u06dc\u06e4\u06e4\u06e4\u06d9\u06e7\u06df\u06e8\u06e1\u06d7\u06db\u06e8\u06df\u06d8\u06d9\u06df\u06e5\u06d9\u06e5\u06e8\u06e6\u06d8\u06d7\u06e7\u06eb\u06d7\u06e7\u06d8\u06eb\u06e8\u06e2\u06e7\u06dc\u06d8\u06e7\u06db\u06e4\u06dc\u06df\u06e5\u06e1\u06e1\u06ec\u06e1\u06db\u06d9\u06e1\u06ec\u06eb\u06e0\u06e8"

    goto/16 :goto_0

    :sswitch_35
    const-string v0, "\u06e4\u06e4\u06db\u06e2\u06d7\u06e1\u06eb\u06e6\u06e0\u06d7\u06eb\u06df\u06d7\u06d7\u06e1\u06d8\u06eb\u06d6\u06e8\u06e4\u06e0\u06dc\u06e0\u06d7\u06e2\u06e7\u06dc\u06e6\u06e2\u06dc\u06e0"

    goto/16 :goto_0

    :sswitch_36
    const-string v0, "\u06da\u06e6\u06e7\u06d8\u06da\u06d9\u06d6\u06d8\u06e5\u06e2\u06d6\u06d8\u06db\u06d8\u06dc\u06d8\u06d9\u06eb\u06e4\u06e5\u06db\u06e1\u06d9\u06ec\u06e5\u06d8\u06db\u06db\u06e8\u06d8\u06d7\u06ec\u06d8\u06db\u06ec\u06db\u06db\u06e0\u06eb\u06d9\u06e4\u06df\u06dc\u06e4\u06e2\u06e4\u06e0\u06e5\u06d8\u06e6\u06e1\u06da\u06d7\u06e8\u06d7\u06eb\u06df\u06e1\u06d8\u06e2\u06d7"

    goto/16 :goto_0

    :sswitch_37
    const-string v0, "\u06e2\u06dc\u06e1\u06e2\u06dc\u06dc\u06e4\u06df\u06da\u06dc\u06dc\u06d8\u06d8\u06e0\u06d9\u06df\u06e8\u06d6\u06e2\u06e0\u06e8\u06e5\u06e1\u06d7\u06ec\u06eb\u06ec\u06dc\u06e7\u06d8\u06e7\u06d8\u06e7\u06df\u06ec\u06ec\u06e2\u06e2\u06e6\u06d9\u06df\u06dc\u06eb\u06dc\u06d8\u06d8\u06e2\u06dc\u06d7\u06d7\u06d8\u06d8\u06db\u06e7\u06e1\u06d8\u06da\u06d8\u06d8"

    goto/16 :goto_0

    :sswitch_38
    const-string v0, "\u06d9\u06d9\u06d9\u06d8\u06dc\u06dc\u06d8\u06df\u06e5\u06e1\u06e4\u06d8\u06df\u06db\u06eb\u06eb\u06db\u06df\u06e2\u06d7\u06d6\u06d6\u06d8\u06df\u06d7\u06d9\u06e1\u06df\u06e6\u06e8\u06db\u06d8\u06d8"

    goto/16 :goto_0

    :sswitch_39
    const-string v0, "\u06d6\u06e0\u06e5\u06dc\u06e4\u06e4\u06e4\u06d9\u06e7\u06df\u06e8\u06e1\u06d7\u06db\u06e8\u06df\u06d8\u06d9\u06df\u06e5\u06d9\u06e5\u06e8\u06e6\u06d8\u06d7\u06e7\u06eb\u06d7\u06e7\u06d8\u06eb\u06e8\u06e2\u06e7\u06dc\u06d8\u06e7\u06db\u06e4\u06dc\u06df\u06e5\u06e1\u06e1\u06ec\u06e1\u06db\u06d9\u06e1\u06ec\u06eb\u06e0\u06e8"

    goto/16 :goto_0

    :sswitch_3a
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x74f554df -> :sswitch_14
        -0x74061f93 -> :sswitch_39
        -0x7299730c -> :sswitch_28
        -0x62e61395 -> :sswitch_3a
        -0x54d22c5c -> :sswitch_2
        -0x45be0651 -> :sswitch_3
        -0x3dbe7312 -> :sswitch_33
        -0x382b1b43 -> :sswitch_3a
        -0x3763dfd5 -> :sswitch_32
        -0x2c74f420 -> :sswitch_0
        -0x28e91023 -> :sswitch_17
        -0x1764cb31 -> :sswitch_3a
        -0x16f0b0ef -> :sswitch_15
        -0x431cf3b -> :sswitch_c
        0x31cc2ed -> :sswitch_1
        0x12b900c0 -> :sswitch_34
        0x1973bf09 -> :sswitch_3a
        0x21173189 -> :sswitch_31
        0x2901319c -> :sswitch_1f
        0x2c36c5dc -> :sswitch_29
        0x3b3a02ea -> :sswitch_16
        0x6cbc3cf8 -> :sswitch_20
        0x7a922750 -> :sswitch_39
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x12a7f8d8 -> :sswitch_4
        0x3aff6a2f -> :sswitch_6
        0x457c84ce -> :sswitch_a
        0x462144dd -> :sswitch_b
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        -0x768255c4 -> :sswitch_5
        -0x1c5be56c -> :sswitch_8
        -0x143877b9 -> :sswitch_9
        0x4cf141e9 -> :sswitch_7
    .end sparse-switch

    :sswitch_data_3
    .sparse-switch
        -0x66cba9d3 -> :sswitch_13
        -0x4bcf952c -> :sswitch_35
        -0xec567ca -> :sswitch_d
        0x1018c2ad -> :sswitch_12
    .end sparse-switch

    :sswitch_data_4
    .sparse-switch
        -0x493efa16 -> :sswitch_f
        -0x36661c9d -> :sswitch_11
        -0x28714d0b -> :sswitch_e
        -0x16091630 -> :sswitch_10
    .end sparse-switch

    :sswitch_data_5
    .sparse-switch
        -0x43c4cfe5 -> :sswitch_1a
        -0x3e9ed9d9 -> :sswitch_18
        -0x1d36821a -> :sswitch_1e
        0x7d5b6590 -> :sswitch_36
    .end sparse-switch

    :sswitch_data_6
    .sparse-switch
        -0x3e8fceec -> :sswitch_1d
        -0x2aba258f -> :sswitch_19
        0x3480de26 -> :sswitch_1b
        0x472c5a1b -> :sswitch_1c
    .end sparse-switch

    :sswitch_data_7
    .sparse-switch
        -0x33a8c0ca -> :sswitch_21
        -0x266bdaec -> :sswitch_27
        0x61df7171 -> :sswitch_26
        0x7b472090 -> :sswitch_37
    .end sparse-switch

    :sswitch_data_8
    .sparse-switch
        -0x6a9db9b8 -> :sswitch_23
        -0x4fec433a -> :sswitch_22
        -0x4364578b -> :sswitch_24
        0x5d4c9158 -> :sswitch_25
    .end sparse-switch

    :sswitch_data_9
    .sparse-switch
        -0x3d7bd918 -> :sswitch_38
        0x6577d18 -> :sswitch_2f
        0x16d4cb0a -> :sswitch_30
        0x2dd81ffe -> :sswitch_2a
    .end sparse-switch

    :sswitch_data_a
    .sparse-switch
        -0x5b8fd4fe -> :sswitch_2b
        -0x4701fba8 -> :sswitch_2d
        -0x18208c20 -> :sswitch_2c
        0x7cf22fd4 -> :sswitch_2e
    .end sparse-switch
.end method

.method public onDestroy()V
    .locals 4

    const-string v0, "\u06e2\u06eb\u06d6\u06d8\u06d6\u06e8\u06e1\u06d8\u06e2\u06e2\u06da\u06e0\u06e2\u06e7\u06e5\u06d9\u06df\u06e6\u06d9\u06e8\u06d8\u06eb\u06eb\u06d7\u06d8\u06db\u06d9\u06dc\u06d8\u06df\u06e5\u06dc\u06e8\u06d8\u06db\u06e6\u06e8\u06e8\u06e5\u06d6\u06d8\u06e0\u06d8\u06dc\u06d8\u06e4\u06e6\u06d8\u06d8\u06e0\u06e8\u06dc\u06d8\u06e2\u06da\u06e8\u06d8\u06dc\u06df\u06e1\u06db\u06d7\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x38a

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x223

    const/16 v2, 0x1da

    const v3, 0x19a1ed84

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e8\u06ec\u06dc\u06d8\u06e8\u06e7\u06eb\u06d9\u06eb\u06d6\u06e8\u06d7\u06e7\u06eb\u06eb\u06d8\u06e5\u06d9\u06e2\u06d7\u06d7\u06d6\u06d8\u06db\u06d9\u06d8\u06df\u06e6\u06d8\u06d8\u06db\u06e4\u06e1\u06d9\u06df\u06d6\u06e0\u06e6\u06eb\u06e1\u06e4\u06dc\u06d6\u06df"

    goto :goto_0

    :sswitch_1
    invoke-super {p0}, Lcom/cyjh/common/base/activity/BaseActivity;->onDestroy()V

    const-string v0, "\u06d9\u06dc\u06da\u06e4\u06e7\u06da\u06eb\u06e8\u06d6\u06d8\u06e6\u06d8\u06d6\u06d8\u06d7\u06ec\u06dc\u06d8\u06e2\u06e8\u06d8\u06db\u06ec\u06e6\u06d8\u06d6\u06e5\u06e1\u06d8\u06e6\u06d6\u06dc\u06db\u06e4\u06e8\u06e6\u06d8\u06e0\u06e0\u06e8\u06d8\u06e6\u06eb\u06d8\u06d8\u06db\u06dc\u06e5\u06d8\u06db\u06da\u06d9\u06e0\u06e8\u06e7\u06d8"

    goto :goto_0

    :sswitch_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x1932b1e7 -> :sswitch_2
        0xe35bd29 -> :sswitch_1
        0x1e931977 -> :sswitch_0
    .end sparse-switch
.end method

.method public onPause()V
    .locals 4

    const-string v0, "\u06e5\u06d9\u06d8\u06db\u06d7\u06e4\u06e6\u06e5\u06d6\u06d8\u06d9\u06e2\u06ec\u06d9\u06db\u06e7\u06d8\u06e5\u06ec\u06e1\u06df\u06d7\u06e5\u06df\u06d7\u06df\u06e1\u06d8\u06eb\u06e6\u06e5\u06dc\u06e6\u06da\u06df\u06eb\u06d7\u06da\u06d7\u06e6\u06ec\u06db\u06e8\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x33d

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x2f8

    const/16 v2, 0x2fd

    const v3, -0x5ee6d146

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d9\u06e5\u06da\u06e6\u06e8\u06e6\u06d8\u06e7\u06e8\u06e8\u06da\u06eb\u06d7\u06d7\u06d9\u06e6\u06d8\u06e2\u06eb\u06da\u06eb\u06dc\u06d7\u06dc\u06df\u06db\u06ec\u06d6\u06d8\u06db\u06da\u06da\u06dc\u06df\u06dc\u06d8\u06e5\u06d6\u06e6\u06ec\u06da\u06e2\u06e5\u06e2\u06e1\u06d8\u06df\u06e0\u06e0\u06d7\u06eb"

    goto :goto_0

    :sswitch_1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    const-string v0, "\u06dc\u06db\u06d8\u06d8\u06e6\u06e0\u06e8\u06d8\u06d8\u06e0\u06d6\u06da\u06da\u06e8\u06d8\u06e2\u06e6\u06d9\u06e7\u06e4\u06e7\u06da\u06db\u06d9\u06e0\u06e4\u06dc\u06e2\u06d6\u06e8\u06db\u06e2\u06e8"

    goto :goto_0

    :sswitch_2
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    const-string v0, "\u06d7\u06e4\u06da\u06df\u06d6\u06e1\u06d8\u06e5\u06e8\u06e1\u06d8\u06da\u06d9\u06da\u06eb\u06e6\u06d6\u06e7\u06e1\u06dc\u06d8\u06eb\u06e7\u06d9\u06e2\u06d7\u06e4\u06e6\u06eb\u06e1\u06d8\u06e2\u06e8\u06e1\u06e1\u06e6\u06e6\u06d8\u06e8\u06d8\u06dc\u06e4\u06d8\u06da\u06e4\u06dc\u06e8\u06e4\u06df\u06dc\u06d8\u06da\u06da\u06e4\u06db\u06d9\u06e8\u06d8\u06d6\u06e2\u06eb"

    goto :goto_0

    :sswitch_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x2da1ef7d -> :sswitch_3
        -0x609edc1 -> :sswitch_0
        0x2d6287f5 -> :sswitch_2
        0x4b048624 -> :sswitch_1
    .end sparse-switch
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 4

    const-string v0, "\u06d7\u06df\u06d6\u06d8\u06db\u06db\u06e8\u06d7\u06df\u06e6\u06d8\u06e2\u06eb\u06eb\u06d6\u06eb\u06db\u06e8\u06e4\u06dc\u06e1\u06db\u06e5\u06d9\u06dc\u06e7\u06ec\u06e4\u06d8\u06d8\u06d8\u06e8\u06e1\u06d8\u06e0\u06eb\u06d6\u06d8\u06d9\u06e6\u06e0"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x2b0

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x1de

    const/16 v2, 0x250

    const v3, -0x710f35e0

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e7\u06dc\u06e7\u06ec\u06d8\u06e6\u06d8\u06df\u06db\u06eb\u06da\u06e0\u06e1\u06d8\u06e4\u06e1\u06e8\u06db\u06ec\u06e5\u06d9\u06e7\u06d8\u06e2\u06da\u06e5\u06e8\u06d8\u06e6\u06d8\u06eb\u06ec\u06e8\u06d8\u06e0\u06d7\u06e4\u06dc\u06e1\u06d6\u06d8\u06e2\u06d6\u06dc\u06e1\u06dc\u06e6\u06d8"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06dc\u06db\u06e5\u06eb\u06d9\u06e6\u06da\u06df\u06e5\u06da\u06df\u06dc\u06d8\u06d7\u06ec\u06e6\u06d8\u06e4\u06d7\u06e4\u06d9\u06e8\u06e4\u06d6\u06db\u06d8\u06e8\u06db\u06d9\u06e2\u06df\u06e8\u06e0\u06ec\u06e5\u06e1\u06d9\u06d7\u06eb\u06ec\u06d9\u06ec\u06d8\u06eb"

    goto :goto_0

    :sswitch_2
    const-string v0, "\u06e1\u06e0\u06e2\u06db\u06db\u06db\u06e8\u06d7\u06e5\u06e1\u06e7\u06d6\u06d8\u06e1\u06e8\u06d8\u06eb\u06da\u06e0\u06ec\u06e8\u06e5\u06d8\u06e6\u06d8\u06dc\u06df\u06d6\u06d6\u06d8\u06d7\u06e7\u06d9\u06e5\u06e6\u06e5\u06d8\u06e2\u06d9\u06e1\u06d8"

    goto :goto_0

    :sswitch_3
    const-string v0, "\u06df\u06d7\u06e4\u06e6\u06dc\u06df\u06e6\u06e0\u06d7\u06ec\u06df\u06d8\u06d8\u06d9\u06d6\u06d7\u06e5\u06e8\u06e6\u06e1\u06e6\u06e2\u06db\u06d8\u06d8\u06e6\u06e8\u06e7\u06e8\u06e0\u06e6\u06ec\u06e0\u06e6\u06df\u06e6\u06d8"

    goto :goto_0

    :sswitch_4
    const v1, 0x5032b567

    const-string v0, "\u06e0\u06e1\u06eb\u06db\u06e6\u06e1\u06dc\u06e5\u06da\u06ec\u06e4\u06e5\u06e1\u06ec\u06ec\u06dc\u06e1\u06df\u06da\u06d8\u06e1\u06d8\u06da\u06e7\u06eb\u06d6\u06e8\u06e5\u06e6\u06d7\u06d9"

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v2, v1

    sparse-switch v2, :sswitch_data_1

    goto :goto_1

    :sswitch_5
    const v2, -0x431bd857

    const-string v0, "\u06e7\u06dc\u06e6\u06df\u06d8\u06d8\u06e2\u06e5\u06d7\u06e8\u06db\u06e6\u06d8\u06e4\u06d9\u06d6\u06e6\u06da\u06e8\u06dc\u06e8\u06e6\u06d8\u06d6\u06e7\u06e7\u06db\u06e1\u06e1\u06e6\u06ec\u06eb\u06e6\u06e1\u06d8\u06e7\u06d8\u06e7\u06df\u06e5\u06e8\u06d8\u06e4\u06d8\u06e8\u06da\u06e7\u06eb\u06e5\u06ec\u06d8"

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v2

    sparse-switch v3, :sswitch_data_2

    goto :goto_2

    :sswitch_6
    const-string v0, "\u06eb\u06e0\u06ec\u06d6\u06e5\u06e4\u06df\u06d7\u06e1\u06e5\u06ec\u06e0\u06e0\u06eb\u06d8\u06d9\u06ec\u06e1\u06d8\u06df\u06ec\u06e5\u06df\u06eb\u06e1\u06e2\u06eb\u06ec\u06df\u06d8\u06d8\u06e6\u06d9\u06d7\u06e2\u06ec\u06e8\u06d8\u06db\u06e0\u06d9\u06e4\u06e6\u06d9\u06dc\u06e4\u06e0\u06e5\u06e7\u06e0\u06e1\u06e1\u06e5\u06d8\u06e1\u06e6\u06e7"

    goto :goto_1

    :sswitch_7
    const-string v0, "\u06dc\u06e2\u06da\u06e7\u06df\u06dc\u06e0\u06e6\u06e1\u06d8\u06d9\u06ec\u06d8\u06ec\u06e7\u06e6\u06e1\u06e8\u06e4\u06e6\u06e2\u06d6\u06d9\u06e6\u06dc\u06dc\u06df\u06e8\u06e2\u06da\u06e0\u06e0\u06da\u06d9\u06e1\u06d9\u06da\u06e5\u06d7\u06e6\u06e6\u06e5\u06d8\u06e7\u06ec\u06df\u06e5\u06e5\u06e6\u06d8\u06d7\u06e8\u06e4\u06db\u06d7\u06d6"

    goto :goto_1

    :cond_0
    const-string v0, "\u06df\u06e4\u06d8\u06d9\u06dc\u06d8\u06d9\u06dc\u06d8\u06d8\u06e2\u06d7\u06dc\u06d8\u06e2\u06e5\u06df\u06e7\u06e5\u06df\u06e8\u06e2\u06df\u06e0\u06db\u06d9\u06dc\u06e5\u06d9\u06e5\u06eb\u06ec\u06e6\u06e1\u06e1\u06d8\u06eb\u06db\u06e5\u06dc\u06df\u06e0\u06e5\u06db\u06d6\u06d8\u06e1\u06e8\u06e5\u06df\u06db\u06d6\u06d8\u06e2\u06d6\u06ec\u06dc\u06e7\u06e1\u06d8"

    goto :goto_2

    :sswitch_8
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_0

    const-string v0, "\u06dc\u06e6\u06e6\u06e1\u06e5\u06df\u06d7\u06e6\u06d7\u06d7\u06df\u06eb\u06e5\u06d6\u06dc\u06d8\u06e7\u06ec\u06d8\u06e5\u06d8\u06e4\u06e7\u06e6\u06d8\u06d8\u06dc\u06d8\u06eb\u06ec\u06e8\u06d8\u06e8\u06e8\u06d8\u06e0\u06db\u06e8\u06d8\u06d6\u06e6\u06e6\u06e1\u06db\u06e2\u06e4\u06d6\u06dc\u06db\u06e6"

    goto :goto_2

    :sswitch_9
    const-string v0, "\u06d7\u06e0\u06d8\u06d8\u06e4\u06d8\u06e5\u06d8\u06e1\u06e7\u06e6\u06d8\u06d9\u06ec\u06da\u06df\u06e6\u06e8\u06e1\u06e7\u06df\u06dc\u06e7\u06ec\u06d8\u06dc\u06d6\u06e1\u06e6\u06d8\u06e6\u06e0\u06ec\u06e2\u06e0\u06e4\u06e2\u06df\u06ec\u06e2\u06e7\u06ec\u06d6\u06e2\u06d9\u06e4\u06e6\u06d8\u06d6\u06e4\u06e1\u06d8\u06da\u06e1\u06d8\u06e1\u06dc\u06db"

    goto :goto_2

    :sswitch_a
    const-string v0, "\u06ec\u06df\u06d6\u06d8\u06d9\u06e8\u06eb\u06da\u06eb\u06e8\u06d8\u06dc\u06df\u06e1\u06eb\u06e0\u06da\u06e1\u06e6\u06d6\u06e7\u06eb\u06da\u06e1\u06e6\u06d8\u06e0\u06d9\u06d7\u06e1\u06e0\u06e0\u06e1\u06db\u06e6\u06df\u06da\u06df"

    goto :goto_1

    :sswitch_b
    const-string v0, "\u06e0\u06e5\u06d8\u06eb\u06ec\u06e1\u06d8\u06d9\u06dc\u06da\u06db\u06d8\u06d9\u06d9\u06e5\u06e2\u06e1\u06df\u06db\u06ec\u06dc\u06dc\u06df\u06e5\u06e2\u06e7\u06e2\u06df\u06e7\u06e7\u06d7\u06d9\u06eb\u06df\u06d9\u06dc"

    goto :goto_0

    :sswitch_c
    const v1, -0x3abc9d7c

    const-string v0, "\u06df\u06db\u06e0\u06dc\u06e0\u06d6\u06e1\u06e4\u06e1\u06d8\u06d9\u06e1\u06d9\u06ec\u06d6\u06d9\u06db\u06ec\u06e5\u06d8\u06d9\u06d6\u06d6\u06d8\u06d8\u06e5\u06e1\u06ec\u06ec\u06e8\u06d8\u06e1\u06db\u06e8\u06ec\u06d6\u06e4\u06e1\u06d8\u06e6\u06d8"

    :goto_3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v2, v1

    sparse-switch v2, :sswitch_data_3

    goto :goto_3

    :sswitch_d
    const-string v0, "\u06e4\u06dc\u06d9\u06e5\u06df\u06e2\u06d8\u06e4\u06e5\u06d8\u06d8\u06e1\u06e4\u06e6\u06e7\u06e8\u06e2\u06d6\u06e2\u06df\u06dc\u06d6\u06e6\u06e7\u06da\u06e0\u06d8\u06e6\u06d8\u06e1\u06e4\u06dc\u06d6\u06d6\u06d8\u06dc\u06da\u06e5\u06d8\u06d8\u06eb\u06ec\u06e4\u06e4\u06d6\u06e0\u06e4\u06dc\u06e8\u06e8\u06d6\u06e7\u06db\u06e1\u06d9\u06e5\u06dc\u06d8"

    goto :goto_0

    :sswitch_e
    const-string v0, "\u06e5\u06d7\u06e5\u06d8\u06df\u06e5\u06d6\u06d8\u06e7\u06dc\u06d9\u06e8\u06db\u06e4\u06e0\u06e2\u06eb\u06da\u06e1\u06df\u06d6\u06e7\u06e1\u06d8\u06d9\u06db\u06e6\u06dc\u06df\u06e6\u06d8\u06da\u06d6\u06db\u06ec\u06d9\u06e8\u06d8\u06e5\u06e6\u06e4\u06d8\u06d7\u06e8\u06d8\u06e6\u06da\u06eb\u06d7\u06da\u06d9\u06e2\u06e8\u06e2\u06e2\u06e4\u06ec\u06d9\u06dc\u06db"

    goto :goto_3

    :sswitch_f
    const v2, -0x6d3d138

    const-string v0, "\u06db\u06d9\u06ec\u06ec\u06ec\u06e6\u06e0\u06ec\u06da\u06e8\u06e6\u06d8\u06e6\u06e6\u06e5\u06d7\u06d8\u06d8\u06e2\u06dc\u06e8\u06e8\u06df\u06e1\u06e0\u06e8\u06d8\u06e1\u06ec\u06e8\u06d8\u06e0\u06e6\u06e1\u06e4\u06e0\u06da\u06eb\u06d8\u06d8\u06d6\u06df\u06da\u06dc\u06db\u06da\u06e0\u06d8\u06e6\u06d8\u06db\u06ec\u06dc\u06e5\u06d8\u06d9"

    :goto_4
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v2

    sparse-switch v3, :sswitch_data_4

    goto :goto_4

    :sswitch_10
    const-string v0, "\u06e0\u06e4\u06e0\u06dc\u06d8\u06d8\u06e5\u06ec\u06da\u06e6\u06df\u06e1\u06e5\u06dc\u06e5\u06e4\u06d8\u06e7\u06e6\u06d7\u06e0\u06d9\u06d7\u06eb\u06eb\u06dc\u06e8\u06d8\u06e2\u06ec\u06da\u06eb\u06e8\u06d6\u06e8\u06e2\u06e6\u06d8\u06db\u06d7\u06d9\u06df\u06e1\u06d6\u06d8"

    goto :goto_3

    :cond_1
    const-string v0, "\u06e4\u06dc\u06e1\u06d8\u06e8\u06e2\u06d7\u06e7\u06ec\u06db\u06e8\u06e0\u06e5\u06d8\u06e1\u06e5\u06d6\u06d8\u06e2\u06e5\u06e1\u06da\u06d6\u06e8\u06d8\u06eb\u06d8\u06d6\u06e0\u06e7\u06e8\u06d8\u06d8\u06db\u06d8\u06db\u06e5\u06d8\u06d6\u06eb\u06dc"

    goto :goto_4

    :sswitch_11
    array-length v0, p3

    if-lez v0, :cond_1

    const-string v0, "\u06d8\u06db\u06e1\u06d8\u06db\u06e4\u06e5\u06e4\u06e6\u06e7\u06e4\u06df\u06e4\u06e1\u06e0\u06d6\u06d8\u06e7\u06e8\u06e2\u06d7\u06e4\u06dc\u06d8\u06d6\u06ec\u06d7\u06e0\u06e2\u06e7\u06da\u06e2\u06e5\u06eb\u06db\u06e6\u06e6\u06d8\u06e7\u06e0\u06e6\u06d6\u06ec\u06e0"

    goto :goto_4

    :sswitch_12
    const-string v0, "\u06e5\u06dc\u06dc\u06d7\u06df\u06dc\u06e2\u06df\u06e0\u06d9\u06e2\u06d6\u06ec\u06da\u06e7\u06e5\u06eb\u06dc\u06d8\u06d8\u06e0\u06e2\u06d9\u06dc\u06e7\u06eb\u06e7\u06d8\u06d8\u06e1\u06d9\u06e5\u06eb\u06d7\u06d7\u06e7\u06d9\u06d9\u06d7\u06eb\u06d9\u06eb\u06dc\u06d8\u06d8\u06e8\u06e4\u06e8\u06d8\u06dc\u06e8\u06e1\u06d8\u06db\u06e5\u06e8\u06e1\u06da\u06e0"

    goto :goto_4

    :sswitch_13
    const-string v0, "\u06e4\u06e1\u06e8\u06d6\u06d8\u06e1\u06d7\u06e4\u06ec\u06d9\u06e1\u06e1\u06dc\u06e0\u06e8\u06d8\u06e4\u06db\u06df\u06d9\u06e1\u06d8\u06d6\u06ec\u06eb\u06e0\u06e7\u06d8\u06e0\u06e4\u06d6\u06d8\u06eb\u06e5\u06ec\u06e1\u06e5\u06e6\u06e7\u06eb\u06e8\u06d8\u06d7\u06ec\u06e5\u06ec\u06d9\u06dc\u06db\u06d6\u06e5\u06d8\u06e7\u06ec\u06e5\u06d8\u06db\u06e2\u06eb"

    goto :goto_3

    :sswitch_14
    const v1, -0x253722e8

    const-string v0, "\u06d6\u06d6\u06ec\u06e5\u06d9\u06e8\u06e0\u06e8\u06d8\u06d9\u06ec\u06e6\u06d7\u06d6\u06d8\u06d6\u06e7\u06d6\u06d8\u06d9\u06e2\u06df\u06df\u06d6\u06da\u06e2\u06d6\u06d6\u06d8\u06db\u06ec\u06e1\u06dc\u06e8\u06ec\u06db\u06db\u06e8\u06d8\u06e6\u06e4\u06e5\u06d8\u06e0\u06ec\u06e5\u06d8\u06e5\u06eb\u06e5\u06db\u06e5\u06db\u06ec\u06eb\u06da\u06e8\u06d9\u06eb"

    :goto_5
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v2, v1

    sparse-switch v2, :sswitch_data_5

    goto :goto_5

    :sswitch_15
    const-string v0, "\u06eb\u06e5\u06d7\u06e4\u06df\u06e0\u06d6\u06e7\u06d6\u06d8\u06e7\u06da\u06eb\u06e1\u06e7\u06e8\u06e1\u06df\u06e5\u06d8\u06e0\u06d7\u06d7\u06d6\u06e0\u06d8\u06df\u06d6\u06e5\u06d8\u06df\u06d6\u06e6\u06d8\u06df\u06e0\u06ec\u06d7\u06e5\u06e2\u06d7\u06e6\u06d7\u06e0\u06e1\u06db\u06ec\u06dc\u06d6\u06d8\u06eb\u06da\u06e1\u06d8"

    goto/16 :goto_0

    :sswitch_16
    const-string v0, "\u06e7\u06eb\u06e6\u06e4\u06e5\u06ec\u06db\u06eb\u06e6\u06d7\u06e1\u06e0\u06d6\u06e0\u06da\u06ec\u06df\u06d8\u06e2\u06e0\u06d7\u06e4\u06e1\u06da\u06e7\u06ec\u06d8\u06d8\u06d8\u06d6\u06e1\u06d8"

    goto :goto_5

    :sswitch_17
    const v2, 0x747ce7eb

    const-string v0, "\u06e6\u06d7\u06d8\u06d8\u06d9\u06df\u06d9\u06d6\u06dc\u06d7\u06e8\u06ec\u06e7\u06e4\u06d8\u06df\u06d6\u06da\u06d8\u06d8\u06e2\u06e6\u06e6\u06d6\u06d9\u06e8\u06e8\u06e5\u06e2\u06e0"

    :goto_6
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v2

    sparse-switch v3, :sswitch_data_6

    goto :goto_6

    :sswitch_18
    const/4 v0, 0x0

    aget v0, p3, v0

    if-nez v0, :cond_2

    const-string v0, "\u06e1\u06e0\u06e6\u06d8\u06db\u06d9\u06e7\u06d7\u06e5\u06eb\u06d6\u06d6\u06df\u06df\u06e1\u06d6\u06d8\u06eb\u06e5\u06eb\u06db\u06ec\u06e5\u06eb\u06e1\u06d7\u06d7\u06d6\u06ec\u06ec\u06e8\u06d6\u06d8\u06e4\u06da\u06e0\u06e2\u06db"

    goto :goto_6

    :cond_2
    const-string v0, "\u06d6\u06d9\u06e7\u06d7\u06e4\u06da\u06e0\u06e1\u06d6\u06e2\u06e5\u06e6\u06d8\u06d8\u06df\u06d8\u06d6\u06e2\u06e5\u06d8\u06e7\u06e5\u06e6\u06e1\u06d7\u06e6\u06eb\u06eb\u06d6\u06da\u06d9\u06e7\u06d7\u06eb\u06d6\u06e2\u06e5\u06e1\u06d8"

    goto :goto_6

    :sswitch_19
    const-string v0, "\u06d6\u06d9\u06df\u06d8\u06e2\u06e4\u06e8\u06e8\u06d8\u06d8\u06d9\u06e2\u06e1\u06e0\u06dc\u06d8\u06eb\u06da\u06e1\u06e7\u06e2\u06e5\u06e1\u06e4\u06d6\u06d8\u06e8\u06eb\u06e5\u06e7\u06e2\u06d8\u06d8\u06d8\u06ec\u06e1\u06d8\u06dc\u06d9\u06dc\u06d8\u06da\u06df\u06dc\u06e8\u06eb\u06e4\u06d9\u06e2\u06e5\u06d8\u06e1\u06d9\u06e8\u06d8"

    goto :goto_6

    :sswitch_1a
    const-string v0, "\u06dc\u06e1\u06dc\u06d8\u06db\u06e6\u06df\u06d8\u06d7\u06dc\u06ec\u06eb\u06d6\u06d6\u06e1\u06d8\u06d8\u06ec\u06e2\u06e5\u06d8\u06d7\u06d7\u06e5\u06e6\u06e0\u06df\u06e4\u06d9\u06ec\u06db\u06df\u06e2\u06e8\u06da\u06e2\u06e2\u06df\u06dc\u06e8\u06d8\u06e1\u06d8\u06dc\u06d6\u06d7"

    goto :goto_5

    :sswitch_1b
    const-string v0, "\u06db\u06e2\u06d6\u06e0\u06df\u06e5\u06d8\u06e4\u06e1\u06e1\u06ec\u06dc\u06d8\u06e0\u06e6\u06e6\u06d8\u06d6\u06db\u06dc\u06df\u06e5\u06da\u06e1\u06df\u06ec\u06da\u06ec\u06df\u06d8\u06d8\u06eb\u06e6\u06e5\u06db\u06e6\u06d7\u06dc\u06d8"

    goto :goto_5

    :sswitch_1c
    const-string v0, "\u06df\u06db\u06dc\u06da\u06d9\u06dc\u06d6\u06d7\u06db\u06d8\u06dc\u06dc\u06e2\u06ec\u06df\u06dc\u06df\u06e7\u06da\u06e7\u06d9\u06db\u06df\u06da\u06d8\u06dc\u06df\u06e2\u06e0"

    goto/16 :goto_0

    :sswitch_1d
    invoke-direct {p0}, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;->OooOo00()V

    const-string v0, "\u06e2\u06dc\u06e5\u06d8\u06e8\u06e6\u06e7\u06d8\u06e6\u06e1\u06e5\u06d8\u06e8\u06e8\u06e5\u06d8\u06db\u06d8\u06d9\u06d9\u06df\u06e4\u06eb\u06e2\u06d8\u06e0O\u06e0\u06dc\u06ec\u06ec\u06e5\u06e2\u06e1\u06e8\u06e5\u06da\u06d6\u06ec\u06e0\u06e4\u06dc"

    goto/16 :goto_0

    :sswitch_1e
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const-string v0, "\u06e5\u06d6\u06d9\u06ec\u06e5\u06eb\u06ec\u06df\u06e1\u06d8\u06e2\u06e6\u06eb\u06d6\u06e7\u06e6\u06e1\u06e7\u06dc\u06e6\u06e6\u06d8\u06e5\u06e0\u06eb\u06eb\u06e0\u06d9\u06e1\u06ec\u06d8\u06d8\u06df\u06dc\u06e7\u06e4\u06dc\u06e6\u06dc\u06e0\u06db\u06e1\u06da\u06e7\u06e5\u06da\u06e6\u06dc\u06e0\u06e5\u06d8"

    goto/16 :goto_0

    :sswitch_1f
    const-string v0, "\u06e5\u06d6\u06d9\u06ec\u06e5\u06eb\u06ec\u06df\u06e1\u06d8\u06e2\u06e6\u06eb\u06d6\u06e7\u06e6\u06e1\u06e7\u06dc\u06e6\u06e6\u06d8\u06e5\u06e0\u06eb\u06eb\u06e0\u06d9\u06e1\u06ec\u06d8\u06d8\u06df\u06dc\u06e7\u06e4\u06dc\u06e6\u06dc\u06e0\u06db\u06e1\u06da\u06e7\u06e5\u06da\u06e6\u06dc\u06e0\u06e5\u06d8"

    goto/16 :goto_0

    :sswitch_20
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7b5503cc -> :sswitch_20
        -0x715c7efd -> :sswitch_3
        -0x5e51c34c -> :sswitch_1e
        -0x27303e86 -> :sswitch_14
        -0x2488c6a4 -> :sswitch_4
        -0x1e7a2978 -> :sswitch_c
        -0x6d8b22c -> :sswitch_0
        0x143811c2 -> :sswitch_1
        0x1cf99c82 -> :sswitch_1f
        0x1f4689f5 -> :sswitch_2
        0x5223b6fb -> :sswitch_1d
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x2472e286 -> :sswitch_5
        0x181cf13d -> :sswitch_b
        0x2d3856ed -> :sswitch_a
        0x4a4c896e -> :sswitch_1f
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        -0x3b32f703 -> :sswitch_8
        -0x21705a0d -> :sswitch_7
        0x1975103d -> :sswitch_6
        0x7934a438 -> :sswitch_9
    .end sparse-switch

    :sswitch_data_3
    .sparse-switch
        -0x67efad49 -> :sswitch_13
        -0x3a8296b5 -> :sswitch_d
        -0x123aeb8c -> :sswitch_f
        0x2e65c989 -> :sswitch_15
    .end sparse-switch

    :sswitch_data_4
    .sparse-switch
        -0x5c68138a -> :sswitch_11
        -0x433fd209 -> :sswitch_e
        -0x3de5d939 -> :sswitch_12
        -0x2993c55b -> :sswitch_10
    .end sparse-switch

    :sswitch_data_5
    .sparse-switch
        -0xf0bba23 -> :sswitch_17
        0x21847ae4 -> :sswitch_15
        0x6545db47 -> :sswitch_1b
        0x799790af -> :sswitch_1c
    .end sparse-switch

    :sswitch_data_6
    .sparse-switch
        -0x2c96b0ae -> :sswitch_18
        -0xd207e0d -> :sswitch_19
        -0x7e37705 -> :sswitch_1a
        0x49530b38 -> :sswitch_16
    .end sparse-switch
.end method

.method public onResume()V
    .locals 4

    const-string v0, "\u06e4\u06e4\u06d7\u06eb\u06e0\u06d6\u06d8\u06e8\u06da\u06db\u06da\u06e4\u06e6\u06e4\u06d8\u06d9\u06d7\u06e1\u06eb\u06e4\u06e5\u06e8\u06d8\u06e1\u06e7\u06df\u06d6\u06e7\u06d9\u06dc\u06e8\u06d7\u06d6\u06eb\u06e6\u06df\u06e8\u06e2\u06e6\u06e0\u06df\u06e6\u06d9\u06e8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0xc5

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x85

    const/16 v2, 0x92

    const v3, -0xb38200c

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e4\u06ec\u06e6\u06d8\u06df\u06d8\u06da\u06e7\u06e1\u06e5\u06e1\u06da\u06da\u06d6\u06df\u06e1\u06e6\u06dc\u06d6\u06e4\u06e5\u06e0\u06da\u06da\u06ec\u06e5\u06e8\u06d8\u06eb\u06d8\u06eb\u06e1\u06d9\u06e6\u06ec"

    goto :goto_0

    :sswitch_1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    const-string v0, "\u06d8\u06df\u06e4\u06da\u06df\u06d9\u06d8\u06e8\u06d7\u06e2\u06e7\u06dc\u06d8\u06d7\u06d6\u06df\u06e5\u06e8\u06d8\u06df\u06db\u06e2\u06d6\u06db\u06e4\u06e6\u06e5\u06d6\u06d8\u06ec\u06d6\u06d8\u06ec\u06e1\u06e6\u06d8\u06e5\u06e4\u06e7\u06e1\u06e6\u06e5\u06ec\u06e7\u06dc"

    goto :goto_0

    :sswitch_2
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    const-string v0, "\u06e6\u06e0\u06e6\u06d8\u06d9\u06dc\u06d6\u06d8\u06dc\u06e7\u06e6\u06d8\u06eb\u06e6\u06e6\u06e7\u06e1\u06e8\u06d8\u06e7\u06e6\u06e8\u06dc\u06e1\u06d8\u06d8\u06e4\u06dc\u06e7\u06d8\u06dc\u06df\u06d8\u06d8\u06d6\u06d7\u06da"

    goto :goto_0

    :sswitch_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x246b60a1 -> :sswitch_1
        0x279c27a0 -> :sswitch_0
        0x28bfbfc0 -> :sswitch_3
        0x64410e72 -> :sswitch_2
    .end sparse-switch
.end method
