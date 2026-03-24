.class public Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;
.super Lcom/cyjh/common/base/activity/BaseModelActivity;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$Oooo0;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/cyjh/common/base/activity/BaseModelActivity",
        "<",
        "Lz2/na;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# static fields
.field private static final o00000:I = 0x3e9

.field public static final o000000:Ljava/lang/String;

.field public static final o000000O:I = 0x2

.field private static final o000000o:Lorg/slf4j/Logger;


# instance fields
.field private OooooOO:Lz2/ja;

.field private OooooOo:Landroid/view/View;

.field private Oooooo:F

.field private Oooooo0:Z

.field private OoooooO:F

.field private Ooooooo:I

.field private o000OOo:Z

.field private o00O0O:Landroidx/core/app/NotificationCompat$Builder;

.field private o00Oo0:Landroid/app/NotificationManager;

.field private o00Ooo:Landroid/widget/ImageView;

.field private o00o0O:Landroid/widget/TextView;

.field private o00oO0O:Landroid/widget/ImageView;

.field private o00oO0o:Landroid/widget/TextView;

.field private o00ooo:Lcom/cyjh/elfin/entity/GameSwitchInfo;

.field private o0O0O00:Z

.field private o0OO00O:Z

.field private o0OOO0o:Lz2/uc;

.field private o0Oo0oo:Lz2/ca;

.field private o0OoOo0:I

.field private o0ooOO0:Landroid/widget/ImageView;

.field private o0ooOOo:Z

.field private o0ooOoO:Lz2/oa;

.field private oo000o:Z

.field private oo0o0Oo:Z

.field private ooOO:Landroid/os/Handler;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const-string v0, "\u06d6\u06e2\u06eb\u06d6\u06d9\u06e2\u06d9\u06e2\u06d9\u06d7\u06e5\u06df\u06e5\u06db\u06db\u06e4\u06d8\u06d6\u06db\u06e8\u06d7\u06e1\u06e8\u06d8\u06db\u06db\u06d9\u06e5\u06e7\u06dc\u06e2\u06e1\u06d9\u06d7\u06d6\u06e7\u06d8\u06df\u06db\u06ec\u06e8\u06ec\u06e1\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x2c0

    xor-int/2addr v1, v2

    xor-int/lit8 v1, v1, 0xe

    const/16 v2, 0x26c

    const v3, -0x4896803d

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-class v0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->o000000:Ljava/lang/String;

    const-string v0, "\u06e5\u06e2\u06e5\u06d8\u06dc\u06da\u06d8\u06d8\u06e2\u06e7\u06d6\u06ec\u06df\u06d8\u06d8\u06e5\u06da\u06e2\u06e4\u06d8\u06db\u06df\u06d9\u06e8\u06ec\u06da\u06d7\u06d8\u06e5\u06e8\u06d8\u06d6\u06eb\u06e1\u06dc\u06e7\u06ec\u06d8\u06dc\u06d8\u06e6\u06e6\u06e5\u06e5\u06e8\u06d6\u06d8\u06e0\u06e4\u06e6\u06d7\u06db\u06d8\u06d8"

    goto :goto_0

    :sswitch_1
    const-class v0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->o000000o:Lorg/slf4j/Logger;

    const-string v0, "\u06d6\u06d6\u06e8\u06e0\u06e2\u06e6\u06d8\u06e5\u06df\u06e4\u06e4\u06e0\u06e2\u06da\u06d9\u06d8\u06e7\u06d9\u06eb\u06e8\u06e6\u06d8\u06d8\u06e0\u06e2\u06e1\u06d8\u06e4\u06e6\u06db\u06eb\u06db\u06e8\u06d8"

    goto :goto_0

    :sswitch_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x723b142e -> :sswitch_1
        -0x667666da -> :sswitch_0
        -0x57e98035 -> :sswitch_2
    .end sparse-switch
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/cyjh/common/base/activity/BaseModelActivity;-><init>()V

    iput-boolean v2, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->Oooooo0:Z

    iput v0, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->Oooooo:F

    iput v0, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->OoooooO:F

    new-instance v0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$OooO;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$OooO;-><init>(Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->ooOO:Landroid/os/Handler;

    iput-boolean v2, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->oo000o:Z

    iput-boolean v2, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->o0OO00O:Z

    iput-boolean v2, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->o0O0O00:Z

    iput-boolean v2, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->o000OOo:Z

    return-void
.end method

.method public static synthetic OooOO0(Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;)V
    .locals 4

    const-string v0, "\u06e2\u06d8\u06e5\u06d8\u06e2\u06e1\u06e8\u06d8\u06e7\u06d8\u06e5\u06d8\u06da\u06d6\u06e6\u06e0\u06df\u06d7\u06d8\u06d6\u06e1\u06eb\u06e4\u06dc\u06d8\u06e2\u06e4\u06ec\u06d8\u06dc\u06e8\u06d8\u06d7\u06df\u06e1\u06d8\u06e8\u06ec\u06dc\u06e2\u06e7\u06e5\u06d8\u06eb\u06e1\u06e5\u06d8\u06db\u06e2\u06e8\u06da\u06d9\u06df\u06df\u06db"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x15f

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x28d

    const/16 v2, 0x205

    const v3, 0xe2e0e0b

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e0\u06eb\u06d8\u06d8\u06ec\u06e1\u06e4\u06e0\u06ec\u06e1\u06d8\u06e0\u06dc\u06db\u06d6\u06e6\u06e4\u06d8\u06e6\u06d8\u06dc\u06d7\u06ec\u06d7\u06ec\u06d9\u06e0\u06e2\u06e1\u06d7\u06d8\u06e7\u06df\u06e4\u06dc\u06d8\u06ec\u06ec\u06e5\u06d8\u06e5\u06d9\u06d6\u06d8\u06d7\u06e2\u06d8\u06d8\u06e7\u06da\u06d6\u06e8\u06e5\u06d8"

    goto :goto_0

    :sswitch_1
    invoke-direct {p0}, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->OoooO0()V

    const-string v0, "\u06e4\u06e0\u06eb\u06db\u06e0\u06d7\u06dc\u06e1\u06e8\u06e2\u06d9\u06e8\u06d8\u06dc\u06e8\u06e1\u06d6\u06dc\u06e5\u06e1\u06e0\u06e5\u06d8\u06e5\u06ec\u06db\u06d7\u06df\u06e6\u06d8\u06d6\u06d8\u06e2\u06e1\u06ec\u06e4\u06e4\u06df\u06e0"

    goto :goto_0

    :sswitch_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x6d20ea43 -> :sswitch_2
        -0x50447d37 -> :sswitch_1
        0x54f79b99 -> :sswitch_0
    .end sparse-switch
.end method

.method public static synthetic OooOO0O(Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;)Lz2/oa;
    .locals 4

    const-string v0, "\u06e6\u06d6\u06e7\u06d8\u06e1\u06d6\u06d7\u06d8\u06e7\u06df\u06d9\u06e6\u06dc\u06e4\u06d8\u06d8\u06e2\u06d6\u06e1\u06d8\u06d8\u06d8\u06e8\u06d8\u06e8\u06dc\u06e5\u06d7\u06e1\u06e2\u06d7\u06df\u06e7\u06ec\u06d6\u06e6\u06e5\u06e4\u06e5\u06e1\u06e8\u06dc\u06d8\u06e7\u06db\u06e5\u06d8\u06e8\u06da\u06e2\u06e4\u06e8\u06da"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x1ca

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0xb2

    const/16 v2, 0x1e

    const v3, 0x5f938301

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e2\u06e6\u06e6\u06d8\u06da\u06e8\u06e1\u06d8\u06e2\u06e4\u06d8\u06e4\u06d9\u06df\u06d7\u06d9\u06e2\u06e2\u06da\u06eb\u06d6\u06db\u06e0\u06d6\u06dc\u06d7\u06e4\u06e8\u06db\u06e2\u06e6\u06e0\u06d7\u06e7\u06d6\u06ec\u06eb\u06e8\u06d8\u06ec\u06eb\u06e7\u06e8\u06e8\u06e5\u06d8\u06e0\u06ec\u06e0\u06df\u06e6\u06e1\u06e0\u06da\u06df\u06e2\u06d9\u06df"

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->o0ooOoO:Lz2/oa;

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x1ebcb6b -> :sswitch_1
        0x54ebf3d4 -> :sswitch_0
    .end sparse-switch
.end method

.method public static synthetic OooOO0o(Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;Z)Z
    .locals 4

    const-string v0, "\u06da\u06e2\u06dc\u06d8\u06e0\u06e8\u06e1\u06e7\u06d6\u06e7\u06e1\u06e0\u06e0\u06df\u06d8\u06e6\u06d8\u06ec\u06d8\u06eb\u06da\u06df\u06e8\u06e8\u06d9\u06d9\u06e0\u06d8\u06e1\u06df\u06db\u06e2\u06d6\u06d9\u06e8\u06dc\u06eb\u06ec"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x38d

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x1ce

    const/16 v2, 0xbc

    const v3, -0x55c8fc21

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e1\u06e1\u06e0\u06e2\u06e6\u06d9\u06da\u06eb\u06db\u06dc\u06ec\u06e8\u06e4\u06e5\u06e1\u06d8\u06da\u06d6\u06da\u06e4\u06e6\u06ec\u06e1\u06d8\u06dc\u06eb\u06eb\u06e2\u06e5\u06dc\u06eb"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06ec\u06d8\u06e1\u06d8\u06e4\u06e4\u06d6\u06e7\u06da\u06d6\u06d8\u06e5\u06dc\u06e1\u06d8\u06e1\u06d8\u06db\u06e6\u06df\u06d7\u06e8\u06d6\u06d8\u06db\u06eb\u06e0\u06d9\u06e8\u06df\u06e2\u06e2\u06eb\u06df\u06d6\u06da\u06e5\u06e0\u06df\u06d7\u06d8\u06e0\u06e0\u06e0"

    goto :goto_0

    :sswitch_2
    iput-boolean p1, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->o0O0O00:Z

    const-string v0, "\u06dc\u06eb\u06e5\u06d8\u06db\u06d6\u06e5\u06d8\u06d8\u06e5\u06e4\u06d7\u06e2\u06e1\u06e8\u06d7\u06da\u06e0\u06e0\u06e0\u06da\u06e1\u06e2\u06d8\u06e4\u06d6\u06ec\u06d6\u06e8\u06d8\u06dc\u06e8\u06e0\u06eb\u06e2\u06ec\u06d8\u06eb\u06d8\u06d8"

    goto :goto_0

    :sswitch_3
    return p1

    :sswitch_data_0
    .sparse-switch
        -0x5b1b7b53 -> :sswitch_2
        -0x17098190 -> :sswitch_0
        -0x15624210 -> :sswitch_1
        0x6241ee21 -> :sswitch_3
    .end sparse-switch
.end method

.method public static synthetic OooOOO(Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;)V
    .locals 4

    const-string v0, "\u06db\u06ec\u06da\u06d8\u06e5\u06e5\u06e0\u06db\u06e5\u06e5\u06e6\u06e0\u06e0\u06dc\u06e6\u06d8\u06db\u06e4\u06e8\u06d8\u06e0\u06d8\u06eb\u06e4\u06da\u06e0\u06e2\u06e0\u06dc\u06e5\u06ec\u06d6\u06dc\u06d8\u06e0\u06e0\u06e5\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x138

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x1eb

    const/16 v2, 0x80

    const v3, -0x5f0c2c77

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e8\u06e0\u06e8\u06e4\u06eb\u06e5\u06d9\u06db\u06db\u06d7\u06db\u06e5\u06d8\u06d8\u06d9\u06e7\u06d8\u06d7\u06e5\u06d8\u06d8\u06ec\u06d8\u06d6\u06e7\u06eb\u06d9\u06d7\u06d8\u06d8\u06d9\u06d8\u06e4\u06db\u06dc\u06e4\u06e0\u06e8\u06e4\u06d6\u06e0\u06e7\u06eb\u06e2"

    goto :goto_0

    :sswitch_1
    invoke-direct {p0}, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->Oooo()V

    const-string v0, "\u06e8\u06e5\u06df\u06d8\u06e8\u06d6\u06ec\u06e8\u06e7\u06db\u06e4\u06d6\u06d8\u06da\u06e8\u06e6\u06eb\u06e7\u06df\u06db\u06db\u06ec\u06e2\u06e1\u06e5\u06e2\u06d8\u06e5\u06d9\u06e4\u06e1\u06d8\u06dc\u06e2\u06e5\u06d9\u06e0\u06d8"

    goto :goto_0

    :sswitch_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x19cfc84a -> :sswitch_2
        -0x142ecde6 -> :sswitch_1
        0x3ebc5ad8 -> :sswitch_0
    .end sparse-switch
.end method

.method public static synthetic OooOOO0(Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;)Lz2/uc;
    .locals 4

    const-string v0, "\u06d6\u06e7\u06e4\u06e5\u06e1\u06dc\u06d8\u06e8\u06eb\u06d6\u06d8\u06eb\u06d9\u06da\u06d7\u06e8\u06da\u06da\u06db\u06db\u06e6\u06da\u06da\u06db\u06d6\u06e1\u06d8\u06e0\u06dc\u06e5\u06d8\u06d9\u06e7\u06e4"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x2a6

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x11d

    const/16 v2, 0x28a

    const v3, -0x45737fae

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e7\u06d6\u06eb\u06e2\u06dc\u06df\u06ec\u06da\u06dc\u06d8\u06e8\u06d9\u06da\u06d8\u06eb\u06d8\u06d8\u06eb\u06e0\u06df\u06e1\u06e8\u06e1\u06d8\u06db\u06df\u06dc\u06e0\u06db\u06e8\u06d8\u06db\u06e1\u06d8\u06d8\u06df\u06d7\u06d8\u06d8\u06ec\u06d7\u06e8\u06d8\u06d9\u06d8\u06e6\u06d8\u06e7\u06e5\u06e7\u06dc\u06e0\u06e6\u06d8\u06d9\u06da\u06e5\u06d8"

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->o0OOO0o:Lz2/uc;

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0xfe47a1f -> :sswitch_0
        0x3bed4186 -> :sswitch_1
    .end sparse-switch
.end method

.method public static synthetic OooOOOO(Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;)Z
    .locals 4

    const-string v0, "\u06e4\u06e8\u06e8\u06e7\u06dc\u06d6\u06d8\u06ec\u06d8\u06ec\u06da\u06d6\u06e1\u06d7\u06e6\u06e8\u06d8\u06d6\u06d9\u06dc\u06d8\u06e5\u06df\u06e4\u06dc\u06dc\u06e8\u06d8\u06e7\u06d8\u06e8\u06d8\u06d6\u06e1\u06e0\u06d6\u06e2\u06e8\u06d8\u06eb\u06e5\u06db"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x2f0

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0xaf

    const/16 v2, 0x70

    const v3, -0x4b167223

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e1\u06e4\u06ec\u06e4\u06e8\u06e5\u06d8\u06e2\u06ec\u06d8\u06d8\u06d7\u06e7\u06e7\u06e1\u06e0\u06e5\u06d8\u06ec\u06d9\u06ec\u06e0\u06db\u06e5\u06d8\u06ec\u06e5\u06e1\u06d6\u06e6\u06dc\u06d8\u06e1\u06dc\u06e8\u06d8\u06e8\u06db\u06e0\u06eb\u06df"

    goto :goto_0

    :sswitch_1
    iget-boolean v0, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->oo0o0Oo:Z

    return v0

    :sswitch_data_0
    .sparse-switch
        -0x5e35d0a1 -> :sswitch_0
        -0x1d2f529e -> :sswitch_1
    .end sparse-switch
.end method

.method public static synthetic OooOOOo(Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;)V
    .locals 4

    const-string v0, "\u06dc\u06eb\u06d6\u06d8\u06df\u06eb\u06dc\u06d8\u06e7\u06d7\u06e8\u06e8\u06e5\u06d6\u06da\u06e1\u06d9\u06d6\u06dc\u06eb\u06e8\u06e6\u06df\u06e2\u06d8\u06da\u06d7\u06da\u06df\u06df\u06e0\u06eb\u06e2\u06eb\u06d9\u06e2\u06ec\u06da\u06dc\u06e4\u06e8\u06e6\u06da\u06ec"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x33

    xor-int/2addr v1, v2

    xor-int/lit8 v1, v1, 0x4e

    const/16 v2, 0x5e

    const v3, 0x589b1d22

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06ec\u06db\u06e5\u06d8\u06e4\u06dc\u06dc\u06d8\u06d9\u06dc\u06e8\u06ec\u06d8\u06e8\u06e0\u06df\u06d8\u06da\u06e7\u06e4\u06d9\u06e5\u06ec\u06d9\u06e2\u06d8\u06d8\u06ec\u06d9\u06e8\u06db\u06dc\u06e5\u06d8"

    goto :goto_0

    :sswitch_1
    invoke-direct {p0}, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->Oooo0oo()V

    const-string v0, "\u06e4\u06e7\u06e6\u06e6\u06d7\u06d6\u06d8\u06e5\u06db\u06d6\u06e1\u06eb\u06df\u06e8\u06d6\u06dc\u06e2\u06db\u06eb\u06ec\u06df\u06e6\u06e2\u06eb\u06d8\u06eb\u06d6\u06d8\u06d8\u06d8\u06d8\u06ec\u06e8\u06df\u06e2\u06e7\u06dc\u06d8\u06d8\u06db\u06da\u06db\u06da\u06e1\u06d8\u06d8\u06e0\u06d7\u06e5\u06e2\u06e6\u06ec\u06df\u06df\u06e7\u06df\u06e8\u06ec"

    goto :goto_0

    :sswitch_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7cce8cb0 -> :sswitch_1
        -0x746f5c09 -> :sswitch_0
        -0xb864bd2 -> :sswitch_2
    .end sparse-switch
.end method

.method public static synthetic OooOOo(Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;)Landroid/view/View;
    .locals 4

    const-string v0, "\u06e8\u06db\u06d6\u06d8\u06e0\u06d6\u06eb\u06e5\u06d6\u06e1\u06da\u06e1\u06dc\u06d8\u06ec\u06d6\u06e7\u06d8\u06e0\u06df\u06d7\u06d8\u06df\u06d8\u06e0\u06df\u06d9\u06d6\u06d9\u06e5\u06d8\u06e0\u06e8\u06e1\u06d7\u06d6\u06e8\u06e5\u06d9\u06db\u06df\u06e6\u06e5\u06e8\u06db\u06db\u06e0\u06e5\u06d9\u06e2\u06ec\u06e6\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x251

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x2c2

    const/16 v2, 0x118

    const v3, 0x759b577

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e4\u06d6\u06ec\u06dc\u06e8\u06e6\u06d8\u06ec\u06d6\u06e5\u06d8\u06e1\u06e7\u06d6\u06dc\u06eb\u06d9\u06e7\u06e8\u06d6\u06d8\u06e4\u06e7\u06db\u06e6\u06df\u06e5\u06d8\u06e2\u06e0\u06dc\u06d9\u06ec\u06df"

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->OooooOo:Landroid/view/View;

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x577cf5a4 -> :sswitch_1
        -0x3dd9363c -> :sswitch_0
    .end sparse-switch
.end method

.method public static synthetic OooOOo0(Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;)V
    .locals 4

    const-string v0, "\u06eb\u06d8\u06e7\u06d8\u06da\u06e6\u06e0\u06e5\u06eb\u06e6\u06dc\u06e4\u06db\u06d7\u06e2\u06e5\u06d8\u06dc\u06df\u06e8\u06d6\u06e8\u06d8\u06da\u06db\u06e4\u06dc\u06d9\u06e5\u06d8\u06dc\u06e2\u06e7\u06e0\u06d7\u06d8\u06e1\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0xb0

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0xa5

    const/16 v2, 0x161

    const v3, -0xc9469dd

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d9\u06e8\u06e8\u06d8\u06db\u06e0\u06da\u06e7\u06e0\u06e7\u06df\u06d9\u06d6\u06dc\u06e2\u06e1\u06d8\u06eb\u06df\u06df\u06ec\u06d6\u06e5\u06e1\u06ec\u06e7\u06e7\u06e2\u06e7\u06eb\u06e8\u06e0\u06e0\u06e7\u06e2\u06eb\u06da\u06e5\u06e5\u06e4\u06e0\u06e7\u06e0\u06e5"

    goto :goto_0

    :sswitch_1
    invoke-direct {p0}, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->o0OoOo0()V

    const-string v0, "\u06e7\u06dc\u06df\u06e5\u06df\u06dc\u06e7\u06e6\u06e6\u06e0\u06ec\u06db\u06e2\u06e1\u06db\u06dc\u06dc\u06e4\u06ec\u06dc\u06e1\u06d8\u06d6\u06d8\u06eb\u06df\u06e1\u06d6\u06d7\u06ec\u06dc\u06df\u06d8\u06d7\u06ec\u06e4\u06e5\u06d8\u06d7\u06d8\u06e0\u06d7\u06e7\u06e0\u06e4\u06e6\u06db\u06e7\u06e8\u06e0\u06e8\u06eb\u06e7\u06d8\u06e1\u06d8\u06d8"

    goto :goto_0

    :sswitch_2
    return-void

    :sswitch_data_0
    .sparse-switch
        0x6e414d5 -> :sswitch_0
        0x1328d67f -> :sswitch_1
        0x458db40d -> :sswitch_2
    .end sparse-switch
.end method

.method public static synthetic OooOOoo(Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;Z)Z
    .locals 4

    const-string v0, "\u06e7\u06da\u06d8\u06d8\u06e5\u06ec\u06e4\u06d7\u06da\u06e2\u06dc\u06e7\u06e8\u06d7\u06da\u06e8\u06d8\u06da\u06d6\u06d8\u06d8\u06e6\u06e8\u06df\u06e8\u06e0\u06e4\u06e4\u06dc\u06e5\u06d8\u06d7\u06ec\u06db\u06e5\u06d9\u06e4\u06e8\u06e4"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x238

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x176

    const/16 v2, 0x37a

    const v3, -0x7bf7c2af

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d9\u06e6\u06e2\u06d7\u06da\u06e8\u06d8\u06e4\u06e5\u06e1\u06e5\u06e2\u06db\u06da\u06e2\u06e5\u06db\u06d7\u06e0\u06e6\u06d9\u06eb\u06ec\u06df\u06d7\u06da\u06e8\u06e7\u06e2\u06db\u06dc\u06d8\u06e8\u06d8\u06e7\u06df\u06df\u06d6\u06dc\u06ec\u06e2\u06ec\u06d6\u06e7\u06dc\u06d9\u06e1\u06e6\u06dc\u06d8"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06dc\u06df\u06e5\u06d8\u06ec\u06d9\u06e8\u06d8\u06e8\u06db\u06d6\u06e0\u06dc\u06d7\u06e1\u06d9\u06ec\u06e5\u06d6\u06db\u06e8\u06d8\u06db\u06eb\u06e8\u06d8\u06d6\u06da\u06e8\u06d8\u06d7\u06e8\u06e6\u06d8\u06d9\u06df\u06e1\u06d8\u06df\u06d9\u06e6\u06d8\u06d6\u06d7\u06d9\u06d7\u06db\u06d6\u06d8\u06e5\u06db\u06e2\u06da\u06da"

    goto :goto_0

    :sswitch_2
    iput-boolean p1, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->o000OOo:Z

    const-string v0, "\u06e1\u06ec\u06d7\u06d7\u06e6\u06dc\u06e1\u06d8\u06e5\u06e2\u06ec\u06e2\u06e2\u06eb\u06e0\u06e7\u06e7\u06dc\u06d8\u06d6\u06d6\u06d8\u06d7\u06dc\u06e7\u06e0\u06dc\u06db\u06df\u06db\u06db\u06d7\u06d6\u06da\u06e4\u06e2\u06e8\u06d8\u06e5\u06dc\u06d6\u06da\u06e1\u06eb"

    goto :goto_0

    :sswitch_3
    return p1

    :sswitch_data_0
    .sparse-switch
        -0x6e0f42e -> :sswitch_0
        0x1a6bbb8 -> :sswitch_1
        0x576389ba -> :sswitch_2
        0x595483d9 -> :sswitch_3
    .end sparse-switch
.end method

.method public static synthetic OooOo(Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;F)F
    .locals 4

    const-string v0, "\u06da\u06eb\u06dc\u06db\u06eb\u06e0\u06df\u06eb\u06e6\u06d8\u06e0\u06db\u06e8\u06e6\u06e1\u06ec\u06d8\u06d8\u06e6\u06d8\u06db\u06e6\u06e1\u06d7\u06dc\u06dc\u06dc\u06d7\u06e8\u06d8\u06d9\u06e4\u06e1"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x7d

    xor-int/2addr v1, v2

    xor-int/lit8 v1, v1, 0x61

    const/16 v2, 0x2e4

    const v3, -0x1e9248f2

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e5\u06da\u06e2\u06df\u06e4\u06e7\u06d6\u06e0\u06db\u06e7\u06d9\u06e0\u06d6\u06e2\u06df\u06e8\u06e8\u06e8\u06d8\u06db\u06e8\u06e5\u06e6\u06d8\u06d9\u06d6\u06d8\u06dc\u06e2\u06db"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06d8\u06eb\u06d8\u06e2\u06e6\u06e1\u06d8\u06dc\u06ec\u06e6\u06da\u06db\u06e7\u06e1\u06e7\u06e2\u06db\u06e6\u06da\u06db\u06eb\u06e8\u06e6\u06e2\u06e5\u06d8\u06e5\u06da\u06e4\u06ec\u06df\u06e1\u06e7\u06db\u06e6\u06e8\u06e4\u06d7"

    goto :goto_0

    :sswitch_2
    iput p1, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->OoooooO:F

    const-string v0, "\u06d8\u06e1\u06dc\u06d8\u06d8\u06e7\u06e4\u06df\u06da\u06e2\u06e2\u06d6\u06e8\u06d8\u06df\u06e4\u06e6\u06d8\u06d6\u06ec\u06dc\u06d8\u06e6\u06e1\u06d8\u06d8\u06ec\u06e5\u06d9\u06e8\u06dc\u06d6\u06eb\u06ec\u06da\u06d9\u06d7\u06d9\u06e1\u06db\u06e2\u06e4\u06e1\u06d8\u06ec\u06e6\u06e5\u06d8"

    goto :goto_0

    :sswitch_3
    return p1

    :sswitch_data_0
    .sparse-switch
        -0x30fe33fb -> :sswitch_1
        -0x184408cb -> :sswitch_3
        0x2f741607 -> :sswitch_0
        0x5bddb65a -> :sswitch_2
    .end sparse-switch
.end method

.method public static synthetic OooOo0(Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;F)F
    .locals 4

    const-string v0, "\u06e7\u06e6\u06dc\u06d8\u06ec\u06dc\u06d9\u06eb\u06d9\u06e0\u06d6\u06e5\u06d6\u06e8\u06eb\u06d6\u06e8\u06d7\u06d6\u06d8\u06e2\u06e7\u06e8\u06df\u06da\u06e5\u06d8\u06e8\u06ec\u06d6\u06e4\u06d6\u06d8\u06e0\u06d7\u06da\u06da\u06e7\u06e0\u06d9\u06e8\u06eb\u06da\u06e1\u06da\u06d7\u06d7\u06d6\u06d8\u06da\u06d8\u06dc"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x330

    xor-int/2addr v1, v2

    xor-int/lit8 v1, v1, 0x27

    const/16 v2, 0x303

    const v3, 0x6e8706dc

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e2\u06d7\u06eb\u06e6\u06e6\u06df\u06ec\u06e4\u06d9\u06e7\u06d7\u06e8\u06d8\u06e4\u06d9\u06d9\u06e2\u06d8\u06d9\u06eb\u06e2\u06e5\u06d8\u06da\u06e6\u06d8\u06d8\u06ec\u06e8\u06e8\u06d8\u06d7\u06da\u06e2\u06e7\u06e7\u06db\u06e4\u06d6\u06d8\u06d6\u06e5\u06d9\u06e2\u06e7\u06d7\u06dc\u06ec\u06d7\u06d8\u06dc\u06e1\u06d8\u06e6\u06db\u06d9\u06e1\u06e1\u06d7"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06eb\u06e0\u06e4\u06e8\u06d8\u06e1\u06eb\u06eb\u06e1\u06d8\u06db\u06e1\u06e7\u06e5\u06ec\u06e5\u06d8\u06d6\u06d9\u06e2\u06e2\u06e6\u06e0\u06db\u06d8\u06e1\u06e7\u06d7\u06e5\u06d8\u06d9\u06ec\u06e6\u06d8\u06ec\u06d7\u06e6\u06d8\u06d6\u06dc\u06dc\u06e4\u06d9\u06dc\u06d8\u06d7\u06db\u06d8"

    goto :goto_0

    :sswitch_2
    iput p1, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->Oooooo:F

    const-string v0, "\u06eb\u06dc\u06e5\u06ec\u06e0\u06e6\u06e2\u06e7\u06ec\u06d9\u06e2\u06e7\u06e8\u06e2\u06e0\u06ec\u06dc\u06e4\u06da\u06db\u06eb\u06db\u06e8\u06dc\u06e5\u06e1\u06d8\u06d8\u06e6\u06e4\u06e7\u06d8\u06e1\u06e7\u06e8\u06e0\u06da\u06d6\u06eb\u06e0\u06e2\u06da\u06ec\u06da\u06e2\u06d8\u06e7\u06dc\u06da"

    goto :goto_0

    :sswitch_3
    return p1

    :sswitch_data_0
    .sparse-switch
        -0x2b86e311 -> :sswitch_3
        0x3ade2214 -> :sswitch_1
        0x3e4ed099 -> :sswitch_0
        0x59fddd7f -> :sswitch_2
    .end sparse-switch
.end method

.method public static synthetic OooOo00(Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;)F
    .locals 4

    const-string v0, "\u06e4\u06e1\u06e0\u06dc\u06e2\u06d6\u06d9\u06eb\u06d9\u06d8\u06e4\u06e1\u06d9\u06e4\u06e7\u06e2\u06e0\u06e0\u06e4\u06db\u06e1\u06d7\u06e7\u06d7\u06dc\u06df\u06dc\u06d8\u06e5\u06e0\u06d9\u06e5\u06d9\u06e7\u06e7\u06e6\u06ec"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x338

    xor-int/2addr v1, v2

    xor-int/lit8 v1, v1, 0x36

    const/16 v2, 0x74

    const v3, 0x78dcf818

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d7\u06eb\u06e8\u06d8\u06d7\u06df\u06d9\u06dc\u06e1\u06d7\u06e0\u06d9\u06eb\u06d9\u06e4\u06d6\u06e6\u06eb\u06e1\u06e1\u06d6\u06e0\u06e7\u06d6\u06e4\u06dc\u06da\u06e5\u06dc\u06d6\u06d6\u06d9\u06e1\u06da\u06e8\u06d8\u06e1\u06d8\u06e7\u06e1\u06d7\u06e5\u06d9\u06e6\u06d8\u06e2\u06e1\u06dc\u06db\u06d6\u06da\u06d7\u06db\u06e2\u06e8\u06da\u06db"

    goto :goto_0

    :sswitch_1
    iget v0, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->Oooooo:F

    return v0

    :sswitch_data_0
    .sparse-switch
        -0x61d7a60a -> :sswitch_1
        0x3812e579 -> :sswitch_0
    .end sparse-switch
.end method

.method public static synthetic OooOo0O(Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;)Landroid/widget/ImageView;
    .locals 4

    const-string v0, "\u06d7\u06e1\u06dc\u06da\u06db\u06eb\u06db\u06e6\u06d9\u06e7\u06ec\u06dc\u06db\u06d9\u06e7\u06d9\u06e5\u06e8\u06ec\u06e7\u06df\u06dc\u06df\u06e8\u06dc\u06e2\u06e1\u06ec\u06e2\u06db"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x210

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x1a6

    const/16 v2, 0x2ed

    const v3, 0x71b5f5a8

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06da\u06e5\u06e4\u06e6\u06d9\u06e8\u06d8\u06d9\u06e5\u06e5\u06d8\u06e7\u06db\u06e5\u06d6\u06e4\u06e6\u06d9\u06e2\u06d8\u06d8\u06d8\u06d8\u06dc\u06d8\u06e1\u06db\u06e7\u06da\u06da\u06d8\u06e4\u06d8\u06d7\u06d7\u06d6\u06df\u06e7\u06da\u06e6"

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->o00Ooo:Landroid/widget/ImageView;

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0xfa035d4 -> :sswitch_0
        0x1a8db217 -> :sswitch_1
    .end sparse-switch
.end method

.method public static synthetic OooOo0o(Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;)F
    .locals 4

    const-string v0, "\u06d9\u06d8\u06dc\u06d7\u06d9\u06dc\u06db\u06d8\u06eb\u06db\u06d9\u06d9\u06d9\u06ec\u06d6\u06d8\u06e6\u06e6\u06d9\u06e7\u06df\u06e1\u06d8\u06db\u06e1\u06e8\u06e8\u06e1\u06d8\u06e8\u06d7\u06d8\u06d8\u06d6\u06e5\u06e5\u06da\u06e8\u06e6\u06d8\u06e4\u06dc\u06e1\u06d8\u06d8\u06e7\u06da"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x147

    xor-int/2addr v1, v2

    xor-int/lit8 v1, v1, 0x6f

    const/16 v2, 0xb4

    const v3, 0x592ee3c2

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d8\u06e5\u06e7\u06dc\u06d8\u06d6\u06d8\u06dc\u06e4\u06d8\u06d8\u06d7\u06e6\u06e1\u06d8\u06e1\u06dc\u06d8\u06db\u06e4\u06db\u06e6\u06db\u06e2\u06d7\u06da\u06e5\u06d7\u06e0\u06d6\u06d7\u06d6\u06d8\u06e7\u06e5\u06e5\u06d8\u06e2\u06dc\u06df\u06eb\u06e8\u06e5\u06d8\u06e2\u06d6\u06e5"

    goto :goto_0

    :sswitch_1
    iget v0, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->OoooooO:F

    return v0

    :sswitch_data_0
    .sparse-switch
        -0x6f711349 -> :sswitch_1
        -0x8fca9bb -> :sswitch_0
    .end sparse-switch
.end method

.method public static synthetic OooOoO(Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;Z)Z
    .locals 4

    const-string v0, "\u06dc\u06ec\u06eb\u06da\u06e7\u06dc\u06d8\u06e6\u06e5\u06dc\u06da\u06d8\u06db\u06dc\u06e7\u06e1\u06e1\u06d6\u06d8\u06da\u06e6\u06e6\u06d8\u06d6\u06df\u06d8\u06d8\u06e1\u06e7\u06df\u06db\u06d8\u06e4\u06e6\u06e8\u06dc\u06d8\u06e0\u06e4\u06d9\u06d8\u06e6\u06db\u06db\u06e7\u06eb\u06d8\u06e5\u06d7\u06db\u06d8\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x3a6

    xor-int/2addr v1, v2

    xor-int/lit8 v1, v1, 0x6b

    const/16 v2, 0x2e7

    const v3, 0x77d1dbb

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e1\u06e2\u06db\u06d8\u06dc\u06e4\u06d9\u06e6\u06e8\u06eb\u06db\u06e6\u06d8\u06d9\u06dc\u06d9\u06e4\u06e1\u06d7\u06df\u06d7\u06d7\u06df\u06eb\u06dc\u06e6\u06da\u06e7\u06da\u06ec\u06d9\u06e6\u06d8\u06dc\u06e0\u06df\u06eb\u06d7\u06df\u06e2\u06e2\u06dc"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06e5\u06df\u06d9\u06e4\u06d7\u06d9\u06e6\u06d8\u06e2\u06e4\u06e0\u06db\u06db\u06e5\u06d7\u06db\u06d8\u06e1\u06e5\u06e1\u06db\u06e1\u06d6\u06eb\u06d9\u06d9\u06e8\u06dc\u06d8"

    goto :goto_0

    :sswitch_2
    iput-boolean p1, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->Oooooo0:Z

    const-string v0, "\u06e2\u06da\u06e5\u06d9\u06e2\u06df\u06e7\u06eb\u06e6\u06e6\u06ec\u06e1\u06df\u06d9\u06e7\u06ec\u06e2\u06e1\u06ec\u06e5\u06ec\u06e6\u06e4\u06d8\u06e0\u06d7\u06d9\u06df\u06dc\u06e7\u06d8"

    goto :goto_0

    :sswitch_3
    return p1

    :sswitch_data_0
    .sparse-switch
        -0x6adda12f -> :sswitch_2
        0x37e49025 -> :sswitch_0
        0x450dd883 -> :sswitch_1
        0x6ecc68d8 -> :sswitch_3
    .end sparse-switch
.end method

.method public static synthetic OooOoO0(Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;)Z
    .locals 4

    const-string v0, "\u06da\u06d9\u06e0\u06d6\u06d8\u06e6\u06d8\u06da\u06e0\u06e6\u06d8\u06dc\u06e4\u06d9\u06e1\u06d7\u06e5\u06d8\u06e7\u06e8\u06e7\u06d8\u06df\u06e8\u06e8\u06df\u06d8\u06eb\u06e5\u06e0\u06df\u06dc\u06d8\u06db"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x301

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0xc5

    const/16 v2, 0x225

    const v3, 0x3cbc194a

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06eb\u06e5\u06e5\u06df\u06d9\u06d9\u06e4\u06e6\u06d8\u06eb\u06d8\u06e5\u06e0\u06d9\u06e0\u06d6\u06ec\u06db\u06d7\u06ec\u06e1\u06db\u06e5\u06e8\u06d9\u06e2\u06e6\u06d8\u06d6\u06eb\u06e5\u06dc\u06d9\u06ec\u06e6\u06e1"

    goto :goto_0

    :sswitch_1
    iget-boolean v0, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->Oooooo0:Z

    return v0

    :sswitch_data_0
    .sparse-switch
        -0x1cf9ec5a -> :sswitch_0
        -0x177a81b0 -> :sswitch_1
    .end sparse-switch
.end method

.method public static synthetic OooOoOO(Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;Landroid/view/View;)V
    .locals 4

    const-string v0, "\u06d6\u06da\u06dc\u06d9\u06e4\u06e5\u06da\u06df\u06e1\u06d8\u06e8\u06e0\u06ec\u06d6\u06e0\u06db\u06eb\u06dc\u06d8\u06eb\u06d7\u06e0\u06e1\u06d6\u06d6\u06d8\u06da\u06e1\u06ec\u06e8\u06d8\u06dc\u06d8\u06d9\u06e5\u06e7\u06d8\u06e8\u06e5\u06e0\u06d7\u06e5\u06d6\u06e1\u06d9\u06da\u06e8\u06e5\u06d8\u06e0\u06eb\u06dc"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x21b

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x368

    const/16 v2, 0x383

    const v3, -0x39a8cebb

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e4\u06e7\u06d6\u06d8\u06df\u06d6\u06dc\u06d8\u06dc\u06da\u06da\u06e7\u06d6\u06d8\u06e6\u06e7\u06ec\u06da\u06e8\u06e8\u06da\u06d7\u06dc\u06d8\u06df\u06eb\u06e5\u06d8\u06e4\u06d9\u06d8\u06e1\u06e0\u06e4\u06e6\u06e5\u06d7\u06e1\u06e1\u06e8\u06d8\u06e1\u06e1\u06e0\u06d9\u06d8\u06d9\u06e7\u06d6\u06e4\u06e4\u06d9\u06e8\u06d8"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06e2\u06e7\u06dc\u06d7\u06e2\u06d8\u06d8\u06e6\u06ec\u06e1\u06d8\u06e8\u06ec\u06e1\u06d6\u06e8\u06ec\u06da\u06e1\u06d9\u06e2\u06e6\u06d8\u06e1\u06d6\u06e1\u06e7\u06ec\u06d9\u06da\u06dc\u06d9\u06e4\u06da\u06e5\u06d8\u06dc\u06e7\u06e8\u06d8\u06e0\u06e4\u06df\u06d7\u06e1\u06e5\u06e6\u06da\u06e5\u06e4\u06d7\u06e6\u06d8"

    goto :goto_0

    :sswitch_2
    invoke-direct {p0, p1}, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->OoooO0O(Landroid/view/View;)V

    const-string v0, "\u06e8\u06d7\u06ec\u06df\u06e8\u06d9\u06e8\u06db\u06df\u06e4\u06d6\u06d7\u06e6\u06e2\u06d6\u06e7\u06db\u06d8\u06d8\u06d6\u06eb\u06e7\u06eb\u06dc\u06d8\u06d8\u06d8\u06e0\u06ec\u06e1\u06e4\u06da\u06e2\u06d6\u06d8\u06e0\u06e6\u06e6\u06d8\u06d7\u06d9\u06ec\u06d6\u06df\u06e8\u06d8\u06e5\u06e2\u06e6\u06eb\u06e5\u06eb"

    goto :goto_0

    :sswitch_3
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6832310c -> :sswitch_2
        -0x5cfe234d -> :sswitch_1
        0x34187f96 -> :sswitch_3
        0x628944d1 -> :sswitch_0
    .end sparse-switch
.end method

.method public static synthetic OooOoo(Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;)I
    .locals 4

    const-string v0, "\u06e0\u06da\u06db\u06e5\u06db\u06e7\u06e7\u06ec\u06e8\u06d8\u06e6\u06e8\u06d6\u06d8\u06df\u06d8\u06e4\u06e2\u06ec\u06eb\u06da\u06e4\u06e7\u06df\u06d6\u06dc\u06d9\u06e7\u06d8\u06ec\u06e5\u06d8\u06eb\u06ec\u06e5\u06e2\u06df\u06e7\u06eb\u06db\u06e8\u06ec\u06d8\u06e5\u06d8\u06ec\u06df\u06d6\u06e6\u06da\u06d7\u06ec\u06e6\u06e1\u06db\u06e7\u06dc"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0xc9

    xor-int/2addr v1, v2

    xor-int/lit8 v1, v1, 0x68

    const/16 v2, 0x37c

    const v3, -0x5fa2f4e3

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e6\u06dc\u06d8\u06e8\u06e5\u06e0\u06e7\u06ec\u06eb\u06df\u06eb\u06ec\u06dc\u06e4\u06e5\u06e6\u06e1\u06eb\u06e8\u06ec\u06e1\u06d8\u06dc\u06d8\u06df\u06d9\u06db\u06db\u06da\u06dc\u06eb\u06e1\u06da\u06ec\u06e1\u06d7\u06dc\u06d9\u06d6\u06db\u06e1\u06dc\u06d9\u06e7\u06eb\u06d6\u06e6\u06e6\u06d8"

    goto :goto_0

    :sswitch_1
    iget v0, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->Ooooooo:I

    return v0

    :sswitch_data_0
    .sparse-switch
        -0x407321bd -> :sswitch_1
        -0xa0c85e2 -> :sswitch_0
    .end sparse-switch
.end method

.method public static synthetic OooOoo0(Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;Landroid/view/View;)V
    .locals 4

    const-string v0, "\u06e7\u06ec\u06df\u06dc\u06eb\u06e6\u06e7\u06e5\u06e7\u06d9\u06e7\u06d7\u06df\u06db\u06df\u06e5\u06e0\u06e1\u06d8\u06e8\u06d7\u06e8\u06da\u06e0\u06d6\u06d9\u06d6\u06e1\u06d8\u06d7\u06d9\u06ec\u06e6\u06db\u06e6\u06e2\u06e1\u06e2\u06e8\u06e4\u06ec\u06d6\u06eb\u06db\u06e7\u06e7\u06df\u06e1\u06e8\u06dc\u06da\u06e6\u06d8\u06df\u06db\u06e2"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x2b2

    xor-int/2addr v1, v2

    xor-int/lit8 v1, v1, 0x2f

    const/16 v2, 0x160

    const v3, 0x1673091a

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06da\u06e2\u06dc\u06da\u06d8\u06e6\u06d8\u06ec\u06d9\u06e8\u06e1\u06d9\u06da\u06db\u06d7\u06eb\u06ec\u06e8\u06ec\u06d8\u06e8\u06e8\u06d8\u06df\u06ec\u06ec\u06e0\u06d8\u06e1\u06d7\u06db"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06e5\u06d9\u06e0\u06e8\u06e6\u06e7\u06d8\u06e4\u06d8\u06d7\u06df\u06df\u06d7\u06da\u06e2\u06e1\u06d8\u06e1\u06d9\u06dc\u06d9\u06d9\u06db\u06d8\u06e2\u06e1\u06d8\u06d6\u06e1\u06e8\u06d8\u06eb\u06d8"

    goto :goto_0

    :sswitch_2
    invoke-direct {p0, p1}, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->o00O0O(Landroid/view/View;)V

    const-string v0, "\u06dc\u06e0\u06e0\u06e6\u06e8\u06e2\u06d9\u06ec\u06ec\u06ec\u06e5\u06ec\u06d7\u06d8\u06df\u06da\u06e4\u06db\u06e1\u06e1\u06dc\u06d8\u06d8\u06d8\u06d8\u06e7\u06dc\u06d8\u06e5\u06ec\u06d9"

    goto :goto_0

    :sswitch_3
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x2750c243 -> :sswitch_1
        0x2787aae9 -> :sswitch_2
        0x5eeff77d -> :sswitch_3
        0x69638b38 -> :sswitch_0
    .end sparse-switch
.end method

.method public static synthetic OooOooO(Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;)I
    .locals 4

    const-string v0, "\u06eb\u06da\u06dc\u06e4\u06df\u06e2\u06ec\u06e2\u06d6\u06d8\u06d9\u06e1\u06d8\u06e6\u06e5\u06e7\u06d8\u06db\u06db\u06db\u06d9\u06db\u06d8\u06d8\u06ec\u06ec\u06df\u06ec\u06e7\u06dc\u06e4\u06ec\u06d9\u06e7\u06da\u06dc\u06d9\u06e1\u06ec\u06e2\u06e6\u06e5\u06d8\u06d8\u06dc\u06d6"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x253

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x36e

    const/16 v2, 0x2b8

    const v3, 0x18a3ba18

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e0\u06dc\u06dc\u06d8\u06e6\u06e1\u06db\u06d8\u06eb\u06e1\u06d8\u06e8\u06e1\u06dc\u06df\u06e6\u06d8\u06e4\u06eb\u06d7\u06d7\u06da\u06e6\u06e5\u06e6\u06e2\u06ec\u06eb\u06d8\u06df\u06e7\u06df"

    goto :goto_0

    :sswitch_1
    iget v0, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->o0OoOo0:I

    return v0

    :sswitch_data_0
    .sparse-switch
        -0x67557f6f -> :sswitch_1
        0x4fbd003d -> :sswitch_0
    .end sparse-switch
.end method

.method public static synthetic OooOooo(Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;)Landroidx/lifecycle/AndroidViewModel;
    .locals 4

    const-string v0, "\u06d8\u06df\u06e8\u06dc\u06d8\u06e6\u06eb\u06d8\u06e6\u06d8\u06d9\u06dc\u06e4\u06df\u06e0\u06e2\u06db\u06dc\u06d9\u06e6\u06e7\u06d8\u06e1\u06eb\u06e4\u06e1\u06e6\u06ec\u06e2\u06d8\u06da\u06eb\u06e6\u06e7\u06e8\u06d8\u06e4\u06e5\u06da\u06e8\u06eb\u06d8\u06d8\u06d8\u06e7\u06e2\u06dc\u06db\u06d9\u06d7\u06e0\u06e0\u06e8\u06eb\u06d6\u06dc\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x2fa

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0xd2

    const/16 v2, 0x37a

    const v3, -0x27faf01c

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e2\u06db\u06d9\u06eb\u06db\u06db\u06e5\u06dc\u06d8\u06d8\u06d7\u06db\u06e1\u06d8\u06d7\u06df\u06e5\u06d8\u06e5\u06e6\u06e6\u06e8\u06e8\u06ec\u06dc\u06e7\u06d6\u06d7\u06d6\u06dc\u06e0\u06df\u06da\u06d8\u06e0\u06d7\u06e1\u06e8\u06d8\u06d9\u06e4\u06e5\u06d8\u06e8\u06dc\u06d6\u06e5\u06e5\u06e4\u06db\u06e2\u06df"

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/cyjh/common/base/activity/BaseModelActivity;->OooooO0:Landroidx/lifecycle/AndroidViewModel;

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x1d659959 -> :sswitch_0
        0x76d524fa -> :sswitch_1
    .end sparse-switch
.end method

.method private Oooo()V
    .locals 4

    const-string v0, "\u06e1\u06dc\u06e5\u06e6\u06e8\u06d8\u06d7\u06e6\u06e6\u06ec\u06dc\u06e0\u06d7\u06da\u06eb\u06e0\u06e1\u06e5\u06d8\u06e6\u06d7\u06e6\u06d8\u06e2\u06da\u06e6\u06e6\u06d7\u06d7\u06eb\u06df\u06e8\u06e7\u06e6\u06df\u06ec\u06e8\u06eb"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x3b0

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x323

    const/16 v2, 0x3c7

    const v3, -0x48f27b7e

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06ec\u06df\u06da\u06eb\u06eb\u06e2\u06eb\u06e6\u06e4\u06ec\u06e4\u06e5\u06d8\u06e2\u06d7\u06e2\u06d7\u06df\u06e0\u06eb\u06eb\u06dc\u06db\u06ec\u06e4\u06e6\u06d7\u06eb\u06e5\u06e5\u06e6\u06d8\u06e6\u06e4\u06da\u06d8\u06d6\u06e1\u06d8"

    goto :goto_0

    :sswitch_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->moveTaskToBack(Z)Z

    const-string v0, "\u06e6\u06ec\u06e4\u06dc\u06e8\u06d8\u06e6\u06d6\u06db\u06dc\u06ec\u06e1\u06d9\u06e0\u06e6\u06d6\u06da\u06eb\u06e8\u06d8\u06eb\u06e7\u06d9\u06ec\u06d6\u06eb\u06df\u06d7\u06db\u06df"

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->ooOO:Landroid/os/Handler;

    sget-object v1, Lz2/h9;->OoooOoO:Lz2/h9;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const-string v0, "\u06d6\u06e6\u06d6\u06d8\u06e0\u06e0\u06dc\u06d8\u06d7\u06e8\u06e1\u06e8\u06d6\u06dc\u06d6\u06eb\u06e6\u06d8\u06e5\u06e1\u06d8\u06d8\u06e2\u06e2\u06e0\u06ec\u06d8\u06db\u06e5\u06df\u06e2\u06db\u06da\u06e7\u06dc\u06db\u06e5\u06e7\u06db\u06e5\u06d6\u06e5\u06d7\u06e6\u06db\u06e5\u06d8\u06e6\u06ec\u06dc\u06d8\u06e1\u06d7\u06db"

    goto :goto_0

    :sswitch_3
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x3b0d1b46 -> :sswitch_2
        -0x1bd39259 -> :sswitch_0
        -0x123aaf0a -> :sswitch_1
        0x6b434f0a -> :sswitch_3
    .end sparse-switch
.end method

.method public static synthetic Oooo0(Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;)Z
    .locals 4

    const-string v0, "\u06df\u06d7\u06ec\u06dc\u06e0\u06e6\u06e5\u06e7\u06d6\u06da\u06d6\u06db\u06da\u06e0\u06e0\u06e1\u06e7\u06d8\u06df\u06e2\u06db\u06e6\u06e2\u06eb\u06da\u06e7\u06dc\u06e7\u06e7\u06e6\u06d8\u06db\u06e8\u06d8\u06e0\u06e0\u06e8\u06d6\u06dc\u06d7\u06e1\u06e2\u06d8\u06d8\u06d9\u06df\u06e5\u06eb\u06d9\u06d8\u06e0\u06da\u06d8\u06d8\u06eb\u06e1\u06e7\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x39a

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x307

    const/16 v2, 0x3de

    const v3, 0xbbe0eaa

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06dc\u06e1\u06e8\u06d9\u06d9\u06e2\u06eb\u06df\u06db\u06e2\u06e2\u06d8\u06eb\u06eb\u06e8\u06d8\u06e2\u06e0\u06d6\u06e6\u06df\u06eb\u06d7\u06e8\u06df\u06e5\u06e0\u06ec\u06e7\u06eb\u06db\u06e8\u06d7\u06e8\u06d8\u06d7\u06da\u06e7\u06eb\u06df\u06d8\u06d8\u06e5\u06e2\u06e2\u06df\u06d7\u06d6\u06d8\u06df\u06eb\u06ec\u06e8\u06e2\u06dc\u06d8\u06ec\u06d6\u06e1"

    goto :goto_0

    :sswitch_1
    iget-boolean v0, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->o0OO00O:Z

    return v0

    :sswitch_data_0
    .sparse-switch
        -0x7d23d13f -> :sswitch_0
        0x4135d5e8 -> :sswitch_1
    .end sparse-switch
.end method

.method public static synthetic Oooo000(Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;Ljava/util/ArrayList;)V
    .locals 4

    const-string v0, "\u06e4\u06eb\u06d7\u06d9\u06da\u06d9\u06db\u06eb\u06e8\u06d8\u06e6\u06eb\u06e7\u06e0\u06e2\u06e8\u06db\u06e5\u06dc\u06e8\u06e0\u06e0\u06e1\u06d8\u06e7\u06d6\u06dc\u06dc\u06d9\u06ec"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x30c

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x311

    const/16 v2, 0x2d7

    const v3, -0x2dc797a5

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d6\u06da\u06db\u06d9\u06e7\u06dc\u06e4\u06eb\u06d8\u06d8\u06e4\u06e2\u06e0\u06e8\u06da\u06e7\u06e8\u06e1\u06e7\u06d8\u06e1\u06e4\u06e8\u06d8\u06d8\u06e6\u06da\u06d8\u06da\u06d8\u06e6\u06da\u06e7\u06d9\u06dc\u06d9\u06e4\u06d7\u06e5\u06d9\u06d6\u06e7\u06d6\u06d9\u06e8"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06e2\u06eb\u06df\u06d6\u06ec\u06df\u06e2\u06db\u06e7\u06e7\u06e2\u06db\u06e1\u06d7\u06db\u06e4\u06e1\u06d7\u06df\u06d9\u06d8\u06d8\u06d8\u06dc\u06df\u06e0\u06e6\u06e5\u06d7\u06e4\u06e0\u06e1\u06df\u06e7\u06e7\u06d8\u06e6\u06d8\u06db\u06d8\u06e4\u06d8\u06dc\u06e2"

    goto :goto_0

    :sswitch_2
    invoke-direct {p0, p1}, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->OoooOoo(Ljava/util/ArrayList;)V

    const-string v0, "\u06e4\u06d8\u06d6\u06d8\u06e1\u06e0\u06e5\u06d8\u06e6\u06d9\u06e5\u06e7\u06e4\u06e1\u06e0\u06e4\u06e6\u06d8\u06eb\u06d9\u06da\u06dc\u06ec\u06db\u06e7\u06eb\u06d6\u06d8\u06d7\u06db\u06d8\u06e7\u06e8\u06d8\u06e1\u06eb\u06e1\u06d8\u06d6\u06dc\u06da\u06e6\u06e6\u06e6\u06d8\u06eb\u06d9\u06db\u06e2\u06df\u06d7\u06eb\u06e6\u06d9\u06e2\u06d7\u06e0\u06d8\u06e2"

    goto :goto_0

    :sswitch_3
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x61bacd60 -> :sswitch_3
        0x83f6903 -> :sswitch_1
        0x1221c66a -> :sswitch_0
        0x72c9c339 -> :sswitch_2
    .end sparse-switch
.end method

.method public static synthetic Oooo00O(Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;)Landroidx/core/app/NotificationCompat$Builder;
    .locals 4

    const-string v0, "\u06dc\u06e4\u06ec\u06e6\u06d7\u06e2\u06e7\u06df\u06da\u06d6\u06d8\u06e1\u06d7\u06df\u06e6\u06d8\u06d6\u06d6\u06e5\u06e0\u06e5\u06df\u06e7\u06d7\u06e7\u06d8\u06d9\u06e0\u06ec\u06d8\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x2a

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x3f8

    const/16 v2, 0x179

    const v3, -0x75df1d0a

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d8\u06e6\u06d6\u06eb\u06df\u06db\u06e6\u06e6\u06db\u06e6\u06eb\u06e6\u06d8\u06e5\u06e5\u06e5\u06d8\u06e6\u06dc\u06d8\u06e6\u06dc\u06e8\u06e7\u06d9\u06d7\u06d8\u06e7\u06d9\u06e8\u06d8\u06e2\u06d9\u06dc\u06df\u06e0\u06e7\u06e6\u06d8\u06dc\u06e2\u06ec\u06e6\u06d8\u06d6"

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->o00O0O:Landroidx/core/app/NotificationCompat$Builder;

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x63b467ff -> :sswitch_1
        0x54d806b6 -> :sswitch_0
    .end sparse-switch
.end method

.method public static synthetic Oooo00o(Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;)Landroid/app/NotificationManager;
    .locals 4

    const-string v0, "\u06ec\u06eb\u06d8\u06db\u06e1\u06eb\u06dc\u06da\u06e8\u06e7\u06ec\u06e7\u06e5\u06e5\u06d6\u06d8\u06eb\u06e6\u06d8\u06e1\u06e8\u06d6\u06df\u06e5\u06e8\u06d8\u06dc\u06d8\u06d6\u06d8\u06e4\u06e1\u06d6\u06d8\u06e6\u06ec\u06e1\u06d8\u06df\u06eb\u06e8\u06d8\u06e6\u06ec\u06e2\u06db\u06df\u06eb"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x26c

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x3e5

    const/16 v2, 0x21c

    const v3, -0x5979267e

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e1\u06d7\u06ec\u06e7\u06eb\u06db\u06e6\u06eb\u06d9\u06e6\u06dc\u06e6\u06eb\u06d9\u06e6\u06d8\u06dc\u06da\u06e0\u06ec\u06e4\u06e6\u06e7\u06ec\u06e7\u06e6\u06db\u06e2\u06e8\u06e8\u06db\u06dc\u06e8\u06e7\u06d8\u06ec\u06df\u06ec\u06e2\u06e2\u06ec\u06da\u06e8\u06df\u06e6\u06e1\u06e6\u06ec\u06da\u06e0\u06da\u06d8\u06e8\u06d8\u06d8\u06d8\u06d7"

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->o00Oo0:Landroid/app/NotificationManager;

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x32c0ad18 -> :sswitch_0
        0x501364ff -> :sswitch_1
    .end sparse-switch
.end method

.method public static synthetic Oooo0O0(Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;Z)Z
    .locals 4

    const-string v0, "\u06e4\u06e6\u06df\u06db\u06eb\u06d8\u06d8\u06e6\u06eb\u06e1\u06e8\u06d6\u06dc\u06db\u06d8\u06dc\u06e1\u06d9\u06eb\u06eb\u06eb\u06d6\u06d8\u06d9\u06da\u06e6\u06d8\u06dc\u06d6\u06ec\u06e2\u06ec\u06e7\u06e5\u06d8\u06d8\u06eb\u06e0\u06df"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x2d

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x298

    const/16 v2, 0x3c6

    const v3, 0x17498456

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06eb\u06d6\u06e6\u06d8\u06d9\u06df\u06d8\u06d8\u06df\u06e8\u06e8\u06d8\u06d8\u06df\u06e8\u06d6\u06eb\u06d9\u06da\u06ec\u06e4\u06e1\u06e5\u06e6\u06d8\u06df\u06e6\u06e8\u06da\u06e6\u06e1\u06d8\u06ec\u06db\u06da\u06e5\u06e0\u06d7\u06db\u06e0"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06da\u06e1\u06d9\u06e4\u06dc\u06eb\u06dc\u06da\u06e4\u06eb\u06ec\u06ec\u06d8\u06da\u06df\u06e6\u06d7\u06d7\u06e8\u06d9\u06e7\u06e8\u06e5\u06db\u06d8\u06d6\u06e5\u06d8\u06dc\u06d8\u06ec\u06e7\u06db\u06e4\u06d8\u06db"

    goto :goto_0

    :sswitch_2
    iput-boolean p1, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->o0OO00O:Z

    const-string v0, "\u06d6\u06e2\u06e4\u06e8\u06e8\u06d8\u06eb\u06e8\u06da\u06d8\u06e1\u06e6\u06d8\u06e0\u06d7\u06e2\u06db\u06e0\u06e2\u06e2\u06e1\u06e2\u06d9\u06d9\u06e8\u06ec\u06d9\u06db\u06e8\u06df\u06e4\u06e8\u06e8\u06e8\u06e8\u06db\u06db"

    goto :goto_0

    :sswitch_3
    return p1

    :sswitch_data_0
    .sparse-switch
        -0x7e795ec3 -> :sswitch_0
        -0x3397d0ec -> :sswitch_1
        0xbceaace -> :sswitch_2
        0x72d089eb -> :sswitch_3
    .end sparse-switch
.end method

.method public static synthetic Oooo0OO(Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;)Lz2/ca;
    .locals 4

    const-string v0, "\u06df\u06e4\u06db\u06d6\u06da\u06db\u06d9\u06d9\u06db\u06e5\u06dc\u06e5\u06d8\u06e0\u06dc\u06e5\u06d8\u06eb\u06e4\u06d7\u06e4\u06dc\u06e7\u06d6\u06e6\u06eb\u06e6\u06da\u06dc\u06d8\u06db\u06e6\u06e1\u06d8\u06ec\u06dc\u06eb\u06e4\u06e1\u06d6\u06da\u06e6\u06ec\u06e1\u06d9\u06dc\u06ec\u06d9\u06eb\u06d7\u06db\u06dc\u06d8\u06d6\u06ec\u06e6\u06d8\u06eb\u06e0\u06df"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x19c

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x366

    const/16 v2, 0x96

    const v3, 0x36788b80

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06ec\u06e8\u06df\u06e7\u06dc\u06d6\u06d8\u06ec\u06db\u06e2\u06e1\u06db\u06db\u06e7\u06e1\u06d7\u06e0\u06d9\u06e5\u06d8\u06d8\u06dc\u06e8\u06d8\u06e8\u06e4\u06e7\u06d9\u06e4\u06dc\u06d8\u06df\u06db\u06e1\u06d8\u06d8\u06d7\u06e0\u06e2\u06e2\u06d6\u06e6\u06d8\u06e4\u06d7\u06e1\u06e2"

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->o0Oo0oo:Lz2/ca;

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x4c9fc3dd -> :sswitch_0
        0x2dc154c7 -> :sswitch_1
    .end sparse-switch
.end method

.method public static synthetic Oooo0o(Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;)Z
    .locals 4

    const-string v0, "\u06e6\u06e5\u06e0\u06ec\u06d9\u06e1\u06db\u06df\u06e6\u06d8\u06df\u06e1\u06df\u06dc\u06e7\u06e2\u06e1\u06d9\u06d6\u06e0\u06da\u06e5\u06d8\u06d7\u06e1\u06d6\u06e4\u06e5\u06dc\u06d8\u06e0\u06eb\u06e0"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x2a6

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x3f5

    const/4 v2, 0x5

    const v3, 0x49bed459

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e2\u06ec\u06d6\u06e7\u06db\u06e7\u06e1\u06da\u06d8\u06d8\u06d8\u06e8\u06da\u06df\u06da\u06e5\u06df\u06d9\u06e8\u06df\u06e1\u06e8\u06d8\u06e5\u06e0\u06e1\u06d8\u06e2\u06e0\u06da\u06dc\u06eb\u06e5\u06df\u06e0\u06dc\u06eb\u06eb\u06db\u06e1\u06e8\u06e0\u06e0\u06d6\u06d8\u06e4\u06ec\u06e6\u06d9\u06da\u06df"

    goto :goto_0

    :sswitch_1
    iget-boolean v0, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->o0ooOOo:Z

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x28379f85 -> :sswitch_0
        0x4a5a1d5a -> :sswitch_1
    .end sparse-switch
.end method

.method public static synthetic Oooo0o0(Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;Lz2/ca;)Lz2/ca;
    .locals 4

    const-string v0, "\u06ec\u06d6\u06eb\u06da\u06e8\u06dc\u06e8\u06e6\u06d8\u06e4\u06e1\u06e1\u06e5\u06d8\u06d6\u06e2\u06e7\u06d6\u06d8\u06dc\u06e5\u06d9\u06e1\u06e2\u06dc\u06df\u06d8\u06ec\u06e4\u06ec\u06d9\u06db\u06d8\u06e0\u06e4\u06e0\u06da\u06e8\u06d7\u06e5\u06e0\u06e1\u06e8\u06dc\u06d9\u06e7\u06e2\u06e1\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x31b

    xor-int/2addr v1, v2

    xor-int/lit8 v1, v1, 0x27

    const/16 v2, 0x251

    const v3, 0x4d0da243    # 1.4851384E8f

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d9\u06e1\u06d8\u06e5\u06df\u06e7\u06d9\u06db\u06e7\u06ec\u06d9\u06e0\u06db\u06df\u06eb\u06d6\u06d9\u06ec\u06da\u06e1\u06d6\u06e2\u06e2\u06e4\u06d8\u06e1\u06e8\u06d8\u06e5\u06db\u06d8\u06d7\u06e1\u06e4\u06ec\u06da\u06e8\u06d8\u06e8\u06d8\u06e6\u06d8\u06eb\u06d6\u06d8"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06e7\u06df\u06e4\u06ec\u06d9\u06e4\u06d8\u06e5\u06e5\u06da\u06db\u06d7\u06d6\u06df\u06e8\u06e4\u06e0\u06dc\u06d8\u06d8\u06d9\u06e8\u06d8\u06db\u06e1\u06e7\u06db\u06df\u06d6\u06d8\u06ec\u06e4\u06df"

    goto :goto_0

    :sswitch_2
    iput-object p1, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->o0Oo0oo:Lz2/ca;

    const-string v0, "\u06ec\u06da\u06d9\u06e8\u06e5\u06e8\u06d8\u06eb\u06e4\u06ec\u06e4\u06dc\u06e5\u06ec\u06e7\u06e8\u06d8\u06e0\u06e5\u06e0\u06e4\u06db\u06d6\u06d8\u06e0\u06e2\u06e8\u06d8\u06db\u06db\u06e4\u06eb\u06e6\u06e7\u06e1\u06d9\u06df\u06d7\u06d6\u06d7\u06e2\u06e5\u06ec\u06d6\u06e1\u06e6\u06d6\u06e4\u06ec\u06e0\u06d9\u06e1\u06d8"

    goto :goto_0

    :sswitch_3
    return-object p1

    :sswitch_data_0
    .sparse-switch
        -0x729b880c -> :sswitch_3
        -0x63a5eb07 -> :sswitch_0
        0x191fb834 -> :sswitch_1
        0x4569d631 -> :sswitch_2
    .end sparse-switch
.end method

.method public static synthetic Oooo0oO(Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;Z)Z
    .locals 4

    const-string v0, "\u06e8\u06e1\u06d6\u06e8\u06da\u06e8\u06d8\u06db\u06e1\u06dc\u06d8\u06ec\u06dc\u06d8\u06d8\u06e5\u06e5\u06e1\u06d8\u06df\u06db\u06d6\u06e4\u06e5\u06e4\u06e4\u06db\u06db\u06e1\u06df\u06dc\u06e7\u06e6\u06d9\u06e0\u06d8\u06e2\u06e4\u06e5\u06e2\u06d7\u06d7\u06e6\u06e4\u06ec\u06e2\u06d9\u06dc\u06e2\u06da\u06e1\u06df\u06e5\u06d7\u06e6\u06dc"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x24e

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x2f2

    const/16 v2, 0x322

    const v3, 0x7dd5e9d6

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06da\u06d7\u06d7\u06d9\u06e7\u06d7\u06e4\u06eb\u06e4\u06e8\u06df\u06ec\u06e7\u06e6\u06e4\u06e2\u06d8\u06e1\u06df\u06ec\u06d8\u06e8\u06e2\u06eb\u06eb\u06e0\u06dc\u06e8\u06dc\u06eb\u06df\u06d9\u06eb\u06e6\u06e8\u06eb\u06d6\u06d6\u06dc\u06dc\u06e4\u06e2\u06e5\u06d8\u06d8\u06dc\u06d7"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06e6\u06e1\u06e6\u06d6\u06e4\u06d8\u06e6\u06e4\u06d8\u06df\u06e0\u06e4\u06e0\u06e0\u06e4\u06d8\u06e8\u06d8\u06e0\u06ec\u06db\u06e7\u06e7\u06e0\u06eb\u06d8\u06d8\u06e2\u06db\u06e6\u06e2\u06e5\u06d9\u06d6\u06e2\u06e7\u06dc\u06d6\u06e8\u06da\u06e7"

    goto :goto_0

    :sswitch_2
    iput-boolean p1, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->o0ooOOo:Z

    const-string v0, "\u06ec\u06d8\u06e5\u06e1\u06e5\u06db\u06e6\u06d8\u06df\u06dc\u06db\u06d8\u06d8\u06e4\u06d6\u06db\u06e2\u06ec\u06dc\u06d8\u06e5\u06e7\u06e5\u06d8\u06d8\u06e7\u06ec\u06ec\u06d9\u06e4\u06ec\u06d6\u06e7"

    goto :goto_0

    :sswitch_3
    return p1

    :sswitch_data_0
    .sparse-switch
        -0x76dbe98d -> :sswitch_0
        -0x45ee2ec1 -> :sswitch_2
        0x255e5a25 -> :sswitch_3
        0x71f9408f -> :sswitch_1
    .end sparse-switch
.end method

.method private Oooo0oo()V
    .locals 14

    const-wide/16 v4, 0x3e8

    const/4 v3, 0x0

    const-string v0, "\u06e6\u06e8\u06e7\u06dc\u06ec\u06db\u06df\u06db\u06db\u06db\u06e7\u06e7\u06e0\u06df\u06d7\u06e1\u06e2\u06d9\u06d9\u06d6\u06e5\u06d8\u06d9\u06e1\u06da\u06e8\u06dc\u06d6\u06d8\u06d8\u06ec\u06d8"

    move-object v1, v0

    move-object v2, v3

    move-object v6, v3

    move-object v8, v3

    move-object v9, v3

    move-object v7, v3

    move-object v10, v3

    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v3, 0x1fd

    xor-int/2addr v0, v3

    xor-int/lit16 v0, v0, 0x1cf

    const/16 v3, 0x160

    const v11, -0x3e7776fe

    xor-int/2addr v0, v3

    xor-int/2addr v0, v11

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06dc\u06e2\u06ec\u06e5\u06df\u06eb\u06e7\u06df\u06e1\u06d8\u06e7\u06ec\u06d6\u06d7\u06d7\u06e4\u06e2\u06dc\u06df\u06dc\u06df\u06d8\u06d8\u06e0\u06e7\u06d9\u06da\u06e6\u06dc\u06e0\u06e4\u06e0\u06da\u06db\u06d8\u06e7\u06da\u06eb\u06e7\u06d6\u06d7\u06e8\u06db\u06dc\u06d8"

    move-object v1, v0

    goto :goto_0

    :sswitch_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->o000OOo:Z

    const-string v0, "\u06e4\u06eb\u06d6\u06d8\u06df\u06e6\u06db\u06ec\u06e7\u06d6\u06d8\u06d9\u06d9\u06e8\u06e1\u06d9\u06dc\u06d8\u06d6\u06eb\u06d8\u06e8\u06d9\u06dc\u06d8\u06d7\u06e2\u06d8\u06e1\u06e7\u06d9\u06e8\u06e4\u06e5\u06d8\u06e8\u06e2\u06e6\u06d8\u06df\u06d8\u06e5\u06d8\u06e1\u06d8\u06ec\u06da\u06da\u06e1\u06df\u06e6\u06e0\u06df"

    move-object v1, v0

    goto :goto_0

    :sswitch_2
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    const-string v0, "\u06df\u06d6\u06d7\u06df\u06da\u06d9\u06d7\u06e6\u06dc\u06eb\u06df\u06d6\u06d8\u06d6\u06dc\u06da\u06d8\u06e1\u06e6\u06d8\u06d8\u06dc\u06e8\u06d8\u06e2\u06d9\u06e5\u06d6\u06ec\u06d8\u06d8\u06db\u06e1\u06d8\u06da\u06d7\u06e7\u06db\u06db\u06d7\u06d8\u06e6\u06eb\u06db\u06e8\u06da\u06dc\u06d7\u06e5\u06e0\u06d8"

    move-object v1, v0

    move-object v10, v3

    goto :goto_0

    :sswitch_3
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    const-string v0, "\u06d9\u06d8\u06da\u06e4\u06e0\u06dc\u06d8\u06e0\u06df\u06e5\u06d8\u06dc\u06e8\u06d9\u06dc\u06e8\u06d6\u06e0\u06e8\u06e8\u06e7\u06df\u06e0\u06d7\u06db\u06d7\u06eb\u06eb\u06d9\u06e4\u06e8\u06e7\u06d8\u06dc\u06d8\u06df\u06e1\u06da\u06d9\u06e1\u06dc\u06e4\u06e0\u06e8\u06dc\u06e2\u06e6\u06df\u06d6\u06d7"

    move-object v1, v0

    goto :goto_0

    :sswitch_4
    iget v0, v10, Landroid/graphics/Point;->x:I

    iput v0, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->Ooooooo:I

    const-string v0, "\u06d8\u06e1\u06e6\u06d8\u06da\u06d7\u06e5\u06d8\u06d9\u06d6\u06e4\u06d9\u06d6\u06d7\u06dc\u06e1\u06d8\u06df\u06d7\u06e0\u06e8\u06df\u06d9\u06d7\u06e8\u06e5\u06d8\u06e7\u06e6\u06ec\u06d6\u06d7\u06d6\u06d8\u06d8\u06d7\u06da\u06dc\u06e5"

    move-object v1, v0

    goto :goto_0

    :sswitch_5
    iget v0, v10, Landroid/graphics/Point;->y:I

    add-int/lit16 v0, v0, -0x118

    iput v0, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->o0OoOo0:I

    const-string v0, "\u06d8\u06df\u06d8\u06e4\u06d7\u06e8\u06d8\u06e7\u06da\u06da\u06e4\u06d7\u06e7\u06e8\u06e4\u06df\u06da\u06e8\u06df\u06e5\u06e6\u06e4\u06e8\u06e1\u06e1\u06d8\u06d9\u06d8\u06e7\u06e1\u06df\u06e6"

    move-object v1, v0

    goto :goto_0

    :sswitch_6
    const v0, 0x7f09036a

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const-string v1, "\u06d6\u06ec\u06d9\u06e0\u06e8\u06d8\u06e5\u06e2\u06e6\u06d8\u06e0\u06da\u06dc\u06d8\u06df\u06d6\u06e7\u06d8\u06dc\u06e6\u06d6\u06da\u06df\u06e8\u06d6\u06e4\u06df\u06db\u06d6\u06e0\u06d6\u06e0\u06e1\u06e5\u06e7\u06da\u06e0\u06e5\u06e8\u06d8\u06e8\u06df\u06d9\u06e4\u06d7\u06d8\u06d8\u06e4\u06e8\u06e8\u06e2\u06e2"

    move-object v7, v0

    goto :goto_0

    :sswitch_7
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c00ea

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v7, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    const-string v0, "\u06e5\u06e7\u06e2\u06e8\u06dc\u06e5\u06eb\u06dc\u06e5\u06e5\u06d8\u06e0\u06eb\u06e8\u06d8\u06d9\u06da\u06d6\u06dc\u06e4\u06e7\u06e2\u06df\u06e1\u06e4\u06eb\u06df\u06df\u06e1\u06d8"

    move-object v1, v0

    move-object v9, v3

    goto :goto_0

    :sswitch_8
    iput-object v9, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->OooooOo:Landroid/view/View;

    const-string v0, "\u06e5\u06da\u06e2\u06dc\u06eb\u06e4\u06e5\u06e4\u06e5\u06dc\u06e6\u06e2\u06ec\u06e7\u06d8\u06e8\u06e0\u06e0\u06db\u06d9\u06df\u06e6\u06d8\u06d6\u06e4\u06ec\u06d7\u06e6\u06eb\u06e7\u06d6\u06ec\u06df\u06db\u06dc\u06dc\u06d7\u06d7\u06dc\u06db\u06e0\u06dc\u06e5\u06d6\u06e4\u06dc\u06e1\u06dc\u06d8\u06e6\u06e2\u06db"

    move-object v1, v0

    goto :goto_0

    :sswitch_9
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const-string v1, "\u06eb\u06e8\u06dc\u06d8\u06e6\u06da\u06e8\u06e8\u06e1\u06df\u06e7\u06d9\u06e5\u06d8\u06d6\u06e8\u06e2\u06e6\u06d7\u06d7\u06d6\u06e0\u06eb\u06e7\u06df\u06e1\u06e2\u06e8\u06e6\u06e5\u06e2\u06ec\u06e8\u06e2\u06e6\u06d8\u06db\u06e5\u06eb\u06e7\u06e7\u06e5\u06d8\u06e6\u06db\u06d7\u06db\u06df\u06d8\u06da\u06e2\u06e8\u06d8\u06df\u06e5\u06df\u06d8\u06db\u06e5\u06d8"

    move-object v8, v0

    goto :goto_0

    :sswitch_a
    iget v0, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->Ooooooo:I

    int-to-double v0, v0

    const-wide v12, 0x3fe6666666666666L    # 0.7

    mul-double/2addr v0, v12

    iget-object v3, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->OooooOo:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-double v12, v3

    sub-double/2addr v0, v12

    double-to-int v0, v0

    iput v0, v8, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    const-string v0, "\u06e6\u06db\u06db\u06e5\u06d6\u06dc\u06e0\u06e8\u06d8\u06e7\u06da\u06dc\u06d8\u06e8\u06ec\u06d6\u06d8\u06e4\u06e4\u06d9\u06ec\u06e6\u06e5\u06e0\u06eb\u06ec\u06e8\u06d7\u06df\u06db\u06e5\u06d8\u06da\u06e7\u06dc\u06d6\u06d8\u06e6\u06d8\u06e7\u06d8\u06e8\u06d8\u06e5\u06e1\u06d8\u06e1\u06d9\u06e2\u06ec\u06e6\u06d8\u06dc\u06e6\u06df\u06db\u06d9\u06e6\u06d8"

    move-object v1, v0

    goto/16 :goto_0

    :sswitch_b
    iget v0, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->o0OoOo0:I

    int-to-double v0, v0

    const-wide v12, 0x3fc999999999999aL    # 0.2

    mul-double/2addr v0, v12

    double-to-int v0, v0

    iput v0, v8, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    const-string v0, "\u06e8\u06e5\u06eb\u06df\u06e1\u06e8\u06d8\u06d8\u06d6\u06d8\u06d8\u06d6\u06e1\u06e1\u06d8\u06e5\u06e2\u06e7\u06e7\u06db\u06df\u06d7\u06da\u06e7\u06db\u06d7\u06d6\u06ec\u06e0\u06ec\u06eb\u06e0\u06e8\u06db\u06e6\u06d6\u06d9\u06df\u06e1\u06d8"

    move-object v1, v0

    goto/16 :goto_0

    :sswitch_c
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->OooooOo:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v0, "\u06d9\u06d7\u06d6\u06d8\u06d8\u06e2\u06d9\u06e6\u06e8\u06e6\u06db\u06d8\u06e7\u06d7\u06eb\u06e8\u06e1\u06e6\u06d8\u06e2\u06e8\u06eb\u06d6\u06e2\u06db\u06e2\u06d9\u06eb\u06da\u06e2\u06e8\u06d8\u06eb\u06d7\u06e2\u06ec\u06e0\u06e4\u06e7\u06e6\u06eb\u06e5\u06e4\u06d9\u06db\u06da\u06ec\u06ec\u06dc\u06e2"

    move-object v1, v0

    goto/16 :goto_0

    :sswitch_d
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->OooooOo:Landroid/view/View;

    invoke-virtual {v7, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const-string v0, "\u06e5\u06e4\u06e5\u06e0\u06ec\u06d6\u06e1\u06ec\u06dc\u06d8\u06e0\u06db\u06e1\u06e4\u06da\u06e1\u06e7\u06da\u06e8\u06d8\u06db\u06e7\u06dc\u06d8\u06da\u06da\u06e0\u06e1\u06d8\u06d9\u06da\u06d8\u06e8\u06d8\u06d6\u06e5\u06e6\u06d8\u06db\u06e4\u06e2"

    move-object v1, v0

    goto/16 :goto_0

    :sswitch_e
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->OooooOo:Landroid/view/View;

    const v1, 0x7f090456

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "\u06db\u06dc\u06e1\u06d8\u06dc\u06e6\u06d8\u06ec\u06d6\u06d6\u06e6\u06ec\u06d9\u06e1\u06e8\u06e4\u06e0\u06df\u06eb\u06e2\u06e4\u06e8\u06e4\u06d6\u06e6\u06e8\u06d6\u06e8\u06d7\u06df\u06e8\u06d8"

    move-object v6, v0

    goto/16 :goto_0

    :sswitch_f
    new-instance v0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$OooO00o;

    invoke-static {}, Lz2/x4;->OooO0O0()Lz2/x4;

    move-result-object v1

    const-string v2, "sp_key_setting_auto_run_script_countdown"

    const/4 v3, 0x5

    invoke-virtual {v1, v2, v3}, Lz2/x4;->OooO0OO(Ljava/lang/String;I)I

    move-result v1

    int-to-long v2, v1

    mul-long/2addr v2, v4

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$OooO00o;-><init>(Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;JJLandroid/widget/TextView;Landroid/view/ViewGroup;)V

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    move-result-object v2

    const-string v0, "\u06d8\u06e2\u06da\u06d6\u06df\u06e7\u06df\u06ec\u06d7\u06df\u06e7\u06e5\u06d6\u06e7\u06db\u06e5\u06e6\u06e8\u06d8\u06e1\u06e6\u06e7\u06d8\u06db\u06e2\u06e1\u06d8\u06e7\u06e4\u06e6\u06d8\u06d7\u06e1\u06d9\u06da\u06d8\u06e2\u06e7\u06e0\u06da\u06dc\u06e4\u06d6\u06d8\u06d8\u06e0\u06e6\u06d8"

    move-object v1, v0

    goto/16 :goto_0

    :sswitch_10
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->OooooOo:Landroid/view/View;

    const v1, 0x7f09031c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$OooO0O0;

    invoke-direct {v1, p0, v2, v7}, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$OooO0O0;-><init>(Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;Landroid/os/CountDownTimer;Landroid/view/ViewGroup;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "\u06ec\u06d9\u06ec\u06e8\u06df\u06e1\u06d8\u06d6\u06df\u06e6\u06d8\u06e8\u06d6\u06dc\u06d8\u06e5\u06e1\u06da\u06d6\u06e2\u06d6\u06d8\u06e5\u06d8\u06eb\u06d7\u06e2\u06e7\u06d6\u06e1\u06d8\u06ec\u06e6\u06e7\u06d6\u06da\u06e2\u06e0\u06e4\u06e2\u06db\u06e6\u06ec\u06dc\u06e7\u06e5"

    move-object v1, v0

    goto/16 :goto_0

    :sswitch_11
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->OooooOo:Landroid/view/View;

    new-instance v1, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$OooO0OO;

    invoke-direct {v1, p0}, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$OooO0OO;-><init>(Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const-string v0, "\u06eb\u06d6\u06d7\u06db\u06db\u06e5\u06dc\u06dc\u06ec\u06d6\u06db\u06e2\u06df\u06dc\u06e8\u06d8\u06d7\u06e8\u06d7\u06e0\u06e0\u06e0\u06d9\u06e1\u06e7\u06e2\u06ec\u06e4\u06e6\u06dc\u06e8"

    move-object v1, v0

    goto/16 :goto_0

    :sswitch_12
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7cfda12c -> :sswitch_6
        -0x77ae5a62 -> :sswitch_0
        -0x65d222a6 -> :sswitch_7
        -0x3e6425f5 -> :sswitch_d
        -0x3d59e881 -> :sswitch_4
        -0x36296e16 -> :sswitch_a
        -0xe31c869 -> :sswitch_8
        -0xc5efed8 -> :sswitch_f
        -0x6a1f0e3 -> :sswitch_e
        0xa9092dc -> :sswitch_b
        0x1c375f37 -> :sswitch_5
        0x1fd1db23 -> :sswitch_9
        0x23f368b6 -> :sswitch_12
        0x38d4e3c3 -> :sswitch_10
        0x464457c9 -> :sswitch_3
        0x4d3710eb -> :sswitch_2
        0x604b00c6 -> :sswitch_c
        0x7063a263 -> :sswitch_1
        0x7e8bf727 -> :sswitch_11
    .end sparse-switch
.end method

.method private OoooO0()V
    .locals 8

    const/16 v7, 0x3f1

    const/4 v1, 0x0

    const-string v0, "\u06d8\u06e5\u06dc\u06d8\u06e4\u06e0\u06e0\u06db\u06e4\u06e0\u06eb\u06dc\u06eb\u06db\u06d9\u06e7\u06d6\u06e7\u06e5\u06e5\u06db\u06d6\u06e2\u06e8\u06d8\u06e1\u06e6\u06e8\u06d8\u06df\u06dc\u06e2\u06e7\u06d7\u06e6\u06d8\u06e0\u06da\u06e2"

    move-object v6, v1

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x2c5

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x17d

    const/16 v2, 0x33f

    const v3, 0x41ccd81

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d8\u06e5\u06ec\u06d9\u06e0\u06db\u06e8\u06df\u06e6\u06da\u06e5\u06e5\u06d8\u06dc\u06d7\u06e0\u06d9\u06d8\u06e5\u06e1\u06e8\u06da\u06dc\u06e8\u06d9\u06e6\u06e6\u06dc\u06d8\u06d8\u06d7\u06df\u06e5\u06db\u06d8\u06ec\u06e7\u06e0"

    goto :goto_0

    :sswitch_1
    const v1, -0x2b500a25

    const-string v0, "\u06e4\u06e0\u06e8\u06e6\u06d7\u06e8\u06e6\u06e1\u06e1\u06d7\u06e4\u06e0\u06e5\u06d6\u06db\u06ec\u06d8\u06e0\u06d7\u06df\u06e7\u06e5\u06d8\u06ec\u06df\u06e6\u06d8\u06db\u06dc\u06e8\u06d8\u06ec\u06ec\u06d7\u06e8\u06d9\u06df\u06e0\u06d6\u06e7\u06ec\u06e5\u06e6\u06d8\u06e0\u06ec\u06e1\u06d8\u06e5\u06e7\u06d6\u06d8"

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v2, v1

    sparse-switch v2, :sswitch_data_1

    goto :goto_1

    :sswitch_2
    const-string v0, "\u06df\u06e2\u06e0\u06e6\u06ec\u06d6\u06db\u06e5\u06e2\u06dc\u06d7\u06df\u06d8\u06e1\u06e6\u06d6\u06e4\u06d6\u06db\u06e7\u06d9\u06d7\u06df\u06db\u06ec\u06da\u06e4\u06e5\u06df\u06e4\u06e4\u06e0\u06eb\u06d8\u06e0"

    goto :goto_0

    :sswitch_3
    const-string v0, "\u06eb\u06d9\u06e7\u06eb\u06e8\u06e7\u06d8\u06d9\u06e4\u06e5\u06d8\u06e6\u06e8\u06e0\u06db\u06e7\u06ec\u06d7\u06df\u06e0\u06e4\u06d8\u06d8\u06e1\u06e6\u06d6\u06db\u06e4\u06d6\u06e8\u06d8\u06e6\u06d8"

    goto :goto_1

    :sswitch_4
    const v2, -0x187964a7

    const-string v0, "\u06e8\u06da\u06e5\u06d8\u06d7\u06e8\u06e7\u06d8\u06e0\u06d8\u06e8\u06da\u06d9\u06df\u06e1\u06eb\u06e8\u06e4\u06d8\u06e7\u06da\u06d6\u06e6\u06d8\u06e1\u06d7\u06e6\u06d8\u06e6\u06df\u06eb\u06e0\u06d6\u06df\u06da\u06d6\u06d6\u06e2\u06e1\u06d6\u06da\u06e8\u06d8\u06dc\u06e4\u06e6"

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v2

    sparse-switch v3, :sswitch_data_2

    goto :goto_2

    :sswitch_5
    const-string v0, "\u06dc\u06e1\u06dc\u06e2\u06d6\u06db\u06d9\u06ec\u06da\u06d6\u06e2\u06e5\u06d8\u06eb\u06d6\u06e8\u06db\u06d9\u06e8\u06e4\u06d7\u06eb\u06e1\u06e6\u06e4\u06e7\u06e1\u06d7\u06eb\u06d9\u06d7"

    goto :goto_1

    :cond_0
    const-string v0, "\u06e5\u06ec\u06e1\u06d8\u06df\u06e8\u06d8\u06da\u06e2\u06e8\u06e7\u06d9\u06e4\u06e6\u06e6\u06e4\u06d9\u06ec\u06e6\u06e0\u06db\u06e7\u06e0\u06df\u06d6\u06e8\u06e0\u06e7\u06d8\u06da\u06e0"

    goto :goto_2

    :sswitch_6
    invoke-static {p0}, Lz2/t4;->OooOO0(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u06d7\u06e2\u06dc\u06e4\u06eb\u06d8\u06d8\u06e6\u06e1\u06d8\u06eb\u06e6\u06d8\u06e0\u06db\u06e0\u06ec\u06d6\u06e8\u06d6\u06dc\u06d8\u06e5\u06da\u06dc\u06d8\u06d7\u06e1\u06e8\u06e8\u06e2\u06ec\u06e8\u06dc\u06e6\u06d8\u06d8\u06d7\u06e5\u06ec\u06e6\u06d8\u06ec\u06eb\u06eb\u06da\u06e4\u06e2\u06e4\u06df\u06da\u06d6\u06e1\u06d7\u06db"

    goto :goto_2

    :sswitch_7
    const-string v0, "\u06d6\u06e1\u06d8\u06d8\u06e7\u06dc\u06e6\u06d8\u06d8\u06d9\u06dc\u06d8\u06d6\u06e5\u06d8\u06d8\u06d9\u06e6\u06e6\u06d8\u06df\u06e8\u06e1\u06d8\u06e4\u06e8\u06dc\u06e8\u06ec\u06e5\u06d8\u06eb\u06e0\u06e0\u06e0\u06e5\u06e5\u06d8\u06ec\u06d8\u06e4\u06eb\u06e0\u06d6\u06ec\u06ec\u06e8\u06ec\u06e4\u06e8\u06d8\u06e0\u06e7\u06d8\u06d8\u06df\u06e1\u06d8\u06d8"

    goto :goto_2

    :sswitch_8
    const-string v0, "\u06d8\u06eb\u06e1\u06db\u06db\u06e8\u06d8\u06dc\u06e8\u06dc\u06e6\u06dc\u06d8\u06da\u06d7\u06e8\u06e5\u06eb\u06e7\u06d9\u06ec\u06d7\u06d7\u06dc\u06ec\u06e7\u06eb\u06e8\u06d8\u06d9\u06ec\u06e6"

    goto :goto_1

    :sswitch_9
    const-string v0, "\u06e2\u06df\u06e0\u06ec\u06ec\u06e6\u06d6\u06d6\u06e1\u06d8\u06e6\u06e0\u06e5\u06e8\u06e2\u06dc\u06dc\u06e4\u06d6\u06d8\u06e6\u06e2\u06e8\u06ec\u06db\u06e5\u06d8\u06db\u06df\u06db\u06df\u06d8\u06ec\u06e6\u06ec\u06e1\u06d7\u06ec\u06e7\u06ec\u06d6\u06db\u06db\u06db\u06e5"

    goto :goto_0

    :sswitch_a
    invoke-static {}, Lz2/b7;->OooO0Oo()Lz2/b7;

    move-result-object v0

    invoke-virtual {v0}, Lz2/b7;->OooO0oO()Lcom/cyjh/elfin/entity/Script;

    move-result-object v1

    const-string v0, "\u06e2\u06e4\u06d8\u06d8\u06ec\u06d6\u06ec\u06e6\u06e1\u06d7\u06d8\u06ec\u06e4\u06da\u06e8\u06d8\u06df\u06e8\u06d8\u06dc\u06e6\u06d8\u06d8\u06e5\u06e2\u06d9\u06df\u06eb\u06eb\u06e1\u06e0\u06d9\u06d9\u06e4\u06dc\u06d8\u06e0\u06d9\u06e0\u06d8\u06d9\u06d7\u06ec\u06e7\u06da"

    move-object v6, v1

    goto :goto_0

    :sswitch_b
    invoke-static {}, Lz2/dh;->OooOo()Lz2/dh;

    move-result-object v0

    const v1, 0x7f100132

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6}, Lcom/cyjh/elfin/entity/Script;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lz2/gc;->OooO0OO()Lz2/gc;

    move-result-object v1

    iget-object v1, v1, Lz2/gc;->OooO0O0:Lcom/cyjh/http/bean/request/DeviceInfo;

    iget-object v4, v1, Lcom/cyjh/http/bean/request/DeviceInfo;->DeviceId:Ljava/lang/String;

    invoke-static {}, Lz2/ii;->OooO0oo()Z

    move-result v5

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lz2/dh;->OooO(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "\u06e6\u06d8\u06e0\u06d7\u06e2\u06e8\u06d8\u06e0\u06eb\u06dc\u06d8\u06df\u06d7\u06e1\u06d8\u06e4\u06df\u06e6\u06d9\u06ec\u06e8\u06d8\u06e5\u06e5\u06e8\u06d8\u06e8\u06dc\u06db\u06d6\u06e1\u06e5\u06ec\u06da\u06db\u06d6\u06d6\u06e1\u06d8\u06da\u06e6\u06e7\u06e6\u06d9\u06e8\u06d8\u06e5\u06e0\u06e6\u06d8\u06d7\u06dc\u06d7\u06ec\u06e2\u06d6\u06d8\u06d8\u06da\u06e2\u06df\u06eb\u06e8"

    goto :goto_0

    :sswitch_c
    const v1, 0x366c86fb

    const-string v0, "\u06d6\u06eb\u06e7\u06e0\u06db\u06db\u06e2\u06dc\u06e2\u06d7\u06ec\u06e8\u06ec\u06da\u06e6\u06d8\u06e8\u06e5\u06df\u06e7\u06da\u06d6\u06d8\u06ec\u06df\u06dc\u06d8\u06e1\u06dc\u06e4\u06e7\u06e4\u06d6"

    :goto_3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v2, v1

    sparse-switch v2, :sswitch_data_3

    goto :goto_3

    :sswitch_d
    const v2, 0x4ab601fa    # 5964029.0f

    const-string v0, "\u06e5\u06ec\u06dc\u06dc\u06df\u06d6\u06d8\u06db\u06db\u06db\u06d9\u06d6\u06d6\u06e1\u06d6\u06da\u06e8\u06d7\u06e6\u06eb\u06e4\u06e2\u06d6\u06e4\u06df\u06e6\u06d7\u06e6\u06d8\u06df\u06e0\u06e8\u06d8\u06e4\u06e7\u06db\u06db\u06e1\u06e4"

    :goto_4
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v2

    sparse-switch v3, :sswitch_data_4

    goto :goto_4

    :sswitch_e
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->ooOO:Landroid/os/Handler;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "\u06e0\u06e0\u06e8\u06e8\u06e1\u06e5\u06db\u06dc\u06dc\u06d8\u06e4\u06e2\u06e8\u06d8\u06e5\u06d9\u06ec\u06e6\u06e7\u06e4\u06ec\u06ec\u06e6\u06d8\u06e2\u06d8\u06dc\u06d8\u06d6\u06e6\u06dc\u06df\u06eb\u06d8\u06d6\u06e8\u06e8\u06d8\u06df\u06e4\u06e0"

    goto :goto_4

    :sswitch_f
    const-string v0, "\u06db\u06da\u06e1\u06d8\u06db\u06e1\u06df\u06eb\u06e6\u06e6\u06e1\u06e1\u06db\u06e6\u06e2\u06ec\u06e8\u06e0\u06eb\u06e2\u06e8\u06da\u06e1\u06e7\u06db\u06e5\u06db\u06d7\u06e6\u06e7\u06df\u06e0\u06d6\u06d8\u06da\u06d7\u06e0\u06e6\u06e7\u06e1\u06db\u06e8"

    goto :goto_3

    :cond_1
    const-string v0, "\u06ec\u06e1\u06d9\u06ec\u06e0\u06e2\u06eb\u06dc\u06df\u06e7\u06dc\u06d8\u06e0\u06d8\u06da\u06e7\u06e5\u06e8\u06d8\u06d6\u06e4\u06d7\u06eb\u06eb\u06e1\u06e1\u06e7\u06eb\u06eb\u06e5\u06d9"

    goto :goto_4

    :sswitch_10
    const-string v0, "\u06eb\u06e1\u06e2\u06db\u06e0\u06e0\u06e0\u06e5\u06eb\u06e7\u06d7\u06d6\u06df\u06e6\u06d8\u06e4\u06e6\u06da\u06e5\u06d6\u06e5\u06e7\u06e4\u06e5\u06ec\u06e4\u06e1\u06d8\u06e8\u06e0\u06d6\u06d8\u06e7\u06e6\u06e5\u06d8\u06d9\u06d8\u06e7\u06d8"

    goto :goto_4

    :sswitch_11
    const-string v0, "\u06da\u06d9\u06e0\u06e2\u06eb\u06db\u06e5\u06e5\u06e1\u06da\u06ec\u06e8\u06d8\u06db\u06d7\u06eb\u06e8\u06e8\u06e2\u06e4\u06e5\u06d8\u06e8\u06d6\u06df\u06da\u06d7\u06df\u06e1\u06d8\u06e8\u06db\u06e7\u06e4\u06e7\u06e1\u06e2\u06d7\u06e7\u06ec\u06e7"

    goto :goto_3

    :sswitch_12
    const-string v0, "\u06d7\u06da\u06d8\u06d7\u06e8\u06dc\u06d8\u06e2\u06e4\u06e6\u06dc\u06d7\u06e2\u06e0\u06e6\u06ec\u06d6\u06e7\u06db\u06e6\u06d8\u06d8\u06e1\u06e6\u06ec\u06e5\u06e8\u06d8\u06e1\u06da\u06e8\u06e8\u06da\u06ec\u06e1\u06e4\u06e5\u06dc\u06e2\u06e0\u06e7\u06d8\u06d9\u06ec\u06e7\u06ec\u06e6\u06e4"

    goto :goto_3

    :sswitch_13
    const-string v0, "\u06e7\u06e1\u06d6\u06d8\u06ec\u06e6\u06dc\u06d6\u06e1\u06e6\u06e2\u06d7\u06db\u06d8\u06e6\u06e8\u06d8\u06eb\u06e6\u06e1\u06d8\u06e8\u06da\u06e8\u06d8\u06d7\u06e0\u06e8\u06db\u06d9\u06e1\u06d8\u06e2\u06e5\u06e6\u06d8"

    goto/16 :goto_0

    :sswitch_14
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->ooOO:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v7, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    const-string v0, "\u06d8\u06d8\u06ec\u06e4\u06e0\u06eb\u06d8\u06da\u06e1\u06d8\u06e0\u06eb\u06e7\u06d9\u06d8\u06d7\u06d9\u06e8\u06dc\u06e5\u06da\u06d7\u06d6\u06eb\u06e2\u06d8\u06df\u06e4\u06da\u06e0\u06e8\u06d8\u06e1\u06d9\u06e1\u06d8\u06e5\u06eb\u06d6\u06e5\u06da\u06d8\u06ec\u06e8\u06e5"

    goto/16 :goto_0

    :sswitch_15
    const-string v0, "\u06d8\u06d8\u06ec\u06e4\u06e0\u06eb\u06d8\u06da\u06e1\u06d8\u06e0\u06eb\u06e7\u06d9\u06d8\u06d7\u06d9\u06e8\u06dc\u06e5\u06da\u06d7\u06d6\u06eb\u06e2\u06d8\u06df\u06e4\u06da\u06e0\u06e8\u06d8\u06e1\u06d9\u06e1\u06d8\u06e5\u06eb\u06d6\u06e5\u06da\u06d8\u06ec\u06e8\u06e5"

    goto/16 :goto_0

    :sswitch_16
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x64160355 -> :sswitch_15
        -0x492add8d -> :sswitch_b
        -0x401196cb -> :sswitch_c
        -0x26231f44 -> :sswitch_a
        0x78b8f57 -> :sswitch_0
        0x1d498560 -> :sswitch_14
        0x28b77492 -> :sswitch_16
        0x437d40f2 -> :sswitch_1
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x4e8fcc33 -> :sswitch_9
        -0x45a03043 -> :sswitch_4
        0x4cdec54a -> :sswitch_2
        0x63c491ad -> :sswitch_8
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        -0x75ae1af9 -> :sswitch_7
        0x1a281e86 -> :sswitch_5
        0x3107d193 -> :sswitch_6
        0x635997b5 -> :sswitch_3
    .end sparse-switch

    :sswitch_data_3
    .sparse-switch
        -0x24c9e8da -> :sswitch_d
        -0x1625457d -> :sswitch_15
        0x960b50e -> :sswitch_13
        0x2e1e97f2 -> :sswitch_12
    .end sparse-switch

    :sswitch_data_4
    .sparse-switch
        -0x79e43991 -> :sswitch_11
        0x2af36519 -> :sswitch_f
        0x5a689dd6 -> :sswitch_e
        0x653e0ec1 -> :sswitch_10
    .end sparse-switch
.end method

.method private OoooO00()V
    .locals 15

    const/4 v2, 0x0

    const/4 v4, 0x0

    const-string v0, "\u06e5\u06da\u06d6\u06d8\u06ec\u06e8\u06e8\u06db\u06e6\u06df\u06d9\u06e8\u06eb\u06e2\u06df\u06d6\u06d8\u06e1\u06d6\u06dc\u06d8\u06d7\u06eb\u06e1\u06d8\u06da\u06e1\u06e5\u06e0\u06d9\u06da\u06da\u06e0\u06e1\u06d8\u06d7\u06e6\u06e8\u06d8\u06e2\u06ec\u06e8\u06d8\u06ec\u06e8\u06d9\u06e0\u06d7\u06e5\u06d8\u06df\u06e5\u06e5\u06d8\u06e5\u06d6\u06ec"

    move v1, v2

    move-object v3, v4

    move v5, v2

    move-object v6, v4

    move-object v7, v4

    move-object v8, v4

    move-object v9, v4

    move-object v10, v4

    move-object v11, v4

    move-object v12, v4

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/16 v13, 0x3b

    xor-int/2addr v4, v13

    xor-int/lit16 v4, v4, 0x248

    const/16 v13, 0x3e1

    const v14, 0x73ab85bc

    xor-int/2addr v4, v13

    xor-int/2addr v4, v14

    sparse-switch v4, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06da\u06d6\u06e1\u06d8\u06e7\u06e6\u06e7\u06d8\u06d9\u06d6\u06e6\u06d8\u06e0\u06e5\u06e2\u06e2\u06d6\u06e1\u06d8\u06d7\u06db\u06e6\u06ec\u06ec\u06e0\u06df\u06d7\u06e4\u06d8\u06d7\u06d9\u06e8\u06e6\u06d7\u06d6\u06e4\u06eb\u06e6\u06d8\u06da\u06dc\u06d6\u06dc\u06d8\u06e6\u06d9\u06dc\u06e0\u06e6\u06e4\u06e5"

    goto :goto_0

    :sswitch_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u06e6\u06ec\u06e1\u06d9\u06ec\u06e5\u06d8\u06db\u06e6\u06e8\u06d9\u06db\u06e5\u06e2\u06ec\u06e8\u06e8\u06e1\u06d9\u06da\u06e5\u06e6\u06d8\u06e5\u06dc\u06d9\u06e1\u06e7\u06d8\u06e7\u06e0\u06e1\u06da\u06e2\u06d6\u06d8\u06e4\u06e7\u06df"

    move-object v12, v4

    goto :goto_0

    :sswitch_2
    invoke-static {p0}, Lz2/w3;->OooOoo0(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\u06d8\u06d7\u06e6\u06d8\u06d7\u06eb\u06d6\u06d8\u06e2\u06e8\u06da\u06e4\u06db\u06e0\u06e8\u06e8\u06d8\u06e8\u06d6\u06dc\u06d8\u06e8\u06d6\u06d8\u06d7\u06e4\u06df\u06db\u06e4\u06e6\u06e2\u06e0\u06e6\u06e6\u06e7\u06eb\u06df\u06d8\u06e1\u06e0\u06e5\u06e0\u06d6\u06e4\u06d8"

    goto :goto_0

    :sswitch_3
    const-string v0, "*"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u06da\u06e6\u06dc\u06d8\u06e6\u06e0\u06e1\u06e8\u06eb\u06e5\u06d9\u06e0\u06d7\u06df\u06eb\u06df\u06e5\u06eb\u06eb\u06e8\u06d6\u06d6\u06d8\u06ec\u06e8\u06e0\u06d8\u06e4\u06e5\u06d8\u06db\u06e5\u06d7\u06e1\u06e1\u06dc\u06da\u06da\u06ec\u06d7\u06db\u06e6\u06d8\u06e0\u06ec\u06df\u06da\u06df\u06e1\u06d8\u06e0\u06d8\u06e5\u06e1\u06e1\u06e4\u06e7\u06ec"

    goto :goto_0

    :sswitch_4
    invoke-static {p0}, Lz2/w3;->OooOoo0(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\u06e0\u06d8\u06e6\u06d8\u06e1\u06e4\u06d8\u06ec\u06e1\u06d9\u06dc\u06db\u06e0\u06e6\u06e4\u06e8\u06d8\u06db\u06e1\u06e0\u06df\u06e4\u06d9\u06d9\u06e7\u06eb\u06e6\u06e4\u06e2\u06d8\u06dc\u06e0\u06e4\u06e4\u06e6\u06d8\u06e7\u06e6\u06e5"

    goto :goto_0

    :sswitch_5
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v0, "\u06e4\u06e1\u06d9\u06e5\u06da\u06e5\u06d8\u06d9\u06e1\u06e6\u06ec\u06d6\u06d8\u06d8\u06df\u06eb\u06e8\u06e5\u06d6\u06e8\u06d8\u06e5\u06e8\u06d8\u06d6\u06d9\u06df\u06e1\u06df\u06da\u06e6\u06d7\u06d8\u06d8\u06ec\u06e5\u06e6\u06e4\u06e5\u06db\u06da\u06db\u06d6\u06d8\u06ec\u06e7\u06d7"

    move-object v11, v4

    goto :goto_0

    :sswitch_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u06e2\u06e0\u06dc\u06e4\u06ec\u06e5\u06d8\u06ec\u06d6\u06da\u06eb\u06dc\u06d6\u06d8\u06dc\u06d6\u06e6\u06d8\u06e4\u06e1\u06dc\u06d8\u06df\u06ec\u06e8\u06d8\u06dc\u06e8\u06e8\u06d8\u06e1\u06da\u06d6\u06d9\u06e8\u06d7\u06db\u06e6\u06d9\u06ec\u06e6\u06e7\u06d8\u06e0\u06e8\u06e8\u06d8\u06d8\u06d6"

    move-object v10, v4

    goto :goto_0

    :sswitch_7
    invoke-static {p0}, Lz2/w3;->OooOoo0(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\u06e7\u06d8\u06e5\u06d6\u06ec\u06eb\u06dc\u06df\u06e2\u06e7\u06da\u06e4\u06ec\u06e6\u06e1\u06db\u06e6\u06e2\u06d9\u06e8\u06dc\u06e6\u06e1\u06d8\u06e6\u06d8\u06da\u06d9\u06d7\u06d7"

    goto :goto_0

    :sswitch_8
    const-string v0, "*"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u06e8\u06d7\u06d7\u06e2\u06ec\u06e1\u06d9\u06db\u06dc\u06d8\u06e7\u06eb\u06e0\u06df\u06e5\u06df\u06e5\u06dc\u06d8\u06e5\u06d7\u06e8\u06d8\u06e6\u06e6\u06e6\u06d9\u06db\u06da\u06d7\u06e6\u06e2"

    goto :goto_0

    :sswitch_9
    invoke-static {p0}, Lz2/w3;->OooOoo0(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\u06e1\u06e5\u06d9\u06d9\u06da\u06e6\u06e4\u06db\u06db\u06d6\u06ec\u06da\u06d9\u06df\u06d9\u06d8\u06e6\u06e1\u06d9\u06ec\u06e2\u06e7\u06e0\u06db\u06e4\u06e6\u06e4\u06dc\u06e4\u06d6\u06d8\u06d9\u06ec\u06dc\u06d6\u06e5\u06df\u06d9\u06e8\u06eb\u06eb\u06da\u06e6\u06d8"

    goto :goto_0

    :sswitch_a
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v0, "\u06e6\u06d8\u06e1\u06d8\u06db\u06d8\u06e8\u06d8\u06db\u06eb\u06da\u06ec\u06eb\u06d8\u06d8\u06d8\u06e2\u06d6\u06d8\u06d6\u06e4\u06dc\u06d8\u06df\u06eb\u06e6\u06d8\u06e2\u06e4\u06d7\u06e7\u06d9\u06e5\u06d8\u06dc\u06d8\u06e1\u06e7\u06d6\u06d8\u06d6\u06db\u06e8\u06d8\u06e0\u06d8\u06e5\u06eb\u06d8\u06e5\u06d8\u06e6\u06ec\u06d7\u06eb\u06db\u06df"

    move-object v9, v4

    goto :goto_0

    :sswitch_b
    const v0, 0x7f1000cf

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v0, "\u06d7\u06e8\u06d6\u06ec\u06da\u06e6\u06d8\u06e5\u06d6\u06e8\u06d8\u06d6\u06d9\u06e5\u06dc\u06db\u06e0\u06e7\u06d6\u06d8\u06e0\u06e6\u06e0\u06e1\u06dc\u06d8\u06d8\u06df\u06d9\u06e2\u06ec\u06d8\u06e1\u06d8\u06e0\u06eb\u06e6\u06df\u06d8\u06d8\u06e7\u06d6\u06e0\u06ec\u06ec\u06df\u06d7\u06e6\u06dc\u06e4\u06d6\u06d8\u06e2\u06da\u06d6\u06e0\u06e6\u06e0"

    move-object v8, v4

    goto/16 :goto_0

    :sswitch_c
    const v4, 0x15679d5b

    const-string v0, "\u06db\u06e2\u06e8\u06d8\u06e1\u06da\u06e5\u06e4\u06e0\u06e4\u06e1\u06e6\u06d8\u06d6\u06dc\u06db\u06e2\u06e1\u06d6\u06e5\u06d6\u06df\u06e0\u06eb\u06eb\u06e1\u06db\u06e1\u06e5\u06e8\u06d6\u06eb\u06d8\u06d9\u06e2\u06dc\u06e4\u06e2\u06d7\u06df\u06d7\u06ec\u06df\u06e0\u06d8\u06d6\u06e2\u06db"

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v13

    xor-int/2addr v13, v4

    sparse-switch v13, :sswitch_data_1

    goto :goto_1

    :sswitch_d
    const-string v0, "\u06e7\u06d8\u06e0\u06eb\u06e2\u06e0\u06da\u06da\u06ec\u06e2\u06e0\u06e5\u06d8\u06d8\u06e7\u06dc\u06da\u06dc\u06e5\u06e4\u06da\u06e2\u06e8\u06dc\u06db\u06e8\u06e6\u06e6\u06d6\u06ec\u06d9\u06dc\u06e8\u06e6\u06e6\u06da\u06e5\u06e7\u06d9\u06d8\u06e7\u06dc\u06e6\u06e7\u06d9\u06e6\u06d6\u06e0\u06d7"

    goto/16 :goto_0

    :sswitch_e
    const-string v0, "\u06e4\u06df\u06e6\u06d8\u06db\u06e0\u06db\u06e2\u06e1\u06dc\u06e8\u06e7\u06e8\u06d8\u06d8\u06d7\u06e0\u06d6\u06e1\u06e0\u06e7\u06d8\u06e0\u06eb\u06da\u06d6\u06d8\u06e7\u06d7\u06d8\u06d8\u06eb\u06eb\u06d8\u06e5\u06e4\u06da\u06db\u06ec\u06e8\u06e8\u06e6\u06e2\u06ec\u06e5\u06e5"

    goto :goto_1

    :sswitch_f
    const v13, 0x3bb89713

    const-string v0, "\u06e6\u06e0\u06e8\u06e8\u06ec\u06d6\u06e1\u06e2\u06d9\u06e6\u06e5\u06d6\u06e5\u06d9\u06e4\u06e7\u06ec\u06e0\u06e4\u06e4\u06d6\u06e6\u06e1\u06e8\u06e8\u06d8\u06e7\u06e2\u06db\u06eb\u06eb\u06dc\u06d8\u06e4\u06e1\u06e1\u06d8\u06e0\u06e0\u06ec\u06e0\u06e5\u06eb\u06d8\u06ec\u06d8\u06d8\u06d9\u06d8\u06e1\u06d7\u06db\u06df\u06e7\u06d7\u06e5"

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v14

    xor-int/2addr v14, v13

    sparse-switch v14, :sswitch_data_2

    goto :goto_2

    :sswitch_10
    invoke-virtual {v8, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "\u06df\u06d7\u06e8\u06ec\u06e7\u06df\u06e0\u06d9\u06df\u06da\u06d9\u06d9\u06db\u06e4\u06e6\u06d8\u06e7\u06e8\u06eb\u06d6\u06e8\u06d8\u06eb\u06e6\u06d8\u06e6\u06d9\u06e4\u06eb\u06eb\u06e2\u06e6\u06e5\u06e6\u06d8\u06e8\u06e0\u06e7\u06e5\u06e7\u06e5\u06d7\u06e2\u06e8\u06d7\u06e4\u06da\u06eb\u06e0\u06da\u06e2\u06e1\u06d6\u06e4\u06e0"

    goto :goto_2

    :cond_0
    const-string v0, "\u06e6\u06df\u06dc\u06d8\u06d8\u06ec\u06d7\u06ec\u06e1\u06db\u06e6\u06d8\u06ec\u06e1\u06d9\u06e6\u06d8\u06e8\u06d8\u06d8\u06d8\u06eb\u06e1\u06d6\u06d9\u06e4\u06e6\u06d8\u06d9\u06e8\u06e6\u06e2\u06e8\u06d7\u06e1\u06ec\u06db\u06ec\u06db\u06e4\u06ec\u06df\u06d7\u06e5\u06d8\u06d9"

    goto :goto_2

    :sswitch_11
    const-string v0, "\u06eb\u06d7\u06eb\u06e5\u06d8\u06da\u06da\u06eb\u06e8\u06e7\u06e0\u06d6\u06d8\u06df\u06d8\u06e5\u06d8\u06df\u06d7\u06d6\u06d8\u06e0\u06e2\u06d9\u06e4\u06db\u06d9\u06d9\u06d6\u06e5\u06d8\u06d8\u06d7\u06d9\u06db\u06d7\u06da\u06d9\u06db\u06e8\u06d9\u06d6\u06e0\u06e2\u06eb\u06e6\u06eb\u06e6\u06d6\u06d8\u06e5\u06e0\u06e6\u06d9\u06e1\u06d9\u06e6\u06e8"

    goto :goto_2

    :sswitch_12
    const-string v0, "\u06e2\u06e0\u06e1\u06e4\u06d8\u06dc\u06e8\u06ec\u06db\u06e0\u06eb\u06df\u06d6\u06e0\u06db\u06e6\u06d8\u06e4\u06d6\u06e5\u06e1\u06d7\u06d7\u06e5\u06da\u06dc\u06d8\u06d6\u06d8\u06dc\u06e6\u06d7\u06e1\u06ec\u06e5\u06d6\u06e7\u06d8\u06dc\u06eb\u06e4\u06d9\u06dc\u06d6\u06e2\u06e1\u06e1\u06d8\u06ec\u06e1\u06e1\u06e7\u06d6"

    goto :goto_1

    :sswitch_13
    const-string v0, "\u06da\u06d9\u06e0\u06e6\u06dc\u06e8\u06d8\u06d6\u06e5\u06d6\u06d8\u06df\u06eb\u06df\u06d9\u06df\u06da\u06e7\u06e1\u06d9\u06e2\u06e6\u06e2\u06d6\u06e4\u06e2\u06d9\u06ec\u06e6\u06da\u06e4\u06e6\u06e7\u06eb\u06df\u06df\u06ec\u06dc\u06d8\u06e0\u06e8\u06e4\u06da\u06e0\u06e2\u06e8\u06e1\u06e1\u06eb\u06e6\u06df\u06e6\u06d9\u06d7\u06e5\u06e5"

    goto :goto_1

    :sswitch_14
    const v4, -0x20c6f383

    const-string v0, "\u06d7\u06e2\u06d6\u06db\u06e4\u06e8\u06d8\u06ec\u06d7\u06d7\u06da\u06e5\u06d6\u06db\u06eb\u06e8\u06e2\u06d7\u06d8\u06e8\u06e6\u06d6\u06d8\u06d6\u06e1\u06e5\u06d8\u06e8\u06e4\u06e0\u06e1\u06dc\u06db\u06d8\u06d7\u06e4\u06ec\u06d8\u06e5\u06d8"

    :goto_3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v13

    xor-int/2addr v13, v4

    sparse-switch v13, :sswitch_data_3

    goto :goto_3

    :sswitch_15
    const v13, -0x7aaeeef0

    const-string v0, "\u06e7\u06e2\u06e1\u06e6\u06e4\u06d9\u06db\u06d8\u06e7\u06d8\u06e7\u06d8\u06e1\u06d8\u06db\u06eb\u06d9\u06dc\u06d8\u06db\u06e6\u06e8\u06eb\u06e2\u06da\u06da\u06e4\u06df\u06e6\u06e5\u06dc\u06eb\u06e0\u06df\u06d6\u06d6\u06e5\u06e1\u06df\u06dc\u06d8\u06da\u06e0\u06e8\u06e4\u06e8\u06e5\u06d6\u06da\u06dc\u06e6\u06e2\u06da\u06dc\u06d8\u06d6"

    :goto_4
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v14

    xor-int/2addr v14, v13

    sparse-switch v14, :sswitch_data_4

    goto :goto_4

    :sswitch_16
    const-string v0, "\u06d9\u06dc\u06e1\u06d9\u06d7\u06e1\u06d9\u06e4\u06e7\u06e7\u06d7\u06db\u06d7\u06e8\u06e5\u06d8\u06e6\u06eb\u06e5\u06e8\u06db\u06dc\u06e5\u06d7\u06e5\u06d8\u06ec\u06eb\u06da\u06e5\u06d6\u06df\u06e8\u06e6\u06d8\u06e6\u06e0\u06dc\u06d8\u06e5\u06e8\u06d9\u06df\u06d9\u06eb\u06e2\u06d9\u06d8\u06e4\u06e4\u06df"

    goto :goto_4

    :sswitch_17
    const-string v0, "\u06e2\u06d6\u06e2\u06d7\u06ec\u06d6\u06d8\u06eb\u06e1\u06e0\u06db\u06d6\u06e7\u06d8\u06da\u06e5\u06e6\u06d8\u06db\u06e5\u06db\u06e8\u06e4\u06e5\u06da\u06e2\u06d7\u06e6\u06e0\u06dc\u06e4\u06db\u06db\u06d7\u06db\u06d8\u06d8\u06d9\u06e6\u06e7\u06dc\u06e8\u06e5\u06db\u06d9\u06ec\u06df\u06e2\u06ec\u06d6\u06d6\u06e6\u06d8\u06d8\u06d8\u06db\u06ec\u06d8\u06d8"

    goto :goto_3

    :cond_1
    const-string v0, "\u06e0\u06df\u06e4\u06dc\u06d6\u06e8\u06e0\u06e4\u06d8\u06d8\u06d7\u06d6\u06da\u06da\u06dc\u06e6\u06d8\u06ec\u06eb\u06d6\u06e1\u06e2\u06d6\u06dc\u06e0\u06e5\u06e0\u06e7\u06eb\u06e4\u06e0\u06db\u06e7\u06e4\u06e1\u06d8\u06e0\u06d6\u06e2\u06e6\u06e6\u06db\u06da\u06df\u06eb\u06e5\u06e0\u06e7\u06ec\u06e8\u06e5\u06d8"

    goto :goto_4

    :sswitch_18
    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "\u06da\u06e1\u06e5\u06d8\u06e0\u06e5\u06eb\u06e1\u06db\u06e6\u06e5\u06eb\u06e2\u06ec\u06e7\u06e2\u06e0\u06eb\u06dc\u06e2\u06e5\u06e0\u06ec\u06eb\u06d6\u06d8\u06eb\u06e8\u06e7\u06dc\u06db\u06ec\u06e8\u06ec\u06da\u06df\u06e7\u06e1\u06d8"

    goto :goto_4

    :sswitch_19
    const-string v0, "\u06d8\u06df\u06e8\u06df\u06d6\u06d8\u06d7\u06e2\u06eb\u06eb\u06e7\u06e6\u06d8\u06e4\u06e6\u06eb\u06e4\u06e5\u06d8\u06dc\u06d9\u06e5\u06e4\u06eb\u06d8\u06d8\u06ec\u06dc\u06d6\u06e6\u06da\u06d8\u06e7\u06e5\u06e0\u06e8\u06d6\u06e1\u06d8\u06ec\u06dc\u06e0\u06da\u06e1\u06e5\u06d8\u06e2\u06e8\u06d9\u06dc\u06ec\u06d6"

    goto :goto_3

    :sswitch_1a
    const-string v0, "\u06d9\u06e7\u06e8\u06e7\u06eb\u06e8\u06da\u06e8\u06d7\u06df\u06e2\u06e5\u06d8\u06e2\u06e8\u06e5\u06d8\u06dc\u06d9\u06d8\u06e8\u06d6\u06d8\u06d7\u06da\u06d6\u06d8\u06d8\u06ec\u06d7\u06eb\u06dc\u06e7\u06e7\u06e6\u06e2\u06df\u06da\u06df"

    goto :goto_3

    :sswitch_1b
    const-string v0, "\u06e2\u06d7\u06db\u06db\u06d6\u06e5\u06d8\u06d6\u06e7\u06e7\u06e6\u06d7\u06e1\u06eb\u06db\u06ec\u06e5\u06e6\u06e0\u06e6\u06e7\u06d8\u06d7\u06d8\u06dc\u06e4\u06d9\u06e0\u06e5\u06e6\u06d8\u06e8\u06da\u06d6\u06e6\u06da\u06d8\u06d8\u06d8\u06e5\u06e4\u06e1\u06d8\u06dc\u06d8"

    goto/16 :goto_0

    :sswitch_1c
    const v4, 0x238f4781

    const-string v0, "\u06d6\u06e4\u06e1\u06e1\u06e8\u06d8\u06d7\u06dc\u06d9\u06eb\u06dc\u06d8\u06d9\u06e7\u06eb\u06e4\u06da\u06d8\u06ec\u06d8\u06e7\u06df\u06d8\u06d6\u06e6\u06d9\u06e1\u06d8\u06e6\u06d7\u06e6\u06d8\u06da\u06d9\u06e0\u06d9\u06e6\u06e5\u06da\u06df\u06da\u06d8\u06db\u06e8\u06e8\u06e8\u06d8\u06eb\u06e4\u06e1"

    :goto_5
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v13

    xor-int/2addr v13, v4

    sparse-switch v13, :sswitch_data_5

    goto :goto_5

    :sswitch_1d
    const-string v0, "\u06d6\u06e0\u06d8\u06da\u06da\u06d9\u06dc\u06e2\u06d6\u06d8\u06d8\u06da\u06e1\u06e5\u06dc\u06eb\u06df\u06e0\u06e1\u06e2\u06dc\u06e6\u06d8\u06e6\u06dc\u06e1\u06d8\u06d6\u06e2\u06e1\u06d8\u06dc\u06e0\u06e7\u06e7\u06d7\u06d8\u06d8\u06da\u06db\u06df"

    goto/16 :goto_0

    :sswitch_1e
    const-string v0, "\u06dc\u06ec\u06e1\u06d8\u06e5\u06e1\u06db\u06ec\u06e8\u06e7\u06d8\u06e1\u06e2\u06e5\u06e7\u06e7\u06d9\u06e5\u06e1\u06e5\u06e4\u06d8\u06da\u06df\u06e8\u06dc\u06d8\u06e0\u06eb\u06ec\u06ec\u06da\u06dc\u06e6\u06d7\u06db\u06df\u06e8\u06df"

    goto :goto_5

    :sswitch_1f
    const v13, -0x260668a1

    const-string v0, "\u06db\u06db\u06e6\u06e4\u06d9\u06da\u06d8\u06e6\u06d7\u06df\u06da\u06e5\u06d8\u06d8\u06d8\u06e8\u06d8\u06e6\u06df\u06ec\u06d8\u06e1\u06d8\u06e2\u06d6\u06d6\u06db\u06db\u06d7\u06d8\u06dc\u06d8\u06e5\u06df\u06e6\u06d8\u06dc\u06d7\u06df\u06e1\u06e8\u06e8\u06d8\u06d9\u06e0\u06dc"

    :goto_6
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v14

    xor-int/2addr v14, v13

    sparse-switch v14, :sswitch_data_6

    goto :goto_6

    :sswitch_20
    const-string v0, "\u06e4\u06e2\u06d9\u06d8\u06d9\u06d6\u06d8\u06d7\u06da\u06e8\u06d8\u06d7\u06da\u06eb\u06e4\u06d9\u06eb\u06d9\u06ec\u06ec\u06e1\u06e0\u06e5\u06d8\u06e6\u06dc\u06ec\u06d7\u06df\u06e2\u06e1\u06da\u06eb\u06eb\u06e7\u06e5\u06d7\u06e0\u06e8\u06dc\u06d6\u06df\u06e5\u06e2\u06e0"

    goto :goto_6

    :cond_2
    const-string v0, "\u06ec\u06eb\u06e5\u06d8\u06e6\u06e6\u06e7\u06d8\u06d8\u06e4\u06e5\u06ec\u06ec\u06da\u06d9\u06eb\u06d6\u06e6\u06e7\u06dc\u06d8\u06e7\u06d6\u06d8\u06d8\u06e2\u06d8\u06d6\u06eb\u06e4\u06e4\u06e4\u06e5"

    goto :goto_6

    :sswitch_21
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "\u06e7\u06eb\u06d7\u06e0\u06e1\u06db\u06db\u06ec\u06e7\u06d9\u06e6\u06e4\u06da\u06e8\u06e0\u06ec\u06dc\u06e5\u06d8\u06e1\u06e5\u06e2\u06eb\u06db\u06eb\u06e1\u06d7\u06dc\u06eb\u06dc\u06e7\u06e6\u06da\u06e7\u06e5\u06e5\u06dc\u06ec\u06e1\u06e1\u06e6\u06dc\u06eb\u06d6\u06e6\u06d9\u06e2\u06e0\u06df\u06e8\u06db\u06e8\u06e4\u06e8\u06dc\u06d8"

    goto :goto_6

    :sswitch_22
    const-string v0, "\u06d7\u06e5\u06e5\u06e5\u06db\u06da\u06e0\u06dc\u06da\u06d9\u06d9\u06e0\u06df\u06d8\u06e6\u06d8\u06df\u06e6\u06e8\u06db\u06dc\u06e1\u06e8\u06eb\u06d6\u06dc\u06d6\u06e5\u06e1\u06ec\u06eb\u06e5\u06d7\u06e5\u06d8\u06e8\u06d7\u06e8\u06db\u06eb\u06dc\u06ec\u06d9\u06e0\u06ec\u06e7\u06e1\u06d8\u06e5\u06df\u06ec\u06db\u06e2\u06e1\u06d8\u06e1\u06dc\u06dc"

    goto :goto_5

    :sswitch_23
    const-string v0, "\u06e8\u06e2\u06eb\u06eb\u06ec\u06e0\u06e0\u06d8\u06e5\u06d8\u06dc\u06d7\u06dc\u06dc\u06e0\u06d7\u06df\u06ec\u06d8\u06df\u06e7\u06e4\u06d9\u06da\u06e5\u06d8\u06dc\u06ec\u06e6\u06db\u06d6\u06e7\u06d8"

    goto :goto_5

    :sswitch_24
    iget-object v7, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->o00oO0o:Landroid/widget/TextView;

    const-string v0, "\u06e4\u06ec\u06d6\u06e6\u06df\u06e6\u06db\u06db\u06dc\u06eb\u06ec\u06d6\u06d6\u06e6\u06e8\u06ec\u06e8\u06d6\u06d8\u06e4\u06e1\u06ec\u06e0\u06e7\u06d8\u06d8\u06d7\u06df\u06e2\u06e4\u06d9\u06e8\u06d8\u06e0\u06da\u06dc\u06e0\u06e8\u06df"

    goto/16 :goto_0

    :sswitch_25
    const-string v0, "\u06e4\u06d6\u06e8\u06d8\u06da\u06e6\u06ec\u06dc\u06db\u06e0\u06e0\u06d7\u06d8\u06d8\u06e5\u06e5\u06e1\u06d9\u06dc\u06e0\u06e0\u06e5\u06d6\u06d8\u06dc\u06df\u06e6\u06d8\u06df\u06e7\u06e8\u06d8\u06e8\u06df\u06e4\u06db\u06e0\u06eb\u06e0\u06e2\u06d8\u06d8\u06d7\u06eb\u06d9\u06d8\u06dc\u06e4\u06e4\u06e1\u06e1\u06d8\u06e1\u06e1\u06eb"

    goto/16 :goto_0

    :sswitch_26
    const-string v0, "\u06d8\u06e6\u06e6\u06d8\u06eb\u06e0\u06e5\u06d8\u06d6\u06d9\u06e1\u06d8\u06e8\u06d8\u06e5\u06e0\u06e2\u06e0\u06e6\u06e2\u06eb\u06da\u06d7\u06df\u06d8\u06d8\u06d7\u06e4\u06d6\u06d7\u06df\u06e7\u06e6\u06e0\u06e8\u06d8\u06e1\u06e2\u06e5\u06d8\u06dc\u06d7\u06e7\u06db\u06db\u06e4\u06da\u06e5\u06d8\u06ec\u06e8\u06eb\u06d8\u06dc\u06e6\u06d8\u06d8\u06d9\u06e1\u06d8"

    move-object v6, v7

    goto/16 :goto_0

    :sswitch_27
    const-string v0, "\u06e4\u06d6\u06da\u06e5\u06eb\u06e4\u06e4\u06da\u06e4\u06eb\u06e7\u06dc\u06dc\u06ec\u06d6\u06d8\u06e4\u06db\u06e7\u06d7\u06d7\u06e5\u06d6\u06eb\u06d9\u06db\u06ec\u06e8\u06d8\u06d7\u06e6\u06dc\u06e6\u06ec\u06d8\u06eb\u06eb\u06eb\u06d7\u06da\u06e1\u06d9\u06dc\u06db\u06e1\u06d6\u06d7\u06df\u06d6\u06df\u06ec\u06ec\u06e5\u06e0"

    move v5, v2

    goto/16 :goto_0

    :sswitch_28
    iget-object v3, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->o00oO0o:Landroid/widget/TextView;

    const-string v0, "\u06d8\u06e5\u06da\u06d6\u06dc\u06d8\u06d6\u06e8\u06e7\u06e2\u06e7\u06d8\u06d9\u06d9\u06ec\u06eb\u06d6\u06dc\u06db\u06d8\u06d8\u06e8\u06da\u06d6\u06d8\u06e0\u06eb\u06dc\u06d7\u06d8\u06d8\u06da\u06eb\u06e5\u06d8\u06d9\u06dc\u06e1\u06e0\u06e1\u06eb\u06da\u06ec\u06e6\u06e5\u06da\u06eb\u06ec\u06e6\u06df"

    goto/16 :goto_0

    :sswitch_29
    const/16 v1, 0x8

    const-string v0, "\u06d8\u06eb\u06e6\u06d9\u06db\u06e1\u06d8\u06d6\u06e5\u06e5\u06e8\u06da\u06db\u06e6\u06e0\u06e5\u06d8\u06e6\u06ec\u06da\u06e8\u06d7\u06e8\u06eb\u06dc\u06e0\u06e6\u06dc\u06e6\u06d8\u06da\u06e1\u06da\u06d6\u06db\u06e8\u06d8\u06e7\u06e1\u06e6\u06d9\u06e4\u06d6\u06d8\u06e7\u06e5\u06e8"

    goto/16 :goto_0

    :sswitch_2a
    const-string v0, "\u06e1\u06eb\u06db\u06e7\u06d7\u06df\u06dc\u06d6\u06e8\u06ec\u06e8\u06dc\u06df\u06d7\u06d7\u06eb\u06da\u06e6\u06d8\u06e1\u06df\u06e0\u06d8\u06d8\u06d7\u06d6\u06e1\u06e8\u06dc\u06dc\u06d8\u06e4\u06e8\u06e6\u06e6\u06e1\u06d9\u06dc\u06e6\u06d7\u06e8\u06d6\u06db\u06e5\u06e8\u06e1\u06d8\u06d8\u06e1\u06d6\u06d8\u06e7\u06d8\u06e8\u06d8\u06e6\u06e0\u06d7"

    move v5, v1

    goto/16 :goto_0

    :sswitch_2b
    const-string v0, "\u06e6\u06db\u06d8\u06dc\u06d6\u06db\u06d8\u06db\u06d8\u06dc\u06e5\u06e7\u06e4\u06e1\u06d9\u06e5\u06e0\u06d7\u06e8\u06e5\u06db\u06da\u06e5\u06d6\u06df\u06e0\u06e6\u06db\u06eb\u06e8\u06d8\u06d9\u06e7\u06e8\u06dc\u06df\u06ec"

    move-object v6, v3

    goto/16 :goto_0

    :sswitch_2c
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setVisibility(I)V

    const-string v0, "\u06d8\u06e5\u06e7\u06d8\u06eb\u06e5\u06d7\u06e0\u06dc\u06d6\u06d8\u06eb\u06d8\u06d7\u06d8\u06e6\u06e1\u06e6\u06e6\u06e2\u06d9\u06e4\u06e6\u06e5\u06df\u06e8\u06d8\u06d7\u06d9\u06d6\u06e0\u06df\u06e7\u06dc\u06dc\u06e7\u06e4\u06dc\u06e2\u06eb\u06e5\u06df\u06d9\u06d7\u06d8\u06df\u06d6\u06db\u06d9\u06e2"

    goto/16 :goto_0

    :sswitch_2d
    const-string v0, "\u06db\u06e2\u06d6\u06d8\u06e6\u06df\u06d8\u06d8\u06dc\u06df\u06d6\u06d8\u06d8\u06dc\u06d7\u06e8\u06d7\u06e8\u06e7\u06e7\u06e5\u06e6\u06d8\u06e1\u06d8\u06e4\u06e7\u06e5\u06ec\u06e6\u06d8\u06eb\u06d7\u06e1"

    goto/16 :goto_0

    :sswitch_2e
    const-string v0, "\u06e5\u06d9\u06e8\u06d8\u06dc\u06eb\u06e8\u06d8\u06dc\u06e2\u06e1\u06d8\u06e5\u06d6\u06e1\u06d8\u06d7\u06e5\u06e6\u06e5\u06eb\u06d6\u06da\u06e0\u06e8\u06e2\u06ec\u06dc\u06d8\u06df\u06d9\u06da\u06dc\u06e4\u06e5\u06d8\u06e7\u06e2\u06e6\u06d8\u06d8\u06ec\u06e5\u06e5\u06d6\u06e8\u06d8\u06df\u06e8\u06e8\u06d8\u06e7\u06da\u06e1\u06e8\u06db\u06d8\u06dc\u06da\u06d6\u06d8\u06e5\u06e2\u06e5\u06d8"

    goto/16 :goto_0

    :sswitch_2f
    const-string v0, "\u06e6\u06db\u06d8\u06dc\u06d6\u06db\u06d8\u06db\u06d8\u06dc\u06e5\u06e7\u06e4\u06e1\u06d9\u06e5\u06e0\u06d7\u06e8\u06e5\u06db\u06da\u06e5\u06d6\u06df\u06e0\u06e6\u06db\u06eb\u06e8\u06d8\u06d9\u06e7\u06e8\u06dc\u06df\u06ec"

    goto/16 :goto_0

    :sswitch_30
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x77d56f76 -> :sswitch_8
        -0x76bf5fea -> :sswitch_24
        -0x76ab22f1 -> :sswitch_c
        -0x723be44a -> :sswitch_30
        -0x7097189d -> :sswitch_a
        -0x6954042e -> :sswitch_25
        -0x5d26265e -> :sswitch_4
        -0x59acae07 -> :sswitch_26
        -0x502dc25f -> :sswitch_5
        -0x4f89ca6f -> :sswitch_b
        -0x2095163a -> :sswitch_9
        -0x12ec7c4f -> :sswitch_2e
        -0xaac627e -> :sswitch_0
        -0xa9fbd98 -> :sswitch_3
        0x7bfccce -> :sswitch_2
        0xc7ac5f5 -> :sswitch_2b
        0x27078cf1 -> :sswitch_6
        0x2ae09324 -> :sswitch_14
        0x2bb2a312 -> :sswitch_7
        0x3c241f9c -> :sswitch_28
        0x4b934c85 -> :sswitch_2f
        0x5c66bdbd -> :sswitch_2a
        0x678f66ce -> :sswitch_2c
        0x70db771d -> :sswitch_1c
        0x716f3688 -> :sswitch_29
        0x789b2eb6 -> :sswitch_1
        0x7e9bbdb4 -> :sswitch_27
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x45d8bb1e -> :sswitch_f
        -0x2bc02ae8 -> :sswitch_2e
        0x5dcbd2 -> :sswitch_d
        0x75f2f154 -> :sswitch_13
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        -0x4297322f -> :sswitch_e
        -0x1130a6ff -> :sswitch_11
        0x7538e80 -> :sswitch_10
        0x1a487b65 -> :sswitch_12
    .end sparse-switch

    :sswitch_data_3
    .sparse-switch
        -0x40322f26 -> :sswitch_1a
        -0x38cf8775 -> :sswitch_1b
        0x41ef8971 -> :sswitch_2e
        0x52b40f61 -> :sswitch_15
    .end sparse-switch

    :sswitch_data_4
    .sparse-switch
        -0x5a433178 -> :sswitch_18
        -0x1fef4f5c -> :sswitch_17
        0x56bc9a6a -> :sswitch_16
        0x79acc580 -> :sswitch_19
    .end sparse-switch

    :sswitch_data_5
    .sparse-switch
        -0x76beca32 -> :sswitch_23
        -0x1e1bf7a3 -> :sswitch_1f
        -0x64ae8ec -> :sswitch_2d
        0x1baa3073 -> :sswitch_1d
    .end sparse-switch

    :sswitch_data_6
    .sparse-switch
        -0x5cd32d97 -> :sswitch_22
        0x32ea74ce -> :sswitch_20
        0x4923e55e -> :sswitch_21
        0x7cf2f0a7 -> :sswitch_1e
    .end sparse-switch
.end method

.method private OoooO0O(Landroid/view/View;)V
    .locals 11

    const/4 v2, 0x0

    const-string v0, "\u06ec\u06e6\u06e8\u06d6\u06da\u06e6\u06d8\u06e0\u06e5\u06d6\u06dc\u06d9\u06db\u06e2\u06e2\u06d6\u06e2\u06d7\u06df\u06e8\u06e6\u06d6\u06d8\u06e6\u06eb\u06e1\u06e5\u06df\u06ec\u06e0\u06e8\u06d8"

    move v1, v2

    move v3, v2

    move v5, v2

    move v6, v2

    move v4, v2

    move v7, v2

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v8

    const/16 v9, 0x95

    xor-int/2addr v8, v9

    xor-int/lit16 v8, v8, 0x14b

    const/16 v9, 0xb2

    const v10, 0x39b93c7f

    xor-int/2addr v8, v9

    xor-int/2addr v8, v10

    sparse-switch v8, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d7\u06d7\u06e5\u06ec\u06d8\u06dc\u06e4\u06e7\u06dc\u06dc\u06eb\u06ec\u06eb\u06e5\u06db\u06e0\u06d9\u06e4\u06d8\u06eb\u06ec\u06e5\u06d7\u06e1\u06d8\u06e5\u06e5\u06e8\u06d8\u06ec\u06dc\u06d9\u06db\u06e5\u06e1\u06e8\u06e8\u06e1\u06d6\u06d8\u06dc\u06d8\u06eb\u06df\u06e0\u06e5\u06dc\u06e8\u06d7\u06e7\u06e4"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06e6\u06e0\u06e6\u06e5\u06e5\u06d9\u06d9\u06da\u06e1\u06d8\u06e7\u06e1\u06e6\u06e7\u06df\u06d9\u06e5\u06e0\u06e8\u06d8\u06d8\u06da\u06e6\u06d6\u06d7\u06e6\u06d9\u06e7\u06d8\u06d7\u06e5\u06d8\u06d9\u06dc\u06e4\u06d7\u06d9\u06d9\u06df\u06db\u06e8\u06d8\u06d9\u06e7\u06e2"

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v7

    const-string v0, "\u06e2\u06db\u06e7\u06d8\u06d6\u06e1\u06d8\u06d9\u06e1\u06d6\u06e1\u06e8\u06d9\u06df\u06da\u06d7\u06e8\u06e2\u06d8\u06d6\u06e8\u06ec\u06ec\u06e2\u06e5\u06e4\u06ec\u06d8\u06d8\u06d7\u06db\u06e7\u06df\u06d7\u06ec\u06ec\u06ec\u06dc\u06d8"

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v4

    const-string v0, "\u06e7\u06d9\u06eb\u06e6\u06dc\u06e8\u06d6\u06df\u06e6\u06d8\u06e1\u06e7\u06ec\u06e7\u06d9\u06e7\u06eb\u06da\u06e7\u06eb\u06e1\u06e8\u06d7\u06d6\u06e7\u06e4\u06ec\u06dc\u06dc\u06ec\u06dc\u06d8\u06e5\u06e8\u06e5\u06d8\u06dc\u06e0\u06ec"

    goto :goto_0

    :sswitch_4
    const v8, 0x32702bb6

    const-string v0, "\u06df\u06d6\u06da\u06d6\u06db\u06d9\u06d7\u06e2\u06e5\u06d7\u06e5\u06d6\u06d8\u06eb\u06e4\u06d6\u06d8\u06dc\u06d8\u06e1\u06d9\u06df\u06d6\u06d8\u06df\u06df\u06e2\u06e1\u06dc\u06d6\u06e0\u06db\u06e4\u06d7\u06d6\u06e2\u06e6\u06e5\u06d8\u06e6\u06d9\u06e5\u06d8\u06d8\u06d8\u06df\u06e0\u06d8\u06df\u06d9\u06e5"

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v9

    xor-int/2addr v9, v8

    sparse-switch v9, :sswitch_data_1

    goto :goto_1

    :sswitch_5
    const-string v0, "\u06e1\u06d9\u06e6\u06e7\u06ec\u06d8\u06d9\u06d6\u06e6\u06d6\u06d6\u06dc\u06dc\u06d6\u06d8\u06e1\u06e8\u06d6\u06e1\u06db\u06e2\u06e5\u06e2\u06e4\u06eb\u06d8\u06e1\u06e4\u06db\u06e0"

    goto :goto_0

    :sswitch_6
    const-string v0, "\u06dc\u06d8\u06e1\u06e0\u06d7\u06d9\u06e8\u06db\u06dc\u06d8\u06da\u06d8\u06e7\u06dc\u06d8\u06eb\u06e7\u06d6\u06d8\u06d8\u06e6\u06d7\u06e5\u06d8\u06ec\u06d8\u06dc\u06d8\u06dc\u06dc\u06d6\u06d8\u06e2\u06d9\u06e5\u06db\u06d6\u06d8\u06d8\u06e1\u06d6\u06e7\u06d8\u06d8\u06ec\u06ec\u06dc\u06e0\u06e2"

    goto :goto_1

    :sswitch_7
    const v9, 0x6167e247

    const-string v0, "\u06e7\u06db\u06e5\u06e0\u06d6\u06df\u06ec\u06e8\u06db\u06e4\u06d8\u06ec\u06d9\u06df\u06d6\u06d6\u06e5\u06df\u06df\u06d7\u06d8\u06e1\u06eb\u06e5\u06d8\u06e5\u06ec\u06e4\u06d9\u06e0\u06e8\u06d8\u06db\u06e1\u06e8\u06d8\u06d6\u06d8\u06d6\u06dc\u06eb\u06e6\u06db\u06d6\u06e1\u06d9\u06db\u06e6\u06d8\u06db\u06da\u06e8\u06d8\u06e0\u06e2\u06e5\u06d8\u06e7\u06df\u06d7"

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v10

    xor-int/2addr v10, v9

    sparse-switch v10, :sswitch_data_2

    goto :goto_2

    :sswitch_8
    const-string v0, "\u06e1\u06ec\u06e1\u06d8\u06e7\u06da\u06dc\u06d8\u06eb\u06e1\u06d9\u06ec\u06e7\u06e7\u06e4\u06ec\u06e5\u06d8\u06e1\u06d6\u06d8\u06d7\u06db\u06e5\u06d8\u06d6\u06e4\u06dc\u06ec\u06e2\u06d8\u06d8\u06e1\u06e4\u06d8\u06d8\u06e4\u06dc\u06e7\u06e8\u06ec\u06db\u06d7\u06e1\u06e5\u06e2\u06ec\u06d6\u06e7\u06d6\u06e1\u06d8\u06d8\u06e2\u06df"

    goto :goto_2

    :cond_0
    const-string v0, "\u06e0\u06d6\u06d9\u06e1\u06eb\u06da\u06dc\u06da\u06dc\u06d8\u06e1\u06dc\u06e1\u06d8\u06df\u06eb\u06e2\u06ec\u06da\u06df\u06e2\u06da\u06e5\u06e6\u06e7\u06e6\u06d8\u06e2\u06e1\u06ec\u06d7\u06dc\u06e6\u06e8\u06d9\u06e6\u06e8\u06e8\u06e6\u06e6\u06d9\u06e0\u06da\u06dc"

    goto :goto_2

    :sswitch_9
    cmpg-float v0, v7, v2

    if-gez v0, :cond_0

    const-string v0, "\u06e4\u06e6\u06d8\u06d8\u06e7\u06e4\u06d8\u06d8\u06eb\u06e4\u06e8\u06d8\u06dc\u06d6\u06ec\u06e7\u06d7\u06e0\u06d7\u06e8\u06db\u06d8\u06dc\u06d8\u06e1\u06e4\u06e8\u06e1\u06e5\u06d8\u06e4\u06e6\u06e5\u06d8"

    goto :goto_2

    :sswitch_a
    const-string v0, "\u06eb\u06e8\u06e0\u06e6\u06e5\u06d6\u06d8\u06e1\u06e7\u06d8\u06d7\u06e4\u06e0\u06d9\u06d8\u06e2\u06df\u06df\u06e6\u06d8\u06e6\u06d9\u06e4\u06dc\u06d7\u06e1\u06e5\u06e5\u06d8\u06da\u06e7\u06dc\u06e4\u06eb\u06e6\u06d8\u06dc\u06e5\u06e1\u06d9\u06e5\u06e0\u06d6\u06d6\u06e7\u06e6\u06d7\u06df\u06ec\u06d6\u06e0"

    goto :goto_1

    :sswitch_b
    const-string v0, "\u06ec\u06e5\u06e6\u06d8\u06df\u06e6\u06e1\u06d8\u06e5\u06da\u06e6\u06dc\u06e8\u06d8\u06d8\u06e7\u06e8\u06e5\u06e2\u06da\u06db\u06e1\u06df\u06ec\u06d8\u06e4\u06e1\u06d8\u06e4\u06db\u06df\u06d6\u06d8\u06e8\u06d8\u06d6\u06e4\u06d6\u06d8\u06e5\u06e8\u06e7\u06d8\u06e1\u06e7\u06e4\u06d8\u06e6\u06d6\u06ec\u06e1\u06d8\u06e2\u06ec\u06dc\u06d9\u06e6\u06d8\u06d8\u06e5\u06e2\u06da"

    goto :goto_1

    :sswitch_c
    const-string v0, "\u06d7\u06da\u06e4\u06e0\u06e5\u06d9\u06e5\u06dc\u06e1\u06e5\u06e6\u06d9\u06e1\u06ec\u06dc\u06d8\u06e1\u06da\u06e8\u06eb\u06eb\u06e0\u06dc\u06d6\u06e7\u06e4\u06e8\u06e5\u06e0\u06db\u06e1\u06d8\u06e6\u06dc\u06ec\u06eb\u06e2\u06e0\u06e7\u06e0\u06eb\u06d8\u06e4\u06eb\u06db\u06e0\u06df\u06e0\u06d6\u06d8\u06eb\u06e6\u06d8\u06e5\u06d8\u06e7"

    goto :goto_0

    :sswitch_d
    const-string v0, "\u06e7\u06e7\u06dc\u06d6\u06eb\u06d9\u06e8\u06e2\u06e2\u06e4\u06d6\u06d8\u06d8\u06dc\u06d8\u06d7\u06e5\u06d7\u06df\u06e8\u06e5\u06e0\u06d8\u06e6\u06e7\u06e1\u06db\u06e5\u06d8\u06d8\u06d8\u06e5\u06df\u06d9\u06e5\u06e2"

    goto :goto_0

    :sswitch_e
    const-string v0, "\u06df\u06d6\u06e5\u06d8\u06d7\u06e5\u06e2\u06d9\u06e1\u06e1\u06df\u06e2\u06d6\u06eb\u06da\u06d8\u06d8\u06da\u06dc\u06e4\u06dc\u06e7\u06e2\u06e2\u06d7\u06e6\u06e4\u06d9\u06da\u06ec\u06e7\u06df\u06e1\u06e4\u06d6\u06d8\u06e8\u06ec\u06d6\u06d8\u06e4\u06e7\u06ec\u06e5\u06d8\u06e7\u06d8"

    move v6, v2

    goto :goto_0

    :sswitch_f
    const-string v0, "\u06e8\u06ec\u06da\u06d9\u06d8\u06e0\u06eb\u06e7\u06ec\u06e6\u06d7\u06dc\u06d6\u06e1\u06dc\u06e5\u06e6\u06d6\u06d8\u06eb\u06e2\u06d8\u06e7\u06d8\u06d7\u06df\u06e5\u06df\u06eb\u06e5\u06d8"

    move v6, v7

    goto :goto_0

    :sswitch_10
    const v8, 0x308c9a46

    const-string v0, "\u06db\u06e0\u06e4\u06e2\u06d8\u06e6\u06df\u06ec\u06e2\u06d9\u06d8\u06dc\u06d8\u06d8\u06e2\u06eb\u06e4\u06e2\u06d7\u06d6\u06d6\u06e1\u06d8\u06e0\u06e8\u06e6\u06d7\u06e1\u06d8\u06eb\u06e6\u06d8\u06d8\u06e2\u06d9\u06d9\u06e4\u06e7\u06e1"

    :goto_3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v9

    xor-int/2addr v9, v8

    sparse-switch v9, :sswitch_data_3

    goto :goto_3

    :sswitch_11
    const-string v0, "\u06eb\u06d6\u06e7\u06d8\u06df\u06e0\u06e5\u06da\u06e6\u06d9\u06eb\u06d7\u06dc\u06d9\u06d9\u06db\u06e0\u06e0\u06e5\u06d8\u06dc\u06e4\u06df\u06e2\u06e5\u06e7\u06d8\u06e1\u06e2\u06dc\u06d6\u06da\u06ec\u06e2\u06e8\u06db\u06e7\u06d9\u06e0"

    goto :goto_0

    :sswitch_12
    const-string v0, "\u06ec\u06df\u06d9\u06e1\u06ec\u06e6\u06d9\u06d6\u06e8\u06d8\u06ec\u06db\u06d8\u06d9\u06d6\u06e7\u06dc\u06da\u06e0\u06d7\u06e7\u06df\u06e1\u06df\u06d7\u06e4\u06ec\u06da\u06e5\u06e7\u06e8\u06d7\u06e1\u06e7\u06d8\u06d7\u06e8\u06e8\u06e2\u06d7\u06db\u06db\u06db\u06d6"

    goto :goto_3

    :sswitch_13
    const v9, 0x55c66714

    const-string v0, "\u06da\u06e5\u06e7\u06e0\u06df\u06eb\u06dc\u06e6\u06e0\u06e2\u06e5\u06dc\u06d8\u06e6\u06d8\u06eb\u06e8\u06e4\u06e1\u06eb\u06df\u06e8\u06e4\u06e7\u06e1\u06db\u06dc\u06e5\u06d8\u06e7\u06d8\u06d6"

    :goto_4
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v10

    xor-int/2addr v10, v9

    sparse-switch v10, :sswitch_data_4

    goto :goto_4

    :sswitch_14
    const-string v0, "\u06d9\u06e5\u06e8\u06d8\u06d6\u06db\u06e1\u06d8\u06e7\u06e8\u06d8\u06d8\u06e7\u06eb\u06e8\u06d8\u06d6\u06e7\u06e6\u06da\u06e2\u06e7\u06e1\u06d9\u06e8\u06d9\u06e6\u06e1\u06e0\u06db\u06d7\u06e2\u06e6\u06d8\u06d7\u06e0\u06dc\u06d8\u06e1\u06d9\u06da\u06d6\u06d7\u06e5\u06d8\u06e4\u06d9\u06e6\u06d8\u06d6\u06da\u06e7\u06d8\u06d7\u06db\u06eb\u06d6\u06d7\u06e1\u06e4\u06e7"

    goto :goto_4

    :cond_1
    const-string v0, "\u06e2\u06e1\u06dc\u06e2\u06da\u06da\u06da\u06df\u06d7\u06d7\u06eb\u06ec\u06e7\u06e1\u06df\u06df\u06e4\u06e2\u06e5\u06eb\u06d9\u06e1\u06e1\u06dc\u06e0\u06e0\u06eb\u06ec\u06d9\u06e8"

    goto :goto_4

    :sswitch_15
    iget v0, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->Ooooooo:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v10

    sub-int/2addr v0, v10

    int-to-float v0, v0

    cmpl-float v0, v7, v0

    if-lez v0, :cond_1

    const-string v0, "\u06da\u06e7\u06e5\u06d8\u06e4\u06ec\u06d9\u06e7\u06df\u06d8\u06d6\u06e4\u06e4\u06d7\u06e1\u06d8\u06e2\u06eb\u06da\u06e5\u06d9\u06df\u06e8\u06d9\u06e8\u06dc\u06eb\u06d6\u06d8\u06da\u06d7\u06d9"

    goto :goto_4

    :sswitch_16
    const-string v0, "\u06e0\u06e8\u06d6\u06e7\u06e1\u06e0\u06d6\u06e4\u06df\u06e7\u06eb\u06eb\u06d6\u06e2\u06e2\u06e6\u06dc\u06e7\u06d8\u06ec\u06d8\u06e5\u06d8\u06db\u06ec\u06e7\u06e8\u06d6\u06d8\u06d6\u06e8\u06ec\u06db\u06ec\u06d9\u06eb\u06d9\u06e5\u06d6\u06db\u06e6\u06e0\u06dc\u06d8\u06eb\u06ec\u06da\u06e2\u06dc\u06d8\u06e0\u06e8\u06e1\u06eb\u06d7\u06ec"

    goto :goto_3

    :sswitch_17
    const-string v0, "\u06da\u06e8\u06d9\u06d9\u06d9\u06e4\u06e0\u06ec\u06e8\u06e7\u06e2\u06e6\u06e2\u06eb\u06e5\u06d8\u06da\u06d8\u06e1\u06d8\u06ec\u06ec\u06d8\u06d8O\u06e8\u06d7\u06e0\u06d6\u06ec\u06e8\u06e5\u06d8\u06e2\u06e0\u06e8\u06e8\u06dc\u06ec\u06e6\u06d8\u06e7\u06e1"

    goto :goto_3

    :sswitch_18
    iget v0, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->Ooooooo:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    sub-int/2addr v0, v5

    int-to-float v5, v0

    const-string v0, "\u06d6\u06db\u06e1\u06d9\u06d6\u06eb\u06e0\u06e1\u06d8\u06e7\u06e4\u06e1\u06e8\u06ec\u06e7\u06e4\u06df\u06e4\u06db\u06d8\u06d6\u06da\u06da\u06e4\u06dc\u06e6\u06ec\u06ec\u06e6\u06df\u06e1\u06d7\u06e6\u06d8\u06db\u06df\u06d8\u06d8\u06e0\u06e6\u06db\u06df\u06e6\u06e5\u06d8\u06d7\u06d7\u06df\u06d7\u06d7\u06d8\u06d8\u06d7\u06eb\u06d6\u06d8\u06d9\u06da\u06e8\u06d8"

    goto/16 :goto_0

    :sswitch_19
    const-string v0, "\u06e5\u06d8\u06e5\u06d8\u06d7\u06e7\u06dc\u06d6\u06e2\u06e8\u06d8\u06d9\u06d7\u06ec\u06e1\u06d6\u06e5\u06d8\u06da\u06e6\u06eb\u06da\u06da\u06db\u06e2\u06e6\u06d8\u06d8\u06e0\u06e6\u06d8\u06ec\u06d6\u06dc\u06d8\u06d8\u06db\u06e5\u06e2\u06e6\u06e6\u06e7\u06d7\u06d8\u06e4\u06e4\u06e1\u06e5\u06e2\u06d9\u06d6\u06d8"

    move v6, v5

    goto/16 :goto_0

    :sswitch_1a
    const v8, -0x4487bb97

    const-string v0, "\u06db\u06e1\u06dc\u06d8\u06e5\u06d7\u06d8\u06e5\u06da\u06d7\u06e2\u06eb\u06e6\u06e5\u06da\u06dc\u06d8\u06e2\u06d7\u06e2\u06db\u06e0\u06d8\u06d9\u06df\u06e6\u06e7\u06d8\u06e5\u06e7\u06e8\u06d8\u06d9\u06e1\u06dc\u06e2\u06e2\u06d6\u06d8"

    :goto_5
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v9

    xor-int/2addr v9, v8

    sparse-switch v9, :sswitch_data_5

    goto :goto_5

    :sswitch_1b
    const-string v0, "\u06dc\u06d8\u06e5\u06d9\u06e0\u06dc\u06e0\u06ec\u06e4\u06e8\u06e4\u06e8\u06d8\u06d8\u06df\u06e1\u06d8\u06e1\u06e1\u06d8\u06e7\u06d6\u06e6\u06e6\u06e4\u06e8\u06e7\u06dc\u06db\u06e5\u06e2\u06dc"

    goto/16 :goto_0

    :sswitch_1c
    const-string v0, "\u06d6\u06d6\u06da\u06e0\u06e4\u06e0\u06da\u06ec\u06db\u06d7\u06d8\u06dc\u06e4\u06eb\u06e4\u06d7\u06e1\u06eb\u06ec\u06e0\u06e0\u06eb\u06eb\u06e8\u06e2\u06d6\u06d8\u06d8\u06d7\u06e2\u06dc\u06e8\u06eb\u06d8\u06da\u06e2\u06d8"

    goto :goto_5

    :sswitch_1d
    const v9, -0x72e415da

    const-string v0, "\u06e6\u06ec\u06e1\u06d8\u06d7\u06d9\u06e6\u06d8\u06db\u06e7\u06d9\u06d6\u06da\u06d8\u06e4\u06e1\u06eb\u06d9\u06d8\u06d8\u06eb\u06df\u06e5\u06d8\u06e2\u06db\u06e6\u06e5\u06e1\u06d7\u06dc\u06e5\u06e8\u06eb\u06e1\u06dc\u06d8\u06e1\u06e4\u06d8"

    :goto_6
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v10

    xor-int/2addr v10, v9

    sparse-switch v10, :sswitch_data_6

    goto :goto_6

    :sswitch_1e
    const-string v0, "\u06dc\u06db\u06e8\u06e0\u06eb\u06e8\u06d8\u06d7\u06e6\u06d6\u06d8\u06e5\u06d9\u06d9\u06d6\u06eb\u06e2\u06da\u06e5\u06e8\u06df\u06d9\u06d9\u06e7\u06db\u06d7\u06df\u06d9\u06e5\u06e7\u06e6\u06dc\u06df\u06e2\u06eb\u06e7\u06e8\u06e6\u06da\u06db\u06e4\u06e1\u06da\u06d6\u06e6\u06e5\u06e7\u06d8\u06d6\u06eb\u06d9"

    goto :goto_5

    :cond_2
    const-string v0, "\u06e2\u06d8\u06dc\u06dc\u06e4\u06dc\u06d8\u06e6\u06eb\u06e0\u06ec\u06e7\u06df\u06db\u06eb\u06d8\u06d8\u06da\u06da\u06d6\u06d8\u06d6\u06e8\u06e2\u06e4\u06e7\u06dc\u06d8\u06e7\u06e5\u06d7\u06e2\u06eb\u06e5\u06e4\u06d6\u06d8\u06da\u06db\u06e8\u06d8\u06da\u06e7\u06e2\u06e4\u06db\u06e1\u06d8"

    goto :goto_6

    :sswitch_1f
    cmpg-float v0, v4, v2

    if-gez v0, :cond_2

    const-string v0, "\u06e5\u06d6\u06e7\u06e2\u06e7\u06dc\u06e8\u06e1\u06ec\u06dc\u06eb\u06e6\u06e4\u06e5\u06e7\u06e1\u06dc\u06db\u06df\u06ec\u06e7\u06e4\u06e5\u06e7\u06e8\u06d6\u06d6\u06d8\u06da\u06e2\u06df\u06e5\u06e1\u06db\u06e4\u06e4\u06e8\u06d8\u06e1\u06d6\u06d6\u06d6\u06e4\u06d9"

    goto :goto_6

    :sswitch_20
    const-string v0, "\u06dc\u06da\u06e0\u06e8\u06e0\u06e7\u06db\u06e7\u06ec\u06eb\u06e0\u06e6\u06e6\u06e8\u06e6\u06d8\u06e4\u06e6\u06d6\u06d6\u06d6\u06d8\u06e0\u06da\u06e1\u06d8\u06d8\u06e2\u06e6\u06d8\u06e4\u06e8\u06e6\u06d8"

    goto :goto_6

    :sswitch_21
    const-string v0, "\u06d7\u06e4\u06e0\u06e8\u06eb\u06dc\u06e0\u06db\u06eb\u06d7\u06d9\u06dc\u06d8\u06e7\u06d8\u06da\u06e6\u06e0\u06db\u06d6\u06df\u06e4\u06d6\u06dc\u06d6\u06d8\u06df\u06e2\u06dc\u06d8\u06e6\u06d8\u06e1"

    goto :goto_5

    :sswitch_22
    const-string v0, "\u06e0\u06d8\u06db\u06df\u06db\u06eb\u06e2\u06d8\u06e4\u06d9\u06db\u06d7\u06da\u06e6\u06e8\u06d8\u06da\u06db\u06d6\u06d8\u06e7\u06ec\u06d8\u06db\u06e2\u06e4\u06da\u06e4\u06da\u06d6\u06e2\u06e6\u06da\u06e6\u06d6\u06e0\u06e8\u06e5\u06d9\u06ec\u06e5\u06d8\u06eb\u06e2\u06d8\u06d8\u06da\u06df\u06dc\u06d8\u06dc\u06d6\u06dc\u06d8"

    goto/16 :goto_0

    :sswitch_23
    const-string v0, "\u06d8\u06ec\u06d6\u06eb\u06db\u06db\u06d6\u06e6\u06d7\u06e6\u06e7\u06df\u06e7\u06d8\u06e0\u06e7\u06e2\u06e8\u06e4\u06e5\u06e5\u06d6\u06e0\u06d7\u06e4\u06dc\u06e5\u06d7\u06dc\u06d8\u06ec\u06d6\u06d8\u06e7\u06e1\u06e5\u06e8\u06e0\u06e8\u06d8\u06e7\u06e0\u06dc\u06d8\u06e8\u06d9\u06d8\u06d8\u06e5\u06d7\u06db\u06e6\u06df\u06eb\u06ec\u06ec"

    move v3, v2

    goto/16 :goto_0

    :sswitch_24
    const-string v0, "\u06d9\u06e0\u06d7\u06eb\u06dc\u06dc\u06e1\u06e8\u06e8\u06d6\u06e7\u06dc\u06d8\u06eb\u06e1\u06e7\u06d9\u06db\u06e0\u06df\u06ec\u06dc\u06d8\u06eb\u06e0\u06da\u06dc\u06da\u06db\u06e6\u06e4\u06e1\u06e0\u06e0\u06d7\u06ec\u06db"

    move v3, v4

    goto/16 :goto_0

    :sswitch_25
    const v8, 0x70bc3a7a

    const-string v0, "\u06d7\u06e8\u06e2\u06e5\u06e7\u06d9\u06d8\u06d7\u06e7\u06db\u06d6\u06e8\u06e7\u06d9\u06da\u06e7\u06d6\u06e8\u06e5\u06e4\u06d6\u06d8\u06df\u06e4\u06dc\u06d8\u06e6\u06e0\u06dc\u06e2\u06e0\u06da\u06e2\u06eb\u06e1\u06d8\u06eb\u06e4\u06e1\u06d8"

    :goto_7
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v9

    xor-int/2addr v9, v8

    sparse-switch v9, :sswitch_data_7

    goto :goto_7

    :sswitch_26
    const-string v0, "\u06e6\u06ec\u06e6\u06d8\u06e5\u06eb\u06e1\u06d8\u06e2\u06d6\u06ec\u06e4\u06d6\u06e6\u06e0\u06e7\u06ec\u06e0\u06e1\u06d9\u06d9\u06e8\u06e2\u06d8\u06d8\u06eb\u06eb\u06d6\u06dc\u06db\u06d6\u06da\u06d8\u06e8\u06d8\u06d9\u06d9\u06d6\u06d8"

    goto/16 :goto_0

    :sswitch_27
    const-string v0, "\u06e8\u06e1\u06e1\u06d8\u06e7\u06e5\u06ec\u06e7\u06e4\u06d8\u06e0\u06e0\u06db\u06df\u06d6\u06e6\u06e7\u06dc\u06e8\u06d8\u06eb\u06df\u06d8\u06d8\u06db\u06dc\u06e8\u06ec\u06e1\u06e8\u06eb\u06da\u06ec"

    goto :goto_7

    :sswitch_28
    const v9, 0x3eb53077

    const-string v0, "\u06da\u06eb\u06d6\u06d8\u06e4\u06d9\u06da\u06d8\u06d7\u06e4\u06e7\u06da\u06da\u06d9\u06dc\u06e4\u06e8\u06da\u06e5\u06d8\u06dc\u06e6\u06e6\u06d8\u06e1\u06da\u06e1\u06e6\u06dc\u06d7\u06eb\u06d8\u06e6\u06d8\u06e5\u06df\u06da\u06ec\u06d6\u06d8\u06d8\u06d6\u06d6\u06d8\u06da\u06d6\u06d6\u06d8"

    :goto_8
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v10

    xor-int/2addr v10, v9

    sparse-switch v10, :sswitch_data_8

    goto :goto_8

    :sswitch_29
    const-string v0, "\u06db\u06e5\u06e2\u06e0\u06e7\u06e8\u06e8\u06d8\u06d6\u06d7\u06dc\u06e2\u06e8\u06dc\u06e6\u06e7\u06e5\u06df\u06d8\u06e1\u06e1\u06e1\u06e0\u06db\u06e6\u06e1\u06e1\u06d8\u06e2\u06ec\u06df\u06db\u06e7\u06e5\u06d7\u06e7\u06e8"

    goto :goto_8

    :cond_3
    const-string v0, "\u06e1\u06da\u06d6\u06d8\u06e2\u06dc\u06e5\u06d8\u06da\u06eb\u06d8\u06d8\u06e1\u06d6\u06e5\u06eb\u06da\u06d8\u06da\u06d6\u06e0\u06df\u06db\u06df\u06e1\u06d9\u06d9\u06e1\u06e1\u06e4\u06db\u06e1\u06eb"

    goto :goto_8

    :sswitch_2a
    iget v0, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->o0OoOo0:I

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v10

    sub-int/2addr v0, v10

    int-to-float v0, v0

    cmpl-float v0, v4, v0

    if-lez v0, :cond_3

    const-string v0, "\u06e8\u06e2\u06d8\u06d9\u06e4\u06e1\u06d8\u06e5\u06d9\u06dc\u06e5\u06e4\u06e5\u06ec\u06e8\u06e1\u06e4\u06dc\u06e8\u06d8\u06ec\u06e8\u06d6\u06e5\u06ec\u06e5\u06eb\u06d6\u06e8\u06d8\u06ec\u06d7\u06e8\u06d8\u06e2\u06eb\u06e0\u06d9\u06d6\u06e8\u06d7\u06dc\u06e7\u06da\u06e6\u06d9\u06eb\u06e6\u06e5\u06d8\u06d9\u06d6\u06d9\u06d9\u06ec\u06e2\u06d8\u06eb"

    goto :goto_8

    :sswitch_2b
    const-string v0, "\u06d7\u06dc\u06e7\u06e8\u06dc\u06e1\u06d8\u06e2\u06d6\u06df\u06eb\u06db\u06d6\u06e7\u06e0\u06d7\u06d7\u06ec\u06e1\u06d8\u06e2\u06d6\u06da\u06d9\u06e6\u06ec\u06d9\u06dc\u06df\u06e4\u06ec\u06eb\u06e0\u06dc\u06e8\u06df\u06da\u06e6\u06d8\u06dc\u06e2\u06d7\u06e0\u06d7\u06e8\u06dc\u06dc\u06e8\u06db\u06e8\u06e7\u06ec\u06e5\u06e7\u06da\u06ec\u06e4"

    goto :goto_7

    :sswitch_2c
    const-string v0, "\u06e0\u06e0\u06d6\u06eb\u06d7\u06d7\u06e5\u06d6\u06e2\u06df\u06e0\u06e6\u06d8\u06db\u06e6\u06e6\u06d8\u06e5\u06e7\u06eb\u06dc\u06d6\u06e1\u06d8\u06df\u06da\u06d6\u06d8\u06d9\u06eb\u06d7\u06e5\u06eb\u06da"

    goto :goto_7

    :sswitch_2d
    const-string v0, "\u06df\u06e5\u06d9\u06e1\u06dc\u06df\u06e8\u06d9\u06df\u06d8\u06e1\u06d8\u06e8\u06e1\u06e8\u06d8\u06d9\u06df\u06d8\u06d8\u06eb\u06e8\u06e2\u06d6\u06e7\u06e7\u06da\u06d9\u06e4\u06dc"

    goto/16 :goto_0

    :sswitch_2e
    iget v0, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->o0OoOo0:I

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v1, v0

    const-string v0, "\u06e6\u06e6\u06e8\u06d6\u06db\u06d7\u06da\u06ec\u06e1\u06d8\u06da\u06d6\u06d8\u06e2\u06eb\u06d8\u06d6\u06e5\u06e6\u06ec\u06d9\u06ec\u06e2\u06eb\u06eb\u06ec\u06e8\u06e5\u06d8\u06d8\u06ec\u06eb\u06d7\u06e5\u06e7\u06d7\u06df\u06da\u06df\u06ec\u06e7\u06ec\u06e1\u06e2"

    goto/16 :goto_0

    :sswitch_2f
    const-string v0, "\u06e6\u06ec\u06e6\u06d8\u06e5\u06eb\u06e1\u06d8\u06e2\u06d6\u06ec\u06e4\u06d6\u06e6\u06e0\u06e7\u06ec\u06e0\u06e1\u06d9\u06d9\u06e8\u06e2\u06d8\u06d8\u06eb\u06eb\u06d6\u06dc\u06db\u06d6\u06da\u06d8\u06e8\u06d8\u06d9\u06d9\u06d6\u06d8"

    move v3, v1

    goto/16 :goto_0

    :sswitch_30
    invoke-virtual {p1, v6}, Landroid/view/View;->setX(F)V

    const-string v0, "\u06db\u06e7\u06d6\u06d6\u06e5\u06e5\u06d8\u06e7\u06e1\u06e5\u06d8\u06db\u06eb\u06e1\u06d8\u06eb\u06e2\u06e5\u06d8\u06da\u06e5\u06e5\u06d8\u06dc\u06ec\u06ec\u06df\u06d7\u06e4\u06d6\u06ec\u06e8\u06e5\u06e4\u06e8\u06d8\u06d7\u06db\u06e8\u06d6\u06ec\u06d9\u06d6\u06df\u06e5\u06d8\u06e4\u06df\u06e1"

    goto/16 :goto_0

    :sswitch_31
    invoke-virtual {p1, v3}, Landroid/view/View;->setY(F)V

    const-string v0, "\u06e1\u06e5\u06e7\u06d8\u06e1\u06e0\u06df\u06e6\u06e4\u06e8\u06e5\u06e0\u06e6\u06e4\u06d9\u06e5\u06d8\u06e5\u06d9\u06dc\u06e8\u06d7\u06e7\u06e6\u06e5\u06d6\u06e5\u06d7\u06eb\u06d6\u06d8\u06e1\u06e4\u06e6\u06d8\u06e5\u06e4\u06d7\u06e8\u06e4\u06eb\u06df\u06d8\u06e2\u06da\u06ec\u06e6\u06da\u06e2\u06d8\u06d8\u06d9\u06d7\u06e2\u06e5\u06db\u06dc"

    goto/16 :goto_0

    :sswitch_32
    const-string v0, "\u06e5\u06d8\u06e5\u06d8\u06d7\u06e7\u06dc\u06d6\u06e2\u06e8\u06d8\u06d9\u06d7\u06ec\u06e1\u06d6\u06e5\u06d8\u06da\u06e6\u06eb\u06da\u06da\u06db\u06e2\u06e6\u06d8\u06d8\u06e0\u06e6\u06d8\u06ec\u06d6\u06dc\u06d8\u06d8\u06db\u06e5\u06e2\u06e6\u06e6\u06e7\u06d7\u06d8\u06e4\u06e4\u06e1\u06e5\u06e2\u06d9\u06d6\u06d8"

    goto/16 :goto_0

    :sswitch_33
    const-string v0, "\u06e4\u06e1\u06e1\u06e4\u06e7\u06d8\u06e7\u06e4\u06df\u06e1\u06e0\u06d9\u06e7\u06d6\u06e8\u06df\u06ec\u06e6\u06d8\u06e7\u06e4\u06e6\u06d8\u06eb\u06d6\u06d7\u06d7\u06e1\u06dc\u06d9\u06dc\u06e7\u06d8\u06df\u06d9\u06e8\u06d8\u06dc\u06d7\u06e0\u06eb\u06df\u06db\u06eb\u06e1\u06d6\u06d8\u06eb\u06da\u06e1\u06e1\u06ec\u06e6"

    goto/16 :goto_0

    :sswitch_34
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x71083706 -> :sswitch_2e
        -0x6c28d1f7 -> :sswitch_32
        -0x4ea01675 -> :sswitch_10
        -0x43934f43 -> :sswitch_22
        -0x3864db86 -> :sswitch_34
        -0x31f94f63 -> :sswitch_18
        -0x25fabbba -> :sswitch_0
        -0x206892d2 -> :sswitch_f
        -0x200d6c02 -> :sswitch_23
        -0x1b4811a9 -> :sswitch_25
        -0x145f053c -> :sswitch_1
        -0x1231ef6f -> :sswitch_31
        -0x7c7d1c0 -> :sswitch_3
        0x2732a5f -> :sswitch_2
        0x6581ef2 -> :sswitch_1a
        0xb3b2652 -> :sswitch_26
        0xc875dd6 -> :sswitch_24
        0x18f63dc5 -> :sswitch_19
        0x2eb59ac6 -> :sswitch_e
        0x3657132d -> :sswitch_d
        0x4b81e16e -> :sswitch_4
        0x5f4d6113 -> :sswitch_2f
        0x61484573 -> :sswitch_30
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x6d0d25b0 -> :sswitch_5
        -0x604288df -> :sswitch_c
        -0x371a37d8 -> :sswitch_b
        0x3c695ff1 -> :sswitch_7
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        -0x176ec71b -> :sswitch_9
        -0xf022987 -> :sswitch_6
        0x210a9b93 -> :sswitch_8
        0x7c5c8a73 -> :sswitch_a
    .end sparse-switch

    :sswitch_data_3
    .sparse-switch
        -0x265613b7 -> :sswitch_32
        -0xa45ce78 -> :sswitch_17
        0xe30ae73 -> :sswitch_13
        0x30fe64e2 -> :sswitch_11
    .end sparse-switch

    :sswitch_data_4
    .sparse-switch
        -0x605a69de -> :sswitch_16
        -0x309637d8 -> :sswitch_12
        0x2b3dbe01 -> :sswitch_14
        0x54997242 -> :sswitch_15
    .end sparse-switch

    :sswitch_data_5
    .sparse-switch
        -0x473503f3 -> :sswitch_33
        -0x2602b680 -> :sswitch_1d
        -0x23253112 -> :sswitch_21
        0x4bc9b8e4 -> :sswitch_1b
    .end sparse-switch

    :sswitch_data_6
    .sparse-switch
        -0x1c22a9a1 -> :sswitch_1e
        -0xbd65841 -> :sswitch_1c
        -0x715cb65 -> :sswitch_20
        0x4223ae7a -> :sswitch_1f
    .end sparse-switch

    :sswitch_data_7
    .sparse-switch
        -0x2aec04a0 -> :sswitch_2d
        -0x7e0cc89 -> :sswitch_2c
        0x3a503efd -> :sswitch_26
        0x7fa9a2d2 -> :sswitch_28
    .end sparse-switch

    :sswitch_data_8
    .sparse-switch
        0x352e66b -> :sswitch_29
        0x1fb9c7b8 -> :sswitch_2b
        0x483e6045 -> :sswitch_2a
        0x739ae766 -> :sswitch_27
    .end sparse-switch
.end method

.method private OoooOOO()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->OooooOO:Lz2/ja;

    invoke-virtual {v0}, Lz2/ja;->Oooo0oo()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-direct {p0}, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->o000oOoO()V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private OoooOOo()V
    .locals 5

    const-string v0, "\u06da\u06e6\u06e1\u06e5\u06df\u06eb\u06db\u06eb\u06db\u06e1\u06da\u06d8\u06e1\u06ec\u06df\u06da\u06df\u06da\u06e8\u06e4\u06d8\u06e1\u06d7\u06ec\u06d9\u06d9\u06d8\u06df\u06df\u06e6"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x91

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0xd4

    const/16 v2, 0x332

    const v3, -0x19356159

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06da\u06df\u06e5\u06d8\u06d7\u06e8\u06dc\u06d9\u06df\u06e8\u06d8\u06e5\u06df\u06d8\u06e0\u06d6\u06e1\u06da\u06d6\u06d8\u06df\u06e7\u06e2\u06e8\u06e4\u06e5\u06eb\u06db\u06d6\u06d8\u06dc\u06d9\u06e6"

    goto :goto_0

    :sswitch_1
    const v1, 0x236fb298

    const-string v0, "\u06d6\u06e1\u06e1\u06da\u06e7\u06e1\u06d8\u06d9\u06d9\u06e7\u06d7\u06e1\u06e8\u06d8\u06e5\u06e7\u06d7\u06df\u06d8\u06d8\u06e6\u06e2\u06e6\u06d8\u06db\u06eb\u06da\u06db\u06e8\u06e6\u06d8\u06e5\u06ec\u06ec\u06da\u06d9\u06e5\u06e1\u06e6\u06d7\u06d7\u06e5\u06e1\u06e8\u06dc\u06d8\u06db\u06e5\u06dc\u06d8\u06db\u06e2\u06dc\u06d8"

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v2, v1

    sparse-switch v2, :sswitch_data_1

    goto :goto_1

    :sswitch_2
    const-string v0, "\u06ec\u06d9\u06e8\u06d8\u06da\u06e8\u06ec\u06dc\u06dc\u06dc\u06d7\u06dc\u06eb\u06dc\u06e1\u06e8\u06d7\u06e4\u06d8\u06d8\u06e4\u06d7\u06e1\u06eb\u06dc\u06e1\u06d8\u06eb\u06e1\u06db\u06e7\u06ec\u06dc\u06d8\u06e6\u06e8\u06d6\u06e4\u06db\u06e2\u06d7\u06e4\u06d7\u06db\u06e8\u06d6\u06d8\u06d7\u06e0\u06d6\u06d8\u06e7\u06dc\u06e1"

    goto :goto_1

    :sswitch_3
    const-string v0, "\u06ec\u06e0\u06e1\u06d8\u06da\u06d6\u06ec\u06dc\u06d9\u06d8\u06d8\u06dc\u06db\u06d7\u06d9\u06da\u06dc\u06db\u06e1\u06dc\u06d8\u06e5\u06e1\u06e2\u06e4\u06e5\u06d8\u06d8\u06e0\u06df\u06e7\u06e7\u06e2\u06ec\u06d9\u06e6\u06d8\u06e8\u06e6\u06dc\u06e6\u06e8\u06eb\u06e2\u06da\u06e1"

    goto :goto_1

    :sswitch_4
    const v2, 0x47c45ee6

    const-string v0, "\u06d9\u06eb\u06e5\u06dc\u06da\u06dc\u06d8\u06eb\u06e0\u06e6\u06d8\u06e0\u06e2\u06ec\u06db\u06ec\u06e7\u06da\u06dc\u06dc\u06d9\u06e4\u06e7\u06d8\u06d7\u06d8\u06d9\u06ec\u06d7\u06da\u06e7\u06d7\u06d7\u06e8\u06d8\u06e7\u06e6\u06e7\u06d8\u06db\u06eb\u06d6\u06d7\u06dc\u06d6\u06e6\u06e7\u06d6\u06e0\u06da\u06dc"

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v2

    sparse-switch v3, :sswitch_data_2

    goto :goto_2

    :sswitch_5
    const-string v0, "\u06d9\u06e4\u06d7\u06df\u06e4\u06d8\u06e2\u06d9\u06d9\u06dc\u06dc\u06e7\u06d8\u06db\u06e8\u06ec\u06d9\u06da\u06dc\u06e1\u06e7\u06e8\u06dc\u06e7\u06e5\u06da\u06d8\u06dc\u06e2\u06d8\u06e7\u06eb\u06dc\u06e8\u06d6\u06d8\u06dc\u06e6\u06e4\u06d9\u06e5"

    goto :goto_1

    :cond_0
    const-string v0, "\u06e8\u06eb\u06dc\u06d8\u06e0\u06df\u06e7\u06e8\u06d9\u06e1\u06d8\u06e1\u06df\u06e6\u06e5\u06e2\u06d8\u06d8\u06df\u06dc\u06d8\u06e2\u06ec\u06e0\u06eb\u06e1\u06dc\u06e2\u06e1\u06d8\u06d9\u06da\u06d9\u06d7\u06e8\u06dc\u06d8\u06e6\u06e8\u06dc\u06da\u06e8\u06e8\u06e0"

    goto :goto_2

    :sswitch_6
    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->OooO00o()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v0

    iget-boolean v0, v0, Lcom/cyjh/elfin/base/AppContext;->Ooooooo:Z

    if-eqz v0, :cond_0

    const-string v0, "\u06e1\u06e8\u06eb\u06e7\u06e6\u06db\u06ec\u06dc\u06da\u06df\u06da\u06d7\u06db\u06d7\u06e5\u06e2\u06e2\u06e2\u06e1\u06d6\u06d7\u06e7\u06da\u06e8\u06d8\u06e5\u06e6\u06eb\u06e8\u06d7\u06d6\u06d8\u06e2\u06eb\u06ec\u06e4\u06d8"

    goto :goto_2

    :sswitch_7
    const-string v0, "\u06d6\u06e8\u06e5\u06dc\u06e0\u06d7\u06e7\u06d7\u06ec\u06d9\u06d7\u06d7\u06df\u06db\u06e0\u06da\u06df\u06e1\u06ec\u06e5\u06d8\u06e2\u06dc\u06d9\u06e2\u06df\u06e0\u06e2\u06e5\u06e7\u06e0\u06e8\u06d7\u06d9\u06d8\u06df\u06d6\u06db\u06e1\u06d7\u06ec\u06ec\u06e1\u06e1\u06e4\u06e8\u06e2\u06e5\u06d8\u06d9\u06d8\u06dc\u06d8\u06da\u06e2"

    goto :goto_2

    :sswitch_8
    const-string v0, "\u06dc\u06dc\u06df\u06e6\u06d8\u06e4\u06eb\u06e0\u06d7\u06e2\u06e1\u06d8\u06da\u06e7\u06e1\u06d8\u06d7\u06d8\u06df\u06e5\u06d6\u06e2\u06e7\u06d7\u06e6\u06da\u06e1\u06e7\u06e7\u06e8\u06da"

    goto :goto_0

    :sswitch_9
    const v1, -0x14609e3

    const-string v0, "\u06e8\u06e4\u06e7\u06dc\u06d6\u06d6\u06e1\u06e8\u06db\u06d9\u06e7\u06d8\u06d8\u06e6\u06e2\u06ec\u06dc\u06e7\u06db\u06d9\u06d9\u06e7\u06ec\u06e4\u06d8\u06d8\u06d6\u06e8\u06da\u06eb\u06dc\u06e5"

    :goto_3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v2, v1

    sparse-switch v2, :sswitch_data_3

    goto :goto_3

    :sswitch_a
    const-string v0, "\u06da\u06ec\u06e7\u06e1\u06d9\u06dc\u06d8\u06db\u06e1\u06d8\u06d6\u06eb\u06e5\u06d8\u06e2\u06e6\u06df\u06e1\u06d8\u06d9\u06d7\u06e7\u06dc\u06e7\u06ec\u06d6\u06e5\u06db\u06e0\u06eb\u06e0\u06db\u06eb\u06e5\u06e6\u06d7\u06ec\u06da\u06e0\u06e6\u06d8\u06ec\u06e8"

    goto :goto_0

    :sswitch_b
    const-string v0, "\u06db\u06e2\u06eb\u06ec\u06d9\u06d8\u06d6\u06da\u06e8\u06d8\u06e0\u06df\u06e6\u06d8\u06d6\u06ec\u06e1\u06d8\u06ec\u06eb\u06db\u06db\u06db\u06e4\u06dc\u06d6\u06da\u06d8\u06e7\u06dc\u06e7\u06e8\u06e7\u06da\u06e2\u06e5\u06d8\u06eb\u06df\u06d7\u06df\u06da\u06e1\u06eb\u06d9\u06d6\u06ec\u06e2\u06e0\u06eb\u06d7\u06df"

    goto :goto_3

    :sswitch_c
    const v2, -0x655d59bd

    const-string v0, "\u06df\u06d6\u06db\u06d8\u06e0\u06e6\u06e5\u06e8\u06db\u06e5\u06e0\u06db\u06d6\u06e0\u06e8\u06d9\u06eb\u06e1\u06da\u06e1\u06e1\u06d9\u06ec\u06ec\u06d7\u06da\u06d8\u06d8\u06e8\u06e8\u06e5\u06d8\u06df\u06e2\u06e1\u06e4\u06e6\u06e8\u06d8\u06dc\u06d6\u06da\u06df\u06d8\u06ec"

    :goto_4
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v2

    sparse-switch v3, :sswitch_data_4

    goto :goto_4

    :sswitch_d
    invoke-static {}, Lz2/x4;->OooO0O0()Lz2/x4;

    move-result-object v0

    const-string v3, "sp_key_script_status"

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v3, v4}, Lz2/x4;->OooO00o(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "\u06dc\u06ec\u06e5\u06d8\u06d8\u06e2\u06e6\u06d8\u06d7\u06dc\u06d8\u06d8\u06e2\u06e0\u06e5\u06d8\u06d9\u06eb\u06d7\u06d8\u06df\u06e7\u06dc\u06ec\u06e1\u06d8\u06d7\u06e4\u06db\u06eb\u06e1\u06dc\u06dc\u06da"

    goto :goto_4

    :cond_1
    const-string v0, "\u06e2\u06dc\u06e5\u06ec\u06d6\u06d8\u06d8\u06ec\u06ec\u06d6\u06d6\u06e0\u06db\u06e5\u06e5\u06d6\u06d6\u06eb\u06e4\u06e4\u06d6\u06d8\u06d8\u06e4\u06d8\u06e5\u06e4\u06d6\u06ec\u06d8\u06d9\u06db\u06d6\u06eb\u06e5\u06df\u06d9"

    goto :goto_4

    :sswitch_e
    const-string v0, "\u06e0\u06d8\u06ec\u06d8\u06dc\u06d8\u06d8\u06e2\u06dc\u06e1\u06e8\u06e7\u06dc\u06d6\u06d9\u06eb\u06df\u06da\u06e6\u06d8\u06e7\u06e1\u06e1\u06d8\u06e2\u06e5\u06e5\u06e6\u06ec\u06d6\u06e6\u06e2"

    goto :goto_4

    :sswitch_f
    const-string v0, "\u06d9\u06eb\u06d6\u06d8\u06dc\u06da\u06d8\u06d8\u06e2\u06e0\u06d9\u06d7\u06d9\u06e2\u06e2\u06e5\u06d7\u06db\u06e8\u06d8\u06d8\u06e4\u06df\u06ec\u06db\u06e0\u06e5\u06df\u06d7\u06e1\u06db\u06e5\u06d8\u06d8\u06e6\u06e7\u06df\u06df"

    goto :goto_3

    :sswitch_10
    const-string v0, "\u06e8\u06e8\u06e8\u06d8\u06e8\u06e0\u06d6\u06e0\u06d6\u06d6\u06d8\u06da\u06e4\u06e1\u06d8\u06e6\u06e1\u06e2\u06d7\u06dc\u06e4\u06e1\u06d7\u06e7\u06d7\u06e8\u06e8\u06df\u06eb\u06da\u06e5\u06e2\u06d8"

    goto :goto_3

    :sswitch_11
    invoke-static {}, Lz2/e5;->OooO00o()Lz2/i40;

    move-result-object v0

    new-instance v1, Lz2/i9;

    invoke-direct {v1, p0}, Lz2/i9;-><init>(Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;)V

    invoke-virtual {v0, v1}, Lz2/p40;->OooO0o(Ljava/lang/Runnable;)Lorg/jdeferred/Promise;

    const-string v0, "\u06df\u06e1\u06e7\u06d8\u06e5\u06e2\u06e7\u06df\u06e5\u06dc\u06e8\u06d9\u06e8\u06e1\u06da\u06e2\u06e6\u06dc\u06d8\u06e5\u06e8\u06ec\u06eb\u06d9\u06e5\u06e1\u06dc\u06e1\u06d8\u06eb\u06d6\u06da\u06e0\u06eb\u06e7\u06dc\u06ec\u06d8\u06e6\u06d7\u06d8\u06d8\u06e7\u06e2\u06e8\u06d8\u06e1\u06e0\u06dc\u06e1\u06e4\u06db\u06e5\u06e5\u06e8\u06d8\u06d9\u06d6\u06d6\u06d8"

    goto/16 :goto_0

    :sswitch_12
    const-string v0, "\u06df\u06e1\u06e7\u06d8\u06e5\u06e2\u06e7\u06df\u06e5\u06dc\u06e8\u06d9\u06e8\u06e1\u06da\u06e2\u06e6\u06dc\u06d8\u06e5\u06e8\u06ec\u06eb\u06d9\u06e5\u06e1\u06dc\u06e1\u06d8\u06eb\u06d6\u06da\u06e0\u06eb\u06e7\u06dc\u06ec\u06d8\u06e6\u06d7\u06d8\u06d8\u06e7\u06e2\u06e8\u06d8\u06e1\u06e0\u06dc\u06e1\u06e4\u06db\u06e5\u06e5\u06e8\u06d8\u06d9\u06d6\u06d6\u06d8"

    goto/16 :goto_0

    :sswitch_13
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7967f2a2 -> :sswitch_9
        -0x6fb051f4 -> :sswitch_11
        -0x26e5c0c0 -> :sswitch_13
        0x3a94cd92 -> :sswitch_1
        0x5656f049 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x211353fc -> :sswitch_12
        -0x1444d668 -> :sswitch_2
        0xd38e0c -> :sswitch_8
        0x7bd8bf9 -> :sswitch_4
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        -0x72cfd94c -> :sswitch_6
        -0x261f6045 -> :sswitch_3
        0xb7412f8 -> :sswitch_7
        0xcfc54b4 -> :sswitch_5
    .end sparse-switch

    :sswitch_data_3
    .sparse-switch
        -0x5830e55a -> :sswitch_12
        -0x2f8d2499 -> :sswitch_c
        0xa56220f -> :sswitch_a
        0x76fa5c26 -> :sswitch_10
    .end sparse-switch

    :sswitch_data_4
    .sparse-switch
        -0x4818af88 -> :sswitch_d
        -0x1fa3d2d2 -> :sswitch_e
        0x1d5577a1 -> :sswitch_f
        0x43f744f7 -> :sswitch_b
    .end sparse-switch
.end method

.method private OoooOo0()V
    .locals 6

    const/4 v2, 0x0

    const-string v0, "\u06d6\u06dc\u06e6\u06e7\u06d8\u06e0\u06e6\u06dc\u06d6\u06ec\u06e0\u06df\u06dc\u06eb\u06da\u06e0\u06e1\u06ec\u06df\u06e0\u06e8\u06d8\u06d9\u06ec\u06d9\u06e2\u06eb\u06d8\u06eb\u06d9\u06d9"

    move v1, v2

    move v3, v2

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v4, 0x189

    xor-int/2addr v2, v4

    xor-int/lit8 v2, v2, 0x3

    const/16 v4, 0x23f

    const v5, 0x424cd6ad

    xor-int/2addr v2, v4

    xor-int/2addr v2, v5

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06da\u06e0\u06df\u06d7\u06e1\u06d8\u06ec\u06d6\u06e5\u06e5\u06e2\u06e1\u06eb\u06da\u06da\u06e8\u06e5\u06e0\u06d9\u06d8\u06d6\u06e4\u06dc\u06d9\u06ec\u06e7\u06d8\u06d8\u06d9\u06d6\u06e2\u06dc\u06db\u06d6\u06d8\u06e0\u06e7\u06e1\u06e4\u06e8\u06e1\u06d8\u06eb\u06d9\u06d8\u06da\u06d8\u06e2\u06eb\u06da"

    goto :goto_0

    :sswitch_1
    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->OooO00o()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v0

    iget-boolean v2, v0, Lcom/cyjh/elfin/base/AppContext;->OoooooO:Z

    const-string v0, "\u06e8\u06e6\u06db\u06e0\u06d7\u06eb\u06e8\u06e5\u06e8\u06e6\u06d8\u06e2\u06e4\u06e7\u06df\u06e0\u06df\u06da\u06d6\u06e4\u06d8\u06ec\u06e1\u06e8\u06e5\u06e4\u06df\u06e6\u06e7\u06e2\u06d7\u06d7\u06d7\u06d6\u06dc\u06db\u06e2\u06df\u06e5\u06e6\u06df\u06db\u06e0\u06d6\u06d8\u06d8\u06da\u06e6\u06db\u06e8\u06e2\u06e1\u06e8\u06d9"

    move v3, v2

    goto :goto_0

    :sswitch_2
    invoke-static {}, Lz2/x4;->OooO0O0()Lz2/x4;

    move-result-object v0

    const-string v1, "sp_key_switch_setting_open_run_script"

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lz2/x4;->OooO00o(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v1

    const-string v0, "\u06e5\u06d8\u06eb\u06e7\u06db\u06db\u06eb\u06e1\u06d6\u06db\u06d8\u06e7\u06e6\u06e2\u06da\u06da\u06ec\u06ec\u06e2\u06e4\u06d6\u06e6\u06d7\u06e5\u06e4\u06d6\u06da\u06d6\u06e8\u06e6\u06e0\u06db\u06dc\u06da\u06d8\u06e8\u06e8\u06d6\u06d8\u06d7\u06d7\u06d8\u06d8"

    goto :goto_0

    :sswitch_3
    invoke-static {p0, v1}, Lz2/a4;->OooOoo(Landroid/content/Context;Z)V

    const-string v0, "\u06dc\u06e6\u06db\u06d9\u06e0\u06e8\u06d7\u06e7\u06dc\u06d8\u06d6\u06ec\u06db\u06dc\u06d6\u06e5\u06e0\u06da\u06ec\u06e5\u06dc\u06e8\u06da\u06d9\u06ec\u06eb\u06d7\u06d8\u06e2\u06dc\u06da\u06e5\u06e7\u06e6\u06d7\u06eb\u06e0\u06e0\u06e6\u06e1\u06e6\u06d8\u06e5\u06e0\u06e0\u06e4\u06df\u06ec"

    goto :goto_0

    :sswitch_4
    const v2, -0x32613877

    const-string v0, "\u06ec\u06d8\u06e8\u06db\u06e1\u06d6\u06e5\u06ec\u06e4\u06df\u06e0\u06df\u06d8\u06eb\u06e6\u06dc\u06da\u06df\u06dc\u06e5\u06dc\u06e1\u06e0\u06e1\u06e0\u06d6\u06da\u06e5\u06e0\u06e0\u06e2\u06e8\u06e2\u06e4\u06db\u06e8"

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    xor-int/2addr v4, v2

    sparse-switch v4, :sswitch_data_1

    goto :goto_1

    :sswitch_5
    const v4, 0x42fbf5f5

    const-string v0, "\u06db\u06ec\u06df\u06e0\u06ec\u06da\u06e7\u06e4\u06eb\u06d6\u06e7\u06e0\u06d7\u06e6\u06dc\u06d8\u06d6\u06e6\u06e7\u06d8\u06d6\u06e1\u06da\u06d9\u06e0\u06d9\u06d6\u06d8\u06d8\u06e8\u06e8\u06df\u06e6\u06e5\u06d6\u06df\u06e2\u06dc"

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v5

    xor-int/2addr v5, v4

    sparse-switch v5, :sswitch_data_2

    goto :goto_2

    :sswitch_6
    const-string v0, "\u06dc\u06df\u06e6\u06d8\u06eb\u06e0\u06d8\u06d8\u06db\u06dc\u06e0\u06da\u06e2\u06e0\u06e5\u06e6\u06e8\u06d8\u06da\u06e5\u06e7\u06eb\u06eb\u06dc\u06d8\u06e5\u06d9\u06d8\u06d8\u06db\u06d6\u06d8\u06d8\u06e0\u06db\u06e4\u06e5\u06e7\u06d8\u06d8\u06d7\u06e1\u06e2\u06d7\u06e0\u06e0\u06df\u06d8\u06d8\u06e1\u06eb\u06dc\u06e5\u06e7\u06da"

    goto :goto_1

    :sswitch_7
    const-string v0, "\u06e7\u06d8\u06e6\u06e8\u06e6\u06d8\u06d8\u06eb\u06d8\u06d9\u06db\u06db\u06e0\u06dc\u06da\u06e6\u06e6\u06dc\u06e7\u06eb\u06e1\u06d8\u06d8\u06e6\u06e5\u06d8\u06eb\u06e5\u06e4\u06e4\u06ec\u06df\u06d7\u06e1\u06db\u06eb\u06dc\u06e6"

    goto :goto_1

    :cond_0
    const-string v0, "\u06e8\u06e4\u06d7\u06e8\u06e5\u06e6\u06e5\u06e0\u06e8\u06d8\u06e8\u06eb\u06e2\u06dc\u06da\u06d8\u06d6\u06d6\u06da\u06e2\u06e0\u06e2\u06e5\u06e2\u06e6\u06eb\u06ec\u06e6\u06e4\u06e4"

    goto :goto_2

    :sswitch_8
    if-eqz v1, :cond_0

    const-string v0, "\u06db\u06e7\u06d8\u06e4\u06eb\u06e1\u06d8\u06d6\u06db\u06e8\u06d8\u06d9\u06e7\u06e7\u06d8\u06e4\u06e5\u06d8\u06db\u06d9\u06da\u06eb\u06e2\u06e7\u06d8\u06e6\u06db\u06e6\u06ec\u06e2\u06e7\u06eb\u06e6\u06d8\u06dc\u06d8\u06d8\u06e2\u06db\u06d7\u06e2\u06e6\u06e5\u06d8\u06e2\u06e2\u06e1\u06d9\u06da\u06e0\u06e4\u06e6\u06db\u06e0\u06ec\u06da\u06e4\u06d6"

    goto :goto_2

    :sswitch_9
    const-string v0, "\u06e0\u06e1\u06d6\u06d8\u06dc\u06e4\u06d6\u06dc\u06dc\u06dc\u06e7\u06df\u06e5\u06d8\u06e5\u06d7\u06d9\u06e2\u06e4\u06e6\u06d8\u06d7\u06e2\u06e5\u06e7\u06d9\u06e1\u06d8\u06db\u06eb\u06d6\u06ec\u06e8\u06e5\u06d8\u06d6\u06e4\u06e8\u06e4\u06d8\u06e2\u06d6\u06e8\u06d6\u06d8\u06d9\u06e2"

    goto :goto_2

    :sswitch_a
    const-string v0, "\u06dc\u06e5\u06e5\u06d8\u06d7\u06dc\u06e7\u06d8\u06e2\u06d9\u06dc\u06e2\u06e6\u06ec\u06e0\u06d9\u06e5\u06eb\u06dc\u06e1\u06e0\u06e7\u06e6\u06d8\u06d7\u06db\u06e2\u06da\u06e8\u06e8\u06db\u06d9\u06d7\u06e6\u06e2\u06e5\u06d9\u06db\u06d6\u06e5\u06e6\u06db\u06d8\u06e0\u06d9\u06d6\u06d7\u06e7\u06e4\u06e6\u06db\u06eb\u06ec\u06e1\u06d8\u06dc\u06e8\u06e1\u06d8"

    goto :goto_1

    :sswitch_b
    const-string v0, "\u06d6\u06e5\u06d6\u06d8\u06e1\u06eb\u06dc\u06db\u06eb\u06e4\u06e4\u06da\u06dc\u06d8\u06d9\u06e0\u06e0\u06e4\u06d6\u06d7\u06e2\u06db\u06db\u06e1\u06e8\u06e4\u06e8\u06e4\u06d7\u06da\u06eb\u06dc\u06d8\u06db\u06e8\u06e6\u06d8\u06e6\u06d8\u06d9"

    goto :goto_0

    :sswitch_c
    const v2, 0x71606567

    const-string v0, "\u06e1\u06d6\u06e0\u06e8\u06e2\u06e6\u06d8\u06e4\u06e2\u06d6\u06e4\u06e5\u06e1\u06d8\u06eb\u06e1\u06e1\u06d8\u06d6\u06da\u06dc\u06d8\u06df\u06e6\u06e6\u06d9\u06e6\u06e5\u06e7\u06dc\u06ec\u06e0\u06d7\u06d6\u06e8\u06e4\u06d7\u06e2\u06db"

    :goto_3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    xor-int/2addr v4, v2

    sparse-switch v4, :sswitch_data_3

    goto :goto_3

    :sswitch_d
    const-string v0, "\u06d6\u06e5\u06d6\u06e4\u06df\u06ec\u06e1\u06dc\u06e5\u06e0\u06e6\u06e6\u06d8\u06e7\u06ec\u06eb\u06eb\u06e7\u06d8\u06d8\u06ec\u06e4\u06ec\u06d8\u06d7\u06e1\u06e8\u06d9\u06e5\u06d8\u06d9\u06e4\u06e5\u06eb\u06d9\u06df\u06dc\u06eb\u06e6\u06d8\u06d6\u06d9\u06e5\u06d6\u06ec\u06eb\u06e8\u06e6\u06ec\u06ec\u06e5\u06d8\u06db\u06e2\u06db\u06e7\u06d9\u06e4"

    goto :goto_0

    :sswitch_e
    const-string v0, "\u06e0\u06e7\u06e8\u06e4\u06dc\u06e0\u06db\u06e8\u06e8\u06e2\u06da\u06dc\u06e7\u06d7\u06d6\u06d6\u06eb\u06d7\u06e5\u06da\u06e1\u06d8\u06e1\u06db\u06e5\u06df\u06e2\u06e5\u06d8\u06d7\u06eb\u06e2\u06df\u06d7\u06e5\u06e1\u06d9\u06dc\u06d8\u06e7\u06dc\u06df\u06da\u06d9\u06e6\u06d8"

    goto :goto_3

    :sswitch_f
    const v4, 0x88ad1da

    const-string v0, "\u06d6\u06e2\u06e1\u06d8\u06e8\u06e0\u06e2\u06e0\u06d7\u06ec\u06db\u06db\u06ec\u06da\u06df\u06dc\u06eb\u06d8\u06d9\u06eb\u06e6\u06dc\u06e2\u06e7\u06ec\u06e8\u06e7\u06df\u06e5\u06dc\u06da"

    :goto_4
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v5

    xor-int/2addr v5, v4

    sparse-switch v5, :sswitch_data_4

    goto :goto_4

    :sswitch_10
    const-string v0, "\u06e6\u06da\u06d7\u06db\u06d6\u06df\u06e0\u06e2\u06dc\u06e1\u06d8\u06d8\u06e6\u06d9\u06e2\u06ec\u06d7\u06d8\u06d8\u06d9\u06db\u06e0\u06e7\u06d7\u06eb\u06d9\u06da\u06e6\u06d8\u06eb\u06eb\u06eb\u06d6\u06e4\u06e6\u06d7\u06e4\u06d8"

    goto :goto_4

    :cond_1
    const-string v0, "\u06df\u06e2\u06e8\u06d7\u06d8\u06e8\u06d8\u06e0\u06d8\u06df\u06e8\u06df\u06d8\u06eb\u06db\u06e6\u06d8\u06d8\u06ec\u06e4\u06d8\u06db\u06e1\u06e6\u06ec\u06d8\u06df\u06e7\u06e6\u06d8\u06d8\u06e2\u06e7\u06da\u06d6\u06d9\u06ec\u06d7\u06d6\u06d9\u06d9\u06d8\u06d8\u06db\u06e1\u06eb\u06e2\u06d7\u06e2\u06d9\u06e8\u06e1\u06d8\u06eb\u06e2\u06e8\u06e1\u06e2\u06e7"

    goto :goto_4

    :sswitch_11
    if-eqz v3, :cond_1

    const-string v0, "\u06e4\u06d6\u06dc\u06d8\u06e7\u06dc\u06e1\u06db\u06e4\u06e2\u06d6\u06d6\u06db\u06d7\u06df\u06e6\u06d8\u06d9\u06dc\u06d8\u06d8\u06e1\u06e4\u06e4\u06e8\u06ec\u06d8\u06d8\u06eb\u06d7\u06d6\u06d8\u06e7\u06df\u06e8"

    goto :goto_4

    :sswitch_12
    const-string v0, "\u06d9\u06e6\u06e8\u06d6\u06eb\u06e1\u06d8\u06e1\u06e5\u06eb\u06e2\u06d7\u06d7\u06e7\u06ec\u06e8\u06d8\u06e7\u06e2\u06db\u06e6\u06dc\u06e6\u06e0\u06e7\u06e4\u06e7\u06e2\u06da\u06d7\u06d6\u06d7\u06da\u06dc\u06d6\u06d8\u06dc\u06e7\u06eb\u06df\u06db\u06e8\u06e8\u06dc\u06e7\u06d8"

    goto :goto_3

    :sswitch_13
    const-string v0, "\u06d8\u06ec\u06e1\u06e5\u06d7\u06e1\u06e0\u06e2\u06d8\u06d8\u06d6\u06ec\u06df\u06e0\u06ec\u06d8\u06d8\u06d7\u06e1\u06e1\u06ec\u06db\u06e4\u06ec\u06db\u06da\u06da\u06e6\u06df\u06ec\u06e5\u06e6"

    goto :goto_3

    :sswitch_14
    invoke-static {}, Lz2/e5;->OooO00o()Lz2/i40;

    move-result-object v0

    new-instance v2, Lz2/g9;

    invoke-direct {v2, p0}, Lz2/g9;-><init>(Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;)V

    invoke-virtual {v0, v2}, Lz2/p40;->OooO0o(Ljava/lang/Runnable;)Lorg/jdeferred/Promise;

    const-string v0, "\u06d8\u06e6\u06e2\u06dc\u06df\u06e0\u06db\u06d9\u06e8\u06d6\u06e4\u06eb\u06d6\u06e5\u06e6\u06d8\u06e8\u06da\u06d9\u06d8\u06db\u06e1\u06d8\u06e2\u06e8\u06df\u06e1\u06da\u06dc\u06da\u06eb\u06e0\u06ec\u06ec\u06dc\u06d8\u06e8\u06e8\u06eb\u06ec\u06da\u06e0\u06e4\u06e5"

    goto/16 :goto_0

    :sswitch_15
    const-string v0, "\u06d8\u06e6\u06e2\u06dc\u06df\u06e0\u06db\u06d9\u06e8\u06d6\u06e4\u06eb\u06d6\u06e5\u06e6\u06d8\u06e8\u06da\u06d9\u06d8\u06db\u06e1\u06d8\u06e2\u06e8\u06df\u06e1\u06da\u06dc\u06da\u06eb\u06e0\u06ec\u06ec\u06dc\u06d8\u06e8\u06e8\u06eb\u06ec\u06da\u06e0\u06e4\u06e5"

    goto/16 :goto_0

    :sswitch_16
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x6a00b5f7 -> :sswitch_4
        -0x6803b4b2 -> :sswitch_14
        -0x590e1f11 -> :sswitch_0
        -0x5581c26c -> :sswitch_c
        -0x4e68c3c8 -> :sswitch_3
        -0x25471655 -> :sswitch_1
        0x378a0e44 -> :sswitch_2
        0x58b4ad5d -> :sswitch_16
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x6723ae59 -> :sswitch_a
        -0x3662fe73 -> :sswitch_15
        0x7cc5df2 -> :sswitch_b
        0x418402a1 -> :sswitch_5
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        -0x1e4167db -> :sswitch_9
        0x2028d6d7 -> :sswitch_6
        0x26acaa8f -> :sswitch_7
        0x3ef3c46e -> :sswitch_8
    .end sparse-switch

    :sswitch_data_3
    .sparse-switch
        -0x3721f996 -> :sswitch_f
        -0x338ed788 -> :sswitch_15
        -0x12015dcf -> :sswitch_d
        0x493afd63 -> :sswitch_13
    .end sparse-switch

    :sswitch_data_4
    .sparse-switch
        -0x7fe1495a -> :sswitch_12
        -0x5c979a40 -> :sswitch_10
        -0x16519868 -> :sswitch_e
        0x29c21966 -> :sswitch_11
    .end sparse-switch
.end method

.method private OoooOoO()V
    .locals 4

    const-string v0, "\u06d6\u06db\u06d8\u06e7\u06eb\u06e7\u06e8\u06d8\u06dc\u06db\u06d6\u06e6\u06e5\u06d9\u06df\u06e0\u06da\u06e4\u06e7\u06eb\u06d6\u06db\u06d9\u06df\u06d7\u06e8\u06d6\u06d8\u06ec\u06e5\u06da\u06dc\u06e1\u06dc\u06d8\u06db\u06d6\u06eb"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x239

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x3f9

    const/16 v2, 0x29f

    const v3, -0x29ae76b

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06db\u06d8\u06e5\u06d8\u06da\u06db\u06d6\u06e4\u06e0\u06d7\u06e8\u06da\u06eb\u06e2\u06e0\u06db\u06d8\u06d6\u06d8\u06e2\u06d8\u06d9\u06d6\u06db\u06e2\u06da\u06e0\u06e2\u06d7\u06e4"

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/cyjh/common/base/activity/BaseModelActivity;->OooooO0:Landroidx/lifecycle/AndroidViewModel;

    check-cast v0, Lz2/na;

    invoke-virtual {v0}, Lz2/na;->Oooo0O0()V

    const-string v0, "\u06ec\u06d9\u06da\u06d9\u06eb\u06ec\u06e4\u06e7\u06da\u06d7\u06e4\u06e8\u06d8\u06d9\u06df\u06e8\u06ec\u06ec\u06dc\u06d8\u06ec\u06d7\u06dc\u06db\u06e4\u06d8\u06d8\u06e2\u06e8\u06dc\u06d8\u06db\u06e1\u06d8\u06d9\u06dc\u06e8\u06d8\u06dc\u06db\u06d6\u06d8\u06eb\u06e5\u06e6\u06e2\u06db\u06d8\u06d8\u06ec\u06da\u06d9\u06e7\u06d9\u06d8\u06d8"

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/cyjh/common/base/activity/BaseModelActivity;->OooooO0:Landroidx/lifecycle/AndroidViewModel;

    check-cast v0, Lz2/na;

    invoke-virtual {v0}, Lz2/na;->Oooo0OO()V

    const-string v0, "\u06e5\u06d9\u06d6\u06df\u06d7\u06da\u06eb\u06e7\u06df\u06d9\u06d9\u06dc\u06e8\u06db\u06e0\u06e7\u06d6\u06e1\u06d8\u06da\u06e5\u06e7\u06e6\u06d9\u06d6\u06e1\u06e1\u06e5\u06e8\u06ec\u06dc\u06d8\u06e1\u06dc\u06e5\u06d8\u06ec\u06d7\u06e5\u06d8\u06d9\u06eb\u06d7\u06e2\u06e2\u06d8\u06d8\u06dc\u06eb\u06e5\u06eb\u06eb"

    goto :goto_0

    :sswitch_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x47b2bd2d -> :sswitch_2
        -0x284d005b -> :sswitch_1
        -0x86918ac -> :sswitch_0
        0x1659112b -> :sswitch_3
    .end sparse-switch
.end method

.method private OoooOoo(Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cyjh/http/bean/NotifyMsgBean;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x0

    const v7, 0x7f0801d3

    const/4 v6, 0x0

    const-string v0, "\u06eb\u06e1\u06e7\u06d8\u06e0\u06eb\u06e2\u06e5\u06d7\u06d7\u06e7\u06e2\u06e5\u06d8\u06e2\u06da\u06eb\u06da\u06e2\u06df\u06e2\u06d7\u06ec\u06e1\u06d8\u06d8\u06d8\u06e5\u06dc\u06ec\u06e8\u06e5\u06d9"

    move-object v1, v2

    move-object v3, v2

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v4, 0x11e

    xor-int/2addr v2, v4

    xor-int/lit16 v2, v2, 0x116

    const/16 v4, 0xae

    const v5, -0x1a7110ac

    xor-int/2addr v2, v4

    xor-int/2addr v2, v5

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d6\u06e7\u06da\u06e8\u06db\u06d6\u06d8\u06db\u06da\u06e6\u06d8\u06e4\u06e5\u06d9\u06e2\u06dc\u06d7\u06e0\u06e8\u06e1\u06d8\u06d7\u06e0\u06e0\u06e4\u06da\u06d8\u06d6\u06d9\u06d8\u06d8\u06e8\u06e2\u06d6\u06e1\u06df\u06e1\u06e0\u06e0\u06e7\u06e0\u06e5\u06d6\u06d8\u06e6\u06dc\u06d8\u06d7\u06e8\u06e5\u06d8\u06df\u06d9\u06e2\u06d9\u06dc\u06eb\u06dc\u06db"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06e1\u06e6\u06d6\u06d6\u06e4\u06e8\u06d8\u06db\u06da\u06d7\u06e4\u06eb\u06da\u06e4\u06e2\u06ec\u06d8\u06df\u06da\u06da\u06e5\u06d8\u06da\u06e1\u06e7\u06d8\u06db\u06dc\u06df\u06e8\u06e4\u06e8\u06e2\u06e6\u06e4\u06df\u06d6\u06d8"

    goto :goto_0

    :sswitch_2
    new-instance v0, Landroidx/core/app/NotificationCompat$Builder;

    invoke-direct {v0, p0}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->o00O0O:Landroidx/core/app/NotificationCompat$Builder;

    const-string v0, "\u06e4\u06e8\u06e0\u06e5\u06ec\u06e6\u06d8\u06da\u06e4\u06e1\u06d8\u06db\u06dc\u06e1\u06d8\u06e8\u06e7\u06e1\u06eb\u06e1\u06d6\u06d7\u06e1\u06d8\u06da\u06dc\u06ec\u06e1\u06d7\u06dc\u06d8\u06e8\u06db\u06df\u06e0\u06df\u06db\u06e1\u06e6\u06e6\u06db\u06df\u06da\u06e5\u06e6\u06e8\u06d8\u06e7\u06d7\u06eb\u06dc\u06d6\u06d8\u06e5\u06e2\u06e6\u06eb\u06dc\u06df"

    goto :goto_0

    :sswitch_3
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->o00Oo0:Landroid/app/NotificationManager;

    const-string v0, "\u06e8\u06d7\u06e8\u06d6\u06e5\u06d8\u06d8\u06da\u06df\u06e6\u06d8\u06dc\u06d7\u06eb\u06d7\u06e8\u06e2\u06e1\u06dc\u06d8\u06e2\u06d6\u06e8\u06d8\u06e4\u06eb\u06dc\u06d7\u06e4\u06d8\u06db\u06df\u06dc\u06d8\u06e1\u06e0\u06e2\u06e6\u06d6\u06dc\u06d8\u06e8\u06dc\u06d9\u06e5\u06db\u06dc\u06d8"

    goto :goto_0

    :sswitch_4
    new-instance v2, Landroid/content/Intent;

    const-class v0, Lcom/cyjh/elfin/ui/activity/MessagePushActivity;

    invoke-direct {v2, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "\u06eb\u06d6\u06e5\u06ec\u06e7\u06d9\u06dc\u06d8\u06ec\u06ec\u06e7\u06e5\u06d8\u06e1\u06e5\u06e5\u06e5\u06df\u06e1\u06db\u06d6\u06e1\u06df\u06eb\u06e4\u06d8\u06d9\u06dc\u06dc\u06dc\u06e5\u06d6\u06d9\u06dc\u06d8\u06db\u06d7\u06e7\u06d7\u06db\u06d6\u06e6\u06e2\u06df"

    move-object v3, v2

    goto :goto_0

    :sswitch_5
    const-string v0, "msg_data"

    invoke-virtual {v3, v0, p1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const-string v0, "\u06d6\u06e6\u06d6\u06d8\u06d6\u06e6\u06e6\u06d8\u06d9\u06e1\u06ec\u06db\u06df\u06e7\u06e5\u06e4\u06d9\u06d6\u06e5\u06d6\u06d8\u06dc\u06d7\u06e5\u06d8\u06e6\u06eb\u06df\u06d9\u06e0\u06e7\u06eb\u06d7\u06e7\u06dc\u06eb\u06d6\u06d6\u06e6\u06db"

    goto :goto_0

    :sswitch_6
    const/high16 v0, 0x8000000

    invoke-static {p0, v6, v3, v0}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    const-string v0, "\u06d8\u06db\u06db\u06d7\u06e6\u06e6\u06e0\u06e8\u06e6\u06db\u06d9\u06e0\u06e7\u06da\u06e8\u06ec\u06ec\u06e8\u06da\u06da\u06d6\u06d8\u06e6\u06e0\u06ec\u06d9\u06da\u06dc\u06e7\u06e1\u06e5\u06d8\u06d9\u06e0\u06d9\u06d9\u06e6\u06d6\u06d7\u06e8\u06d7\u06df\u06d8\u06e6\u06d8\u06e1\u06db\u06da\u06e6\u06d8\u06e7"

    goto :goto_0

    :sswitch_7
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->o00O0O:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v0, v7}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/core/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroidx/core/app/NotificationCompat$Builder;->setOngoing(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroidx/core/app/NotificationCompat$Builder;->setDefaults(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    const-string v0, "\u06ec\u06da\u06e1\u06e1\u06e4\u06d8\u06d8\u06d6\u06eb\u06d6\u06e4\u06dc\u06d8\u06eb\u06e5\u06d6\u06e2\u06d6\u06e0\u06d7\u06e1\u06e8\u06db\u06d7\u06eb\u06e8\u06eb\u06e6\u06ec\u06dc\u06db\u06db\u06eb\u06e8\u06e7\u06e1\u06d6\u06d8\u06e4\u06e8\u06eb\u06dc\u06e6\u06d8\u06d8"

    goto :goto_0

    :sswitch_8
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x645302d7 -> :sswitch_8
        -0x642abf93 -> :sswitch_1
        -0x3e8bb06d -> :sswitch_5
        -0x3ba881bf -> :sswitch_6
        -0x375c4716 -> :sswitch_3
        -0x3312d50d -> :sswitch_7
        0x5faa8d -> :sswitch_4
        0xabd841c -> :sswitch_0
        0x6b7ffeb7 -> :sswitch_2
    .end sparse-switch
.end method

.method private Ooooo00()V
    .locals 8

    const/4 v3, 0x0

    const-string v0, "\u06dc\u06db\u06d8\u06d8\u06d9\u06e5\u06e4\u06e2\u06eb\u06d8\u06da\u06d7\u06e1\u06e2\u06d9\u06e8\u06e2\u06eb\u06d6\u06d8\u06d8\u06e7\u06e8\u06d8\u06e6\u06ec\u06e4\u06e6\u06d6\u06d9\u06dc\u06d8\u06da\u06da\u06db\u06e6\u06d8\u06e1\u06df\u06e6\u06d9\u06e6\u06e7\u06d9\u06e4\u06e5\u06d8\u06da\u06d6\u06e7\u06e5\u06e7\u06d8\u06d8"

    move-object v1, v0

    move-object v2, v3

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v3, 0x2bc

    xor-int/2addr v0, v3

    xor-int/lit16 v0, v0, 0x37b

    const/16 v3, 0x1d0

    const v7, -0x15d385e1

    xor-int/2addr v0, v3

    xor-int/2addr v0, v7

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e2\u06e1\u06d8\u06eb\u06e7\u06e6\u06da\u06eb\u06d8\u06d6\u06df\u06d9\u06e7\u06db\u06e8\u06d8\u06dc\u06df\u06df\u06e4\u06e4\u06dc\u06dc\u06e2\u06db\u06db\u06e2\u06e6\u06d8\u06eb\u06da\u06eb\u06e4\u06e4\u06e5\u06d8\u06e7\u06dc\u06ec\u06e6\u06e7\u06da\u06e0\u06db\u06e6\u06d8\u06dc\u06d6\u06e0\u06e1\u06eb\u06da"

    move-object v1, v0

    goto :goto_0

    :sswitch_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "\u06e4\u06db\u06e6\u06e8\u06e7\u06d8\u06d8\u06eb\u06e6\u06e1\u06d9\u06e2\u06d8\u06db\u06d8\u06d9\u06dc\u06d9\u06e8\u06d8\u06e4\u06e0\u06e5\u06dc\u06eb\u06dc\u06e1\u06e5\u06d7\u06e2\u06e8\u06da"

    move-object v1, v0

    move-object v6, v3

    goto :goto_0

    :sswitch_2
    new-instance v0, Lz2/ja;

    invoke-direct {v0}, Lz2/ja;-><init>()V

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->OooooOO:Lz2/ja;

    const-string v0, "\u06e1\u06e7\u06e1\u06d8\u06e2\u06d8\u06e5\u06d8\u06da\u06eb\u06e1\u06d8\u06e5\u06e5\u06d8\u06d8\u06da\u06d8\u06ec\u06e8\u06df\u06dc\u06e6\u06db\u06d9\u06e1\u06d6\u06d8\u06df\u06e6\u06e2\u06df\u06e0\u06e6\u06df\u06e7\u06e7\u06d6\u06df\u06ec\u06e7\u06e6\u06e7\u06e0\u06dc\u06e5\u06d8\u06dc\u06d8\u06d6\u06d8\u06d8\u06e7\u06e6\u06d8\u06e5\u06e5\u06e1\u06dc\u06e5\u06e7"

    move-object v1, v0

    goto :goto_0

    :sswitch_3
    new-instance v3, Lz2/ga;

    invoke-direct {v3}, Lz2/ga;-><init>()V

    const-string v0, "\u06d8\u06eb\u06e5\u06d8\u06e1\u06eb\u06da\u06d6\u06d8\u06e2\u06db\u06e4\u06e7\u06e2\u06e8\u06d6\u06d9\u06d6\u06db\u06e8\u06d9\u06e5\u06d6\u06db\u06d7\u06eb\u06df\u06e4\u06dc\u06e8\u06e7\u06d8\u06d7\u06dc\u06d8\u06d8\u06e1\u06dc\u06e0\u06d7\u06df\u06d6\u06ec\u06ec\u06d6\u06da\u06e0\u06e1\u06d8\u06d7\u06df\u06d6\u06d8\u06d6\u06df\u06d6\u06d8\u06e0\u06df\u06db"

    move-object v1, v0

    move-object v5, v3

    goto :goto_0

    :sswitch_4
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->OooooOO:Lz2/ja;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "\u06e1\u06df\u06e6\u06d6\u06e7\u06e8\u06e8\u06e4\u06dc\u06d8\u06db\u06dc\u06dc\u06eb\u06d7\u06e0\u06eb\u06e1\u06e2\u06dc\u06d9\u06ec\u06dc\u06e8\u06e2\u06db\u06e1\u06e1\u06db\u06e1\u06df\u06e7\u06d9\u06da\u06e4\u06dc\u06dc\u06e1\u06e1\u06eb\u06e1\u06e4\u06e8\u06d8"

    move-object v1, v0

    goto :goto_0

    :sswitch_5
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "\u06d8\u06e4\u06e4\u06da\u06e0\u06dc\u06e8\u06d6\u06da\u06da\u06d7\u06e0\u06e7\u06e1\u06e0\u06d9\u06e2\u06e2\u06d7\u06eb\u06e5\u06d8\u06e4\u06d7\u06dc\u06e4\u06ec\u06d8\u06da\u06db\u06e8\u06d8\u06db\u06e6\u06d9\u06e7\u06e8\u06d9\u06df\u06e6\u06d8\u06e2\u06d9\u06e0\u06e6\u06e5\u06e2\u06d8\u06d8"

    move-object v1, v0

    goto :goto_0

    :sswitch_6
    new-instance v3, Lz2/r9;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-direct {v3, p0, v0, v6}, Lz2/r9;-><init>(Landroid/content/Context;Landroidx/fragment/app/FragmentManager;Ljava/util/ArrayList;)V

    const-string v0, "\u06e2\u06e7\u06d7\u06eb\u06e5\u06d7\u06dc\u06e1\u06d6\u06d8\u06d9\u06df\u06d9\u06e6\u06dc\u06dc\u06d8\u06d8\u06df\u06d8\u06d8\u06e6\u06e6\u06d6\u06d8\u06d7\u06db\u06da\u06da\u06eb\u06eb\u06e6\u06d9\u06e1\u06e8\u06e0\u06dc\u06d8\u06dc\u06da\u06e5\u06d7\u06d6\u06e6\u06e0\u06df\u06e1\u06df\u06e5\u06e5\u06df\u06eb\u06dc"

    move-object v1, v0

    move-object v4, v3

    goto :goto_0

    :sswitch_7
    const v0, 0x7f0904a5

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cyjh/elfin/ui/view/customview/RTDViewPager;

    const-string v1, "\u06e0\u06da\u06e1\u06e0\u06dc\u06d7\u06d7\u06e7\u06db\u06d9\u06e6\u06d7\u06dc\u06eb\u06d9\u06db\u06e0\u06ec\u06e2\u06df\u06e6\u06e2\u06db\u06d8\u06d8\u06e1\u06eb\u06e7\u06e8\u06ec\u06e8\u06e5\u06d9\u06df\u06e4\u06dc\u06db\u06dc\u06db\u06d6\u06e7\u06dc\u06d6\u06d8\u06d8\u06da\u06dc\u06e4\u06df\u06dc\u06d8\u06d8\u06d6\u06e8\u06d8\u06ec\u06dc\u06d6"

    move-object v2, v0

    goto :goto_0

    :sswitch_8
    invoke-virtual {v2, v4}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    const-string v0, "\u06d9\u06d7\u06d6\u06eb\u06df\u06e4\u06e5\u06df\u06d8\u06d9\u06e5\u06e5\u06d6\u06e8\u06eb\u06e1\u06e5\u06e8\u06e4\u06e4\u06e8\u06d8\u06da\u06e6\u06e7\u06e0\u06e1\u06d6\u06d9\u06d7\u06d8\u06d8\u06d6\u06ec\u06dc\u06d8\u06e4\u06da\u06e4\u06dc\u06db\u06d8\u06d8\u06ec\u06e2\u06dc\u06d8\u06d6\u06e0\u06e0\u06ec\u06e4\u06db"

    move-object v1, v0

    goto :goto_0

    :sswitch_9
    const v0, 0x7f090324

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;

    invoke-virtual {v0, v2}, Lcom/cyjh/elfin/ui/view/viewpagerindicator/TabPageIndicator;->setViewPager(Landroidx/viewpager/widget/ViewPager;)V

    const-string v0, "\u06e1\u06e0\u06e0\u06eb\u06e0\u06d8\u06d8\u06eb\u06e1\u06d7\u06e2\u06dc\u06e0\u06d9\u06ec\u06e2\u06eb\u06dc\u06d9\u06e6\u06e6\u06da\u06e6\u06e8\u06dc\u06eb\u06d9\u06d8\u06e8\u06d7\u06d9\u06ec\u06e8\u06d8\u06e7\u06d6\u06ec\u06d6\u06db\u06e5\u06d6\u06ec\u06e5\u06d6\u06ec\u06d6\u06d8\u06ec\u06e8\u06d6\u06d8\u06e4\u06d9\u06e4\u06e1\u06eb\u06dc\u06d8"

    move-object v1, v0

    goto :goto_0

    :sswitch_a
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->OooooOO:Lz2/ja;

    new-instance v1, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$OooOo;

    invoke-direct {v1, p0}, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$OooOo;-><init>(Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;)V

    invoke-virtual {v0, v1}, Lz2/ja;->Ooooo0o(Lz2/ja$OooOOOO;)V

    const-string v0, "\u06dc\u06e0\u06d8\u06eb\u06e7\u06eb\u06ec\u06eb\u06dc\u06d8\u06e7\u06da\u06d6\u06d8\u06e5\u06e7\u06d6\u06d8\u06e4\u06e4\u06db\u06da\u06dc\u06d8\u06d8\u06df\u06db\u06e8\u06e2\u06d7\u06db\u06e4\u06e6"

    move-object v1, v0

    goto/16 :goto_0

    :sswitch_b
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7d8fe004 -> :sswitch_9
        -0x5f2e3e90 -> :sswitch_1
        -0x39c2b4be -> :sswitch_b
        -0x373af561 -> :sswitch_2
        -0x307f768e -> :sswitch_6
        -0x13b17ca7 -> :sswitch_7
        -0xe6555ad -> :sswitch_4
        0xe99c12c -> :sswitch_0
        0x27428219 -> :sswitch_5
        0x2e9d2889 -> :sswitch_3
        0x4b64f44c -> :sswitch_8
        0x523ed733 -> :sswitch_a
    .end sparse-switch
.end method

.method private Ooooo0o()V
    .locals 5

    const/4 v2, 0x0

    const-string v0, "\u06e0\u06d6\u06db\u06e2\u06da\u06e2\u06e7\u06e1\u06dc\u06d8\u06e2\u06db\u06e8\u06d8\u06ec\u06e0\u06e8\u06d9\u06e6\u06db\u06e7\u06e5\u06e2\u06e4\u06d7\u06e7\u06e7\u06da\u06e1\u06dc\u06eb\u06d6\u06e2\u06e2\u06e6\u06d8\u06d6\u06e7\u06e2\u06db\u06e6\u06e7\u06d8\u06d9\u06e2\u06e1\u06d8\u06e8\u06d9\u06dc\u06d9\u06d7\u06dc"

    move-object v1, v0

    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v3, 0x3b6

    xor-int/2addr v0, v3

    xor-int/lit16 v0, v0, 0x1d8

    const/16 v3, 0x1a6

    const v4, -0x1cb5a215

    xor-int/2addr v0, v3

    xor-int/2addr v0, v4

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06ec\u06e4\u06e0\u06e2\u06e0\u06eb\u06ec\u06e1\u06da\u06eb\u06e4\u06dc\u06e5\u06d6\u06d6\u06d7\u06df\u06e2\u06e2\u06db\u06dc\u06d8\u06da\u06eb\u06e4\u06d9\u06d7\u06e4\u06e7\u06e7\u06df\u06e7\u06e6\u06e5\u06d8\u06da"

    move-object v1, v0

    goto :goto_0

    :sswitch_1
    invoke-static {p0}, Landroidx/lifecycle/ViewModelProviders;->of(Landroidx/fragment/app/FragmentActivity;)Landroidx/lifecycle/ViewModelProvider;

    move-result-object v0

    const-class v1, Lz2/oa;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lz2/oa;

    const-string v1, "\u06e0\u06d7\u06e1\u06df\u06e7\u06d8\u06ec\u06e7\u06e1\u06d8\u06e6\u06d8\u06d9\u06e2\u06e2\u06e6\u06d8\u06d7\u06d9\u06db\u06ec\u06e0\u06dc\u06e2\u06e5\u06e7\u06db\u06e5\u06e6\u06e8\u06df\u06e8\u06d8\u06e1\u06e5\u06e7\u06d8\u06e0\u06db\u06d8\u06d8\u06d6\u06e4\u06e0\u06e5\u06d8\u06e4\u06e4\u06df\u06e5\u06d6\u06e2"

    move-object v2, v0

    goto :goto_0

    :sswitch_2
    iput-object v2, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->o0ooOoO:Lz2/oa;

    const-string v0, "\u06e4\u06d6\u06d6\u06df\u06e6\u06d6\u06d8\u06d8\u06e5\u06d9\u06e5\u06df\u06e4\u06e8\u06e2\u06e8\u06db\u06da\u06e6\u06e0\u06e5\u06e0\u06ec\u06e0\u06eb\u06e2\u06dc\u06e6\u06df\u06ec\u06e4\u06e5\u06e2\u06ec\u06ec\u06ec\u06e5"

    move-object v1, v0

    goto :goto_0

    :sswitch_3
    invoke-virtual {v2}, Lz2/oa;->OooOo()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$OooOO0;

    invoke-direct {v1, p0}, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$OooOO0;-><init>(Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    const-string v0, "\u06dc\u06e0\u06eb\u06d6\u06d9\u06d9\u06e1\u06e1\u06e0\u06ec\u06e2\u06e6\u06d8\u06e4\u06db\u06e2\u06e0\u06da\u06d6\u06d8\u06e2\u06d8\u06d6\u06d8\u06d8\u06e2\u06df\u06e2\u06df\u06e6\u06d8\u06db\u06da\u06d6\u06d6\u06e2\u06dc\u06d8\u06d9\u06e7\u06da\u06da\u06e0\u06d8\u06df\u06e5\u06df\u06db\u06e7\u06ec\u06db\u06ec\u06d8\u06d8"

    move-object v1, v0

    goto :goto_0

    :sswitch_4
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4611d3c4 -> :sswitch_4
        -0x39edccfc -> :sswitch_0
        -0xaf408b6 -> :sswitch_1
        0x1033db62 -> :sswitch_3
        0x40877cdb -> :sswitch_2
    .end sparse-switch
.end method

.method private OooooO0()V
    .locals 7

    const/16 v6, 0x8

    const/4 v1, 0x0

    const-string v0, "\u06d8\u06ec\u06d9\u06ec\u06e7\u06e8\u06e7\u06e7\u06e5\u06d8\u06d6\u06e6\u06e1\u06d7\u06d7\u06d9\u06db\u06e5\u06e6\u06eb\u06e2\u06e8\u06dc\u06e2\u06e5\u06d8\u06d8\u06e1\u06d8\u06d8\u06e1\u06e4\u06d6\u06d8\u06df\u06e8\u06e5\u06d8\u06e1\u06d6\u06d9\u06e8\u06e7\u06d8\u06e5\u06d6\u06da\u06e1\u06e7\u06df"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v3, 0x170

    xor-int/2addr v2, v3

    xor-int/lit16 v2, v2, 0x2a9

    const/16 v3, 0x37c

    const v4, -0x57e915fe

    xor-int/2addr v2, v3

    xor-int/2addr v2, v4

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d9\u06db\u06e6\u06d8\u06ec\u06d6\u06e5\u06e4\u06eb\u06ec\u06e7\u06ec\u06df\u06db\u06e5\u06da\u06e7\u06d7\u06dc\u06e4\u06df\u06e5\u06db\u06e4\u06e0\u06e4\u06e5\u06d8\u06e4\u06e2\u06d7\u06e8\u06e4\u06e1\u06d8\u06d6\u06e7\u06e0\u06ec\u06db\u06eb\u06df\u06df\u06ec\u06e6\u06d7\u06e7\u06e1\u06d9\u06e2\u06e0\u06d9\u06e5\u06d8\u06e4\u06e8\u06e1"

    goto :goto_0

    :sswitch_1
    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->OooO00o()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v0

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/cyjh/elfin/base/AppContext;->Ooooo00:Z

    const-string v0, "\u06e7\u06d8\u06db\u06d8\u06e5\u06e7\u06d8\u06eb\u06e2\u06d9\u06e5\u06e5\u06e5\u06d6\u06ec\u06db\u06e7\u06d7\u06df\u06e6\u06e1\u06d6\u06d8\u06e0\u06e8\u06dc\u06e7\u06d7\u06e1\u06e2\u06da\u06d7\u06eb\u06db\u06d7\u06e4\u06d7"

    goto :goto_0

    :sswitch_2
    const/16 v0, 0x66

    invoke-static {v0}, Lz2/y8;->OooOO0o(I)V

    const-string v0, "\u06eb\u06d6\u06e4\u06eb\u06e8\u06e0\u06e8\u06e4\u06dc\u06d8\u06d6\u06da\u06e5\u06d8\u06e2\u06e8\u06e8\u06d8\u06e8\u06e1\u06e0\u06e0\u06d8\u06da\u06e7\u06da\u06e2\u06e5\u06d8\u06e1\u06e2\u06e2\u06eb\u06e8\u06d8\u06df\u06d9\u06e0\u06d9"

    goto :goto_0

    :sswitch_3
    invoke-direct {p0}, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->OoooOoO()V

    const-string v0, "\u06eb\u06e4\u06e7\u06d9\u06e6\u06d8\u06e6\u06e6\u06e8\u06d9\u06d7\u06dc\u06d8\u06e5\u06df\u06e2\u06d8\u06e4\u06e8\u06ec\u06eb\u06e8\u06e6\u06e6\u06e1\u06dc\u06d9\u06d9\u06e8\u06e0\u06dc\u06e6\u06e8\u06d9\u06db\u06ec\u06d6\u06e1\u06da\u06dc\u06dc\u06dc\u06db\u06d8\u06e1\u06e6\u06e0\u06da\u06d6\u06e8\u06d9\u06e0\u06e5"

    goto :goto_0

    :sswitch_4
    const v2, -0x77c5c5d

    const-string v0, "\u06e7\u06e8\u06e5\u06da\u06df\u06e4\u06da\u06ec\u06df\u06e6\u06e7\u06e8\u06e8\u06e4\u06e8\u06e6\u06eb\u06dc\u06d8\u06e4\u06e6\u06d7\u06ec\u06e8\u06df\u06e5\u06e8\u06e1\u06d8\u06d8\u06e0\u06d8\u06d8\u06db\u06d9\u06e0\u06e1\u06ec\u06dc\u06d8\u06df\u06e1\u06d8\u06e5\u06e8\u06e5"

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v2

    sparse-switch v3, :sswitch_data_1

    goto :goto_1

    :sswitch_5
    const-string v0, "\u06e1\u06eb\u06d8\u06d8\u06e1\u06e5\u06d6\u06d8\u06e6\u06eb\u06e8\u06d8\u06eb\u06d8\u06e4\u06db\u06e5\u06eb\u06d9\u06d6\u06dc\u06e7\u06e7\u06e6\u06eb\u06d8\u06e2\u06e8\u06e2\u06e6\u06ec\u06d7"

    goto :goto_0

    :sswitch_6
    const-string v0, "\u06d7\u06db\u06ec\u06d7\u06d6\u06e8\u06e7\u06ec\u06d7\u06e0\u06e8\u06e2\u06d7\u06e1\u06e0\u06df\u06e5\u06e8\u06e5\u06e2\u06e0\u06d8\u06d9\u06dc\u06df\u06e0\u06d8\u06e4\u06e7\u06e8\u06e0\u06e5\u06d6\u06ec\u06e6\u06d8\u06db\u06d8\u06da\u06da\u06d6\u06e0\u06d6\u06e8\u06d8\u06e8\u06d6\u06e2\u06da\u06e5\u06e0\u06ec\u06d8\u06e5\u06d8"

    goto :goto_1

    :sswitch_7
    const v3, 0x41056efe

    const-string v0, "\u06dc\u06eb\u06dc\u06d8\u06d9\u06d8\u06db\u06da\u06e5\u06e1\u06df\u06dc\u06e7\u06d8\u06ec\u06df\u06df\u06e2\u06eb\u06dc\u06d8\u06db\u06e0\u06d8\u06e8\u06eb\u06df\u06e1\u06db\u06dc\u06d8\u06eb\u06d7\u06d6\u06dc\u06e0\u06d6\u06db\u06e2\u06d6\u06d8\u06da\u06e7\u06dc\u06d8\u06e4\u06e2\u06e6\u06d8"

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    xor-int/2addr v4, v3

    sparse-switch v4, :sswitch_data_2

    goto :goto_2

    :sswitch_8
    invoke-static {p0}, Lz2/t4;->OooOO0(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u06d9\u06d6\u06e4\u06d9\u06e2\u06d9\u06e4\u06da\u06d8\u06d8\u06e1\u06df\u06d8\u06e5\u06d7\u06dc\u06d8\u06dc\u06dc\u06e6\u06d8\u06d9\u06da\u06e4\u06e1\u06d6\u06da\u06e2\u06dc\u06df\u06ec\u06e1\u06dc\u06d8\u06df\u06df\u06e4\u06db\u06eb\u06e7"

    goto :goto_2

    :cond_0
    const-string v0, "\u06d9\u06e4\u06d7\u06ec\u06ec\u06db\u06eb\u06e5\u06d8\u06ec\u06e6\u06e1\u06dc\u06df\u06e6\u06e0\u06e1\u06e0\u06da\u06d7\u06e8\u06e2\u06da\u06e5\u06e7\u06dc\u06dc\u06d8\u06d7\u06dc\u06d8\u06d8\u06ec\u06e6\u06e4\u06dc\u06d6\u06eb\u06da\u06d9\u06db\u06e7\u06e4\u06df\u06db\u06e5\u06d6\u06df\u06e5\u06d9\u06e0\u06d7\u06e6\u06e2\u06e4\u06e2"

    goto :goto_2

    :sswitch_9
    const-string v0, "\u06ec\u06d9\u06e2\u06e2\u06e8\u06e2\u06eb\u06e6\u06df\u06d9\u06d7\u06eb\u06e2\u06e5\u06d8\u06d9\u06dc\u06e5\u06d8\u06dc\u06d9\u06df\u06e6\u06d6\u06e7\u06e7\u06d9\u06eb\u06eb\u06ec\u06e1\u06e7\u06e6\u06e0\u06eb\u06d7\u06d6\u06d8\u06e2\u06d6\u06eb\u06d6\u06e6\u06e5\u06d8\u06e7\u06df\u06d8\u06e5\u06e6\u06e7\u06d8"

    goto :goto_2

    :sswitch_a
    const-string v0, "\u06ec\u06e5\u06e2\u06df\u06e8\u06e5\u06d8\u06e6\u06e5\u06ec\u06d9\u06ec\u06e0\u06d7\u06e4\u06df\u06e7\u06ec\u06e4\u06db\u06dc\u06d7\u06df\u06d8\u06d8\u06ec\u06d6\u06db\u06e5\u06ec\u06d8\u06e1\u06df\u06e7\u06e7\u06d9\u06e1"

    goto :goto_1

    :sswitch_b
    const-string v0, "\u06d9\u06e4\u06e6\u06d8\u06e7\u06d8\u06e4\u06e5\u06d8\u06dc\u06d7\u06d9\u06d8\u06e2\u06db\u06e6\u06d8\u06e7\u06ec\u06da\u06e0\u06df\u06e1\u06e1\u06dc\u06e8\u06d8\u06e6\u06df\u06e5\u06d8\u06e1\u06e5\u06d7\u06e6\u06d7\u06d8\u06d8\u06d8\u06e1\u06e6\u06eb\u06d7\u06d9\u06e1\u06da\u06eb\u06d7\u06e8\u06d6\u06d8\u06eb\u06e0\u06e1\u06e7\u06d8\u06e4\u06db\u06dc\u06e6\u06d8"

    goto :goto_1

    :sswitch_c
    iget-object v0, p0, Lcom/cyjh/common/base/activity/BaseModelActivity;->OooooO0:Landroidx/lifecycle/AndroidViewModel;

    check-cast v0, Lz2/na;

    invoke-virtual {v0}, Lz2/na;->Oooo00O()V

    const-string v0, "\u06d8\u06e5\u06d6\u06d8\u06e5\u06db\u06e1\u06db\u06e8\u06e5\u06d8\u06e2\u06d7\u06e5\u06d8\u06e8\u06d6\u06d9\u06d6\u06dc\u06ec\u06e5\u06e6\u06dc\u06da\u06e8\u06e6\u06d8\u06df\u06df\u06d7\u06d6\u06e8\u06e0\u06eb\u06d7\u06e8\u06da\u06e8\u06e4\u06ec\u06ec\u06dc\u06e6\u06e6\u06d8\u06e1\u06d8\u06ec\u06e5\u06e6\u06e7\u06d8"

    goto :goto_0

    :sswitch_d
    invoke-direct {p0}, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->OoooO00()V

    const-string v0, "\u06e7\u06d6\u06e5\u06e0\u06df\u06e8\u06d8\u06e0\u06e8\u06db\u06eb\u06e6\u06e8\u06d9\u06d8\u06d9\u06ec\u06e7\u06e6\u06d8\u06e8\u06e8\u06dc\u06d6\u06df\u06d6\u06d8\u06db\u06e0\u06db\u06d8\u06e1\u06e6\u06d7\u06e7\u06e2\u06e5\u06dc\u06d9\u06e2\u06e4\u06e5\u06d7\u06df\u06e2"

    goto :goto_0

    :sswitch_e
    invoke-direct {p0}, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->Ooooo00()V

    const-string v0, "\u06e7\u06d6\u06e0\u06db\u06eb\u06ec\u06eb\u06d9\u06df\u06e8\u06dc\u06d9\u06da\u06d9\u06e1\u06e4\u06e5\u06d8\u06e4\u06df\u06d7\u06e8\u06e7\u06e4\u06e4\u06e2\u06dc\u06db\u06e1\u06df\u06e8\u06e1\u06e8\u06d8\u06e5\u06eb\u06e5\u06d8"

    goto :goto_0

    :sswitch_f
    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->OooooOO()V

    const-string v0, "\u06e7\u06df\u06ec\u06d6\u06e1\u06d9\u06d7\u06d6\u06e1\u06d8\u06ec\u06e5\u06d8\u06da\u06e6\u06e5\u06df\u06ec\u06e7\u06df\u06da\u06e2\u06d9\u06df\u06e8\u06d8\u06eb\u06e4\u06e7\u06e6\u06d6\u06df"

    goto/16 :goto_0

    :sswitch_10
    iget-object v0, p0, Lcom/cyjh/common/base/activity/BaseModelActivity;->OooooO0:Landroidx/lifecycle/AndroidViewModel;

    check-cast v0, Lz2/na;

    invoke-virtual {v0}, Lz2/na;->OoooO00()V

    const-string v0, "\u06da\u06d9\u06d6\u06d9\u06e5\u06e4\u06e6\u06dc\u06e0\u06e7\u06e4\u06e8\u06d9\u06e5\u06d8\u06e7\u06e4\u06dc\u06d8\u06e8\u06d6\u06e2\u06d7\u06d7\u06db\u06d7\u06e8\u06e8\u06e8\u06eb\u06e8\u06d8\u06db\u06e5\u06e5\u06e4\u06ec\u06e1\u06d8\u06dc\u06db\u06e5\u06eb\u06e8\u06d8\u06e2\u06e6\u06e7\u06d8\u06d6\u06df\u06e7\u06ec\u06e8\u06db\u06eb\u06ec"

    goto/16 :goto_0

    :sswitch_11
    iget-object v0, p0, Lcom/cyjh/common/base/activity/BaseModelActivity;->OooooO0:Landroidx/lifecycle/AndroidViewModel;

    check-cast v0, Lz2/na;

    invoke-virtual {v0}, Lz2/na;->Oooo0o()V

    const-string v0, "\u06d7\u06d7\u06df\u06e4\u06e1\u06e8\u06d8\u06d9\u06df\u06e5\u06ec\u06e2\u06e5\u06d8\u06d6\u06dc\u06e7\u06ec\u06db\u06da\u06e6\u06e8\u06d8\u06d8\u06e2\u06dc\u06df\u06e0\u06d8\u06e1\u06d8\u06e7\u06e0\u06db"

    goto/16 :goto_0

    :sswitch_12
    new-instance v1, Lz2/uc;

    invoke-direct {v1}, Lz2/uc;-><init>()V

    const-string v0, "\u06d7\u06e0\u06e1\u06d8\u06da\u06e2\u06dc\u06e8\u06d7\u06e1\u06e4\u06da\u06d6\u06da\u06d7\u06dc\u06e8\u06dc\u06d7\u06d9\u06e8\u06e6\u06e2\u06d6\u06e2\u06d6\u06d8\u06eb\u06e4\u06eb\u06e7\u06dc\u06e7\u06d7\u06da\u06df\u06e7\u06d9\u06d6\u06db\u06e5\u06e5\u06d8\u06ec\u06ec\u06e6\u06d8\u06e5\u06da\u06e6"

    goto/16 :goto_0

    :sswitch_13
    iput-object v1, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->o0OOO0o:Lz2/uc;

    const-string v0, "\u06e5\u06d7\u06d9\u06e2\u06e2\u06d8\u06d8\u06db\u06e7\u06d7\u06e8\u06ec\u06e0\u06ec\u06dc\u06e8\u06e1\u06e0\u06e8\u06d8\u06df\u06d9\u06e8\u06d8\u06df\u06d9\u06e6\u06d8\u06e5\u06eb\u06e1\u06d8\u06d9\u06da\u06df\u06dc\u06e6\u06d8\u06e0\u06e6\u06e2\u06d8\u06eb\u06d7\u06e7\u06e8\u06d8\u06e0\u06d6\u06e1\u06d8\u06df\u06dc\u06e1"

    goto/16 :goto_0

    :sswitch_14
    invoke-virtual {v1, p0}, Lz2/uc;->OooO0OO(Landroid/content/Context;)V

    const-string v0, "\u06da\u06e4\u06d6\u06d8\u06e7\u06e1\u06d8\u06e0\u06e7\u06dc\u06d8\u06e4\u06e0\u06d7\u06ec\u06eb\u06d8\u06e0\u06ec\u06d6\u06d8\u06e8\u06da\u06d8\u06d8\u06e5\u06df\u06e1\u06d8\u06e8\u06e8\u06e6\u06d8\u06d8\u06d8\u06ec\u06e7\u06d6\u06d6\u06dc\u06ec\u06d8\u06d8\u06df\u06dc\u06e8\u06e1\u06dc\u06e1\u06d8"

    goto/16 :goto_0

    :sswitch_15
    iget-object v0, p0, Lcom/cyjh/common/base/activity/BaseModelActivity;->OooooO0:Landroidx/lifecycle/AndroidViewModel;

    check-cast v0, Lz2/na;

    invoke-virtual {v0}, Lz2/na;->Oooo0o0()V

    const-string v0, "\u06e7\u06ec\u06e1\u06d8\u06dc\u06d8\u06e0\u06d7\u06d6\u06e0\u06e0\u06d6\u06dc\u06df\u06e8\u06e2\u06e2\u06e1\u06d8\u06ec\u06d9\u06e0\u06e2\u06e7\u06e5\u06d8\u06da\u06e8\u06e5\u06e5\u06e1\u06d7\u06db\u06da\u06db\u06ec\u06df\u06d9\u06e8\u06d7\u06e2\u06eb\u06e0\u06d7\u06dc\u06dc\u06d8\u06e0\u06d8\u06db"

    goto/16 :goto_0

    :sswitch_16
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lz2/dh;->OooOO0o(Landroid/content/Context;)V

    const-string v0, "\u06e6\u06e7\u06eb\u06da\u06e1\u06df\u06df\u06e4\u06d6\u06d8\u06e8\u06d6\u06e1\u06d6\u06d9\u06df\u06d9\u06e2\u06d6\u06e5\u06e5\u06dc\u06d8\u06e8\u06df\u06df\u06e2\u06dc\u06e0\u06e2\u06dc\u06d8\u06e0\u06e7\u06ec\u06e4\u06e5\u06e0\u06da\u06db\u06d8\u06d8\u06eb\u06d8\u06d6\u06d8\u06e8\u06e8\u06d8\u06d8\u06eb\u06da\u06e7\u06e6\u06d8\u06d6\u06dc\u06e6"

    goto/16 :goto_0

    :sswitch_17
    invoke-static {}, Lz2/r7;->OooO0o()Lz2/r7;

    move-result-object v0

    invoke-virtual {v0, p0}, Lz2/r7;->OooO0o0(Landroid/content/Context;)V

    const-string v0, "\u06d9\u06e4\u06e8\u06db\u06ec\u06d6\u06e2\u06e6\u06e7\u06eb\u06d6\u06d8\u06df\u06e1\u06e1\u06d8\u06e6\u06e7\u06e8\u06d6\u06e4\u06df\u06e8\u06df\u06dc\u06e1\u06da\u06d8\u06e6\u06d8\u06e4\u06d8\u06d8\u06d8\u06d9\u06e1\u06ec\u06df\u06e8\u06d8\u06df\u06e6\u06e0"

    goto/16 :goto_0

    :sswitch_18
    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->OoooOO0()V

    const-string v0, "\u06e2\u06e7\u06d6\u06e5\u06e5\u06dc\u06df\u06d8\u06df\u06d7\u06e5\u06e6\u06e7\u06df\u06dc\u06d8\u06e6\u06d7\u06df\u06e4\u06e8\u06db\u06db\u06e0\u06d7\u06e7\u06e5\u06e1\u06eb\u06e7\u06ec\u06e7\u06e8\u06dc\u06d7\u06e8\u06d6\u06e8\u06e7\u06e6\u06d8\u06d6\u06d8\u06d6\u06df\u06e7\u06db\u06dc\u06e0\u06da"

    goto/16 :goto_0

    :sswitch_19
    invoke-direct {p0}, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->OoooOo0()V

    const-string v0, "\u06df\u06e7\u06e1\u06d8\u06e1\u06df\u06d8\u06e1\u06e7\u06e6\u06d6\u06e6\u06dc\u06d8\u06e0\u06e8\u06d9\u06e6\u06e2\u06d6\u06d8\u06e0\u06e2\u06ec\u06e1\u06df\u06e8\u06da\u06e2\u06d6\u06dc\u06e4\u06df\u06e2\u06e8\u06d7\u06da\u06e5\u06e1\u06d8\u06ec\u06e7\u06ec\u06e7\u06e2\u06d6\u06d8\u06ec\u06e5\u06e8\u06e6\u06e7\u06e0"

    goto/16 :goto_0

    :sswitch_1a
    invoke-direct {p0}, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->OoooOOo()V

    const-string v0, "\u06e6\u06e7\u06dc\u06e2\u06e4\u06d9\u06df\u06df\u06e0\u06e7\u06d6\u06e7\u06eb\u06e4\u06e4\u06d7\u06db\u06e0\u06ec\u06dc\u06d8\u06e8\u06db\u06df\u06da\u06d7\u06dc\u06e8\u06dc\u06e1"

    goto/16 :goto_0

    :sswitch_1b
    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->ooOO()V

    const-string v0, "\u06d9\u06e7\u06e0\u06dc\u06e8\u06e6\u06d8\u06df\u06e4\u06e6\u06d8\u06e4\u06e0\u06d8\u06e4\u06eb\u06e1\u06d8\u06ec\u06e6\u06dc\u06d8\u06d9\u06e0\u06dc\u06db\u06db\u06dc\u06e8\u06e1\u06e0\u06e7\u06e5\u06e6\u06df\u06d8\u06e2\u06e4\u06d9\u06e6\u06d8\u06db\u06e5\u06e8\u06e8\u06e1\u06e8\u06d6\u06e8\u06e8\u06ec\u06d8\u06e2\u06e1\u06e8\u06e8\u06eb\u06e8"

    goto/16 :goto_0

    :sswitch_1c
    invoke-virtual {p0}, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->OoooO()V

    const-string v0, "\u06ec\u06d6\u06d8\u06e0\u06d6\u06e2\u06e2\u06e7\u06d8\u06d8\u06d8\u06e0\u06df\u06dc\u06d6\u06eb\u06d8\u06e6\u06d8\u06d8\u06e2\u06d9\u06db\u06e8\u06d8\u06dc\u06da\u06d7\u06d6\u06d8\u06e8\u06d6\u06dc\u06e4\u06e8\u06e1\u06e6\u06e2\u06df\u06eb\u06ec\u06eb\u06eb\u06ec\u06e8\u06d8\u06e8\u06df\u06d6\u06e5\u06d6\u06eb\u06da\u06e8\u06da\u06db\u06ec\u06d8\u06d8"

    goto/16 :goto_0

    :sswitch_1d
    const v2, 0x4d507747    # 2.18592368E8f

    const-string v0, "\u06e2\u06e4\u06e1\u06eb\u06df\u06e4\u06da\u06d6\u06d8\u06da\u06e6\u06eb\u06ec\u06e2\u06eb\u06ec\u06e4\u06d6\u06d8\u06e1\u06eb\u06da\u06d7\u06ec\u06e1\u06dc\u06db\u06e1\u06d8\u06e8\u06d8\u06e2\u06e6\u06e7\u06dc\u06d8\u06dc\u06d9\u06e5\u06d8\u06da\u06da\u06e6\u06d8\u06e2\u06d6\u06e8\u06eb\u06eb\u06e5\u06e6\u06d9\u06d9\u06e4\u06d7\u06d9\u06e1\u06d9\u06d8"

    :goto_3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v2

    sparse-switch v3, :sswitch_data_3

    goto :goto_3

    :sswitch_1e
    const v3, 0x4f27d667

    const-string v0, "\u06e5\u06e2\u06d8\u06d8\u06e7\u06e8\u06e7\u06d8\u06da\u06df\u06db\u06db\u06d6\u06d6\u06d8\u06d8\u06e2\u06e4\u06d9\u06da\u06ec\u06ec\u06e5\u06d8\u06dc\u06e6\u06e5\u06d8\u06d6\u06dc\u06e8\u06e0\u06e5\u06e5\u06e6\u06e1\u06e5\u06d8\u06d6\u06d8\u06df\u06e6\u06ec\u06d6\u06e6\u06e6\u06dc\u06d6\u06e7\u06d8\u06d7\u06db\u06e1\u06d8"

    :goto_4
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    xor-int/2addr v4, v3

    sparse-switch v4, :sswitch_data_4

    goto :goto_4

    :sswitch_1f
    const-string v0, "\u06e6\u06df\u06e4\u06e7\u06e2\u06dc\u06e0\u06dc\u06e0\u06dc\u06e7\u06ec\u06e1\u06e2\u06d7\u06d8\u06dc\u06e0\u06d7\u06e4\u06dc\u06d6\u06dc\u06d8\u06df\u06dc\u06e5\u06d8\u06dc\u06da\u06db\u06e0\u06e2\u06eb\u06da\u06e0\u06dc\u06d8"

    goto :goto_3

    :cond_1
    const-string v0, "\u06d8\u06ec\u06ec\u06d7\u06eb\u06e5\u06d7\u06d7\u06ec\u06e0\u06da\u06e6\u06e8\u06d8\u06d6\u06e8\u06d8\u06dc\u06df\u06e1\u06e7\u06d9\u06e0\u06ec\u06da\u06eb\u06e4\u06e8\u06e4\u06e0\u06e5\u06e6\u06e0\u06e8\u06e0\u06df\u06d7\u06d6\u06e2\u06e5\u06e6\u06d8\u06d7\u06d6\u06e7\u06d8\u06e2\u06e1\u06e4\u06db\u06e0\u06e6\u06e8\u06df\u06e5\u06d8"

    goto :goto_4

    :sswitch_20
    const-string v0, ""

    invoke-static {v0}, Lz2/j3;->OooO0oO(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "9l3k3m39363j32383l3h36383l9l303m3k"

    const/4 v5, -0x7

    invoke-static {v4, v5}, Lz2/l8;->OooO00o(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lz2/x8;->OooO0O0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "\u06e7\u06e6\u06dc\u06d8\u06dc\u06e8\u06da\u06e4\u06d9\u06dc\u06d8\u06e6\u06d6\u06e6\u06e1\u06df\u06e6\u06e4\u06e5\u06e5\u06d6\u06d6\u06da\u06d8\u06e1\u06e7\u06ec\u06da\u06dc\u06d8\u06e6\u06e4\u06d9\u06d8\u06d8\u06dc\u06df\u06e7\u06e5\u06db\u06dc\u06e7\u06e2\u06d6\u06da"

    goto :goto_4

    :sswitch_21
    const-string v0, "\u06ec\u06d8\u06e4\u06d8\u06e4\u06d6\u06ec\u06e1\u06dc\u06d8\u06db\u06e0\u06ec\u06dc\u06e8\u06e7\u06d8\u06da\u06e0\u06d8\u06e5\u06ec\u06ec\u06e6\u06e5\u06e4\u06eb\u06ec\u06d8\u06d8\u06d9\u06e5\u06d9"

    goto :goto_4

    :sswitch_22
    const-string v0, "\u06e5\u06e2\u06d6\u06d8\u06dc\u06db\u06d8\u06eb\u06e8\u06df\u06d7\u06e8\u06dc\u06d8\u06df\u06e7\u06e0\u06e7\u06d8\u06d6\u06d8\u06eb\u06ec\u06e5\u06d8\u06e6\u06e8\u06e7\u06db\u06db\u06d8\u06e7\u06d7\u06e6"

    goto :goto_3

    :sswitch_23
    const-string v0, "\u06e8\u06df\u06d6\u06d8\u06e6\u06db\u06e5\u06e1\u06dc\u06e1\u06d8\u06d9\u06df\u06d6\u06d8\u06e0\u06e0\u06db\u06e6\u06d8\u06eb\u06e7\u06d9\u06dc\u06e2\u06d6\u06dc\u06e7\u06d8\u06df\u06d9\u06e5\u06d6\u06d8"

    goto :goto_3

    :sswitch_24
    const-string v0, "\u06e0\u06d8\u06e5\u06db\u06d6\u06d8\u06e1\u06e2\u06eb\u06df\u06df\u06d7\u06e6\u06d6\u06d8\u06d7\u06e0\u06db\u06d9\u06e1\u06e1\u06d8\u06da\u06e1\u06df\u06dc\u06db\u06e2\u06e5\u06e1\u06e4\u06e0\u06df\u06e2\u06e6\u06e7\u06e7\u06eb\u06da\u06e4\u06d7\u06e0\u06d9"

    goto/16 :goto_0

    :sswitch_25
    const v2, -0x6434b247

    const-string v0, "\u06da\u06df\u06e5\u06d8\u06e7\u06e0\u06eb\u06e8\u06da\u06ec\u06dc\u06e6\u06d8\u06d8\u06da\u06e0\u06db\u06e7\u06eb\u06d6\u06d8\u06dc\u06e5\u06d8\u06e0\u06eb\u06ec\u06e0\u06eb\u06e2\u06e5\u06d8\u06e7\u06d8\u06da\u06d7\u06d7\u06e8\u06db\u06e8\u06e6\u06dc\u06df\u06d9\u06e2\u06db\u06e1\u06e5\u06d8\u06e6\u06e1\u06d9\u06ec\u06e2\u06d9\u06df\u06dc\u06df"

    :goto_5
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v2

    sparse-switch v3, :sswitch_data_5

    goto :goto_5

    :sswitch_26
    const v3, -0x427cc537

    const-string v0, "\u06e7\u06eb\u06e2\u06eb\u06df\u06d6\u06d8\u06e6\u06e2\u06dc\u06d8\u06d8\u06e0\u06df\u06e7\u06d8\u06eb\u06e5\u06d9\u06dc\u06d8\u06e4\u06e1\u06d8\u06e8\u06e7\u06ec\u06dc\u06dc\u06d7\u06e0\u06e6\u06e0\u06d7\u06d8\u06e2\u06d7\u06d6\u06e5\u06d8"

    :goto_6
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    xor-int/2addr v4, v3

    sparse-switch v4, :sswitch_data_6

    goto :goto_6

    :sswitch_27
    const-string v0, "\u06e0\u06e1\u06da\u06d8\u06e7\u06e5\u06d9\u06d6\u06d8\u06d8\u06df\u06e5\u06e8\u06d8\u06eb\u06ec\u06db\u06dc\u06e2\u06da\u06d7\u06e1\u06e7\u06dc\u06db\u06ec\u06eb\u06e6\u06d8\u06d8\u06e2\u06e2\u06e1\u06d8\u06d7\u06eb\u06d6\u06da\u06e0\u06e5\u06d8\u06ec\u06d6\u06d9\u06ec\u06eb\u06e4"

    goto :goto_5

    :cond_2
    const-string v0, "\u06d9\u06ec\u06e1\u06d8\u06e4\u06d8\u06df\u06eb\u06df\u06e4\u06da\u06e1\u06d6\u06d9\u06da\u06d7\u06da\u06d9\u06dc\u06da\u06e4\u06e6\u06d8\u06ec\u06e1\u06da\u06d6\u06e2\u06db\u06da\u06e5\u06d9\u06d7\u06df\u06ec\u06d8\u06e6\u06e4\u06e5\u06dc\u06e4\u06dc\u06df\u06e5\u06d8\u06e0\u06e1\u06e8\u06d8\u06e7\u06e1\u06e6\u06d9\u06e1\u06e5\u06e5\u06ec"

    goto :goto_6

    :sswitch_28
    const-string v0, ""

    invoke-static {v0}, Lz2/j3;->OooO0oO(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "6s79750r0t06056s070t0r"

    const/16 v5, -0xe

    invoke-static {v4, v5}, Lz2/l8;->OooO00o(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lz2/x8;->OooO0O0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "\u06db\u06e6\u06e5\u06e1\u06db\u06d9\u06e0\u06e1\u06e7\u06d8\u06da\u06d7\u06d6\u06d8\u06df\u06d7\u06e8\u06d8\u06eb\u06eb\u06e5\u06d6\u06eb\u06e1\u06e6\u06d6\u06db\u06e0\u06e1\u06e6\u06d8\u06df\u06e5\u06d7\u06e7\u06e5\u06d8\u06eb\u06db\u06d6\u06d8\u06e8\u06db\u06d9\u06d7\u06ec\u06e8\u06e7\u06d6\u06e7\u06d8\u06e4\u06da\u06e5\u06d8\u06d6\u06e5\u06e4\u06ec\u06e7\u06e5"

    goto :goto_6

    :sswitch_29
    const-string v0, "\u06eb\u06da\u06e2\u06d7\u06e0\u06e8\u06d8\u06d6\u06eb\u06e8\u06d8\u06ec\u06e2\u06d6\u06d8\u06da\u06e4\u06df\u06eb\u06db\u06d6\u06d8\u06e7\u06d7\u06e1\u06d8\u06e6\u06d6\u06e8\u06d8\u06e0\u06e5\u06e5\u06d7\u06e2\u06e4\u06e7\u06ec\u06d7\u06e0\u06e2\u06d8\u06e2\u06e2\u06df\u06e0"

    goto :goto_6

    :sswitch_2a
    const-string v0, "\u06d8\u06e5\u06e4\u06d6\u06e2\u06e1\u06d7\u06e6\u06d6\u06e4\u06e5\u06d8\u06d8\u06e2\u06e4\u06e1\u06d8\u06e4\u06e5\u06e6\u06d8\u06d8\u06ec\u06e5\u06d7\u06e0\u06db\u06e6\u06e5\u06db\u06e7\u06d9\u06e1\u06d8\u06e5\u06eb\u06e1\u06d8\u06e5\u06da\u06db\u06dc\u06e0\u06ec\u06e5\u06df\u06d6\u06e2\u06d6\u06e7\u06d8\u06e0\u06d7\u06da\u06dc\u06dc\u06d6\u06d8\u06e1\u06dc\u06e5"

    goto :goto_5

    :sswitch_2b
    const-string v0, "\u06e5\u06e6\u06da\u06dc\u06ec\u06da\u06e2\u06dc\u06e1\u06d8\u06d9\u06e2\u06e7\u06dc\u06e1\u06db\u06d9\u06d8\u06e6\u06d8\u06e7\u06d8\u06e1\u06d6\u06da\u06e5\u06e1\u06df\u06dc\u06d8\u06d6\u06e1\u06d8\u06e8\u06d6\u06da\u06da\u06db\u06db"

    goto :goto_5

    :sswitch_2c
    const-string v0, "\u06e7\u06d6\u06e6\u06d8\u06df\u06dc\u06e0\u06d8\u06e8\u06e5\u06eb\u06eb\u06e1\u06eb\u06d8\u06e0\u06e0\u06e7\u06e2\u06d6\u06e6\u06d8\u06da\u06e8\u06e8\u06e0\u06e7\u06e8\u06d8\u06eb\u06d9\u06d6\u06d8"

    goto/16 :goto_0

    :sswitch_2d
    const/4 v0, 0x7

    invoke-static {v0}, Lz2/l8;->OooO0O0(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6}, Lz2/l8;->OooO0OO(I)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v6}, Lz2/l8;->OooO0O0(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lz2/y8;->OooO0oo(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\u06e1\u06dc\u06d7\u06e2\u06e7\u06e1\u06eb\u06dc\u06da\u06e0\u06da\u06d8\u06df\u06e7\u06d8\u06d8\u06e1\u06d9\u06dc\u06e7\u06e7\u06e8\u06d8\u06ec\u06ec\u06e2\u06db\u06e5\u06d8\u06d6\u06e7\u06db\u06e4\u06e8\u06e4\u06e6\u06d8\u06e5\u06ec\u06e6\u06db\u06da\u06e5\u06eb"

    goto/16 :goto_0

    :sswitch_2e
    const-string v0, "\u06d8\u06e5\u06d6\u06d8\u06e5\u06db\u06e1\u06db\u06e8\u06e5\u06d8\u06e2\u06d7\u06e5\u06d8\u06e8\u06d6\u06d9\u06d6\u06dc\u06ec\u06e5\u06e6\u06dc\u06da\u06e8\u06e6\u06d8\u06df\u06df\u06d7\u06d6\u06e8\u06e0\u06eb\u06d7\u06e8\u06da\u06e8\u06e4\u06ec\u06ec\u06dc\u06e6\u06e6\u06d8\u06e1\u06d8\u06ec\u06e5\u06e6\u06e7\u06d8"

    goto/16 :goto_0

    :sswitch_2f
    const-string v0, "\u06e1\u06dc\u06d7\u06e2\u06e7\u06e1\u06eb\u06dc\u06da\u06e0\u06da\u06d8\u06df\u06e7\u06d8\u06d8\u06e1\u06d9\u06dc\u06e7\u06e7\u06e8\u06d8\u06ec\u06ec\u06e2\u06db\u06e5\u06d8\u06d6\u06e7\u06db\u06e4\u06e8\u06e4\u06e6\u06d8\u06e5\u06ec\u06e6\u06db\u06da\u06e5\u06eb"

    goto/16 :goto_0

    :sswitch_30
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7c306ac7 -> :sswitch_d
        -0x6d93e1cf -> :sswitch_12
        -0x5e435245 -> :sswitch_15
        -0x581c10f6 -> :sswitch_e
        -0x50f54470 -> :sswitch_19
        -0x5016f421 -> :sswitch_1
        -0x4e8a7490 -> :sswitch_1b
        -0x25cff7a1 -> :sswitch_c
        -0x19d995a4 -> :sswitch_13
        -0x12623593 -> :sswitch_2
        -0xdff9137 -> :sswitch_10
        -0x611f92b -> :sswitch_1a
        -0x11fd8c3 -> :sswitch_f
        0x975562e -> :sswitch_1d
        0x1634d01d -> :sswitch_14
        0x18a974be -> :sswitch_18
        0x1f4b1e12 -> :sswitch_25
        0x2dff0f73 -> :sswitch_4
        0x392ac3f2 -> :sswitch_17
        0x438930c1 -> :sswitch_16
        0x4a650428 -> :sswitch_2d
        0x61168902 -> :sswitch_3
        0x68502fe9 -> :sswitch_1c
        0x6b4c3107 -> :sswitch_0
        0x6fee885e -> :sswitch_30
        0x7da10941 -> :sswitch_11
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x519de082 -> :sswitch_5
        -0x21ae947e -> :sswitch_b
        0x2e96cc6e -> :sswitch_7
        0x790f49d4 -> :sswitch_2e
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        -0x82070b2 -> :sswitch_a
        -0x1bc24e7 -> :sswitch_8
        -0xf6edee -> :sswitch_9
        0x1bff388f -> :sswitch_6
    .end sparse-switch

    :sswitch_data_3
    .sparse-switch
        -0x2d4161b8 -> :sswitch_24
        0x2a3aa5cc -> :sswitch_1e
        0x2e12963e -> :sswitch_23
        0x761facdd -> :sswitch_2f
    .end sparse-switch

    :sswitch_data_4
    .sparse-switch
        -0x63e43455 -> :sswitch_20
        -0xfbdfed9 -> :sswitch_21
        0x1b535a65 -> :sswitch_1f
        0x4f02585c -> :sswitch_22
    .end sparse-switch

    :sswitch_data_5
    .sparse-switch
        -0x7d0d41e0 -> :sswitch_2b
        -0x789bc604 -> :sswitch_2f
        0x4aeeb69c -> :sswitch_2c
        0x56b66bfc -> :sswitch_26
    .end sparse-switch

    :sswitch_data_6
    .sparse-switch
        -0x67e9d1ea -> :sswitch_29
        -0x503028aa -> :sswitch_28
        -0x389b3236 -> :sswitch_2a
        0x4485b090 -> :sswitch_27
    .end sparse-switch
.end method

.method public static synthetic OooooOo()V
    .locals 4

    const-string v0, "\u06e0\u06e1\u06e7\u06d8\u06e0\u06ec\u06d8\u06e4\u06e5\u06e7\u06df\u06db\u06db\u06df\u06df\u06e5\u06d8\u06e2\u06e6\u06ec\u06d8\u06d6\u06e2\u06e7\u06db\u06e5\u06d8\u06e8\u06df\u06e5\u06d8\u06e7\u06d6\u06eb\u06ec\u06e8\u06e8\u06da\u06e8\u06df\u06e2\u06e2\u06d8\u06d8\u06e2\u06eb\u06eb\u06eb\u06e2\u06e6\u06d8\u06e0\u06e6\u06e7\u06d8\u06df\u06d8\u06e8\u06d8\u06e4\u06e0\u06db"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x165

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x26f

    const/16 v2, 0x146

    const v3, 0x22dc3787

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const/16 v0, 0xb

    invoke-static {v0}, Lz2/y8;->OooOO0o(I)V

    const-string v0, "\u06df\u06eb\u06e8\u06d8\u06d7\u06d6\u06ec\u06da\u06e2\u06d6\u06d7\u06e6\u06e2\u06d6\u06e7\u06e0\u06da\u06ec\u06d6\u06d8\u06e7\u06df\u06db\u06db\u06da\u06d6\u06e8\u06da\u06e8\u06d8\u06e5\u06dc\u06e6\u06d8\u06e8\u06e2\u06e6\u06d8\u06e7\u06d8\u06e4\u06eb\u06d6\u06d6\u06d8\u06d7\u06d9\u06d8\u06ec\u06d9\u06d8\u06d8\u06d8\u06dc\u06e5"

    goto :goto_0

    :sswitch_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x15e486ed -> :sswitch_1
        0x7ee15e09 -> :sswitch_0
    .end sparse-switch
.end method

.method private synthetic Oooooo0()V
    .locals 4

    const-string v0, "\u06e5\u06d8\u06e5\u06e4\u06d7\u06df\u06ec\u06dc\u06df\u06d8\u06dc\u06eb\u06e4\u06e1\u06e8\u06d8\u06df\u06dc\u06da\u06d9\u06e1\u06e7\u06d8\u06e4\u06df\u06d9\u06eb\u06d7\u06e4\u06e5\u06d6\u06ec\u06db\u06d7\u06e8\u06d7\u06dc\u06da\u06e5\u06eb\u06ec\u06e0\u06e2\u06e5\u06e6\u06e5\u06db\u06d9"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x101

    xor-int/2addr v1, v2

    xor-int/lit8 v1, v1, 0x4f

    const/16 v2, 0xbe

    const v3, 0x5f4ec7e2

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e5\u06ec\u06ec\u06e7\u06e5\u06e5\u06e0\u06e2\u06df\u06d7\u06d9\u06e5\u06e0\u06e4\u06e8\u06d8\u06e7\u06e4\u06d6\u06d8\u06dc\u06df\u06d8\u06e0\u06e5\u06e6\u06d8\u06e0\u06e2\u06e8\u06d8\u06e6\u06e7\u06d8"

    goto :goto_0

    :sswitch_1
    const v1, 0x1eb6dd9c

    const-string v0, "\u06d9\u06da\u06dc\u06e0\u06e6\u06e8\u06d8\u06da\u06e0\u06eb\u06e2\u06eb\u06e1\u06e2\u06eb\u06e5\u06d6\u06e6\u06e6\u06d8\u06d7\u06dc\u06e7\u06e4\u06db\u06dc\u06eb\u06e2\u06e1\u06e1\u06d8\u06e6\u06e8\u06d8\u06eb\u06e5\u06d8\u06e4\u06d9\u06e4\u06e0\u06da\u06d7\u06df\u06e5\u06d6\u06e5\u06ec"

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v2, v1

    sparse-switch v2, :sswitch_data_1

    goto :goto_1

    :sswitch_2
    const v2, -0x26e10062

    const-string v0, "\u06e7\u06eb\u06e6\u06d8\u06ec\u06dc\u06da\u06ec\u06df\u06e2\u06d8\u06e5\u06eb\u06db\u06d7\u06d6\u06d8\u06d9\u06d9\u06e1\u06eb\u06e2\u06e5\u06d8\u06e7\u06e4\u06e5\u06d8\u06da\u06e2\u06d6\u06e4\u06e6\u06da\u06e8\u06e5\u06db\u06d9\u06d6\u06e6\u06e1\u06d8\u06e2\u06e6\u06e1\u06d8\u06e2\u06ec\u06e7\u06d6\u06e7\u06d6\u06d8\u06e0\u06dc\u06e0\u06e4\u06e2\u06da"

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v2

    sparse-switch v3, :sswitch_data_2

    goto :goto_2

    :sswitch_3
    const-string v0, "\u06df\u06e5\u06e0\u06e5\u06d6\u06e8\u06d8\u06e8\u06e4\u06dc\u06db\u06e8\u06d8\u06d8\u06d8\u06eb\u06d8\u06d8\u06d8\u06e0\u06e8\u06d8\u06dc\u06e2\u06e7\u06e6\u06e4\u06d8\u06e5\u06e8\u06da\u06e8\u06e2\u06e8\u06d9\u06ec\u06df\u06da\u06df\u06e4\u06da\u06e4\u06d6\u06d8\u06e8\u06da\u06db\u06e2\u06d7\u06dc\u06e2\u06e7\u06df\u06db\u06df\u06dc\u06db\u06d6"

    goto :goto_1

    :cond_0
    const-string v0, "\u06e8\u06da\u06e0\u06d8\u06eb\u06d6\u06e5\u06e7\u06d9\u06db\u06dc\u06e5\u06d8\u06e2\u06e7\u06d8\u06d8\u06da\u06e1\u06e4\u06db\u06db\u06da\u06ec\u06e0\u06e8\u06d8\u06d9\u06ec\u06dc\u06d8\u06eb\u06d9\u06e1\u06d8\u06d6\u06e7\u06e1\u06d7\u06d6\u06dc\u06d8"

    goto :goto_2

    :sswitch_4
    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->OooO00o()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v0

    iget-boolean v0, v0, Lcom/cyjh/elfin/base/AppContext;->o0OoOo0:Z

    if-eqz v0, :cond_0

    const-string v0, "\u06d9\u06e2\u06da\u06d7\u06ec\u06e1\u06e4\u06e5\u06e2\u06e8\u06e5\u06d8\u06d7\u06df\u06e6\u06df\u06e2\u06e0\u06e4\u06ec\u06e5\u06e7\u06da\u06e8\u06db\u06e2\u06e5\u06d8\u06ec\u06e8\u06d9\u06d8\u06df\u06dc\u06d8\u06d8\u06e4\u06e1\u06d8\u06df\u06e6\u06e8\u06d8\u06d7\u06e7\u06e8\u06d6\u06db\u06e5\u06e2\u06e5\u06d8\u06df\u06e2\u06dc\u06d6\u06e1\u06e1\u06d8"

    goto :goto_2

    :sswitch_5
    const-string v0, "\u06dc\u06e8\u06eb\u06e7\u06e8\u06d8\u06d8\u06d7\u06e7\u06e6\u06ec\u06e0\u06d7\u06e5\u06e5\u06d8\u06db\u06e0\u06e8\u06d8\u06e7\u06d7\u06dc\u06e0\u06e2\u06dc\u06d8\u06d9\u06e8\u06df\u06e4\u06d8\u06d8\u06e7\u06e5\u06e1\u06d8\u06d9\u06d7\u06d6\u06d8\u06d7\u06e8\u06e6\u06d8\u06e7\u06df\u06d6\u06e6\u06e5\u06db\u06d7\u06e8\u06dc\u06d8\u06da\u06e1\u06df\u06db\u06d8\u06ec"

    goto :goto_2

    :sswitch_6
    const-string v0, "\u06dc\u06e7\u06e1\u06d8\u06e7\u06e5\u06ec\u06db\u06db\u06dc\u06e2\u06ec\u06e2\u06d7\u06e0\u06e6\u06d8\u06d8\u06d8\u06e2\u06db\u06eb\u06d8\u06e6\u06d7\u06e5\u06e2\u06eb\u06dc\u06e6\u06eb\u06dc\u06d7\u06e6\u06e8\u06ec\u06dc\u06d8\u06df\u06d8\u06e5\u06d8\u06d6\u06d7\u06e8\u06d8\u06eb\u06d7\u06db\u06df\u06e0\u06d6"

    goto :goto_1

    :sswitch_7
    const-string v0, "\u06ec\u06e4\u06e4\u06e4\u06e8\u06d6\u06db\u06e5\u06d8\u06e0\u06da\u06d8\u06d8\u06eb\u06e2\u06db\u06e4\u06e7\u06db\u06d8\u06e2\u06eb\u06e0\u06dc\u06e8\u06d8\u06e5\u06e6\u06d9\u06e7\u06e6\u06da\u06eb\u06e4\u06eb\u06da"

    goto :goto_1

    :sswitch_8
    const-string v0, "\u06e0\u06e1\u06dc\u06d8\u06e1\u06e5\u06e1\u06d9\u06dc\u06e6\u06e1\u06e2\u06e8\u06da\u06e8\u06d6\u06db\u06df\u06d6\u06db\u06ec\u06db\u06e5\u06e0\u06df\u06d7\u06e5\u06eb\u06dc\u06e5\u06d6\u06d8\u06e8\u06d8\u06d6\u06d7\u06db\u06e5\u06d8\u06d6\u06e6\u06d6\u06e4\u06d9\u06e7\u06d6\u06ec\u06e5\u06d8\u06da\u06d9\u06e1\u06d8"

    goto :goto_0

    :sswitch_9
    const-wide/16 v0, 0xc8

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    const-string v0, "\u06df\u06dc\u06da\u06d7\u06e0\u06e6\u06eb\u06e4\u06e1\u06d8\u06d8\u06e7\u06e0\u06d8\u06e0\u06eb\u06d9\u06df\u06d6\u06d8\u06d6\u06e5\u06d9\u06db\u06e5\u06d9\u06e1\u06e4\u06e1\u06e2\u06df\u06d6\u06d8"

    goto :goto_0

    :sswitch_a
    iget-object v0, p0, Lcom/cyjh/common/base/activity/BaseModelActivity;->OooooO0:Landroidx/lifecycle/AndroidViewModel;

    check-cast v0, Lz2/na;

    invoke-virtual {v0}, Lz2/na;->OooOoO()V

    const-string v0, "\u06ec\u06dc\u06e8\u06d8\u06d9\u06e6\u06dc\u06d8\u06eb\u06e0\u06dc\u06d8\u06e0\u06dc\u06e6\u06db\u06e6\u06ec\u06eb\u06d9\u06eb\u06df\u06e5\u06e4\u06e0\u06d8\u06d9\u06e8\u06d7\u06d7\u06e7\u06d8\u06e5\u06ec\u06d6\u06d8\u06d8\u06d8\u06d8\u06df\u06dc\u06eb\u06e0\u06db\u06d6\u06e1\u06e8\u06dc\u06e6\u06ec\u06d6\u06d9"

    goto :goto_0

    :sswitch_b
    const-string v0, "\u06e5\u06ec\u06ec\u06e7\u06e5\u06e5\u06e0\u06e2\u06df\u06d7\u06d9\u06e5\u06e0\u06e4\u06e8\u06d8\u06e7\u06e4\u06d6\u06d8\u06dc\u06df\u06d8\u06e0\u06e5\u06e6\u06d8\u06e0\u06e2\u06e8\u06d8\u06e6\u06e7\u06d8"

    goto :goto_0

    :sswitch_c
    const-string v0, "\u06e0\u06e4\u06dc\u06d8\u06e4\u06d9\u06e6\u06d8\u06d7\u06da\u06eb\u06e8\u06d6\u06d8\u06e2\u06d7\u06d7\u06d6\u06e5\u06e7\u06e0\u06db\u06e8\u06d8\u06e2\u06e1\u06e8\u06e5\u06e1\u06e4\u06e0\u06e7\u06e0"

    goto :goto_0

    :sswitch_d
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x77490d84 -> :sswitch_b
        -0x6b9be99a -> :sswitch_1
        0x81f0922 -> :sswitch_a
        0x2b2eda7f -> :sswitch_0
        0x4119757a -> :sswitch_9
        0x51d136fe -> :sswitch_d
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x54c8e101 -> :sswitch_c
        -0x33014503 -> :sswitch_7
        0x12cc2ee1 -> :sswitch_2
        0x7ab4083e -> :sswitch_8
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        -0x74c5de64 -> :sswitch_5
        -0x6ebdfe07 -> :sswitch_4
        0x29494ae6 -> :sswitch_6
        0x411b3505 -> :sswitch_3
    .end sparse-switch
.end method

.method private synthetic OoooooO()V
    .locals 4

    const-string v0, "\u06d7\u06e6\u06e0\u06e1\u06d6\u06e4\u06e6\u06da\u06ec\u06d7\u06da\u06d6\u06d7\u06dc\u06e6\u06dc\u06eb\u06eb\u06d7\u06e1\u06d6\u06e1\u06e1\u06ec\u06e8\u06e7\u06e5\u06d8\u06d8\u06eb\u06dc\u06e6\u06dc\u06e2\u06ec\u06dc\u06e1\u06e8\u06d8\u06e7\u06d8\u06e6\u06e8\u06e7\u06d8\u06e6\u06e6\u06e1\u06d8\u06d9\u06dc\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x342

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x2fd

    const/16 v2, 0x9e

    const v3, -0x8a2a3ec

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e2\u06ec\u06e5\u06d8\u06e7\u06e5\u06d6\u06d8\u06db\u06db\u06e2\u06dc\u06ec\u06e6\u06d7\u06e8\u06e5\u06d8\u06d6\u06e1\u06e8\u06eb\u06ec\u06d8\u06d8\u06d8\u06da\u06d8\u06e7\u06d8\u06d6\u06d8\u06d6\u06e7\u06e1\u06e0\u06e2\u06e5\u06d8\u06e1\u06dc\u06d8\u06eb\u06dc\u06e6\u06d8\u06e7\u06e7\u06e5\u06e6\u06da\u06e0\u06e2\u06e2\u06d6\u06e1\u06dc\u06d8\u06dc\u06d7\u06e1"

    goto :goto_0

    :sswitch_1
    const v1, -0x39e9810

    const-string v0, "\u06df\u06dc\u06d6\u06d8\u06eb\u06da\u06e8\u06d8\u06d8\u06ec\u06e6\u06d8\u06e7\u06e8\u06d9\u06eb\u06e6\u06d7\u06d9\u06e2\u06d7\u06e4\u06ec\u06e5\u06d8\u06d8\u06e8\u06e1\u06d8\u06e7\u06e8\u06d8\u06e8\u06ec\u06e2\u06dc\u06e1\u06d6\u06e6\u06e0\u06dc"

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v2, v1

    sparse-switch v2, :sswitch_data_1

    goto :goto_1

    :sswitch_2
    const-string v0, "\u06e2\u06e4\u06e6\u06e5\u06e5\u06db\u06eb\u06df\u06e2\u06e8\u06da\u06da\u06e1\u06e7\u06e8\u06e5\u06dc\u06e7\u06d8\u06e2\u06d8\u06eb\u06e8\u06db\u06d8\u06d8\u06e6\u06e8\u06d8\u06e2\u06db\u06dc\u06d8\u06e0\u06e7\u06e6\u06d8\u06df\u06ec\u06e0\u06e1\u06dc\u06e7\u06d8\u06d8\u06e2\u06da\u06df\u06e0\u06e5\u06e7\u06e5\u06dc\u06d8\u06df\u06d9\u06d6\u06d8\u06e4\u06d7\u06e6"

    goto :goto_1

    :sswitch_3
    const-string v0, "\u06da\u06e2\u06e5\u06ec\u06d6\u06e8\u06d9\u06dc\u06db\u06dc\u06df\u06e7\u06e1\u06e4\u06eb\u06df\u06d9\u06e4\u06ec\u06e6\u06d8\u06e1\u06df\u06db\u06d8\u06e1\u06dc\u06d8\u06dc\u06d6\u06e7\u06d7\u06d8\u06d8\u06eb\u06e7\u06e1\u06d8"

    goto :goto_1

    :sswitch_4
    const v2, -0x756c511a

    const-string v0, "\u06e7\u06d8\u06e5\u06d8\u06e8\u06da\u06e7\u06d8\u06d7\u06e0\u06db\u06d6\u06d6\u06d8\u06e7\u06eb\u06e5\u06da\u06e8\u06dc\u06e4\u06db\u06e0\u06eb\u06e2\u06d8\u06d8\u06db\u06e7\u06e2\u06e8\u06e1\u06eb\u06e2\u06dc\u06d8\u06e8\u06e2\u06e5\u06d8"

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v2

    sparse-switch v3, :sswitch_data_2

    goto :goto_2

    :sswitch_5
    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->OooO00o()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v0

    iget-boolean v0, v0, Lcom/cyjh/elfin/base/AppContext;->o0OoOo0:Z

    if-eqz v0, :cond_0

    const-string v0, "\u06dc\u06df\u06dc\u06d8\u06e1\u06e7\u06e8\u06eb\u06d8\u06e4\u06eb\u06e8\u06da\u06d6\u06d6\u06d8\u06e0\u06da\u06ec\u06df\u06ec\u06e8\u06da\u06da\u06e8\u06d9\u06e5\u06da\u06e6\u06e1\u06d8\u06ec\u06e8\u06ec\u06d6\u06e2\u06e5\u06d7\u06d6\u06e7\u06ec\u06d9\u06e0\u06e7\u06e4\u06e2\u06e7\u06dc\u06df"

    goto :goto_2

    :cond_0
    const-string v0, "\u06d6\u06d7\u06db\u06db\u06df\u06da\u06da\u06e1\u06e5\u06d7\u06d6\u06e2\u06d9\u06d9\u06d8\u06dc\u06df\u06d6\u06e5\u06e0\u06d8\u06df\u06e8\u06e1\u06dc\u06e4\u06e8\u06d8\u06e4\u06e6\u06dc\u06df\u06e5\u06e2\u06e4\u06e8\u06da\u06e5\u06e6\u06e8\u06d6\u06ec\u06e5\u06d8\u06e0\u06e6\u06df\u06e0\u06df\u06e2\u06e6\u06ec\u06d6\u06d8\u06d9\u06d7\u06da"

    goto :goto_2

    :sswitch_6
    const-string v0, "\u06e5\u06e2\u06e5\u06d8\u06d6\u06ec\u06e0\u06e5\u06e0\u06e6\u06ec\u06d6\u06dc\u06d8\u06e1\u06df\u06e5\u06db\u06d6\u06d8\u06e8\u06e6\u06d8\u06e6\u06da\u06d7\u06e0\u06d6\u06d8\u06df\u06e5\u06e1"

    goto :goto_2

    :sswitch_7
    const-string v0, "\u06d6\u06d8\u06dc\u06d8\u06d9\u06d6\u06e6\u06d8\u06eb\u06dc\u06d9\u06e5\u06d6\u06e5\u06e5\u06d9\u06e6\u06d8\u06e5\u06d8\u06e0\u06ec\u06e7\u06d6\u06eb\u06d6\u06e2\u06ec\u06e5\u06e7\u06d8\u06e4\u06da\u06dc\u06d8"

    goto :goto_1

    :sswitch_8
    const-string v0, "\u06df\u06e8\u06d8\u06d8\u06e8\u06d8\u06e0\u06d6\u06df\u06eb\u06e7\u06d9\u06df\u06e2\u06d7\u06e8\u06e4\u06ec\u06e6\u06e1\u06dc\u06e1\u06d8\u06da\u06d7\u06e8\u06e2\u06e8\u06d9\u06ec\u06e7\u06dc\u06d8\u06da\u06dc\u06dc\u06d8\u06e1\u06df\u06e2"

    goto :goto_0

    :sswitch_9
    const-wide/16 v0, 0xc8

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    const-string v0, "\u06da\u06db\u06e6\u06d8\u06e6\u06df\u06d8\u06d8\u06d9\u06dc\u06e7\u06e5\u06ec\u06e8\u06db\u06dc\u06ec\u06e5\u06dc\u06db\u06eb\u06e5\u06d6\u06d8\u06d9\u06da\u06e5\u06d8\u06da\u06e8\u06e7\u06e7\u06d8\u06e6"

    goto :goto_0

    :sswitch_a
    iget-object v0, p0, Lcom/cyjh/common/base/activity/BaseModelActivity;->OooooO0:Landroidx/lifecycle/AndroidViewModel;

    check-cast v0, Lz2/na;

    invoke-virtual {v0}, Lz2/na;->OooOoO()V

    const-string v0, "\u06da\u06dc\u06e1\u06e8\u06da\u06dc\u06e2\u06db\u06dc\u06d8\u06d6\u06d7\u06dc\u06d8\u06e0\u06dc\u06d7\u06e7\u06e1\u06e6\u06e7\u06e2\u06d6\u06d8\u06df\u06e4\u06df\u06e7\u06e5\u06e5\u06e7\u06eb\u06e8\u06e4\u06d6\u06e7\u06d8\u06dc\u06df\u06e7"

    goto :goto_0

    :sswitch_b
    const-string v0, "\u06e2\u06ec\u06e5\u06d8\u06e7\u06e5\u06d6\u06d8\u06db\u06db\u06e2\u06dc\u06ec\u06e6\u06d7\u06e8\u06e5\u06d8\u06d6\u06e1\u06e8\u06eb\u06ec\u06d8\u06d8\u06d8\u06da\u06d8\u06e7\u06d8\u06d6\u06d8\u06d6\u06e7\u06e1\u06e0\u06e2\u06e5\u06d8\u06e1\u06dc\u06d8\u06eb\u06dc\u06e6\u06d8\u06e7\u06e7\u06e5\u06e6\u06da\u06e0\u06e2\u06e2\u06d6\u06e1\u06dc\u06d8\u06dc\u06d7\u06e1"

    goto :goto_0

    :sswitch_c
    const-string v0, "\u06e8\u06d8\u06e7\u06d9\u06e1\u06d8\u06dc\u06ec\u06db\u06d9\u06d9\u06d8\u06d8\u06df\u06eb\u06e0\u06e0\u06d8\u06d6\u06d8\u06df\u06e0\u06e6\u06d8\u06e5\u06e7\u06dc\u06d8\u06da\u06e2\u06ec\u06e8\u06e5\u06d9\u06dc\u06e8\u06e5\u06d8\u06d7\u06ec\u06da\u06d8\u06da\u06e5\u06d6\u06e6\u06e5\u06d8"

    goto :goto_0

    :sswitch_d
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x386d1320 -> :sswitch_d
        0x2f5d5317 -> :sswitch_0
        0x428520fb -> :sswitch_b
        0x43c86c30 -> :sswitch_a
        0x4ba28088 -> :sswitch_1
        0x5f8d796d -> :sswitch_9
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x582a848a -> :sswitch_2
        -0x3b675d11 -> :sswitch_8
        0x16b81780 -> :sswitch_c
        0x39cac8d0 -> :sswitch_4
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        -0x1b605d27 -> :sswitch_3
        0x4492c2de -> :sswitch_6
        0x5005a769 -> :sswitch_7
        0x7f9cd2ef -> :sswitch_5
    .end sparse-switch
.end method

.method private initListener()V
    .locals 4

    const-string v0, "\u06dc\u06da\u06d6\u06d8\u06e0\u06dc\u06e0\u06e0\u06e1\u06e1\u06d9\u06e2\u06df\u06db\u06e6\u06dc\u06e5\u06e7\u06e8\u06df\u06e7\u06e4\u06d8\u06d6\u06e4\u06e0\u06e8\u06e7\u06dc\u06e8\u06e8\u06df\u06e8\u06e8\u06d8\u06d6\u06d8\u06d6\u06e4\u06e8\u06eb\u06eb\u06e5\u06d8\u06e5\u06df\u06e1\u06e2\u06ec\u06e8\u06e2\u06d9\u06d7\u06e2\u06e5\u06d9"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x219

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x3da

    const/16 v2, 0x37b

    const v3, -0x56673f26

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06df\u06e5\u06d9\u06e1\u06e7\u06da\u06df\u06dc\u06e7\u06e6\u06d8\u06e5\u06d8\u06d6\u06e0\u06d9\u06ec\u06ec\u06d7\u06d6\u06da\u06e7\u06e7\u06e4\u06d9\u06e2\u06df\u06e4\u06e4\u06da\u06e8\u06e0\u06d6\u06d8\u06d7\u06e5\u06e8\u06e6\u06e6\u06e4\u06eb\u06e5\u06da\u06d7\u06ec\u06e5\u06e4\u06ec\u06e4"

    goto :goto_0

    :sswitch_1
    invoke-static {}, Lz2/l10;->OooO0o()Lz2/l10;

    move-result-object v0

    invoke-virtual {v0, p0}, Lz2/l10;->OooOo00(Ljava/lang/Object;)V

    const-string v0, "\u06e6\u06e4\u06dc\u06e0\u06d6\u06e0\u06e2\u06d9\u06e8\u06d7\u06d7\u06d6\u06eb\u06d9\u06db\u06d8\u06d8\u06e6\u06d8\u06e5\u06e4\u06d6\u06e8\u06e5\u06df\u06da\u06e5\u06dc\u06d8\u06e8\u06e1\u06df"

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->o0ooOO0:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "\u06eb\u06d8\u06db\u06e6\u06da\u06df\u06eb\u06df\u06e0\u06e4\u06e8\u06e4\u06d8\u06e1\u06e6\u06ec\u06d7\u06dc\u06d8\u06db\u06da\u06da\u06e1\u06d8\u06e7\u06eb\u06e5\u06e5\u06db\u06e6\u06ec\u06dc\u06dc\u06e4\u06e4\u06e5\u06e5\u06e8\u06da\u06da\u06e8\u06e5\u06e8"

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->o00oO0O:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "\u06eb\u06ec\u06d9\u06e7\u06ec\u06e1\u06d9\u06e2\u06da\u06e6\u06d7\u06e2\u06d9\u06e4\u06d8\u06d8\u06e8\u06e2\u06e7\u06df\u06e1\u06d9\u06df\u06e0\u06e5\u06d8\u06d8\u06df\u06d9\u06e5\u06e1\u06e8\u06d8\u06e2\u06df\u06e6\u06d8\u06d7\u06e8\u06d8\u06d8\u06db\u06e2\u06e0\u06dc\u06d8\u06db\u06d9\u06d7\u06e1\u06d8\u06e5\u06e4\u06e6"

    goto :goto_0

    :sswitch_4
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->o00o0O:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "\u06e0\u06e1\u06e2\u06e5\u06e7\u06d6\u06da\u06db\u06e4\u06db\u06db\u06e0\u06d6\u06e7\u06e5\u06eb\u06df\u06e5\u06e8\u06e2\u06e0\u06df\u06d7\u06db\u06d8\u06d8\u06e1\u06eb\u06d6\u06d6\u06e0\u06e7\u06ec\u06d8\u06db\u06d6\u06dc\u06d8\u06e5\u06eb\u06e2\u06ec\u06d8\u06e7\u06d8\u06e8\u06d8\u06d6\u06d8\u06e2\u06db\u06d6\u06e0\u06df\u06e1\u06d8"

    goto :goto_0

    :sswitch_5
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x6de0bafc -> :sswitch_2
        -0x2a5785e7 -> :sswitch_4
        0x229359d8 -> :sswitch_1
        0x395a21c3 -> :sswitch_3
        0x49874c0b -> :sswitch_0
        0x54b55bc4 -> :sswitch_5
    .end sparse-switch
.end method

.method private o000oOoO()V
    .locals 4

    const-string v0, "\u06da\u06da\u06e1\u06e6\u06db\u06dc\u06d8\u06e5\u06e6\u06d6\u06e0\u06dc\u06e0\u06df\u06d9\u06eb\u06d9\u06d9\u06dc\u06d8\u06e0\u06d9\u06d9\u06e5\u06e8\u06e5\u06d8\u06e2\u06e5\u06e7\u06d8\u06db\u06e4\u06e5\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x197

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x2cf

    const/16 v2, 0xd8

    const v3, 0x20c420cf

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d6\u06df\u06d8\u06d8\u06d9\u06d6\u06e8\u06d8\u06e4\u06d7\u06e7\u06e5\u06dc\u06eb\u06df\u06dc\u06dc\u06eb\u06e6\u06d8\u06d9\u06e5\u06df\u06d7\u06da\u06e5\u06df\u06d8\u06e8\u06d8\u06e8\u06e7\u06d7\u06d9\u06e6\u06dc\u06da\u06df\u06e4\u06db\u06e7\u06db\u06e7\u06e0\u06eb\u06e8\u06da\u06e0\u06db\u06e2"

    goto :goto_0

    :sswitch_1
    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->OooO00o()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cyjh/elfin/base/AppContext;->OooO()V

    const-string v0, "\u06dc\u06e4\u06e0\u06e0\u06e0\u06e1\u06d8\u06d9\u06d9\u06d8\u06e4\u06e2\u06e7\u06da\u06d6\u06d8\u06d8\u06e6\u06e5\u06e8\u06d8\u06e6\u06dc\u06d8\u06d8\u06db\u06ec\u06d9\u06e1\u06e7\u06d8\u06d8\u06d9\u06d6\u06dc\u06d8\u06d9\u06d9\u06d9\u06ec\u06e6\u06e5\u06d8\u06df\u06d9\u06ec\u06d8\u06e4\u06db\u06e8\u06e8\u06d7\u06eb\u06e4\u06db\u06e2\u06e7\u06dc\u06d6\u06e0\u06e6"

    goto :goto_0

    :sswitch_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7c45fd07 -> :sswitch_1
        0x2c0cfc82 -> :sswitch_2
        0x41011d75 -> :sswitch_0
    .end sparse-switch
.end method

.method private o00O0O(Landroid/view/View;)V
    .locals 11

    const/high16 v10, 0x40000000    # 2.0f

    const/4 v2, 0x0

    const/4 v4, 0x0

    const-string v0, "\u06db\u06dc\u06dc\u06e8\u06e8\u06df\u06d9\u06df\u06eb\u06e1\u06e6\u06e8\u06d8\u06df\u06e0\u06d6\u06db\u06e0\u06e1\u06d8\u06e1\u06eb\u06e8\u06eb\u06e5\u06df\u06d8\u06e8\u06da\u06da\u06e5\u06d8"

    move v1, v2

    move v3, v2

    move v5, v2

    move v6, v2

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v7

    const/16 v8, 0x25a

    xor-int/2addr v7, v8

    xor-int/lit16 v7, v7, 0x37b

    const/16 v8, 0x2df

    const v9, 0x554c747c

    xor-int/2addr v7, v8

    xor-int/2addr v7, v9

    sparse-switch v7, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06ec\u06e2\u06d7\u06ec\u06d9\u06e6\u06e2\u06df\u06e8\u06ec\u06e7\u06d6\u06e2\u06dc\u06e1\u06d6\u06df\u06e5\u06e0\u06dc\u06d8\u06e4\u06d8\u06e8\u06d8\u06d7\u06df\u06e1\u06d8\u06d8"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06da\u06d9\u06e6\u06d8\u06e0\u06eb\u06ec\u06e5\u06e8\u06d7\u06e1\u06e0\u06e8\u06da\u06e8\u06e7\u06d7\u06d7\u06e2\u06e0\u06e7\u06db\u06d8\u06e8\u06e5\u06d8\u06e4\u06eb\u06e1\u06d8\u06e8\u06e5\u06d9\u06e4\u06e8\u06e2\u06e6\u06d8\u06d6\u06dc\u06dc\u06d9\u06e0\u06d9\u06d7"

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v6

    const-string v0, "\u06dc\u06eb\u06d7\u06e4\u06e4\u06e6\u06dc\u06d6\u06e7\u06d8\u06e4\u06df\u06e5\u06d8\u06e4\u06df\u06e8\u06df\u06d6\u06e8\u06e7\u06da\u06e8\u06d7\u06e5\u06e6\u06e6\u06e8\u06e8\u06d8\u06ec\u06e8\u06df\u06e6\u06df\u06e1\u06d8\u06e6\u06ec\u06ec\u06e7\u06dc\u06da\u06e5\u06dc\u06d8\u06d8"

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float v5, v0, v10

    const-string v0, "\u06db\u06e7\u06e7\u06e5\u06e0\u06d7\u06d6\u06ec\u06e8\u06d8\u06e8\u06db\u06db\u06d6\u06df\u06e5\u06e5\u06e1\u06d6\u06d8\u06d7\u06e8\u06e8\u06eb\u06e8\u06e6\u06d8\u06ec\u06e8\u06e6\u06e0\u06d8\u06e2\u06d6\u06ec\u06db\u06d7\u06d9\u06e6\u06eb\u06d6\u06d8\u06d9\u06d7"

    goto :goto_0

    :sswitch_4
    iget v4, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->Ooooooo:I

    const-string v0, "\u06dc\u06e5\u06d6\u06d9\u06e1\u06e8\u06d8\u06d7\u06e1\u06e1\u06e8\u06e1\u06e5\u06da\u06e7\u06dc\u06e7\u06e2\u06d6\u06d8\u06ec\u06e1\u06e1\u06e1\u06ec\u06d6\u06e2\u06d6\u06d6\u06d6\u06dc\u06e4\u06d6\u06d6\u06d8\u06e8\u06eb\u06ec\u06da\u06e5\u06dc\u06e1\u06e1\u06da"

    goto :goto_0

    :sswitch_5
    const v7, 0xbca5112

    const-string v0, "\u06e2\u06e4\u06e0\u06e6\u06e2\u06e5\u06d8\u06e2\u06ec\u06da\u06d8\u06da\u06ec\u06ec\u06df\u06e6\u06d8\u06ec\u06da\u06da\u06eb\u06d9\u06d8\u06da\u06e1\u06e7\u06d8\u06eb\u06d6\u06e2\u06e4\u06dc\u06d9\u06d8\u06ec\u06e1\u06e4\u06e4\u06d8\u06d8\u06eb\u06da\u06e2\u06e8\u06e0\u06ec\u06db\u06d6\u06d7\u06e4\u06dc\u06d6\u06d7\u06d6\u06d6\u06d8\u06e1\u06e7\u06e8\u06d8"

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v8

    xor-int/2addr v8, v7

    sparse-switch v8, :sswitch_data_1

    goto :goto_1

    :sswitch_6
    const-string v0, "\u06e7\u06dc\u06e6\u06e4\u06da\u06e5\u06e7\u06d7\u06e0\u06da\u06e0\u06d7\u06d6\u06e6\u06d9\u06d7\u06d8\u06da\u06e1\u06d9\u06e8\u06e0\u06dc\u06d8\u06e8\u06eb\u06e8\u06e1\u06d9\u06e8\u06eb\u06d9\u06d9\u06dc\u06ec\u06d6\u06d9\u06e0\u06d6\u06e6\u06e7\u06d8\u06e7\u06e6\u06e8\u06d8\u06ec\u06e8\u06e4"

    goto :goto_1

    :sswitch_7
    const-string v0, "\u06e5\u06e8\u06dc\u06df\u06eb\u06d8\u06d8\u06e6\u06e5\u06ec\u06ec\u06db\u06da\u06e0\u06d8\u06dc\u06d8\u06dc\u06d6\u06d6\u06e7\u06d9\u06e5\u06d8\u06d7\u06d6\u06e8\u06e5\u06dc\u06dc\u06d8\u06e4\u06e0\u06e8\u06e0\u06e0\u06d7\u06dc\u06d8\u06e0\u06da\u06e7\u06e1\u06d8\u06e7\u06d6\u06e1\u06d8\u06d9\u06e1\u06e4\u06d8\u06d6\u06d8\u06d8\u06eb\u06e6\u06da\u06dc\u06e6\u06d8"

    goto :goto_1

    :sswitch_8
    const v8, -0x6072e36e

    const-string v0, "\u06dc\u06da\u06db\u06e8\u06d6\u06e6\u06da\u06e8\u06d8\u06e6\u06df\u06e7\u06eb\u06e1\u06dc\u06d6\u06df\u06d8\u06d8\u06db\u06e2\u06e5\u06e0\u06da\u06e0\u06e4\u06e0\u06e7\u06e0\u06dc\u06e1\u06d8\u06d8\u06dc\u06d8\u06d9\u06db\u06d9"

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v9

    xor-int/2addr v9, v8

    sparse-switch v9, :sswitch_data_2

    goto :goto_2

    :sswitch_9
    add-float v0, v6, v5

    int-to-float v9, v4

    div-float/2addr v9, v10

    cmpg-float v0, v0, v9

    if-gez v0, :cond_0

    const-string v0, "\u06d8\u06d9\u06e1\u06d8\u06ec\u06e7\u06d8\u06d8\u06da\u06d7\u06eb\u06e0\u06e1\u06d6\u06d8\u06d8\u06e5\u06e7\u06dc\u06e2\u06d6\u06db\u06e4\u06e7\u06d7\u06db\u06e1\u06d7\u06df\u06d7\u06e1\u06e2\u06da\u06e8\u06e8\u06db\u06e8\u06eb"

    goto :goto_2

    :cond_0
    const-string v0, "\u06db\u06e4\u06e6\u06d8\u06d9\u06e1\u06e8\u06d8\u06d7\u06da\u06e5\u06d8\u06d8\u06e6\u06e6\u06d8\u06df\u06e5\u06ec\u06d9\u06d8\u06d6\u06e4\u06d8\u06dc\u06eb\u06eb\u06eb\u06dc\u06db\u06e7\u06e8\u06e4\u06e7\u06e0\u06ec\u06e1\u06eb\u06e0\u06d6\u06d9\u06e2\u06d7\u06e0\u06df\u06d6\u06e1\u06d8\u06d6\u06e4\u06d9\u06ec"

    goto :goto_2

    :sswitch_a
    const-string v0, "\u06d9\u06ec\u06d6\u06d6\u06e7\u06e2\u06dc\u06e5\u06d8\u06d8\u06e0\u06e6\u06d8\u06d8\u06e0\u06d7\u06e0\u06e0\u06e2\u06e6\u06e0\u06df\u06e0\u06db\u06da\u06e4\u06e8\u06da\u06da\u06e2\u06e1\u06eb\u06e2\u06e1\u06d8\u06ec\u06df\u06e1\u06d8\u06da\u06e0\u06db\u06dc\u06e4\u06e2\u06db\u06db\u06e4\u06d6\u06db\u06da"

    goto :goto_2

    :sswitch_b
    const-string v0, "\u06e1\u06ec\u06df\u06e0\u06df\u06d6\u06e0\u06e0\u06d8\u06e1\u06d8\u06dc\u06d8\u06ec\u06e6\u06df\u06dc\u06e1\u06e5\u06dc\u06d6\u06d6\u06e0\u06e5\u06dc\u06d8\u06dc\u06e2\u06dc\u06d8\u06e1\u06dc\u06e4\u06e6\u06e6\u06d7\u06db\u06e8\u06d9\u06dc\u06dc\u06e1\u06eb\u06d8\u06db\u06e7\u06eb\u06dc\u06d8\u06e8\u06df\u06e1\u06d8"

    goto :goto_1

    :sswitch_c
    const-string v0, "\u06da\u06d7\u06e5\u06e4\u06dc\u06e6\u06d8\u06d7\u06e1\u06d9\u06e1\u06e2\u06e8\u06d8\u06ec\u06eb\u06d8\u06da\u06eb\u06e6\u06da\u06d8\u06e8\u06d8\u06d8\u06ec\u06d6\u06e8\u06e1\u06ec\u06d9\u06d6\u06da\u06e2\u06e6\u06d8\u06d9\u06e6\u06e4\u06d9\u06ec\u06db\u06d7\u06e1\u06d6\u06d8\u06e2\u06e2\u06e8\u06d9\u06e2\u06e5\u06e0\u06e5\u06d8"

    goto :goto_0

    :sswitch_d
    const-string v0, "\u06df\u06e2\u06d7\u06e4\u06df\u06e1\u06d8\u06e1\u06d8\u06d6\u06dc\u06e4\u06e5\u06df\u06dc\u06d7\u06df\u06e0\u06d9\u06e2\u06e0\u06e7\u06dc\u06ec\u06e8\u06e0\u06d7\u06dc\u06d8\u06e4\u06db\u06d7\u06db\u06e2\u06e7\u06e6\u06d7\u06e5\u06df\u06db\u06e8\u06e6\u06d6\u06e4\u06db\u06d6\u06db\u06da\u06e6\u06db\u06d6\u06e1\u06d8\u06eb\u06db\u06e0"

    goto :goto_0

    :sswitch_e
    const-string v0, "\u06df\u06d8\u06d6\u06ec\u06e7\u06e6\u06d8\u06d7\u06da\u06db\u06e5\u06db\u06da\u06d9\u06e2\u06ec\u06ec\u06dc\u06d6\u06d8\u06e7\u06e7\u06d8\u06d8\u06da\u06d9\u06d8\u06d8\u06e0\u06e8\u06d9\u06e5\u06e4\u06e1\u06d8\u06df\u06e6\u06e7\u06d8\u06d7\u06e4\u06d8\u06d7\u06d9\u06eb\u06df\u06e8\u06dc\u06d6\u06d7\u06db\u06d8\u06d6\u06e1\u06d8\u06df\u06d8\u06e8\u06d8\u06db\u06d7\u06eb"

    move v3, v2

    goto :goto_0

    :sswitch_f
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    sub-int v0, v4, v0

    int-to-float v1, v0

    const-string v0, "\u06d8\u06d8\u06e7\u06d8\u06e0\u06df\u06d7\u06e5\u06dc\u06e0\u06dc\u06ec\u06df\u06e0\u06d7\u06e5\u06da\u06d7\u06e1\u06d8\u06dc\u06e8\u06db\u06eb\u06e1\u06d8\u06eb\u06d9\u06df\u06eb\u06e4\u06d8"

    goto :goto_0

    :sswitch_10
    const-string v0, "\u06e7\u06dc\u06e7\u06d8\u06df\u06d6\u06dc\u06d8\u06ec\u06d6\u06df\u06ec\u06d7\u06dc\u06d8\u06e6\u06d9\u06e2\u06eb\u06e1\u06eb\u06d9\u06d6\u06e1\u06d8\u06db\u06e7\u06e4\u06db\u06e2\u06e1\u06dc\u06e2\u06e5\u06dc\u06d8\u06e8\u06d8\u06da\u06e7\u06dc\u06d8\u06e7\u06e4\u06e1\u06da\u06ec\u06e1\u06d8\u06e2\u06e6\u06e6\u06d8\u06e2\u06e5\u06e7\u06d8"

    move v3, v1

    goto :goto_0

    :sswitch_11
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v8, 0x12c

    invoke-virtual {v0, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    const-string v0, "\u06df\u06d9\u06eb\u06dc\u06ec\u06e8\u06e6\u06ec\u06d9\u06dc\u06e4\u06dc\u06d8\u06eb\u06eb\u06d8\u06e1\u06da\u06d6\u06d8\u06da\u06e5\u06da\u06dc\u06dc\u06d6\u06df\u06d7\u06e6\u06ec\u06e6\u06e6\u06e2\u06d8\u06db\u06d8\u06e8\u06d7\u06e2\u06e2\u06e2\u06d7\u06d9\u06d8"

    goto/16 :goto_0

    :sswitch_12
    const-string v0, "\u06d9\u06d7\u06e8\u06da\u06da\u06e4\u06e1\u06e4\u06da\u06d7\u06d6\u06e2\u06d9\u06df\u06e5\u06db\u06d6\u06e4\u06d7\u06e6\u06da\u06eb\u06d7\u06e1\u06e6\u06d9\u06d8\u06e1\u06db\u06eb"

    goto/16 :goto_0

    :sswitch_13
    const-string v0, "\u06e7\u06dc\u06e7\u06d8\u06df\u06d6\u06dc\u06d8\u06ec\u06d6\u06df\u06ec\u06d7\u06dc\u06d8\u06e6\u06d9\u06e2\u06eb\u06e1\u06eb\u06d9\u06d6\u06e1\u06d8\u06db\u06e7\u06e4\u06db\u06e2\u06e1\u06dc\u06e2\u06e5\u06dc\u06d8\u06e8\u06d8\u06da\u06e7\u06dc\u06d8\u06e7\u06e4\u06e1\u06da\u06ec\u06e1\u06d8\u06e2\u06e6\u06e6\u06d8\u06e2\u06e5\u06e7\u06d8"

    goto/16 :goto_0

    :sswitch_14
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x67f0621b -> :sswitch_5
        -0x61b03244 -> :sswitch_14
        -0x5e9874dc -> :sswitch_f
        -0x5bfedea5 -> :sswitch_3
        -0x40cf47f8 -> :sswitch_e
        -0x3a6aaa39 -> :sswitch_0
        -0x30c78a80 -> :sswitch_11
        -0xdf7573e -> :sswitch_2
        0x410aed4 -> :sswitch_1
        0x38e4a1a0 -> :sswitch_d
        0x5e3dd749 -> :sswitch_13
        0x662a1634 -> :sswitch_10
        0x7fa953fd -> :sswitch_4
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x6f7ab556 -> :sswitch_12
        -0x6abcf41e -> :sswitch_c
        -0x6aba51d1 -> :sswitch_6
        0x2b81abe9 -> :sswitch_8
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        -0x6f305045 -> :sswitch_9
        -0x37d24001 -> :sswitch_7
        0x3d569a8b -> :sswitch_b
        0x4f29f0b3 -> :sswitch_a
    .end sparse-switch
.end method

.method public static o00Oo0(Landroid/content/Context;)V
    .locals 5

    const/4 v1, 0x0

    const-string v0, "\u06e7\u06e6\u06e8\u06d8\u06e4\u06e0\u06e1\u06d7\u06db\u06e2\u06e4\u06db\u06e6\u06d8\u06e0\u06d6\u06d6\u06e2\u06d8\u06d6\u06e7\u06e5\u06dc\u06e0\u06d9\u06e1\u06e1\u06d8\u06e5\u06dc\u06e7\u06e5\u06d8\u06d6\u06ec\u06d8\u06d8\u06e8\u06ec\u06d8\u06d7\u06df\u06df\u06df\u06e7\u06d8\u06ec\u06d9\u06e1\u06e4\u06e8\u06d8\u06eb\u06da\u06d6\u06e1\u06e8\u06e7"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v3, 0x1cc

    xor-int/2addr v2, v3

    xor-int/lit16 v2, v2, 0x247

    const/16 v3, 0x339

    const v4, -0x6e47abb7

    xor-int/2addr v2, v3

    xor-int/2addr v2, v4

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e8\u06e6\u06da\u06d7\u06dc\u06e6\u06d8\u06ec\u06d7\u06e5\u06d8\u06d7\u06db\u06e5\u06da\u06dc\u06dc\u06d8\u06e4\u06ec\u06da\u06db\u06e6\u06eb\u06d7\u06df\u06df\u06da\u06ec\u06d8\u06d8\u06dc\u06e1\u06dc"

    goto :goto_0

    :sswitch_1
    new-instance v1, Landroid/content/Intent;

    const-class v0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;

    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "\u06ec\u06dc\u06e2\u06d9\u06ec\u06e5\u06e5\u06e1\u06d6\u06d7\u06d6\u06e4\u06d9\u06ec\u06e2\u06dc\u06e8\u06e7\u06e5\u06d6\u06dc\u06da\u06e1\u06e2\u06e4\u06e8\u06d6\u06e6\u06df\u06ec"

    goto :goto_0

    :sswitch_2
    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v0, "\u06d9\u06ec\u06e2\u06d6\u06e4\u06d6\u06d8\u06d7\u06e1\u06d7\u06e0\u06ec\u06e7\u06e0\u06e1\u06e5\u06e2\u06eb\u06e1\u06ec\u06eb\u06e0\u06e2\u06eb\u06ec\u06e6\u06d8\u06e6\u06d9\u06e5\u06eb\u06dc\u06d7\u06d8\u06e7\u06e6"

    goto :goto_0

    :sswitch_3
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const-string v0, "\u06e6\u06e4\u06e8\u06e8\u06dc\u06d8\u06d8\u06e2\u06e5\u06da\u06e5\u06e5\u06e7\u06d8\u06dc\u06e6\u06e4\u06d6\u06e4\u06e5\u06eb\u06d7\u06d7\u06ec\u06e8\u06d8\u06ec\u06df\u06df\u06db\u06e6\u06e1"

    goto :goto_0

    :sswitch_4
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7cb65b6d -> :sswitch_2
        -0x5e7b3c0b -> :sswitch_3
        -0x5af3bc07 -> :sswitch_4
        -0x3b4a334f -> :sswitch_1
        -0x2e38ffdc -> :sswitch_0
    .end sparse-switch
.end method

.method private o00Ooo(FF)V
    .locals 4

    const-string v0, "\u06db\u06df\u06e1\u06d8\u06eb\u06e8\u06e6\u06d6\u06d8\u06d9\u06d9\u06d8\u06d8\u06da\u06e5\u06d6\u06d8\u06e1\u06ec\u06e2\u06da\u06e6\u06dc\u06d8\u06e8\u06e7\u06d6\u06dc\u06d7\u06dc\u06d8\u06d6\u06ec\u06e4\u06df\u06d8\u06dc\u06e5\u06dc\u06dc\u06df\u06e5\u06e1\u06d8\u06dc\u06db\u06e1\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x15d

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x367

    const/16 v2, 0x25d

    const v3, 0x782bbfe8

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06db\u06e6\u06e1\u06d8\u06e6\u06e6\u06db\u06d6\u06d8\u06dc\u06d9\u06dc\u06e6\u06d8\u06d6\u06eb\u06db\u06df\u06e0\u06e0\u06e5\u06ec\u06e6\u06d8\u06e2\u06db\u06d6\u06d8\u06d6\u06eb\u06da\u06db\u06d7\u06d7\u06e6\u06e7\u06dc\u06dc\u06d8\u06e2\u06e8\u06d6\u06df\u06e4\u06eb\u06e6\u06ec\u06e4\u06d7\u06e7\u06da\u06e5\u06d8\u06e7\u06e4\u06da\u06e4\u06df\u06e6"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06dc\u06ec\u06d7\u06e7\u06d6\u06e6\u06e7\u06d6\u06d8\u06e1\u06eb\u06e8\u06d8\u06e6\u06d6\u06e2\u06dc\u06db\u06e4\u06e0\u06e5\u06d8\u06df\u06eb\u06e7\u06e2\u06df\u06e4\u06e6\u06eb\u06df\u06e1\u06da\u06d8\u06d9\u06e8\u06e8\u06da\u06eb\u06dc\u06d8\u06e8\u06df\u06e7\u06e0\u06d8\u06d7\u06df\u06e1"

    goto :goto_0

    :sswitch_2
    const-string v0, "\u06e5\u06da\u06dc\u06d8\u06d7\u06dc\u06e7\u06e7\u06e4\u06e6\u06d8\u06e0\u06e6\u06e4\u06e2\u06e8\u06e0\u06e5\u06dc\u06e8\u06df\u06d9\u06d6\u06d7\u06d9\u06d8\u06d8\u06e8\u06db\u06db\u06e1\u06eb\u06d7"

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->OooooOo:Landroid/view/View;

    new-instance v1, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$OooO0o;

    invoke-direct {v1, p0, p1, p2}, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$OooO0o;-><init>(Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;FF)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    const-string v0, "\u06e4\u06d6\u06eb\u06df\u06e6\u06e6\u06db\u06d6\u06e0\u06e0\u06d6\u06d8\u06df\u06e2\u06d6\u06d8\u06e6\u06d6\u06e0\u06dc\u06e4\u06e4\u06e8\u06dc\u06e5\u06e4\u06e4\u06e0\u06ec"

    goto :goto_0

    :sswitch_4
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x63eb7cba -> :sswitch_4
        -0x2c8c1192 -> :sswitch_1
        0x3a25c6a1 -> :sswitch_3
        0x3e8e5258 -> :sswitch_0
        0x5f9a66d6 -> :sswitch_2
    .end sparse-switch
.end method

.method private o0OoOo0()V
    .locals 7

    const v1, -0x2c66cd67

    :try_start_0
    const-string v0, "\u06ec\u06e7\u06e6\u06e0\u06d8\u06d7\u06e6\u06e1\u06e6\u06eb\u06db\u06d6\u06d8\u06e5\u06e0\u06e6\u06e5\u06dc\u06e1\u06d8\u06d8\u06e8\u06d7\u06e7\u06d8\u06d6\u06d8\u06df\u06e6\u06eb\u06ec\u06e2\u06e8\u06d8\u06ec\u06e2\u06e7\u06e7\u06dc\u06dc"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v2, v1

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const v2, -0x44f9623e

    const-string v0, "\u06e4\u06d9\u06e5\u06d8\u06e4\u06d6\u06df\u06eb\u06e0\u06e2\u06ec\u06e5\u06eb\u06d8\u06e1\u06e6\u06d8\u06eb\u06e1\u06e0\u06e0\u06e0\u06db\u06da\u06d8\u06df\u06d9\u06e2\u06e0\u06dc\u06e5\u06d8\u06eb\u06e1\u06e0\u06d6"

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v2

    sparse-switch v3, :sswitch_data_1

    goto :goto_1

    :sswitch_1
    const-string v0, "\u06e4\u06e1\u06e4\u06e8\u06db\u06e8\u06e4\u06db\u06db\u06db\u06e2\u06df\u06da\u06ec\u06eb\u06d8\u06db\u06e0\u06e4\u06ec\u06d7\u06eb\u06db\u06e5\u06db\u06e2\u06e5\u06e8\u06dc\u06d9"

    goto :goto_0

    :sswitch_2
    const-string v0, "\u06e6\u06d7\u06e7\u06d7\u06dc\u06dc\u06d8\u06e1\u06e0\u06e6\u06d8\u06dc\u06d7\u06d7\u06e2\u06d8\u06d8\u06d7\u06e7\u06d8\u06eb\u06e8\u06da\u06e1\u06db\u06e1\u06db\u06e2\u06e6\u06e0\u06e7\u06e8\u06d9\u06df\u06df\u06eb"

    goto :goto_0

    :cond_0
    const-string v0, "\u06d8\u06e8\u06e6\u06d7\u06e0\u06df\u06df\u06dc\u06e6\u06d8\u06e4\u06db\u06d6\u06eb\u06e2\u06e8\u06d8\u06e0\u06df\u06db\u06e7\u06df\u06e8\u06db\u06e6\u06e2\u06d7\u06db\u06e8\u06d8\u06e2\u06e6\u06d6\u06d8\u06ec\u06e7\u06dc\u06e2\u06da"

    goto :goto_1

    :sswitch_3
    invoke-static {}, Lz2/x4;->OooO0O0()Lz2/x4;

    move-result-object v0

    const-string v3, "has_already_push_system_app_5"

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v3, v4}, Lz2/x4;->OooO00o(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "\u06df\u06e1\u06e4\u06e1\u06e8\u06da\u06e8\u06e0\u06d7\u06dc\u06d7\u06e0\u06d9\u06d8\u06e8\u06d8\u06e4\u06db\u06d6\u06d8\u06eb\u06e1\u06e4\u06d8\u06e0\u06e5\u06da\u06e1\u06d8\u06e2\u06d6\u06da\u06df\u06da\u06df\u06d7\u06e7\u06e1\u06d7\u06e8\u06dc\u06d8\u06df\u06d8\u06e4"

    goto :goto_1

    :sswitch_4
    const-string v0, "\u06df\u06d9\u06e6\u06d8\u06e8\u06e5\u06db\u06df\u06e7\u06db\u06e1\u06e7\u06d7\u06db\u06ec\u06d7\u06eb\u06e7\u06e1\u06d8\u06da\u06d6\u06d6\u06d9\u06d6\u06e5\u06d9\u06d6\u06e7\u06e8\u06e1\u06e1\u06e5\u06d9\u06eb\u06e1\u06e6\u06df"

    goto :goto_1

    :sswitch_5
    const-string v0, "\u06da\u06d6\u06e8\u06d8\u06da\u06e4\u06e7\u06e7\u06d9\u06dc\u06d8\u06dc\u06dc\u06d8\u06e1\u06e1\u06df\u06d7\u06d9\u06db\u06d8\u06d7\u06d7\u06e0\u06d6\u06d8\u06ec\u06d9\u06ec\u06da\u06e6\u06e5\u06ec\u06d7\u06e0\u06d9\u06d6\u06d6\u06d8\u06e0\u06e5\u06e1\u06ec\u06df\u06e5\u06e2\u06e7\u06e8\u06e2\u06e5\u06d8"

    goto :goto_0

    :sswitch_6
    const-string v0, "setenforce 0"

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lz2/y4;->OooO0OO(Ljava/lang/String;ZI)Lz2/y4$OooO00o;

    invoke-static {}, Lz2/x4;->OooO0O0()Lz2/x4;

    move-result-object v0

    const-string v1, "has_already_push_system_app_5"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lz2/x4;->OooO0o(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "app-release.apk"

    invoke-static {v0, v1}, Lz2/j4;->OooOO0O(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "app-release.apk"

    const-string v2, "/sdcard/app-release.apk"

    invoke-static {v0, v1, v2}, Lz2/a4;->OooO0O0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const v1, 0x68880494

    const-string v0, "\u06d7\u06e5\u06dc\u06d8\u06e4\u06e5\u06dc\u06d8\u06ec\u06e8\u06d8\u06d7\u06ec\u06d6\u06ec\u06da\u06e6\u06d9\u06e5\u06d6\u06d7\u06eb\u06db\u06dc\u06d8\u06d7\u06d6\u06e1\u06d8\u06e2\u06dc\u06d6\u06d8"

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    xor-int/2addr v4, v1

    sparse-switch v4, :sswitch_data_2

    goto :goto_2

    :sswitch_7
    const-string v0, "priv-app"

    move-object v1, v0

    :goto_3
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pushApkToSystemApp --> filePath="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/sdcard/app-release.apk"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",copyAppResult="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mount -o remount,rw /"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v4, 0x61a8aada

    const-string v0, "\u06df\u06e5\u06e4\u06d7\u06e5\u06d9\u06e6\u06df\u06da\u06e5\u06e2\u06e5\u06d8\u06df\u06df\u06df\u06e6\u06e0\u06db\u06ec\u06db\u06db\u06e6\u06d7\u06dc\u06d8\u06e6\u06dc\u06db\u06db\u06db\u06e5\u06d8\u06e1\u06db\u06da\u06ec\u06d8\u06d6\u06d8\u06d6\u06d8\u06d6\u06d8\u06d8\u06d6\u06e8\u06d8"

    :goto_4
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v5

    xor-int/2addr v5, v4

    sparse-switch v5, :sswitch_data_3

    goto :goto_4

    :sswitch_8
    const-string v0, "system"

    :goto_5
    :try_start_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "chmod 777 /system/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cat "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/sdcard/app-release.apk"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " > /system/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "app-release.apk"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "chmod 777 /system/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "app-release.apk"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v0, v1, v4

    const/4 v0, 0x1

    const-string v4, "chmod 777 /system"

    aput-object v4, v1, v0

    const/4 v0, 0x2

    aput-object v2, v1, v0

    const/4 v0, 0x3

    aput-object v3, v1, v0

    const/4 v0, 0x4

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    const/4 v0, 0x5

    const-string v2, "mount -o remount,ro /"

    aput-object v2, v1, v0

    const/4 v0, 0x1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lz2/y4;->OooO0oO([Ljava/lang/String;ZI)Lz2/y4$OooO00o;

    move-result-object v0

    iget-object v1, v0, Lz2/y4$OooO00o;->OooO0OO:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    invoke-static {}, Lz2/x4;->OooO0O0()Lz2/x4;

    move-result-object v2

    const-string v3, "has_already_push_system_app_5"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lz2/x4;->OooO0o(Ljava/lang/String;Ljava/lang/Boolean;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pushApkToSystemApp --> errorMsg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lz2/y4$OooO00o;->OooO0OO:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",successMsg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lz2/y4$OooO00o;->OooO0O0:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",cmdResult="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const v1, -0x713e777e

    const-string v0, "\u06d8\u06d8\u06e1\u06d8\u06e8\u06e0\u06e0\u06dc\u06da\u06dc\u06d8\u06db\u06db\u06d8\u06d8\u06e7\u06e7\u06e8\u06e7\u06d9\u06e8\u06d8\u06db\u06da\u06d6\u06e1\u06da\u06e8\u06da\u06e4\u06dc\u06eb\u06e7\u06d8\u06d8\u06eb\u06d9\u06e2\u06e7\u06ec\u06e8"

    :goto_6
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v2, v1

    sparse-switch v2, :sswitch_data_4

    goto :goto_6

    :sswitch_9
    const-string v0, "\u06d9\u06d8\u06e2\u06dc\u06d6\u06ec\u06d6\u06da\u06df\u06e7\u06e5\u06e1\u06d8\u06e0\u06d9\u06d6\u06d8\u06e7\u06e1\u06e5\u06e6\u06da\u06e5\u06d9\u06eb\u06df\u06e0\u06e2\u06d8\u06d8\u06df\u06dc\u06e0\u06e8\u06e0\u06e0\u06e7\u06e5\u06e7\u06dc\u06e5\u06d6\u06d8\u06da\u06e1\u06d9"

    goto :goto_6

    :sswitch_a
    const-string v0, "\u06d7\u06d8\u06e5\u06d8\u06e8\u06d6\u06eb\u06d6\u06da\u06e5\u06d8\u06e5\u06d8\u06e8\u06d8\u06d9\u06e8\u06e6\u06d8\u06e7\u06d8\u06dc\u06dc\u06db\u06e5\u06d8\u06dc\u06eb\u06e2\u06e0\u06e0\u06dc\u06d8\u06e4\u06e4\u06d8\u06ec\u06df\u06e6\u06d8\u06d6\u06db\u06e1\u06df\u06d9\u06eb\u06e1\u06e6\u06d8\u06e5\u06d6\u06db\u06e4\u06e0\u06dc"

    goto/16 :goto_2

    :sswitch_b
    const v4, 0x19121fb5

    const-string v0, "\u06e0\u06e0\u06d8\u06d6\u06df\u06e1\u06df\u06e8\u06d7\u06d7\u06d7\u06dc\u06e7\u06da\u06eb\u06df\u06db\u06d8\u06d8\u06e2\u06db\u06e1\u06d8\u06e5\u06d9\u06dc\u06d8\u06da\u06eb\u06d6\u06da\u06d6\u06e8\u06d8"

    :goto_7
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v5

    xor-int/2addr v5, v4

    sparse-switch v5, :sswitch_data_5

    goto :goto_7

    :sswitch_c
    const-string v0, "\u06e4\u06df\u06e1\u06d8\u06da\u06ec\u06e1\u06e4\u06d7\u06df\u06df\u06e1\u06e8\u06d8\u06e1\u06d6\u06e5\u06e5\u06e1\u06e7\u06d8\u06d6\u06d7\u06d8\u06d8\u06e7\u06d6\u06d8\u06d8\u06e7\u06d8\u06e5\u06d8\u06e5\u06d8\u06e8\u06d8\u06e7\u06e4\u06d6\u06e1\u06e8\u06e8\u06d8"

    goto :goto_7

    :cond_1
    const-string v0, "\u06e4\u06d8\u06d6\u06d8\u06e7\u06dc\u06eb\u06d8\u06e8\u06e8\u06ec\u06e7\u06d7\u06d7\u06e6\u06d8\u06d8\u06e0\u06e0\u06e0\u06e8\u06d9\u06d6\u06e4\u06e6\u06d8\u06e5\u06e5\u06df\u06db\u06e6\u06db\u06e7\u06e5\u06e8\u06e5\u06d8"

    goto :goto_7

    :sswitch_d
    const/16 v0, 0x13

    if-gt v3, v0, :cond_1

    const-string v0, "\u06db\u06e2\u06e8\u06e5\u06e2\u06e0\u06e5\u06d6\u06e5\u06e6\u06d8\u06d9\u06e2\u06db\u06e7\u06e8\u06d8\u06e8\u06db\u06e4\u06e4\u06da\u06d8\u06e5\u06d8\u06dc\u06e7\u06e5\u06d8\u06e8\u06e2\u06d8\u06d8\u06e2\u06d8\u06d8\u06d8\u06df\u06e8\u06eb\u06e6\u06e4\u06d6\u06d8\u06e5\u06e7\u06e6\u06eb\u06ec\u06dc\u06d8\u06da\u06dc\u06e4"

    goto :goto_7

    :sswitch_e
    const-string v0, "\u06df\u06df\u06e6\u06e0\u06dc\u06e6\u06e6\u06e7\u06e5\u06d8\u06e2\u06e6\u06d8\u06e8\u06d7\u06da\u06e0\u06d6\u06e5\u06d8\u06e2\u06e8\u06e7\u06d8\u06d7\u06d7\u06e1\u06e6\u06eb\u06e6\u06d8\u06e8\u06e2\u06e1\u06d8\u06e1\u06df\u06e1\u06d8\u06e2\u06eb\u06d8\u06ec\u06db\u06e0\u06e0\u06e2\u06d6\u06d8\u06df\u06eb\u06d8\u06d8\u06e5\u06e2\u06e8\u06d8\u06e5\u06e1\u06df\u06ec\u06d6\u06e6"
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_2

    :sswitch_f
    const-string v0, "\u06d7\u06e8\u06da\u06eb\u06e2\u06e1\u06d8\u06ec\u06db\u06df\u06e7\u06db\u06e7\u06d9\u06e7\u06e7\u06e2\u06db\u06df\u06e5\u06e6\u06e5\u06ec\u06d9\u06eb\u06e7\u06e1\u06d8\u06db\u06ec\u06e6\u06d8\u06e8\u06e6\u06df\u06ec\u06dc\u06ec\u06dc\u06da\u06e6\u06d8\u06ec\u06d6\u06e4"

    goto/16 :goto_2

    :sswitch_10
    const-string v0, "app"

    move-object v1, v0

    goto/16 :goto_3

    :sswitch_11
    :try_start_3
    const-string v0, "\u06e5\u06e2\u06df\u06d8\u06ec\u06e0\u06da\u06e7\u06d9\u06e8\u06d8\u06d8\u06e0\u06e1\u06ec\u06ec\u06d6\u06df\u06eb\u06da\u06d6\u06d9\u06e1\u06d9\u06e1\u06d8\u06e1\u06d8\u06dc\u06db\u06e6\u06e8\u06e6\u06e7\u06d8\u06d6\u06e1\u06e8\u06d8\u06e5\u06eb\u06e7\u06ec\u06e6\u06d6\u06e5\u06e2\u06d8\u06d8\u06d8\u06d6\u06d6\u06d8"

    goto/16 :goto_4

    :sswitch_12
    const v5, -0x3766ace1

    const-string v0, "\u06d7\u06da\u06e8\u06dc\u06da\u06dc\u06d8\u06d6\u06ec\u06e0\u06e6\u06da\u06df\u06d9\u06d8\u06e7\u06d8\u06e6\u06d9\u06da\u06d6\u06e7\u06df\u06d9\u06dc\u06e4\u06da\u06e2\u06d8\u06d8\u06d9\u06e7\u06e7"

    :goto_8
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v6

    xor-int/2addr v6, v5

    sparse-switch v6, :sswitch_data_6

    goto :goto_8

    :sswitch_13
    const-string v0, "\u06e4\u06d8\u06d6\u06dc\u06e1\u06e7\u06eb\u06e1\u06e5\u06da\u06d7\u06eb\u06d8\u06e5\u06da\u06e0\u06e8\u06eb\u06e4\u06d6\u06d6\u06d8\u06d8\u06e2\u06da\u06e1\u06e7\u06d8\u06e8\u06d7\u06ec\u06e2\u06e2\u06da\u06e0\u06e5\u06d8\u06e8\u06e8\u06e7\u06d8\u06dc\u06e8\u06e5"

    goto/16 :goto_4

    :cond_2
    const-string v0, "\u06d9\u06dc\u06dc\u06ec\u06e8\u06e1\u06e8\u06e0\u06ec\u06ec\u06e7\u06e5\u06d8\u06eb\u06df\u06e8\u06df\u06e2\u06ec\u06eb\u06da\u06da\u06e5\u06da\u06df\u06e6\u06e4\u06d7\u06eb"

    goto :goto_8

    :sswitch_14
    const/16 v0, 0x1c

    if-ne v3, v0, :cond_2

    const-string v0, "\u06e6\u06ec\u06dc\u06d8\u06e6\u06e1\u06e4\u06d7\u06db\u06e2\u06eb\u06e1\u06d9\u06e6\u06e7\u06e5\u06e4\u06e1\u06d7\u06e6\u06db\u06d8\u06e2\u06e5\u06dc\u06d8\u06db\u06d9\u06da\u06d6\u06db\u06e1\u06e2\u06e7\u06d7\u06ec\u06d6\u06eb\u06dc\u06e6\u06eb\u06e6\u06df\u06e6\u06db\u06df\u06e1\u06d6\u06db\u06e2\u06da\u06d9\u06d6\u06d9\u06e2\u06d7"

    goto :goto_8

    :sswitch_15
    const-string v0, "\u06e8\u06e4\u06e5\u06d6\u06da\u06e2\u06e7\u06e4\u06e4\u06d6\u06d8\u06e8\u06d9\u06e0\u06e0\u06e4\u06e5\u06e7\u06d8\u06da\u06ec\u06db\u06d9\u06db\u06dc\u06d8\u06da\u06d9\u06ec\u06d8\u06e8\u06e2\u06d8\u06e2\u06d6\u06ec\u06d9\u06e4"
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_8

    :sswitch_16
    const-string v0, "\u06d6\u06da\u06e8\u06eb\u06db\u06eb\u06e0\u06e7\u06df\u06e6\u06e4\u06dc\u06eb\u06df\u06da\u06e6\u06d6\u06e5\u06d6\u06d8\u06dc\u06d7\u06d7\u06ec\u06e8\u06d8\u06d9\u06da\u06ec\u06e2\u06e8\u06e7\u06e2\u06d9\u06eb\u06e6\u06df\u06e0\u06e0\u06d7\u06e6\u06da\u06e8\u06d8\u06e1\u06d7\u06e5\u06d8\u06e7\u06e5\u06eb\u06d8\u06ec\u06db"

    goto/16 :goto_4

    :sswitch_17
    const-string v0, ""

    goto/16 :goto_5

    :sswitch_18
    :try_start_4
    const-string v0, "\u06e0\u06dc\u06d6\u06d8\u06df\u06e8\u06e2\u06d6\u06dc\u06d7\u06ec\u06e0\u06e8\u06db\u06d8\u06e4\u06d6\u06d6\u06d8\u06e1\u06e5\u06e8\u06d8\u06d9\u06e5\u06e7\u06e1\u06d8\u06e6\u06d8\u06d9\u06e8\u06e8\u06d8\u06d8\u06e8\u06d6\u06e8\u06dc\u06dc\u06d8\u06d7\u06da\u06d8\u06e8\u06e1\u06e1"

    goto :goto_6

    :sswitch_19
    const v2, 0x3e3ee7c1

    const-string v0, "\u06d9\u06da\u06d6\u06d9\u06e4\u06d9\u06ec\u06e5\u06da\u06e6\u06e2\u06e6\u06e5\u06df\u06e5\u06d8\u06df\u06df\u06e1\u06e0\u06e1\u06e7\u06da\u06eb\u06da\u06ec\u06ec\u06e5\u06dc\u06ec\u06e5\u06e8\u06e0\u06e1\u06d8\u06e7\u06d7\u06d8\u06d8\u06e7\u06eb\u06d9\u06e4\u06d7\u06e5\u06d8\u06e2\u06d8\u06e4\u06db\u06e8\u06d8\u06d8\u06e8\u06e4\u06e5\u06d8\u06d6\u06e5\u06d8"

    :goto_9
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v2

    sparse-switch v3, :sswitch_data_7

    goto :goto_9

    :sswitch_1a
    const-string v0, "\u06e7\u06e6\u06e1\u06e5\u06e4\u06e0\u06e5\u06db\u06d9\u06db\u06e4\u06dc\u06e5\u06e2\u06e5\u06e5\u06e6\u06e5\u06e4\u06df\u06e0\u06e6\u06e6\u06e6\u06d8\u06d8\u06eb\u06e2\u06e7\u06d8\u06e5\u06d8\u06d7\u06dc\u06ec\u06e4\u06d8\u06e5\u06d6\u06da\u06e5\u06e0\u06d9\u06e2\u06e7\u06d8\u06d6\u06e5\u06e0"

    goto :goto_9

    :cond_3
    const-string v0, "\u06d6\u06d7\u06e6\u06d8\u06e0\u06eb\u06df\u06e1\u06df\u06d7\u06e8\u06e1\u06e8\u06d8\u06d9\u06d7\u06d6\u06e7\u06eb\u06e8\u06d8\u06e0\u06d6\u06e7\u06d8\u06e2\u06e0\u06e4\u06d9\u06da\u06e8\u06d8\u06dc\u06da\u06ec"

    goto :goto_9

    :sswitch_1b
    const-string v0, "com.cyjh.startapp"

    invoke-static {p0, v0}, Lz2/o8;->OooO0o0(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "\u06e8\u06ec\u06ec\u06e1\u06e5\u06e6\u06d8\u06eb\u06e1\u06e7\u06da\u06e8\u06e1\u06d8\u06d7\u06dc\u06e7\u06d8\u06e4\u06d7\u06d6\u06df\u06e4\u06e6\u06d8\u06d8\u06d6\u06e7\u06d8\u06df\u06d6\u06eb\u06e0\u06e0\u06d6\u06da\u06e4\u06e6\u06d8\u06e0\u06e2\u06e4\u06e4\u06dc\u06d6\u06eb\u06e5\u06d8\u06e2\u06e0\u06eb\u06e7\u06e5\u06d8"

    goto :goto_9

    :sswitch_1c
    const-string v0, "\u06d6\u06df\u06e6\u06e8\u06d8\u06ec\u06db\u06d9\u06e6\u06e6\u06e2\u06e1\u06d8\u06e5\u06e8\u06da\u06d6\u06da\u06e0\u06e1\u06e8\u06d8\u06db\u06e4\u06d9\u06e2\u06e2\u06e6\u06d8\u06e1\u06d8\u06da\u06dc\u06e4\u06df\u06db\u06e2\u06e7\u06e8\u06d9\u06d6\u06db\u06e5\u06e2"

    goto/16 :goto_6

    :sswitch_1d
    const-string v0, "pm uninstall com.cyjh.startapp"

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lz2/y4;->OooO0OO(Ljava/lang/String;ZI)Lz2/y4$OooO00o;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :goto_a
    :sswitch_1e
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_a

    :sswitch_data_0
    .sparse-switch
        0x47bf2fc -> :sswitch_6
        0x14442041 -> :sswitch_1e
        0x22b2d3cf -> :sswitch_0
        0x68618e6a -> :sswitch_5
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x7a00df4 -> :sswitch_4
        0x2aae717a -> :sswitch_1
        0x3de014ad -> :sswitch_3
        0x42995f11 -> :sswitch_2
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        -0x79ae3fa5 -> :sswitch_10
        -0x21d7a4a7 -> :sswitch_7
        0x3ccfc83 -> :sswitch_b
        0x5dada3b3 -> :sswitch_f
    .end sparse-switch

    :sswitch_data_3
    .sparse-switch
        -0x78eb35c5 -> :sswitch_8
        -0x10852871 -> :sswitch_17
        0x220b5687 -> :sswitch_16
        0x46e76741 -> :sswitch_12
    .end sparse-switch

    :sswitch_data_4
    .sparse-switch
        0x272711f2 -> :sswitch_1d
        0x41728cc4 -> :sswitch_19
        0x77762b0f -> :sswitch_9
        0x7fd5170b -> :sswitch_1e
    .end sparse-switch

    :sswitch_data_5
    .sparse-switch
        -0x4b8ead58 -> :sswitch_e
        -0x462d0043 -> :sswitch_c
        -0x25bff7e5 -> :sswitch_a
        0x120161de -> :sswitch_d
    .end sparse-switch

    :sswitch_data_6
    .sparse-switch
        -0x6a1a699d -> :sswitch_11
        0x3e5360ad -> :sswitch_15
        0x4bcedf78 -> :sswitch_14
        0x4d5a781f -> :sswitch_13
    .end sparse-switch

    :sswitch_data_7
    .sparse-switch
        -0x7d864b89 -> :sswitch_1a
        -0x53c537a9 -> :sswitch_1b
        0x5066a568 -> :sswitch_18
        0x7244ca06 -> :sswitch_1c
    .end sparse-switch
.end method


# virtual methods
.method public OooO()V
    .locals 4

    const-string v0, "\u06e6\u06e4\u06e0\u06d6\u06e8\u06da\u06e4\u06da\u06d6\u06e5\u06da\u06d8\u06d8\u06d9\u06d8\u06e1\u06e7\u06e4\u06d8\u06ec\u06db\u06da\u06da\u06e8\u06dc\u06e0\u06db\u06df\u06e6\u06e1\u06d8\u06df\u06e6\u06ec\u06d6\u06e4\u06df"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0xf7

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x3ca

    const/16 v2, 0x20d

    const v3, -0x2a43520a

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e1\u06e8\u06db\u06d6\u06e6\u06e0\u06df\u06d8\u06e1\u06d6\u06e1\u06e5\u06d8\u06e6\u06da\u06d8\u06d8\u06e7\u06d7\u06e1\u06e8\u06d8\u06d9\u06e6\u06e0\u06d7\u06db\u06da\u06e6\u06db\u06eb\u06e5\u06e5\u06d6\u06d8\u06ec\u06d7\u06e0"

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/cyjh/common/base/activity/BaseModelActivity;->OooooO0:Landroidx/lifecycle/AndroidViewModel;

    check-cast v0, Lz2/na;

    invoke-virtual {v0}, Lz2/na;->OooOooo()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$OooOOO0;

    invoke-direct {v1, p0}, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$OooOOO0;-><init>(Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    const-string v0, "\u06e2\u06db\u06e8\u06e0\u06d7\u06d8\u06d7\u06e1\u06d9\u06e5\u06e4\u06d6\u06e1\u06d6\u06d8\u06d8\u06e6\u06e2\u06e7\u06e1\u06d9\u06e5\u06d8\u06e7\u06e5\u06dc\u06e4\u06e5\u06e8\u06e2\u06d8\u06e4\u06eb\u06ec\u06db\u06db\u06d6\u06e1"

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/cyjh/common/base/activity/BaseModelActivity;->OooooO0:Landroidx/lifecycle/AndroidViewModel;

    check-cast v0, Lz2/na;

    invoke-virtual {v0}, Lz2/na;->Oooo000()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$OooOOO;

    invoke-direct {v1, p0}, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$OooOOO;-><init>(Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    const-string v0, "\u06e1\u06d9\u06e0\u06e6\u06e2\u06db\u06e1\u06e1\u06e0\u06e6\u06db\u06d8\u06d8\u06eb\u06eb\u06ec\u06d7\u06e2\u06dc\u06d8\u06e2\u06e6\u06e1\u06d8\u06df\u06d8\u06d6\u06d8\u06e8\u06e1\u06d9\u06eb\u06d7\u06d6\u06e8\u06e8\u06e4\u06e0\u06e6\u06d6"

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/cyjh/common/base/activity/BaseModelActivity;->OooooO0:Landroidx/lifecycle/AndroidViewModel;

    check-cast v0, Lz2/na;

    invoke-virtual {v0}, Lz2/na;->OooOoo()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$OooOOOO;

    invoke-direct {v1, p0}, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$OooOOOO;-><init>(Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    const-string v0, "\u06df\u06df\u06e4\u06df\u06eb\u06d9\u06d8\u06d7\u06dc\u06d8\u06e5\u06d8\u06e7\u06e5\u06d7\u06d6\u06da\u06df\u06da\u06e2\u06d6\u06d8\u06db\u06e2\u06e1\u06d8\u06eb\u06d6\u06e0\u06dc\u06d8\u06eb\u06e7\u06db\u06d9\u06e4\u06ec\u06d6\u06d8\u06e6\u06e4\u06e6\u06d8\u06e2\u06e7\u06db\u06e8\u06eb\u06eb\u06dc\u06ec\u06e6\u06d8"

    goto :goto_0

    :sswitch_4
    iget-object v0, p0, Lcom/cyjh/common/base/activity/BaseModelActivity;->OooooO0:Landroidx/lifecycle/AndroidViewModel;

    check-cast v0, Lz2/na;

    invoke-virtual {v0}, Lz2/na;->OooOoo0()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$OooOo00;

    invoke-direct {v1, p0}, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$OooOo00;-><init>(Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    const-string v0, "\u06eb\u06e6\u06e2\u06db\u06e7\u06e6\u06d8\u06d6\u06d8\u06d6\u06d8\u06e6\u06d7\u06d6\u06d8\u06dc\u06dc\u06d6\u06d8\u06e1\u06dc\u06e2\u06ec\u06d9\u06d6\u06e4\u06e0\u06e6\u06d8\u06e4\u06eb\u06e4\u06e5\u06d6\u06db\u06e6\u06e0\u06ec\u06ec\u06e0\u06d8\u06d8"

    goto :goto_0

    :sswitch_5
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x3d255ae2 -> :sswitch_4
        -0x38299f94 -> :sswitch_2
        -0x27f24df3 -> :sswitch_5
        0x349c35a7 -> :sswitch_3
        0x395570b6 -> :sswitch_0
        0x718bef65 -> :sswitch_1
    .end sparse-switch
.end method

.method public OooO0oO()I
    .locals 4

    const-string v0, "\u06d6\u06d9\u06dc\u06db\u06d9\u06e5\u06d8\u06e7\u06e1\u06e1\u06e4\u06e0\u06e5\u06d8\u06e8\u06e6\u06db\u06e0\u06e0\u06e2\u06db\u06d7\u06d8\u06e7\u06e7\u06eb\u06e4\u06d7\u06ec\u06e2\u06d9\u06e6\u06e2\u06ec\u06da\u06e5\u06df\u06d6"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x1fe

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x2e0

    const/16 v2, 0x353

    const v3, -0x47d35e40

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e0\u06e1\u06d8\u06d7\u06e6\u06e8\u06e8\u06e6\u06e5\u06d8\u06e8\u06df\u06dc\u06db\u06d6\u06d8\u06d8\u06d6\u06d7\u06dc\u06da\u06d8\u06d7\u06eb\u06e4\u06d8\u06df\u06e2\u06e5\u06d8\u06d6\u06e6"

    goto :goto_0

    :sswitch_1
    const v0, 0x7f0c0026

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6e9fa711 -> :sswitch_0
        0x1dfbd8d7 -> :sswitch_1
    .end sparse-switch
.end method

.method public OooO0oo()Ljava/lang/Class;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Lz2/na;",
            ">;"
        }
    .end annotation

    const-string v0, "\u06d8\u06d9\u06e1\u06d8\u06e7\u06ec\u06eb\u06e8\u06dc\u06d6\u06eb\u06d9\u06e6\u06e5\u06d7\u06db\u06dc\u06d7\u06e1\u06ec\u06e5\u06d8\u06db\u06e2\u06e0\u06d6\u06d8\u06df\u06ec\u06e6\u06e1\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x26

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x112

    const/16 v2, 0x364

    const v3, -0x5dd283df

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e2\u06dc\u06d6\u06d8\u06e4\u06dc\u06d8\u06d8\u06d8\u06e2\u06d7\u06e5\u06eb\u06d6\u06d8\u06e4\u06e0\u06e6\u06d8\u06d9\u06e7\u06db\u06e4\u06e1\u06e5\u06eb\u06e5\u06e4\u06d9\u06d9\u06df\u06e0\u06e6\u06ec\u06e4\u06d6\u06e1\u06ec\u06e8"

    goto :goto_0

    :sswitch_1
    const-class v0, Lz2/na;

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x420d912b -> :sswitch_1
        0x4a576f42 -> :sswitch_0
    .end sparse-switch
.end method

.method public OoooO()V
    .locals 4

    const-string v0, "\u06db\u06df\u06ec\u06d9\u06e8\u06da\u06e4\u06d6\u06d8\u06e2\u06df\u06d9\u06e5\u06eb\u06e8\u06e1\u06e4\u06db\u06e5\u06d7\u06e2\u06e1\u06d8\u06e2\u06ec\u06dc\u06e7\u06d8\u06d6\u06e4\u06d9"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x394

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x117

    const/16 v2, 0x175

    const v3, -0x44ee5d70

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e4\u06e4\u06d6\u06eb\u06e5\u06d8\u06d8\u06d6\u06d9\u06dc\u06e4\u06e4\u06dc\u06e1\u06e2\u06d6\u06eb\u06ec\u06e1\u06d8\u06e2\u06e8\u06d8\u06da\u06dc\u06e6\u06d9\u06d7\u06e6\u06d8\u06ec\u06d6\u06e6\u06da\u06dc\u06eb\u06e5\u06e5\u06d7\u06e7\u06e0\u06e5\u06d8\u06dc\u06df\u06e8\u06d8"

    goto :goto_0

    :sswitch_1
    new-instance v0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$Oooo000;

    new-instance v1, Lz2/r6;

    invoke-direct {v1, p0}, Lz2/r6;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p0, v1}, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$Oooo000;-><init>(Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;Lz2/r6;)V

    invoke-static {v0}, Lcom/cyjh/elfin/tools/utils/ThreadUtils;->OooOO0O(Lcom/cyjh/elfin/tools/utils/ThreadUtils$OooOO0;)V

    const-string v0, "\u06e5\u06e8\u06e5\u06d8\u06dc\u06ec\u06e5\u06d8\u06e7\u06d8\u06d6\u06d8\u06e7\u06d7\u06dc\u06e5\u06e1\u06df\u06d7\u06eb\u06e5\u06dc\u06d7\u06d8\u06d8\u06ec\u06dc\u06e5\u06d8\u06d9\u06e4\u06e1\u06d9\u06e1"

    goto :goto_0

    :sswitch_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x5ffc3775 -> :sswitch_1
        -0x2d3d608c -> :sswitch_2
        0x7772adc6 -> :sswitch_0
    .end sparse-switch
.end method

.method public OoooOO0()V
    .locals 4

    const-string v0, "\u06e4\u06e6\u06dc\u06d8\u06e2\u06e8\u06e5\u06d8\u06e8\u06e5\u06e6\u06e2\u06e0\u06e7\u06eb\u06e6\u06d8\u06e6\u06d6\u06d6\u06d6\u06d8\u06d6\u06e5\u06eb\u06df\u06e0\u06e5\u06d6\u06dc\u06d9\u06e6\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x361

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0xe9

    const/16 v2, 0x3a0

    const v3, 0x3d9b95a5

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e2\u06df\u06d7\u06e1\u06eb\u06e2\u06dc\u06e0\u06e8\u06dc\u06e0\u06da\u06ec\u06d6\u06d7\u06d8\u06e5\u06d8\u06e5\u06d6\u06e1\u06da\u06d7\u06d9\u06df\u06e1\u06e1\u06d8\u06df\u06d9\u06ec\u06dc\u06e6\u06da\u06ec\u06e8\u06e7\u06d8\u06e6\u06da\u06d9\u06d6\u06e0\u06dc\u06d8\u06e6\u06df\u06e8\u06d8\u06d7\u06dc\u06e8\u06d8"

    goto :goto_0

    :sswitch_1
    new-instance v0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$Oooo0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$Oooo0;-><init>(Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$OooO;)V

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/io/InputStream;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    const-string v0, "\u06dc\u06e0\u06e1\u06d8\u06e7\u06df\u06d8\u06ec\u06e6\u06e8\u06d8\u06d7\u06e4\u06e6\u06da\u06e7\u06dc\u06d8\u06df\u06e6\u06e8\u06db\u06e6\u06d9\u06d6\u06db\u06e5\u06d8\u06db\u06da\u06eb\u06e8\u06e6\u06d8\u06d8"

    goto :goto_0

    :sswitch_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x67008781 -> :sswitch_2
        -0x4c87263a -> :sswitch_1
        0x109f0fd6 -> :sswitch_0
    .end sparse-switch
.end method

.method public OooooOO()V
    .locals 5

    const-string v0, "\u06d8\u06e1\u06df\u06d9\u06df\u06d7\u06e5\u06d9\u06d9\u06d9\u06e6\u06db\u06df\u06e2\u06e8\u06d8\u06e1\u06e0\u06e6\u06d8\u06ec\u06e4\u06d8\u06d6\u06db\u06e1\u06d8\u06dc\u06e1\u06e1\u06e4\u06d6\u06d9\u06e0\u06e5\u06e2\u06e5\u06e2\u06d8\u06e8\u06e5\u06da\u06da\u06dc\u06e8\u06e8\u06db\u06e1\u06d8\u06e7\u06d6\u06e7\u06d8\u06e2\u06e7\u06e8\u06eb\u06db\u06e8\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x26a

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x24c

    const/16 v2, 0x3c

    const v3, -0x7b2fab49

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e2\u06d7\u06dc\u06d8\u06e4\u06da\u06db\u06e2\u06e1\u06d8\u06e4\u06ec\u06e8\u06da\u06da\u06db\u06e6\u06d6\u06d8\u06d8\u06eb\u06e6\u06d8\u06d8\u06e0\u06d7\u06d6\u06df\u06d8\u06dc\u06d8\u06e6\u06e2\u06e2\u06eb\u06e7\u06dc\u06d9\u06db\u06e6\u06e2\u06e6\u06d8\u06d7\u06d8\u06d8"

    goto :goto_0

    :sswitch_1
    const v1, 0x114d5c9b

    const-string v0, "\u06e1\u06da\u06e2\u06dc\u06df\u06e6\u06d8\u06d8\u06eb\u06e6\u06d7\u06e8\u06e1\u06e5\u06e5\u06da\u06d7\u06d9\u06d6\u06e4\u06e8\u06e0\u06df\u06e6\u06e8\u06d8\u06d7\u06e5\u06da\u06e0\u06e0\u06e5\u06da\u06e4\u06da\u06dc\u06eb\u06e6\u06d8"

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v2, v1

    sparse-switch v2, :sswitch_data_1

    goto :goto_1

    :sswitch_2
    const-string v0, "\u06e5\u06e6\u06e6\u06d8\u06eb\u06e8\u06e5\u06e1\u06db\u06db\u06df\u06e6\u06e7\u06d8\u06e6\u06d7\u06d6\u06d8\u06e4\u06e2\u06d9\u06e4\u06e7\u06db\u06dc\u06d7\u06e8\u06d8\u06d6\u06d6\u06e2\u06e4\u06e1\u06d9\u06e5\u06e8\u06e8\u06d8\u06e4\u06e2\u06e8"

    goto :goto_0

    :sswitch_3
    const-string v0, "\u06d8\u06eb\u06d6\u06d8\u06e8\u06db\u06dc\u06d9\u06e6\u06eb\u06e6\u06d6\u06db\u06e6\u06d6\u06df\u06e8\u06eb\u06eb\u06e5\u06d7\u06e5\u06d8\u06d8\u06e4\u06e1\u06df\u06e8\u06dc\u06d8\u06e5\u06d6\u06e8\u06e8\u06d7\u06dc\u06e4\u06db\u06e5\u06d8\u06eb\u06da\u06e1\u06e5\u06e2\u06eb\u06e0\u06d7\u06e5\u06e7\u06e5\u06e4"

    goto :goto_1

    :sswitch_4
    const v2, 0x6d198c69

    const-string v0, "\u06e8\u06e2\u06d6\u06eb\u06dc\u06d9\u06e0\u06eb\u06dc\u06d8\u06d7\u06dc\u06e2\u06e2\u06e7\u06e7\u06e8\u06e5\u06d6\u06db\u06db\u06e6\u06e5\u06e2\u06e0\u06e1\u06e5\u06d8\u06e6\u06e6\u06e1\u06d8\u06db\u06dc\u06dc\u06d8\u06e5\u06e5"

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v2

    sparse-switch v3, :sswitch_data_2

    goto :goto_2

    :sswitch_5
    invoke-static {}, Lz2/x4;->OooO0O0()Lz2/x4;

    move-result-object v0

    const-string v3, "red_dot_flag"

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v3, v4}, Lz2/x4;->OooO00o(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u06db\u06e4\u06ec\u06e8\u06d8\u06d6\u06e0\u06e7\u06ec\u06ec\u06d9\u06d8\u06dc\u06e6\u06d9\u06e4\u06d7\u06d6\u06ec\u06db\u06eb\u06df\u06e0\u06e4\u06e8\u06db\u06db\u06e8\u06e2\u06e5\u06d8\u06ec\u06e5\u06e1\u06d8\u06e8\u06ec\u06df\u06e1\u06e4\u06d8\u06d8\u06e6\u06db\u06d6\u06d8\u06d9\u06db\u06d6\u06dc\u06dc\u06df\u06e2\u06db\u06d7\u06e6\u06e8"

    goto :goto_2

    :cond_0
    const-string v0, "\u06e1\u06ec\u06e4\u06e8\u06e5\u06e2\u06e7\u06e7\u06e8\u06da\u06e7\u06d8\u06e1\u06d6\u06e7\u06d8\u06eb\u06e8\u06e1\u06e0\u06d7\u06d6\u06e2\u06e0\u06ec\u06e7\u06d6\u06dc\u06d8\u06e6\u06df\u06db"

    goto :goto_2

    :sswitch_6
    const-string v0, "\u06e6\u06e4\u06d6\u06e5\u06da\u06e8\u06d9\u06eb\u06e5\u06e0\u06db\u06e5\u06d8\u06d7\u06d6\u06e8\u06d8\u06eb\u06d8\u06d8\u06ec\u06e6\u06d7\u06d6\u06e8\u06d8\u06eb\u06e1\u06db\u06d6\u06e4\u06db\u06ec\u06e7\u06e6\u06d8\u06dc\u06dc\u06e1"

    goto :goto_2

    :sswitch_7
    const-string v0, "\u06e5\u06e0\u06e8\u06d9\u06e5\u06d6\u06e8\u06e4\u06db\u06e2\u06d8\u06d7\u06da\u06e6\u06e5\u06ec\u06da\u06e5\u06d8\u06e4\u06e1\u06d6\u06e8\u06ec\u06eb\u06e8\u06e4\u06eb\u06e2\u06dc\u06dc\u06e2\u06d9\u06e5\u06dc\u06e4\u06dc\u06d8\u06e8\u06e5\u06e0\u06df\u06d8\u06e4\u06e0\u06d7\u06da\u06e4\u06ec\u06d6\u06d8"

    goto :goto_1

    :sswitch_8
    const-string v0, "\u06dc\u06d7\u06e5\u06d8\u06e0\u06e1\u06d6\u06d8\u06dc\u06e2\u06da\u06d9\u06db\u06e6\u06d8\u06d6\u06e2\u06df\u06e0\u06ec\u06ec\u06eb\u06dc\u06e8\u06d8\u06e2\u06df\u06e5\u06e1\u06da\u06d6\u06d8\u06e6\u06e8\u06e6\u06d8\u06e6\u06df\u06e1\u06d8\u06d7\u06e8\u06e5\u06db\u06ec\u06d6\u06eb\u06dc\u06da\u06d6\u06d7\u06db\u06e7\u06da\u06e8"

    goto :goto_1

    :sswitch_9
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->o00Ooo:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const-string v0, "\u06e4\u06eb\u06e0\u06e2\u06d7\u06e7\u06dc\u06da\u06da\u06d9\u06e6\u06e1\u06e1\u06e7\u06e1\u06d8\u06df\u06d8\u06d6\u06df\u06e0\u06e8\u06d8\u06eb\u06dc\u06d8\u06da\u06d8\u06dc\u06d8\u06e5\u06e4\u06d6\u06eb\u06db\u06da\u06e2\u06d8\u06ec\u06da\u06e5\u06e8\u06da\u06d7\u06dc\u06d8\u06db\u06db\u06d6\u06e7\u06e6\u06d6\u06d8"

    goto :goto_0

    :sswitch_a
    const-string v0, "\u06e4\u06eb\u06e0\u06e2\u06d7\u06e7\u06dc\u06da\u06da\u06d9\u06e6\u06e1\u06e1\u06e7\u06e1\u06d8\u06df\u06d8\u06d6\u06df\u06e0\u06e8\u06d8\u06eb\u06dc\u06d8\u06da\u06d8\u06dc\u06d8\u06e5\u06e4\u06d6\u06eb\u06db\u06da\u06e2\u06d8\u06ec\u06da\u06e5\u06e8\u06da\u06d7\u06dc\u06d8\u06db\u06db\u06d6\u06e7\u06e6\u06d6\u06d8"

    goto :goto_0

    :sswitch_b
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5ef16472 -> :sswitch_b
        -0x43d483ad -> :sswitch_9
        0x196f5d1e -> :sswitch_0
        0x2cd75b69 -> :sswitch_1
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x1c4f7d4 -> :sswitch_8
        0x41bb4c21 -> :sswitch_4
        0x653b6954 -> :sswitch_a
        0x7e4d54aa -> :sswitch_2
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        -0x65cf22f8 -> :sswitch_6
        -0x12d720dd -> :sswitch_5
        0x2f7c5ae4 -> :sswitch_7
        0x7c7e0d70 -> :sswitch_3
    .end sparse-switch
.end method

.method public synthetic Oooooo()V
    .locals 4

    const-string v0, "\u06e5\u06e5\u06da\u06e5\u06e1\u06e7\u06d8\u06eb\u06d8\u06d8\u06e5\u06ec\u06e1\u06d8\u06d7\u06d6\u06e0\u06e1\u06df\u06df\u06eb\u06da\u06e8\u06d8\u06d7\u06d9\u06d6\u06da\u06d7\u06e8\u06eb\u06e6\u06d6\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x11c

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x299

    const/16 v2, 0x27d

    const v3, -0x6be6e129

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e7\u06e7\u06e1\u06d8\u06e1\u06eb\u06e5\u06d9\u06e0\u06d9\u06e2\u06e5\u06e4\u06dc\u06d6\u06d8\u06df\u06e5\u06e6\u06db\u06db\u06e1\u06d8\u06d9\u06d7\u06e0\u06e4\u06da\u06d9\u06e0\u06d6\u06da\u06da\u06eb\u06d6\u06ec\u06dc\u06e7\u06eb\u06dc\u06e7\u06db\u06db\u06dc\u06e8\u06dc\u06e5\u06e0\u06df\u06e2"

    goto :goto_0

    :sswitch_1
    invoke-direct {p0}, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->Oooooo0()V

    const-string v0, "\u06ec\u06e1\u06db\u06eb\u06e8\u06e1\u06d8\u06d6\u06e8\u06df\u06e7\u06d9\u06df\u06d9\u06db\u06d8\u06d8\u06e6\u06d6\u06e7\u06eb\u06e0\u06da\u06e6\u06e5\u06da\u06d8\u06e2\u06ec\u06db\u06e5\u06ec\u06df\u06e6\u06d8\u06d8\u06e0\u06d7\u06d8\u06ec\u06d8\u06d7\u06e1\u06e5"

    goto :goto_0

    :sswitch_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x4b8eb586 -> :sswitch_0
        -0x3eecc2b7 -> :sswitch_2
        0x6cbb0a4e -> :sswitch_1
    .end sparse-switch
.end method

.method public synthetic Ooooooo()V
    .locals 4

    const-string v0, "\u06e8\u06e1\u06e1\u06e5\u06e4\u06d7\u06e4\u06df\u06e7\u06e1\u06e2\u06d7\u06d9\u06e1\u06d7\u06e2\u06d7\u06d6\u06db\u06e4\u06d8\u06d8\u06e5\u06d9\u06e8\u06e7\u06e5\u06d8\u06ec\u06d7\u06e8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x125

    xor-int/2addr v1, v2

    xor-int/lit8 v1, v1, 0x1e

    const/16 v2, 0xa1

    const v3, -0x67e6b5f0

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06eb\u06eb\u06da\u06e4\u06d7\u06e1\u06df\u06d7\u06d6\u06e2\u06d7\u06d8\u06dc\u06d8\u06dc\u06d8\u06d8\u06da\u06e5\u06e4\u06e1\u06d7\u06e0\u06e5\u06d6\u06d8\u06e4\u06eb\u06df\u06e8\u06eb\u06d7\u06d8\u06e4\u06db\u06e4\u06da\u06d7\u06df\u06d6\u06dc\u06df\u06d7\u06d6\u06d7\u06e4\u06e0\u06ec\u06e5\u06e2"

    goto :goto_0

    :sswitch_1
    invoke-direct {p0}, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->OoooooO()V

    const-string v0, "\u06e6\u06d8\u06e0\u06e1\u06e0\u06e4\u06ec\u06d8\u06df\u06db\u06e7\u06eb\u06e6\u06df\u06d9\u06d9\u06da\u06d7\u06e5\u06e1\u06e6\u06d8\u06e7\u06df\u06e4\u06ec\u06e5\u06d8\u06d6\u06da\u06db"

    goto :goto_0

    :sswitch_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0xdb86e69 -> :sswitch_2
        0x192e3e68 -> :sswitch_0
        0x6a991806 -> :sswitch_1
    .end sparse-switch
.end method

.method public initView()V
    .locals 4

    const-string v0, "\u06db\u06d6\u06d8\u06dc\u06ec\u06d6\u06da\u06dc\u06e7\u06d8\u06dc\u06d7\u06e0\u06eb\u06da\u06db\u06d9\u06e2\u06da\u06d7\u06d7\u06d9\u06eb\u06dc\u06d8\u06d7\u06d9\u06e1\u06dc\u06eb\u06d6\u06e4\u06ec\u06da\u06e0\u06d6\u06e5\u06d8\u06d6\u06d7\u06eb\u06e5\u06eb\u06d9\u06e6\u06da\u06e2\u06ec\u06d8\u06e5"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x1f3

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x141

    const/16 v2, 0x11c

    const v3, 0x4174885a

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e8\u06e1\u06e6\u06d8\u06d8\u06ec\u06e7\u06ec\u06d6\u06dc\u06d7\u06d6\u06e7\u06d8\u06e5\u06eb\u06dc\u06d8\u06d8\u06e8\u06d6\u06d8\u06eb\u06e0\u06e1\u06d8\u06e5\u06d7\u06df\u06df\u06e4\u06d6\u06d8\u06d7\u06d9\u06e4\u06e8\u06e6\u06da\u06e2\u06d8\u06e0\u06d8\u06e8\u06d8\u06da\u06e0\u06d8\u06d8"

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    const-string v0, "\u06e0\u06d6\u06df\u06e7\u06e0\u06e8\u06d8\u06d7\u06eb\u06e0\u06df\u06eb\u06e7\u06db\u06e0\u06e5\u06d8\u06df\u06db\u06dc\u06d8\u06e6\u06e6\u06e6\u06d8\u06e8\u06e2\u06db\u06e2\u06d8\u06e4\u06e6\u06e6\u06eb\u06e4\u06d6\u06d6\u06e6\u06e1\u06db\u06d7\u06e4\u06e2\u06eb\u06d8\u06d6\u06d8\u06d6\u06d7\u06e5\u06d8\u06d7\u06e2\u06e8\u06d8\u06e5\u06ec\u06d8\u06e2\u06d8\u06e5\u06d8"

    goto :goto_0

    :sswitch_2
    const v0, 0x7f0902d8

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->o0ooOO0:Landroid/widget/ImageView;

    const-string v0, "\u06e6\u06da\u06e8\u06e2\u06e8\u06e7\u06d8\u06d6\u06d7\u06d7\u06e8\u06e1\u06d7\u06e5\u06ec\u06e6\u06e6\u06d6\u06eb\u06d9\u06db\u06d8\u06e8\u06db\u06e1\u06e5\u06df\u06e7\u06e2\u06d8"

    goto :goto_0

    :sswitch_3
    const v0, 0x7f0902d3

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->o00Ooo:Landroid/widget/ImageView;

    const-string v0, "\u06e7\u06df\u06e4\u06d7\u06d9\u06e8\u06eb\u06db\u06e5\u06d8\u06e2\u06e7\u06e5\u06e8\u06d8\u06e8\u06df\u06eb\u06db\u06d9\u06e2\u06dc\u06d9\u06e6\u06e5\u06e6\u06d6\u06e1\u06e8\u06e5\u06e2\u06db\u06ec\u06d7\u06d6\u06db\u06d8\u06d6\u06eb\u06eb\u06dc\u06d9\u06e4\u06dc\u06d6\u06d7\u06e5\u06e8\u06db"

    goto :goto_0

    :sswitch_4
    const v0, 0x7f0902d6

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->o00oO0O:Landroid/widget/ImageView;

    const-string v0, "\u06da\u06ec\u06d6\u06db\u06e4\u06e8\u06da\u06df\u06e6\u06d8\u06db\u06e5\u06e8\u06d6\u06eb\u06e6\u06e8\u06d8\u06e5\u06d8\u06da\u06df\u06e1\u06dc\u06d6\u06e8\u06e0\u06dc\u06d8\u06d7\u06e4\u06d9"

    goto :goto_0

    :sswitch_5
    const v0, 0x7f090468

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->o00oO0o:Landroid/widget/TextView;

    const-string v0, "\u06e4\u06d7\u06e6\u06d8\u06d7\u06e2\u06e8\u06e5\u06e4\u06e1\u06d8\u06e1\u06e4\u06e8\u06e0\u06d6\u06e0\u06e0\u06e7\u06df\u06d9\u06db\u06e7\u06e1\u06db\u06d6\u06e0\u06e4\u06e6\u06ec\u06e5\u06e5\u06d8\u06e8\u06e7\u06d9\u06e5\u06db\u06e7\u06d7\u06e5\u06e6\u06d8\u06e2\u06e5\u06e0\u06e0\u06e2\u06d9\u06e6\u06d9\u06e7"

    goto :goto_0

    :sswitch_6
    const v0, 0x7f090425

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->o00o0O:Landroid/widget/TextView;

    const-string v0, "\u06db\u06d6\u06dc\u06d8\u06db\u06da\u06e5\u06d8\u06dc\u06df\u06e4\u06e2\u06e7\u06df\u06d7\u06d9\u06e8\u06e0\u06eb\u06d7\u06da\u06e7\u06d8\u06db\u06d7\u06d8\u06df\u06e7\u06e6\u06e1\u06d8\u06eb\u06df\u06e8\u06d8\u06db\u06dc\u06e5\u06d8\u06da\u06d6\u06e4\u06da\u06e8\u06d8\u06d8"

    goto :goto_0

    :sswitch_7
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x6c016edb -> :sswitch_6
        -0x65e3f636 -> :sswitch_2
        -0x44d6fdf8 -> :sswitch_3
        0x2a599f36 -> :sswitch_7
        0x3b72cad8 -> :sswitch_4
        0x604a4e9f -> :sswitch_0
        0x625d448c -> :sswitch_1
        0x75fe589e -> :sswitch_5
    .end sparse-switch
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 7

    const/4 v2, 0x0

    const-string v0, "\u06e2\u06e8\u06da\u06d6\u06ec\u06e5\u06e1\u06e7\u06e2\u06e1\u06e2\u06e1\u06e8\u06e1\u06d8\u06d8\u06e7\u06df\u06e0\u06eb\u06e8\u06e1\u06e5\u06d8\u06dc\u06eb\u06db\u06e5\u06d8\u06e2\u06e0\u06d8\u06d8\u06d6\u06e6\u06e6\u06d8\u06e0\u06d9\u06d6\u06d8\u06e6\u06d7\u06d9\u06dc\u06d8\u06e7\u06d8\u06e0\u06eb\u06e1\u06db\u06e6\u06e1\u06eb\u06d8\u06d8\u06d8\u06eb\u06e0"

    move-object v1, v2

    move-object v3, v2

    move-object v4, v2

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v5, 0x329

    xor-int/2addr v2, v5

    xor-int/lit16 v2, v2, 0x37f

    const/16 v5, 0x1ff

    const v6, -0x14f93c7f

    xor-int/2addr v2, v5

    xor-int/2addr v2, v6

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e6\u06e4\u06db\u06e7\u06e6\u06d6\u06e7\u06df\u06eb\u06e0\u06e1\u06d8\u06d6\u06d7\u06da\u06eb\u06e7\u06da\u06e0\u06e0\u06d9\u06e0\u06e5\u06e8\u06e8\u06df\u06d8\u06d8\u06d9\u06d8\u06d6\u06d6\u06d7\u06d9\u06e2\u06e2"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06e4\u06d9\u06e0\u06dc\u06ec\u06e0\u06ec\u06e4\u06e4\u06e7\u06eb\u06df\u06d9\u06d8\u06e0\u06ec\u06e6\u06d8\u06da\u06eb\u06e8\u06d8\u06eb\u06dc\u06e6\u06d8\u06eb\u06e6\u06d8\u06d8\u06e5\u06df\u06dc"

    goto :goto_0

    :sswitch_2
    const-string v0, "\u06e7\u06db\u06d6\u06d8\u06d8\u06ec\u06da\u06d7\u06e7\u06dc\u06d9\u06d8\u06da\u06eb\u06db\u06d7\u06dc\u06e4\u06eb\u06d6\u06d8\u06e7\u06d9\u06e6\u06db\u06d9\u06e7\u06d9\u06e5\u06e6\u06df\u06d6\u06e8\u06da\u06e7\u06db\u06d8\u06e4\u06e7\u06e4\u06e6\u06e4\u06dc\u06e4\u06e2\u06e0\u06db"

    goto :goto_0

    :sswitch_3
    const-string v0, "\u06e4\u06e2\u06e1\u06e5\u06e6\u06dc\u06e5\u06e6\u06e2\u06ec\u06d6\u06e7\u06db\u06da\u06dc\u06e0\u06e8\u06d7\u06ec\u06dc\u06dc\u06e1\u06e2\u06e7\u06e4\u06d7\u06d6\u06e0\u06d8\u06e0\u06d8\u06e6\u06df\u06da\u06e4\u06dc"

    goto :goto_0

    :sswitch_4
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const-string v0, "\u06e8\u06df\u06e8\u06d8\u06e8\u06e0\u06e6\u06d8\u06eb\u06d6\u06ec\u06db\u06e2\u06d8\u06d8\u06dc\u06d9\u06e1\u06d8\u06e1\u06e2\u06e5\u06eb\u06e8\u06e0\u06eb\u06e4\u06d8\u06d8\u06e2\u06d6\u06d6\u06d7\u06e7\u06e7\u06ec\u06d7\u06e4\u06e2\u06e6\u06e0\u06d7\u06d6\u06e1\u06db\u06e0\u06d7"

    goto :goto_0

    :sswitch_5
    const v2, -0x21f65eae

    const-string v0, "\u06dc\u06e7\u06e7\u06e2\u06e7\u06ec\u06ec\u06e7\u06ec\u06d9\u06d7\u06ec\u06eb\u06e5\u06e4\u06e0\u06eb\u06e8\u06d6\u06e6\u06e1\u06e6\u06d8\u06e0\u06e6\u06e6\u06e4\u06ec\u06dc\u06e6\u06ec\u06dc\u06e2\u06d9\u06e7\u06e1"

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v5

    xor-int/2addr v5, v2

    sparse-switch v5, :sswitch_data_1

    goto :goto_1

    :sswitch_6
    const-string v0, "\u06e2\u06dc\u06e8\u06e2\u06d7\u06e8\u06d8\u06eb\u06e4\u06d7\u06e1\u06da\u06e0\u06e6\u06da\u06da\u06e8\u06e8\u06e5\u06d8\u06e8\u06d8\u06e6\u06dc\u06e6\u06e7\u06d8\u06e7\u06ec\u06d6\u06d8\u06d8\u06e7\u06dc\u06eb\u06db\u06eb\u06d8\u06e8\u06d8\u06e4\u06eb\u06dc\u06d7\u06e2\u06d6\u06df\u06e8\u06e7\u06d8\u06d6\u06dc\u06e5\u06d8"

    goto :goto_1

    :sswitch_7
    const-string v0, "\u06e5\u06dc\u06e6\u06d8\u06d8\u06db\u06d7\u06db\u06e2\u06e2\u06e6\u06d6\u06e7\u06d8\u06d9\u06e1\u06d9\u06df\u06db\u06e8\u06e6\u06d8\u06e5\u06e2\u06eb\u06ec\u06df\u06da\u06d8\u06dc\u06e1\u06e1"

    goto :goto_1

    :sswitch_8
    const v5, 0x27a22a0

    const-string v0, "\u06e0\u06eb\u06eb\u06ec\u06d6\u06d6\u06d7\u06db\u06e5\u06e6\u06db\u06dc\u06e0\u06da\u06d6\u06d8\u06e6\u06e5\u06e5\u06d8\u06e5\u06e6\u06ec\u06e1\u06e1\u06d8\u06e7\u06e5\u06d7\u06e8\u06da\u06d8\u06e8\u06e5\u06e6\u06d9\u06d7\u06df\u06d7\u06ec\u06d7\u06d6\u06da\u06d6\u06d9\u06d8\u06d8\u06ec\u06d8\u06e0\u06e8\u06e6\u06d6\u06d6\u06e2\u06d6\u06d8"

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v6

    xor-int/2addr v6, v5

    sparse-switch v6, :sswitch_data_2

    goto :goto_2

    :sswitch_9
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const-string v0, "\u06db\u06da\u06e4\u06da\u06ec\u06d6\u06d6\u06e4\u06ec\u06da\u06e5\u06d7\u06e0\u06da\u06d6\u06d8\u06e5\u06db\u06e7\u06e8\u06db\u06d9\u06db\u06df\u06eb\u06e5\u06ec\u06e5\u06d8\u06da\u06e1\u06e8\u06dc\u06db\u06d8\u06d8\u06df\u06d9\u06d7\u06e6\u06da\u06e1\u06d8\u06d6\u06ec\u06e6\u06d8"

    goto :goto_2

    :cond_0
    const-string v0, "\u06d9\u06e1\u06da\u06e0\u06e5\u06e7\u06d6\u06db\u06d6\u06d8\u06e8\u06e8\u06df\u06d7\u06e8\u06df\u06df\u06e6\u06d8\u06d8\u06d8\u06df\u06ec\u06e6\u06e0\u06dc\u06d8\u06e1\u06e7\u06e1\u06e8\u06df\u06d7\u06da\u06d6\u06e6\u06e4\u06e5\u06d9\u06d9\u06e6\u06e7\u06d8\u06e2\u06e1\u06df"

    goto :goto_2

    :sswitch_a
    const-string v0, "\u06da\u06ec\u06e8\u06d8\u06ec\u06e1\u06db\u06db\u06d7\u06eb\u06ec\u06e7\u06e2\u06eb\u06df\u06e5\u06d8\u06e5\u06e7\u06e8\u06e4\u06e6\u06d8\u06d9\u06e6\u06eb\u06e0\u06d8\u06eb\u06e5\u06d6\u06e6\u06d6\u06e4\u06d8\u06d8\u06dc\u06da\u06d8\u06e7\u06da\u06e4\u06d8\u06ec\u06d6\u06d7\u06d6\u06da\u06da\u06da\u06e5\u06e2\u06e5\u06e5\u06d8\u06dc\u06db\u06e5\u06d8"

    goto :goto_2

    :sswitch_b
    const-string v0, "\u06eb\u06d7\u06e7\u06da\u06e2\u06eb\u06d9\u06dc\u06df\u06e8\u06e7\u06d8\u06d9\u06d8\u06ec\u06e0\u06d8\u06d8\u06e6\u06d8\u06dc\u06d8\u06d7\u06db\u06e6\u06d8\u06d8\u06dc\u06ec\u06d9\u06e2\u06dc\u06d8\u06d9\u06d6\u06df\u06d9\u06e5\u06e5\u06e5\u06e5\u06d6\u06da\u06ec\u06d9"

    goto :goto_1

    :sswitch_c
    const-string v0, "\u06da\u06e8\u06d6\u06d6\u06d7\u06da\u06d6\u06e1\u06e5\u06d8\u06e6\u06e1\u06d9\u06ec\u06e5\u06d7\u06d7\u06e5\u06d8\u06d8\u06e8\u06d9\u06eb\u06ec\u06d8\u06e0\u06e1\u06e0\u06ec\u06d8\u06e8\u06d8\u06d8\u06e2\u06df\u06db"

    goto :goto_0

    :sswitch_d
    const v2, 0x778c6235

    const-string v0, "\u06e6\u06e6\u06d6\u06d8\u06d9\u06db\u06d7\u06db\u06e4\u06d6\u06e0\u06db\u06e6\u06df\u06e5\u06e5\u06e1\u06e6\u06e2\u06db\u06e5\u06d9\u06df\u06dc\u06e0\u06d7\u06e8\u06db\u06e6\u06e8\u06e4\u06df\u06df\u06d9\u06ec\u06e8\u06e8\u06d8\u06e4\u06e2\u06dc\u06d8\u06e1\u06eb\u06dc\u06d8"

    :goto_3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v5

    xor-int/2addr v5, v2

    sparse-switch v5, :sswitch_data_3

    goto :goto_3

    :sswitch_e
    const-string v0, "\u06dc\u06eb\u06e8\u06d8\u06e6\u06e0\u06e4\u06d7\u06e8\u06d8\u06e7\u06d9\u06d6\u06d7\u06eb\u06dc\u06eb\u06e5\u06e1\u06d8\u06e7\u06e5\u06dc\u06df\u06ec\u06dc\u06df\u06e8\u06df\u06dc\u06e0\u06eb\u06da\u06d8\u06db\u06d8\u06d8\u06e8"

    goto :goto_3

    :sswitch_f
    const-string v0, "\u06e7\u06e0\u06d8\u06e4\u06df\u06d8\u06e6\u06e1\u06d8\u06d8\u06e7\u06e6\u06e5\u06d8\u06e5\u06d7\u06da\u06e5\u06df\u06e6\u06e7\u06d8\u06eb\u06eb\u06d8\u06d8\u06db\u06e1\u06e1\u06e8\u06e7\u06db\u06eb\u06d6\u06da\u06e7\u06e7"

    goto :goto_3

    :sswitch_10
    const v5, -0x2c9dc265

    const-string v0, "\u06e6\u06d9\u06dc\u06d8\u06d7\u06e0\u06d8\u06d8\u06db\u06df\u06e1\u06d8\u06dc\u06e6\u06db\u06d8\u06d6\u06e6\u06d8\u06d9\u06dc\u06ec\u06e2\u06e2\u06e0\u06e5\u06e7\u06eb\u06e6\u06ec\u06db\u06da\u06eb\u06da\u06e4\u06e6\u06e1\u06d8\u06e6\u06e2\u06e1\u06e6\u06d9\u06e8\u06e1\u06e6\u06dc"

    :goto_4
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v6

    xor-int/2addr v6, v5

    sparse-switch v6, :sswitch_data_4

    goto :goto_4

    :sswitch_11
    const-string v0, "\u06d9\u06eb\u06e1\u06d8\u06e2\u06d7\u06ec\u06d7\u06e7\u06e7\u06e0\u06db\u06d6\u06e1\u06e0\u06d8\u06d9\u06d7\u06db\u06d6\u06ec\u06d9\u06d7\u06e6\u06dc\u06eb\u06da\u06ec\u06eb\u06e2"

    goto :goto_3

    :cond_1
    const-string v0, "\u06e2\u06e5\u06e5\u06d8\u06eb\u06ec\u06d8\u06d8\u06e1\u06db\u06db\u06e0\u06db\u06eb\u06e2\u06e6\u06e2\u06eb\u06d9\u06e6\u06d8\u06d6\u06e6\u06d6\u06d8\u06e6\u06da\u06eb\u06e5\u06db\u06d6\u06e4\u06dc\u06d9"

    goto :goto_4

    :sswitch_12
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    const-string v0, "\u06d7\u06e2\u06e1\u06d8\u06d9\u06e6\u06dc\u06d8\u06d9\u06e4\u06d7\u06e6\u06eb\u06e0\u06e7\u06db\u06dc\u06e4\u06eb\u06e1\u06d8\u06d9\u06e8\u06eb\u06e2\u06e6\u06d8\u06ec\u06e2\u06da\u06e2\u06da\u06e4\u06e2\u06ec\u06e5\u06e6\u06e0\u06e4"

    goto :goto_4

    :sswitch_13
    const-string v0, "\u06d7\u06d8\u06eb\u06dc\u06e6\u06dc\u06e0\u06e7\u06e6\u06d8\u06e0\u06e4\u06d6\u06d9\u06e6\u06dc\u06d8\u06da\u06ec\u06e2\u06d8\u06ec\u06e2\u06eb\u06e1\u06d8\u06e0\u06e4\u06dc\u06d8\u06e7\u06dc\u06d8\u06eb\u06e4\u06dc\u06d8\u06d8\u06d6\u06d8\u06d8\u06dc\u06db\u06dc\u06e5\u06e5\u06e6\u06e6\u06e4\u06dc\u06d7\u06e6\u06d6\u06d8\u06e2\u06dc\u06e1\u06e7\u06e7\u06e0"

    goto :goto_4

    :sswitch_14
    const-string v0, "\u06e0\u06e7\u06df\u06eb\u06e6\u06dc\u06d8\u06df\u06e5\u06e0\u06d6\u06e0\u06d7\u06db\u06db\u06e4\u06dc\u06e6\u06db\u06e7\u06e4\u06e8\u06e4\u06df\u06df\u06e7\u06d8\u06dc\u06d8\u06d8\u06dc\u06e8\u06d8\u06d8\u06e0\u06e1\u06d6\u06d6\u06e5\u06d8\u06e6\u06e8\u06ec\u06e8\u06e7\u06e5\u06d8\u06d7\u06e4\u06e5\u06e2\u06e0\u06e8\u06d8"

    goto/16 :goto_0

    :sswitch_15
    invoke-static {}, Lz2/oi;->OooO0o()Lz2/oi;

    move-result-object v0

    invoke-virtual {v0}, Lz2/oi;->OooO0OO()Lz2/ni;

    move-result-object v0

    invoke-interface {v0, p0}, Lz2/ni;->OooO0Oo(Landroid/content/Context;)V

    const-string v0, "\u06df\u06e2\u06dc\u06d8\u06df\u06ec\u06e1\u06d8\u06e5\u06d9\u06d9\u06e0\u06ec\u06da\u06d7\u06e1\u06d6\u06d8\u06e6\u06d7\u06e8\u06eb\u06d7\u06e5\u06d8\u06e7\u06e7\u06e2\u06eb\u06e4\u06d8\u06ec\u06ec\u06d7\u06e6\u06d8\u06e7\u06d7\u06eb\u06e5\u06d8\u06e0\u06e6\u06e6\u06d8\u06e8\u06eb\u06d6"

    goto/16 :goto_0

    :sswitch_16
    const v2, -0x40cbe33d

    const-string v0, "\u06ec\u06e5\u06d6\u06d8\u06d9\u06e5\u06e4\u06d7\u06dc\u06eb\u06e2\u06e6\u06da\u06e0\u06e8\u06dc\u06d8\u06d9\u06dc\u06db\u06e7\u06eb\u06e1\u06d8\u06df\u06d7\u06d6\u06d8\u06d7\u06d8\u06d6\u06da\u06d9\u06da\u06db\u06df\u06df\u06e0\u06ec\u06ec"

    :goto_5
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v5

    xor-int/2addr v5, v2

    sparse-switch v5, :sswitch_data_5

    goto :goto_5

    :sswitch_17
    const-string v0, "\u06d9\u06dc\u06e8\u06e6\u06e1\u06e4\u06e6\u06da\u06d6\u06e4\u06da\u06e1\u06d8\u06d8\u06e6\u06df\u06e4\u06d9\u06d8\u06d8\u06d9\u06e1\u06e4\u06e6\u06d9\u06e1\u06d8\u06e1\u06e5\u06ec\u06e1\u06e7\u06e6\u06e5\u06dc\u06d8\u06ec\u06df\u06df"

    goto/16 :goto_0

    :sswitch_18
    const-string v0, "\u06e5\u06e1\u06e6\u06d8\u06ec\u06d8\u06da\u06eb\u06dc\u06d7\u06d9\u06da\u06e1\u06d8\u06df\u06e5\u06dc\u06eb\u06e6\u06e8\u06d8\u06d6\u06e8\u06d7\u06e1\u06e5\u06e1\u06d8\u06da\u06e1\u06d6\u06e5\u06ec\u06e1\u06d8\u06e4\u06d9\u06dc\u06e2\u06dc\u06df"

    goto :goto_5

    :sswitch_19
    const v5, -0x5ed2cde6

    const-string v0, "\u06df\u06e4\u06e0\u06e4\u06e4\u06e8\u06e2\u06df\u06d7\u06e1\u06da\u06e1\u06d8\u06e4\u06df\u06da\u06e4\u06db\u06e8\u06d8\u06db\u06e2\u06e2\u06d9\u06d7\u06e4\u06da\u06e7\u06e6\u06e5\u06e6\u06e7\u06d8\u06da\u06e4\u06e7\u06d8\u06df\u06e2\u06eb\u06d6\u06da\u06da\u06e5\u06e2\u06e4\u06e2\u06da\u06dc\u06d8"

    :goto_6
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v6

    xor-int/2addr v6, v5

    sparse-switch v6, :sswitch_data_6

    goto :goto_6

    :sswitch_1a
    const-string v0, "\u06e6\u06e2\u06e8\u06eb\u06e7\u06d8\u06d8\u06e1\u06e2\u06e1\u06d8\u06e1\u06d9\u06df\u06e7\u06dc\u06e6\u06d7\u06d9\u06db\u06e2\u06d7\u06d6\u06d9\u06db\u06e5\u06d8\u06df\u06df\u06d6\u06e0\u06da\u06dc\u06ec\u06e5\u06d8\u06e8\u06e1\u06dc\u06d8\u06e4\u06ec\u06e5\u06d8\u06e8\u06e8\u06d9\u06d9\u06e1\u06dc\u06d8\u06d9\u06df\u06d8"

    goto :goto_5

    :cond_2
    const-string v0, "\u06e4\u06da\u06e0\u06e2\u06da\u06e8\u06e8\u06e7\u06e7\u06d8\u06df\u06eb\u06e2\u06e6\u06db\u06e4\u06e2\u06e4\u06e4\u06eb\u06e6\u06d8\u06db\u06d7\u06d6\u06df\u06d9\u06d7\u06e4\u06d9\u06e5\u06d8\u06d8\u06d7\u06e8\u06d8\u06d8\u06dc\u06dc\u06d7\u06e1\u06d6\u06d8\u06da\u06df\u06e8\u06e2\u06e8\u06e7\u06d8\u06eb\u06eb\u06e1\u06d8\u06eb\u06ec\u06e7\u06db\u06d6\u06e7\u06d8"

    goto :goto_6

    :sswitch_1b
    const/16 v0, 0x2710

    if-eq p1, v0, :cond_2

    const-string v0, "\u06e6\u06e1\u06e2\u06e6\u06eb\u06e8\u06d8\u06d8\u06e0\u06df\u06e6\u06ec\u06d6\u06d8\u06e5\u06da\u06eb\u06ec\u06d7\u06e5\u06d8\u06e8\u06e6\u06d6\u06d8\u06e8\u06d7\u06e0\u06e7\u06d8\u06e7\u06d8\u06d9\u06db\u06e1\u06db\u06ec\u06d7\u06db\u06da\u06e7\u06d6\u06eb\u06d7\u06ec\u06da\u06ec"

    goto :goto_6

    :sswitch_1c
    const-string v0, "\u06e8\u06d7\u06dc\u06d6\u06d6\u06db\u06e5\u06e7\u06e8\u06d8\u06da\u06e2\u06df\u06e0\u06e7\u06e2\u06d6\u06e7\u06d6\u06eb\u06db\u06e8\u06d8\u06da\u06dc\u06da\u06e4\u06d7\u06df\u06d6\u06da\u06e0\u06e6\u06db\u06e5\u06d8\u06d7\u06e7\u06ec\u06da\u06e0\u06e8\u06e1\u06e5\u06d7\u06e0\u06e4\u06df\u06e7\u06df"

    goto :goto_6

    :sswitch_1d
    const-string v0, "\u06eb\u06df\u06e6\u06db\u06ec\u06d6\u06e5\u06db\u06d6\u06db\u06df\u06e5\u06d8\u06e5\u06e2\u06e4\u06d6\u06e6\u06e7\u06e1\u06db\u06eb\u06e4\u06e2\u06e4\u06e2\u06e2\u06e5\u06d9\u06e4\u06e1"

    goto :goto_5

    :sswitch_1e
    const-string v0, "\u06e4\u06e0\u06d9\u06e4\u06d8\u06e5\u06d9\u06d6\u06d8\u06e0\u06e5\u06dc\u06d8\u06e2\u06d7\u06d8\u06e5\u06e5\u06e5\u06d8\u06eb\u06df\u06dc\u06d8\u06dc\u06d6\u06df\u06d7\u06e6\u06e8\u06d8\u06e4\u06da"

    goto/16 :goto_0

    :sswitch_1f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u06e7\u06df\u06e0\u06df\u06e1\u06d7\u06e0\u06eb\u06e7\u06e8\u06d6\u06e7\u06d8\u06da\u06db\u06e8\u06da\u06df\u06e8\u06eb\u06e4\u06d8\u06d8\u06d6\u06eb\u06df\u06dc\u06d8\u06d6\u06d8\u06d9\u06dc\u06db"

    move-object v4, v2

    goto/16 :goto_0

    :sswitch_20
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\u06d9\u06d9\u06e7\u06d8\u06eb\u06dc\u06e8\u06e7\u06e8\u06d8\u06db\u06ec\u06d9\u06e1\u06dc\u06dc\u06d8\u06d9\u06e8\u06e6\u06dc\u06e2\u06e8\u06e8\u06e8\u06d8\u06ec\u06d8\u06ec\u06e0\u06d6\u06d6\u06e1\u06eb\u06e8\u06db\u06e0\u06e8\u06e5\u06e7\u06e6\u06e2\u06e5\u06e5\u06ec\u06e1\u06e6\u06e0\u06eb\u06e7"

    goto/16 :goto_0

    :sswitch_21
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u06e8\u06dc\u06e7\u06d8\u06e7\u06db\u06d8\u06e0\u06d8\u06d8\u06d8\u06e6\u06df\u06e1\u06d8\u06d9\u06e0\u06e5\u06d8\u06e6\u06da\u06d9\u06e5\u06eb\u06e8\u06d8\u06ec\u06d6\u06e8\u06d9\u06d8\u06df\u06d9\u06eb\u06d8\u06e2\u06d7\u06db\u06db\u06e8\u06d8\u06d8\u06e1\u06d9\u06e1\u06d8\u06d8\u06eb\u06da\u06e5\u06e0\u06e8\u06e8\u06dc\u06d6\u06e1\u06d8\u06d7\u06ec\u06eb"

    goto/16 :goto_0

    :sswitch_22
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u06da\u06e7\u06e6\u06d8\u06ec\u06db\u06da\u06ec\u06d7\u06df\u06dc\u06d9\u06e1\u06e6\u06dc\u06e8\u06da\u06e8\u06d8\u06dc\u06e5\u06d9\u06e1\u06e1\u06e8\u06d8\u06d8\u06d6\u06e1\u06e5\u06e1\u06e5\u06e2\u06ec\u06e2\u06d9\u06e6\u06da\u06e0\u06ec\u06eb\u06eb\u06e7\u06d6\u06df\u06e7\u06e8\u06dc\u06dc\u06e6\u06d8\u06d7\u06da\u06da\u06e0\u06e6\u06db"

    goto/16 :goto_0

    :sswitch_23
    const-string v0, ".apk"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u06d9\u06e2\u06e5\u06d8\u06ec\u06db\u06e6\u06e7\u06db\u06e1\u06e7\u06e1\u06e8\u06dc\u06d6\u06dc\u06db\u06e7\u06df\u06e1\u06db\u06df\u06da\u06e8\u06d8\u06d6\u06dc\u06d7\u06e0\u06d8\u06e8\u06e7\u06e6\u06da\u06d8\u06d8\u06dc\u06e0\u06e2\u06e0\u06e1\u06d9\u06e5\u06e1\u06ec\u06e8\u06d8\u06e0\u06e7\u06e7\u06e8\u06dc\u06d9\u06dc\u06da"

    goto/16 :goto_0

    :sswitch_24
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v0, "\u06e8\u06da\u06dc\u06d8\u06d7\u06d6\u06d8\u06eb\u06d8\u06d7\u06e0\u06eb\u06ec\u06e6\u06df\u06e8\u06d8\u06da\u06d8\u06ec\u06d8\u06e2\u06dc\u06d8\u06e8\u06ec\u06db\u06e7\u06e2\u06e6\u06d8\u06d8\u06da\u06e4\u06d7\u06e7\u06d8\u06d8\u06e6\u06da\u06d9\u06e2\u06e5\u06e0\u06d7\u06e2\u06dc\u06d6\u06d9\u06e5\u06ec\u06db\u06d8\u06d8"

    move-object v3, v2

    goto/16 :goto_0

    :sswitch_25
    const v2, -0x7666bcf5

    const-string v0, "\u06d9\u06d7\u06e6\u06e0\u06d7\u06d6\u06e4\u06d6\u06d8\u06d8\u06e8\u06e2\u06da\u06e6\u06e0\u06da\u06db\u06e6\u06e6\u06d8\u06e7\u06d8\u06d6\u06d8\u06e6\u06db\u06e5\u06d8\u06dc\u06e8\u06e5\u06e1\u06e8\u06e8\u06d8\u06e7\u06e4\u06e8\u06e0\u06d9\u06e5\u06ec\u06da\u06d6\u06d8\u06d8\u06d8\u06d9"

    :goto_7
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v5

    xor-int/2addr v5, v2

    sparse-switch v5, :sswitch_data_7

    goto :goto_7

    :sswitch_26
    const v5, -0x7d3d42df

    const-string v0, "\u06df\u06eb\u06e0\u06da\u06d7\u06e7\u06e2\u06df\u06dc\u06e8\u06e5\u06df\u06dc\u06e6\u06d9\u06e7\u06e5\u06d6\u06ec\u06eb\u06e6\u06e6\u06d6\u06e6\u06d8\u06e0\u06e0\u06d9\u06d8\u06e8\u06e2\u06eb\u06e0\u06df\u06e1\u06e4\u06dc\u06d8\u06e1\u06e4\u06d8\u06d8\u06db\u06da\u06d9\u06ec\u06ec\u06e6\u06d8\u06e8\u06e5\u06d8\u06db\u06d7\u06e1\u06e0\u06d6\u06e1\u06d8"

    :goto_8
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v6

    xor-int/2addr v6, v5

    sparse-switch v6, :sswitch_data_8

    goto :goto_8

    :sswitch_27
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "\u06ec\u06d8\u06e1\u06d8\u06e8\u06d6\u06da\u06e8\u06e6\u06d8\u06da\u06d6\u06d7\u06d8\u06e4\u06e8\u06d8\u06e8\u06d8\u06df\u06e5\u06e7\u06e8\u06e7\u06e5\u06d8\u06e6\u06e4\u06df\u06e0\u06e0\u06e8\u06d8\u06dc\u06db\u06e1\u06e2\u06e5\u06d6\u06d8\u06d6\u06e1\u06e7\u06d8\u06eb\u06dc\u06dc"

    goto :goto_8

    :sswitch_28
    const-string v0, "\u06db\u06da\u06db\u06d8\u06e1\u06e7\u06db\u06d7\u06e5\u06e4\u06e0\u06df\u06d6\u06e1\u06e1\u06d8\u06e5\u06e5\u06e1\u06d8\u06e1\u06d8\u06db\u06df\u06e6\u06e7\u06d8\u06d8\u06e7\u06ec\u06d7\u06da\u06e1\u06d8"

    goto :goto_7

    :cond_3
    const-string v0, "\u06db\u06e2\u06e6\u06d8\u06e8\u06d8\u06df\u06e6\u06e4\u06e2\u06e2\u06e2\u06e8\u06d8\u06e1\u06d8\u06dc\u06d8\u06d6\u06d7\u06e4\u06d6\u06e2\u06eb\u06e4\u06d8\u06dc\u06e7\u06d7\u06dc\u06e4\u06e0\u06e4\u06e7\u06d8\u06e2\u06e2\u06d9\u06e0\u06e4\u06d7\u06e8\u06d8\u06dc\u06e4\u06da"

    goto :goto_8

    :sswitch_29
    const-string v0, "\u06d7\u06db\u06dc\u06d8\u06d9\u06e5\u06d6\u06d9\u06d9\u06e4\u06dc\u06e2\u06e0\u06d6\u06d9\u06df\u06ec\u06d6\u06e8\u06eb\u06d9\u06da\u06d7\u06e7\u06d7\u06eb\u06e7\u06df\u06dc\u06ec\u06da\u06e6\u06e8\u06dc\u06d8\u06df\u06da\u06e8"

    goto :goto_8

    :sswitch_2a
    const-string v0, "\u06d7\u06e7\u06e6\u06d8\u06e5\u06df\u06e5\u06d8\u06da\u06db\u06e1\u06d8\u06d7\u06d6\u06e8\u06dc\u06d6\u06df\u06e2\u06e8\u06e1\u06d8\u06d7\u06e2\u06dc\u06d7\u06db\u06e6\u06e1\u06ec\u06db\u06eb\u06e0\u06e5\u06d8\u06eb\u06e1\u06da\u06db\u06da\u06da\u06da\u06eb\u06e6\u06d8\u06df\u06d6\u06e8\u06e4\u06e4\u06d6\u06d6\u06d9\u06e8"

    goto :goto_7

    :sswitch_2b
    const-string v0, "\u06e0\u06e5\u06d7\u06eb\u06d9\u06e2\u06e0\u06dc\u06e5\u06e5\u06e7\u06e6\u06da\u06eb\u06d8\u06eb\u06e6\u06e1\u06d8\u06e2\u06dc\u06d6\u06d8\u06dc\u06ec\u06e8\u06e8\u06d7\u06d9\u06e0\u06df\u06e5\u06e4\u06d6\u06dc\u06d8\u06eb\u06df\u06dc\u06e7\u06eb\u06e7\u06e1\u06ec\u06dc\u06d8"

    goto :goto_7

    :sswitch_2c
    const-string v0, "\u06e4\u06d7\u06e5\u06e1\u06e4\u06e1\u06dc\u06df\u06dc\u06d8\u06ec\u06e4\u06dc\u06d8\u06d8\u06e2\u06d9\u06d7\u06db\u06e1\u06d8\u06ec\u06dc\u06d6\u06d7\u06da\u06da\u06e1\u06db\u06d9\u06e5\u06d8\u06dc\u06e0\u06e8\u06dc\u06d8\u06df\u06d7\u06e1\u06e1\u06e7\u06e1\u06d8\u06eb\u06e7\u06e7\u06e8\u06e8\u06e5\u06e7\u06e4\u06e8\u06d8"

    goto/16 :goto_0

    :sswitch_2d
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "\u06e2\u06df\u06e7\u06dc\u06dc\u06eb\u06ec\u06e4\u06eb\u06e8\u06e0\u06d7\u06e2\u06d8\u06e0\u06db\u06d9\u06d9\u06db\u06e5\u06e8\u06d8\u06e4\u06dc\u06d8\u06e4\u06e6\u06d7\u06d6\u06e5\u06d8\u06e2\u06e7\u06e6\u06d8\u06e5\u06d8\u06e6\u06e7\u06dc\u06e4\u06ec\u06e6\u06e7\u06db\u06d6\u06e1\u06d8\u06d8\u06e6\u06d8\u06e6\u06d9\u06e1\u06d8\u06e4\u06d6\u06e1\u06d8"

    goto/16 :goto_0

    :sswitch_2e
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v0, "\u06da\u06e6\u06e1\u06d8\u06d6\u06d8\u06e4\u06e4\u06e7\u06e1\u06d8\u06dc\u06e2\u06e8\u06d9\u06d9\u06df\u06df\u06eb\u06e1\u06df\u06ec\u06e2\u06e8\u06d8\u06e4\u06e8\u06e5\u06e5\u06e1"

    goto/16 :goto_0

    :sswitch_2f
    const v0, 0x7f10020f

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0, v2}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "\u06d7\u06e6\u06e1\u06db\u06e5\u06e1\u06d9\u06df\u06e0\u06eb\u06e2\u06d6\u06d8\u06dc\u06e7\u06eb\u06d6\u06e7\u06db\u06e5\u06dc\u06dc\u06e0\u06db\u06db\u06ec\u06db\u06e2\u06e0\u06df\u06dc\u06d7\u06ec\u06e4\u06e1\u06d8\u06d8\u06d8\u06d6\u06d8\u06e2\u06d6\u06d8\u06d8\u06df\u06eb\u06d9\u06e6\u06e4\u06e7"

    goto/16 :goto_0

    :sswitch_30
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const-string v0, "\u06ec\u06e6\u06d9\u06e7\u06d6\u06d9\u06e6\u06e6\u06d8\u06d6\u06eb\u06e5\u06e4\u06ec\u06df\u06df\u06e6\u06dc\u06e8\u06d8\u06d8\u06df\u06d9\u06d8\u06e1\u06d8\u06e4\u06e7\u06df\u06e6\u06dc\u06e5\u06d6\u06eb\u06e8\u06d8\u06e7\u06d8\u06e5\u06d8\u06e2\u06e5\u06d8\u06d8"

    goto/16 :goto_0

    :sswitch_31
    const-string v0, "\u06df\u06e2\u06dc\u06d8\u06df\u06ec\u06e1\u06d8\u06e5\u06d9\u06d9\u06e0\u06ec\u06da\u06d7\u06e1\u06d6\u06d8\u06e6\u06d7\u06e8\u06eb\u06d7\u06e5\u06d8\u06e7\u06e7\u06e2\u06eb\u06e4\u06d8\u06ec\u06ec\u06d7\u06e6\u06d8\u06e7\u06d7\u06eb\u06e5\u06d8\u06e0\u06e6\u06e6\u06d8\u06e8\u06eb\u06d6"

    goto/16 :goto_0

    :sswitch_32
    const-string v0, "\u06ec\u06e6\u06d9\u06e7\u06d6\u06d9\u06e6\u06e6\u06d8\u06d6\u06eb\u06e5\u06e4\u06ec\u06df\u06df\u06e6\u06dc\u06e8\u06d8\u06d8\u06df\u06d9\u06d8\u06e1\u06d8\u06e4\u06e7\u06df\u06e6\u06dc\u06e5\u06d6\u06eb\u06e8\u06d8\u06e7\u06d8\u06e5\u06d8\u06e2\u06e5\u06d8\u06d8"

    goto/16 :goto_0

    :sswitch_33
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7ef391bb -> :sswitch_2e
        -0x746ed305 -> :sswitch_20
        -0x688c7edb -> :sswitch_21
        -0x6137e130 -> :sswitch_d
        -0x53a388ff -> :sswitch_3
        -0x52671035 -> :sswitch_2d
        -0x441830cd -> :sswitch_16
        -0x367da9d2 -> :sswitch_4
        -0x159e371d -> :sswitch_5
        -0x14c9b521 -> :sswitch_2f
        -0x124ad469 -> :sswitch_24
        -0x3a991fa -> :sswitch_1f
        0x18364ba -> :sswitch_2
        0xadcd127 -> :sswitch_25
        0x23627c45 -> :sswitch_15
        0x3dc325a6 -> :sswitch_23
        0x47736fc5 -> :sswitch_33
        0x4c6ece93 -> :sswitch_22
        0x56a3a274 -> :sswitch_32
        0x68cfbaed -> :sswitch_1
        0x725f6773 -> :sswitch_30
        0x77a6accc -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x12982a35 -> :sswitch_6
        0x1831dcfa -> :sswitch_c
        0x39d818f9 -> :sswitch_8
        0x4d9cbf09 -> :sswitch_31
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        -0x5472ae3f -> :sswitch_7
        -0x2cc1b7e -> :sswitch_b
        0x641034d3 -> :sswitch_a
        0x7e14f269 -> :sswitch_9
    .end sparse-switch

    :sswitch_data_3
    .sparse-switch
        -0x12d051f -> :sswitch_e
        0x39d5afdf -> :sswitch_10
        0x4d27165b -> :sswitch_31
        0x733cde4b -> :sswitch_14
    .end sparse-switch

    :sswitch_data_4
    .sparse-switch
        -0x227063f3 -> :sswitch_12
        0x50facfd5 -> :sswitch_f
        0x6d091e48 -> :sswitch_11
        0x7b8046a0 -> :sswitch_13
    .end sparse-switch

    :sswitch_data_5
    .sparse-switch
        -0x54b0ddce -> :sswitch_1d
        -0x261909bc -> :sswitch_19
        -0x23d3e607 -> :sswitch_1e
        0x1a750f2d -> :sswitch_17
    .end sparse-switch

    :sswitch_data_6
    .sparse-switch
        -0x292e2e3f -> :sswitch_1c
        -0x796b225 -> :sswitch_18
        0x2facfe2f -> :sswitch_1a
        0x6ac08601 -> :sswitch_1b
    .end sparse-switch

    :sswitch_data_7
    .sparse-switch
        -0x624d2d4c -> :sswitch_2b
        -0x59884a39 -> :sswitch_2c
        -0x48058cce -> :sswitch_26
        -0x127e4ba5 -> :sswitch_32
    .end sparse-switch

    :sswitch_data_8
    .sparse-switch
        -0x2f606d4a -> :sswitch_27
        0x3f97285d -> :sswitch_29
        0x5704646a -> :sswitch_2a
        0x7fdd18a1 -> :sswitch_28
    .end sparse-switch
.end method

.method public onBackPressed()V
    .locals 4

    const-string v0, "\u06eb\u06dc\u06e0\u06db\u06db\u06e6\u06d8\u06e4\u06db\u06e8\u06e7\u06e4\u06e7\u06e1\u06d9\u06d8\u06df\u06e2\u06d8\u06d9\u06e4\u06e0\u06e1\u06e6\u06e2\u06e0\u06e4\u06e5\u06d8\u06da\u06e0\u06dc\u06dc\u06d9\u06d6\u06d8\u06e8\u06ec\u06db\u06d6\u06d8\u06df\u06dc\u06d9\u06db"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x9e

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x27a

    const/16 v2, 0x39c

    const v3, 0x79c50d68

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e7\u06df\u06dc\u06d8\u06df\u06e4\u06e8\u06d6\u06d6\u06db\u06dc\u06d8\u06d8\u06d7\u06d8\u06d9\u06e1\u06db\u06d6\u06df\u06d9\u06e7\u06e4\u06da\u06e6\u06d7\u06e7\u06e7\u06df\u06dc\u06d8\u06da\u06e8\u06e5\u06ec\u06d7\u06e2"

    goto :goto_0

    :sswitch_1
    const v1, -0x184267cd

    const-string v0, "\u06e5\u06e6\u06d7\u06e6\u06df\u06d6\u06e8\u06e4\u06e8\u06d8\u06e2\u06e7\u06e1\u06d9\u06e0\u06d9\u06dc\u06eb\u06d8\u06d8\u06e7\u06e2\u06e5\u06e1\u06db\u06d6\u06e0\u06eb\u06e8\u06eb\u06e1\u06d8\u06db\u06d7\u06df\u06e4\u06da\u06ec"

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v2, v1

    sparse-switch v2, :sswitch_data_1

    goto :goto_1

    :sswitch_2
    const-string v0, "\u06d9\u06e1\u06dc\u06e4\u06e6\u06d8\u06e5\u06e5\u06e8\u06d8\u06ec\u06db\u06e1\u06e2\u06e1\u06e0\u06e7\u06e4\u06da\u06da\u06da\u06e1\u06eb\u06db\u06d7\u06ec\u06e4\u06dc\u06d8\u06e0\u06df\u06d6\u06e8\u06d7\u06dc\u06dc\u06dc"

    goto :goto_0

    :sswitch_3
    const-string v0, "\u06db\u06e2\u06d6\u06e6\u06db\u06d6\u06e5\u06eb\u06dc\u06da\u06e4\u06e1\u06e1\u06da\u06e4\u06e4\u06e0\u06e0\u06d7\u06d8\u06e5\u06e1\u06dc\u06d9\u06e4\u06e4\u06db\u06eb\u06e0\u06eb\u06d6\u06e5\u06d8\u06eb\u06e6\u06e5\u06df\u06e4\u06e5\u06e4\u06e5\u06e6\u06d8\u06d8\u06db\u06e5\u06db\u06e2\u06e5"

    goto :goto_1

    :sswitch_4
    const v2, 0x354ba827

    const-string v0, "\u06db\u06ec\u06e6\u06d8\u06e7\u06db\u06db\u06db\u06e4\u06dc\u06d8\u06e4\u06e0\u06e0\u06e1\u06db\u06e5\u06e6\u06eb\u06df\u06e2\u06da\u06d8\u06d8\u06e6\u06d8\u06d7\u06e5\u06ec\u06d6\u06d8\u06d8\u06e7\u06e5\u06d8\u06eb\u06eb\u06e6\u06d8\u06da\u06e0\u06d8\u06d8\u06e7\u06e1\u06d6\u06d8\u06e0\u06dc\u06d8\u06da\u06e8\u06e6\u06d7\u06db\u06d6\u06d8"

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v2

    sparse-switch v3, :sswitch_data_2

    goto :goto_2

    :sswitch_5
    const-string v0, "\u06e4\u06e1\u06dc\u06d8\u06e5\u06dc\u06dc\u06db\u06e0\u06e1\u06e7\u06e4\u06df\u06ec\u06d8\u06d9\u06eb\u06e4\u06e6\u06d8\u06e6\u06d9\u06e2\u06db\u06e1\u06d6\u06e5\u06e7\u06eb\u06e4\u06d8\u06d8\u06e2\u06dc\u06e4\u06e1\u06e2\u06db\u06eb\u06eb\u06e7\u06d7\u06ec\u06d6\u06e1\u06e4\u06dc\u06d8\u06da\u06d8\u06e7\u06d8\u06d6\u06e5\u06d8\u06d8\u06d9\u06d9\u06d8\u06d8"

    goto :goto_2

    :cond_0
    const-string v0, "\u06d9\u06d6\u06e2\u06d8\u06e0\u06db\u06d7\u06d8\u06e6\u06d8\u06e2\u06da\u06e6\u06e4\u06d6\u06eb\u06d7\u06df\u06dc\u06e1\u06d9\u06e6\u06e5\u06e7\u06e4\u06d6\u06e6\u06e2\u06db\u06eb\u06e0\u06e6\u06db\u06d8\u06e6\u06d6\u06e6\u06da\u06d9\u06e7\u06e5\u06dc\u06d8\u06e8\u06d9\u06eb\u06d6\u06e2\u06e2\u06ec\u06e4\u06d8\u06d8\u06e7\u06d6\u06e1"

    goto :goto_2

    :sswitch_6
    iget-boolean v0, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->o0O0O00:Z

    if-eqz v0, :cond_0

    const-string v0, "\u06df\u06e7\u06d6\u06e4\u06e2\u06d7\u06e7\u06dc\u06e5\u06d8\u06e1\u06d7\u06d6\u06d8\u06d9\u06ec\u06e5\u06d8\u06e0\u06e6\u06da\u06db\u06d8\u06e0\u06e8\u06d8\u06e8\u06da\u06d9\u06db\u06d7\u06e5\u06d8\u06dc\u06e7\u06da\u06e0\u06e6\u06d8\u06d8\u06e1\u06d7\u06e7\u06df\u06e6\u06eb\u06d8\u06dc\u06e2\u06d8\u06da\u06dc\u06e1\u06e0\u06eb"

    goto :goto_2

    :sswitch_7
    const-string v0, "\u06e8\u06e6\u06e7\u06dc\u06d6\u06e6\u06d6\u06dc\u06dc\u06dc\u06df\u06d8\u06d8\u06e8\u06e8\u06e0\u06ec\u06e6\u06e0\u06df\u06eb\u06e2\u06d6\u06eb\u06d8\u06d8\u06df\u06e1\u06e8\u06d8\u06e4\u06d7\u06e5\u06d8\u06e1\u06df\u06d9\u06e4\u06d8\u06e6\u06d8\u06d7\u06e1\u06e2\u06eb\u06d6\u06dc\u06e1\u06e2\u06e6\u06d7\u06e7\u06e8\u06d8"

    goto :goto_1

    :sswitch_8
    const-string v0, "\u06e0\u06d7\u06d8\u06e0\u06eb\u06e8\u06d8\u06d9\u06db\u06ec\u06dc\u06d8\u06df\u06e2\u06e8\u06d8\u06d6\u06e5\u06dc\u06d9\u06e2\u06d6\u06dc\u06ec\u06dc\u06d9\u06da\u06db\u06dc\u06df"

    goto :goto_1

    :sswitch_9
    const v1, -0x67f493c9

    const-string v0, "\u06df\u06df\u06e1\u06d8\u06da\u06eb\u06d6\u06da\u06e1\u06dc\u06dc\u06e7\u06eb\u06dc\u06e2\u06ec\u06eb\u06eb\u06e0\u06e4\u06dc\u06e1\u06d8\u06d6\u06e0\u06ec\u06da\u06e6\u06e6\u06d8\u06d8\u06d6\u06d6\u06d8"

    :goto_3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v2, v1

    sparse-switch v2, :sswitch_data_3

    goto :goto_3

    :sswitch_a
    const-string v0, "\u06e5\u06e5\u06e0\u06da\u06d7\u06d7\u06ec\u06eb\u06d7\u06ec\u06df\u06e7\u06e6\u06e8\u06e2\u06e7\u06ec\u06df\u06d6\u06e8\u06e5\u06e1\u06e2\u06db\u06ec\u06ec\u06e5\u06d8\u06e1\u06e0\u06e8\u06d8\u06e8\u06d9\u06e8\u06d8\u06dc\u06e6\u06ec\u06ec\u06d8\u06e8\u06e5\u06da\u06d6\u06d8\u06e7\u06e8\u06d8\u06e1\u06e5\u06d6\u06d9\u06e5\u06e7\u06e8\u06df\u06e8\u06d8"

    goto :goto_3

    :sswitch_b
    const-string v0, "\u06e8\u06e5\u06dc\u06d6\u06e4\u06d6\u06da\u06ec\u06e1\u06d8\u06df\u06db\u06ec\u06e8\u06e6\u06e0\u06e2\u06e5\u06e5\u06d8\u06e4\u06d6\u06dc\u06d8\u06d6\u06e6\u06e5\u06ec\u06d6\u06d7\u06e7\u06e1\u06e0\u06d6\u06e8\u06d7\u06e5\u06eb\u06d6\u06d8\u06ec\u06ec\u06db\u06d7\u06d8\u06da"

    goto :goto_3

    :sswitch_c
    const v2, -0x5b3f3dfd

    const-string v0, "\u06e6\u06d8\u06e6\u06d8\u06eb\u06ec\u06e5\u06d8\u06e2\u06db\u06e8\u06d8\u06e1\u06e4\u06e0\u06da\u06d8\u06e7\u06d8\u06e1\u06da\u06d6\u06e0\u06e8\u06e0\u06d8\u06e0\u06e6\u06d8\u06e2\u06e7\u06eb\u06e0\u06eb\u06e2"

    :goto_4
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v2

    sparse-switch v3, :sswitch_data_4

    goto :goto_4

    :sswitch_d
    invoke-static {}, Lz2/i7;->OooO()Lz2/i7;

    move-result-object v0

    invoke-virtual {v0}, Lz2/i7;->OooOOO()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "\u06df\u06e6\u06e7\u06d8\u06d8\u06df\u06e4\u06ec\u06e6\u06d6\u06d8\u06db\u06e6\u06ec\u06d9\u06d7\u06dc\u06e8\u06d9\u06e8\u06ec\u06d8\u06e6\u06e1\u06e4\u06d6\u06e5\u06d9\u06d6\u06d8\u06df\u06e8\u06e8\u06d8\u06eb\u06d6\u06e7\u06d7\u06d6\u06d6\u06d8\u06d6\u06dc\u06df\u06e0\u06e1\u06e8\u06d8\u06e4\u06d9\u06d8\u06d8\u06dc\u06ec\u06dc"

    goto :goto_4

    :cond_1
    const-string v0, "\u06dc\u06e6\u06dc\u06d8\u06d8\u06e0\u06db\u06ec\u06db\u06d6\u06d8\u06d8\u06e2\u06e1\u06d8\u06e0\u06d9\u06df\u06e5\u06d8\u06e7\u06e6\u06dc\u06e6\u06d8\u06eb\u06e1\u06d9\u06da\u06eb\u06dc\u06d8\u06da\u06d7\u06e1\u06d8\u06e6\u06ec\u06e4\u06d7\u06ec\u06ec\u06df\u06db\u06db\u06e4\u06df\u06e6\u06d8\u06eb\u06eb\u06df\u06d6\u06d6\u06e0"

    goto :goto_4

    :sswitch_e
    const-string v0, "\u06df\u06dc\u06e0\u06e1\u06e7\u06e5\u06d8\u06dc\u06e8\u06e8\u06d8\u06d8\u06e8\u06e4\u06db\u06e4\u06e8\u06e4\u06d7\u06e1\u06d8\u06e7\u06d8\u06e7\u06d9\u06e5\u06d6\u06d6\u06eb\u06e2\u06da\u06e8\u06d8\u06d8\u06df\u06d8\u06e0\u06db\u06dc\u06d7\u06e6\u06e0\u06e1\u06d8\u06e1\u06ec\u06ec\u06e4\u06ec\u06e6\u06d8\u06e4\u06dc\u06df\u06e7\u06d8\u06e1\u06e4\u06eb\u06d8\u06d8"

    goto :goto_4

    :sswitch_f
    const-string v0, "\u06e0\u06d6\u06e6\u06d8\u06e5\u06ec\u06e6\u06d8\u06df\u06d8\u06dc\u06e0\u06d6\u06e5\u06db\u06d7\u06d7\u06d8\u06e8\u06ec\u06d8\u06ec\u06e5\u06e4\u06df\u06da\u06d7\u06e7\u06dc\u06e6\u06ec\u06df\u06e4\u06eb\u06d7\u06e4\u06e0\u06ec\u06dc\u06d8\u06dc\u06d8\u06e8\u06e8\u06eb"

    goto :goto_3

    :sswitch_10
    const-string v0, "\u06e5\u06d8\u06d9\u06e6\u06e8\u06dc\u06d8\u06ec\u06e7\u06d6\u06e7\u06e8\u06e8\u06e7\u06d9\u06da\u06ec\u06e7\u06e6\u06d8\u06ec\u06e1\u06dc\u06d8\u06d9\u06db\u06db\u06db\u06e0\u06e1\u06eb\u06e2\u06da\u06e7\u06e7\u06e6\u06e5\u06d7\u06e5"

    goto/16 :goto_0

    :sswitch_11
    invoke-static {}, Lz2/i7;->OooO()Lz2/i7;

    move-result-object v0

    invoke-virtual {v0}, Lz2/i7;->Oooo0o0()V

    const-string v0, "\u06d7\u06d8\u06e7\u06d8\u06d7\u06e6\u06e2\u06d6\u06db\u06dc\u06d6\u06e7\u06d8\u06e6\u06e2\u06d6\u06d8\u06ec\u06d6\u06dc\u06e2\u06e0\u06d6\u06d8\u06ec\u06e0\u06db\u06ec\u06e2\u06d6\u06e6\u06e6\u06e5\u06e0\u06e1\u06db\u06da\u06e6\u06dc\u06e7\u06e0\u06e8\u06eb\u06e0\u06e5\u06d8\u06ec\u06e2\u06d6\u06d8"

    goto/16 :goto_0

    :sswitch_12
    invoke-direct {p0}, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->OoooOOO()V

    const-string v0, "\u06e4\u06ec\u06db\u06df\u06eb\u06df\u06db\u06ec\u06e8\u06d8\u06d7\u06e4\u06db\u06e6\u06da\u06d8\u06d8\u06eb\u06e4\u06e6\u06e6\u06e2\u06df\u06df\u06e1\u06e7\u06d8\u06e1\u06e5\u06dc\u06e0\u06e0\u06ec\u06d7\u06da\u06e2\u06e6\u06e2\u06e5\u06d8\u06eb\u06e2\u06df\u06ec\u06da\u06d7\u06d6\u06db\u06ec\u06e1\u06d9\u06e6"

    goto/16 :goto_0

    :sswitch_13
    invoke-static {}, Lz2/v3;->OooO()Lz2/v3;

    move-result-object v0

    invoke-virtual {v0}, Lz2/v3;->OooO0oO()V

    const-string v0, "\u06d6\u06eb\u06e1\u06d8\u06d7\u06df\u06eb\u06e1\u06e2\u06e1\u06d8\u06e8\u06ec\u06d6\u06d8\u06e5\u06dc\u06e7\u06d6\u06ec\u06d6\u06e4\u06ec\u06e1\u06e4\u06da\u06e6\u06d8\u06d7\u06eb\u06d8\u06d8\u06da\u06e1\u06d6\u06e7\u06e7\u06e5\u06d8\u06da\u06e1\u06db\u06d7\u06db\u06d7\u06e8\u06e7\u06d6\u06d8\u06d9\u06e0\u06dc\u06d6\u06d8"

    goto/16 :goto_0

    :sswitch_14
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->o0O0O00:Z

    const-string v0, "\u06dc\u06d6\u06d7\u06e4\u06df\u06da\u06e4\u06d8\u06e0\u06e4\u06e4\u06e4\u06da\u06e8\u06d8\u06eb\u06d8\u06eb\u06d7\u06e7\u06dc\u06d8\u06d7\u06e5\u06d6\u06e1\u06e2\u06d7\u06e1\u06e1\u06da"

    goto/16 :goto_0

    :sswitch_15
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1001ac

    invoke-static {v0, v1}, Lz2/c5;->OooO0Oo(Landroid/content/Context;I)V

    const-string v0, "\u06e5\u06eb\u06d7\u06e6\u06e5\u06d8\u06dc\u06e2\u06dc\u06e2\u06e7\u06e6\u06e1\u06e5\u06d8\u06db\u06e5\u06dc\u06d8\u06dc\u06e1\u06e7\u06d8\u06e0\u06db\u06d9\u06e6\u06d6\u06d8\u06e7\u06dc\u06da\u06e7\u06e2\u06e0\u06e0\u06da\u06db\u06e6\u06e6\u06ec\u06d9\u06d8\u06d8"

    goto/16 :goto_0

    :sswitch_16
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->ooOO:Landroid/os/Handler;

    new-instance v1, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$OooOO0O;

    invoke-direct {v1, p0}, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$OooOO0O;-><init>(Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const-string v0, "\u06db\u06e5\u06d8\u06d8\u06eb\u06d9\u06d7\u06e6\u06db\u06e5\u06d8\u06df\u06e6\u06e5\u06d8\u06da\u06db\u06e7\u06e4\u06d9\u06e2\u06ec\u06e4\u06d9\u06e5\u06e6\u06df\u06e8\u06d6\u06e7\u06d7\u06eb\u06eb\u06ec\u06e1\u06d8\u06d8\u06e5\u06da\u06d7\u06dc\u06d8\u06da\u06dc\u06e8"

    goto/16 :goto_0

    :sswitch_17
    const-string v0, "\u06d7\u06d8\u06e7\u06d8\u06d7\u06e6\u06e2\u06d6\u06db\u06dc\u06d6\u06e7\u06d8\u06e6\u06e2\u06d6\u06d8\u06ec\u06d6\u06dc\u06e2\u06e0\u06d6\u06d8\u06ec\u06e0\u06db\u06ec\u06e2\u06d6\u06e6\u06e6\u06e5\u06e0\u06e1\u06db\u06da\u06e6\u06dc\u06e7\u06e0\u06e8\u06eb\u06e0\u06e5\u06d8\u06ec\u06e2\u06d6\u06d8"

    goto/16 :goto_0

    :sswitch_18
    const-string v0, "\u06d8\u06e4\u06e0\u06e7\u06ec\u06e2\u06ec\u06db\u06d8\u06d8\u06e1\u06e8\u06e7\u06e5\u06db\u06d8\u06e0\u06eb\u06d7\u06dc\u06e6\u06e1\u06d8\u06df\u06d7\u06e7\u06e4\u06e8\u06e1\u06d8\u06d8\u06e7\u06da"

    goto/16 :goto_0

    :sswitch_19
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x76df1089 -> :sswitch_16
        -0x6fc9d920 -> :sswitch_12
        -0x45b27d64 -> :sswitch_9
        -0x5b3fef9 -> :sswitch_11
        0x74e6148 -> :sswitch_13
        0x109d4524 -> :sswitch_14
        0x23140ce2 -> :sswitch_15
        0x2baeb770 -> :sswitch_19
        0x30ace5f5 -> :sswitch_19
        0x57a2f3eb -> :sswitch_1
        0x63fa7121 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x4a46d982 -> :sswitch_18
        -0x4870bf8f -> :sswitch_4
        0x5d7eea1d -> :sswitch_2
        0x7eb20d41 -> :sswitch_8
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        -0x63b3bc37 -> :sswitch_5
        -0x5f09a2fd -> :sswitch_6
        0x48fbee1f -> :sswitch_3
        0x5fb8a06e -> :sswitch_7
    .end sparse-switch

    :sswitch_data_3
    .sparse-switch
        -0x28ab08e3 -> :sswitch_a
        -0x1611c5ee -> :sswitch_17
        0x19825f4b -> :sswitch_10
        0x72451449 -> :sswitch_c
    .end sparse-switch

    :sswitch_data_4
    .sparse-switch
        -0x6c22e6b6 -> :sswitch_e
        -0x44e25cee -> :sswitch_d
        0x2f6fa4e6 -> :sswitch_b
        0x6b7ddcb2 -> :sswitch_f
    .end sparse-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9

    const/4 v2, 0x0

    const/4 v6, 0x0

    const-string v0, "\u06e0\u06e0\u06e5\u06d9\u06d8\u06d8\u06d8\u06dc\u06d9\u06e1\u06e5\u06d9\u06e1\u06d8\u06da\u06db\u06e0\u06e1\u06e1\u06e0\u06e4\u06da\u06d9\u06eb\u06dc\u06e0\u06dc\u06d6\u06d7\u06e2\u06d8\u06d8"

    move-object v1, v2

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v7, 0x262

    xor-int/2addr v2, v7

    xor-int/lit16 v2, v2, 0x2dd

    const/16 v7, 0x1e9

    const v8, -0x2d241acb

    xor-int/2addr v2, v7

    xor-int/2addr v2, v8

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d9\u06e8\u06e8\u06ec\u06d7\u06e4\u06e8\u06e1\u06e6\u06e0\u06db\u06d8\u06d8\u06e0\u06e8\u06e8\u06d8\u06e1\u06e2\u06e8\u06d8\u06e5\u06d7\u06eb\u06df\u06e6\u06e4\u06e6\u06dc\u06e8\u06d8\u06e8\u06da\u06e2\u06e4\u06e0\u06d9\u06e4\u06eb\u06d6\u06ec\u06d6\u06d8\u06d9\u06e8\u06da"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06e4\u06d8\u06d8\u06d8\u06e6\u06e4\u06d8\u06d8\u06e4\u06d8\u06e7\u06d8\u06d8\u06eb\u06d7\u06da\u06da\u06d9\u06e5\u06e4\u06d6\u06db\u06da\u06d6\u06d8\u06e1\u06ec\u06e1\u06d6\u06e6\u06d6\u06e4\u06e1\u06e6\u06e8\u06e5\u06e8\u06e1\u06da\u06eb\u06d6\u06e6\u06dc\u06e7\u06d7\u06ec\u06e0\u06e6\u06db\u06d8\u06dc\u06d8\u06d9\u06d6\u06df\u06da\u06ec\u06dc"

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const-string v0, "\u06df\u06e0\u06d9\u06d9\u06e5\u06d6\u06dc\u06e2\u06d7\u06d8\u06da\u06d9\u06e2\u06e4\u06d9\u06e7\u06ec\u06ec\u06da\u06d6\u06e0\u06e2\u06ec\u06e7\u06e0\u06e0\u06e0\u06df\u06e7\u06e5\u06e4\u06e8\u06d8\u06df\u06d8\u06d6\u06d8\u06e7\u06df\u06db\u06d9\u06d9\u06d8\u06d8"

    move v6, v2

    goto :goto_0

    :sswitch_3
    const v2, 0x1550e82d

    const-string v0, "\u06d9\u06e5\u06e6\u06e1\u06d6\u06e7\u06d8\u06d8\u06da\u06e6\u06d8\u06dc\u06df\u06e8\u06d8\u06e5\u06d9\u06da\u06da\u06e4\u06e0\u06d8\u06d7\u06e5\u06d8\u06e1\u06e4\u06ec\u06ec\u06dc\u06e1\u06e8\u06e5\u06d8\u06dc\u06e6\u06e8\u06da\u06e6\u06e0\u06eb\u06d8\u06e4\u06e2\u06e6\u06da\u06d7\u06eb\u06d6\u06d8\u06db\u06db\u06d8"

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v7

    xor-int/2addr v7, v2

    sparse-switch v7, :sswitch_data_1

    goto :goto_1

    :sswitch_4
    const-string v0, "\u06e1\u06e7\u06df\u06e4\u06da\u06e8\u06d8\u06d9\u06e1\u06e1\u06ec\u06e1\u06e6\u06e6\u06dc\u06e5\u06d8\u06df\u06e1\u06eb\u06e7\u06dc\u06da\u06eb\u06df\u06e8\u06dc\u06e6\u06e6\u06ec\u06e1\u06e5\u06d8\u06df\u06e0\u06d9\u06e1\u06e2\u06d9"

    goto :goto_0

    :sswitch_5
    const-string v0, "\u06e5\u06d8\u06dc\u06d8\u06e8\u06e0\u06ec\u06e5\u06e5\u06d8\u06e7\u06e1\u06d8\u06d8\u06e0\u06d6\u06e4\u06db\u06dc\u06e7\u06d8\u06db\u06eb\u06e5\u06d8\u06e6\u06e4\u06d9\u06e0\u06df\u06d7\u06db\u06d9\u06e0\u06dc\u06e7\u06d9\u06ec\u06dc\u06da\u06da\u06dc\u06e2\u06e1\u06e1\u06d8\u06d8\u06ec\u06e8\u06d6\u06db\u06e1\u06dc\u06d8"

    goto :goto_1

    :sswitch_6
    const v7, 0x72dd6f22

    const-string v0, "\u06d8\u06e1\u06e4\u06d6\u06dc\u06e4\u06e8\u06d8\u06e0\u06da\u06e1\u06e7\u06ec\u06eb\u06e5\u06e8\u06e8\u06dc\u06d8\u06df\u06e8\u06e4\u06e6\u06e6\u06d8\u06d6\u06e4\u06dc\u06d8\u06e2\u06e0\u06e5"

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v8

    xor-int/2addr v8, v7

    sparse-switch v8, :sswitch_data_2

    goto :goto_2

    :sswitch_7
    const-string v0, "\u06e6\u06e2\u06dc\u06d8\u06e2\u06d8\u06e4\u06e2\u06e8\u06da\u06d7\u06e2\u06dc\u06e4\u06db\u06e0\u06dc\u06e0\u06e1\u06d8\u06e4\u06ec\u06e6\u06e1\u06dc\u06e8\u06e6\u06df\u06e8\u06d8\u06d9\u06d7\u06d8\u06d6\u06d8\u06d6\u06e2\u06dc\u06d8\u06d8"

    goto :goto_1

    :cond_0
    const-string v0, "\u06dc\u06e0\u06d6\u06d8\u06e0\u06df\u06e0\u06d9\u06e2\u06df\u06e8\u06e0\u06e5\u06d8\u06e1\u06e2\u06e5\u06d8\u06da\u06df\u06e5\u06d9\u06e1\u06e0\u06eb\u06e6\u06dc\u06eb\u06dc\u06eb\u06eb\u06e8\u06e1\u06d8"

    goto :goto_2

    :sswitch_8
    const v0, 0x7f0902d6

    if-eq v6, v0, :cond_0

    const-string v0, "\u06dc\u06e4\u06d6\u06d8\u06e5\u06d8\u06e1\u06d6\u06ec\u06e0\u06e7\u06eb\u06dc\u06d8\u06e4\u06d6\u06e6\u06e5\u06e6\u06e5\u06eb\u06dc\u06e7\u06d8\u06e1\u06e4\u06db\u06ec\u06e1\u06d6\u06dc\u06dc\u06d8\u06e6\u06e0\u06e1\u06d8\u06e4\u06d8\u06d8\u06e6\u06e7\u06db\u06e5\u06e8\u06d7\u06e6\u06e7\u06d9\u06e5\u06d6\u06eb\u06d6\u06d8\u06e1\u06ec\u06df\u06df"

    goto :goto_2

    :sswitch_9
    const-string v0, "\u06db\u06e1\u06e4\u06e8\u06ec\u06db\u06da\u06ec\u06e1\u06e7\u06d7\u06e2\u06d9\u06e8\u06d8\u06dc\u06e1\u06dc\u06d8\u06d7\u06da\u06da\u06da\u06eb\u06e8\u06d8\u06e8\u06d8\u06eb\u06db\u06da\u06e7"

    goto :goto_2

    :sswitch_a
    const-string v0, "\u06ec\u06df\u06e8\u06d8\u06ec\u06d7\u06df\u06e2\u06e5\u06d9\u06d9\u06e1\u06e8\u06d7\u06e7\u06eb\u06df\u06db\u06e5\u06d9\u06e4\u06ec\u06e7\u06d7\u06d6\u06d8\u06ec\u06d8\u06eb\u06db\u06d7\u06e5\u06d8\u06e1\u06dc\u06e7\u06e4\u06e8\u06ec"

    goto :goto_1

    :sswitch_b
    const-string v0, "\u06df\u06db\u06e1\u06e2\u06ec\u06df\u06d6\u06e0\u06e1\u06d9\u06d9\u06d9\u06d9\u06e1\u06d6\u06d9\u06df\u06e8\u06d8\u06db\u06e7\u06d9\u06ec\u06e1\u06dc\u06e6\u06d8\u06e0\u06d8\u06e2\u06dc\u06e5\u06dc\u06e6\u06d6\u06db\u06e1\u06ec\u06da\u06e8\u06e6\u06e6\u06e0\u06d6\u06db\u06e8\u06d8\u06d6\u06e7\u06e8"

    goto :goto_0

    :sswitch_c
    const v2, 0x2674606e

    const-string v0, "\u06ec\u06eb\u06e2\u06d7\u06d8\u06eb\u06db\u06da\u06eb\u06d9\u06d6\u06e2\u06ec\u06e6\u06d8\u06d8\u06d6\u06e7\u06dc\u06e5\u06da\u06e5\u06d8\u06e5\u06e6\u06df\u06e6\u06d8\u06e8\u06d8\u06e2\u06d8\u06df\u06e1\u06d7\u06dc\u06d8\u06e8\u06dc\u06da"

    :goto_3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v7

    xor-int/2addr v7, v2

    sparse-switch v7, :sswitch_data_3

    goto :goto_3

    :sswitch_d
    const-string v0, "\u06e2\u06db\u06d8\u06d6\u06e8\u06e8\u06d8\u06eb\u06df\u06d6\u06d8\u06d7\u06ec\u06e1\u06d8\u06e8\u06e6\u06e7\u06d8\u06e6\u06e1\u06e5\u06ec\u06e2\u06ec\u06e7\u06eb\u06d8\u06d8\u06d8\u06e5\u06e5\u06d8\u06d9\u06db\u06e4\u06e0\u06da\u06d6\u06d8\u06e0\u06eb\u06e5\u06d8\u06d8\u06db\u06e8\u06d8\u06e1\u06e1\u06d7\u06d9\u06da\u06db\u06e5\u06db\u06e5\u06d8\u06dc\u06db\u06e1\u06e0\u06e1\u06e7"

    goto :goto_3

    :sswitch_e
    const-string v0, "\u06ec\u06e0\u06d7\u06dc\u06d7\u06e7\u06e5\u06dc\u06e4\u06db\u06e0\u06d8\u06d8\u06d9\u06e6\u06e8\u06d6\u06d7\u06d8\u06e2\u06ec\u06eb\u06e4\u06e1\u06e6\u06d8\u06e5\u06d6\u06e2\u06e2\u06d6\u06e7\u06e2\u06eb\u06df\u06da\u06e6\u06df\u06db\u06df"

    goto :goto_3

    :sswitch_f
    const v7, -0x17613f7d

    const-string v0, "\u06e2\u06d7\u06d8\u06dc\u06e6\u06df\u06ec\u06e7\u06d6\u06da\u06da\u06ec\u06d8\u06d8\u06d6\u06d8\u06d6\u06eb\u06e8\u06e1\u06e7\u06d6\u06d8\u06db\u06d8\u06e7\u06e5\u06d9\u06d6\u06ec\u06d9\u06e8\u06db\u06e1\u06ec\u06ec\u06e0\u06eb\u06d9\u06d9\u06e0\u06d6\u06ec\u06e6"

    :goto_4
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v8

    xor-int/2addr v8, v7

    sparse-switch v8, :sswitch_data_4

    goto :goto_4

    :sswitch_10
    const-string v0, "\u06eb\u06e4\u06e1\u06db\u06e0\u06e6\u06d8\u06e1\u06ec\u06df\u06d7\u06e6\u06e0\u06e4\u06e5\u06d8\u06eb\u06e8\u06e5\u06e8\u06e6\u06e1\u06d6\u06d7\u06db\u06e6\u06dc\u06db\u06e4\u06e5\u06e7\u06d8"

    goto :goto_4

    :cond_1
    const-string v0, "\u06eb\u06db\u06e1\u06d8\u06e7\u06e1\u06eb\u06db\u06d7\u06e6\u06d7\u06e0\u06e5\u06e1\u06d8\u06e7\u06d8\u06df\u06e1\u06d7\u06e2\u06e7\u06d6\u06d8\u06da\u06db\u06ec\u06e4\u06d7\u06eb\u06e2\u06e4\u06dc\u06d8\u06dc\u06e0\u06dc\u06e5\u06e5\u06d8\u06e1\u06dc\u06e1\u06d8\u06d6\u06d8\u06e7"

    goto :goto_4

    :sswitch_11
    const v0, 0x7f0902d8

    if-eq v6, v0, :cond_1

    const-string v0, "\u06e4\u06e0\u06d6\u06d8\u06e6\u06ec\u06e0\u06d9\u06e5\u06e5\u06d8\u06da\u06e5\u06d8\u06e4\u06df\u06e1\u06d8\u06d6\u06e6\u06e7\u06d8\u06e0\u06dc\u06e2\u06e6\u06e0\u06d6\u06e4\u06df\u06e5\u06e4\u06df\u06d8\u06d8\u06e5\u06d6\u06d8\u06d8\u06ec\u06e4\u06db"

    goto :goto_4

    :sswitch_12
    const-string v0, "\u06ec\u06e7\u06d8\u06d8\u06dc\u06dc\u06e5\u06e6\u06dc\u06d9\u06e4\u06e5\u06d8\u06d7\u06df\u06da\u06ec\u06d9\u06db\u06e6\u06d6\u06d8\u06d8\u06e1\u06db\u06d7\u06d8\u06d9\u06d9\u06d8\u06e5\u06d9\u06e6\u06e0\u06e5\u06eb\u06e5\u06e7\u06d8"

    goto :goto_3

    :sswitch_13
    const-string v0, "\u06e1\u06e0\u06dc\u06e5\u06e7\u06eb\u06d8\u06e7\u06e5\u06d8\u06da\u06d7\u06d8\u06e5\u06e0\u06dc\u06e0\u06e5\u06df\u06e1\u06e7\u06e6\u06d8\u06db\u06e7\u06e1\u06d8\u06db\u06dc\u06d6\u06d6\u06db\u06df\u06df\u06d9\u06d6\u06d8\u06eb\u06d8\u06eb"

    goto/16 :goto_0

    :sswitch_14
    new-instance v5, Landroid/content/Intent;

    const-class v0, Lcom/cyjh/elfin/ui/activity/SettingActivity;

    invoke-direct {v5, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "\u06d9\u06e1\u06e7\u06d8\u06e6\u06e7\u06d8\u06e2\u06e1\u06e1\u06ec\u06d6\u06d8\u06db\u06e7\u06dc\u06d8\u06e8\u06d7\u06e6\u06e7\u06e4\u06e1\u06d8\u06e5\u06dc\u06ec\u06df\u06e5\u06da\u06dc\u06e7\u06eb\u06eb\u06df\u06e7\u06d9\u06e6\u06d8\u06e6\u06df\u06ec\u06df\u06dc\u06e4\u06eb\u06e8\u06db\u06e4\u06d6\u06e1\u06e4\u06d8\u06eb\u06d7\u06d9\u06e6\u06d8"

    goto/16 :goto_0

    :sswitch_15
    const-string v0, "\u06e0\u06e5\u06e8\u06d8\u06d7\u06e5\u06da\u06e0\u06e2\u06d7\u06d6\u06d8\u06e6\u06d8\u06d9\u06da\u06d7\u06d7\u06e6\u06da\u06e0\u06df\u06d8\u06ec\u06e0\u06db\u06d8\u06e1\u06eb\u06d9\u06e1\u06dc\u06d8\u06d7\u06db\u06dc\u06e4\u06d6\u06d6\u06e8\u06dc\u06d6\u06d8\u06e7\u06df\u06db\u06d6\u06eb\u06dc\u06d8\u06dc\u06e7\u06ec\u06e0\u06ec\u06dc\u06eb\u06dc\u06d7"

    move-object v4, v5

    goto/16 :goto_0

    :sswitch_16
    invoke-virtual {p0, v4}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const-string v0, "\u06e7\u06db\u06e1\u06e5\u06dc\u06d9\u06da\u06e0\u06d8\u06e6\u06df\u06d7\u06e6\u06eb\u06e5\u06ec\u06d9\u06e8\u06e5\u06e6\u06d6\u06d8\u06e4\u06dc\u06e5\u06dc\u06d9\u06e6\u06d8\u06e7\u06e6\u06d7\u06da\u06d8\u06e4\u06d7\u06d7\u06e5\u06e2\u06e5\u06d8\u06e5\u06e6\u06e8\u06d9\u06e7\u06e5\u06dc\u06e2\u06eb"

    goto/16 :goto_0

    :sswitch_17
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->o00Ooo:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    const-string v0, "\u06e7\u06d6\u06e7\u06d8\u06d7\u06e2\u06d6\u06e6\u06ec\u06e8\u06e8\u06e7\u06df\u06e0\u06d6\u06e4\u06df\u06db\u06e6\u06d8\u06dc\u06dc\u06e5\u06d8\u06d7\u06e0\u06eb\u06e4\u06d9\u06e5\u06d8\u06e7\u06e2\u06e7\u06e4\u06e5\u06da\u06ec\u06d8\u06e5\u06d8\u06e5\u06db\u06db\u06e5\u06e8\u06e5\u06d8\u06e7\u06e5\u06e6\u06d9\u06e1\u06e1\u06d7\u06d6\u06e7\u06d8\u06e6\u06d9\u06e0"

    goto/16 :goto_0

    :sswitch_18
    new-instance v2, Landroid/content/Intent;

    const-class v0, Lcom/cyjh/elfin/ui/activity/MessagePushActivity;

    invoke-direct {v2, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "\u06dc\u06eb\u06d8\u06e8\u06e8\u06e6\u06d8\u06e5\u06d7\u06e8\u06d8\u06db\u06dc\u06e0\u06df\u06df\u06d6\u06e6\u06e8\u06e6\u06db\u06d9\u06e4\u06e1\u06eb\u06d8\u06eb\u06e5\u06d8\u06e8\u06d6\u06d8"

    move-object v3, v2

    goto/16 :goto_0

    :sswitch_19
    iget-object v0, p0, Lcom/cyjh/common/base/activity/BaseModelActivity;->OooooO0:Landroidx/lifecycle/AndroidViewModel;

    check-cast v0, Lz2/na;

    invoke-virtual {v0}, Lz2/na;->OooOooO()Ljava/util/ArrayList;

    move-result-object v1

    const-string v0, "\u06db\u06e1\u06e5\u06d8\u06e8\u06d7\u06d8\u06d8\u06d7\u06eb\u06e5\u06d8\u06da\u06dc\u06e1\u06db\u06d9\u06d6\u06d8\u06d7\u06d6\u06e7\u06d7\u06ec\u06d6\u06d8\u06d6\u06db\u06d9\u06db\u06d7\u06e1\u06d6\u06e8\u06da\u06e5\u06e7\u06db\u06d9\u06e8\u06ec"

    goto/16 :goto_0

    :sswitch_1a
    const-string v0, "\u06d6\u06d8\u06e6\u06d8\u06e5\u06d7\u06e2\u06dc\u06e1\u06e1\u06d6\u06eb\u06e8\u06d8\u06ec\u06e2\u06dc\u06db\u06d6\u06e5\u06d8\u06e5\u06e7\u06db\u06e4\u06e0\u06e4\u06dc\u06dc\u06e8"

    move-object v4, v3

    goto/16 :goto_0

    :sswitch_1b
    const v2, -0x786204c6

    const-string v0, "\u06e0\u06e6\u06e1\u06d8\u06d9\u06dc\u06d8\u06e1\u06d7\u06d8\u06d8\u06e7\u06e6\u06d9\u06d9\u06db\u06eb\u06db\u06dc\u06dc\u06d8\u06ec\u06e2\u06e6\u06d8\u06df\u06dc\u06e4\u06ec\u06df\u06ec\u06e2\u06eb\u06d7\u06df\u06eb\u06d7\u06d7\u06eb\u06e6\u06e6\u06eb\u06dc\u06ec\u06da\u06e7\u06dc\u06df\u06d7\u06df\u06e1"

    :goto_5
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v7

    xor-int/2addr v7, v2

    sparse-switch v7, :sswitch_data_5

    goto :goto_5

    :sswitch_1c
    const-string v0, "\u06d9\u06d8\u06ec\u06d7\u06e2\u06d6\u06d8\u06d7\u06df\u06d8\u06eb\u06e0\u06dc\u06e7\u06d9\u06e8\u06d8\u06e1\u06d8\u06e0\u06d7\u06e5\u06d8\u06eb\u06e5\u06e6\u06eb\u06e6\u06e1\u06d8\u06eb\u06e5\u06e1\u06e0\u06e8\u06e0\u06da\u06e2\u06dc"

    goto/16 :goto_0

    :sswitch_1d
    const-string v0, "\u06e1\u06e8\u06ec\u06e2\u06e7\u06e4\u06e7\u06e6\u06d6\u06d8\u06e8\u06d7\u06e8\u06d8\u06e2\u06dc\u06d6\u06da\u06e0\u06e6\u06da\u06ec\u06dc\u06db\u06df\u06e0\u06e2\u06e7\u06d9\u06df\u06d6\u06e1\u06d8\u06e0\u06e1\u06e8\u06e5\u06e8\u06dc\u06eb\u06eb\u06d9\u06e5\u06d8\u06dc\u06e4\u06d6\u06e8\u06d8\u06e6\u06da\u06d6"

    goto :goto_5

    :sswitch_1e
    const v7, 0x6bd8c5c9

    const-string v0, "\u06da\u06e6\u06e5\u06d8\u06db\u06d6\u06d9\u06eb\u06d8\u06e5\u06d8\u06e5\u06e1\u06e6\u06d8\u06e8\u06e2\u06d8\u06dc\u06e5\u06e8\u06d8\u06d9\u06e5\u06e6\u06df\u06eb\u06e4\u06e4\u06d6\u06d8\u06e2\u06e6\u06e1\u06d8\u06dc\u06da\u06df\u06e2\u06e2\u06da"

    :goto_6
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v8

    xor-int/2addr v8, v7

    sparse-switch v8, :sswitch_data_6

    goto :goto_6

    :sswitch_1f
    const-string v0, "\u06d9\u06e7\u06e5\u06d8\u06eb\u06d8\u06e6\u06d8\u06dc\u06e2\u06dc\u06ec\u06da\u06ec\u06e4\u06e6\u06e1\u06d8\u06e5\u06df\u06eb\u06d7\u06eb\u06e5\u06d8\u06ec\u06e8\u06e8\u06e6\u06ec\u06e5\u06e5\u06d6\u06e0\u06e2\u06dc\u06e8\u06e1\u06d7\u06d7\u06db\u06df\u06d6\u06df\u06e6\u06d8\u06d8\u06d8\u06eb\u06eb\u06e1\u06df\u06d6\u06db\u06e7\u06d8\u06e4\u06dc\u06d7"

    goto :goto_6

    :cond_2
    const-string v0, "\u06e8\u06d9\u06e0\u06da\u06e2\u06e4\u06eb\u06d8\u06e2\u06e4\u06eb\u06e4\u06e1\u06e5\u06d8\u06e8\u06e6\u06e2\u06df\u06df\u06dc\u06d8\u06e5\u06e6\u06df\u06e4\u06eb\u06d9\u06d8\u06ec\u06e1\u06d8\u06e0\u06d6\u06dc\u06d8\u06e6\u06eb\u06e8\u06eb\u06db\u06e6\u06da\u06d6\u06d9\u06eb\u06d9\u06e7\u06da\u06d9\u06ec\u06e1\u06df\u06e2\u06e1\u06eb\u06e6"

    goto :goto_6

    :sswitch_20
    if-eqz v1, :cond_2

    const-string v0, "\u06e1\u06dc\u06df\u06dc\u06da\u06e7\u06d9\u06e2\u06d9\u06e4\u06dc\u06e6\u06d9\u06e1\u06d6\u06d8\u06df\u06e2\u06dc\u06d8\u06da\u06e6\u06d8\u06eb\u06e7\u06e4\u06ec\u06d6\u06e8\u06d9\u06e7\u06dc\u06d8"

    goto :goto_6

    :sswitch_21
    const-string v0, "\u06e0\u06ec\u06e0\u06e7\u06eb\u06dc\u06e1\u06d8\u06d8\u06dc\u06eb\u06d8\u06d6\u06d9\u06db\u06e7\u06e5\u06e5\u06e8\u06d7\u06e0\u06e5\u06d7\u06eb\u06ec\u06e1\u06e6\u06da"

    goto :goto_5

    :sswitch_22
    const-string v0, "\u06e2\u06db\u06e5\u06e4\u06e0\u06e8\u06e0\u06e8\u06da\u06e1\u06e6\u06ec\u06d9\u06e5\u06d8\u06e5\u06ec\u06d6\u06da\u06e6\u06d9\u06d9\u06d8\u06d8\u06da\u06e2\u06e8\u06e8\u06e7\u06df\u06ec\u06da\u06e2\u06ec\u06e6\u06d8\u06d8\u06d7\u06eb\u06d8\u06d8\u06e5\u06e5\u06db"

    goto :goto_5

    :sswitch_23
    const-string v0, "\u06e0\u06e2\u06e6\u06d6\u06e0\u06e5\u06d8\u06d9\u06d8\u06e0\u06e2\u06d8\u06d8\u06eb\u06ec\u06d8\u06e1\u06df\u06eb\u06d9\u06e2\u06e5\u06e5\u06df\u06e6\u06e8\u06e8\u06ec\u06ec\u06e0\u06e1\u06d8"

    move-object v4, v3

    goto/16 :goto_0

    :sswitch_24
    const v2, 0x24d0ceb8

    const-string v0, "\u06e5\u06e0\u06e5\u06e4\u06d8\u06e0\u06ec\u06e2\u06e1\u06d8\u06d6\u06d8\u06ec\u06d8\u06da\u06dc\u06d9\u06df\u06e7\u06e6\u06eb\u06d9\u06e2\u06e5\u06e0\u06ec\u06dc\u06e0\u06e6\u06ec\u06db\u06d6\u06e2\u06d7\u06da\u06e1\u06d7\u06ec\u06d6\u06d8\u06db\u06e5\u06e8\u06e6\u06df\u06ec\u06d7\u06e6\u06d6"

    :goto_7
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v7

    xor-int/2addr v7, v2

    sparse-switch v7, :sswitch_data_7

    goto :goto_7

    :sswitch_25
    const-string v0, "\u06e1\u06df\u06e1\u06df\u06da\u06d6\u06e0\u06e8\u06d8\u06dc\u06dc\u06d8\u06db\u06e8\u06ec\u06da\u06d8\u06d6\u06d8\u06e5\u06db\u06d8\u06d8\u06eb\u06e8\u06e5\u06d8\u06d6\u06dc\u06d6\u06d8\u06d8\u06da\u06dc"

    goto :goto_7

    :sswitch_26
    const-string v0, "\u06e6\u06dc\u06e1\u06e7\u06da\u06d9\u06db\u06e1\u06e8\u06df\u06dc\u06d7\u06dc\u06eb\u06e2\u06db\u06d6\u06d8\u06eb\u06e4\u06d9\u06e0\u06d9\u06e1\u06d9\u06d6\u06e0\u06eb\u06d6\u06e8"

    goto :goto_7

    :sswitch_27
    const v7, 0x6b8a1c0e

    const-string v0, "\u06e7\u06da\u06d8\u06d8\u06dc\u06df\u06e7\u06e5\u06e2\u06e5\u06e5\u06e6\u06dc\u06d8\u06eb\u06ec\u06da\u06eb\u06df\u06e7\u06e1\u06e6\u06e5\u06d8\u06e4\u06dc\u06da\u06da\u06d7\u06e1\u06d6\u06d8\u06db"

    :goto_8
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v8

    xor-int/2addr v8, v7

    sparse-switch v8, :sswitch_data_8

    goto :goto_8

    :sswitch_28
    const-string v0, "\u06eb\u06d8\u06d8\u06d8\u06d9\u06df\u06ec\u06dc\u06dc\u06dc\u06d8\u06ec\u06e6\u06e1\u06e6\u06d6\u06e6\u06d8\u06e5\u06d6\u06e6\u06d8\u06e4\u06e6\u06e6\u06ec\u06e2\u06e8\u06d8\u06d6\u06e6\u06e2\u06d6\u06e8\u06dc\u06df\u06da\u06d9\u06dc\u06d6\u06e8\u06d6\u06e0\u06e7\u06ec\u06e7\u06e1\u06d7\u06ec\u06ec\u06e4\u06eb\u06d6\u06d8\u06df\u06df\u06dc\u06d8\u06e7\u06d8\u06dc\u06d8"

    goto :goto_7

    :cond_3
    const-string v0, "\u06ec\u06eb\u06d6\u06e7\u06e4\u06d9\u06d9\u06d7\u06e5\u06e4\u06e8\u06da\u06dc\u06d6\u06d8\u06e1\u06df\u06e2\u06d8\u06ec\u06d8\u06e7\u06da\u06d9\u06df\u06dc\u06e0\u06e5\u06d8\u06d7\u06ec\u06e1\u06d8\u06e4\u06db\u06eb\u06df\u06e7\u06d8\u06d8\u06e7\u06df\u06e6\u06dc\u06df\u06d6\u06d8\u06e8\u06e8\u06e5"

    goto :goto_8

    :sswitch_29
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    const-string v0, "\u06db\u06e5\u06e6\u06d9\u06d6\u06ec\u06e2\u06d9\u06e0\u06e2\u06da\u06d8\u06d8\u06e0\u06dc\u06df\u06df\u06d6\u06e5\u06d7\u06e8\u06df\u06e5\u06df\u06e6\u06d8\u06e6\u06e4\u06e6\u06e4\u06e7\u06d8\u06e1\u06e0\u06d7\u06e5\u06e7\u06da\u06d6\u06e8\u06eb\u06e5\u06d9\u06e5\u06e8\u06e1\u06e5\u06d8\u06e8\u06e4\u06e4"

    goto :goto_8

    :sswitch_2a
    const-string v0, "\u06e8\u06da\u06d6\u06da\u06e6\u06e6\u06e0\u06ec\u06da\u06db\u06da\u06dc\u06d7\u06e6\u06e7\u06da\u06ec\u06ec\u06dc\u06df\u06e6\u06df\u06e6\u06d8\u06d8\u06e7\u06e5\u06d8\u06eb\u06e2\u06e2\u06e4\u06ec\u06d7\u06d9\u06d6\u06e1\u06d8\u06db\u06e4\u06e5\u06e2\u06e0\u06e5\u06e8\u06e4\u06e4\u06d6\u06e7\u06d8"

    goto :goto_8

    :sswitch_2b
    const-string v0, "\u06eb\u06e6\u06e1\u06d8\u06e6\u06d6\u06e2\u06df\u06da\u06d7\u06e0\u06e8\u06eb\u06ec\u06e1\u06e2\u06e1\u06e4\u06e1\u06e6\u06e2\u06e5\u06e4\u06da\u06d7\u06eb\u06d8\u06d8\u06d7\u06da\u06e8\u06d8\u06e4\u06df\u06db\u06d8\u06e6\u06e7\u06d8"

    goto/16 :goto_0

    :sswitch_2c
    const-string v0, "msg_data"

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const-string v0, "\u06da\u06da\u06e0\u06e5\u06ec\u06e0\u06d9\u06e4\u06e6\u06d8\u06ec\u06e1\u06e0\u06e5\u06da\u06e2\u06df\u06df\u06e4\u06e2\u06e6\u06e1\u06d8\u06d6\u06db\u06e7\u06da\u06eb\u06d8\u06e5\u06ec\u06da\u06e4\u06d9\u06dc\u06d8\u06eb\u06db\u06e4"

    goto/16 :goto_0

    :sswitch_2d
    const-string v0, "\u06e1\u06df\u06d6\u06db\u06da\u06e8\u06e0\u06e5\u06d7\u06e6\u06df\u06d6\u06e4\u06eb\u06ec\u06e6\u06df\u06e8\u06d8\u06e8\u06e4\u06ec\u06d6\u06e2\u06e7\u06d8\u06e6\u06ec\u06e0\u06ec\u06eb\u06e0\u06e5\u06e6\u06e4\u06e7\u06e6\u06d8\u06db\u06e6\u06e1\u06d8\u06e7\u06e8\u06da\u06e4\u06e5\u06df\u06d7\u06e7\u06d8\u06d8\u06d8\u06e8\u06e5\u06d8\u06d9\u06e2\u06dc"

    move-object v4, v3

    goto/16 :goto_0

    :sswitch_2e
    const-string v0, "\u06e2\u06d9\u06d6\u06e2\u06d8\u06e7\u06d8\u06e6\u06db\u06d9\u06e1\u06da\u06da\u06d7\u06e8\u06e6\u06e4\u06e8\u06e5\u06ec\u06da\u06ec\u06e0\u06d6\u06e0\u06d8\u06e6\u06e2\u06e7\u06d8\u06d7\u06ec\u06e6\u06e8\u06e2\u06d7\u06e7\u06dc\u06e4\u06e1\u06ec\u06e8\u06d6\u06d8\u06ec\u06e2\u06e6\u06e8\u06e6\u06df\u06e8\u06e8\u06d9\u06dc\u06d8"

    goto/16 :goto_0

    :sswitch_2f
    const-string v0, "\u06e0\u06e5\u06e8\u06d8\u06d7\u06e5\u06da\u06e0\u06e2\u06d7\u06d6\u06d8\u06e6\u06d8\u06d9\u06da\u06d7\u06d7\u06e6\u06da\u06e0\u06df\u06d8\u06ec\u06e0\u06db\u06d8\u06e1\u06eb\u06d9\u06e1\u06dc\u06d8\u06d7\u06db\u06dc\u06e4\u06d6\u06d6\u06e8\u06dc\u06d6\u06d8\u06e7\u06df\u06db\u06d6\u06eb\u06dc\u06d8\u06dc\u06e7\u06ec\u06e0\u06ec\u06dc\u06eb\u06dc\u06d7"

    goto/16 :goto_0

    :sswitch_30
    const-string v0, "\u06e5\u06db\u06eb\u06dc\u06d6\u06dc\u06df\u06d8\u06e1\u06df\u06da\u06e1\u06e7\u06df\u06d9\u06e4\u06d7\u06d7\u06e8\u06d8\u06e8\u06dc\u06dc\u06d9\u06d9\u06d9\u06e5\u06dc\u06df\u06e7\u06d7\u06e1\u06db\u06e6\u06d8"

    goto/16 :goto_0

    :sswitch_31
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7b88a2a6 -> :sswitch_23
        -0x62d733b9 -> :sswitch_1
        -0x60afd5d7 -> :sswitch_1b
        -0x5728d307 -> :sswitch_30
        -0x4b51b9f8 -> :sswitch_2
        -0x40634171 -> :sswitch_17
        -0x334003be -> :sswitch_2f
        -0x2f4fb0d1 -> :sswitch_1a
        -0xf618fe1 -> :sswitch_30
        -0x48d5d82 -> :sswitch_0
        0x31ce575 -> :sswitch_16
        0x1e612376 -> :sswitch_31
        0x23a7daac -> :sswitch_24
        0x2a8a1471 -> :sswitch_3
        0x34423f12 -> :sswitch_2c
        0x46378587 -> :sswitch_19
        0x588bc765 -> :sswitch_15
        0x5be2949d -> :sswitch_14
        0x63d2269f -> :sswitch_2d
        0x77282aa2 -> :sswitch_18
        0x790c949c -> :sswitch_c
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x3c190c16 -> :sswitch_4
        0x3732394d -> :sswitch_b
        0x3b762db0 -> :sswitch_a
        0x76a61c8e -> :sswitch_6
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        -0x6804b6c3 -> :sswitch_5
        -0x1b338a99 -> :sswitch_9
        -0x11195a8b -> :sswitch_7
        0x38b80d3 -> :sswitch_8
    .end sparse-switch

    :sswitch_data_3
    .sparse-switch
        -0x74ff1c5f -> :sswitch_d
        -0x642b2884 -> :sswitch_f
        -0x922be8d -> :sswitch_13
        0x6f1c2700 -> :sswitch_2e
    .end sparse-switch

    :sswitch_data_4
    .sparse-switch
        -0x3f611a15 -> :sswitch_10
        -0x3936542d -> :sswitch_e
        -0x26783650 -> :sswitch_12
        -0x1dc242f3 -> :sswitch_11
    .end sparse-switch

    :sswitch_data_5
    .sparse-switch
        -0x79bb56ea -> :sswitch_22
        -0x30e1c08a -> :sswitch_2f
        0xee340c7 -> :sswitch_1c
        0x2d74dc89 -> :sswitch_1e
    .end sparse-switch

    :sswitch_data_6
    .sparse-switch
        -0x79941bf3 -> :sswitch_1d
        -0x38d3f603 -> :sswitch_21
        -0x19f7b0b7 -> :sswitch_1f
        0x3ab342bb -> :sswitch_20
    .end sparse-switch

    :sswitch_data_7
    .sparse-switch
        -0x45deb6ff -> :sswitch_27
        -0x3250684b -> :sswitch_2b
        0x3e32af27 -> :sswitch_2f
        0x4c5d5c5d -> :sswitch_25
    .end sparse-switch

    :sswitch_data_8
    .sparse-switch
        -0x70fbf2c8 -> :sswitch_2a
        -0x62a3e1da -> :sswitch_26
        0x5322257 -> :sswitch_28
        0x59e73f1f -> :sswitch_29
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    const-string v0, "\u06e6\u06da\u06e4\u06e7\u06e0\u06df\u06e1\u06eb\u06d8\u06d8\u06e1\u06df\u06e6\u06d8\u06db\u06e8\u06e1\u06e0\u06dc\u06e5\u06d8\u06eb\u06d6\u06dc\u06ec\u06e0\u06e8\u06d8\u06db\u06d9\u06e2\u06e6\u06d7\u06e6\u06d8\u06df\u06dc\u06ec\u06df\u06df\u06e4"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x226

    xor-int/2addr v1, v2

    xor-int/lit8 v1, v1, 0x71

    const/16 v2, 0xab

    const v3, 0x6b340a59

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e6\u06eb\u06e1\u06d7\u06da\u06e1\u06ec\u06e1\u06d8\u06e2\u06e7\u06db\u06e1\u06d7\u06e7\u06d7\u06e6\u06e0\u06d8\u06eb\u06d8\u06d7\u06dc\u06e0\u06eb\u06e7\u06e1\u06d8\u06ec\u06e0\u06d6\u06e5\u06df\u06e2\u06d6\u06d8\u06e8\u06d9\u06e6\u06e7\u06d8\u06e8\u06ec\u06dc"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06e6\u06e8\u06e8\u06d8\u06d9\u06eb\u06e5\u06e6\u06e6\u06d7\u06e7\u06e2\u06e6\u06e7\u06e1\u06db\u06eb\u06e7\u06e6\u06d8\u06e2\u06da\u06da\u06e6\u06d7\u06e1\u06d8\u06db\u06e1\u06d9\u06ec\u06d9\u06e6\u06ec\u06e6\u06d8\u06e6\u06d7\u06e6\u06d8"

    goto :goto_0

    :sswitch_2
    invoke-super {p0, p1}, Lcom/cyjh/common/base/activity/BaseModelActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "\u06df\u06e2\u06e6\u06d8\u06ec\u06d9\u06e5\u06da\u06e2\u06e4\u06d8\u06e6\u06da\u06e6\u06e2\u06e5\u06d8\u06e2\u06d6\u06e6\u06d8\u06da\u06e1\u06e6\u06eb\u06e8\u06e1\u06e2\u06e6\u06d7\u06df\u06df\u06e8\u06e7\u06d9\u06e5\u06db\u06dc\u06e1\u06d8\u06e2\u06db\u06d6\u06d8\u06d6\u06dc\u06d6\u06d8\u06e2\u06e2\u06e8\u06d8\u06df\u06da\u06e1"

    goto :goto_0

    :sswitch_3
    invoke-direct {p0}, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->OooooO0()V

    const-string v0, "\u06df\u06df\u06d9\u06ec\u06da\u06e5\u06e4\u06eb\u06d8\u06d8\u06ec\u06da\u06dc\u06d8\u06df\u06e8\u06e8\u06d8\u06d8\u06db\u06e6\u06d8\u06e4\u06e6\u06dc\u06e6\u06eb\u06d6\u06d8\u06d6\u06dc\u06e7\u06d8\u06d6\u06e7\u06df\u06dc\u06e6\u06d8\u06d8\u06d9\u06eb\u06d6\u06e7\u06e6\u06e8\u06e2\u06e0\u06df\u06e7\u06e1\u06eb\u06db\u06d9\u06e5\u06d8"

    goto :goto_0

    :sswitch_4
    invoke-direct {p0}, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->initListener()V

    const-string v0, "\u06df\u06e7\u06d8\u06d8\u06d7\u06e5\u06ec\u06e6\u06ec\u06e5\u06e7\u06e0\u06d8\u06d8\u06df\u06d7\u06dc\u06d8\u06e0\u06e2\u06ec\u06e5\u06e1\u06d8\u06e0\u06e6\u06db\u06e5\u06e4\u06d6\u06e1\u06d7\u06e0\u06d8\u06e6\u06eb\u06e8\u06e5\u06ec"

    goto :goto_0

    :sswitch_5
    invoke-direct {p0}, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->Ooooo0o()V

    const-string v0, "\u06dc\u06da\u06d6\u06d8\u06e2\u06e2\u06e0\u06e6\u06e1\u06e4\u06e4\u06da\u06d8\u06db\u06e8\u06d8\u06db\u06db\u06d9\u06e4\u06e4\u06dc\u06d8\u06d8\u06d6\u06df\u06dc\u06d6\u06d8\u06e8\u06d9\u06d9\u06dc\u06e2\u06e2\u06d6\u06eb\u06dc\u06d9\u06d9\u06dc\u06d8\u06d8\u06d8\u06ec"

    goto :goto_0

    :sswitch_6
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5cdcf8a3 -> :sswitch_1
        -0x4a19a2c8 -> :sswitch_6
        -0x4495f041 -> :sswitch_0
        0x1de66597 -> :sswitch_5
        0x2ff5cfef -> :sswitch_3
        0x3490ab46 -> :sswitch_4
        0x6cf57f2e -> :sswitch_2
    .end sparse-switch
.end method

.method public onDestroy()V
    .locals 5

    const/4 v4, 0x0

    const-string v0, "\u06e5\u06e8\u06db\u06e8\u06d6\u06e2\u06df\u06e6\u06d7\u06d8\u06eb\u06e6\u06d8\u06d7\u06df\u06e6\u06d8\u06ec\u06d6\u06db\u06e8\u06ec\u06eb\u06e2\u06d8\u06d6\u06e0\u06dc\u06d8\u06e6\u06da\u06e6\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x46

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x130

    const/16 v2, 0x2a8

    const v3, 0x17977930

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06ec\u06db\u06df\u06e6\u06d6\u06da\u06d9\u06e8\u06d7\u06d7\u06e7\u06e6\u06e2\u06e2\u06da\u06d9\u06ec\u06df\u06eb\u06e4\u06e6\u06e1\u06e1\u06e2\u06e6\u06db\u06e4\u06da\u06d9\u06e5\u06d9\u06e8\u06e2\u06d7\u06e6\u06d7\u06e0\u06eb\u06e5\u06e2\u06e7"

    goto :goto_0

    :sswitch_1
    invoke-super {p0}, Lcom/cyjh/common/base/activity/BaseActivity;->onDestroy()V

    const-string v0, "\u06d8\u06e1\u06e6\u06e1\u06df\u06ec\u06da\u06e1\u06d8\u06d8\u06ec\u06e4\u06ec\u06e5\u06d6\u06e6\u06d8\u06e4\u06e5\u06e1\u06e8\u06e0\u06df\u06ec\u06e6\u06e4\u06df\u06e5\u06e7\u06db\u06d7\u06d8\u06e4\u06dc\u06d8\u06e0\u06e6\u06e5\u06d8\u06e1\u06d6\u06d6\u06d8\u06e0\u06dc\u06d6\u06e7\u06e6\u06df\u06e5\u06e7\u06e2\u06e7\u06da\u06d8\u06d8\u06d9\u06e5\u06e1"

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->ooOO:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const-string v0, "\u06da\u06d9\u06dc\u06e1\u06e0\u06e8\u06d8\u06e2\u06e1\u06e8\u06d8\u06df\u06e1\u06e0\u06d7\u06e4\u06dc\u06da\u06e2\u06e5\u06d7\u06d6\u06e4\u06e1\u06e7\u06e4\u06d8\u06dc\u06ec\u06db\u06d6\u06d8\u06da\u06e8\u06dc\u06d8\u06d6\u06d8\u06e7\u06d8\u06df\u06eb\u06df\u06e2\u06d8\u06dc\u06e6\u06e8\u06dc\u06d8\u06da\u06ec\u06e5\u06d8\u06d9\u06d6\u06e6\u06e7\u06e4\u06e5\u06d8"

    goto :goto_0

    :sswitch_3
    iput-boolean v4, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->oo000o:Z

    const-string v0, "\u06e5\u06e7\u06e6\u06d8\u06e4\u06e7\u06e0\u06e6\u06dc\u06dc\u06d8\u06da\u06d8\u06d8\u06e5\u06ec\u06e1\u06d8\u06d7\u06d7\u06e0\u06dc\u06d7\u06e0\u06e2\u06e8\u06eb\u06d7\u06dc\u06e5\u06d8\u06e0\u06e0\u06e1\u06e2\u06df\u06dc\u06e8\u06df\u06dc\u06d8\u06d6\u06e4\u06e0\u06dc\u06e1\u06e6\u06e8\u06ec\u06da\u06e1\u06df\u06dc\u06d8\u06e5\u06d9\u06e8\u06e5\u06e8\u06d8"

    goto :goto_0

    :sswitch_4
    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->OooO00o()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v0

    iput-boolean v4, v0, Lcom/cyjh/elfin/base/AppContext;->OoooOoo:Z

    const-string v0, "\u06ec\u06e2\u06e8\u06d8\u06e7\u06e5\u06df\u06ec\u06e6\u06d7\u06d7\u06d7\u06d6\u06d8\u06da\u06d8\u06d9\u06d9\u06e5\u06e7\u06d9\u06e6\u06db\u06e5\u06e2\u06df\u06df\u06e4\u06e8\u06ec\u06ec\u06d9\u06da\u06d9\u06e5\u06df\u06e0\u06d7\u06dc\u06e7\u06d8\u06db\u06e4\u06e8\u06e4\u06d9\u06d7\u06eb\u06e4\u06e1\u06d7\u06e1\u06e8\u06e6\u06d8"

    goto :goto_0

    :sswitch_5
    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->OooO00o()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v0

    iput-boolean v4, v0, Lcom/cyjh/elfin/base/AppContext;->Ooooo00:Z

    const-string v0, "\u06d7\u06ec\u06e2\u06e2\u06d8\u06ec\u06d8\u06e0\u06da\u06e5\u06dc\u06e5\u06ec\u06e4\u06e1\u06d8\u06df\u06e4\u06eb\u06d8\u06e1\u06df\u06e5\u06df\u06db\u06eb\u06dc\u06e2\u06d7\u06e4\u06d6\u06d8\u06e2\u06e6\u06e6\u06db\u06da\u06e2\u06d9\u06df\u06e6\u06d8\u06e1\u06dc\u06e7\u06db\u06db\u06e5\u06d8\u06e8\u06eb\u06e1\u06d8"

    goto :goto_0

    :sswitch_6
    invoke-static {}, Lz2/k6;->OooO0Oo()Lz2/k6;

    move-result-object v0

    invoke-virtual {v0}, Lz2/k6;->OooO0O0()V

    const-string v0, "\u06e4\u06e2\u06e2\u06df\u06d6\u06e8\u06d8\u06e0\u06d8\u06d9\u06d7\u06dc\u06e6\u06d8\u06d6\u06df\u06e5\u06d8\u06d7\u06e4\u06ec\u06d6\u06e6\u06ec\u06dc\u06d9\u06da\u06da\u06d8\u06d8\u06e5\u06dc\u06e6"

    goto :goto_0

    :sswitch_7
    invoke-static {}, Lz2/l10;->OooO0o()Lz2/l10;

    move-result-object v0

    invoke-virtual {v0, p0}, Lz2/l10;->OooOoO0(Ljava/lang/Object;)V

    const-string v0, "\u06e4\u06e0\u06db\u06e6\u06ec\u06e7\u06db\u06e2\u06e0\u06e1\u06d9\u06e8\u06d8\u06df\u06df\u06e6\u06ec\u06da\u06e6\u06d8\u06da\u06e0\u06df\u06e6\u06df\u06e7\u06e7\u06d8\u06e1\u06d8\u06e5\u06e4\u06ec\u06d6\u06da\u06ec\u06db\u06e6\u06e1\u06d8\u06db\u06d8\u06ec\u06e8\u06e5\u06d7"

    goto :goto_0

    :sswitch_8
    invoke-static {}, Lz2/m7;->OooO0o0()Lz2/m7;

    move-result-object v0

    invoke-virtual {v0}, Lz2/m7;->OooO0O0()V

    const-string v0, "\u06e7\u06e8\u06d8\u06d8\u06d8\u06d6\u06e6\u06dc\u06d7\u06df\u06df\u06e7\u06e2\u06db\u06d7\u06e5\u06df\u06d6\u06e5\u06d8\u06e6\u06e4\u06e8\u06da\u06e5\u06db\u06dc\u06df\u06d6\u06e0\u06ec\u06e1\u06e4\u06e4\u06d9\u06ec\u06d8\u06d6\u06d8"

    goto :goto_0

    :sswitch_9
    invoke-static {}, Lz2/dh;->OooOO0O()V

    const-string v0, "\u06e7\u06e5\u06ec\u06db\u06d6\u06e5\u06d7\u06eb\u06e1\u06d8\u06df\u06e7\u06da\u06d7\u06e8\u06e1\u06d8\u06e1\u06d7\u06d6\u06d8\u06dc\u06e7\u06e6\u06dc\u06e1\u06e8\u06eb\u06ec\u06df\u06db\u06e5\u06dc\u06d8\u06e8\u06e4\u06da\u06db\u06df\u06e0\u06eb\u06d6\u06e1\u06d8\u06e5\u06d8\u06dc\u06d8"

    goto :goto_0

    :sswitch_a
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->o0OOO0o:Lz2/uc;

    invoke-virtual {v0}, Lz2/uc;->OooO0o()V

    const-string v0, "\u06ec\u06e6\u06e8\u06db\u06e6\u06e6\u06e7\u06d6\u06e6\u06e2\u06d6\u06d6\u06e0\u06df\u06dc\u06e5\u06e6\u06e7\u06dc\u06e5\u06e5\u06e8\u06e0\u06e6\u06e1\u06e4\u06e6\u06d8\u06dc\u06e1\u06d6\u06d8\u06e7\u06e0\u06da\u06d8\u06e0\u06d6\u06d8"

    goto :goto_0

    :sswitch_b
    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->OooO00o()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v0

    iput-boolean v4, v0, Lcom/cyjh/elfin/base/AppContext;->Ooooo0o:Z

    const-string v0, "\u06e7\u06e4\u06eb\u06df\u06e2\u06e7\u06e5\u06e1\u06dc\u06d8\u06d7\u06df\u06dc\u06d6\u06da\u06e2\u06d6\u06dc\u06dc\u06e7\u06e5\u06db\u06e4\u06dc\u06e8\u06da\u06d8\u06d8\u06d8\u06e1\u06d6"

    goto :goto_0

    :sswitch_c
    invoke-static {}, Lz2/r7;->OooO0o()Lz2/r7;

    move-result-object v0

    invoke-virtual {v0, p0}, Lz2/r7;->OooO0oo(Landroid/content/Context;)V

    const-string v0, "\u06e6\u06eb\u06d8\u06e7\u06e0\u06e6\u06e2\u06d9\u06eb\u06e0\u06dc\u06e2\u06e5\u06d9\u06d8\u06e7\u06e6\u06e0\u06db\u06d8\u06eb\u06d7\u06d6\u06e5\u06e2\u06ec\u06e0\u06e1\u06e0"

    goto :goto_0

    :sswitch_d
    invoke-static {}, Lcom/cyjh/elfin/tools/utils/BootDexManager;->OooO0OO()Lcom/cyjh/elfin/tools/utils/BootDexManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cyjh/elfin/tools/utils/BootDexManager;->OooOO0()V

    const-string v0, "\u06e5\u06e5\u06e8\u06e0\u06e0\u06e8\u06d8\u06d6\u06d7\u06d6\u06ec\u06e0\u06e7\u06d6\u06d6\u06e1\u06e2\u06e0\u06e1\u06d9\u06e5\u06da\u06e8\u06e2\u06da\u06e7\u06d6\u06e6\u06e8\u06dc\u06d7\u06e0\u06e8\u06da\u06d6\u06e6"

    goto/16 :goto_0

    :sswitch_e
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4f14602c -> :sswitch_5
        -0x4e66cd52 -> :sswitch_a
        -0x46a7f75e -> :sswitch_8
        -0x402cc13e -> :sswitch_e
        -0x1587ec6 -> :sswitch_d
        0x3068167 -> :sswitch_9
        0x942f782 -> :sswitch_7
        0x10b62b69 -> :sswitch_3
        0x1a865c73 -> :sswitch_6
        0x1afb936a -> :sswitch_1
        0x1e4960a5 -> :sswitch_0
        0x2f2010b7 -> :sswitch_2
        0x33088298 -> :sswitch_4
        0x3a63442a -> :sswitch_c
        0x7c699f52 -> :sswitch_b
    .end sparse-switch
.end method

.method public onMessageMainThread(Lcom/cyjh/elfin/entity/MsgItem;)V
    .locals 5
    .annotation runtime Lz2/r10;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const/4 v1, 0x0

    const-string v0, "\u06d8\u06ec\u06da\u06da\u06df\u06e6\u06d8\u06e7\u06e6\u06d8\u06d8\u06e6\u06e6\u06e5\u06eb\u06d6\u06d8\u06d8\u06d6\u06e0\u06e6\u06e8\u06e1\u06e8\u06d8\u06ec\u06e7\u06eb\u06dc\u06da\u06e1\u06d8\u06d9\u06e4\u06e2"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v3, 0x2bc

    xor-int/2addr v2, v3

    xor-int/lit16 v2, v2, 0x3cd

    const/16 v3, 0x2ac

    const v4, -0x508a86d0

    xor-int/2addr v2, v3

    xor-int/2addr v2, v4

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06df\u06d8\u06e2\u06d7\u06e4\u06e2\u06db\u06e8\u06d8\u06da\u06e7\u06e5\u06eb\u06e4\u06d7\u06eb\u06dc\u06da\u06df\u06e5\u06e4\u06e1\u06e2\u06d8\u06d8\u06df\u06db\u06d6\u06d7\u06e0\u06d8\u06d8\u06dc\u06ec\u06d8\u06d8\u06e6\u06dc\u06d8\u06d8"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06d6\u06d9\u06e7\u06db\u06db\u06da\u06d9\u06d9\u06ec\u06dc\u06e6\u06e2\u06dc\u06e0\u06e7\u06ec\u06db\u06df\u06d8\u06db\u06da\u06e2\u06ec\u06e4\u06ec\u06e0\u06e5\u06db\u06da\u06db"

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/cyjh/elfin/entity/MsgItem;->getMsgType()I

    move-result v1

    const-string v0, "\u06da\u06d9\u06e1\u06d8\u06e7\u06df\u06e5\u06d8\u06e1\u06eb\u06e1\u06eb\u06e4\u06e8\u06d8\u06eb\u06e6\u06d8\u06df\u06e4\u06e1\u06d9\u06eb\u06eb\u06d9\u06e6\u06ec\u06e2\u06e0\u06e5\u06e6"

    goto :goto_0

    :sswitch_3
    const v2, -0x23286437

    const-string v0, "\u06db\u06db\u06e5\u06d8\u06dc\u06e1\u06d9\u06eb\u06e6\u06e1\u06d8\u06e7\u06e5\u06e5\u06eb\u06e5\u06e4\u06df\u06da\u06dc\u06dc\u06e8\u06e6\u06e7\u06d6\u06db\u06d7\u06da\u06d8\u06d8\u06e6\u06d6\u06d9\u06db\u06eb\u06df\u06d6\u06d6\u06d8\u06d8"

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v2

    sparse-switch v3, :sswitch_data_1

    goto :goto_1

    :sswitch_4
    const-string v0, "\u06d8\u06eb\u06e8\u06d8\u06d6\u06e1\u06db\u06d9\u06da\u06e6\u06d8\u06e6\u06e6\u06eb\u06e8\u06eb\u06d8\u06d8\u06ec\u06e6\u06db\u06eb\u06db\u06e7\u06e2\u06d7\u06dc\u06d8\u06ec\u06dc\u06db\u06e0\u06d7\u06e7\u06d8\u06da\u06d8\u06d8\u06e1"

    goto :goto_1

    :sswitch_5
    const-string v0, "\u06dc\u06e2\u06da\u06e4\u06ec\u06e6\u06e7\u06d7\u06dc\u06dc\u06dc\u06e1\u06d8\u06e1\u06e1\u06db\u06eb\u06e2\u06e6\u06d8\u06e2\u06eb\u06e1\u06d8\u06db\u06e7\u06dc\u06d8\u06e1\u06d6\u06df\u06e7\u06e4\u06e1\u06d8\u06e2\u06e1\u06e0\u06eb\u06d7\u06e8\u06d8\u06dc\u06db\u06db\u06e1\u06e1\u06eb\u06db\u06dc\u06e6\u06d8\u06d6\u06dc\u06d8"

    goto :goto_1

    :sswitch_6
    const v3, -0x8462316

    const-string v0, "\u06e6\u06d9\u06e6\u06d8\u06e0\u06e5\u06e8\u06dc\u06d7\u06dc\u06db\u06da\u06dc\u06e7\u06d6\u06eb\u06ec\u06df\u06e0\u06e4\u06e6\u06e8\u06e0\u06e5\u06d8\u06e5\u06ec\u06d6\u06ec\u06e2\u06e5\u06df\u06e2\u06e0\u06e7\u06df\u06df\u06e1\u06e5\u06dc\u06e0\u06d9\u06e6\u06dc\u06d8\u06e6\u06d8\u06d6\u06d8\u06e1\u06d8"

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    xor-int/2addr v4, v3

    sparse-switch v4, :sswitch_data_2

    goto :goto_2

    :sswitch_7
    const-string v0, "\u06db\u06d6\u06d6\u06d8\u06d8\u06d8\u06dc\u06e6\u06df\u06d9\u06e1\u06e5\u06e7\u06e8\u06d9\u06df\u06e8\u06e2\u06eb\u06d9\u06eb\u06db\u06e8\u06d7\u06e5\u06d8\u06df\u06dc\u06e2\u06e4\u06d7\u06e5\u06d8\u06e6\u06e4\u06e0\u06eb\u06eb\u06e4\u06df\u06df\u06e4\u06ec\u06d6\u06e7"

    goto :goto_2

    :cond_0
    const-string v0, "\u06e2\u06d7\u06d9\u06e5\u06e0\u06e0\u06ec\u06e7\u06e4\u06e2\u06dc\u06e1\u06d8\u06df\u06e8\u06e6\u06d8\u06e2\u06e7\u06db\u06e5\u06dc\u06eb\u06e8\u06e5\u06d8\u06d6\u06db\u06e8\u06d8\u06eb\u06e8\u06df\u06ec\u06ec\u06e8\u06d8\u06dc\u06d9\u06e7\u06e0\u06e2\u06ec\u06e7\u06df\u06e8\u06d8\u06e2\u06e5\u06d7\u06e0\u06df\u06d7"

    goto :goto_2

    :sswitch_8
    const/16 v0, 0x3e9

    if-eq v1, v0, :cond_0

    const-string v0, "\u06df\u06d9\u06e1\u06db\u06e0\u06d9\u06e2\u06d8\u06eb\u06ec\u06d7\u06d8\u06e5\u06d8\u06e6\u06d9\u06e6\u06d8\u06e0\u06e8\u06e1\u06d8\u06e2\u06ec\u06d7\u06eb\u06e8\u06d8\u06d7\u06d7\u06e1\u06d8\u06d9\u06d6\u06e1\u06e0\u06e8\u06da\u06e2\u06ec\u06d6\u06eb\u06ec\u06e4\u06ec\u06d8\u06e4\u06e5\u06da\u06e7"

    goto :goto_2

    :sswitch_9
    const-string v0, "\u06df\u06d6\u06dc\u06e8\u06e0\u06d8\u06d8\u06e6\u06dc\u06e6\u06d8\u06e1\u06e6\u06dc\u06d8\u06df\u06da\u06e6\u06d8\u06ec\u06ec\u06e1\u06d8\u06eb\u06dc\u06dc\u06d8\u06e0\u06e6\u06e5\u06ec\u06e0\u06e0\u06d9\u06d9\u06d8\u06e4\u06e0\u06e8\u06e8\u06e8\u06d7\u06e5\u06e6\u06df\u06d9\u06d9\u06e6\u06dc\u06e5\u06d8\u06e6\u06dc\u06eb\u06d9\u06da\u06df\u06da\u06df"

    goto :goto_1

    :sswitch_a
    const-string v0, "\u06e7\u06e2\u06e8\u06d6\u06e0\u06d6\u06d8\u06da\u06e7\u06e7\u06dc\u06e7\u06d8\u06d8\u06d8\u06e5\u06da\u06e5\u06e0\u06e2\u06db\u06e6\u06d6\u06e5\u06da\u06db\u06d8\u06e1\u06d8\u06df\u06d9\u06d6\u06e4\u06e8\u06e7\u06d8\u06e2\u06ec\u06d7"

    goto :goto_0

    :sswitch_b
    const v2, 0x499e94ba

    const-string v0, "\u06da\u06e2\u06eb\u06db\u06d8\u06d6\u06d9\u06dc\u06e2\u06e0\u06db\u06d8\u06d8\u06d7\u06db\u06d6\u06e2\u06e1\u06e8\u06e1\u06da\u06e6\u06d8\u06e2\u06e1\u06ec\u06da\u06d9\u06d9\u06df\u06e7\u06df\u06eb\u06e7\u06ec\u06e4\u06e6\u06e1\u06d7\u06e0\u06e5\u06d8\u06d8\u06e1\u06e8\u06d7\u06d6\u06dc\u06d8\u06d9\u06e2\u06e4"

    :goto_3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v2

    sparse-switch v3, :sswitch_data_3

    goto :goto_3

    :sswitch_c
    const v3, 0x73a8920d

    const-string v0, "\u06e4\u06d6\u06ec\u06e2\u06df\u06dc\u06e6\u06eb\u06d8\u06dc\u06dc\u06e1\u06d8\u06eb\u06df\u06d6\u06dc\u06d6\u06e8\u06d8\u06e5\u06dc\u06dc\u06d6\u06e4\u06e1\u06d8\u06dc\u06db\u06e5\u06e8\u06df\u06d6\u06e5\u06d6\u06dc\u06d8\u06ec\u06d6\u06eb\u06d9\u06ec\u06d6\u06d8\u06e0\u06d8\u06e1"

    :goto_4
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    xor-int/2addr v4, v3

    sparse-switch v4, :sswitch_data_4

    goto :goto_4

    :sswitch_d
    const/16 v0, 0x3eb

    if-eq v1, v0, :cond_1

    const-string v0, "\u06df\u06d8\u06e7\u06d8\u06e1\u06dc\u06e8\u06d8\u06e4\u06d8\u06dc\u06d8\u06e2\u06d6\u06e1\u06d8\u06eb\u06e5\u06e0\u06e5\u06e7\u06e8\u06d8\u06eb\u06e8\u06d8\u06e2\u06e5\u06e7\u06d6\u06d7\u06d9\u06e1\u06d7\u06d9\u06df\u06e7\u06e0\u06d9\u06e1\u06e8\u06d7\u06da\u06e6\u06d8\u06e2\u06d7\u06d8\u06d8\u06da\u06d8\u06eb\u06db\u06e5\u06e5\u06d8\u06d7\u06e5\u06e0\u06e8\u06e8\u06d8"

    goto :goto_4

    :sswitch_e
    const-string v0, "\u06d9\u06d9\u06df\u06df\u06da\u06e6\u06d8\u06db\u06ec\u06dc\u06e1\u06ec\u06d8\u06e2\u06d8\u06da\u06e4\u06dc\u06d8\u06e6\u06ec\u06db\u06d7\u06e8\u06dc\u06d8\u06df\u06e5\u06df\u06e2\u06dc\u06d7\u06e6\u06e1\u06e1\u06e1\u06df\u06e8\u06d8"

    goto :goto_3

    :cond_1
    const-string v0, "\u06e0\u06e5\u06e6\u06e7\u06db\u06db\u06e2\u06db\u06dc\u06e4\u06e2\u06d6\u06d8\u06db\u06d7\u06d7\u06e4\u06d7\u06dc\u06e8\u06e1\u06e6\u06e5\u06da\u06e2\u06e5\u06df\u06e7\u06e6\u06e7\u06dc\u06df\u06e5\u06dc\u06d8\u06df\u06e0\u06e5\u06d8\u06e2\u06d6\u06db\u06e0\u06e0\u06ec\u06ec\u06d6\u06d8\u06d6\u06df\u06df"

    goto :goto_4

    :sswitch_f
    const-string v0, "\u06e4\u06e0\u06da\u06e2\u06e2\u06d8\u06e0\u06e7\u06e2\u06e6\u06e0\u06ec\u06e0\u06db\u06e2\u06e7\u06e2\u06e8\u06d8\u06eb\u06e7\u06e1\u06e1\u06d6\u06e4\u06e0\u06e1\u06d9\u06db\u06e0\u06df\u06d7\u06df\u06e6\u06e4"

    goto :goto_4

    :sswitch_10
    const-string v0, "\u06e1\u06e6\u06d7\u06ec\u06e4\u06da\u06e5\u06e4\u06e1\u06da\u06e0\u06e7\u06eb\u06e0\u06e2\u06db\u06d7\u06d8\u06dc\u06e5\u06e6\u06d8\u06e4\u06e8\u06e1\u06e0\u06db\u06d8\u06d8\u06eb\u06e1\u06d6\u06ec\u06e6\u06e8\u06df\u06e1\u06d8\u06d8"

    goto :goto_3

    :sswitch_11
    const-string v0, "\u06e0\u06da\u06e6\u06d8\u06d8\u06da\u06e6\u06d9\u06d8\u06e8\u06e2\u06ec\u06d6\u06d8\u06d7\u06e2\u06e5\u06e7\u06e6\u06e6\u06d8\u06e8\u06e7\u06d8\u06e5\u06da\u06e1\u06e0\u06e1\u06e2\u06eb\u06d9\u06e6\u06d9\u06e8\u06da\u06e0\u06e4\u06d8\u06e8\u06e1\u06dc\u06d8\u06ec\u06e4\u06e6\u06d8\u06d9\u06d7\u06ec\u06e8\u06e6\u06e2\u06e1\u06df\u06e2\u06e0\u06e8\u06dc"

    goto :goto_3

    :sswitch_12
    const-string v0, "\u06d8\u06db\u06d7\u06e8\u06d8\u06e4\u06e6\u06e1\u06e1\u06e0\u06e0\u06e5\u06d8\u06ec\u06e7\u06d6\u06d8\u06dc\u06d8\u06da\u06e7\u06e8\u06db\u06eb\u06e7\u06d8\u06d8\u06e8\u06dc\u06d8\u06d8\u06e5\u06da\u06e1\u06d8\u06e1\u06e0\u06d6\u06d9\u06d8\u06d8\u06d9\u06da\u06e6\u06e0\u06db\u06db\u06e4\u06eb\u06e7\u06e7\u06d7\u06d6\u06e1\u06d6\u06d8\u06e0\u06ec\u06e8\u06d8"

    goto/16 :goto_0

    :sswitch_13
    iget-object v0, p0, Lcom/cyjh/common/base/activity/BaseModelActivity;->OooooO0:Landroidx/lifecycle/AndroidViewModel;

    check-cast v0, Lz2/na;

    invoke-virtual {v0}, Lz2/na;->OooOoOO()V

    const-string v0, "\u06df\u06e8\u06e7\u06df\u06e8\u06d8\u06ec\u06df\u06dc\u06d8\u06e6\u06da\u06d8\u06ec\u06eb\u06d6\u06d8\u06d8\u06e6\u06d6\u06eb\u06eb\u06d6\u06ec\u06e5\u06d8\u06dc\u06e1\u06e2\u06ec\u06dc\u06df\u06e7\u06da\u06d8\u06e8\u06d8\u06d8"

    goto/16 :goto_0

    :sswitch_14
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->o00Ooo:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    const-string v0, "\u06d9\u06e2\u06ec\u06eb\u06e5\u06e6\u06da\u06da\u06e8\u06e4\u06dc\u06d8\u06d9\u06da\u06e5\u06e5\u06d6\u06d8\u06d8\u06d9\u06e0\u06df\u06e7\u06e1\u06e0\u06e6\u06d7\u06d9\u06dc\u06df\u06db"

    goto/16 :goto_0

    :sswitch_15
    const-string v0, "\u06ec\u06ec\u06ec\u06e1\u06db\u06e1\u06d8\u06da\u06d6\u06db\u06ec\u06e2\u06ec\u06e4\u06ec\u06e0\u06ec\u06da\u06db\u06df\u06e8\u06dc\u06d8\u06d9\u06db\u06d9\u06eb\u06e2\u06ec\u06e1\u06e1\u06e8\u06e0\u06e4\u06e8\u06d8\u06e2\u06da\u06d6\u06e2\u06d6\u06e1\u06d7\u06db\u06d6"

    goto/16 :goto_0

    :sswitch_16
    const-string v0, "\u06d9\u06e7\u06da\u06e1\u06ec\u06d6\u06d8\u06e5\u06e2\u06d6\u06d8\u06df\u06ec\u06dc\u06df\u06ec\u06d6\u06df\u06da\u06d8\u06e8\u06e7\u06d8\u06d9\u06e4\u06d6\u06d8\u06ec\u06d8\u06d8\u06d8\u06d8\u06da\u06e5"

    goto/16 :goto_0

    :sswitch_17
    const-string v0, "\u06d9\u06e2\u06ec\u06eb\u06e5\u06e6\u06da\u06da\u06e8\u06e4\u06dc\u06d8\u06d9\u06da\u06e5\u06e5\u06d6\u06d8\u06d8\u06d9\u06e0\u06df\u06e7\u06e1\u06e0\u06e6\u06d7\u06d9\u06dc\u06df\u06db"

    goto/16 :goto_0

    :sswitch_18
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x673bfc90 -> :sswitch_2
        -0x57386652 -> :sswitch_0
        -0x4ba71072 -> :sswitch_3
        -0x27c69ba1 -> :sswitch_18
        0x332f47 -> :sswitch_b
        0x1e2fae8c -> :sswitch_17
        0x2eb5b5a3 -> :sswitch_17
        0x44cca2e3 -> :sswitch_1
        0x507e2fde -> :sswitch_13
        0x7d5fa5f1 -> :sswitch_14
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x54c9f8b1 -> :sswitch_6
        -0x369bcea1 -> :sswitch_4
        -0x14970149 -> :sswitch_16
        0x48dbfd8c -> :sswitch_a
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        -0x7120d8ec -> :sswitch_8
        -0x50b75ad6 -> :sswitch_9
        -0x455766d6 -> :sswitch_5
        -0x1d749676 -> :sswitch_7
    .end sparse-switch

    :sswitch_data_3
    .sparse-switch
        -0x597b9884 -> :sswitch_12
        0xe2301f5 -> :sswitch_11
        0x3bbdfec2 -> :sswitch_15
        0x51b0caca -> :sswitch_c
    .end sparse-switch

    :sswitch_data_4
    .sparse-switch
        -0x618b302f -> :sswitch_e
        -0x533d668f -> :sswitch_d
        -0x45dccb02 -> :sswitch_10
        0x5516880f -> :sswitch_f
    .end sparse-switch
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 6

    const/4 v1, 0x0

    const-string v0, "\u06e7\u06d8\u06dc\u06d8\u06e0\u06d8\u06d6\u06e4\u06d7\u06e2\u06da\u06d7\u06e8\u06d8\u06ec\u06db\u06dc\u06d8\u06e5\u06e7\u06d8\u06d8\u06e8\u06d7\u06d8\u06d8\u06e4\u06d9\u06d6\u06d8\u06ec\u06df\u06e8\u06d8\u06eb\u06eb\u06ec\u06d6\u06eb\u06dc\u06d9\u06e6\u06e5"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v3, 0xf4

    xor-int/2addr v2, v3

    xor-int/lit16 v2, v2, 0x1f4

    const/16 v3, 0x143

    const v4, 0x6ee505d7

    xor-int/2addr v2, v3

    xor-int/2addr v2, v4

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06da\u06e2\u06ec\u06d9\u06d8\u06db\u06dc\u06e7\u06da\u06dc\u06e8\u06dc\u06e6\u06d6\u06df\u06ec\u06e5\u06d8\u06ec\u06e0\u06e0\u06ec\u06da\u06ec\u06e6\u06e8\u06e5\u06d9\u06d6\u06d9\u06d6\u06e4\u06e4\u06d6\u06e4\u06dc\u06d8\u06dc\u06ec\u06e1\u06e2\u06eb\u06e6\u06e1\u06e8\u06d6\u06e5\u06da\u06e1\u06e8\u06e4\u06ec\u06d8\u06d9\u06d9"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06e8\u06d9\u06dc\u06d8\u06e7\u06db\u06d7\u06e4\u06e6\u06e8\u06e8\u06e1\u06e1\u06e6\u06e5\u06df\u06e0\u06e8\u06ec\u06e7\u06e1\u06e0\u06e5\u06e2\u06e5\u06e5\u06e6\u06e2\u06e0\u06d7\u06d9\u06db\u06e5\u06e1\u06d6\u06ec\u06dc\u06d8"

    goto :goto_0

    :sswitch_2
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    const-string v0, "\u06e8\u06da\u06ec\u06da\u06e2\u06da\u06da\u06d8\u06e6\u06d8\u06db\u06db\u06d9\u06e7\u06eb\u06da\u06d6\u06eb\u06e0\u06ec\u06df\u06dc\u06d8\u06dc\u06d7\u06e4\u06e7\u06d6\u06da\u06d8\u06eb\u06e4\u06d6\u06d6\u06df\u06e2\u06d6\u06d6\u06d8"

    goto :goto_0

    :sswitch_3
    const v2, 0x664571ad

    const-string v0, "\u06d7\u06d8\u06e7\u06e6\u06d9\u06e8\u06d8\u06e8\u06da\u06e2\u06d9\u06e0\u06dc\u06e2\u06e7\u06d7\u06d6\u06e4\u06e8\u06e0\u06e6\u06e0\u06ec\u06da\u06d8\u06e8\u06e0\u06e2\u06d9\u06e7\u06e8\u06d8\u06e1\u06e4\u06df\u06dc\u06df\u06e4\u06dc\u06e0\u06e5\u06e4\u06e5\u06eb\u06dc\u06d8\u06d8\u06d8\u06da\u06dc\u06dc"

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v2

    sparse-switch v3, :sswitch_data_1

    goto :goto_1

    :sswitch_4
    const-string v0, "\u06db\u06e4\u06d7\u06d9\u06e6\u06e7\u06da\u06e6\u06e5\u06d8\u06e8\u06d6\u06e8\u06d8\u06db\u06dc\u06d7\u06d9\u06d6\u06d8\u06d7\u06ec\u06e5\u06ec\u06e8\u06e1\u06d8\u06d8\u06d9\u06e4\u06dc"

    goto :goto_0

    :sswitch_5
    const-string v0, "\u06e1\u06dc\u06ec\u06d7\u06e1\u06e6\u06e0\u06d9\u06dc\u06ec\u06da\u06e1\u06d8\u06df\u06dc\u06e1\u06d6\u06d9\u06da\u06e0\u06dc\u06d8\u06d7\u06e7\u06e5\u06d9\u06e6\u06ec\u06d6\u06e1\u06ec\u06e6\u06d9\u06d8\u06ec\u06e0\u06d9\u06e4\u06e6\u06e5\u06e4\u06e1\u06d8\u06d9\u06e7\u06d8\u06e5\u06e2"

    goto :goto_1

    :sswitch_6
    const v3, -0x31284358

    const-string v0, "\u06e5\u06d8\u06db\u06e6\u06eb\u06e4\u06e8\u06d6\u06d7\u06e7\u06da\u06e6\u06e5\u06d6\u06da\u06e6\u06e5\u06e4\u06eb\u06e5\u06e4\u06eb\u06d8\u06d8\u06e1\u06e8\u06d8\u06d8\u06e2\u06e2\u06d6\u06ec\u06e6\u06d7\u06d7\u06e2\u06e5"

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    xor-int/2addr v4, v3

    sparse-switch v4, :sswitch_data_2

    goto :goto_2

    :sswitch_7
    const-string v0, "\u06d9\u06ec\u06e2\u06e6\u06ec\u06e1\u06d8\u06e7\u06e5\u06e7\u06d8\u06df\u06e4\u06eb\u06e2\u06d7\u06d7\u06e6\u06d7\u06e5\u06e0\u06e1\u06e8\u06e5\u06d7\u06e1\u06d8\u06e7\u06e1\u06e2\u06e6\u06e2\u06d9\u06d6\u06e1\u06d8\u06d8\u06e1\u06da\u06d7\u06eb\u06dc\u06e6\u06d6\u06e6\u06d7"

    goto :goto_2

    :cond_0
    const-string v0, "\u06e5\u06d9\u06d9\u06e6\u06e5\u06d8\u06e6\u06d6\u06e6\u06ec\u06ec\u06e7\u06e7\u06d9\u06ec\u06da\u06e4\u06e6\u06e8\u06d9\u06d7\u06e7\u06e5\u06e5\u06d8\u06df\u06e5\u06dc\u06db\u06d7\u06d8\u06ec\u06e6\u06db\u06ec\u06dc\u06d8\u06e5\u06d6\u06e1\u06d6\u06e8\u06e1\u06db\u06e1\u06df\u06ec\u06ec\u06d6\u06d8\u06e2\u06e6\u06d7\u06d8\u06e6\u06d8"

    goto :goto_2

    :sswitch_8
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "\u06d6\u06e5\u06e6\u06da\u06db\u06e7\u06e1\u06df\u06dc\u06d6\u06da\u06d6\u06e1\u06d8\u06e2\u06eb\u06da\u06e1\u06d9\u06df\u06d8\u06d6\u06d6\u06d8\u06e8\u06e7\u06dc\u06d6\u06e7\u06e6\u06e8\u06d7\u06d9\u06d9\u06e6\u06e2\u06e8\u06d8\u06e7\u06d8\u06e1\u06d8"

    goto :goto_2

    :sswitch_9
    const-string v0, "\u06df\u06d8\u06da\u06d8\u06e5\u06e8\u06d8\u06d8\u06df\u06d8\u06e6\u06e8\u06d8\u06dc\u06ec\u06df\u06e4\u06e5\u06eb\u06e8\u06d6\u06da\u06d6\u06e6\u06e6\u06d8\u06d9\u06d9\u06d6\u06e5\u06e0\u06e0\u06e7\u06da\u06e1\u06d9\u06e8\u06e7\u06da\u06d7\u06d6\u06d8\u06df\u06e1\u06d8"

    goto :goto_1

    :sswitch_a
    const-string v0, "\u06e1\u06eb\u06e0\u06d8\u06ec\u06dc\u06d8\u06e1\u06da\u06d8\u06d9\u06e2\u06d8\u06d8\u06e0\u06d6\u06eb\u06df\u06df\u06e2\u06e4\u06e2\u06d9\u06ec\u06e8\u06df\u06eb\u06d8\u06e2\u06e6\u06e0\u06e1\u06df\u06ec\u06e5\u06d8\u06e6\u06e7\u06e5"

    goto :goto_1

    :sswitch_b
    const v2, 0x1af05ddc

    const-string v0, "\u06d6\u06d7\u06e1\u06d8\u06db\u06d6\u06e5\u06d8\u06e4\u06d6\u06df\u06dc\u06e0\u06e2\u06e4\u06e7\u06e7\u06e4\u06e7\u06e1\u06e5\u06dc\u06eb\u06eb\u06e8\u06e6\u06d8\u06eb\u06e1\u06e5\u06da\u06df\u06e6\u06d8\u06e5\u06e5\u06e7\u06d7"

    :goto_3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v2

    sparse-switch v3, :sswitch_data_3

    goto :goto_3

    :sswitch_c
    const-string v0, "\u06e7\u06db\u06e2\u06d7\u06d9\u06ec\u06e6\u06d8\u06d8\u06d8\u06eb\u06e5\u06e0\u06d8\u06e7\u06e0\u06e7\u06eb\u06e6\u06d8\u06e2\u06dc\u06e1\u06df\u06da\u06e5\u06d8\u06d7\u06e5\u06d7\u06d6\u06e6\u06e1\u06e7\u06e4\u06d7\u06e1\u06dc\u06e8\u06e8\u06d6\u06d8\u06eb\u06dc\u06dc\u06e7\u06eb\u06e6\u06d8\u06d6\u06e8\u06e1\u06d8"

    goto :goto_0

    :sswitch_d
    const-string v0, "\u06eb\u06e4\u06d6\u06d8\u06d6\u06e1\u06d6\u06da\u06e5\u06e1\u06dc\u06ec\u06e8\u06d8\u06e1\u06e4\u06d6\u06db\u06e0\u06e2\u06e4\u06e2\u06e1\u06d8\u06db\u06ec\u06ec\u06df\u06e6\u06ec\u06d9\u06ec\u06d8\u06d8"

    goto :goto_3

    :sswitch_e
    const v3, 0x555a71b

    const-string v0, "\u06e1\u06db\u06eb\u06e1\u06eb\u06ec\u06dc\u06da\u06d8\u06eb\u06e6\u06e6\u06e6\u06da\u06d6\u06d8\u06e7\u06dc\u06eb\u06d8\u06df\u06e8\u06d8\u06df\u06d6\u06d8\u06d8\u06d6\u06eb\u06dc\u06e5\u06d8\u06dc\u06d8"

    :goto_4
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    xor-int/2addr v4, v3

    sparse-switch v4, :sswitch_data_4

    goto :goto_4

    :sswitch_f
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v4, "needUpdate"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "\u06eb\u06d7\u06e6\u06e7\u06ec\u06e5\u06d9\u06d9\u06e1\u06e1\u06db\u06e8\u06d8\u06ec\u06db\u06e1\u06e0\u06e2\u06df\u06ec\u06dc\u06d7\u06e4\u06d8\u06e1\u06d8\u06dc\u06eb\u06d7\u06e4\u06df\u06df\u06ec\u06e5\u06e4\u06e7\u06e1\u06d9\u06e1\u06dc\u06e8\u06ec\u06db\u06d6\u06d9\u06e4\u06ec\u06e7\u06e4\u06e5"

    goto :goto_4

    :cond_1
    const-string v0, "\u06e7\u06d8\u06ec\u06d6\u06ec\u06dc\u06e1\u06eb\u06d8\u06d8\u06e6\u06d9\u06dc\u06d8\u06d9\u06dc\u06e5\u06d8\u06d9\u06eb\u06d7\u06da\u06e4\u06db\u06e1\u06e5\u06d8\u06e7\u06e2\u06da\u06d9\u06df\u06e0\u06d7\u06e0\u06df\u06d7\u06d7\u06e0\u06d6\u06ec\u06e5\u06df\u06d9\u06db\u06d6\u06d9\u06e2\u06e0\u06d8\u06e7\u06d8"

    goto :goto_4

    :sswitch_10
    const-string v0, "\u06e0\u06eb\u06e0\u06e8\u06ec\u06db\u06d6\u06dc\u06dc\u06eb\u06d6\u06e8\u06d8\u06d9\u06e5\u06db\u06d6\u06e6\u06d8\u06d8\u06e5\u06e8\u06d8\u06d8\u06e5\u06e6\u06db\u06db\u06e8\u06d9\u06e5\u06e6\u06d7"

    goto :goto_4

    :sswitch_11
    const-string v0, "\u06db\u06da\u06df\u06e6\u06e5\u06dc\u06d8\u06e6\u06ec\u06e8\u06e7\u06d7\u06dc\u06d8\u06d8\u06e0\u06e1\u06d8\u06e1\u06e1\u06d9\u06e6\u06e6\u06da\u06db\u06e5\u06e1\u06da\u06e1\u06e1\u06e7\u06e1\u06e4\u06dc\u06eb\u06e5\u06e2\u06d8\u06e0\u06e6\u06e8\u06d9\u06ec\u06e1\u06df\u06e6\u06eb\u06d8\u06d8\u06e6\u06e8\u06dc"

    goto :goto_3

    :sswitch_12
    const-string v0, "\u06ec\u06da\u06d8\u06d8\u06e7\u06e4\u06ec\u06e7\u06d7\u06e5\u06d8\u06e2\u06e6\u06e8\u06d8\u06e7\u06d6\u06e2\u06d8\u06e5\u06e4\u06d7\u06e6\u06e1\u06d8\u06d6\u06d7\u06e4\u06e0\u06db\u06e4\u06db\u06e0\u06e8\u06d8\u06d8\u06e6\u06e7\u06d8\u06e0\u06db\u06e2\u06ec\u06d8\u06e6\u06db\u06d6\u06e4\u06eb\u06d7\u06e1\u06d8\u06ec\u06d9\u06df\u06e6\u06dc\u06e8\u06d8\u06d7\u06d8\u06d9"

    goto :goto_3

    :sswitch_13
    iget-object v1, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->o0Oo0oo:Lz2/ca;

    const-string v0, "\u06e4\u06da\u06e2\u06e7\u06dc\u06ec\u06df\u06d6\u06d6\u06d9\u06e1\u06e1\u06d6\u06d7\u06e2\u06d8\u06e1\u06dc\u06e1\u06e7\u06e5\u06e2\u06eb\u06e1\u06da\u06da\u06e1\u06d8\u06df\u06e8"

    goto/16 :goto_0

    :sswitch_14
    const v2, 0x423704ea

    const-string v0, "\u06e8\u06d9\u06e8\u06d8\u06da\u06e4\u06d9\u06d6\u06e6\u06e7\u06d9\u06e5\u06d7\u06e0\u06e5\u06e5\u06d8\u06d7\u06e0\u06df\u06db\u06e1\u06dc\u06d7\u06e8\u06e4\u06da\u06e4\u06d8\u06d8\u06e0\u06d9\u06e0\u06e0\u06e4\u06e6\u06d8\u06e6\u06d8\u06df\u06eb\u06e0\u06d9\u06e4\u06e4\u06e7\u06d6\u06e0\u06eb\u06d9\u06e0\u06d6\u06d8"

    :goto_5
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v2

    sparse-switch v3, :sswitch_data_5

    goto :goto_5

    :sswitch_15
    const-string v0, "\u06d8\u06e2\u06da\u06e6\u06e8\u06e1\u06dc\u06dc\u06e6\u06df\u06e6\u06e0\u06d7\u06e8\u06e5\u06d8\u06da\u06ec\u06db\u06d7\u06e6\u06e7\u06d8\u06e8\u06eb\u06d7\u06db\u06db\u06db\u06db\u06ec\u06da\u06e1\u06dc\u06e6\u06d8\u06da\u06e7\u06ec"

    goto/16 :goto_0

    :sswitch_16
    const-string v0, "\u06d6\u06e7\u06df\u06d9\u06da\u06d8\u06eb\u06d8\u06d6\u06d9\u06e0\u06db\u06d6\u06e5\u06e6\u06e6\u06ec\u06e5\u06d8\u06eb\u06db\u06d7\u06e1\u06db\u06e4\u06d8\u06d8\u06e0\u06da\u06e6\u06e8\u06d6\u06d7\u06e8\u06da\u06d9\u06ec\u06e4\u06dc\u06d8\u06e1\u06ec\u06da"

    goto :goto_5

    :sswitch_17
    const v3, -0x7940f54f

    const-string v0, "\u06e0\u06ec\u06e0\u06e8\u06d6\u06d6\u06d8\u06e8\u06eb\u06e8\u06e1\u06da\u06df\u06e7\u06e1\u06e0\u06ec\u06dc\u06d8\u06d7\u06e6\u06d6\u06e7\u06d6\u06e1\u06d8\u06dc\u06d9\u06d8\u06d8\u06e0\u06e5\u06e8\u06d8\u06e6\u06d9\u06ec\u06df\u06d9\u06dc\u06e8\u06e8\u06eb\u06e5\u06d7\u06e8\u06df\u06d9\u06db\u06e0\u06e4\u06e7\u06d8\u06e5\u06d8\u06d8\u06e4\u06e5\u06d8"

    :goto_6
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    xor-int/2addr v4, v3

    sparse-switch v4, :sswitch_data_6

    goto :goto_6

    :sswitch_18
    const-string v0, "\u06d9\u06e5\u06dc\u06d8\u06e1\u06ec\u06e1\u06d8O\u06e4\u06eb\u06ec\u06d6\u06dc\u06e7\u06e7\u06e7\u06dc\u06e4\u06da\u06e1\u06d8\u06e5\u06ec\u06da\u06d8\u06eb\u06e1\u06d8\u06df\u06ec\u06e6\u06d8\u06e0\u06d8\u06d6\u06d8\u06da\u06e7\u06df\u06e1\u06d9\u06e7\u06ec\u06e4\u06e4\u06d6\u06dc\u06eb\u06e5\u06ec\u06e0"

    goto :goto_6

    :cond_2
    const-string v0, "\u06dc\u06e0\u06df\u06e8\u06ec\u06d6\u06d8\u06df\u06eb\u06e6\u06e6\u06e7\u06dc\u06d6\u06dc\u06da\u06e2\u06d8\u06e7\u06d8\u06d7\u06d6\u06d8\u06e6\u06df\u06e1\u06d8\u06df\u06e1\u06e7\u06d6\u06e0\u06e6\u06d9\u06eb\u06d7\u06e5\u06d8\u06d6\u06e4\u06d8\u06da\u06df\u06e7\u06d6"

    goto :goto_6

    :sswitch_19
    if-eqz v1, :cond_2

    const-string v0, "\u06d8\u06e8\u06e6\u06d8\u06d6\u06e6\u06e5\u06d8\u06d6\u06d6\u06dc\u06d8\u06e6\u06e8\u06dc\u06dc\u06d8\u06d9\u06e7\u06d8\u06e1\u06e6\u06e6\u06e7\u06d8\u06e7\u06d8\u06d8\u06df\u06d7\u06e4\u06db\u06dc\u06e5\u06df\u06e0\u06e2\u06eb\u06d7\u06e8\u06e1\u06e6\u06e6\u06eb\u06d8\u06e7\u06d8\u06eb\u06d8\u06d9\u06db\u06e2\u06d6\u06d8\u06e8\u06e2\u06e7\u06e5\u06da\u06da"

    goto :goto_6

    :sswitch_1a
    const-string v0, "\u06da\u06d7\u06df\u06e5\u06d9\u06d6\u06e1\u06e0\u06e4\u06ec\u06e4\u06e0\u06d6\u06d8\u06dc\u06d8\u06e0\u06ec\u06e6\u06e4\u06e2\u06d9\u06df\u06d7\u06d8\u06e0\u06d6\u06e7\u06d8\u06e4\u06eb\u06e1\u06d8\u06db\u06e0\u06db\u06eb\u06e5\u06d9"

    goto :goto_5

    :sswitch_1b
    const-string v0, "\u06d8\u06e6\u06da\u06e0\u06df\u06e6\u06d8\u06d7\u06e4\u06e0\u06e1\u06da\u06ec\u06db\u06e1\u06da\u06e2\u06d9\u06e8\u06e0\u06e8\u06d8\u06e4\u06e7\u06df\u06e7\u06da\u06ec\u06d6\u06d6\u06e7\u06d7\u06e4\u06e4\u06d7\u06e5\u06e0\u06e0\u06dc\u06d6\u06e8\u06e8"

    goto :goto_5

    :sswitch_1c
    const v2, 0x4535fc45

    const-string v0, "\u06e4\u06d6\u06dc\u06d7\u06db\u06d6\u06d8\u06d8\u06d9\u06db\u06d9\u06ec\u06dc\u06e6\u06e7\u06d7\u06e7\u06ec\u06dc\u06e6\u06e8\u06d8\u06d8\u06e8\u06e8\u06e1\u06d8\u06d8\u06e6\u06d8\u06e6\u06da\u06e1\u06d8\u06d6\u06e5\u06e4\u06e2\u06df\u06e4\u06d8\u06d9\u06eb\u06df\u06da\u06d8\u06d9\u06db\u06dc\u06df\u06e4\u06e4"

    :goto_7
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v2

    sparse-switch v3, :sswitch_data_7

    goto :goto_7

    :sswitch_1d
    const-string v0, "\u06eb\u06da\u06e4\u06d8\u06da\u06e6\u06d8\u06e1\u06dc\u06e1\u06e4\u06df\u06dc\u06eb\u06e4\u06df\u06e8\u06e0\u06df\u06d9\u06d6\u06d7\u06e6\u06e8\u06d8\u06eb\u06e4\u06eb\u06e8\u06e1\u06ec"

    goto/16 :goto_0

    :sswitch_1e
    const-string v0, "\u06e1\u06e8\u06e7\u06d8\u06db\u06dc\u06d7\u06df\u06db\u06d6\u06d8\u06d7\u06d9\u06e5\u06d8\u06e2\u06e0\u06e8\u06d8\u06eb\u06d6\u06da\u06e2\u06d6\u06e0\u06dc\u06d7\u06e2\u06dc\u06eb\u06d7\u06e7\u06d6\u06d8\u06ec\u06eb\u06d8\u06d8\u06e5\u06e1\u06e8\u06dc\u06e8\u06e5\u06d8\u06e1\u06d8\u06e0\u06d7\u06d6\u06d6\u06d8\u06d7\u06ec\u06db\u06df\u06eb\u06d8\u06d8\u06ec\u06e7\u06ec"

    goto :goto_7

    :sswitch_1f
    const v3, 0x786fcdfb

    const-string v0, "\u06e7\u06e2\u06df\u06d9\u06db\u06d8\u06d8\u06d8\u06e7\u06da\u06da\u06e6\u06d7\u06e7\u06e2\u06d7\u06e7\u06dc\u06d8\u06e7\u06db\u06d8\u06d8\u06e8\u06e4\u06e4\u06e0\u06e7\u06eb\u06dc\u06e2\u06e5\u06d8\u06e5\u06e6\u06d6\u06da\u06e5\u06ec"

    :goto_8
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    xor-int/2addr v4, v3

    sparse-switch v4, :sswitch_data_8

    goto :goto_8

    :sswitch_20
    const-string v0, "\u06db\u06e7\u06d7\u06e4\u06e1\u06e1\u06e0\u06e1\u06eb\u06d7\u06e5\u06e8\u06dc\u06eb\u06e7\u06db\u06dc\u06e1\u06ec\u06dc\u06e5\u06e1\u06e4\u06e7\u06e8\u06dc\u06e7\u06d6\u06df\u06e0\u06e4\u06d7\u06e6\u06d8\u06dc\u06d6\u06e5"

    goto :goto_8

    :cond_3
    const-string v0, "\u06eb\u06d8\u06e8\u06d8\u06e1\u06e7\u06e1\u06d8\u06e0\u06e6\u06db\u06dc\u06d6\u06d8\u06d8\u06e1\u06d8\u06e5\u06d8\u06e0\u06e5\u06d9\u06da\u06e2\u06e8\u06e4\u06eb\u06dc\u06db\u06db\u06dc\u06dc\u06eb\u06df"

    goto :goto_8

    :sswitch_21
    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "\u06ec\u06db\u06e0\u06e5\u06e7\u06d8\u06d8\u06e1\u06e7\u06e8\u06e1\u06e7\u06ec\u06db\u06dc\u06e5\u06d8\u06ec\u06e0\u06e1\u06d8\u06db\u06e8\u06e5\u06d8\u06da\u06ec\u06e1\u06d8\u06e4\u06d6\u06db\u06e4\u06eb\u06e5\u06e7\u06e2\u06d8\u06d8\u06eb\u06e5\u06e5\u06d8\u06e1\u06e6\u06d9\u06da\u06e4\u06e6\u06d8\u06e7\u06db\u06e1\u06db\u06eb\u06e0"

    goto :goto_8

    :sswitch_22
    const-string v0, "\u06e4\u06e2\u06eb\u06d9\u06e2\u06e8\u06d8\u06d8\u06e4\u06eb\u06ec\u06df\u06e8\u06d8\u06e6\u06d6\u06da\u06e4\u06e6\u06dc\u06db\u06df\u06e2\u06d6\u06e0\u06db\u06eb\u06e8\u06d8\u06e0\u06df\u06e1\u06e1\u06dc\u06e6\u06df\u06db\u06d9"

    goto :goto_7

    :sswitch_23
    const-string v0, "\u06d9\u06e7\u06e8\u06d8\u06d8\u06e0\u06d8\u06d7\u06e1\u06db\u06e4\u06e6\u06e0\u06e6\u06d9\u06e1\u06d8\u06e7\u06e0\u06df\u06e5\u06d8\u06ec\u06e5\u06e1\u06d8\u06d8\u06e8\u06dc\u06d7\u06e8\u06e8\u06d9\u06d9\u06d9\u06ec\u06e4\u06e5\u06d7\u06d6\u06df\u06e1\u06d8\u06df\u06da\u06e5"

    goto :goto_7

    :sswitch_24
    const-string v0, "\u06e6\u06d9\u06e6\u06d8\u06e7\u06e7\u06eb\u06d9\u06d6\u06d6\u06e4\u06d8\u06d6\u06db\u06df\u06e1\u06db\u06d8\u06d6\u06d9\u06e5\u06e4\u06d8\u06d9\u06eb\u06e4\u06d8\u06d8\u06e7\u06d8\u06d6\u06d9\u06d6\u06e2\u06d7\u06eb\u06d9\u06dc\u06e0\u06d7\u06d8\u06df\u06e1\u06d6\u06e8\u06d6\u06d8\u06e2\u06eb\u06e1"

    goto/16 :goto_0

    :sswitch_25
    iget-object v0, p0, Lcom/cyjh/common/base/activity/BaseModelActivity;->OooooO0:Landroidx/lifecycle/AndroidViewModel;

    check-cast v0, Lz2/na;

    invoke-virtual {v0}, Lz2/na;->OoooO00()V

    const-string v0, "\u06eb\u06da\u06e4\u06d8\u06da\u06e6\u06d8\u06e1\u06dc\u06e1\u06e4\u06df\u06dc\u06eb\u06e4\u06df\u06e8\u06e0\u06df\u06d9\u06d6\u06d7\u06e6\u06e8\u06d8\u06eb\u06e4\u06eb\u06e8\u06e1\u06ec"

    goto/16 :goto_0

    :sswitch_26
    const-string v0, "\u06e6\u06d9\u06e6\u06d8\u06e7\u06e7\u06eb\u06d9\u06d6\u06d6\u06e4\u06d8\u06d6\u06db\u06df\u06e1\u06db\u06d8\u06d6\u06d9\u06e5\u06e4\u06d8\u06d9\u06eb\u06e4\u06d8\u06d8\u06e7\u06d8\u06d6\u06d9\u06d6\u06e2\u06d7\u06eb\u06d9\u06dc\u06e0\u06d7\u06d8\u06df\u06e1\u06d6\u06e8\u06d6\u06d8\u06e2\u06eb\u06e1"

    goto/16 :goto_0

    :sswitch_27
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7f9c5ddc -> :sswitch_14
        -0x73a7fc37 -> :sswitch_1
        -0x66b82399 -> :sswitch_1c
        -0x5711dc4a -> :sswitch_27
        -0x4de35c0b -> :sswitch_13
        -0x4d75a6a2 -> :sswitch_2
        -0x44392566 -> :sswitch_b
        -0x3d2299f5 -> :sswitch_25
        0x3563658f -> :sswitch_3
        0x7c94aae8 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x3152edfd -> :sswitch_a
        -0x20a6ef5d -> :sswitch_6
        -0x90c8a97 -> :sswitch_1d
        -0x744efea -> :sswitch_4
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        -0x45e1331a -> :sswitch_8
        -0xa06be5d -> :sswitch_7
        0x2d8aedde -> :sswitch_5
        0x5eb0bc55 -> :sswitch_9
    .end sparse-switch

    :sswitch_data_3
    .sparse-switch
        -0x2a76e4bf -> :sswitch_c
        0x72b6926 -> :sswitch_12
        0x3b5ad8b8 -> :sswitch_e
        0x46154bfe -> :sswitch_1d
    .end sparse-switch

    :sswitch_data_4
    .sparse-switch
        -0x79af1f76 -> :sswitch_11
        -0x7540c2a8 -> :sswitch_d
        -0x3000c6ef -> :sswitch_f
        0x2fab62a8 -> :sswitch_10
    .end sparse-switch

    :sswitch_data_5
    .sparse-switch
        -0x6c511386 -> :sswitch_26
        -0x56782a3f -> :sswitch_15
        0x9ce7dc6 -> :sswitch_1b
        0x44e7c1be -> :sswitch_17
    .end sparse-switch

    :sswitch_data_6
    .sparse-switch
        -0x7f4c7f7c -> :sswitch_1a
        -0x74c49124 -> :sswitch_16
        -0x3795e866 -> :sswitch_18
        -0x1a59e793 -> :sswitch_19
    .end sparse-switch

    :sswitch_data_7
    .sparse-switch
        -0x2a875229 -> :sswitch_24
        -0x97a3c3 -> :sswitch_23
        0xffd14ac -> :sswitch_1d
        0x421a2883 -> :sswitch_1f
    .end sparse-switch

    :sswitch_data_8
    .sparse-switch
        -0x485d1567 -> :sswitch_22
        -0x9e7cf9b -> :sswitch_1e
        0x60cad99 -> :sswitch_21
        0x1ee33b0c -> :sswitch_20
    .end sparse-switch
.end method

.method public onPause()V
    .locals 4

    const-string v0, "\u06db\u06d6\u06e8\u06e8\u06da\u06e5\u06d8\u06da\u06ec\u06e2\u06df\u06da\u06eb\u06e1\u06e1\u06e8\u06d8\u06e1\u06e6\u06e0\u06e7\u06db\u06df\u06e6\u06e2\u06d6\u06d8\u06e4\u06e1\u06e7\u06e1\u06d6\u06e1\u06da\u06d8\u06d8\u06d9\u06e0\u06e8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x2f7

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x383

    const/16 v2, 0x226

    const v3, 0x67518a2b

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e5\u06dc\u06e8\u06d8\u06e5\u06db\u06e6\u06d8\u06d7\u06db\u06e7\u06df\u06e6\u06d6\u06d6\u06d8\u06e7\u06e4\u06e1\u06da\u06e6\u06df\u06e7\u06dc\u06d8\u06d6\u06d8\u06e4\u06dc\u06da\u06e7\u06e0\u06e6\u06d8\u06e8\u06d8\u06dc\u06ec\u06db\u06ec"

    goto :goto_0

    :sswitch_1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    const-string v0, "\u06e5\u06d7\u06ec\u06e2\u06e0\u06da\u06e2\u06e2\u06dc\u06d8\u06d7\u06da\u06d9\u06df\u06d6\u06d8\u06d8\u06e6\u06e5\u06d6\u06d8\u06e8\u06ec\u06e8\u06d8\u06d6\u06e7\u06e5\u06d8\u06df\u06e2\u06d6\u06d9\u06e0\u06e6\u06dc\u06d8\u06d8\u06d8\u06e0\u06d7\u06d7"

    goto :goto_0

    :sswitch_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->oo0o0Oo:Z

    const-string v0, "\u06e8\u06ec\u06e5\u06d9\u06d7\u06d6\u06e8\u06e4\u06e1\u06ec\u06e2\u06e6\u06e8\u06db\u06db\u06e5\u06e0\u06d6\u06d8\u06db\u06e6\u06d8\u06d6\u06dc\u06e6\u06eb\u06dc\u06e7\u06ec"

    goto :goto_0

    :sswitch_3
    invoke-static {p0}, Lz2/bh;->OooO0o0(Landroid/content/Context;)V

    const-string v0, "\u06e2\u06dc\u06e5\u06d8\u06d9\u06e2\u06e0\u06d7\u06da\u06e8\u06db\u06db\u06e2\u06ec\u06ec\u06e4\u06d7\u06d8\u06e6\u06db\u06e6\u06d8\u06df\u06eb\u06e5\u06d8\u06df\u06d9\u06ec\u06d6\u06e6\u06d7\u06e8\u06e4\u06e2\u06df\u06e5\u06eb"

    goto :goto_0

    :sswitch_4
    const v1, 0x576e1e2a

    const-string v0, "\u06db\u06df\u06e5\u06e5\u06e0\u06e6\u06d8\u06ec\u06d8\u06d8\u06d6\u06e5\u06d9\u06df\u06e6\u06e5\u06dc\u06d9\u06e1\u06d9\u06e5\u06da\u06da\u06e6\u06d8\u06d9\u06d7\u06e8\u06e5\u06eb\u06e7\u06d7\u06e7\u06e8\u06d8\u06e0\u06df\u06df"

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v2, v1

    sparse-switch v2, :sswitch_data_1

    goto :goto_1

    :sswitch_5
    const v2, 0x4c1edfeb    # 4.1648044E7f

    const-string v0, "\u06e8\u06e5\u06ec\u06e6\u06e4\u06d8\u06d8\u06dc\u06e2\u06d9\u06e7\u06e6\u06d8\u06d6\u06da\u06e6\u06eb\u06e2\u06e7\u06df\u06eb\u06e4\u06dc\u06e8\u06d9\u06da\u06e6\u06ec\u06e0\u06db\u06e1"

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v2

    sparse-switch v3, :sswitch_data_2

    goto :goto_2

    :sswitch_6
    iget-boolean v0, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->o000OOo:Z

    if-eqz v0, :cond_0

    const-string v0, "\u06e2\u06d9\u06da\u06e6\u06eb\u06d8\u06d8\u06e0\u06e6\u06d8\u06e7\u06d7\u06e2\u06dc\u06e4\u06d6\u06d9\u06ec\u06e8\u06d8\u06dc\u06db\u06e6\u06e4\u06e1\u06d8\u06d6\u06dc\u06e1\u06e4\u06eb\u06eb\u06e2\u06e6\u06dc\u06d8\u06e4\u06db\u06eb\u06d6\u06e6\u06e1\u06d8\u06df\u06dc\u06eb\u06df\u06d7\u06eb\u06e6\u06d8\u06e7\u06dc\u06e7\u06e4\u06e4\u06dc"

    goto :goto_2

    :sswitch_7
    const-string v0, "\u06d7\u06e6\u06e2\u06d6\u06e6\u06d6\u06d8\u06e0\u06eb\u06d7\u06e0\u06eb\u06e5\u06e8\u06da\u06d6\u06d8\u06e0\u06df\u06d6\u06d8\u06d8\u06dc\u06df\u06e6\u06e2\u06d8\u06d8\u06e1\u06e8\u06d7\u06d7\u06d6\u06e4\u06e4\u06e4\u06e8\u06db\u06d8\u06e7\u06db\u06d8\u06ec\u06e2\u06df\u06dc\u06d8\u06e0\u06e1\u06e2\u06d7\u06d7\u06dc\u06e1\u06ec\u06e6\u06e6\u06da\u06e6"

    goto :goto_1

    :cond_0
    const-string v0, "\u06e4\u06e8\u06db\u06e2\u06d6\u06e1\u06d7\u06e1\u06e8\u06dc\u06dc\u06d6\u06d6\u06d6\u06db\u06eb\u06e2\u06e6\u06d7\u06e1\u06e4\u06dc\u06d6\u06d8\u06e5\u06d7\u06d9\u06dc\u06e2\u06ec\u06eb\u06e6\u06ec\u06da\u06e7\u06d9\u06e5\u06e6\u06d8\u06d8\u06df\u06e0\u06dc\u06d8"

    goto :goto_2

    :sswitch_8
    const-string v0, "\u06da\u06e1\u06df\u06eb\u06eb\u06df\u06d8\u06e0\u06e1\u06d8\u06e8\u06eb\u06d6\u06e7\u06eb\u06e6\u06d8\u06ec\u06db\u06e7\u06e6\u06e5\u06e6\u06df\u06db\u06eb\u06d6\u06d6\u06dc\u06d8\u06e1\u06d7\u06d6\u06d8\u06e2\u06d6\u06ec\u06d8\u06e4\u06d8"

    goto :goto_2

    :sswitch_9
    const-string v0, "\u06db\u06df\u06df\u06eb\u06d7\u06d8\u06e7\u06e6\u06db\u06e7\u06e4\u06d6\u06e5\u06e6\u06d8\u06d6\u06da\u06dc\u06df\u06e1\u06e6\u06d8\u06d6\u06eb\u06d8\u06d8\u06eb\u06da\u06da\u06df\u06d6\u06d9\u06d7\u06e1\u06d9\u06e8\u06eb\u06db\u06d7\u06e1\u06e1\u06d8\u06e5\u06d8\u06d6\u06d8\u06d6\u06e6\u06eb\u06e4\u06e6\u06d6\u06d8"

    goto :goto_1

    :sswitch_a
    const-string v0, "\u06e6\u06e1\u06e6\u06d8\u06e5\u06e1\u06d8\u06dc\u06dc\u06e1\u06e2\u06d6\u06e8\u06d8\u06d9\u06e7\u06eb\u06d7\u06eb\u06e4\u06d7\u06dc\u06ec\u06e4\u06eb\u06e4\u06e7\u06d7\u06e8\u06d8\u06d8"

    goto :goto_1

    :sswitch_b
    const-string v0, "\u06e7\u06d9\u06dc\u06d8\u06e4\u06e2\u06e2\u06e8\u06e1\u06df\u06e1\u06d8\u06e5\u06d8\u06e6\u06e2\u06dc\u06ec\u06e7\u06e5\u06d8\u06e4\u06e6\u06dc\u06d8\u06d9\u06e6\u06dc\u06d8\u06e6\u06d8\u06e8\u06d8\u06dc\u06e1\u06dc\u06e2\u06e4\u06e1\u06e4\u06e7\u06eb\u06e6\u06dc\u06d8\u06d7\u06e7\u06e7\u06d8\u06eb\u06e7\u06db\u06eb\u06e5\u06d8"

    goto :goto_0

    :sswitch_c
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->OooooOo:Landroid/view/View;

    const v1, 0x7f09031c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->callOnClick()Z

    const-string v0, "\u06ec\u06eb\u06d6\u06d8\u06e8\u06d9\u06d6\u06db\u06e2\u06ec\u06e1\u06e5\u06d8\u06e0\u06e7\u06d8\u06e5\u06e5\u06e4\u06e8\u06e7\u06dc\u06d8\u06dc\u06ec\u06e6\u06db\u06d9\u06e5\u06e2\u06e0\u06e5\u06d8\u06d6\u06d7\u06e2\u06ec\u06e2\u06e4"

    goto :goto_0

    :sswitch_d
    const-string v0, "\u06ec\u06eb\u06d6\u06d8\u06e8\u06d9\u06d6\u06db\u06e2\u06ec\u06e1\u06e5\u06d8\u06e0\u06e7\u06d8\u06e5\u06e5\u06e4\u06e8\u06e7\u06dc\u06d8\u06dc\u06ec\u06e6\u06db\u06d9\u06e5\u06e2\u06e0\u06e5\u06d8\u06d6\u06d7\u06e2\u06ec\u06e2\u06e4"

    goto :goto_0

    :sswitch_e
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6b05febf -> :sswitch_4
        -0xe110357 -> :sswitch_e
        -0x296a220 -> :sswitch_0
        0x19328426 -> :sswitch_c
        0x53dda1bc -> :sswitch_1
        0x68803269 -> :sswitch_2
        0x6e36b215 -> :sswitch_3
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x3da35e62 -> :sswitch_d
        -0xf1f7b85 -> :sswitch_a
        0x18bfd453 -> :sswitch_b
        0x2f01c393 -> :sswitch_5
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        -0x6f68d3eb -> :sswitch_7
        -0x156c10e3 -> :sswitch_8
        0x126ef17 -> :sswitch_6
        0x570dbe0e -> :sswitch_9
    .end sparse-switch
.end method

.method public onResume()V
    .locals 4

    const-string v0, "\u06da\u06e1\u06e5\u06d8\u06e4\u06ec\u06d8\u06d8\u06e1\u06e4\u06e1\u06d8\u06da\u06d9\u06dc\u06d8\u06e2\u06e7\u06d8\u06dc\u06d7\u06eb\u06d9\u06d7\u06d9\u06e5\u06df\u06dc\u06d8\u06da\u06dc\u06d6\u06d8\u06e7\u06e8\u06e0\u06e2\u06e8\u06d9\u06eb\u06db\u06da"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x393

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0xc6

    const/16 v2, 0x46

    const v3, 0x7779ae8

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d7\u06e4\u06e5\u06d7\u06dc\u06e1\u06eb\u06d9\u06eb\u06e5\u06e2\u06ec\u06e0\u06e0\u06d6\u06d7\u06e2\u06e8\u06d8\u06e0\u06eb\u06eb\u06e1\u06e7\u06e6\u06d7\u06dc\u06dc\u06e0\u06ec\u06eb\u06ec\u06e1\u06e2\u06ec\u06ec\u06e1\u06e1\u06d8\u06e1\u06da\u06e5\u06d8\u06da\u06e1\u06d6\u06d8\u06d8\u06d8\u06d8\u06d8\u06e6\u06e0\u06e7\u06e7\u06e6\u06e7\u06d8"

    goto :goto_0

    :sswitch_1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    const-string v0, "\u06d7\u06e8\u06e6\u06eb\u06dc\u06dc\u06d8\u06d8\u06d9\u06ec\u06e6\u06d6\u06d8\u06e0\u06e0\u06d9\u06e1\u06eb\u06d9\u06dc\u06d8\u06dc\u06d9\u06e5\u06e1\u06dc\u06e7\u06d6\u06e7\u06e1\u06e8\u06d8\u06db\u06da\u06da\u06d7\u06e5\u06db\u06eb\u06db\u06d9\u06e8\u06e0"

    goto :goto_0

    :sswitch_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->oo0o0Oo:Z

    const-string v0, "\u06ec\u06dc\u06e8\u06e8\u06d9\u06e7\u06da\u06e5\u06d7\u06e4\u06eb\u06d8\u06d8\u06ec\u06eb\u06d6\u06d8\u06d7\u06dc\u06e1\u06d8\u06e4\u06df\u06da\u06eb\u06e5\u06d6\u06e1\u06ec\u06e7\u06e8\u06e0\u06e0\u06e5\u06e6\u06d9\u06db\u06e0\u06e1\u06d7\u06d8\u06e0\u06dc\u06d8\u06e0\u06e1\u06d9\u06e8\u06d7\u06e2\u06e6\u06e6\u06da\u06da\u06d8"

    goto :goto_0

    :sswitch_3
    invoke-static {p0}, Lz2/bh;->OooO0o(Landroid/content/Context;)V

    const-string v0, "\u06e4\u06e5\u06e8\u06d8\u06d6\u06db\u06e5\u06e6\u06e4\u06d6\u06da\u06e2\u06e1\u06d8\u06d9\u06e2\u06e5\u06d8\u06e0\u06d6\u06e6\u06d6\u06db\u06d6\u06d8\u06e8\u06e5\u06e1\u06dc\u06e2\u06eb\u06d7\u06eb\u06e8\u06d8\u06db\u06e4\u06d8\u06d8\u06d6\u06df\u06eb\u06eb\u06d9\u06d7\u06d8\u06d8\u06dc\u06d8\u06d9\u06e8\u06e1\u06ec\u06d7\u06e1\u06ec\u06e2\u06e7\u06d8\u06e0\u06e8\u06d8"

    goto :goto_0

    :sswitch_4
    const v1, -0x87c740c

    const-string v0, "\u06e2\u06da\u06e8\u06d8\u06da\u06e6\u06d9\u06e1\u06d7\u06db\u06df\u06e5\u06e4\u06d9\u06e6\u06da\u06df\u06e4\u06e8\u06d8\u06e8\u06e7\u06d8\u06d7\u06e6\u06e2\u06e8\u06e6\u06e8\u06da\u06d6\u06e6\u06d6\u06dc\u06d7\u06e5\u06df\u06ec\u06e2\u06e2\u06d9\u06df\u06da\u06e1"

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v2, v1

    sparse-switch v2, :sswitch_data_1

    goto :goto_1

    :sswitch_5
    const-string v0, "\u06e7\u06da\u06e8\u06ec\u06e0\u06e1\u06d8\u06d8\u06e4\u06e4\u06d9\u06e7\u06e6\u06e1\u06e4\u06da\u06df\u06e2\u06e5\u06d8\u06e8\u06da\u06dc\u06e4\u06db\u06e5\u06df\u06d8\u06ec\u06da\u06e2\u06e6\u06d8\u06e5\u06e0\u06d8\u06e7\u06ec\u06d6\u06d8\u06db\u06dc\u06d9\u06d8\u06ec\u06d9\u06d6\u06e6\u06e0\u06e8\u06dc\u06d8\u06d8\u06d6\u06e6\u06e5\u06db\u06e8\u06e7"

    goto :goto_0

    :sswitch_6
    const-string v0, "\u06e8\u06dc\u06da\u06e1\u06d6\u06da\u06da\u06e4\u06d9\u06e7\u06e8\u06e1\u06da\u06da\u06eb\u06d9\u06e7\u06e6\u06d8\u06da\u06d7\u06d6\u06d8\u06df\u06eb\u06e8\u06d8\u06e8\u06df\u06d8\u06e6\u06e4\u06d6\u06d8\u06d6\u06da\u06e6\u06e5\u06d7\u06ec"

    goto :goto_1

    :sswitch_7
    const v2, -0x2e8c19f7

    const-string v0, "\u06db\u06e5\u06e5\u06d8\u06da\u06dc\u06ec\u06d7\u06df\u06df\u06e7\u06e2\u06d6\u06d8\u06df\u06e8\u06d6\u06d8\u06db\u06e6\u06e8\u06d8\u06e1\u06d8\u06e7\u06df\u06df\u06d6\u06d8\u06e0\u06e4\u06dc\u06d8\u06e6\u06da\u06da\u06d9\u06e1\u06e7\u06e8\u06e5\u06e1\u06ec\u06ec\u06da\u06eb\u06e7\u06dc\u06d7\u06d8\u06e1\u06d8\u06e1\u06df\u06da\u06e1\u06dc\u06df\u06e8\u06d8"

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v2

    sparse-switch v3, :sswitch_data_2

    goto :goto_2

    :sswitch_8
    const-string v0, "\u06e1\u06e5\u06e7\u06d8\u06e0\u06dc\u06e6\u06e7\u06d8\u06d6\u06d8\u06d8\u06e0\u06dc\u06dc\u06d9\u06e4\u06d9\u06d8\u06e8\u06d6\u06e0\u06e1\u06e8\u06e8\u06e1\u06d8\u06e0\u06dc\u06e1\u06d9\u06d6\u06eb\u06db\u06e0\u06e6\u06d8\u06e8\u06e8\u06d6\u06e8\u06d6\u06e7\u06e6\u06e6\u06d8\u06d8"

    goto :goto_2

    :cond_0
    const-string v0, "\u06e4\u06da\u06e5\u06d8\u06eb\u06e4\u06e1\u06d8\u06d6\u06e2\u06e8\u06d9\u06e1\u06e2\u06e6\u06e2\u06df\u06e1\u06e4\u06e2\u06e1\u06dc\u06e6\u06e4\u06e1\u06d6\u06d8\u06da\u06e8\u06d8\u06d8\u06df\u06e8\u06e5\u06d8\u06e1\u06dc\u06e0\u06e5\u06d9\u06db\u06dc\u06d6\u06e6\u06d8\u06d6\u06d9\u06df"

    goto :goto_2

    :sswitch_9
    iget-boolean v0, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->oo000o:Z

    if-eqz v0, :cond_0

    const-string v0, "\u06eb\u06d8\u06ec\u06e5\u06e5\u06e5\u06d6\u06d7\u06df\u06e2\u06e0\u06e4\u06da\u06e7\u06eb\u06e2\u06eb\u06d8\u06e6\u06d8\u06e1\u06eb\u06e2\u06e6\u06ec\u06ec\u06e5\u06e1\u06d9"

    goto :goto_2

    :sswitch_a
    const-string v0, "\u06df\u06e0\u06d9\u06d6\u06d9\u06e5\u06e1\u06d7\u06db\u06da\u06e0\u06d8\u06e8\u06e5\u06d8\u06e8\u06d7\u06e6\u06e4\u06d7\u06e0\u06db\u06db\u06dc\u06d8\u06ec\u06e0\u06e5\u06d8\u06ec\u06e7\u06e0\u06d9\u06e8\u06ec\u06eb\u06e8\u06df"

    goto :goto_1

    :sswitch_b
    const-string v0, "\u06e5\u06e2\u06d6\u06e8\u06d7\u06d8\u06df\u06e2\u06e6\u06d8\u06e8\u06e6\u06da\u06e2\u06eb\u06dc\u06d8\u06df\u06e7\u06e5\u06db\u06da\u06d9\u06d9\u06dc\u06df\u06ec\u06d7\u06d8\u06da\u06d6\u06d9\u06e8\u06e2\u06e2\u06d7\u06d7\u06e8"

    goto :goto_1

    :sswitch_c
    const-string v0, "\u06d7\u06db\u06d6\u06d8\u06e5\u06da\u06dc\u06d8\u06d7\u06df\u06dc\u06d7\u06e2\u06e5\u06d7\u06e4\u06d8\u06d6\u06e7\u06e7\u06e8\u06db\u06db\u06ec\u06e6\u06dc\u06e7\u06ec\u06ec\u06d7\u06e8\u06e5\u06e4\u06d6\u06e2\u06df\u06e2\u06d7\u06e2\u06ec\u06e8\u06d8\u06ec\u06e4\u06e2\u06da\u06df\u06e8\u06d8\u06df\u06e6\u06eb"

    goto :goto_0

    :sswitch_d
    iget-object v0, p0, Lcom/cyjh/common/base/activity/BaseModelActivity;->OooooO0:Landroidx/lifecycle/AndroidViewModel;

    check-cast v0, Lz2/na;

    invoke-virtual {v0}, Lz2/na;->Oooo00O()V

    const-string v0, "\u06e7\u06da\u06e8\u06ec\u06e0\u06e1\u06d8\u06d8\u06e4\u06e4\u06d9\u06e7\u06e6\u06e1\u06e4\u06da\u06df\u06e2\u06e5\u06d8\u06e8\u06da\u06dc\u06e4\u06db\u06e5\u06df\u06d8\u06ec\u06da\u06e2\u06e6\u06d8\u06e5\u06e0\u06d8\u06e7\u06ec\u06d6\u06d8\u06db\u06dc\u06d9\u06d8\u06ec\u06d9\u06d6\u06e6\u06e0\u06e8\u06dc\u06d8\u06d8\u06d6\u06e6\u06e5\u06db\u06e8\u06e7"

    goto :goto_0

    :sswitch_e
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7b02fba1 -> :sswitch_2
        -0x4ffcf811 -> :sswitch_e
        -0x2d2db0d2 -> :sswitch_0
        -0x2b0e30a6 -> :sswitch_4
        -0x23ab271f -> :sswitch_1
        0x7316bf1a -> :sswitch_3
        0x784d0e69 -> :sswitch_d
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x13cc5879 -> :sswitch_c
        0x84fcbb7 -> :sswitch_5
        0x1c2394d8 -> :sswitch_7
        0x35c774f9 -> :sswitch_b
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        -0x37495389 -> :sswitch_8
        0x15d70a44 -> :sswitch_6
        0x1c94bd15 -> :sswitch_9
        0x50ce7bea -> :sswitch_a
    .end sparse-switch
.end method

.method public onStop()V
    .locals 4

    const-string v0, "\u06d9\u06e8\u06e7\u06d8\u06e0\u06df\u06da\u06e2\u06e6\u06d8\u06dc\u06e1\u06dc\u06e0\u06db\u06e1\u06d8\u06e2\u06e5\u06e8\u06d8\u06e6\u06e2\u06e1\u06da\u06e8\u06e1\u06e7\u06dc\u06dc\u06d8\u06da\u06d6\u06d7\u06e1\u06e6\u06d8\u06d7\u06e1\u06df\u06e1\u06e1\u06e8\u06d8\u06d6\u06e0\u06eb\u06d7\u06e2\u06d6\u06d8\u06da\u06d6\u06ec"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x167

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x265

    const/16 v2, 0x141

    const v3, -0x91bdc06

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e0\u06e2\u06eb\u06e7\u06db\u06dc\u06d9\u06df\u06e4\u06eb\u06d6\u06d8\u06dc\u06df\u06dc\u06d8\u06e2\u06e4\u06db\u06e2\u06db\u06d7\u06d9\u06ec\u06d8\u06e5\u06eb\u06e6\u06d8\u06e5\u06da\u06db\u06e0\u06d9\u06d7\u06d7\u06ec\u06e7\u06e7\u06e8\u06d7\u06d7\u06d6\u06d8\u06ec\u06d9\u06e6\u06e4\u06df\u06d7"

    goto :goto_0

    :sswitch_1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onStop()V

    const-string v0, "\u06e7\u06da\u06e5\u06d8\u06d8\u06d8\u06e0\u06d7\u06db\u06e4\u06d6\u06d7\u06e7\u06e0\u06da\u06e6\u06d9\u06db\u06e6\u06d9\u06e7\u06da\u06e7\u06ec\u06e1\u06d8\u06df\u06d9\u06db\u06e6"

    goto :goto_0

    :sswitch_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->oo000o:Z

    const-string v0, "\u06e8\u06e1\u06d8\u06d8\u06d9\u06dc\u06e7\u06d8\u06d6\u06d6\u06e6\u06d8\u06dc\u06eb\u06da\u06e8\u06db\u06e0\u06e2\u06e7\u06dc\u06eb\u06eb\u06e6\u06e0\u06eb\u06e4\u06e7\u06eb\u06e1\u06d8\u06e6\u06dc\u06e6\u06d7\u06eb\u06d9\u06e4\u06d9\u06d6\u06d8\u06d8\u06e8\u06e6\u06d8\u06db\u06da\u06da\u06e7\u06e0\u06dc\u06d8\u06e2\u06e0\u06e8"

    goto :goto_0

    :sswitch_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7d5ad30c -> :sswitch_0
        -0x485edf8b -> :sswitch_3
        -0x36066a94 -> :sswitch_2
        0x6cf0ae0c -> :sswitch_1
    .end sparse-switch
.end method

.method public ooOO()V
    .locals 18

    const/4 v14, 0x0

    const/4 v13, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const-string v1, "\u06dc\u06d7\u06d8\u06d8\u06d6\u06e5\u06da\u06e5\u06d7\u06ec\u06e8\u06d6\u06e0\u06da\u06e1\u06e2\u06e8\u06e7\u06da\u06ec\u06dc\u06da\u06e1\u06e1\u06d8\u06d8\u06d8\u06d6\u06db\u06eb\u06d6\u06d8\u06e8\u06e4\u06e7\u06db\u06dc\u06e6\u06d8\u06db\u06e0\u06e6\u06e8\u06e4\u06e1\u06ec\u06d7\u06e5\u06eb\u06d6\u06dc"

    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v15

    const/16 v16, 0x14c

    xor-int v15, v15, v16

    xor-int/lit16 v15, v15, 0x1fa

    const/16 v16, 0x8e

    const v17, 0x99258f0

    xor-int v15, v15, v16

    xor-int v15, v15, v17

    sparse-switch v15, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "\u06d6\u06e2\u06dc\u06d8\u06d9\u06ec\u06d9\u06eb\u06dc\u06d8\u06e1\u06ec\u06eb\u06df\u06e0\u06da\u06e4\u06d8\u06e5\u06d8\u06e2\u06dc\u06e8\u06d8\u06e0\u06da\u06dc\u06d8\u06e8\u06d7\u06e2\u06e6\u06db\u06d8\u06e2\u06d8\u06e6\u06e0\u06e8\u06d8\u06e1\u06db\u06e4\u06d6\u06d8\u06d9\u06df\u06e6\u06d8\u06e5\u06e4\u06e2\u06db\u06da\u06e8\u06d7\u06e0\u06d9"

    goto :goto_0

    :sswitch_1
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u06df\u06d6\u06e5\u06e4\u06d8\u06d8\u06d6\u06e1\u06e0\u06db\u06da\u06d9\u06e2\u06dc\u06ec\u06e7\u06e4\u06d9\u06e8\u06da\u06e0\u06d8\u06df\u06eb\u06db\u06dc\u06db\u06e4\u06e7\u06e7"

    goto :goto_0

    :sswitch_2
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\u06eb\u06d8\u06e8\u06d8\u06e4\u06e8\u06e1\u06d6\u06e4\u06e7\u06e4\u06df\u06e2\u06e7\u06db\u06e0\u06db\u06e1\u06d9\u06d8\u06d9\u06dc\u06e5\u06dc\u06da\u06e4\u06e4\u06eb\u06d7\u06da\u06e4\u06d7\u06e4\u06d6\u06e1\u06dc\u06d8"

    goto :goto_0

    :sswitch_3
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u06dc\u06d9\u06d8\u06d8\u06df\u06e0\u06e8\u06e0\u06d8\u06e6\u06e4\u06e1\u06e0\u06d9\u06ec\u06e0\u06e6\u06df\u06dc\u06e5\u06db\u06d6\u06d6\u06d8\u06dc\u06d6\u06e5\u06e8\u06dc\u06e6\u06e0\u06e5\u06e4\u06db\u06df\u06e6\u06d8\u06d8\u06d9\u06d7\u06e5\u06e0\u06dc\u06d8\u06ec\u06e4\u06e4\u06dc\u06e1\u06eb\u06e0\u06e5\u06e2\u06d9\u06e2\u06d6\u06d8"

    goto :goto_0

    :sswitch_4
    const-string v1, "AppReboot.dex"

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u06d9\u06d6\u06e1\u06e5\u06df\u06e2\u06db\u06e6\u06e6\u06dc\u06dc\u06e7\u06d8\u06d9\u06df\u06e0\u06e5\u06eb\u06d7\u06ec\u06e6\u06df\u06d9\u06d8\u06e6\u06e4\u06e7\u06e7\u06e6\u06d8\u06db\u06df\u06e8\u06db\u06d7\u06e0"

    goto :goto_0

    :sswitch_5
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v1, "\u06e4\u06da\u06e5\u06df\u06e1\u06dc\u06db\u06d8\u06dc\u06d6\u06e4\u06e1\u06e8\u06db\u06e6\u06d8\u06e4\u06e5\u06eb\u06e2\u06e8\u06d9\u06ec\u06e6\u06e5\u06e5\u06d9\u06e5\u06e4\u06ec\u06e5\u06e5\u06e1\u06e7\u06e1\u06d9\u06d6\u06da\u06e7\u06db\u06e4\u06d8\u06d8"

    goto :goto_0

    :sswitch_6
    const v15, 0x56ad356c

    const-string v1, "\u06e1\u06dc\u06e5\u06d9\u06e7\u06e4\u06e0\u06e8\u06dc\u06db\u06e7\u06e0\u06e1\u06eb\u06e8\u06ec\u06e5\u06e2\u06d7\u06da\u06dc\u06d8\u06e1\u06e2\u06d7\u06dc\u06e7\u06d8\u06eb\u06e7\u06d9"

    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v16

    xor-int v16, v16, v15

    sparse-switch v16, :sswitch_data_1

    goto :goto_1

    :sswitch_7
    const-string v1, "\u06d8\u06df\u06d6\u06d8\u06ec\u06ec\u06d8\u06d8\u06dc\u06d6\u06d6\u06d8\u06e1\u06e7\u06e6\u06d8\u06e8\u06e2\u06da\u06e4\u06d9\u06db\u06e4\u06d7\u06e2\u06e2\u06d8\u06d8\u06d8\u06e1\u06d7\u06d7\u06e6\u06df\u06e8\u06d8\u06dc\u06da\u06e6\u06d9\u06d7\u06d7\u06e8\u06db\u06d8\u06df\u06ec\u06e1\u06d8\u06d7\u06e2\u06e4\u06d6\u06e2\u06dc\u06d8"

    goto :goto_0

    :sswitch_8
    const-string v1, "\u06e6\u06d6\u06db\u06e7\u06d6\u06e5\u06d8\u06d7\u06db\u06e5\u06d8\u06e5\u06e2\u06eb\u06db\u06d9\u06d8\u06d8\u06dc\u06e2\u06eb\u06d9\u06d6\u06d6\u06d8\u06e7\u06e4\u06e2\u06e5\u06d6\u06e7\u06d8\u06d8\u06d6\u06ec\u06e2\u06e5\u06e7\u06df\u06d6\u06e2\u06d7\u06da\u06d6\u06d8\u06db\u06eb\u06dc\u06d8\u06eb\u06e8\u06eb\u06db\u06ec\u06d6"

    goto :goto_1

    :sswitch_9
    const v16, -0x135a9071    # -1.5999966E27f

    const-string v1, "\u06e1\u06e5\u06e5\u06d8\u06db\u06db\u06e0\u06e8\u06db\u06e4\u06e1\u06db\u06db\u06db\u06da\u06eb\u06da\u06dc\u06e4\u06e4\u06e8\u06e6\u06e6\u06df\u06e5\u06d8\u06e4\u06d9\u06ec\u06e1\u06e0\u06e5\u06d8\u06db\u06df\u06eb\u06da\u06db\u06e5\u06d8\u06da\u06db\u06d6\u06e7\u06e6\u06d7\u06e2\u06e8\u06db\u06d6\u06d8"

    :goto_2
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v17

    xor-int v17, v17, v16

    sparse-switch v17, :sswitch_data_2

    goto :goto_2

    :sswitch_a
    const-string v1, "\u06e8\u06e0\u06d6\u06d8\u06e1\u06e5\u06da\u06df\u06e8\u06d9\u06e0\u06e8\u06e4\u06e1\u06df\u06df\u06e1\u06e5\u06e0\u06dc\u06e2\u06db\u06e5\u06d6\u06e2\u06d8\u06d9\u06eb\u06dc\u06d6\u06e5\u06d8\u06d7\u06d6\u06e1\u06e5\u06d6\u06e8\u06e1\u06dc\u06e7\u06e0\u06d9\u06e8"

    goto :goto_1

    :cond_0
    const-string v1, "\u06da\u06d6\u06e0\u06ec\u06d9\u06db\u06e5\u06e6\u06eb\u06d9\u06e8\u06d8\u06d8\u06db\u06eb\u06e7\u06e7\u06e7\u06e5\u06d8\u06d8\u06da\u06e6\u06d8\u06e8\u06e5\u06e0\u06da\u06e0\u06e7\u06d7\u06e7\u06e4"

    goto :goto_2

    :sswitch_b
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "\u06e7\u06e8\u06d9\u06e0\u06d7\u06da\u06db\u06da\u06eb\u06db\u06e6\u06d9\u06e4\u06da\u06d6\u06d7\u06e4\u06e4\u06eb\u06ec\u06e2\u06e5\u06db\u06ec\u06e7\u06d6\u06e2\u06eb\u06d9\u06df\u06d9\u06d8\u06d6\u06e6\u06d8\u06da\u06e0\u06d9\u06e2\u06db\u06e7\u06e7\u06d9\u06e6\u06d8\u06d9\u06d7\u06e6\u06d8"

    goto :goto_2

    :sswitch_c
    const-string v1, "\u06d6\u06eb\u06d9\u06ec\u06d9\u06e5\u06d8\u06e1\u06e0\u06dc\u06dc\u06dc\u06e7\u06df\u06e2\u06e5\u06d8\u06e6\u06e1\u06dc\u06d7\u06e5\u06d8\u06e2\u06d6\u06e1\u06d8\u06e1\u06d8\u06e6\u06d8\u06df\u06e6\u06e6\u06e6\u06df\u06e5\u06e4\u06d8\u06e4\u06e5\u06d6\u06e8\u06e7\u06dc\u06e6"

    goto :goto_2

    :sswitch_d
    const-string v1, "\u06e5\u06dc\u06e1\u06db\u06e2\u06db\u06e2\u06d9\u06db\u06e1\u06e8\u06dc\u06d8\u06e8\u06e4\u06d8\u06e7\u06eb\u06e1\u06e2\u06e1\u06e5\u06e1\u06d9\u06d8\u06e6\u06d8\u06e4\u06d6\u06da\u06d9\u06d7\u06e5\u06db\u06da\u06dc\u06d8"

    goto :goto_1

    :sswitch_e
    const-string v1, "\u06df\u06e2\u06db\u06e0\u06e2\u06e0\u06e7\u06e0\u06d8\u06d7\u06e2\u06e5\u06e0\u06d6\u06eb\u06da\u06e6\u06e1\u06d7\u06d8\u06e4\u06e2\u06e2\u06d7\u06e4\u06dc\u06e7\u06d8\u06e1\u06e2\u06d8\u06e1\u06e5\u06e2\u06e2\u06db\u06e8\u06e2\u06df\u06dc\u06d8\u06dc\u06eb\u06e1"

    goto/16 :goto_0

    :sswitch_f
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v8, "AppReboot.dex"

    invoke-static {v1, v8, v13}, Lz2/a4;->OooO0O0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    const-string v1, "\u06e4\u06d6\u06e7\u06d8\u06d6\u06e7\u06da\u06df\u06e5\u06e2\u06db\u06db\u06e5\u06d7\u06e7\u06df\u06db\u06e0\u06dc\u06e4\u06e7\u06d6\u06ec\u06e1\u06d8\u06e6\u06dc\u06dc\u06ec\u06d7\u06dc\u06d8"

    goto/16 :goto_0

    :sswitch_10
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u06e6\u06e1\u06d8\u06e4\u06e1\u06eb\u06e5\u06dc\u06e0\u06d7\u06e5\u06e7\u06d8\u06d6\u06e2\u06df\u06d6\u06df\u06e7\u06d6\u06e6\u06e1\u06d8\u06d8\u06e1\u06d8\u06d8\u06e8\u06df\u06e6\u06d8\u06e4\u06d6\u06e6\u06d8\u06e0\u06e1\u06e6\u06db\u06df\u06d9\u06d6\u06e1\u06d8\u06d8\u06e6\u06dc\u06e7\u06d8\u06e5\u06d7\u06e4\u06e0\u06e7\u06e8\u06d8"

    goto/16 :goto_0

    :sswitch_11
    const-string v12, "=====pushDexToSdcard: "

    const-string v1, "\u06da\u06d9\u06d7\u06df\u06d6\u06dc\u06d8\u06d7\u06d8\u06e1\u06e4\u06e6\u06e2\u06d7\u06e6\u06dc\u06e7\u06dc\u06e1\u06d8\u06d9\u06eb\u06d6\u06d8\u06e6\u06e5\u06e2\u06dc\u06e8\u06e2\u06e2\u06d7\u06e1\u06d8\u06d7\u06e5\u06d6\u06d8\u06d8\u06d6\u06eb\u06d7\u06ec\u06d7\u06e1\u06e1\u06db\u06e6\u06dc\u06d6\u06d8\u06df\u06e5\u06e8\u06d8\u06d8\u06df\u06e8\u06d8\u06da\u06d7\u06e7"

    goto/16 :goto_0

    :sswitch_12
    const-string v1, "\u06e1\u06ec\u06e8\u06eb\u06e5\u06dc\u06d8\u06da\u06e2\u06d7\u06d9\u06d9\u06e4\u06e4\u06e2\u06d9\u06d8\u06e8\u06e5\u06d8\u06e0\u06e6\u06e6\u06d8\u06d8\u06e4\u06d6\u06e4\u06e4\u06e8\u06dc\u06e4\u06dc\u06d8\u06dc\u06e4\u06e8\u06d8\u06ec\u06eb\u06d8\u06d8\u06e5\u06e0\u06d8\u06e0\u06e5\u06e5"

    move-object v11, v12

    goto/16 :goto_0

    :sswitch_13
    const-string v1, "\u06d6\u06e0\u06e6\u06e7\u06da\u06d8\u06d8\u06db\u06e1\u06e6\u06eb\u06d9\u06e6\u06d8\u06d9\u06ec\u06e6\u06e5\u06d9\u06e6\u06eb\u06ec\u06e8\u06e5\u06e4\u06df\u06e7\u06df\u06e6\u06da\u06e8\u06e5\u06e4\u06ec\u06da\u06e0\u06eb"

    move-object v9, v10

    goto/16 :goto_0

    :sswitch_14
    const-string v1, "\u06e4\u06e2\u06e0\u06e0\u06d6\u06e7\u06e6\u06da\u06d7\u06e1\u06dc\u06d8\u06e4\u06d7\u06e0\u06db\u06e6\u06d8\u06e6\u06e6\u06e6\u06e7\u06df\u06e5\u06e8\u06d8\u06e0\u06ec\u06d8\u06e7\u06db\u06e6\u06d7\u06e0\u06e5\u06d8\u06df\u06d9\u06e7\u06ec\u06dc\u06d6\u06d8"

    move v7, v8

    goto/16 :goto_0

    :sswitch_15
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u06d7\u06e1\u06e4\u06d8\u06d6\u06df\u06dc\u06df\u06dc\u06db\u06d8\u06e5\u06d7\u06e6\u06d8\u06d8\u06dc\u06eb\u06e1\u06d8\u06ec\u06d9\u06dc\u06e7\u06e2\u06d9\u06d9\u06d9\u06db\u06e1\u06e1\u06d8\u06d8\u06e0\u06dc\u06df\u06e7\u06e1\u06ec"

    goto/16 :goto_0

    :sswitch_16
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\u06dc\u06e2\u06ec\u06e2\u06ec\u06e8\u06d8\u06d9\u06e5\u06e5\u06e8\u06e8\u06d8\u06db\u06e4\u06d9\u06dc\u06e1\u06d8\u06d7\u06db\u06ec\u06e8\u06e8\u06e6\u06d8\u06e6\u06d6\u06e4\u06e0\u06e6\u06d7\u06da\u06e0\u06e5\u06e0\u06eb\u06db\u06d7\u06da\u06d9\u06d7\u06dc\u06d6\u06e4\u06ec\u06e7\u06e7\u06e2\u06e8\u06d8\u06d6\u06e1\u06e5\u06d8\u06db\u06d9\u06e2"

    goto/16 :goto_0

    :sswitch_17
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const-string v1, "\u06df\u06e0\u06d8\u06d7\u06da\u06dc\u06e0\u06e1\u06db\u06d9\u06e2\u06da\u06d9\u06da\u06e8\u06d8\u06ec\u06e5\u06d8\u06ec\u06da\u06e7\u06e8\u06ec\u06e1\u06e8\u06db\u06dc\u06d8\u06e7\u06e4\u06d8\u06d8"

    goto/16 :goto_0

    :sswitch_18
    const-string v1, "AppReboot.dex"

    move-object/from16 v0, p0

    invoke-static {v0, v1, v13}, Lz2/u8;->OooOOO(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    const-string v1, "\u06eb\u06e1\u06e5\u06e1\u06e0\u06e5\u06e2\u06e0\u06dc\u06e4\u06e8\u06df\u06d9\u06dc\u06e5\u06d8\u06d8\u06df\u06e5\u06eb\u06df\u06e5\u06d8\u06db\u06d8\u06df\u06e4\u06e4\u06df\u06dc\u06d7\u06ec"

    goto/16 :goto_0

    :sswitch_19
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u06eb\u06e2\u06e8\u06ec\u06d8\u06d8\u06d6\u06d8\u06ec\u06e5\u06d7\u06e6\u06d8\u06e0\u06d8\u06d8\u06ec\u06e4\u06e2\u06e8\u06dc\u06e0\u06dc\u06d6\u06e7\u06ec\u06e4\u06e5\u06d8\u06eb\u06d6\u06da\u06eb\u06eb\u06d6\u06d8\u06e6\u06e5\u06dc"

    goto/16 :goto_0

    :sswitch_1a
    const-string v1, "=====pushDexToSdcard: dex\u6587\u4ef6\u5df2\u5b58\u5728,isSame:"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u06db\u06eb\u06ec\u06dc\u06e2\u06e0\u06e5\u06ec\u06d7\u06e0\u06df\u06dc\u06d8\u06e1\u06e8\u06d8\u06d7\u06ec\u06db\u06e4\u06df\u06e2\u06e1\u06db\u06e6\u06d8\u06da\u06db\u06e6\u06d8\u06e5\u06d7\u06dc\u06e0\u06e7\u06d8\u06dc\u06eb\u06d8\u06da\u06e1\u06d8\u06e2\u06e8\u06dc\u06e6\u06e2\u06dc\u06d8\u06d9\u06d7\u06dc\u06e2\u06e2\u06d6\u06d8\u06df\u06e2\u06e0"

    goto/16 :goto_0

    :sswitch_1b
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\u06e2\u06e4\u06dc\u06d8\u06e2\u06e0\u06d6\u06db\u06e1\u06e5\u06dc\u06d9\u06e5\u06d8\u06db\u06e8\u06d8\u06e8\u06d6\u06d6\u06d8\u06d6\u06df\u06e7\u06db\u06da\u06df\u06e6\u06dc\u06dc\u06d6\u06ec\u06ec\u06d6\u06d8\u06d8\u06d8\u06d7\u06e4\u06e8\u06db\u06eb\u06d7\u06e4\u06d7\u06e8\u06d8\u06eb\u06d7\u06e0\u06d6\u06da\u06d7\u06e8\u06d7\u06e1\u06d8\u06e5\u06d6\u06e4"

    goto/16 :goto_0

    :sswitch_1c
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const-string v1, "\u06eb\u06d9\u06e8\u06d8\u06db\u06e6\u06e8\u06d8\u06e7\u06e6\u06d8\u06eb\u06da\u06e8\u06d8\u06eb\u06dc\u06e7\u06e8\u06e6\u06e5\u06d8\u06d8\u06eb\u06ec\u06e2\u06d7\u06df\u06e5\u06e8\u06d8\u06d8\u06d6\u06d8\u06e2\u06db\u06d9\u06d6\u06db\u06db\u06e1\u06d8"

    goto/16 :goto_0

    :sswitch_1d
    const v15, -0x5e4cecc3

    const-string v1, "\u06e1\u06da\u06e6\u06ec\u06e0\u06dc\u06e2\u06df\u06e8\u06d8\u06e1\u06eb\u06d6\u06ec\u06e8\u06d9\u06e2\u06df\u06dc\u06e8\u06d8\u06e1\u06da\u06dc\u06d8\u06e1\u06ec\u06ec\u06e4\u06db\u06e5"

    :goto_3
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v16

    xor-int v16, v16, v15

    sparse-switch v16, :sswitch_data_3

    goto :goto_3

    :sswitch_1e
    const-string v1, "\u06ec\u06db\u06d8\u06d8\u06e2\u06e5\u06e8\u06e1\u06d9\u06e6\u06e2\u06dc\u06e1\u06d8\u06db\u06db\u06d9\u06da\u06d6\u06d8\u06df\u06e2\u06e7\u06e6\u06db\u06dc\u06d8\u06ec\u06e2\u06df\u06d9\u06da\u06e8\u06d8\u06df\u06d9\u06db\u06d7\u06e1\u06eb\u06d7\u06d9\u06e7\u06e1\u06e4\u06e2"

    goto/16 :goto_0

    :sswitch_1f
    const-string v1, "\u06d8\u06ec\u06e6\u06e1\u06e4\u06e5\u06db\u06e0\u06e5\u06e1\u06d6\u06e1\u06d7\u06e7\u06ec\u06e8\u06db\u06eb\u06d7\u06e8\u06e5\u06e8\u06e2\u06ec\u06d9\u06da\u06e1\u06d6\u06e5\u06e1\u06d8\u06e4\u06d7\u06e6\u06d8\u06d6\u06e8\u06e4\u06e4\u06d7\u06e1\u06d8\u06db\u06e8\u06d8\u06d8\u06da\u06e7\u06e2\u06ec\u06e5\u06e4"

    goto :goto_3

    :sswitch_20
    const v16, -0x740f9702

    const-string v1, "\u06d8\u06d7\u06e4\u06d6\u06e2\u06e5\u06d6\u06d6\u06e7\u06d8\u06db\u06d6\u06e5\u06d8\u06d9\u06e1\u06d9\u06e6\u06d7\u06e8\u06e1\u06e7\u06d8\u06d8\u06d9\u06e1\u06e5\u06ec\u06dc\u06d6\u06d8\u06d7\u06df\u06ec\u06df\u06e1\u06e5\u06dc\u06d6\u06ec"

    :goto_4
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v17

    xor-int v17, v17, v16

    sparse-switch v17, :sswitch_data_4

    goto :goto_4

    :sswitch_21
    if-nez v6, :cond_1

    const-string v1, "\u06e1\u06da\u06e8\u06d8\u06da\u06dc\u06e5\u06e2\u06d6\u06d8\u06e7\u06da\u06e5\u06d8\u06da\u06e4\u06d6\u06d6\u06e1\u06d8\u06eb\u06e7\u06e0\u06e1\u06db\u06db\u06d9\u06e2\u06d9\u06e1\u06da\u06e4\u06e2\u06d9\u06e5\u06d9\u06db\u06d6\u06d8\u06dc\u06d8\u06e8\u06d8\u06e1\u06d7"

    goto :goto_4

    :cond_1
    const-string v1, "\u06da\u06e6\u06e4\u06db\u06e0\u06eb\u06e1\u06e2\u06e2\u06e1\u06eb\u06e5\u06d8\u06e8\u06e1\u06ec\u06e2\u06e1\u06d7\u06d9\u06df\u06eb\u06df\u06e4\u06da\u06db\u06e6\u06dc\u06d8\u06e8\u06db\u06d9\u06e1\u06d9\u06dc\u06e6\u06db\u06ec\u06e8\u06df\u06db\u06e2\u06e6\u06e7\u06d8\u06d7\u06eb\u06d8\u06d8\u06df\u06e2\u06d9\u06dc\u06e6\u06e8\u06d8\u06df\u06e5"

    goto :goto_4

    :sswitch_22
    const-string v1, "\u06da\u06d8\u06da\u06e4\u06da\u06dc\u06df\u06e1\u06e7\u06d8\u06d9\u06db\u06e2\u06da\u06e2\u06e2\u06e5\u06db\u06e0\u06eb\u06ec\u06d7\u06d6\u06e4\u06e6\u06d8\u06da\u06dc\u06e8\u06d8\u06e1\u06e6\u06e7\u06e0\u06dc\u06dc\u06d8\u06e6\u06d7\u06d6"

    goto :goto_4

    :sswitch_23
    const-string v1, "\u06e2\u06db\u06e7\u06e8\u06e2\u06d6\u06d8\u06da\u06d7\u06e8\u06d9\u06e0\u06d7\u06df\u06e1\u06dc\u06d8\u06e1\u06e0\u06d7\u06e0\u06d9\u06d6\u06d8\u06e7\u06d8\u06da\u06e1\u06ec\u06ec\u06e5\u06df\u06ec\u06df\u06da\u06d8\u06d8\u06e0\u06e1\u06d6\u06d8\u06d7\u06e6\u06dc\u06e6\u06e2\u06e8\u06d8"

    goto :goto_3

    :sswitch_24
    const-string v1, "\u06e4\u06eb\u06df\u06e0\u06e5\u06db\u06e0\u06dc\u06d8\u06d7\u06e8\u06d8\u06e2\u06df\u06da\u06d6\u06e2\u06e7\u06df\u06dc\u06e8\u06dc\u06d8\u06e0\u06e5\u06e7\u06e5\u06d8\u06e6\u06e0\u06e1\u06d8"

    goto :goto_3

    :sswitch_25
    const-string v1, "\u06dc\u06e7\u06e1\u06d8\u06e6\u06e5\u06e4\u06eb\u06eb\u06e8\u06ec\u06df\u06e5\u06df\u06d8\u06d9\u06d7\u06db\u06d8\u06d8\u06d9\u06da\u06d8\u06e4\u06e1\u06eb\u06ec\u06d6\u06e1\u06d8\u06e4\u06eb\u06e4"

    goto/16 :goto_0

    :sswitch_26
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v4, "AppReboot.dex"

    invoke-static {v1, v4, v13}, Lz2/a4;->OooO0O0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    const-string v1, "\u06ec\u06eb\u06e6\u06df\u06e0\u06e0\u06df\u06e2\u06ec\u06e7\u06dc\u06e2\u06e0\u06e6\u06e7\u06d8\u06e0\u06d6\u06e7\u06d8\u06d8\u06da\u06da\u06d7\u06d7\u06d9\u06e4\u06ec\u06dc\u06d8\u06dc\u06d7\u06e4"

    goto/16 :goto_0

    :sswitch_27
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u06e0\u06d9\u06e1\u06d8\u06e6\u06d6\u06da\u06e6\u06d7\u06da\u06dc\u06e8\u06d6\u06d8\u06ec\u06ec\u06da\u06e5\u06da\u06dc\u06e1\u06e7\u06db\u06e6\u06dc\u06eb\u06d7\u06d9\u06d9\u06df\u06db\u06e2"

    goto/16 :goto_0

    :sswitch_28
    const-string v2, "====\u8986\u76d6=pushDexToSdcard: "

    const-string v1, "\u06e5\u06d8\u06ec\u06e7\u06ec\u06d8\u06d8\u06da\u06e7\u06df\u06e2\u06e6\u06e4\u06e5\u06d6\u06df\u06d7\u06da\u06db\u06d6\u06ec\u06d8\u06d8\u06d7\u06e2\u06d9\u06e0\u06e0\u06d8\u06d8\u06e7\u06dc\u06e5\u06e0\u06e4\u06dc\u06d7\u06d6\u06d9\u06e4\u06e7\u06dc\u06d8\u06d7\u06e8\u06e5\u06d8"

    goto/16 :goto_0

    :sswitch_29
    const-string v1, "\u06db\u06e0\u06e7\u06eb\u06d7\u06ec\u06db\u06e8\u06d8\u06d8\u06eb\u06eb\u06eb\u06da\u06e7\u06e5\u06e6\u06dc\u06e8\u06d8\u06e1\u06e7\u06d8\u06dc\u06dc\u06eb\u06d8\u06e6\u06e8\u06e5\u06d7\u06da\u06db\u06e4\u06df\u06e7\u06e6\u06e1\u06d7\u06ec\u06e2\u06da\u06eb\u06e1\u06d8"

    move v7, v4

    goto/16 :goto_0

    :sswitch_2a
    const-string v1, "\u06da\u06e0\u06df\u06df\u06d9\u06e8\u06d6\u06dc\u06e8\u06d8\u06eb\u06e4\u06eb\u06e8\u06df\u06e2\u06e6\u06da\u06eb\u06e2\u06e6\u06e6\u06d9\u06dc\u06eb\u06d6\u06d6\u06eb\u06e4\u06e1\u06e7\u06e5\u06e8\u06d8\u06db\u06d6\u06d6\u06d8\u06e0\u06d9\u06e7\u06e1\u06db\u06da\u06ec\u06e6\u06d9\u06df\u06e1"

    move-object v9, v3

    goto/16 :goto_0

    :sswitch_2b
    const-string v1, "\u06da\u06dc\u06db\u06d6\u06da\u06e5\u06e5\u06e6\u06e5\u06e2\u06dc\u06dc\u06d8\u06dc\u06eb\u06df\u06da\u06d6\u06df\u06e2\u06ec\u06db\u06db\u06db\u06e5\u06d8\u06df\u06e1\u06db\u06dc\u06e0\u06e7\u06d7\u06eb\u06d8\u06da\u06e4\u06df"

    move-object v11, v2

    goto/16 :goto_0

    :sswitch_2c
    const-string v1, "\u06e4\u06e2\u06e0\u06e0\u06d6\u06e7\u06e6\u06da\u06d7\u06e1\u06dc\u06d8\u06e4\u06d7\u06e0\u06db\u06e6\u06d8\u06e6\u06e6\u06e6\u06e7\u06df\u06e5\u06e8\u06d8\u06e0\u06ec\u06d8\u06e7\u06db\u06e6\u06d7\u06e0\u06e5\u06d8\u06df\u06d9\u06e7\u06ec\u06dc\u06d6\u06d8"

    goto/16 :goto_0

    :sswitch_2d
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7b5ae23e -> :sswitch_13
        -0x6bc6daab -> :sswitch_15
        -0x69b45b60 -> :sswitch_11
        -0x59aabf96 -> :sswitch_4
        -0x521cd112 -> :sswitch_10
        -0x515b9d7e -> :sswitch_27
        -0x4a197871 -> :sswitch_0
        -0x4702369d -> :sswitch_1d
        -0x44d7f1e3 -> :sswitch_1a
        -0x3c6a9e7d -> :sswitch_2d
        -0x2c0348d0 -> :sswitch_1b
        -0x1f055693 -> :sswitch_1c
        -0x1de73e34 -> :sswitch_2a
        -0x18bcad4b -> :sswitch_17
        -0x143b5471 -> :sswitch_3
        -0xc3c0c25 -> :sswitch_6
        -0x94f7953 -> :sswitch_2
        0x15ce94d -> :sswitch_1e
        0x3604919 -> :sswitch_18
        0x8bccefb -> :sswitch_29
        0xc4df4bd -> :sswitch_5
        0x1c720f27 -> :sswitch_f
        0x1cd17bb8 -> :sswitch_16
        0x54058bb7 -> :sswitch_1
        0x5dd90106 -> :sswitch_26
        0x60df64d1 -> :sswitch_19
        0x61b952b8 -> :sswitch_12
        0x6a4389bd -> :sswitch_2b
        0x6fdccd63 -> :sswitch_14
        0x77c51a91 -> :sswitch_28
        0x7e2b6272 -> :sswitch_2c
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x5f126204 -> :sswitch_d
        -0x40893e82 -> :sswitch_7
        -0x1cd0c224 -> :sswitch_9
        0x7c668ea8 -> :sswitch_e
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        -0x25386f78 -> :sswitch_8
        -0x1a79cf6d -> :sswitch_a
        0xc4bc14c -> :sswitch_b
        0x1e10eb4e -> :sswitch_c
    .end sparse-switch

    :sswitch_data_3
    .sparse-switch
        -0x33c69306 -> :sswitch_24
        -0x33c10f3b -> :sswitch_20
        -0x213126c9 -> :sswitch_1e
        -0x438d0c5 -> :sswitch_25
    .end sparse-switch

    :sswitch_data_4
    .sparse-switch
        -0x116d9db8 -> :sswitch_1f
        -0x1151b4e3 -> :sswitch_21
        0xd54e3fe -> :sswitch_23
        0x65cf72f5 -> :sswitch_22
    .end sparse-switch
.end method
