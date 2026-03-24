.class public Lcom/elfin/ad/activity/FullScreenTwoAdActivity;
.super Lcom/cyjh/common/base/activity/BaseActivity;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/elfin/ad/activity/FullScreenTwoAdActivity$OooO;,
        Lcom/elfin/ad/activity/FullScreenTwoAdActivity$OooO0o;
    }
.end annotation


# static fields
.field private static final o00Oo0:Ljava/lang/String;

.field private static final o00Ooo:I = 0x5

.field public static final o00o0O:I = 0x8

.field public static final o00oO0O:I = 0x3e9

.field public static final o00oO0o:I = 0x3

.field public static final o00ooo:I = 0xc8

.field private static final o0OO00O:I = 0x67

.field private static final o0OOO0o:I = 0x65

.field private static final o0Oo0oo:I = 0x66

.field public static final o0ooOO0:I = 0x3ea

.field public static final o0ooOOo:I = 0x3eb

.field private static final o0ooOoO:I = 0x64

.field public static final oo000o:I = 0x3e8


# instance fields
.field private OooooO0:Landroid/widget/ImageView;

.field private OooooOO:Landroid/widget/TextView;

.field private OooooOo:Landroid/widget/TextView;

.field private Oooooo:I

.field private Oooooo0:I

.field private OoooooO:Lcom/elfin/ad/activity/FullScreenTwoAdActivity$OooO;

.field private Ooooooo:Z

.field private o00O0O:I

.field private o0OoOo0:Lcom/elfin/ad/activity/FullScreenTwoAdActivity$OooO0o;

.field private ooOO:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const-string v0, "\u06e1\u06e7\u06d6\u06e5\u06e8\u06dc\u06dc\u06d9\u06e5\u06e8\u06e1\u06ec\u06e4\u06d8\u06e8\u06e6\u06e2\u06db\u06e7\u06e5\u06e6\u06d8\u06da\u06e6\u06da\u06e2\u06da\u06dc\u06df\u06e5\u06e6\u06d8\u06d9\u06e8\u06df\u06db\u06ec\u06e7"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x2f9

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x127

    const/16 v2, 0x37e

    const v3, 0x2c2ba329

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-class v0, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->o00Oo0:Ljava/lang/String;

    const-string v0, "\u06dc\u06e4\u06e7\u06db\u06e2\u06d7\u06e7\u06e8\u06e0\u06eb\u06e5\u06e2\u06eb\u06e7\u06e8\u06e7\u06d8\u06e2\u06e8\u06eb\u06df\u06e8\u06dc\u06e7\u06e6\u06e8\u06d6\u06e6\u06e7\u06e5\u06e6\u06ec\u06eb\u06e7\u06e4\u06d9\u06e7\u06db\u06e5\u06e8\u06d7\u06df"

    goto :goto_0

    :sswitch_1
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x48d66ed6 -> :sswitch_0
        -0x1aa519eb -> :sswitch_1
    .end sparse-switch
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/cyjh/common/base/activity/BaseActivity;-><init>()V

    iput v2, p0, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->Oooooo0:I

    iput v2, p0, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->Oooooo:I

    iput-boolean v2, p0, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->Ooooooo:Z

    new-instance v0, Lcom/elfin/ad/activity/FullScreenTwoAdActivity$OooO0o;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/elfin/ad/activity/FullScreenTwoAdActivity$OooO0o;-><init>(Lcom/elfin/ad/activity/FullScreenTwoAdActivity;Lcom/elfin/ad/activity/FullScreenTwoAdActivity$OooO00o;)V

    iput-object v0, p0, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->o0OoOo0:Lcom/elfin/ad/activity/FullScreenTwoAdActivity$OooO0o;

    iput-boolean v2, p0, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->ooOO:Z

    const/16 v0, 0x64

    iput v0, p0, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->o00O0O:I

    return-void
.end method

.method public static synthetic OooO(Lcom/elfin/ad/activity/FullScreenTwoAdActivity;)I
    .locals 5

    const/4 v1, 0x0

    const-string v0, "\u06d7\u06e0\u06d9\u06dc\u06d7\u06d6\u06db\u06e7\u06e6\u06d8\u06dc\u06e6\u06df\u06d7\u06e5\u06eb\u06e6\u06e4\u06e0\u06e6\u06d7\u06da\u06dc\u06e8\u06e7\u06d8\u06e1\u06d8\u06e6\u06d8\u06e8\u06d8\u06dc\u06d8\u06ec\u06e1\u06e5\u06dc\u06df\u06d7\u06df\u06eb\u06d7\u06eb\u06dc\u06d6\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v3, 0x160

    xor-int/2addr v2, v3

    xor-int/lit16 v2, v2, 0x193

    const/16 v3, 0x260

    const v4, 0x75c973f7

    xor-int/2addr v2, v3

    xor-int/2addr v2, v4

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06eb\u06e2\u06d9\u06da\u06d7\u06e4\u06db\u06e5\u06d8\u06ec\u06ec\u06e0\u06e5\u06eb\u06dc\u06e1\u06e8\u06df\u06d6\u06e8\u06df\u06db\u06dc\u06e1\u06d8\u06d9\u06d6\u06e2\u06e7\u06e6\u06dc\u06da\u06d7\u06d6\u06d8\u06db\u06d7\u06e1\u06e5\u06da\u06e5\u06d8\u06ec\u06e1\u06d8\u06d8\u06e7\u06e2\u06e1\u06eb\u06dc"

    goto :goto_0

    :sswitch_1
    iget v1, p0, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->Oooooo:I

    const-string v0, "\u06ec\u06e6\u06d6\u06e4\u06d8\u06e6\u06d9\u06e5\u06e7\u06d8\u06df\u06eb\u06e5\u06d8\u06e8\u06e2\u06e6\u06d8\u06e6\u06e2\u06e7\u06db\u06e2\u06d9\u06e1\u06da\u06e1\u06e1\u06e4\u06ec\u06d6\u06eb\u06ec\u06d8\u06e7\u06eb\u06e4\u06da\u06e1\u06e2\u06d9\u06e5\u06db\u06ec\u06e8\u06ec\u06e0\u06e8\u06ec\u06d6\u06da"

    goto :goto_0

    :sswitch_2
    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->Oooooo:I

    const-string v0, "\u06eb\u06e4\u06d9\u06df\u06d7\u06e1\u06d8\u06db\u06d6\u06d8\u06ec\u06df\u06d8\u06db\u06e0\u06e1\u06da\u06d7\u06d7\u06eb\u06e7\u06dc\u06e0\u06e2\u06dc\u06d8\u06ec\u06dc\u06da\u06e2\u06da\u06db"

    goto :goto_0

    :sswitch_3
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5b2440ba -> :sswitch_3
        -0x2300844 -> :sswitch_1
        0x55a59cf4 -> :sswitch_0
        0x56671641 -> :sswitch_2
    .end sparse-switch
.end method

.method public static synthetic OooO0oO(Lcom/elfin/ad/activity/FullScreenTwoAdActivity;)V
    .locals 4

    const-string v0, "\u06ec\u06e4\u06df\u06db\u06e1\u06ec\u06dc\u06dc\u06df\u06e1\u06eb\u06d6\u06d9\u06d6\u06e7\u06df\u06e7\u06d7\u06d7\u06e0\u06d8\u06e8\u06da\u06e6\u06d8\u06d7\u06e0\u06e6\u06e2\u06d9\u06e1\u06d7\u06e8\u06db\u06dc\u06d6\u06db\u06d7\u06dc\u06d8\u06d6\u06d7\u06e2\u06e0\u06d9\u06e5\u06ec\u06eb\u06eb\u06d8\u06e8\u06e5\u06d8\u06d8\u06db\u06e1\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x157

    xor-int/2addr v1, v2

    xor-int/lit8 v1, v1, 0x5c

    const/16 v2, 0x227

    const v3, -0x67994e23

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d9\u06e7\u06da\u06e7\u06e0\u06d6\u06d7\u06e5\u06df\u06e7\u06db\u06eb\u06dc\u06e5\u06e8\u06d8\u06da\u06d9\u06e2\u06df\u06d8\u06d8\u06d9\u06e6\u06df\u06dc\u06e0\u06d7\u06e7\u06df\u06d8\u06e5\u06d9\u06e2\u06d9\u06e5\u06e0"

    goto :goto_0

    :sswitch_1
    invoke-direct {p0}, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->OooOo0o()V

    const-string v0, "\u06d8\u06e2\u06e7\u06d6\u06e8\u06db\u06db\u06e2\u06dc\u06e1\u06e8\u06e6\u06d8\u06e1\u06dc\u06e0\u06e6\u06d9\u06d8\u06df\u06d8\u06e6\u06e1\u06df\u06e8\u06e1\u06dc\u06e1\u06eb\u06da\u06e2\u06ec\u06d6\u06d8\u06e5\u06d7\u06e6\u06e1\u06e7\u06e8\u06d8\u06d9\u06db\u06e0\u06db\u06d7\u06d8\u06d9\u06dc\u06e6\u06d8\u06e1\u06df\u06da\u06d9\u06e1\u06da"

    goto :goto_0

    :sswitch_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x66862ac0 -> :sswitch_2
        0x90b67a0 -> :sswitch_0
        0x2f479328 -> :sswitch_1
    .end sparse-switch
.end method

.method public static synthetic OooO0oo(Lcom/elfin/ad/activity/FullScreenTwoAdActivity;)V
    .locals 4

    const-string v0, "\u06d9\u06ec\u06d8\u06d8\u06e2\u06e0\u06e0\u06e1\u06e0\u06d7\u06e1\u06e4\u06e7\u06d7\u06e0\u06e8\u06da\u06e8\u06e7\u06ec\u06d6\u06e6\u06db\u06eb\u06dc\u06e0\u06e7\u06db\u06dc\u06e6\u06e7\u06d8\u06da\u06dc\u06da\u06da\u06eb\u06da\u06e4\u06e2\u06e1\u06d8\u06ec\u06e8\u06e2"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x2b6

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x198

    const/16 v2, 0x257

    const v3, -0x7b5fbde1

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e8\u06e5\u06e4\u06e6\u06ec\u06dc\u06e6\u06e7\u06d9\u06e6\u06e8\u06e1\u06e4\u06e5\u06e8\u06d8\u06e0\u06e2\u06e4\u06dc\u06e2\u06e6\u06e5\u06e6\u06df\u06e7\u06df\u06e8\u06eb\u06e5\u06d8\u06e2\u06e2\u06e8\u06d8\u06d6\u06e5\u06e5\u06d7\u06e6\u06e7\u06d8\u06e0\u06e8\u06df"

    goto :goto_0

    :sswitch_1
    invoke-direct {p0}, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->OooOOOo()V

    const-string v0, "\u06ec\u06e4\u06e6\u06d8\u06eb\u06e6\u06e1\u06d8\u06da\u06da\u06ec\u06ec\u06ec\u06e1\u06d8\u06e8\u06e8\u06da\u06d6\u06e8\u06df\u06e5\u06e7\u06dc\u06e4\u06e6\u06e6\u06d8\u06e0\u06dc\u06e4\u06d7\u06d6\u06d9\u06e7\u06e1\u06eb\u06e8\u06d6\u06e7\u06d8"

    goto :goto_0

    :sswitch_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x5cfafc22 -> :sswitch_1
        0x12282410 -> :sswitch_0
        0x23b3ebac -> :sswitch_2
    .end sparse-switch
.end method

.method public static synthetic OooOO0(Lcom/elfin/ad/activity/FullScreenTwoAdActivity;)Z
    .locals 4

    const-string v0, "\u06e5\u06e5\u06e6\u06d8\u06dc\u06d7\u06ec\u06e2\u06e8\u06d8\u06e4\u06e2\u06d8\u06df\u06e0\u06e8\u06e1\u06d8\u06da\u06eb\u06d9\u06e1\u06d8\u06d7\u06e7\u06e8\u06d8\u06d6\u06e8\u06db\u06e4\u06e7\u06dc\u06d8\u06db\u06da\u06d6\u06d8\u06e2\u06ec\u06d7\u06e2\u06dc\u06d7\u06e6\u06e2\u06e6\u06d7\u06d6\u06dc\u06d8\u06eb\u06df\u06e1\u06d8\u06da\u06d7\u06e5\u06d8\u06d6\u06db\u06d7"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x39d

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x353

    const/16 v2, 0x1bd

    const v3, -0x1c90acc7

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e7\u06d6\u06e8\u06d8\u06df\u06e2\u06e8\u06d6\u06e2\u06da\u06db\u06e8\u06e0\u06e2\u06ec\u06d6\u06d8\u06e4\u06df\u06e7\u06e6\u06eb\u06d9\u06e0\u06e8\u06ec\u06e1\u06e4\u06e5\u06e8\u06dc\u06d8\u06d9\u06e2\u06d8\u06df\u06e1\u06df\u06d7\u06e1\u06e8\u06d8\u06e4\u06e6\u06ec\u06e8\u06e6\u06e5\u06d8\u06e5\u06e1\u06e1\u06d8\u06e5\u06d8\u06e1\u06e2\u06ec\u06d6"

    goto :goto_0

    :sswitch_1
    iget-boolean v0, p0, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->Ooooooo:Z

    return v0

    :sswitch_data_0
    .sparse-switch
        0x3c20c0f7 -> :sswitch_1
        0x71d0f0e9 -> :sswitch_0
    .end sparse-switch
.end method

.method public static synthetic OooOO0O(Lcom/elfin/ad/activity/FullScreenTwoAdActivity;)Landroid/widget/TextView;
    .locals 4

    const-string v0, "\u06d8\u06ec\u06e4\u06dc\u06e1\u06d6\u06d8\u06d7\u06d7\u06db\u06e0\u06e5\u06eb\u06d6\u06e0\u06eb\u06e1\u06d6\u06d9\u06eb\u06ec\u06e8\u06e0\u06ec\u06e2\u06e8\u06d7\u06e1\u06d9\u06dc\u06e6\u06d9\u06d9\u06d7\u06eb\u06d8\u06ec\u06d9\u06dc\u06d8\u06e7\u06db\u06e1\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x21

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0xcf

    const/16 v2, 0x8d

    const v3, -0x6037b127

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06df\u06eb\u06e6\u06e2\u06d8\u06e7\u06e1\u06d9\u06e5\u06d8\u06eb\u06e4\u06db\u06e2\u06e4\u06df\u06e8\u06d6\u06e4\u06e2\u06e0\u06e6\u06d8\u06dc\u06e6\u06e7\u06d8\u06df\u06db\u06ec\u06db\u06d7\u06e1"

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->OooooOo:Landroid/widget/TextView;

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0xb861e43 -> :sswitch_1
        0x3ac6c689 -> :sswitch_0
    .end sparse-switch
.end method

.method private OooOO0o()V
    .locals 6

    const/4 v2, 0x0

    const-string v0, "\u06d6\u06d6\u06dc\u06d8\u06e6\u06d6\u06d9\u06df\u06df\u06eb\u06e1\u06e5\u06d6\u06dc\u06df\u06e4\u06db\u06d8\u06db\u06e2\u06e6\u06e1\u06e7\u06e2\u06e1\u06d8\u06e5\u06e4\u06d8\u06e4\u06e1\u06e2\u06dc\u06e2\u06db\u06df\u06db\u06e8\u06d9\u06e2\u06db\u06eb\u06e1"

    move-object v1, v2

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/16 v4, 0xde

    xor-int/2addr v3, v4

    xor-int/lit16 v3, v3, 0x247

    const/16 v4, 0x29c

    const v5, 0x9980c0c

    xor-int/2addr v3, v4

    xor-int/2addr v3, v5

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d9\u06e0\u06e5\u06e0\u06ec\u06e8\u06df\u06d7\u06e8\u06db\u06d6\u06db\u06e7\u06ec\u06dc\u06d6\u06dc\u06d8\u06e7\u06df\u06e5\u06df\u06e7\u06d6\u06e6\u06e0\u06da\u06e8\u06e0\u06e8\u06d8"

    goto :goto_0

    :sswitch_1
    iget-object v1, p0, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->OoooooO:Lcom/elfin/ad/activity/FullScreenTwoAdActivity$OooO;

    const-string v0, "\u06eb\u06e1\u06e8\u06d8\u06ec\u06e7\u06e1\u06d8\u06d9\u06df\u06d6\u06d8\u06e8\u06db\u06e4\u06eb\u06d6\u06e6\u06df\u06e8\u06d8\u06e7\u06e0\u06d6\u06ec\u06d7\u06e2\u06eb\u06eb\u06d6\u06d8\u06d7\u06d7\u06e8\u06d8\u06e4\u06e2\u06e0\u06e0\u06d8\u06eb\u06e4\u06e1\u06e6\u06d8\u06e0\u06d9\u06d6"

    goto :goto_0

    :sswitch_2
    const v3, 0x73cf2a49

    const-string v0, "\u06e1\u06db\u06ec\u06e1\u06e7\u06dc\u06d8\u06db\u06e5\u06e7\u06d8\u06e8\u06d9\u06e1\u06d9\u06e8\u06d8\u06e6\u06e8\u06e2\u06ec\u06e7\u06d9\u06d8\u06e8\u06e6\u06d8\u06e4\u06d8\u06da\u06e5\u06dc\u06e2\u06d6\u06d9\u06e5\u06e7\u06d9\u06e1\u06e0\u06d8\u06e4\u06d7\u06db\u06e5\u06ec\u06e5\u06e1\u06d8\u06e4\u06dc\u06d6\u06d8\u06dc\u06d6\u06e2\u06e8\u06e8\u06d7"

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    xor-int/2addr v4, v3

    sparse-switch v4, :sswitch_data_1

    goto :goto_1

    :sswitch_3
    const-string v0, "\u06e6\u06d7\u06e5\u06d8\u06da\u06d6\u06d7\u06d9\u06e8\u06ec\u06d6\u06e6\u06dc\u06d8\u06df\u06e0\u06e1\u06e1\u06e2\u06db\u06e4\u06d9\u06e1\u06d8\u06d6\u06db\u06e6\u06d8\u06ec\u06e4\u06e7\u06e1\u06e4\u06e6"

    goto :goto_1

    :sswitch_4
    const-string v0, "\u06db\u06e1\u06dc\u06dc\u06da\u06df\u06e5\u06d8\u06e1\u06e4\u06e4\u06d8\u06dc\u06da\u06d8\u06d8\u06e5\u06ec\u06e6\u06d8\u06e6\u06eb\u06e6\u06d8\u06d8\u06e5\u06e4\u06e2\u06da\u06e8\u06eb\u06ec\u06e1\u06d8\u06e0\u06ec\u06e6\u06d8\u06db\u06e4\u06dc\u06d8\u06d7\u06dc\u06d8\u06dc\u06e2\u06d6\u06d8\u06db\u06d6\u06eb\u06e6\u06e7\u06d9"

    goto :goto_1

    :sswitch_5
    const v4, -0x29f64e64

    const-string v0, "\u06d6\u06e6\u06e1\u06eb\u06e8\u06e2\u06dc\u06e6\u06d8\u06d7\u06e8\u06e7\u06d8\u06e6\u06ec\u06d8\u06d8\u06df\u06e1\u06e6\u06d8\u06d6\u06d6\u06eb\u06d8\u06e1\u06d7\u06ec\u06e6\u06d8\u06d8\u06e0\u06d8\u06dc\u06eb\u06df\u06da\u06e8\u06d7\u06e6"

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v5

    xor-int/2addr v5, v4

    sparse-switch v5, :sswitch_data_2

    goto :goto_2

    :sswitch_6
    const-string v0, "\u06e6\u06ec\u06e4\u06dc\u06eb\u06d6\u06d7\u06d6\u06ec\u06d9\u06d8\u06e7\u06e4\u06e7\u06e8\u06d9\u06ec\u06dc\u06d8\u06d6\u06e5\u06e4\u06ec\u06eb\u06d8\u06e2\u06d6\u06dc\u06e8\u06e4\u06e4\u06db\u06e6\u06da\u06db\u06dc\u06d8\u06ec\u06e7\u06da\u06eb\u06ec\u06ec\u06ec\u06da\u06e8\u06d8\u06eb\u06d8\u06e1\u06d8\u06e0\u06e8\u06e8\u06d8\u06e6\u06e0\u06e1\u06d8"

    goto :goto_1

    :cond_0
    const-string v0, "\u06e0\u06ec\u06ec\u06db\u06da\u06e6\u06d8\u06e1\u06e6\u06e4\u06df\u06e1\u06d8\u06d8\u06d9\u06e4\u06df\u06e7\u06df\u06e4\u06e1\u06d7\u06ec\u06df\u06e4\u06e5\u06ec\u06e2\u06e8\u06d8\u06e2\u06d7\u06dc\u06e2\u06e5\u06d9\u06e7\u06e6\u06eb\u06e1\u06e4\u06e5\u06d8\u06ec\u06da\u06e8"

    goto :goto_2

    :sswitch_7
    if-eqz v1, :cond_0

    const-string v0, "\u06da\u06eb\u06e8\u06d8\u06e4\u06d7\u06d6\u06e0\u06eb\u06d7\u06db\u06da\u06dc\u06e8\u06d9\u06e6\u06d8\u06e2\u06db\u06d6\u06d8\u06dc\u06d7\u06eb\u06dc\u06ec\u06e8\u06d7\u06e2\u06eb\u06db\u06e4\u06df\u06df\u06db\u06e0\u06e7\u06e7\u06e1\u06d8\u06e7\u06e6\u06ec\u06db\u06dc\u06d7\u06d6\u06db\u06dc\u06e7\u06e8"

    goto :goto_2

    :sswitch_8
    const-string v0, "\u06e1\u06e2\u06eb\u06e5\u06df\u06df\u06d7\u06dc\u06d8\u06db\u06da\u06e6\u06e8\u06da\u06e7\u06d7\u06e7\u06e2\u06d9\u06e6\u06e6\u06e1\u06df\u06e8\u06e4\u06e1\u06dc\u06d8\u06eb\u06e5\u06e4"

    goto :goto_2

    :sswitch_9
    const-string v0, "\u06da\u06e8\u06ec\u06ec\u06e7\u06da\u06d6\u06e0\u06df\u06e7\u06e2\u06e4\u06dc\u06d9\u06e7\u06d9\u06da\u06e6\u06d7\u06e8\u06e6\u06e0\u06d6\u06d9\u06d8\u06e8\u06e2\u06e6\u06e5\u06e7\u06e8\u06e1\u06d6\u06d8\u06d9\u06d9\u06d6\u06d8"

    goto :goto_0

    :sswitch_a
    invoke-virtual {v1}, Landroid/os/CountDownTimer;->cancel()V

    const-string v0, "\u06e7\u06e4\u06e2\u06d7\u06db\u06ec\u06dc\u06e6\u06e1\u06d8\u06e8\u06da\u06d7\u06df\u06df\u06e1\u06d8\u06da\u06d7\u06df\u06da\u06d8\u06e1\u06d7\u06eb\u06d6\u06e5\u06dc\u06dc\u06d8\u06e5\u06e7\u06e1\u06d9\u06d7\u06e1\u06d8\u06e4\u06e8\u06e6\u06df\u06e2\u06da\u06dc\u06d6\u06d8\u06e4\u06df\u06e5\u06d8\u06d7\u06db\u06dc\u06d8\u06e1\u06db\u06eb\u06e1\u06db\u06e5\u06d8"

    goto :goto_0

    :sswitch_b
    const/4 v0, 0x0

    iput v0, p0, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->Oooooo:I

    const-string v0, "\u06e0\u06d7\u06d8\u06e7\u06df\u06e1\u06d8\u06dc\u06d7\u06d8\u06d8\u06e4\u06d8\u06d8\u06d8\u06e4\u06d9\u06d6\u06ec\u06e7\u06e0\u06e7\u06e2\u06e4\u06ec\u06d6\u06e1\u06d8\u06ec\u06e2\u06e6\u06ec\u06e8\u06ec\u06ec\u06d9\u06eb\u06e2\u06eb\u06db\u06d8\u06e8\u06d6\u06e2\u06d8\u06d6\u06e5\u06e8\u06e6\u06d8\u06d7\u06e1\u06e8"

    goto :goto_0

    :sswitch_c
    iput-object v2, p0, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->OoooooO:Lcom/elfin/ad/activity/FullScreenTwoAdActivity$OooO;

    const-string v0, "\u06e5\u06d6\u06e7\u06eb\u06d9\u06da\u06d8\u06d8\u06d7\u06da\u06e8\u06e5\u06e4\u06d8\u06dc\u06e7\u06df\u06e8\u06e2\u06d7\u06e8\u06eb\u06e8\u06d6\u06d8\u06e0\u06d8\u06e8\u06d8\u06df\u06d8\u06da\u06da\u06e7\u06d7\u06da\u06eb\u06d9\u06d7\u06db\u06e4\u06e2\u06eb\u06e6\u06d8"

    goto :goto_0

    :sswitch_d
    const-string v0, "\u06e5\u06d6\u06e7\u06eb\u06d9\u06da\u06d8\u06d8\u06d7\u06da\u06e8\u06e5\u06e4\u06d8\u06dc\u06e7\u06df\u06e8\u06e2\u06d7\u06e8\u06eb\u06e8\u06d6\u06d8\u06e0\u06d8\u06e8\u06d8\u06df\u06d8\u06da\u06da\u06e7\u06d7\u06da\u06eb\u06d9\u06d7\u06db\u06e4\u06e2\u06eb\u06e6\u06d8"

    goto :goto_0

    :sswitch_e
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x67729ecf -> :sswitch_e
        -0x5227d552 -> :sswitch_0
        -0x380e62a9 -> :sswitch_1
        -0x31760b88 -> :sswitch_a
        0x11b4487d -> :sswitch_c
        0x48ab4905 -> :sswitch_2
        0x6fbf0816 -> :sswitch_b
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x5dd18a46 -> :sswitch_3
        -0x59349d9f -> :sswitch_5
        0x4009c25 -> :sswitch_d
        0x4ffe568a -> :sswitch_9
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        -0x4fc3b8b8 -> :sswitch_6
        -0x39ea3e62 -> :sswitch_7
        -0x17102bdd -> :sswitch_4
        -0x150c3061 -> :sswitch_8
    .end sparse-switch
.end method

.method private OooOOO(Ljava/lang/String;)V
    .locals 6

    const/4 v2, 0x0

    const-string v0, "\u06dc\u06e6\u06e5\u06d9\u06db\u06e8\u06d8\u06dc\u06e4\u06e7\u06d8\u06e7\u06db\u06db\u06db\u06e8\u06d8\u06e7\u06e4\u06e5\u06d7\u06df\u06d9\u06dc\u06e4\u06e0\u06eb\u06e8\u06da\u06e8\u06da\u06d9"

    move-object v1, v2

    move-object v3, v2

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v4, 0x38a

    xor-int/2addr v2, v4

    xor-int/lit16 v2, v2, 0x194

    const/16 v4, 0x3af

    const v5, -0x1fd3420b

    xor-int/2addr v2, v4

    xor-int/2addr v2, v5

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e5\u06ec\u06d7\u06e1\u06d8\u06e0\u06d6\u06d8\u06d9\u06da\u06d8\u06e6\u06d8\u06e8\u06eb\u06e5\u06dc\u06e6\u06e5\u06d8\u06d7\u06df\u06db\u06d6\u06dc\u06e4\u06ec\u06eb\u06e1\u06d8\u06d6\u06da\u06e2\u06dc\u06da\u06e8\u06d8\u06e1\u06e2\u06d6\u06e5\u06e0\u06ec\u06e2\u06e8\u06db"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06db\u06dc\u06e7\u06da\u06d8\u06df\u06e5\u06db\u06d8\u06e2\u06e5\u06da\u06e2\u06da\u06e1\u06e6\u06eb\u06e7\u06d6\u06e0\u06e6\u06da\u06d9\u06e1\u06e1\u06eb\u06d8\u06d8\u06df\u06d8\u06e5\u06d8\u06e4\u06da\u06d8\u06d8\u06e2\u06e8"

    goto :goto_0

    :sswitch_2
    const v2, -0x44804d6

    const-string v0, "\u06e4\u06e6\u06dc\u06d6\u06db\u06d8\u06eb\u06df\u06e5\u06e6\u06dc\u06e7\u06d8\u06eb\u06d8\u06e7\u06d8\u06db\u06db\u06dc\u06d7\u06da\u06d8\u06e5\u06eb\u06eb\u06d9\u06d8\u06e6\u06d7\u06ec\u06eb\u06d6\u06e6\u06ec\u06da\u06df\u06e6\u06d8\u06eb\u06e4\u06db\u06eb\u06ec\u06eb\u06eb\u06da\u06ec\u06e6\u06eb\u06df"

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    xor-int/2addr v4, v2

    sparse-switch v4, :sswitch_data_1

    goto :goto_1

    :sswitch_3
    const-string v0, "\u06df\u06eb\u06e6\u06d8\u06db\u06eb\u06dc\u06d8\u06e2\u06e1\u06d8\u06d8\u06e2\u06e8\u06d8\u06e0\u06e6\u06e8\u06e6\u06e4\u06e1\u06d8\u06e7\u06e6\u06e8\u06ec\u06d7\u06df\u06e7\u06d9\u06e8\u06e2\u06e7\u06d6\u06e7\u06d8\u06d8\u06df\u06d8\u06d8\u06e8\u06dc\u06da\u06db\u06d7\u06d6\u06d8\u06e4\u06d9\u06e8\u06d8\u06d6\u06e8\u06db\u06d7\u06d9\u06e4\u06db\u06e8\u06e1"

    goto :goto_0

    :sswitch_4
    const-string v0, "\u06e2\u06eb\u06e0\u06df\u06e7\u06df\u06e0\u06e0\u06d6\u06da\u06db\u06da\u06e6\u06e5\u06e6\u06e5\u06dc\u06d6\u06d9\u06e5\u06e1\u06da\u06e4\u06db\u06e7\u06d6\u06d8\u06d8\u06d6\u06d6\u06d8\u06d6\u06e5\u06da\u06e4\u06ec\u06e5\u06d8\u06ec\u06e8\u06d6\u06d6\u06e0\u06e4\u06d8\u06e0\u06d6\u06d8\u06db\u06e2\u06dc\u06d8\u06e8\u06e1\u06e1\u06d8\u06d6\u06d7\u06d8\u06d8"

    goto :goto_1

    :sswitch_5
    const v4, 0x49254b63

    const-string v0, "\u06ec\u06da\u06e5\u06e5\u06dc\u06e1\u06d8\u06e1\u06dc\u06e6\u06e7\u06e6\u06e6\u06d8\u06eb\u06d7\u06e8\u06d8\u06d9\u06eb\u06e5\u06e4\u06da\u06d8\u06d8\u06e4\u06e0\u06db\u06d6\u06df\u06dc\u06e4\u06e6\u06e7\u06d8"

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v5

    xor-int/2addr v5, v4

    sparse-switch v5, :sswitch_data_2

    goto :goto_2

    :sswitch_6
    const-string v0, "\u06e5\u06d7\u06db\u06e8\u06da\u06d8\u06e8\u06e4\u06d8\u06d8\u06e6\u06d6\u06d9\u06da\u06e4\u06e8\u06e2\u06e8\u06d6\u06d8\u06d7\u06e0\u06e2\u06db\u06d9\u06d6\u06e2\u06dc\u06db\u06ec\u06e2\u06d9\u06df\u06eb\u06d9\u06db\u06d6\u06d7\u06e7\u06e5\u06d8\u06d6\u06e7\u06d8\u06d8"

    goto :goto_1

    :cond_0
    const-string v0, "\u06e2\u06d9\u06e6\u06e2\u06ec\u06da\u06d6\u06e6\u06ec\u06e1\u06db\u06e2\u06d6\u06e4\u06e8\u06d7\u06e1\u06d8\u06eb\u06e0\u06e6\u06e5\u06e2\u06da\u06eb\u06e6\u06d6\u06db\u06ec\u06d7\u06e0\u06e8\u06d8\u06d8\u06e1\u06e5\u06db\u06e7\u06e4\u06e2\u06e1\u06df\u06ec\u06d7\u06da\u06d7\u06d6\u06eb\u06e4\u06eb\u06e6\u06d8\u06e2\u06e4\u06e6\u06d8"

    goto :goto_2

    :sswitch_7
    const-string v0, ".gif"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u06db\u06e4\u06e5\u06d9\u06ec\u06dc\u06e0\u06db\u06eb\u06e0\u06d9\u06ec\u06eb\u06e8\u06e6\u06e7\u06dc\u06d8\u06d9\u06da\u06ec\u06db\u06e8\u06ec\u06ec\u06e6\u06d6\u06dc\u06e6\u06d9\u06da\u06e0\u06d6\u06d8\u06ec\u06e7\u06db\u06ec\u06d7\u06dc\u06d8\u06e0\u06e2\u06e6"

    goto :goto_2

    :sswitch_8
    const-string v0, "\u06e1\u06ec\u06e5\u06d8\u06e8\u06e1\u06e8\u06db\u06eb\u06d6\u06eb\u06da\u06ec\u06e7\u06e2\u06e5\u06d7\u06eb\u06df\u06eb\u06e5\u06d7\u06e4\u06d7\u06e6\u06df\u06e8\u06e7\u06e5\u06eb\u06da\u06da\u06e2\u06db\u06da\u06d6\u06e8\u06d7\u06eb\u06e8\u06e6"

    goto :goto_2

    :sswitch_9
    const-string v0, "\u06e7\u06eb\u06df\u06d8\u06e8\u06e1\u06e2\u06e8\u06d8\u06d8\u06da\u06ec\u06d6\u06e8\u06d8\u06ec\u06d9\u06e4\u06df\u06d8\u06e5\u06db\u06db\u06e0\u06d6\u06da\u06e6\u06df\u06da\u06e6\u06d8\u06dc\u06d9\u06e8\u06d8\u06e5\u06d9\u06dc\u06d8\u06e4\u06da\u06e6\u06e4\u06e5\u06d6\u06d8\u06eb\u06e4\u06d9\u06dc\u06e4\u06e6\u06d8\u06e7\u06e0\u06da\u06e1\u06d8\u06ec"

    goto :goto_1

    :sswitch_a
    invoke-static {}, Lz2/m4;->OooO0OO()Lz2/p1;

    move-result-object v2

    const-string v0, "\u06df\u06d7\u06d6\u06e7\u06d6\u06ec\u06e8\u06df\u06d7\u06e4\u06d7\u06e0\u06d6\u06ec\u06db\u06dc\u06da\u06e6\u06e1\u06e6\u06df\u06da\u06d7\u06e6\u06d8\u06e2\u06e1\u06e1\u06e0\u06e8"

    move-object v3, v2

    goto :goto_0

    :sswitch_b
    sget-object v0, Lz2/o0oo0000;->OooO0OO:Lz2/o0oo0000;

    invoke-virtual {v3, v0}, Lz2/i1;->OooOOoo(Lz2/o0oo0000;)Lz2/i1;

    const-string v0, "\u06e6\u06e0\u06ec\u06e8\u06e5\u06dc\u06d6\u06d7\u06e0\u06e5\u06eb\u06db\u06d8\u06d9\u06e6\u06d8\u06e4\u06e5\u06db\u06da\u06e5\u06d7\u06e6\u06e5\u06e5\u06d8\u06d7\u06d6\u06e1\u06e5\u06e8\u06e6\u06e1\u06e6\u06df\u06dc\u06e5\u06e0\u06e7\u06e6\u06d8\u06d8\u06d8\u06dc\u06ec"

    goto :goto_0

    :sswitch_c
    iget-object v0, p0, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->OooooO0:Landroid/widget/ImageView;

    invoke-static {p0, p1, v0, v3}, Lz2/m4;->OooOOO(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;Lz2/p1;)V

    const-string v0, "\u06db\u06eb\u06e6\u06d8\u06e1\u06ec\u06dc\u06d8\u06d8\u06ec\u06e1\u06d8\u06d7\u06db\u06db\u06df\u06e2\u06e2\u06e5\u06d7\u06d7\u06ec\u06e6\u06df\u06dc\u06dc\u06d8\u06e0\u06ec\u06d6\u06e1\u06e0\u06e5\u06d7\u06d8\u06d8\u06df\u06d8\u06da\u06dc\u06dc\u06d9\u06eb\u06e7\u06d9"

    goto :goto_0

    :sswitch_d
    invoke-static {}, Lz2/m4;->OooO0OO()Lz2/p1;

    move-result-object v1

    const-string v0, "\u06e5\u06d6\u06e6\u06d8\u06d6\u06da\u06e8\u06e5\u06e2\u06d6\u06d6\u06e0\u06e2\u06df\u06e7\u06d6\u06e8\u06e4\u06d7\u06e6\u06ec\u06da\u06d9\u06e8\u06e5\u06eb\u06e4\u06eb\u06ec\u06d9"

    goto :goto_0

    :sswitch_e
    sget-object v0, Lz2/o0oo0000;->OooO0O0:Lz2/o0oo0000;

    invoke-virtual {v1, v0}, Lz2/i1;->OooOOoo(Lz2/o0oo0000;)Lz2/i1;

    const-string v0, "\u06e7\u06dc\u06e8\u06d8\u06e1\u06e7\u06eb\u06ec\u06e6\u06e7\u06d8\u06e5\u06eb\u06e1\u06e7\u06dc\u06e6\u06e8\u06d8\u06eb\u06dc\u06e6\u06d8\u06df\u06e8\u06e5\u06eb\u06db\u06e2\u06e0\u06e2\u06dc\u06da\u06da\u06d9\u06e5\u06d7\u06db\u06da\u06e8\u06dc\u06e8\u06e4\u06e2\u06e8\u06e7\u06d8\u06e0\u06d8\u06e8\u06e8\u06d7\u06e0\u06df\u06e5\u06e8"

    goto :goto_0

    :sswitch_f
    iget-object v0, p0, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->OooooO0:Landroid/widget/ImageView;

    invoke-static {p0, p1, v0, v1}, Lz2/m4;->OooOO0O(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;Lz2/p1;)V

    const-string v0, "\u06dc\u06e4\u06db\u06d8\u06ec\u06d9\u06d6\u06dc\u06e8\u06d8\u06da\u06df\u06d6\u06d8\u06db\u06d8\u06df\u06d6\u06e5\u06ec\u06da\u06e2\u06e2\u06ec\u06e0\u06d9\u06db\u06e1\u06d8\u06df\u06e6\u06e2\u06e8\u06d7\u06dc\u06d8\u06da\u06e5\u06d7\u06e6\u06d8\u06e6\u06e4\u06ec\u06d8\u06e5\u06e6\u06df\u06df\u06e2\u06d9\u06dc\u06d8\u06d6\u06d7\u06df\u06e0"

    goto/16 :goto_0

    :sswitch_10
    invoke-direct {p0}, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->OooOOO0()V

    const-string v0, "\u06e2\u06e5\u06e5\u06ec\u06e5\u06da\u06dc\u06e2\u06e0\u06e6\u06db\u06d6\u06d8\u06d6\u06d7\u06e1\u06d8\u06e2\u06dc\u06e1\u06eb\u06d8\u06d9\u06e1\u06df\u06db\u06e0\u06e6\u06e7\u06da\u06e7\u06e7\u06d7\u06ec\u06e4\u06db\u06d6\u06e0\u06ec\u06e0\u06d8\u06d8\u06d6\u06e0\u06d9\u06e6\u06e1\u06e2\u06e7\u06d8\u06e0"

    goto/16 :goto_0

    :sswitch_11
    const-string v0, "\u06e4\u06df\u06e0\u06e5\u06e7\u06d6\u06d8\u06e8\u06db\u06e5\u06eb\u06ec\u06d8\u06dc\u06e4\u06da\u06e6\u06d8\u06e4\u06db\u06d8\u06d8\u06dc\u06d7\u06dc\u06e5\u06db\u06e4\u06d8\u06db\u06df\u06da\u06d6\u06e6\u06d8\u06e4\u06e6\u06ec\u06d6\u06e2\u06d9\u06d9\u06dc\u06e7\u06d8\u06e4\u06d9\u06d7\u06df\u06d6\u06db"

    goto/16 :goto_0

    :sswitch_12
    const-string v0, "\u06dc\u06e4\u06db\u06d8\u06ec\u06d9\u06d6\u06dc\u06e8\u06d8\u06da\u06df\u06d6\u06d8\u06db\u06d8\u06df\u06d6\u06e5\u06ec\u06da\u06e2\u06e2\u06ec\u06e0\u06d9\u06db\u06e1\u06d8\u06df\u06e6\u06e2\u06e8\u06d7\u06dc\u06d8\u06da\u06e5\u06d7\u06e6\u06d8\u06e6\u06e4\u06ec\u06d8\u06e5\u06e6\u06df\u06df\u06e2\u06d9\u06dc\u06d8\u06d6\u06d7\u06df\u06e0"

    goto/16 :goto_0

    :sswitch_13
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x75a0414c -> :sswitch_e
        -0x69246293 -> :sswitch_d
        -0x682ab51b -> :sswitch_2
        -0x473bd305 -> :sswitch_1
        -0x36da6d0f -> :sswitch_10
        -0x24f5a8c6 -> :sswitch_a
        -0x1e46aa5e -> :sswitch_12
        -0x13d0efbc -> :sswitch_f
        0x30a00ff5 -> :sswitch_c
        0x5dcf59eb -> :sswitch_0
        0x5efa6d34 -> :sswitch_b
        0x7ec70122 -> :sswitch_13
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0xd25d0b0 -> :sswitch_5
        0x3450716f -> :sswitch_9
        0x3ed43798 -> :sswitch_11
        0x4496b3be -> :sswitch_3
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        -0x69d81e8b -> :sswitch_4
        -0x2bedd0ab -> :sswitch_8
        -0x2a47f53d -> :sswitch_6
        0x4f89d63e -> :sswitch_7
    .end sparse-switch
.end method

.method private OooOOO0()V
    .locals 11

    const/4 v4, 0x0

    const/4 v2, 0x0

    const-string v0, "\u06d8\u06eb\u06e8\u06d8\u06d6\u06d8\u06d8\u06e4\u06e8\u06e7\u06ec\u06e4\u06dc\u06d7\u06e4\u06e8\u06e4\u06e5\u06e7\u06e6\u06ec\u06e1\u06ec\u06e6\u06da\u06da\u06ec\u06e5\u06d7\u06d9\u06d8\u06d8"

    move v1, v2

    move-object v3, v4

    move-object v5, v4

    move v7, v2

    move v8, v2

    move-object v6, v4

    move v9, v2

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v4, 0x254

    xor-int/2addr v2, v4

    xor-int/lit16 v2, v2, 0x2c1

    const/16 v4, 0x36

    const v10, 0x2e5ecd2a

    xor-int/2addr v2, v4

    xor-int/2addr v2, v10

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e8\u06da\u06da\u06e1\u06e2\u06e6\u06d8\u06d6\u06e2\u06d7\u06e1\u06e8\u06d8\u06d9\u06e8\u06e1\u06eb\u06d7\u06d8\u06d8\u06e8\u06df\u06d8\u06eb\u06e2\u06e6\u06d9\u06e4\u06e2\u06e1\u06db\u06e2\u06d7\u06da\u06d7\u06d9\u06dc\u06d6\u06d8\u06e5\u06e6\u06d6\u06d8\u06da\u06db\u06e1\u06d8"

    goto :goto_0

    :sswitch_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->Ooooooo:Z

    const-string v0, "\u06e4\u06e7\u06ec\u06e8\u06d7\u06d6\u06e1\u06e2\u06dc\u06d8\u06eb\u06e7\u06d7\u06e1\u06e6\u06e8\u06d8\u06e5\u06d8\u06e2\u06df\u06e4\u06e0\u06d6\u06d6\u06d8\u06dc\u06db\u06d9\u06d7\u06db\u06e1\u06e1\u06d7\u06db\u06dc\u06d6\u06dc\u06d8\u06d6\u06d8\u06e5\u06d9\u06d9\u06e1\u06d8\u06e7\u06e6\u06e1\u06da\u06e8\u06d9\u06e7\u06d6\u06e6\u06d8\u06db\u06e5\u06e5"

    goto :goto_0

    :sswitch_2
    invoke-direct {p0}, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->OooOO0o()V

    const-string v0, "\u06e7\u06d6\u06e0\u06e5\u06e2\u06d8\u06e6\u06db\u06d7\u06db\u06d6\u06d9\u06e6\u06da\u06e8\u06d8\u06e7\u06d9\u06d6\u06d8\u06e7\u06d8\u06e0\u06e7\u06e6\u06e1\u06d8\u06e1\u06e2\u06e1\u06e4\u06e8\u06d6\u06d8\u06e1\u06e4\u06e1\u06e1\u06e6\u06e4\u06db\u06d9\u06d8\u06e6\u06eb\u06db\u06e0\u06e6\u06e6\u06dc\u06e7\u06e1\u06d8\u06e8\u06e5\u06da\u06e8\u06df\u06dc\u06d8"

    goto :goto_0

    :sswitch_3
    invoke-direct {p0}, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->OooOo0O()V

    const-string v0, "\u06da\u06dc\u06db\u06da\u06d8\u06e7\u06d8\u06e6\u06ec\u06e8\u06d8\u06e5\u06eb\u06e6\u06d8\u06d9\u06e8\u06e7\u06e5\u06e2\u06e1\u06d8\u06e7\u06e5\u06e2\u06db\u06e0\u06e8\u06d8\u06e7\u06e6\u06e7\u06d8\u06df\u06eb\u06e5\u06d8\u06d9\u06db\u06d8\u06eb\u06e4\u06d6\u06df\u06eb\u06e0\u06d8\u06d9\u06d6"

    goto :goto_0

    :sswitch_4
    iget-object v0, p0, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->OooooO0:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "\u06db\u06e7\u06e8\u06d8\u06d6\u06ec\u06ec\u06d6\u06dc\u06e1\u06d6\u06d9\u06ec\u06e2\u06e8\u06dc\u06e4\u06db\u06eb\u06dc\u06d7\u06ec\u06d8\u06d9\u06d7\u06e1\u06dc\u06e4\u06da\u06e5\u06e2\u06e5\u06df\u06e1\u06db\u06df\u06db\u06dc\u06e7\u06e8\u06dc\u06e5\u06d6"

    goto :goto_0

    :sswitch_5
    iget v2, p0, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->o00O0O:I

    const-string v0, "\u06d8\u06e1\u06d7\u06dc\u06e8\u06e0\u06df\u06d7\u06dc\u06d6\u06e2\u06da\u06dc\u06da\u06d9\u06dc\u06db\u06d6\u06e4\u06e0\u06df\u06df\u06da\u06da\u06d6\u06e4\u06db\u06ec\u06e2\u06e1\u06ec\u06e7\u06d9\u06e7\u06d6\u06e6\u06dc\u06df\u06e2\u06d9\u06e7\u06e6"

    move v9, v2

    goto :goto_0

    :sswitch_6
    const v2, 0x6688dd54

    const-string v0, "\u06df\u06da\u06d8\u06d8\u06e7\u06e8\u06ec\u06d7\u06d9\u06d9\u06da\u06dc\u06d8\u06d8\u06db\u06e1\u06d9\u06e6\u06d6\u06e5\u06e2\u06db\u06e5\u06d6\u06eb\u06e4\u06e6\u06db\u06eb\u06e4\u06e5\u06df\u06e4\u06d9\u06e8\u06d8\u06e0\u06ec\u06e2\u06e4\u06d8\u06d6\u06d7\u06e0\u06d6\u06d8"

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    xor-int/2addr v4, v2

    sparse-switch v4, :sswitch_data_1

    goto :goto_1

    :sswitch_7
    const-string v0, "\u06d6\u06e8\u06eb\u06db\u06e7\u06db\u06e5\u06e2\u06e8\u06d8\u06e4\u06df\u06dc\u06d9\u06e0\u06e8\u06d8\u06dc\u06e8\u06e8\u06d8\u06d6\u06e8\u06e6\u06d8\u06dc\u06e5\u06e4\u06ec\u06dc\u06e4\u06d6\u06db"

    goto :goto_1

    :sswitch_8
    const-string v0, "\u06e2\u06d8\u06e5\u06d8\u06e6\u06e2\u06d8\u06eb\u06df\u06e8\u06d6\u06e5\u06e6\u06d8\u06d8\u06eb\u06e8\u06d8\u06d8\u06e7\u06e7\u06e7\u06df\u06da\u06e6\u06d7\u06e4\u06db\u06d7\u06db\u06e6\u06d8\u06e4\u06e8\u06ec\u06ec\u06e5\u06db\u06eb"

    goto :goto_1

    :sswitch_9
    const v4, -0x907a183

    const-string v0, "\u06da\u06ec\u06da\u06d9\u06e6\u06d6\u06d8\u06e2\u06d6\u06db\u06df\u06e6\u06e1\u06e8\u06db\u06e4\u06dc\u06dc\u06e8\u06d8\u06e5\u06d9\u06e2\u06e7\u06e8\u06e7\u06d8\u06e5\u06e8\u06e1\u06e1\u06e2\u06e4\u06d7\u06ec\u06e8\u06e2\u06e2\u06e0\u06e2\u06e6\u06e6\u06d8\u06e4\u06eb\u06e8\u06d8"

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v10

    xor-int/2addr v10, v4

    sparse-switch v10, :sswitch_data_2

    goto :goto_2

    :sswitch_a
    const-string v0, "\u06d6\u06e7\u06eb\u06db\u06d8\u06dc\u06d8\u06dc\u06dc\u06d6\u06db\u06e6\u06e0\u06d7\u06da\u06d8\u06dc\u06d6\u06e8\u06eb\u06d9\u06eb\u06e5\u06e5\u06e2\u06df\u06e6\u06ec\u06e7\u06df\u06dc\u06d6\u06d8\u06eb\u06e4\u06d8\u06e7\u06d8\u06e5\u06e1\u06e8\u06e7\u06e1\u06e0\u06e1\u06e0\u06e1\u06d8\u06d8\u06ec\u06d7"

    goto :goto_2

    :cond_0
    const-string v0, "\u06ec\u06d8\u06eb\u06e8\u06e7\u06d8\u06df\u06e4\u06d8\u06d8\u06dc\u06e0\u06e8\u06e7\u06e5\u06d8\u06e4\u06e1\u06d6\u06df\u06df\u06e7\u06df\u06e5\u06e1\u06d7\u06e1\u06df\u06eb\u06e6\u06e5\u06ec\u06ec\u06d6\u06e2\u06d8\u06eb\u06d9\u06e4\u06e2\u06d6\u06d8"

    goto :goto_2

    :sswitch_b
    const/16 v0, 0x64

    if-ne v9, v0, :cond_0

    const-string v0, "\u06db\u06e2\u06d7\u06df\u06db\u06e8\u06d8\u06db\u06d6\u06d8\u06dc\u06e4\u06e4\u06ec\u06dc\u06e8\u06d8\u06da\u06e0\u06df\u06df\u06e2\u06d7\u06e1\u06df\u06d6\u06e8\u06d6\u06e7\u06d8\u06d8\u06df\u06e2\u06e4\u06dc\u06e2\u06e0\u06e2\u06e0\u06e0\u06e5\u06d8\u06dc\u06d7\u06e0"

    goto :goto_2

    :sswitch_c
    const-string v0, "\u06e5\u06e0\u06e1\u06e1\u06dc\u06ec\u06e6\u06eb\u06db\u06e7\u06df\u06d9\u06ec\u06e0\u06e5\u06d8\u06e5\u06db\u06e7\u06e7\u06da\u06e6\u06d8\u06e0\u06e6\u06dc\u06d8\u06e8\u06e5\u06e5\u06d9\u06eb\u06eb"

    goto :goto_1

    :sswitch_d
    const-string v0, "\u06e6\u06d6\u06eb\u06e8\u06dc\u06d8\u06d8\u06d9\u06e0\u06d9\u06db\u06e1\u06d8\u06d8\u06e6\u06d8\u06db\u06d9\u06df\u06eb\u06d9\u06eb\u06e2\u06e7\u06d7\u06e7\u06e5\u06e5\u06d8\u06e6\u06d8\u06e4\u06e6\u06e6\u06d9\u06e1\u06e7\u06e1\u06d8"

    goto :goto_0

    :sswitch_e
    iget-object v6, p0, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->o0OoOo0:Lcom/elfin/ad/activity/FullScreenTwoAdActivity$OooO0o;

    const-string v0, "\u06e0\u06e7\u06d9\u06e4\u06e0\u06e4\u06e1\u06db\u06da\u06df\u06d9\u06e5\u06d8\u06e6\u06e6\u06d8\u06d9\u06e2\u06e8\u06e0\u06d8\u06dc\u06d9\u06db\u06dc\u06d8\u06dc\u06e6\u06e8\u06d8\u06e0\u06ec\u06e8\u06ec\u06d8\u06d8\u06d8\u06e6\u06e2\u06d7\u06d6\u06df\u06e2\u06d7\u06e0\u06d8"

    goto :goto_0

    :sswitch_f
    const/16 v8, 0x3e9

    const-string v0, "\u06eb\u06dc\u06e1\u06da\u06db\u06d8\u06d8\u06da\u06db\u06d8\u06ec\u06e1\u06e5\u06d8\u06da\u06e4\u06db\u06d8\u06e5\u06e0\u06e0\u06d8\u06d7\u06e2\u06d8\u06e1\u06d8\u06e7\u06ec\u06d6\u06d8\u06e2\u06d6\u06e1\u06d8"

    goto :goto_0

    :sswitch_10
    const-string v0, "\u06e1\u06db\u06db\u06d6\u06df\u06d9\u06dc\u06e2\u06e4\u06eb\u06e8\u06e5\u06d7\u06d7\u06d6\u06d8\u06eb\u06eb\u06ec\u06d9\u06ec\u06ec\u06d6\u06e6\u06df\u06e4\u06e8\u06da\u06ec\u06d8\u06d8"

    move v7, v8

    goto :goto_0

    :sswitch_11
    const-string v0, "\u06dc\u06e2\u06dc\u06d7\u06e8\u06e2\u06d9\u06da\u06e6\u06da\u06eb\u06e8\u06dc\u06e1\u06df\u06e5\u06d6\u06d8\u06e7\u06ec\u06e6\u06e7\u06e4\u06e4\u06d9\u06ec\u06dc\u06db\u06e7\u06d8\u06d8\u06e4\u06e0\u06da\u06e4\u06d8\u06d8\u06e6\u06d8\u06eb\u06d9\u06eb\u06db\u06d6\u06db\u06dc\u06e8\u06e7\u06e2\u06db\u06e5\u06eb\u06e2\u06dc\u06e1\u06d8"

    move-object v5, v6

    goto :goto_0

    :sswitch_12
    invoke-virtual {v5, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    const-string v0, "\u06da\u06e6\u06db\u06d6\u06e0\u06e5\u06dc\u06d9\u06e6\u06d8\u06e7\u06eb\u06df\u06da\u06e4\u06d7\u06e6\u06e5\u06e6\u06d8\u06e1\u06d9\u06e5\u06df\u06dc\u06df\u06d9\u06db\u06eb\u06d7\u06d9\u06db\u06eb\u06ec\u06eb\u06d6\u06e8\u06e0"

    goto/16 :goto_0

    :sswitch_13
    const v2, 0x5058d7b5

    const-string v0, "\u06d9\u06e1\u06db\u06e0\u06e4\u06eb\u06da\u06da\u06e6\u06e1\u06e5\u06e1\u06d8\u06d8\u06eb\u06e8\u06e5\u06e4\u06e1\u06e0\u06d7\u06dc\u06df\u06e1\u06e6\u06e1\u06dc\u06ec\u06e4\u06df"

    :goto_3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    xor-int/2addr v4, v2

    sparse-switch v4, :sswitch_data_3

    goto :goto_3

    :sswitch_14
    const-string v0, "\u06eb\u06e5\u06df\u06d8\u06db\u06e7\u06d7\u06e6\u06e7\u06e2\u06eb\u06db\u06df\u06df\u06dc\u06d8\u06d6\u06e4\u06ec\u06e0\u06d9\u06e7\u06da\u06db\u06d9\u06ec\u06d8\u06db\u06e5\u06e2\u06d6\u06e0\u06d8\u06da\u06d9\u06e4\u06d6"

    goto :goto_3

    :sswitch_15
    const-string v0, "\u06db\u06e4\u06ec\u06e0\u06eb\u06d9\u06d7\u06e1\u06db\u06d8\u06e6\u06da\u06eb\u06d9\u06da\u06db\u06e4\u06e0\u06ec\u06e1\u06df\u06e7\u06e5\u06e7\u06e7\u06da\u06d9\u06e1\u06d7\u06e4\u06d7\u06e6\u06e7\u06d8\u06db\u06dc\u06e6\u06d8\u06ec\u06d7\u06e1\u06d8\u06e5\u06ec"

    goto :goto_3

    :sswitch_16
    const v4, 0x711828f8    # 7.5346E29f

    const-string v0, "\u06df\u06e5\u06d9\u06e2\u06dc\u06e5\u06d8\u06db\u06e8\u06db\u06e6\u06e0\u06e8\u06d8\u06d7\u06db\u06e5\u06eb\u06db\u06d9\u06d8\u06e7\u06e7\u06db\u06dc\u06e4\u06d7\u06da\u06dc\u06d8\u06e2\u06ec\u06e8\u06d8\u06e4\u06da\u06e0\u06d7\u06ec\u06df\u06d6\u06e4\u06db\u06da\u06d6\u06e4\u06db\u06dc\u06e1\u06d8\u06e5\u06e8\u06e1"

    :goto_4
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v10

    xor-int/2addr v10, v4

    sparse-switch v10, :sswitch_data_4

    goto :goto_4

    :sswitch_17
    const-string v0, "\u06d9\u06df\u06d7\u06ec\u06da\u06d8\u06d8\u06d9\u06e1\u06e7\u06e8\u06dc\u06e7\u06d8\u06d7\u06da\u06d8\u06d8\u06da\u06da\u06d9\u06d8\u06d6\u06e7\u06d8\u06d8\u06e1\u06d6\u06d8\u06e5\u06e8\u06dc\u06d8\u06ec\u06db\u06e5\u06d9\u06d9\u06d8\u06db\u06dc\u06e4\u06dc\u06e1\u06d8\u06e7\u06d8\u06e0\u06e7\u06d6\u06d8\u06e6\u06eb\u06e1"

    goto :goto_3

    :cond_1
    const-string v0, "\u06db\u06db\u06e1\u06d8\u06da\u06e7\u06d6\u06e1\u06d8\u06e8\u06d7\u06d7\u06d7\u06d7\u06da\u06e1\u06d8\u06db\u06db\u06db\u06e4\u06e5\u06ec\u06eb\u06d8\u06e5\u06e1\u06e6\u06db\u06e4\u06e0\u06e1\u06d8\u06e8\u06e4\u06df\u06d7\u06e4\u06d8\u06d8"

    goto :goto_4

    :sswitch_18
    const/16 v0, 0x66

    if-ne v9, v0, :cond_1

    const-string v0, "\u06d9\u06e6\u06e1\u06e8\u06dc\u06e6\u06e6\u06dc\u06e8\u06d8\u06df\u06da\u06e1\u06ec\u06e1\u06d8\u06e0\u06e6\u06e6\u06df\u06e1\u06e2\u06d8\u06d6\u06e5\u06eb\u06d6\u06d8\u06e0\u06d8\u06e5\u06d8\u06db\u06e4\u06e5\u06d8\u06d8\u06da\u06e6\u06d8\u06ec\u06e6\u06df\u06ec\u06e5\u06d7\u06d6\u06ec\u06e0\u06da\u06e0\u06d6"

    goto :goto_4

    :sswitch_19
    const-string v0, "\u06eb\u06eb\u06e5\u06d8\u06db\u06eb\u06d8\u06db\u06d7\u06df\u06e4\u06e8\u06df\u06e2\u06e4\u06d7\u06dc\u06db\u06e1\u06d8\u06e7\u06ec\u06e8\u06d8\u06e2\u06e7\u06e7\u06d8\u06e0\u06e5\u06e2\u06e5\u06e2\u06e1\u06e0\u06e6\u06e6\u06d7\u06d7\u06e4\u06dc\u06dc\u06e4\u06ec\u06d9\u06d6\u06d8\u06e7\u06d7\u06d8\u06d8"

    goto :goto_4

    :sswitch_1a
    const-string v0, "\u06e6\u06dc\u06e8\u06d8\u06d6\u06e8\u06d6\u06d8\u06e8\u06dc\u06d6\u06d8\u06d8\u06e8\u06dc\u06d8\u06eb\u06eb\u06e1\u06d9\u06da\u06eb\u06da\u06e0\u06e8\u06db\u06da\u06eb\u06d7\u06e6\u06eb\u06da\u06e5\u06da\u06eb\u06da\u06d8\u06eb\u06d6\u06d8\u06e5\u06e7\u06e2\u06e0\u06dc\u06d6\u06d8\u06db\u06ec\u06e1\u06e2\u06d7\u06e0\u06e4\u06d8\u06e8\u06d8\u06d8\u06e6"

    goto/16 :goto_0

    :sswitch_1b
    iget-object v2, p0, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->o0OoOo0:Lcom/elfin/ad/activity/FullScreenTwoAdActivity$OooO0o;

    const-string v0, "\u06e6\u06e1\u06e8\u06e1\u06e6\u06e1\u06d8\u06e0\u06dc\u06e6\u06ec\u06e1\u06ec\u06d8\u06e2\u06d6\u06d8\u06d9\u06e6\u06e8\u06e7\u06da\u06e1\u06d8\u06ec\u06e7\u06e8\u06da\u06e2\u06e6\u06e4\u06d8\u06d8\u06d7\u06e4\u06dc\u06ec\u06db\u06d8\u06d8\u06ec\u06db\u06e0\u06e0\u06d7\u06ec\u06da\u06e8\u06ec\u06d9\u06e5\u06e5"

    move-object v3, v2

    goto/16 :goto_0

    :sswitch_1c
    const/16 v1, 0x3eb

    const-string v0, "\u06d6\u06eb\u06ec\u06e1\u06d9\u06e1\u06e0\u06e5\u06d9\u06e7\u06e4\u06e6\u06d8\u06d8\u06d6\u06ec\u06d6\u06dc\u06d6\u06e8\u06eb\u06d8\u06d8\u06e8\u06e4\u06d8\u06dc\u06e7\u06e2\u06d7\u06db\u06dc\u06d8\u06d8\u06e6\u06e4\u06e6\u06e4"

    goto/16 :goto_0

    :sswitch_1d
    const-string v0, "\u06da\u06d7\u06d8\u06e8\u06e7\u06d6\u06db\u06d6\u06d9\u06ec\u06df\u06eb\u06e5\u06d6\u06e5\u06d8\u06df\u06d7\u06eb\u06dc\u06d6\u06e1\u06d8\u06e1\u06dc\u06d6\u06d8\u06d9\u06db\u06e1\u06da\u06e2\u06d9\u06e7\u06e2\u06d9\u06d6\u06eb\u06db\u06d8\u06e4\u06d8\u06d7\u06e6\u06e1\u06d8\u06db\u06e7\u06e6\u06e6\u06df"

    move-object v5, v3

    goto/16 :goto_0

    :sswitch_1e
    const-string v0, "\u06eb\u06d9\u06e1\u06eb\u06e1\u06eb\u06e2\u06eb\u06d9\u06d7\u06db\u06d6\u06e6\u06e5\u06e5\u06e6\u06e4\u06d6\u06df\u06dc\u06db\u06da\u06e6\u06d9\u06d6\u06e0\u06e7\u06d8"

    move v7, v1

    goto/16 :goto_0

    :sswitch_1f
    const-string v0, "\u06dc\u06e2\u06dc\u06d7\u06e8\u06e2\u06d9\u06da\u06e6\u06da\u06eb\u06e8\u06dc\u06e1\u06df\u06e5\u06d6\u06d8\u06e7\u06ec\u06e6\u06e7\u06e4\u06e4\u06d9\u06ec\u06dc\u06db\u06e7\u06d8\u06d8\u06e4\u06e0\u06da\u06e4\u06d8\u06d8\u06e6\u06d8\u06eb\u06d9\u06eb\u06db\u06d6\u06db\u06dc\u06e8\u06e7\u06e2\u06db\u06e5\u06eb\u06e2\u06dc\u06e1\u06d8"

    goto/16 :goto_0

    :sswitch_20
    const-string v0, "\u06e4\u06e6\u06d9\u06e8\u06da\u06e6\u06db\u06da\u06e8\u06d8\u06df\u06e5\u06e6\u06da\u06db\u06e1\u06e2\u06e6\u06eb\u06d7\u06ec\u06d7\u06e0\u06d8\u06d8\u06df\u06e1\u06d7\u06e7\u06da\u06dc\u06ec\u06ec\u06eb\u06d8\u06e1\u06ec"

    goto/16 :goto_0

    :sswitch_21
    const-string v0, "\u06e5\u06db\u06e5\u06d8\u06df\u06e5\u06ec\u06e0\u06d7\u06dc\u06db\u06eb\u06db\u06da\u06d7\u06e4\u06da\u06e6\u06d8\u06da\u06e0\u06e0\u06e7\u06d9\u06e6\u06d8\u06e0\u06e8\u06d9\u06d6\u06e6\u06eb\u06d6\u06ec\u06dc\u06d7\u06e8\u06e1\u06d8\u06e8\u06e8\u06d8\u06ec\u06e4\u06e8\u06d6\u06e5\u06e8\u06da\u06ec"

    goto/16 :goto_0

    :sswitch_22
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x79dd8637 -> :sswitch_1f
        -0x64e85d32 -> :sswitch_f
        -0x634291cf -> :sswitch_2
        -0x343bd027 -> :sswitch_e
        -0x28c0dbec -> :sswitch_11
        -0x21c32076 -> :sswitch_1d
        -0x113a5f34 -> :sswitch_22
        0xd78e56b -> :sswitch_1e
        0x15571f27 -> :sswitch_10
        0x21bcb90c -> :sswitch_13
        0x26a2f810 -> :sswitch_5
        0x27ec2aec -> :sswitch_1b
        0x2eb31132 -> :sswitch_12
        0x34147463 -> :sswitch_3
        0x3f3bae71 -> :sswitch_1
        0x50f2d851 -> :sswitch_6
        0x53c91878 -> :sswitch_0
        0x634a8f6e -> :sswitch_21
        0x68b59a04 -> :sswitch_1c
        0x7fef0553 -> :sswitch_4
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x12ae9fb9 -> :sswitch_d
        0xc8ee918 -> :sswitch_7
        0x6107cdb0 -> :sswitch_20
        0x6dbfb786 -> :sswitch_9
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        -0x5ee9bb8b -> :sswitch_b
        -0x4b976ef7 -> :sswitch_c
        0x56e733fd -> :sswitch_a
        0x61490430 -> :sswitch_8
    .end sparse-switch

    :sswitch_data_3
    .sparse-switch
        -0x7c04bacd -> :sswitch_1a
        -0x6ba7c4da -> :sswitch_16
        -0x687eac6d -> :sswitch_14
        0x6468e4a1 -> :sswitch_21
    .end sparse-switch

    :sswitch_data_4
    .sparse-switch
        -0x43c80441 -> :sswitch_18
        0x96a7919 -> :sswitch_19
        0x3b188a65 -> :sswitch_15
        0x674ea177 -> :sswitch_17
    .end sparse-switch
.end method

.method private OooOOOO()V
    .locals 4

    const-string v0, "\u06e6\u06dc\u06d9\u06e4\u06d8\u06e6\u06d8\u06da\u06eb\u06d7\u06e1\u06e2\u06e0\u06e2\u06dc\u06db\u06e8\u06d8\u06e2\u06e1\u06e6\u06d8\u06e7\u06d9\u06e1\u06eb\u06d8\u06e1\u06d8\u06d6\u06da\u06dc\u06d8\u06e5\u06d8\u06d6\u06d8\u06e0\u06df\u06d6\u06d8\u06e8\u06db\u06e4\u06ec\u06e7\u06e1\u06df\u06ec\u06e1\u06d8\u06db\u06dc\u06da\u06d9\u06d9\u06e4\u06e5\u06e1\u06e6\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x2e0

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x24e

    const/16 v2, 0x1a7

    const v3, 0xbe503be

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06eb\u06e0\u06d9\u06d8\u06da\u06e1\u06e1\u06e5\u06d8\u06db\u06e7\u06dc\u06d8\u06e7\u06d9\u06dc\u06d8\u06e6\u06ec\u06d8\u06d9\u06d9\u06d9\u06e7\u06da\u06e7\u06d9\u06e1\u06d6\u06dc\u06da\u06e6\u06d8\u06d7\u06e5\u06df\u06e0\u06e7\u06dc\u06d8\u06db\u06e6\u06d6\u06d8\u06df\u06e0\u06db\u06e1\u06e4\u06d9\u06e4\u06d6\u06d8\u06e4\u06d7\u06e6\u06ec\u06da\u06d9"

    goto :goto_0

    :sswitch_1
    const v1, -0x12d3a207

    const-string v0, "\u06d7\u06df\u06e5\u06d8\u06d8\u06ec\u06e8\u06e4\u06dc\u06d8\u06e8\u06dc\u06dc\u06e5\u06d9\u06d6\u06d8\u06e2\u06eb\u06e8\u06d7\u06d9\u06d7\u06da\u06e8\u06eb\u06eb\u06db\u06e6\u06d6\u06d9\u06e1\u06d8\u06e5\u06ec\u06e5\u06d7\u06df\u06dc\u06ec\u06d9\u06e6\u06d8\u06e5\u06e8\u06e7\u06e6\u06e7\u06d6\u06d7\u06d6\u06e7"

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v2, v1

    sparse-switch v2, :sswitch_data_1

    goto :goto_1

    :sswitch_2
    const-string v0, "\u06db\u06e2\u06dc\u06e1\u06e6\u06dc\u06e5\u06eb\u06d7\u06d9\u06e2\u06e2\u06e2\u06d9\u06e0\u06df\u06e5\u06d9\u06d9\u06d6\u06e0\u06da\u06e4\u06e6\u06d8\u06e8\u06e2\u06d6\u06e7\u06e0\u06e5\u06e6\u06e8\u06d9\u06e2\u06d9\u06e0"

    goto :goto_0

    :sswitch_3
    const-string v0, "\u06e4\u06e4\u06d9\u06e1\u06e6\u06e4\u06d7\u06e1\u06e8\u06df\u06e8\u06d8\u06d9\u06e5\u06e8\u06d7\u06d7\u06e0\u06e0\u06ec\u06eb\u06eb\u06db\u06eb\u06e4\u06e5\u06d9\u06e6\u06e4\u06e5\u06e5\u06df\u06d6\u06d6\u06e1\u06d8\u06e8\u06d7\u06e0\u06df\u06e6\u06dc"

    goto :goto_1

    :sswitch_4
    const v2, -0x13cc924f

    const-string v0, "\u06ec\u06df\u06e2\u06e8\u06e2\u06eb\u06d6\u06e4\u06e5\u06e4\u06e2\u06e4\u06e5\u06e5\u06d6\u06e4\u06d8\u06e2\u06e8\u06dc\u06ec\u06df\u06e7\u06e5\u06e6\u06db\u06e0\u06dc\u06e0\u06d6\u06e0\u06e5\u06e6\u06e1\u06ec\u06d7\u06eb\u06e5\u06e5\u06dc\u06e0\u06d6\u06da\u06d7\u06e8\u06dc\u06e6\u06e4"

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v2

    sparse-switch v3, :sswitch_data_2

    goto :goto_2

    :sswitch_5
    const-string v0, "\u06e2\u06e1\u06e8\u06d8\u06df\u06e1\u06e5\u06e6\u06d9\u06d6\u06eb\u06e0\u06db\u06db\u06d6\u06eb\u06e7\u06e1\u06e6\u06e7\u06e1\u06d8\u06d8\u06e1\u06d9\u06da\u06e6\u06e2\u06df\u06d8\u06eb\u06e5\u06d8\u06e4\u06da\u06e7\u06e4\u06eb\u06e4\u06ec\u06d8\u06e7\u06e1\u06e7\u06e5\u06d8"

    goto :goto_2

    :cond_0
    const-string v0, "\u06dc\u06e0\u06e4\u06e4\u06db\u06d8\u06d8\u06e0\u06e2\u06e7\u06e6\u06dc\u06d8\u06db\u06e1\u06e7\u06d8\u06e7\u06db\u06e6\u06d8\u06e5\u06eb\u06d8\u06d8\u06dc\u06e4\u06dc\u06d8\u06e1\u06e1\u06e4\u06d9\u06dc\u06e5\u06e0\u06ec\u06dc\u06d8\u06e1\u06d9\u06d6\u06d7\u06e8\u06e8\u06e4\u06eb\u06e0"

    goto :goto_2

    :sswitch_6
    invoke-static {p0}, Lz2/b4;->OooOO0o(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u06db\u06e2\u06d7\u06e6\u06d7\u06dc\u06d8\u06ec\u06e8\u06e7\u06e4\u06e7\u06e7\u06e6\u06eb\u06da\u06ec\u06e0\u06e8\u06dc\u06db\u06eb\u06e0\u06ec\u06d9\u06e4\u06da\u06ec\u06db\u06e1\u06e5\u06eb\u06d6\u06ec\u06ec\u06e7"

    goto :goto_2

    :sswitch_7
    const-string v0, "\u06da\u06e6\u06e0\u06db\u06e6\u06da\u06dc\u06dc\u06d8\u06df\u06d8\u06e1\u06ec\u06d9\u06e0\u06da\u06dc\u06e5\u06eb\u06e0\u06d9\u06da\u06db\u06da\u06e6\u06dc\u06e5\u06e2\u06e8\u06e2\u06db\u06da\u06dc\u06d8\u06e5\u06ec\u06e2"

    goto :goto_1

    :sswitch_8
    const-string v0, "\u06dc\u06d8\u06e0\u06d8\u06dc\u06e8\u06e4\u06db\u06e0\u06d7\u06e8\u06e7\u06d8\u06eb\u06df\u06e2\u06e6\u06ec\u06d8\u06d8\u06da\u06d7\u06da\u06e2\u06e6\u06df\u06d9\u06e6\u06e2\u06e5\u06d6\u06dc\u06d8\u06da\u06df\u06d6\u06d8\u06e6\u06e7\u06d7\u06ec\u06db\u06dc\u06d8\u06ec\u06e4\u06dc\u06e2\u06e5\u06d9\u06e2\u06e8\u06e0"

    goto :goto_1

    :sswitch_9
    iget-object v0, p0, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->o0OoOo0:Lcom/elfin/ad/activity/FullScreenTwoAdActivity$OooO0o;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    const-string v0, "\u06e7\u06d6\u06e2\u06dc\u06ec\u06e8\u06e0\u06d8\u06e8\u06e8\u06dc\u06e0\u06e0\u06ec\u06d9\u06d9\u06e7\u06e8\u06da\u06e8\u06e5\u06da\u06e0\u06e5\u06d8\u06ec\u06df\u06d8\u06d8\u06e7\u06d9\u06d8\u06d8\u06e4\u06e5\u06e4\u06e2\u06da\u06e1"

    goto :goto_0

    :sswitch_a
    invoke-direct {p0}, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->OooOOo0()V

    const-string v0, "\u06d6\u06e5\u06d6\u06d8\u06ec\u06e1\u06d8\u06d8\u06d6\u06d6\u06d9\u06e6\u06e4\u06db\u06d9\u06eb\u06da\u06db\u06e7\u06d8\u06d8\u06ec\u06da\u06d8\u06ec\u06db\u06dc\u06d6\u06eb\u06e5\u06dc\u06e0\u06ec\u06e2\u06e6\u06e6\u06e4\u06da\u06ec\u06e1\u06e7\u06dc\u06d8\u06db\u06e5\u06e5"

    goto :goto_0

    :sswitch_b
    const-string v0, "\u06db\u06ec\u06e6\u06d8\u06d6\u06e1\u06dc\u06dc\u06d9\u06d8\u06e4\u06d7\u06d9\u06e2\u06eb\u06d6\u06e1\u06d8\u06d6\u06e5\u06e8\u06e6\u06e8\u06e7\u06d8\u06d7\u06e7\u06e1\u06d8\u06eb\u06e1\u06e8"

    goto :goto_0

    :sswitch_c
    const-string v0, "\u06d6\u06e5\u06d6\u06d8\u06ec\u06e1\u06d8\u06d8\u06d6\u06d6\u06d9\u06e6\u06e4\u06db\u06d9\u06eb\u06da\u06db\u06e7\u06d8\u06d8\u06ec\u06da\u06d8\u06ec\u06db\u06dc\u06d6\u06eb\u06e5\u06dc\u06e0\u06ec\u06e2\u06e6\u06e6\u06e4\u06da\u06ec\u06e1\u06e7\u06dc\u06d8\u06db\u06e5\u06e5"

    goto :goto_0

    :sswitch_d
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5282c246 -> :sswitch_9
        -0x1064a1e3 -> :sswitch_a
        0x24ab0bd7 -> :sswitch_d
        0x31e38176 -> :sswitch_1
        0x49b1658c -> :sswitch_0
        0x79436eda -> :sswitch_c
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x12ac0ade -> :sswitch_b
        0x3c96dad0 -> :sswitch_2
        0x60552c7b -> :sswitch_4
        0x667561da -> :sswitch_8
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        -0x78a4e3b4 -> :sswitch_5
        -0x4ae7cdd9 -> :sswitch_6
        -0x51b7ed2 -> :sswitch_3
        0x5e2dc5e5 -> :sswitch_7
    .end sparse-switch
.end method

.method private OooOOOo()V
    .locals 7

    const/4 v2, 0x0

    const-string v0, "\u06eb\u06dc\u06e8\u06df\u06e0\u06da\u06e4\u06e0\u06d9\u06dc\u06e0\u06e6\u06d8\u06df\u06e0\u06d7\u06db\u06e6\u06d7\u06eb\u06e1\u06e7\u06d8\u06df\u06e1\u06dc\u06d8\u06eb\u06e8\u06d8\u06d9\u06db\u06e5"

    move-object v1, v2

    move-object v3, v2

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/16 v5, 0x90

    xor-int/2addr v4, v5

    xor-int/lit16 v4, v4, 0x1c0

    const/16 v5, 0x29d

    const v6, -0x1f06bebb

    xor-int/2addr v4, v5

    xor-int/2addr v4, v6

    sparse-switch v4, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d8\u06eb\u06ec\u06df\u06e5\u06db\u06e5\u06da\u06e8\u06d8\u06d7\u06ec\u06e6\u06e0\u06d9\u06e6\u06e4\u06ec\u06e5\u06d8\u06e8\u06e6\u06dc\u06df\u06dc\u06e8\u06d8\u06e8\u06df\u06e0\u06da\u06e8\u06d6\u06d8\u06eb\u06da\u06d6\u06d8\u06da\u06e1\u06d6\u06d8\u06ec\u06e4\u06e4\u06e5\u06e2\u06e5\u06d8\u06db\u06e8\u06d8\u06e6\u06df\u06df\u06ec\u06d9\u06d9\u06d9\u06ec\u06d7"

    goto :goto_0

    :sswitch_1
    const v4, -0x73bf99b4

    const-string v0, "\u06e2\u06e5\u06e5\u06d8\u06e7\u06d6\u06dc\u06da\u06e7\u06e8\u06d7\u06d6\u06e0\u06e0\u06eb\u06d8\u06e4\u06e2\u06e7\u06d9\u06d7\u06d8\u06d6\u06d8\u06d8\u06d6\u06e6\u06e5\u06d9\u06d7\u06dc\u06d8\u06d8\u06d9\u06e6\u06d8\u06eb\u06eb\u06e4\u06ec\u06d7\u06e0\u06d8\u06d9\u06e6\u06d8\u06e7\u06e1\u06e4\u06e7\u06e1\u06df"

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v5

    xor-int/2addr v5, v4

    sparse-switch v5, :sswitch_data_1

    goto :goto_1

    :sswitch_2
    const-string v0, "\u06e4\u06db\u06ec\u06d9\u06e2\u06ec\u06d9\u06d6\u06d9\u06e8\u06d7\u06e8\u06db\u06d7\u06df\u06ec\u06d6\u06e2\u06e5\u06ec\u06e8\u06d8\u06e2\u06d9\u06dc\u06dc\u06e1\u06d8\u06ec\u06d6\u06da\u06db\u06e4\u06d8\u06df\u06dc\u06e1\u06e2\u06db\u06e0\u06e1\u06d7\u06d9"

    goto :goto_0

    :sswitch_3
    const-string v0, "\u06e6\u06e5\u06d6\u06e6\u06e0\u06e5\u06d8\u06d7\u06df\u06d7\u06df\u06e4\u06e1\u06e8\u06d6\u06e7\u06e0\u06e8\u06e7\u06e8\u06d8\u06e0\u06d9\u06e4\u06d8\u06d8\u06e8\u06d8\u06d8\u06d7\u06d6\u06db\u06db\u06d6\u06d8\u06dc\u06da\u06d6\u06d8\u06d8\u06e4\u06e5\u06da\u06d6\u06da"

    goto :goto_1

    :sswitch_4
    const v5, 0x2a517a39

    const-string v0, "\u06e4\u06e6\u06e6\u06d8\u06e4\u06e5\u06da\u06d8\u06e4\u06dc\u06d8\u06e1\u06ec\u06e1\u06e0\u06e1\u06d6\u06d8\u06d9\u06db\u06e4\u06e7\u06e4\u06d7\u06e4\u06d6\u06d7\u06d8\u06d8\u06eb\u06da\u06e2\u06e6\u06e5\u06d6\u06d8\u06da\u06df\u06eb\u06d6\u06e8\u06dc\u06e0\u06e6\u06d8"

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v6

    xor-int/2addr v6, v5

    sparse-switch v6, :sswitch_data_2

    goto :goto_2

    :sswitch_5
    const-string v0, "\u06d8\u06e1\u06eb\u06d7\u06e2\u06db\u06e2\u06e6\u06d8\u06d6\u06d6\u06dc\u06e4\u06e6\u06ec\u06e7\u06da\u06dc\u06ec\u06e4\u06df\u06df\u06df\u06d7\u06e8\u06d8\u06da\u06d9\u06e7\u06da\u06e5\u06d8\u06ec\u06d8\u06e5"

    goto :goto_1

    :cond_0
    const-string v0, "\u06e1\u06e1\u06dc\u06d8\u06db\u06d6\u06e6\u06d8\u06d8\u06d6\u06e1\u06d6\u06e1\u06e5\u06e1\u06d9\u06eb\u06e6\u06df\u06d6\u06eb\u06e4\u06e2\u06e2\u06d8\u06e8\u06dc\u06e5\u06dc\u06d9\u06df\u06e6\u06eb\u06da\u06e8\u06e1\u06df\u06d7\u06e6\u06e5\u06e0\u06e8\u06d9\u06d8\u06db\u06e2\u06e0\u06d6\u06d8"

    goto :goto_2

    :sswitch_6
    invoke-static {}, Lz2/qh;->OooO0O0()Lz2/qh;

    move-result-object v0

    const/4 v6, 0x2

    invoke-virtual {v0, v6}, Lz2/qh;->OooO0OO(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u06ec\u06ec\u06e4\u06e4\u06d6\u06d8\u06ec\u06d8\u06d8\u06e7\u06dc\u06d8\u06ec\u06e8\u06d8\u06d8\u06da\u06e6\u06db\u06e7\u06df\u06da\u06ec\u06da\u06eb\u06e5\u06eb\u06e7\u06d8\u06d6\u06d8\u06e7\u06e6\u06e6\u06d8\u06dc\u06e8\u06e8\u06e6\u06d8\u06ec\u06da\u06d8\u06eb\u06e2\u06dc\u06e1\u06d8\u06e2\u06e8\u06e5\u06db\u06e6\u06d8\u06d8\u06e4\u06d8\u06e5\u06d8"

    goto :goto_2

    :sswitch_7
    const-string v0, "\u06e2\u06e2\u06e7\u06da\u06d7\u06da\u06d9\u06da\u06e0\u06dc\u06d6\u06d8\u06e0\u06df\u06ec\u06d7\u06eb\u06d6\u06d9\u06e8\u06d8\u06e5\u06dc\u06e8\u06eb\u06d9\u06dc\u06e4\u06ec\u06ec\u06df\u06da\u06dc\u06e8\u06e8\u06e1\u06e1\u06dc\u06d6\u06d8\u06d6\u06e6\u06eb\u06d7\u06da\u06e7\u06e7\u06e8\u06d6\u06d8\u06df\u06e8\u06d9\u06eb\u06e8\u06e6\u06d8"

    goto :goto_2

    :sswitch_8
    const-string v0, "\u06e7\u06da\u06da\u06e4\u06e1\u06e5\u06d8\u06e0\u06d7\u06ec\u06e2\u06e4\u06e8\u06d8\u06e4\u06eb\u06e2\u06ec\u06e4\u06e4\u06e1\u06e1\u06e7\u06e1\u06e5\u06d8\u06db\u06e4\u06d8\u06dc\u06e1\u06da\u06da\u06d8\u06e2\u06e6\u06dc\u06d7\u06e2\u06e5\u06e2\u06e8\u06eb\u06e8\u06d8\u06e5\u06e5\u06e1\u06dc\u06e7\u06e8\u06d8"

    goto :goto_1

    :sswitch_9
    const-string v0, "\u06dc\u06d8\u06e8\u06ec\u06d8\u06d8\u06df\u06e5\u06d6\u06d9\u06d9\u06dc\u06d8\u06eb\u06df\u06e7\u06d9\u06e5\u06e7\u06d8\u06eb\u06d8\u06d8\u06ec\u06da\u06e5\u06d8\u06dc\u06db\u06eb\u06d6\u06d8\u06d6\u06d8"

    goto :goto_0

    :sswitch_a
    new-instance v3, Lcom/elfin/ad/activity/FullScreenTwoAdActivity$OooO;

    const/16 v0, 0x8

    invoke-direct {v3, p0, v0, v2}, Lcom/elfin/ad/activity/FullScreenTwoAdActivity$OooO;-><init>(Lcom/elfin/ad/activity/FullScreenTwoAdActivity;ILcom/elfin/ad/activity/FullScreenTwoAdActivity$OooO00o;)V

    const-string v0, "\u06eb\u06e0\u06e8\u06d8\u06dc\u06d8\u06e5\u06d7\u06e2\u06d7\u06eb\u06ec\u06d6\u06d8\u06d8\u06da\u06dc\u06d8\u06d9\u06eb\u06eb\u06d8\u06d7\u06e4\u06eb\u06ec\u06d8\u06e6\u06ec\u06d7\u06d8\u06d7\u06da\u06e2\u06e1\u06da\u06e7\u06d7\u06d7\u06e0\u06e4\u06e8\u06dc\u06e2\u06e8\u06d8\u06e1\u06da\u06dc\u06e5\u06e4\u06e4"

    goto :goto_0

    :sswitch_b
    iput-object v3, p0, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->OoooooO:Lcom/elfin/ad/activity/FullScreenTwoAdActivity$OooO;

    const-string v0, "\u06e2\u06e5\u06dc\u06e8\u06e0\u06e5\u06e1\u06e0\u06e4\u06e7\u06eb\u06e5\u06e5\u06eb\u06e5\u06e4\u06e0\u06e4\u06e8\u06d7\u06e6\u06e5\u06d8\u06dc\u06d8\u06db\u06e1\u06d8\u06d8\u06e4\u06e7\u06e4\u06df\u06e7\u06e2\u06eb\u06eb\u06e8\u06d8\u06df\u06da\u06e6\u06d8\u06da\u06e1\u06da"

    goto :goto_0

    :sswitch_c
    invoke-virtual {v3}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    const-string v0, "\u06ec\u06da\u06e6\u06d6\u06e0\u06e8\u06d8\u06e1\u06dc\u06e1\u06d8\u06e7\u06d8\u06e5\u06d8\u06d7\u06df\u06da\u06e6\u06e1\u06d9\u06df\u06e4\u06dc\u06e7\u06d9\u06e6\u06d8\u06d6\u06e8\u06d8\u06ec\u06ec\u06dc\u06dc\u06ec\u06dc\u06e8"

    goto :goto_0

    :sswitch_d
    invoke-static {}, Lz2/qh;->OooO0O0()Lz2/qh;

    move-result-object v0

    iget-object v0, v0, Lz2/qh;->OooO0O0:Lcom/cyjh/http/bean/response/BackgroundSetAdInfo;

    iget-object v1, v0, Lcom/cyjh/http/bean/response/BackgroundSetAdInfo;->ImageUrl:Ljava/lang/String;

    const-string v0, "\u06d8\u06e0\u06e8\u06d7\u06d6\u06e1\u06d8\u06dc\u06e0\u06d8\u06eb\u06e7\u06e5\u06d9\u06e7\u06d9\u06d6\u06db\u06db\u06e2\u06d6\u06d8\u06d7\u06eb\u06df\u06df\u06e2\u06e1\u06d8\u06e6\u06e8\u06d9\u06dc\u06df\u06e8\u06ec\u06d9\u06df\u06e1\u06d8\u06e6\u06d8\u06d8\u06d8\u06e6\u06d8\u06e8\u06e0\u06d8\u06d8\u06e2\u06e4\u06d8\u06d8"

    goto :goto_0

    :sswitch_e
    const v4, -0x189d9302

    const-string v0, "\u06df\u06ec\u06dc\u06ec\u06e5\u06e1\u06d8\u06db\u06e6\u06d8\u06e7\u06e2\u06d6\u06db\u06d9\u06d6\u06d8\u06e0\u06d9\u06e0\u06e5\u06e0\u06db\u06e1\u06dc\u06db\u06dc\u06df\u06e1\u06dc\u06e1\u06da\u06df\u06e4\u06d6\u06d8\u06dc\u06ec\u06e6\u06e8\u06db\u06ec\u06e1\u06df\u06db\u06e1\u06da\u06da\u06e1\u06e5\u06e7\u06d8"

    :goto_3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v5

    xor-int/2addr v5, v4

    sparse-switch v5, :sswitch_data_3

    goto :goto_3

    :sswitch_f
    const-string v0, "\u06d6\u06da\u06d8\u06d8\u06e1\u06e5\u06e1\u06d8\u06e7\u06e1\u06d6\u06d7\u06d6\u06e8\u06e8\u06d6\u06db\u06db\u06da\u06d8\u06da\u06e7\u06e1\u06d8\u06e2\u06e8\u06d8\u06e0\u06eb\u06db\u06e1\u06d9\u06e6\u06eb\u06e8\u06d8\u06e1\u06dc\u06e7\u06d8\u06e1\u06e6\u06e8\u06eb\u06e8\u06d7\u06d6\u06d9\u06dc\u06e0\u06d8\u06d6\u06d8\u06df\u06db\u06e1\u06e0\u06d6\u06d7"

    goto/16 :goto_0

    :sswitch_10
    const-string v0, "\u06da\u06eb\u06e2\u06df\u06d6\u06d9\u06e4\u06e0\u06e5\u06dc\u06e5\u06e5\u06dc\u06e1\u06e5\u06d8\u06e4\u06eb\u06e1\u06eb\u06e8\u06dc\u06d8\u06e5\u06eb\u06e4\u06e2\u06e6\u06d9\u06e0\u06e1\u06d7\u06e0\u06d6\u06e7\u06d8\u06e5\u06e5\u06e2\u06d7\u06d8\u06e0\u06da\u06dc\u06da\u06db\u06d7\u06dc\u06eb\u06db\u06e4"

    goto :goto_3

    :sswitch_11
    const v5, -0x32f31807    # -1.477508E8f

    const-string v0, "\u06d8\u06ec\u06db\u06db\u06d7\u06e5\u06d8\u06e0\u06db\u06d6\u06d8\u06e2\u06d9\u06d7\u06e5\u06db\u06eb\u06e4\u06d7\u06d7\u06e7\u06e1\u06da\u06e7\u06dc\u06db\u06e1\u06d8\u06eb\u06e5\u06dc\u06dc\u06d8\u06e5\u06df\u06e2\u06d8\u06d7\u06da\u06d9\u06d9\u06e8\u06dc\u06d7"

    :goto_4
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v6

    xor-int/2addr v6, v5

    sparse-switch v6, :sswitch_data_4

    goto :goto_4

    :sswitch_12
    const-string v0, "\u06e5\u06ec\u06ec\u06d6\u06e0\u06e2\u06e7\u06e2\u06d8\u06e7\u06e4\u06e5\u06d9\u06e2\u06e5\u06e0\u06dc\u06d8\u06e2\u06e5\u06ec\u06d8\u06ec\u06e8\u06e8\u06e6\u06d8\u06d8\u06ec\u06e2\u06d8\u06d8\u06e0\u06e7\u06df\u06d6\u06db\u06df\u06d6\u06eb\u06e1\u06e5\u06db\u06d9\u06e7\u06dc\u06e8\u06ec\u06e7\u06e7"

    goto :goto_3

    :cond_1
    const-string v0, "\u06e6\u06e6\u06e5\u06db\u06db\u06e7\u06dc\u06e5\u06d6\u06d8\u06e4\u06e0\u06ec\u06da\u06d9\u06e5\u06db\u06da\u06e4\u06df\u06d9\u06e4\u06e6\u06e5\u06e6\u06ec\u06d6\u06e8\u06d8\u06d6\u06da\u06e5\u06d8\u06eb\u06d7\u06da\u06eb\u06ec\u06d7\u06df\u06e4\u06e1\u06d6\u06db\u06e1\u06d8\u06e6\u06df\u06d8\u06d8\u06e5\u06e6\u06e5\u06d8\u06d9\u06d6\u06d9\u06da\u06d7\u06d6"

    goto :goto_4

    :sswitch_13
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "\u06e5\u06e2\u06dc\u06d8\u06ec\u06da\u06d6\u06d8\u06e1\u06df\u06da\u06d6\u06e7\u06e5\u06d8\u06eb\u06e6\u06e6\u06e1\u06e4\u06d8\u06d6\u06e6\u06e0\u06e8\u06df\u06e2\u06e2\u06e5\u06d6\u06d8\u06df\u06d8\u06db"

    goto :goto_4

    :sswitch_14
    const-string v0, "\u06e2\u06ec\u06e8\u06df\u06eb\u06e7\u06d6\u06e6\u06db\u06db\u06d7\u06da\u06d9\u06e1\u06e2\u06e4\u06e7\u06d6\u06d8\u06df\u06d6\u06e5\u06d9\u06e7\u06e5\u06ec\u06e6\u06d9\u06e6\u06d9\u06dc\u06d7\u06e5\u06e7\u06db\u06e5\u06d9\u06dc\u06da\u06da\u06e8\u06dc\u06eb\u06e5\u06e5\u06d8\u06e7\u06d7\u06d7\u06e4\u06e5\u06e0\u06eb\u06db"

    goto :goto_4

    :sswitch_15
    const-string v0, "\u06da\u06e6\u06e1\u06dc\u06e1\u06e0\u06e7\u06e5\u06df\u06d6\u06d8\u06d8\u06d9\u06e5\u06df\u06d8\u06d9\u06d8\u06d9\u06d8\u06da\u06da\u06d6\u06da\u06d9\u06da\u06e5\u06eb\u06dc\u06d9\u06e1\u06e7\u06d8\u06e1\u06e8\u06e8\u06d8\u06d9\u06e0\u06e6\u06eb\u06e6\u06e8\u06d8\u06e7\u06dc\u06e8\u06da\u06dc\u06e7\u06d8\u06d9\u06d8\u06e7\u06d9\u06e4\u06dc\u06d8"

    goto :goto_3

    :sswitch_16
    const-string v0, "\u540e\u53f0\u5e7f\u544a\u52a0\u8f7d\u6210\u529f"

    invoke-static {p0, v0}, Lz2/a5;->OooO0Oo(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "\u06e8\u06e1\u06e8\u06d8\u06e4\u06d8\u06df\u06d9\u06d9\u06e0\u06db\u06db\u06db\u06db\u06eb\u06d7\u06dc\u06e0\u06da\u06e4\u06dc\u06df\u06df\u06d8\u06d7\u06e7\u06dc\u06d8\u06e0\u06d9\u06dc\u06e2\u06e7\u06d8\u06d9\u06e8"

    goto/16 :goto_0

    :sswitch_17
    const/16 v0, 0x66

    invoke-direct {p0, v0}, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->OooOo0(I)V

    const-string v0, "\u06d9\u06e8\u06e5\u06df\u06d6\u06ec\u06e6\u06df\u06d7\u06da\u06e1\u06e2\u06eb\u06db\u06e6\u06e7\u06e7\u06e8\u06d8\u06ec\u06d7\u06e5\u06dc\u06d8\u06d8\u06d8\u06e1\u06dc\u06e5\u06e8\u06df\u06df\u06da\u06e8\u06d8\u06e1\u06d6\u06da\u06d7\u06d6\u06e7\u06d8\u06ec\u06df\u06d7\u06eb\u06e1\u06d8\u06dc\u06e8\u06d8\u06d8\u06dc\u06da\u06d7\u06e1\u06df\u06df"

    goto/16 :goto_0

    :sswitch_18
    invoke-direct {p0, v1}, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->OooOOO(Ljava/lang/String;)V

    const-string v0, "\u06ec\u06eb\u06e6\u06d8\u06df\u06d8\u06d6\u06ec\u06e8\u06e6\u06d8\u06d7\u06d7\u06e7\u06e1\u06e0\u06dc\u06db\u06d8\u06d8\u06e4\u06e4\u06d8\u06d8\u06ec\u06eb\u06d8\u06d8\u06e2\u06e7\u06e5\u06d8\u06d7\u06da\u06ec\u06da\u06d6\u06db\u06e6\u06d8\u06e8\u06d8\u06e8\u06e8\u06e8\u06e1\u06db\u06dc\u06d8\u06d6\u06db\u06e1\u06d8\u06d6\u06da\u06e8\u06e5\u06e4\u06d6\u06e2\u06d7"

    goto/16 :goto_0

    :sswitch_19
    invoke-direct {p0}, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->OooOo0o()V

    const-string v0, "\u06e8\u06e6\u06db\u06e1\u06e7\u06e4\u06e4\u06d6\u06d8\u06e8\u06d7\u06eb\u06e1\u06ec\u06dc\u06d8\u06eb\u06eb\u06db\u06e0\u06e8\u06db\u06d9\u06da\u06e5\u06e2\u06db\u06e5\u06e0\u06e1\u06d9\u06ec\u06dc\u06e1\u06d9\u06e6\u06e7\u06d8\u06e6\u06d7\u06d6\u06e0\u06eb\u06e8"

    goto/16 :goto_0

    :sswitch_1a
    const-string v0, "\u06e8\u06e6\u06db\u06e1\u06e7\u06e4\u06e4\u06d6\u06d8\u06e8\u06d7\u06eb\u06e1\u06ec\u06dc\u06d8\u06eb\u06eb\u06db\u06e0\u06e8\u06db\u06d9\u06da\u06e5\u06e2\u06db\u06e5\u06e0\u06e1\u06d9\u06ec\u06dc\u06e1\u06d9\u06e6\u06e7\u06d8\u06e6\u06d7\u06d6\u06e0\u06eb\u06e8"

    goto/16 :goto_0

    :sswitch_1b
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7c4f20a0 -> :sswitch_a
        -0x6a173853 -> :sswitch_16
        -0x5b99e2d6 -> :sswitch_e
        -0x4d98e7c9 -> :sswitch_17
        -0x2f47efd9 -> :sswitch_1
        -0x1208af8c -> :sswitch_19
        -0x3cc647e -> :sswitch_c
        0x140ed371 -> :sswitch_d
        0x20b1581c -> :sswitch_0
        0x513199ac -> :sswitch_b
        0x51f57e8f -> :sswitch_18
        0x5e20c880 -> :sswitch_1a
        0x6f22d885 -> :sswitch_1b
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x425fdada -> :sswitch_2
        -0x1e660f6d -> :sswitch_8
        0x156ef417 -> :sswitch_9
        0x52c0b920 -> :sswitch_4
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        -0x422d1bbe -> :sswitch_6
        -0x334d2049 -> :sswitch_5
        -0x277b6577 -> :sswitch_7
        0x4f6facac -> :sswitch_3
    .end sparse-switch

    :sswitch_data_3
    .sparse-switch
        -0x6b4065e2 -> :sswitch_2
        -0x5ed64412 -> :sswitch_f
        -0x52d6f6d6 -> :sswitch_11
        0x50b69051 -> :sswitch_15
    .end sparse-switch

    :sswitch_data_4
    .sparse-switch
        0x36c168d2 -> :sswitch_13
        0x57c06d38 -> :sswitch_14
        0x758e4193 -> :sswitch_10
        0x7aa98814 -> :sswitch_12
    .end sparse-switch
.end method

.method private OooOOo()V
    .locals 4

    const-string v0, "\u06e0\u06d9\u06db\u06e5\u06df\u06db\u06e5\u06e6\u06d8\u06e2\u06e0\u06e7\u06eb\u06e7\u06e0\u06eb\u06e5\u06d9\u06e1\u06e8\u06db\u06e1\u06e6\u06dc\u06d8\u06dc\u06e8\u06e6\u06d7\u06eb\u06db\u06d8\u06e1\u06d8\u06e6\u06e1\u06db\u06ec\u06da\u06d8\u06d8\u06e6\u06d6\u06ec\u06da\u06d8\u06db\u06dc\u06df\u06d8\u06d7\u06e8\u06d9\u06d8\u06eb\u06e0"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x14b

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x20c

    const/16 v2, 0x2dc

    const v3, -0x16d11fe8

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e4\u06d6\u06d6\u06eb\u06ec\u06d8\u06e2\u06dc\u06d8\u06e2\u06e4\u06e8\u06ec\u06e6\u06db\u06da\u06e6\u06d9\u06ec\u06e7\u06ec\u06e2\u06df\u06e6\u06d8\u06e1\u06d7\u06dc\u06d8\u06db\u06d9\u06df"

    goto :goto_0

    :sswitch_1
    const v1, -0x6804fda6

    const-string v0, "\u06ec\u06e8\u06d8\u06d8\u06db\u06db\u06e4\u06ec\u06dc\u06d8\u06e6\u06ec\u06d9\u06e8\u06dc\u06dc\u06d8\u06d8\u06eb\u06da\u06e0\u06e8\u06e2\u06ec\u06e2\u06ec\u06e1\u06e4\u06e7\u06dc\u06e8\u06dc\u06da\u06e1\u06d8\u06d7\u06dc\u06e6\u06d8\u06da\u06eb\u06e5\u06d8\u06e7\u06e0\u06e2\u06e0\u06e6\u06dc\u06d8\u06e6\u06d9\u06e1"

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v2, v1

    sparse-switch v2, :sswitch_data_1

    goto :goto_1

    :sswitch_2
    const-string v0, "\u06e8\u06e1\u06d6\u06d8\u06df\u06e7\u06d8\u06df\u06e4\u06db\u06e2\u06e2\u06e6\u06e0\u06e5\u06e5\u06e4\u06e6\u06dc\u06e6\u06d8\u06d7\u06d6\u06e1\u06da\u06dc\u06e7\u06d9\u06d6\u06d8\u06e5\u06e6\u06e1\u06d8\u06db\u06da\u06e1"

    goto :goto_0

    :sswitch_3
    const-string v0, "\u06d6\u06e2\u06db\u06e4\u06d9\u06e7\u06e1\u06e7\u06d8\u06eb\u06e6\u06e1\u06e7\u06e6\u06e1\u06df\u06d6\u06d8\u06d8\u06e5\u06d7\u06df\u06e1\u06e4\u06d8\u06d8\u06e1\u06e0\u06ec\u06e4\u06e0\u06dc\u06e5\u06db\u06dc\u06d7\u06e5\u06d8\u06d7\u06d9\u06d6\u06d8\u06df\u06da\u06d8\u06d8\u06d7\u06e6\u06d6\u06d9\u06e6\u06e5\u06d8\u06e2\u06e8\u06e1\u06d8\u06e4\u06d6\u06e7"

    goto :goto_1

    :sswitch_4
    const v2, 0xa488e30

    const-string v0, "\u06eb\u06d8\u06d6\u06d8\u06db\u06da\u06d9\u06d7\u06e2\u06d8\u06d8\u06e4\u06d8\u06d9\u06d6\u06dc\u06d7\u06e5\u06e8\u06e0\u06df\u06da\u06e7\u06db\u06db\u06e8\u06df\u06d6\u06e6\u06eb\u06eb\u06e8\u06d8\u06d9\u06eb\u06dc\u06d8\u06d9\u06e1\u06dc\u06e1\u06e5\u06e6\u06d8\u06e8\u06e7\u06d6\u06d8\u06d7\u06e2\u06e6\u06e5\u06e6\u06d6"

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v2

    sparse-switch v3, :sswitch_data_2

    goto :goto_2

    :sswitch_5
    const-string v0, "\u06e5\u06e0\u06e6\u06e4\u06e5\u06e1\u06e5\u06e0\u06d6\u06d8\u06da\u06e0\u06e7\u06d8\u06dc\u06eb\u06ec\u06dc\u06d6\u06d8\u06ec\u06e0\u06e4\u06df\u06da\u06e6\u06d8\u06e1\u06ec\u06df\u06ec\u06e1\u06e6\u06d8\u06e6\u06e6\u06d9\u06db\u06e5\u06e1\u06e5\u06e2\u06db\u06d9\u06e8\u06dc\u06dc\u06e1\u06e8\u06d8\u06e7\u06ec\u06e5\u06d8\u06dc\u06d6\u06e8\u06e2\u06e8"

    goto :goto_1

    :cond_0
    const-string v0, "\u06d9\u06e6\u06d7\u06d7\u06d7\u06d9\u06e2\u06ec\u06e7\u06df\u06e5\u06e8\u06d8\u06e4\u06d7\u06e8\u06d7\u06e4\u06d8\u06eb\u06d6\u06d8\u06e8\u06d7\u06d6\u06d8\u06e2\u06d6\u06e6\u06d8\u06e6\u06db\u06dc\u06d8\u06e0\u06dc\u06d9\u06df\u06e6\u06e6\u06e7\u06ec\u06db\u06e5\u06e2\u06d6"

    goto :goto_2

    :sswitch_6
    iget v0, p0, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->Oooooo0:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_0

    const-string v0, "\u06ec\u06e6\u06db\u06d9\u06e8\u06e6\u06d8\u06d9\u06e8\u06e7\u06e8\u06e7\u06e0\u06e2\u06dc\u06e0\u06e0\u06e5\u06ec\u06d7\u06e5\u06d9\u06d8\u06d6\u06e8\u06d8\u06d9\u06da\u06d7\u06e8\u06e2\u06eb\u06da\u06eb\u06da\u06e5\u06d8\u06e0"

    goto :goto_2

    :sswitch_7
    const-string v0, "\u06e8\u06e5\u06e8\u06e2\u06e5\u06e5\u06e5\u06e6\u06d8\u06e2\u06e5\u06d6\u06eb\u06d8\u06e1\u06d8\u06e0\u06e6\u06e7\u06d8\u06d9\u06e6\u06e8\u06d8\u06ec\u06df\u06e8\u06d8\u06e8\u06d6\u06d6\u06d9\u06e4\u06df\u06e8\u06d9\u06ec\u06d6\u06e4\u06d9"

    goto :goto_2

    :sswitch_8
    const-string v0, "\u06e1\u06ec\u06e1\u06da\u06e8\u06eb\u06d7\u06ec\u06e2\u06e7\u06e5\u06dc\u06ec\u06da\u06db\u06d8\u06e1\u06e0\u06ec\u06e2\u06e7\u06e0\u06eb\u06d7\u06df\u06d9\u06d6\u06dc\u06db\u06e6"

    goto :goto_1

    :sswitch_9
    const-string v0, "\u06df\u06e1\u06e5\u06e2\u06dc\u06df\u06d7\u06e7\u06d6\u06d8\u06e0\u06e5\u06e5\u06d8\u06e2\u06e6\u06e5\u06d8\u06d9\u06ec\u06db\u06da\u06d8\u06e0\u06e0\u06d9\u06e4\u06dc\u06e1\u06e7\u06d8\u06dc\u06d7\u06e1\u06d8\u06e5\u06db\u06db\u06d6\u06e7\u06e2\u06db\u06d7\u06e4\u06d9\u06da\u06d6\u06d7\u06e7\u06e1\u06d8\u06d9\u06e7\u06dc\u06d8"

    goto :goto_0

    :sswitch_a
    iget-object v0, p0, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->o0OoOo0:Lcom/elfin/ad/activity/FullScreenTwoAdActivity$OooO0o;

    new-instance v1, Lcom/elfin/ad/activity/FullScreenTwoAdActivity$OooO0O0;

    invoke-direct {v1, p0}, Lcom/elfin/ad/activity/FullScreenTwoAdActivity$OooO0O0;-><init>(Lcom/elfin/ad/activity/FullScreenTwoAdActivity;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const-string v0, "\u06e8\u06e1\u06d6\u06d8\u06df\u06e7\u06d8\u06df\u06e4\u06db\u06e2\u06e2\u06e6\u06e0\u06e5\u06e5\u06e4\u06e6\u06dc\u06e6\u06d8\u06d7\u06d6\u06e1\u06da\u06dc\u06e7\u06d9\u06d6\u06d8\u06e5\u06e6\u06e1\u06d8\u06db\u06da\u06e1"

    goto :goto_0

    :sswitch_b
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x76b3a8cb -> :sswitch_1
        -0x4eb408dd -> :sswitch_a
        0xfa99f87 -> :sswitch_0
        0x7fd81620 -> :sswitch_b
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x4679ae0e -> :sswitch_9
        0x2306e46f -> :sswitch_2
        0x2c6a2b48 -> :sswitch_8
        0x60fefb99 -> :sswitch_4
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        -0x58a08461 -> :sswitch_6
        -0x482d6230 -> :sswitch_3
        -0x279b5f86 -> :sswitch_5
        -0x98cca04 -> :sswitch_7
    .end sparse-switch
.end method

.method private OooOOo0()V
    .locals 6

    const/4 v2, 0x0

    const-string v0, "\u06df\u06ec\u06e1\u06d8\u06d8\u06db\u06d8\u06d8\u06da\u06e1\u06e4\u06dc\u06d7\u06d8\u06d8\u06e8\u06e7\u06eb\u06df\u06eb\u06e1\u06e7\u06e0\u06e1\u06e8\u06e2\u06ec\u06da\u06e6\u06e2\u06df\u06e1\u06d8\u06db\u06eb\u06e7\u06e5\u06d8\u06e1\u06d8"

    move-object v1, v2

    move-object v3, v2

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v4, 0x2d7

    xor-int/2addr v2, v4

    xor-int/lit16 v2, v2, 0x3d0

    const/16 v4, 0xe4

    const v5, -0x66da1d09

    xor-int/2addr v2, v4

    xor-int/2addr v2, v5

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e8\u06da\u06e1\u06d8\u06d7\u06e8\u06e1\u06df\u06df\u06dc\u06db\u06d8\u06d8\u06d8\u06dc\u06e8\u06d6\u06d8\u06df\u06dc\u06e6\u06eb\u06e8\u06e1\u06d8\u06e8\u06e5\u06e6\u06d8\u06e2\u06d6\u06eb\u06da\u06e5\u06eb\u06e8\u06d9\u06e1\u06dc\u06db\u06e8\u06da\u06d8\u06e6\u06da\u06ec\u06e8\u06d8\u06d8\u06d8\u06e8\u06e8\u06d7\u06d9\u06e5\u06d7\u06e6\u06da\u06da"

    goto :goto_0

    :sswitch_1
    invoke-static {}, Lz2/qh;->OooO0O0()Lz2/qh;

    move-result-object v0

    const/4 v2, 0x2

    const-string v3, "761D5F3C12409F07DCE571A8AA3C0480"

    invoke-virtual {v0, v2, v3}, Lz2/qh;->OooO00o(ILjava/lang/String;)Lz2/mh;

    move-result-object v2

    const-string v0, "\u06db\u06da\u06d8\u06ec\u06eb\u06dc\u06e8\u06eb\u06d6\u06ec\u06e7\u06e8\u06e8\u06dc\u06d8\u06e8\u06d8\u06d8\u06df\u06e0\u06d8\u06dc\u06e1\u06e7\u06d8\u06d8\u06e1\u06d8\u06e6\u06e2\u06e4\u06e7\u06d6\u06d8\u06d8\u06e4\u06e1\u06d6\u06d7\u06e2\u06da\u06df\u06e2\u06df\u06df\u06e6\u06d6\u06d8\u06ec\u06da\u06d8\u06d9\u06dc\u06e0\u06d9\u06d9\u06e1\u06d8"

    move-object v3, v2

    goto :goto_0

    :sswitch_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u06e0\u06e4\u06d9\u06d6\u06e4\u06dc\u06db\u06e1\u06df\u06eb\u06d7\u06d6\u06d8\u06e0\u06ec\u06eb\u06eb\u06d6\u06df\u06d8\u06d8\u06d9\u06e6\u06d8\u06d8\u06ec\u06da\u06d6\u06d8\u06e1\u06d8\u06e0\u06e4\u06d7\u06d9\u06db\u06e2"

    goto :goto_0

    :sswitch_3
    const-string v0, "loadIFLYAd --> ilfyAd.isDisplay="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u06d6\u06e0\u06e6\u06d8\u06e5\u06e0\u06e1\u06d8\u06e1\u06d7\u06d9\u06d8\u06d6\u06ec\u06e5\u06dc\u06dc\u06d9\u06e7\u06e8\u06d7\u06d9\u06e5\u06e4\u06d6\u06d6\u06d8\u06e7\u06e8\u06e1\u06d8\u06dc\u06df\u06d6\u06e0\u06e1\u06db\u06d7\u06e5\u06df\u06e2\u06d7\u06da\u06e4\u06e2\u06e1\u06d8\u06ec\u06d7\u06e5\u06d8\u06d7\u06e1\u06d6"

    goto :goto_0

    :sswitch_4
    iget-boolean v0, v3, Lz2/mh;->OooO00o:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "\u06e0\u06e6\u06e8\u06e1\u06e5\u06df\u06e5\u06d9\u06e6\u06d8\u06eb\u06df\u06e8\u06d8\u06d6\u06eb\u06ec\u06dc\u06e7\u06df\u06d7\u06d6\u06e6\u06d8\u06ec\u06eb\u06e6\u06dc\u06d9\u06e2\u06db\u06db\u06eb\u06e5\u06e0\u06d8\u06d8\u06e0\u06e0\u06d6"

    goto :goto_0

    :sswitch_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const-string v0, "\u06d6\u06d7\u06e2\u06d7\u06dc\u06dc\u06d8\u06dc\u06d7\u06e8\u06eb\u06e2\u06d8\u06d8\u06d7\u06e0\u06d9\u06e0\u06e0\u06d6\u06d8\u06e2\u06e8\u06ec\u06d7\u06e8\u06e1\u06ec\u06d8\u06e4\u06e5\u06df\u06d9\u06d9\u06e6\u06e0\u06e8\u06d9\u06e1\u06ec\u06eb\u06e0\u06dc\u06e5\u06d6"

    goto :goto_0

    :sswitch_6
    iget-object v0, p0, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->o0OoOo0:Lcom/elfin/ad/activity/FullScreenTwoAdActivity$OooO0o;

    const/16 v2, 0x3ea

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    const-string v0, "\u06d9\u06df\u06db\u06e0\u06e0\u06e5\u06d8\u06df\u06df\u06d7\u06db\u06d9\u06d6\u06e7\u06dc\u06ec\u06e0\u06e6\u06d8\u06d6\u06e8\u06e1\u06d7\u06e8\u06d8\u06d9\u06e1\u06d8\u06d8\u06d8\u06e0\u06e8\u06d8"

    goto :goto_0

    :sswitch_7
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7f06dd3e -> :sswitch_1
        -0x70efae78 -> :sswitch_7
        -0x1ac60802 -> :sswitch_6
        -0x170c4cd7 -> :sswitch_0
        0x22919e0b -> :sswitch_5
        0x2dc33989 -> :sswitch_4
        0x49309c10 -> :sswitch_3
        0x6400c412 -> :sswitch_2
    .end sparse-switch
.end method

.method private OooOOoo()V
    .locals 4

    const-string v0, "\u06e2\u06eb\u06e2\u06e5\u06eb\u06d9\u06eb\u06d7\u06e2\u06eb\u06df\u06e2\u06e2\u06d9\u06dc\u06df\u06ec\u06d6\u06d8\u06ec\u06d9\u06db\u06df\u06dc\u06e0\u06d7\u06e2\u06dc\u06d8\u06df\u06d9\u06d6\u06d8\u06d9\u06e4\u06e8\u06e8\u06eb\u06e1\u06d9\u06e4\u06dc\u06d6\u06e8\u06d8\u06ec\u06d7\u06dc\u06d8\u06db\u06db\u06e8\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x278

    xor-int/2addr v1, v2

    xor-int/lit8 v1, v1, 0x1

    const/16 v2, 0x1e4

    const v3, 0x6bb28b88

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06dc\u06ec\u06e8\u06e5\u06e7\u06e7\u06df\u06e6\u06d8\u06d9\u06da\u06e5\u06e4\u06e1\u06e7\u06ec\u06e0\u06d9\u06e6\u06d9\u06e7\u06e4\u06e2\u06e0\u06dc\u06d6\u06ec\u06d7\u06d6"

    goto :goto_0

    :sswitch_1
    invoke-direct {p0}, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->OooOO0o()V

    const-string v0, "\u06e2\u06df\u06d6\u06ec\u06e1\u06dc\u06d8\u06eb\u06d6\u06e0\u06db\u06eb\u06e5\u06e5\u06e0\u06e6\u06d8\u06d8\u06ec\u06e8\u06e5\u06e1\u06d8\u06db\u06da\u06da\u06e7\u06eb\u06df\u06d8\u06d6\u06d8\u06d6\u06e6\u06e8\u06e2\u06ec\u06e8\u06d8"

    goto :goto_0

    :sswitch_2
    invoke-direct {p0}, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->OooOo00()V

    const-string v0, "\u06e8\u06eb\u06e6\u06df\u06e1\u06e6\u06d8\u06dc\u06e7\u06e4\u06e0\u06da\u06ec\u06db\u06d9\u06eb\u06ec\u06ec\u06df\u06e2\u06e1\u06da\u06e2\u06d6\u06db\u06d6\u06d8\u06e2\u06d9\u06df\u06e8\u06df\u06e2\u06d9\u06dc\u06e5"

    goto :goto_0

    :sswitch_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x6a2be55e -> :sswitch_2
        -0x245368ae -> :sswitch_0
        -0xfbd0ee6 -> :sswitch_3
        0x43598d7d -> :sswitch_1
    .end sparse-switch
.end method

.method private OooOo0(I)V
    .locals 4

    const-string v0, "\u06df\u06e5\u06ec\u06d8\u06e8\u06e5\u06d8\u06e7\u06d7\u06e0\u06eb\u06d7\u06d8\u06e7\u06ec\u06e2\u06e1\u06e5\u06d8\u06e6\u06d9\u06ec\u06e7\u06eb\u06e6\u06da\u06e7\u06d7\u06e5\u06e7\u06df\u06ec\u06e6\u06dc\u06d8\u06db\u06e6\u06e5\u06e7\u06e5\u06e1\u06d8\u06e5\u06e1\u06e1\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x27b

    xor-int/2addr v1, v2

    xor-int/lit8 v1, v1, 0x0

    const/16 v2, 0x13d

    const v3, -0x4e7260a

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06da\u06ec\u06d7\u06e0\u06e7\u06e8\u06d8\u06e6\u06e4\u06d8\u06d8\u06e4\u06e7\u06e1\u06d8\u06d6\u06e1\u06e1\u06dc\u06e6\u06d7\u06e6\u06da\u06e7\u06d9\u06ec\u06d7\u06db\u06e1\u06e1\u06d8\u06e6\u06eb\u06df\u06e4\u06e5\u06e6\u06d8\u06da\u06d8\u06e7\u06d8\u06e0\u06db\u06e1\u06e8\u06d6\u06d8\u06e5\u06d8\u06db\u06df\u06d6\u06d7\u06d9\u06e0\u06e5\u06d8\u06dc\u06d9\u06e0"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06dc\u06e0\u06d6\u06d7\u06e8\u06db\u06d6\u06e1\u06d6\u06d6\u06e0\u06e6\u06d6\u06e4\u06e8\u06d8\u06db\u06eb\u06e4\u06e2\u06e5\u06e5\u06d8\u06d9\u06da\u06ec\u06d6\u06eb\u06e5\u06e5\u06d8\u06e4\u06d7\u06df\u06dc\u06d8\u06d6\u06d6\u06ec\u06d6\u06e2\u06ec\u06e1\u06e0"

    goto :goto_0

    :sswitch_2
    iput p1, p0, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->o00O0O:I

    const-string v0, "\u06e8\u06d9\u06d6\u06d7\u06e5\u06e1\u06d8\u06e8\u06da\u06da\u06ec\u06e5\u06d9\u06e8\u06df\u06d8\u06d8\u06e5\u06ec\u06d6\u06e4\u06e6\u06e6\u06d8\u06e4\u06da\u06d6\u06da\u06e5\u06e8\u06d8\u06d8\u06e7\u06e6\u06d6\u06d7\u06dc\u06d8\u06da\u06e4\u06e6\u06d8"

    goto :goto_0

    :sswitch_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7e0c7d70 -> :sswitch_2
        -0x5e72f7c6 -> :sswitch_1
        0x1260e10f -> :sswitch_3
        0x3b4f94e4 -> :sswitch_0
    .end sparse-switch
.end method

.method private OooOo00()V
    .locals 6

    const/4 v2, 0x1

    const-string v0, "\u06e1\u06e5\u06d8\u06d8\u06e5\u06e1\u06e8\u06d8\u06d8\u06e7\u06d7\u06d9\u06da\u06e1\u06e5\u06da\u06ec\u06e1\u06d8\u06d9\u06e5\u06e2\u06e6\u06d7\u06e4\u06dc\u06d8\u06ec\u06e8\u06d8\u06d8\u06dc\u06e7\u06e1\u06e2\u06dc\u06e8\u06e4\u06db\u06d6\u06d6\u06d7\u06e5\u06e5\u06eb"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v3, 0x35b

    xor-int/2addr v1, v3

    xor-int/lit16 v1, v1, 0x3e1

    const/16 v3, 0xf8

    const v4, 0x3c0dc3b8

    xor-int/2addr v1, v3

    xor-int/2addr v1, v4

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d6\u06e1\u06e1\u06d8\u06db\u06e2\u06e5\u06d8\u06e5\u06e6\u06da\u06da\u06ec\u06ec\u06d8\u06e1\u06ec\u06e6\u06e4\u06e8\u06d8\u06e1\u06dc\u06e2\u06e1\u06e0\u06e5\u06d7\u06ec\u06d8\u06e1\u06e2\u06db\u06e5\u06e1\u06e6\u06db\u06d6\u06d8"

    goto :goto_0

    :sswitch_1
    iput-boolean v2, p0, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->ooOO:Z

    const-string v0, "\u06e7\u06e7\u06e6\u06d9\u06e6\u06d8\u06db\u06dc\u06db\u06e6\u06d9\u06dc\u06df\u06e5\u06e7\u06dc\u06eb\u06eb\u06da\u06dc\u06e7\u06db\u06eb\u06d8\u06d7\u06e6\u06df\u06e4\u06da\u06d9"

    goto :goto_0

    :sswitch_2
    invoke-static {}, Lz2/mc;->OooO0oo()Lz2/mc;

    move-result-object v0

    new-instance v1, Lcom/elfin/ad/activity/FullScreenTwoAdActivity$OooO0OO;

    invoke-direct {v1, p0}, Lcom/elfin/ad/activity/FullScreenTwoAdActivity$OooO0OO;-><init>(Lcom/elfin/ad/activity/FullScreenTwoAdActivity;)V

    invoke-virtual {v0, v1}, Lz2/mc;->OooOOO0(Lz2/mc$OooO00o;)Lz2/mc;

    move-result-object v0

    const/4 v3, 0x3

    invoke-static {}, Lz2/qh;->OooO0O0()Lz2/qh;

    move-result-object v1

    iget-object v1, v1, Lz2/qh;->OooO0O0:Lcom/cyjh/http/bean/response/BackgroundSetAdInfo;

    iget-wide v4, v1, Lcom/cyjh/http/bean/response/BackgroundSetAdInfo;->Id:J

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lz2/mc;->OooO(Landroid/content/Context;IIJ)V

    const-string v0, "\u06d8\u06da\u06e5\u06e5\u06d6\u06e7\u06d8\u06da\u06df\u06dc\u06e0\u06e0\u06eb\u06e1\u06da\u06e1\u06e8\u06df\u06e0\u06e8\u06d8\u06d7\u06e8\u06d7\u06eb\u06e6\u06d6\u06d8\u06db\u06db\u06d6\u06e7\u06da\u06e8\u06d8\u06e1\u06df\u06d9\u06da\u06df\u06df\u06e8\u06e5\u06e8"

    goto :goto_0

    :sswitch_3
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x463b7741 -> :sswitch_2
        -0x1265522a -> :sswitch_3
        0x2dafbc4 -> :sswitch_0
        0x24ec8587 -> :sswitch_1
    .end sparse-switch
.end method

.method private OooOo0O()V
    .locals 4

    const-string v0, "\u06e1\u06d7\u06e8\u06d8\u06e8\u06e6\u06e5\u06e0\u06e6\u06eb\u06e5\u06d8\u06d7\u06ec\u06dc\u06dc\u06e0\u06e2\u06e1\u06e7\u06e5\u06d8\u06db\u06d9\u06da\u06ec\u06e6\u06e8\u06e6\u06d9\u06dc\u06d8\u06da\u06e2\u06df\u06df\u06e8\u06da\u06d6\u06eb\u06d9\u06e7\u06df"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x33d

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x1af

    const/4 v2, 0x0

    const v3, 0x20814809

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06ec\u06e7\u06e2\u06dc\u06d6\u06e5\u06d8\u06e1\u06d6\u06e2\u06e0\u06e4\u06eb\u06d9\u06d8\u06e5\u06d8\u06e4\u06e7\u06d6\u06e6\u06db\u06dc\u06d8\u06ec\u06e7\u06e2\u06e5\u06db\u06d7\u06d7\u06e5\u06e8\u06ec\u06d8\u06da\u06da\u06da\u06d6\u06d6\u06d6\u06db\u06e2\u06d6\u06e4\u06e4\u06eb\u06e5\u06e6\u06d7\u06e4\u06e4\u06d9\u06e4\u06db\u06eb\u06e8"

    goto :goto_0

    :sswitch_1
    const v1, -0x13113626

    const-string v0, "\u06da\u06d9\u06e6\u06db\u06d9\u06e8\u06e8\u06d7\u06e6\u06d8\u06db\u06e8\u06e6\u06d8\u06df\u06da\u06e6\u06d8\u06df\u06e4\u06e1\u06d8\u06d9\u06d7\u06e4\u06eb\u06d6\u06e1\u06da\u06e6\u06eb\u06df\u06e1\u06d9\u06e1\u06e2\u06e0\u06e1\u06e5\u06e7"

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v2, v1

    sparse-switch v2, :sswitch_data_1

    goto :goto_1

    :sswitch_2
    const v2, 0x22205f51

    const-string v0, "\u06e5\u06dc\u06d6\u06d8\u06e0\u06e6\u06e1\u06e8\u06e1\u06e4\u06da\u06d9\u06d8\u06d8\u06e5\u06ec\u06d8\u06d8\u06eb\u06e0\u06e8\u06e7\u06dc\u06e4\u06df\u06e0\u06e6\u06dc\u06e5\u06d8\u06d8\u06d6\u06ec\u06e8\u06e4\u06dc\u06d6\u06da\u06e8\u06e5\u06d8\u06df\u06da\u06e6\u06d8\u06e8\u06d9\u06d8\u06d8\u06d6\u06d6\u06e1\u06d8\u06e0\u06e0\u06d8\u06d8\u06eb\u06db\u06db\u06e7\u06e2\u06ec"

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v2

    sparse-switch v3, :sswitch_data_2

    goto :goto_2

    :sswitch_3
    const-string v0, "\u06db\u06df\u06df\u06d9\u06e4\u06e8\u06d8\u06eb\u06e4\u06eb\u06e4\u06eb\u06d8\u06e6\u06d8\u06e7\u06db\u06dc\u06ec\u06da\u06d9\u06e8\u06d7\u06eb\u06e6\u06d8\u06e2\u06da\u06da\u06e2\u06df\u06e7\u06d8\u06e8\u06ec\u06da\u06d7\u06df\u06d8\u06dc\u06da\u06d6\u06e6\u06eb\u06db\u06e7\u06d8\u06eb\u06ec\u06e6\u06d8"

    goto :goto_1

    :cond_0
    const-string v0, "\u06d7\u06eb\u06e4\u06d7\u06e6\u06d8\u06d9\u06ec\u06e6\u06d8\u06d8\u06e4\u06d6\u06d8\u06db\u06e6\u06e8\u06da\u06e0\u06da\u06e8\u06e4\u06eb\u06d6\u06e7\u06e5\u06e1\u06ec\u06e5\u06db\u06e7\u06dc\u06da\u06e2\u06d8\u06e5\u06e4\u06d6\u06e6\u06dc\u06e1\u06e2\u06d7\u06d9\u06d6\u06d7\u06e1\u06da\u06e1\u06d8"

    goto :goto_2

    :sswitch_4
    iget-object v0, p0, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->OoooooO:Lcom/elfin/ad/activity/FullScreenTwoAdActivity$OooO;

    if-nez v0, :cond_0

    const-string v0, "\u06dc\u06da\u06d8\u06e6\u06d6\u06e5\u06d8\u06e2\u06df\u06e0\u06eb\u06eb\u06e6\u06ec\u06dc\u06db\u06d6\u06d8\u06d6\u06d8\u06e2\u06e8\u06e2\u06e2\u06d9\u06e1\u06d8\u06d6\u06d9\u06eb\u06da\u06da\u06d6\u06e4\u06da\u06e5\u06d8\u06ec\u06e6\u06e7\u06d8\u06ec\u06e0\u06d8\u06d8\u06e1\u06e8\u06d6\u06d8\u06e4\u06e4\u06d6\u06d8\u06e5\u06e8\u06e7\u06d8\u06e4\u06e2\u06da\u06e7\u06d8\u06ec"

    goto :goto_2

    :sswitch_5
    const-string v0, "\u06e8\u06eb\u06e0\u06eb\u06d8\u06e2\u06e5\u06ec\u06dc\u06da\u06e8\u06e0\u06e5\u06e6\u06e6\u06d8\u06da\u06e8\u06d8\u06df\u06da\u06d8\u06d7\u06d7\u06eb\u06e2\u06da\u06dc\u06da\u06d6\u06df\u06e0\u06e8\u06ec\u06e5\u06dc\u06e1\u06e2\u06da\u06e4\u06d7\u06da\u06e5\u06d8\u06da\u06da\u06df\u06e6\u06e7\u06d8"

    goto :goto_2

    :sswitch_6
    const-string v0, "\u06e7\u06d8\u06e1\u06d8\u06d9\u06e8\u06d8\u06e0\u06eb\u06db\u06df\u06e1\u06e5\u06d8\u06e0\u06e5\u06e4\u06d7\u06e4\u06dc\u06d8\u06da\u06da\u06d6\u06d8\u06eb\u06e0\u06dc\u06db\u06da\u06db\u06da\u06eb\u06e1\u06d8\u06e6\u06e0\u06dc\u06df\u06e0\u06e7\u06e1\u06e5\u06db\u06e8\u06da"

    goto :goto_1

    :sswitch_7
    const-string v0, "\u06e7\u06df\u06e1\u06e8\u06e8\u06db\u06e1\u06e2\u06df\u06d9\u06d8\u06e8\u06d8\u06da\u06d6\u06e7\u06d8\u06e4\u06e4\u06dc\u06df\u06e0\u06d9\u06e2\u06e4\u06d9\u06e4\u06d9\u06d9\u06d8\u06e6\u06dc\u06dc\u06dc\u06e8\u06e5\u06d6\u06d8"

    goto :goto_1

    :sswitch_8
    const-string v0, "\u06e2\u06e5\u06e0\u06d9\u06e6\u06e2\u06d6\u06e7\u06dc\u06da\u06d9\u06e5\u06d8\u06d9\u06df\u06eb\u06da\u06e2\u06d8\u06d8\u06e2\u06e8\u06df\u06e5\u06ec\u06e1\u06e5\u06da\u06ec\u06ec\u06d6\u06e4\u06da\u06da\u06e6\u06d9\u06d7\u06e1\u06dc\u06ec\u06db\u06e4\u06db\u06db\u06dc\u06e8\u06d6\u06e5\u06d9\u06e7\u06e5\u06dc\u06dc\u06d8\u06df\u06e7\u06e4"

    goto :goto_0

    :sswitch_9
    new-instance v0, Lcom/elfin/ad/activity/FullScreenTwoAdActivity$OooO;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/elfin/ad/activity/FullScreenTwoAdActivity$OooO;-><init>(Lcom/elfin/ad/activity/FullScreenTwoAdActivity;ILcom/elfin/ad/activity/FullScreenTwoAdActivity$OooO00o;)V

    iput-object v0, p0, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->OoooooO:Lcom/elfin/ad/activity/FullScreenTwoAdActivity$OooO;

    const-string v0, "\u06d7\u06e6\u06e5\u06db\u06e0\u06db\u06db\u06e6\u06eb\u06e8\u06d8\u06dc\u06e8\u06db\u06e7\u06e5\u06e2\u06e8\u06e4\u06db\u06d7\u06d6\u06d6\u06d8\u06e8\u06ec\u06ec\u06df\u06d7\u06e7\u06e8\u06da\u06da\u06df\u06df\u06e6\u06d8\u06df\u06e0\u06e8\u06e7\u06eb\u06df\u06e5\u06eb\u06e2\u06e7\u06db\u06e6\u06d8"

    goto :goto_0

    :sswitch_a
    iget-object v0, p0, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->OoooooO:Lcom/elfin/ad/activity/FullScreenTwoAdActivity$OooO;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    const-string v0, "\u06ec\u06e6\u06d8\u06e1\u06db\u06db\u06e6\u06e5\u06e5\u06e0\u06e7\u06db\u06e8\u06ec\u06e6\u06d6\u06e7\u06d6\u06db\u06e5\u06d8\u06eb\u06ec\u06ec\u06db\u06e7\u06e1\u06d8\u06dc\u06e2\u06eb\u06e4\u06ec\u06ec\u06dc\u06e6\u06e6"

    goto :goto_0

    :sswitch_b
    const-string v0, "\u06d7\u06e6\u06e5\u06db\u06e0\u06db\u06db\u06e6\u06eb\u06e8\u06d8\u06dc\u06e8\u06db\u06e7\u06e5\u06e2\u06e8\u06e4\u06db\u06d7\u06d6\u06d6\u06d8\u06e8\u06ec\u06ec\u06df\u06d7\u06e7\u06e8\u06da\u06da\u06df\u06df\u06e6\u06d8\u06df\u06e0\u06e8\u06e7\u06eb\u06df\u06e5\u06eb\u06e2\u06e7\u06db\u06e6\u06d8"

    goto :goto_0

    :sswitch_c
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x723552e -> :sswitch_c
        0x419fc4c -> :sswitch_1
        0x5e4e341 -> :sswitch_0
        0x131838ad -> :sswitch_a
        0x1b46f225 -> :sswitch_9
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x24cde53e -> :sswitch_2
        0x2b1d7406 -> :sswitch_8
        0x32dfafd8 -> :sswitch_7
        0x69dc7a72 -> :sswitch_b
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        -0x63e97642 -> :sswitch_5
        -0x5dc8694c -> :sswitch_6
        -0x5cce59e2 -> :sswitch_3
        0x1539023a -> :sswitch_4
    .end sparse-switch
.end method

.method private OooOo0o()V
    .locals 4

    const-string v0, "\u06e2\u06db\u06e7\u06dc\u06e8\u06e8\u06d8\u06d7\u06df\u06e1\u06d8\u06e2\u06e2\u06ec\u06e2\u06dc\u06e4\u06ec\u06e4\u06e5\u06d8\u06e2\u06e8\u06d7\u06e6\u06dc\u06da\u06d6\u06e0\u06e1\u06e2\u06e4\u06e8\u06d8\u06dc\u06e8\u06d8\u06d8\u06e1\u06dc\u06e4\u06db\u06e6\u06dc\u06d8\u06d6"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x156

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x189

    const/16 v2, 0x24e

    const v3, 0x2e106724

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e5\u06e6\u06d7\u06d6\u06dc\u06d8\u06d8\u06d9\u06e6\u06e6\u06e5\u06e7\u06ec\u06e1\u06e4\u06e2\u06e2\u06d7\u06da\u06eb\u06e7\u06e1\u06df\u06eb\u06e4\u06eb\u06df\u06e6\u06eb\u06e6\u06d8\u06e4\u06df\u06ec\u06df\u06dc\u06d6\u06d8"

    goto :goto_0

    :sswitch_1
    invoke-static {p0}, Lz2/ei;->OooO00o(Landroid/content/Context;)V

    const-string v0, "\u06d8\u06d8\u06d8\u06d8\u06df\u06dc\u06e7\u06dc\u06db\u06eb\u06d8\u06df\u06e7\u06e1\u06d8\u06e6\u06d8\u06e8\u06e1\u06ec\u06e5\u06da\u06e1\u06d8\u06ec\u06dc\u06db\u06d9\u06e1\u06e1\u06e1\u06da\u06e1\u06d8\u06e0\u06ec\u06d6\u06d8\u06e0\u06e4\u06e6\u06d8\u06d9\u06dc\u06d9\u06d9\u06e0\u06db\u06ec\u06dc\u06e0\u06e8\u06df\u06d6\u06e8\u06e8\u06e8\u06db\u06dc\u06d8"

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const-string v0, "\u06ec\u06e8\u06db\u06df\u06e4\u06e1\u06d8\u06e1\u06e6\u06e8\u06d8\u06dc\u06ec\u06e7\u06e1\u06e5\u06e7\u06d8\u06e5\u06d9\u06ec\u06df\u06d8\u06db\u06e7\u06d9\u06db\u06d9\u06e8\u06ec\u06da\u06e7\u06e1\u06d8\u06da\u06e1\u06d6\u06e8\u06e7\u06da\u06dc\u06e2\u06e0\u06ec\u06e1\u06d6\u06d8"

    goto :goto_0

    :sswitch_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x75aac69d -> :sswitch_2
        -0x6a7d562e -> :sswitch_3
        0x3071e18a -> :sswitch_1
        0x34821e83 -> :sswitch_0
    .end sparse-switch
.end method

.method private initData()V
    .locals 4

    const-string v0, "\u06e5\u06dc\u06ec\u06ec\u06d8\u06d8\u06eb\u06eb\u06e6\u06d8\u06da\u06df\u06e4\u06e8\u06e5\u06e7\u06d8\u06e5\u06d8\u06d8\u06d8\u06da\u06d7\u06db\u06db\u06e6\u06eb\u06ec\u06d6\u06d8\u06e1\u06da\u06eb\u06d9\u06d7\u06ec\u06e4\u06d6\u06da"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x142

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x15d

    const/16 v2, 0x150

    const v3, 0x5cfd70ab

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06ec\u06e0\u06e0\u06d7\u06da\u06eb\u06ec\u06dc\u06e6\u06d8\u06e2\u06eb\u06df\u06e7\u06e0\u06d9\u06dc\u06e5\u06e7\u06d8\u06e7\u06dc\u06ec\u06e4\u06e8\u06e8\u06d6\u06d8\u06e6\u06d8\u06dc\u06da\u06e7\u06d8\u06da\u06e7\u06d8\u06d7\u06da\u06eb\u06eb\u06dc\u06eb\u06e4\u06e6\u06e0\u06e7\u06e6\u06d8\u06dc\u06d7\u06d8\u06d8\u06e0\u06e2\u06e4\u06d8"

    goto :goto_0

    :sswitch_1
    invoke-direct {p0}, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->OooOOOO()V

    const-string v0, "\u06e2\u06e6\u06d9\u06e1\u06df\u06d6\u06d8\u06e6\u06db\u06db\u06d8\u06e7\u06e2\u06e7\u06d6\u06dc\u06d9\u06e1\u06dc\u06e4\u06db\u06db\u06eb\u06eb\u06e6\u06d8\u06d9\u06eb\u06e8\u06e5\u06e7\u06d8\u06d8\u06d7\u06df\u06da\u06e1\u06e2\u06e8\u06d8\u06e2\u06e0\u06dc\u06ec\u06e8\u06dc\u06d8\u06d8\u06df\u06df\u06d6\u06d7\u06e7"

    goto :goto_0

    :sswitch_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x5dd56bcd -> :sswitch_0
        -0x1d08ed6d -> :sswitch_1
        0x3465b428 -> :sswitch_2
    .end sparse-switch
.end method

.method private initListener()V
    .locals 4

    const-string v0, "\u06d8\u06e4\u06da\u06d7\u06e4\u06d7\u06db\u06db\u06d9\u06ec\u06dc\u06e6\u06e5\u06e0\u06d7\u06e0\u06e5\u06e2\u06e8\u06e6\u06d6\u06d8\u06d9\u06e1\u06e7\u06d8\u06ec\u06e0\u06d8\u06dc\u06e6\u06e5"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x3ce

    xor-int/2addr v1, v2

    xor-int/lit8 v1, v1, 0x65

    const/16 v2, 0x190

    const v3, 0x3a48a89c

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06db\u06e8\u06e1\u06d8\u06d8\u06eb\u06d8\u06d8\u06e7\u06d8\u06ec\u06ec\u06d7\u06e8\u06e4\u06eb\u06e4\u06e1\u06df\u06df\u06ec\u06e1\u06dc\u06d8\u06db\u06ec\u06e7\u06e2\u06ec\u06df\u06dc\u06d9\u06e6\u06e1\u06d8\u06e8\u06e6\u06d6\u06d8\u06e2\u06e7\u06e5\u06d8\u06e0\u06e2\u06e8\u06d8\u06e2\u06e2\u06dc\u06d8\u06e6\u06e1\u06d6\u06d8\u06e2\u06e7\u06e1\u06d8\u06e2\u06dc"

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->OooooOo:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "\u06db\u06e2\u06e6\u06d7\u06d9\u06da\u06e7\u06e2\u06d6\u06da\u06e0\u06d8\u06d8\u06e0\u06ec\u06e8\u06d8\u06e0\u06d8\u06ec\u06e6\u06ec\u06d6\u06d8\u06d8\u06eb\u06d6\u06d9\u06e6\u06d7\u06e0\u06da\u06e6\u06d8\u06d8\u06dc\u06e0\u06d9\u06d9\u06e1"

    goto :goto_0

    :sswitch_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7d4f9649 -> :sswitch_2
        -0x2a8806f3 -> :sswitch_0
        0x460944cb -> :sswitch_1
    .end sparse-switch
.end method

.method private initView()V
    .locals 4

    const-string v0, "\u06e7\u06e8\u06e6\u06eb\u06e8\u06d8\u06d8\u06e8\u06e1\u06dc\u06df\u06db\u06e7\u06e0\u06df\u06d6\u06d6\u06d6\u06d7\u06d6\u06e1\u06e1\u06ec\u06e7\u06dc\u06d8\u06db\u06e1\u06dc\u06e7\u06e6\u06d7"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x6f

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x10b

    const/16 v2, 0x18b

    const v3, -0x60b96216

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06df\u06e6\u06e7\u06d8\u06dc\u06da\u06dc\u06e0\u06dc\u06d8\u06da\u06d9\u06d7\u06e7\u06ec\u06d6\u06d8\u06e8\u06eb\u06d7\u06e7\u06e8\u06e5\u06d6\u06e2\u06e4\u06e5\u06e0\u06e8\u06dc\u06e8\u06d8\u06eb\u06df\u06ec\u06db\u06d6\u06dc\u06df\u06ec\u06e8\u06d9\u06e7\u06d8\u06d8\u06db\u06e0\u06e6\u06d8\u06e7\u06dc\u06d6"

    goto :goto_0

    :sswitch_1
    sget v0, Lcom/elfin/ad/R$id;->iv_splash_ad_fullscreen:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->OooooO0:Landroid/widget/ImageView;

    const-string v0, "\u06ec\u06e0\u06e7\u06e7\u06dc\u06e6\u06ec\u06ec\u06d7\u06e6\u06d7\u06e7\u06d9\u06db\u06d8\u06e0\u06e0\u06db\u06e4\u06db\u06e7\u06da\u06e2\u06dc\u06d8\u06e1\u06eb\u06d8\u06d8\u06e2\u06e0\u06d8\u06d6\u06dc\u06e7O\u06d7\u06e1\u06d8\u06d8\u06e4\u06e5"

    goto :goto_0

    :sswitch_2
    sget v0, Lcom/elfin/ad/R$id;->tv_splash_ad_mark:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->OooooOO:Landroid/widget/TextView;

    const-string v0, "\u06da\u06ec\u06e1\u06d8\u06e7\u06df\u06d6\u06d8\u06e2\u06ec\u06e1\u06d8\u06d8\u06da\u06ec\u06e7\u06db\u06da\u06e1\u06e7\u06d6\u06d8\u06d9\u06e7\u06e0\u06e4\u06e6\u06e4\u06ec\u06e1\u06d8\u06d8\u06e1\u06db\u06db\u06d7\u06d9\u06e1\u06d8\u06d6\u06e4\u06d7\u06db\u06dc\u06d8\u06d8\u06d9\u06d8\u06df"

    goto :goto_0

    :sswitch_3
    sget v0, Lcom/elfin/ad/R$id;->tv_close_ad:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->OooooOo:Landroid/widget/TextView;

    const-string v0, "\u06d6\u06df\u06da\u06e8\u06e7\u06da\u06e0\u06d8\u06e6\u06d8\u06dc\u06d8\u06ec\u06d9\u06d7\u06d8\u06d8\u06e7\u06d8\u06eb\u06e4\u06e5\u06dc\u06d8\u06eb\u06da\u06e0\u06d8\u06e0\u06e7\u06e0\u06e0\u06e8\u06d8\u06e6\u06e5\u06d9\u06da\u06d8\u06df\u06e0\u06eb\u06dc\u06d8\u06e1\u06d7\u06e5\u06d8\u06d8\u06e0\u06e1\u06e2\u06eb\u06da\u06e4\u06d6\u06e7\u06d8\u06db\u06d8\u06d6"

    goto :goto_0

    :sswitch_4
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x140737ed -> :sswitch_1
        0x18931db2 -> :sswitch_2
        0x1c40b1a0 -> :sswitch_0
        0x5ce53269 -> :sswitch_4
        0x5f359606 -> :sswitch_3
    .end sparse-switch
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    const/4 v1, 0x0

    const-string v0, "\u06df\u06d7\u06e0\u06d7\u06e0\u06dc\u06d8\u06ec\u06d8\u06e7\u06d8\u06eb\u06df\u06e4\u06dc\u06e7\u06eb\u06eb\u06df\u06eb\u06e4\u06d6\u06d8\u06d9\u06d9\u06e1\u06d8\u06d9\u06e4\u06dc\u06ec\u06e2\u06e8\u06d8\u06df\u06da\u06e6\u06d8\u06da\u06db\u06d7\u06e4\u06e6\u06e7\u06ec\u06e2\u06d6\u06e8\u06df\u06dc\u06d8\u06eb\u06e7\u06e2"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v3, 0x352

    xor-int/2addr v2, v3

    xor-int/lit16 v2, v2, 0x2c7

    const/16 v3, 0x287

    const v4, -0x7169b8ef

    xor-int/2addr v2, v3

    xor-int/2addr v2, v4

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e5\u06d8\u06d8\u06db\u06e0\u06db\u06eb\u06d8\u06eb\u06d7\u06d9\u06dc\u06d8\u06e2\u06dc\u06d8\u06ec\u06e8\u06d6\u06d8\u06d9\u06e4\u06d9\u06eb\u06ec\u06e8\u06d8\u06d7\u06e0\u06d7\u06e7\u06e4\u06d6\u06d8\u06e5\u06d6\u06e6\u06d8\u06eb\u06e7\u06dc\u06e0\u06e7\u06e2\u06df\u06ec\u06e7\u06d9\u06da\u06d8\u06d8\u06e5\u06e6\u06d8"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06df\u06eb\u06e7\u06db\u06e0\u06e5\u06d8\u06e8\u06d6\u06ec\u06d7\u06e0\u06ec\u06e1\u06d7\u06da\u06d8\u06e5\u06d8\u06d8\u06da\u06d7\u06da\u06e4\u06d6\u06e1\u06d8\u06d9\u06da\u06db\u06d8\u06db\u06e6\u06d8\u06d6\u06ec\u06d6\u06d8\u06e7\u06eb\u06dc\u06e1\u06e2\u06d9\u06eb\u06e2\u06e6\u06e5\u06e1\u06eb\u06da\u06ec\u06d6\u06d6\u06e6\u06d8\u06dc\u06ec\u06d6\u06d8"

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const-string v0, "\u06d6\u06d7\u06e5\u06d8\u06e0\u06d9\u06e1\u06da\u06eb\u06e5\u06d8\u06ec\u06d7\u06e2\u06eb\u06d8\u06d6\u06e1\u06d8\u06e8\u06e7\u06ec\u06ec\u06da\u06da\u06e8\u06e6\u06da\u06dc\u06d8\u06eb\u06ec\u06d7"

    goto :goto_0

    :sswitch_3
    const v2, -0x5dd18e98

    const-string v0, "\u06d6\u06e5\u06dc\u06df\u06e2\u06d6\u06d8\u06e4\u06e2\u06da\u06dc\u06dc\u06ec\u06d9\u06eb\u06d7\u06db\u06da\u06dc\u06d6\u06e4\u06d8\u06e6\u06d9\u06df\u06ec\u06e1\u06e5\u06d8\u06d7\u06d8\u06e7\u06e4\u06e5\u06d9\u06df\u06e7\u06e8\u06e8\u06e1\u06e0\u06e2\u06eb\u06da\u06df\u06d6\u06e4\u06dc\u06da"

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v2

    sparse-switch v3, :sswitch_data_1

    goto :goto_1

    :sswitch_4
    const v3, -0x357bf22c    # -4327146.0f

    const-string v0, "\u06dc\u06e6\u06e8\u06e7\u06e7\u06eb\u06e2\u06db\u06e4\u06e2\u06db\u06e6\u06d8\u06e7\u06d8\u06e6\u06e0\u06e4\u06dc\u06d8\u06ec\u06eb\u06d7\u06eb\u06e8\u06e2\u06df\u06e6\u06e8\u06d8\u06e1\u06eb\u06e1\u06d8\u06d8\u06e5\u06d8\u06d8\u06e2\u06e0"

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    xor-int/2addr v4, v3

    sparse-switch v4, :sswitch_data_2

    goto :goto_2

    :sswitch_5
    const-string v0, "\u06e6\u06e2\u06e2\u06e4\u06e8\u06d7\u06e1\u06da\u06ec\u06da\u06da\u06e1\u06d8\u06d7\u06db\u06e2\u06e8\u06e8\u06e1\u06d8\u06ec\u06da\u06d9\u06eb\u06db\u06d8\u06d8\u06e1\u06d6\u06e8\u06d8\u06d7\u06d8\u06d7\u06e5\u06d6\u06df\u06eb\u06d6\u06d7\u06da\u06d7\u06e0\u06df\u06e2"

    goto :goto_1

    :cond_0
    const-string v0, "\u06e5\u06e8\u06e6\u06e1\u06e5\u06e6\u06e2\u06e7\u06d8\u06d8\u06e7\u06e1\u06e2\u06ec\u06e5\u06d8\u06e7\u06e5\u06e2\u06e0\u06e8\u06df\u06e8\u06df\u06e2\u06db\u06e8\u06da\u06e5\u06db\u06e6\u06e1\u06d9\u06dc\u06eb\u06e2\u06e1\u06d8\u06d6\u06d8\u06e1\u06e1\u06d8\u06e0\u06eb\u06e6\u06d8"

    goto :goto_2

    :sswitch_6
    sget v0, Lcom/elfin/ad/R$id;->tv_close_ad:I

    if-ne v1, v0, :cond_0

    const-string v0, "\u06eb\u06e7\u06e6\u06d8\u06e1\u06da\u06e4\u06df\u06da\u06d8\u06d8\u06d8\u06e6\u06da\u06d7\u06e0\u06d9\u06e7\u06e0\u06d8\u06d8\u06e6\u06e2\u06ec\u06d7\u06d8\u06dc\u06d6\u06e1\u06d6\u06d8\u06ec\u06e0\u06df\u06e2\u06df\u06e8\u06e8\u06e1\u06d8\u06d8\u06dc\u06e5\u06d6\u06d8\u06d6\u06d6\u06e8\u06d8\u06dc\u06d8\u06e6\u06e4\u06e2\u06d8\u06d8\u06e0\u06db\u06dc\u06d7\u06dc\u06e1\u06d8"

    goto :goto_2

    :sswitch_7
    const-string v0, "\u06e4\u06e7\u06d7\u06d8\u06df\u06e1\u06d6\u06dc\u06d7\u06eb\u06e4\u06d6\u06d8\u06e6\u06d6\u06db\u06da\u06d7\u06e1\u06d8\u06d8\u06e8\u06e0\u06eb\u06db\u06d6\u06e8\u06e4\u06ec\u06df\u06d9\u06d9\u06e2\u06e7\u06e5\u06d8\u06d9\u06e2\u06e6\u06d8\u06db\u06da\u06e6\u06eb\u06e2\u06d6\u06d8\u06ec\u06d6\u06e6\u06d8\u06dc\u06d7\u06e8"

    goto :goto_2

    :sswitch_8
    const-string v0, "\u06d8\u06e7\u06e4\u06ec\u06d7\u06d8\u06e1\u06e8\u06ec\u06d8\u06db\u06e8\u06e0\u06dc\u06e4\u06dc\u06eb\u06d7\u06dc\u06d6\u06d8\u06dc\u06e4\u06df\u06e0\u06d6\u06e6\u06da\u06d7\u06e1\u06e6\u06db\u06e2\u06d7\u06e6\u06ec\u06eb\u06d8\u06e7\u06e7\u06e8\u06d8\u06d8\u06e2\u06e0\u06d8\u06eb\u06e1"

    goto :goto_1

    :sswitch_9
    const-string v0, "\u06d9\u06eb\u06e6\u06e1\u06ec\u06e6\u06da\u06eb\u06e6\u06d8\u06e6\u06ec\u06d6\u06d8\u06d8\u06e8\u06e6\u06dc\u06eb\u06ec\u06e5\u06e5\u06d6\u06d8\u06e7\u06e4\u06e4\u06d8\u06d7\u06db\u06d6\u06d6\u06e8\u06d8\u06e6\u06df\u06d6\u06d8\u06e0\u06d6\u06e7\u06e7\u06e5\u06e6\u06d8\u06da\u06db"

    goto :goto_1

    :sswitch_a
    const-string v0, "\u06dc\u06e0\u06e7\u06d7\u06ec\u06e0\u06dc\u06e1\u06e4\u06da\u06d9\u06db\u06ec\u06da\u06e6\u06ec\u06d7\u06dc\u06d8\u06d9\u06d8\u06e5\u06e0\u06eb\u06e8\u06e6\u06df\u06e2\u06e6\u06df\u06ec\u06eb\u06d7\u06eb\u06e8\u06e6\u06df"

    goto :goto_0

    :sswitch_b
    const v2, -0x6e1f932

    const-string v0, "\u06ec\u06dc\u06e1\u06d8\u06e2\u06e2\u06e0\u06d9\u06dc\u06dc\u06d8\u06d6\u06e6\u06d8\u06d8\u06e1\u06db\u06e5\u06e4\u06e1\u06d6\u06d8\u06d6\u06e4\u06e8\u06d6\u06e6\u06d6\u06dc\u06e6\u06d7\u06e0\u06e4\u06e6\u06d8\u06db\u06e5\u06da\u06d6\u06d6\u06d8"

    :goto_3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v2

    sparse-switch v3, :sswitch_data_3

    goto :goto_3

    :sswitch_c
    const v3, -0x56516f6a

    const-string v0, "\u06e2\u06da\u06d8\u06d8\u06ec\u06e2\u06d8\u06e8\u06ec\u06e8\u06d8\u06e0\u06db\u06db\u06dc\u06e6\u06df\u06da\u06e7\u06e7\u06e5\u06db\u06d6\u06d6\u06e6\u06d8\u06d8\u06d6\u06e4\u06d8\u06df\u06ec\u06e6\u06d8\u06e8\u06dc\u06dc\u06d8\u06e7\u06e0\u06d6\u06eb\u06d8\u06db\u06e4\u06e0\u06eb"

    :goto_4
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    xor-int/2addr v4, v3

    sparse-switch v4, :sswitch_data_4

    goto :goto_4

    :sswitch_d
    const-string v0, "\u06d8\u06da\u06d6\u06e5\u06ec\u06e4\u06ec\u06e0\u06db\u06df\u06e4\u06d7\u06e7\u06eb\u06e8\u06d8\u06d7\u06d8\u06e8\u06d8\u06d8\u06d9\u06d8\u06d8\u06d6\u06d6\u06e6\u06e4\u06d9\u06dc\u06e5\u06e0\u06d8\u06d7\u06e1\u06e6\u06d8\u06e6\u06e5\u06e8\u06d8\u06eb\u06eb\u06db\u06e7\u06e0\u06d6\u06e1\u06d8\u06e8\u06e4\u06ec"

    goto :goto_3

    :sswitch_e
    const-string v0, "\u06dc\u06dc\u06e1\u06d8\u06e1\u06e2\u06e6\u06e5\u06e6\u06e4\u06d7\u06e6\u06dc\u06e5\u06df\u06ec\u06e4\u06db\u06dc\u06eb\u06eb\u06d6\u06d6\u06e7\u06e1\u06ec\u06e6\u06e8\u06d8\u06e5\u06e2\u06eb\u06d8\u06d8\u06da\u06df\u06e8\u06d8\u06e8\u06d9\u06d8\u06e4\u06db\u06e5\u06d8"

    goto :goto_3

    :cond_1
    const-string v0, "\u06e7\u06da\u06e1\u06dc\u06e1\u06e4\u06e0\u06eb\u06d8\u06d8\u06e2\u06da\u06d6\u06d8\u06d6\u06e6\u06e1\u06d8\u06db\u06e0\u06e6\u06d8\u06e0\u06dc\u06ec\u06eb\u06dc\u06d7\u06e7\u06df\u06e6\u06e5\u06e5\u06d6\u06e1\u06e6\u06db\u06e6\u06e8\u06d8\u06db\u06ec\u06e6\u06e5\u06df\u06e6\u06d8\u06e8\u06eb\u06eb\u06df\u06e5\u06d7"

    goto :goto_4

    :sswitch_f
    iget v0, p0, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->Oooooo:I

    const/4 v4, 0x3

    if-ge v0, v4, :cond_1

    const-string v0, "\u06e1\u06e7\u06da\u06e5\u06e4\u06e8\u06d8\u06e7\u06e5\u06d9\u06e2\u06d8\u06e8\u06d6\u06d7\u06e5\u06d8\u06e0\u06e4\u06e8\u06d8\u06e7\u06ec\u06dc\u06d8\u06ec\u06d8\u06e0\u06df\u06e8\u06d6\u06d8\u06df\u06e0\u06e5\u06e6\u06e4\u06e0\u06e2\u06d8\u06e7\u06d8\u06e1\u06e0\u06df\u06e5\u06ec\u06dc\u06db\u06e8\u06d9\u06eb\u06e5\u06df"

    goto :goto_4

    :sswitch_10
    const-string v0, "\u06da\u06dc\u06dc\u06e7\u06e1\u06e8\u06e4\u06da\u06e0\u06eb\u06df\u06da\u06d9\u06e7\u06e5\u06d8\u06e2\u06e8\u06eb\u06d6\u06d7\u06e2\u06d8\u06d6\u06e6\u06e0\u06e7\u06d8\u06d8\u06d9\u06dc\u06e4\u06df\u06e8\u06e5\u06d8\u06e8\u06e5\u06ec\u06db\u06dc\u06e0\u06e1\u06db\u06ec\u06dc\u06ec\u06ec\u06e2\u06e1\u06df\u06e2\u06d9\u06da\u06dc\u06d7\u06dc\u06d8"

    goto :goto_4

    :sswitch_11
    const-string v0, "\u06e5\u06db\u06e0\u06dc\u06df\u06e6\u06d7\u06e1\u06ec\u06ec\u06ec\u06e5\u06eb\u06d8\u06e0\u06d6\u06d8\u06e6\u06ec\u06d7\u06eb\u06dc\u06d8\u06e6\u06e8\u06d6\u06e4\u06e2\u06eb\u06e0\u06d8\u06e8\u06d8\u06d9\u06eb\u06d7\u06da\u06e0\u06d6\u06d8\u06e2\u06e1\u06d8\u06d8\u06e5\u06db\u06e6\u06e5\u06e0\u06db"

    goto :goto_3

    :sswitch_12
    const-string v0, "\u06ec\u06eb\u06e6\u06e2\u06e5\u06db\u06e1\u06e2\u06e2\u06d6\u06e1\u06d8\u06d8\u06ec\u06d6\u06d7\u06e4\u06df\u06e6\u06d8\u06e2\u06da\u06e6\u06dc\u06da\u06e4\u06df\u06e1\u06e6\u06d8\u06d9\u06d6\u06e4"

    goto/16 :goto_0

    :sswitch_13
    invoke-direct {p0}, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->OooOo0o()V

    const-string v0, "\u06d8\u06d7\u06e8\u06da\u06dc\u06d6\u06d8\u06e2\u06da\u06e2\u06db\u06eb\u06df\u06db\u06e1\u06e1\u06df\u06e5\u06d8\u06dc\u06e1\u06ec\u06e8\u06e4\u06df\u06e7\u06d9\u06d6\u06d8\u06e6\u06d9\u06e7\u06d9\u06db\u06e0\u06e8\u06df\u06e8"

    goto/16 :goto_0

    :sswitch_14
    const v2, -0x13d58a85

    const-string v0, "\u06e8\u06d8\u06d8\u06d8\u06e7\u06e2\u06d6\u06dc\u06e5\u06e5\u06d6\u06df\u06db\u06e8\u06e5\u06e6\u06d8\u06e2\u06e4\u06d7\u06d9\u06d7\u06df\u06e8\u06dc\u06e1\u06d9\u06df\u06ec\u06d9\u06dc\u06ec\u06dc\u06e7\u06d6\u06d9\u06d6\u06d7\u06d6\u06e6\u06dc\u06ec\u06e6\u06dc\u06e4\u06e0\u06e0\u06e0\u06d8\u06e7\u06d8\u06d7\u06e0\u06e1\u06e0\u06e6\u06e4"

    :goto_5
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v2

    sparse-switch v3, :sswitch_data_5

    goto :goto_5

    :sswitch_15
    const-string v0, "\u06e6\u06d6\u06d6\u06e1\u06d7\u06e7\u06e1\u06d7\u06ec\u06dc\u06d6\u06eb\u06e6\u06e1\u06d9\u06df\u06d9\u06e4\u06e6\u06e5\u06e1\u06d8\u06e8\u06e8\u06eb\u06e6\u06d8\u06e7\u06d8\u06da\u06db\u06e6\u06d8\u06e4\u06d7\u06ec\u06d7\u06eb\u06eb"

    goto :goto_5

    :sswitch_16
    const-string v0, "\u06df\u06d7\u06eb\u06d8\u06e8\u06d8\u06e1\u06d8\u06e0\u06d7\u06e4\u06db\u06e8\u06eb\u06e1\u06df\u06e0\u06db\u06eb\u06df\u06e7\u06db\u06da\u06eb\u06e4\u06e8\u06d8\u06e1\u06dc\u06e2\u06d8\u06d8\u06e1\u06d8\u06e2\u06e6\u06e1\u06d8"

    goto :goto_5

    :sswitch_17
    const v3, 0x2dc3821e

    const-string v0, "\u06db\u06e8\u06e2\u06e6\u06d9\u06e5\u06eb\u06dc\u06ec\u06dc\u06da\u06e4\u06e8\u06d8\u06dc\u06d8\u06dc\u06eb\u06ec\u06e0\u06e6\u06e0\u06e5\u06d8\u06e1\u06d9\u06e6\u06d8\u06e1\u06e4\u06e4\u06e6\u06eb\u06d6\u06e5\u06d8\u06e5\u06d8\u06dc\u06dc\u06e2\u06db\u06e6\u06eb"

    :goto_6
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    xor-int/2addr v4, v3

    sparse-switch v4, :sswitch_data_6

    goto :goto_6

    :sswitch_18
    const-string v0, "\u06d6\u06e4\u06ec\u06e6\u06df\u06da\u06ec\u06d8\u06d8\u06d8\u06e5\u06dc\u06e4\u06da\u06e7\u06e1\u06d8\u06e7\u06e7\u06d8\u06d8\u06e0\u06da\u06e2\u06e8\u06ec\u06da\u06e1\u06d7\u06d6\u06e8\u06e8\u06e4"

    goto :goto_5

    :cond_2
    const-string v0, "\u06dc\u06d6\u06e6\u06e2\u06e8\u06d6\u06d8\u06d9\u06e4\u06e1\u06d8\u06ec\u06e8\u06d8\u06db\u06e6\u06d8\u06d8\u06da\u06d7\u06d6\u06d8\u06e5\u06e6\u06d7\u06d8\u06e2\u06db\u06e5\u06dc\u06d8\u06d8\u06dc\u06e5\u06e1\u06d8"

    goto :goto_6

    :sswitch_19
    sget v0, Lcom/elfin/ad/R$id;->iv_splash_ad_fullscreen:I

    if-ne v1, v0, :cond_2

    const-string v0, "\u06e0\u06e5\u06eb\u06e4\u06df\u06e0\u06d6\u06e1\u06e2\u06ec\u06ec\u06eb\u06d8\u06d9\u06d6\u06e5\u06e5\u06d9\u06d6\u06e4\u06e2\u06e5\u06e8\u06d8\u06d8\u06df\u06e6\u06e6\u06d8\u06e7\u06eb\u06ec\u06eb\u06eb\u06d8\u06d8\u06e8\u06d7\u06e0\u06d6\u06e0\u06e7\u06df\u06e6\u06eb\u06e5\u06eb\u06dc\u06ec\u06d7\u06e0"

    goto :goto_6

    :sswitch_1a
    const-string v0, "\u06df\u06d7\u06e1\u06d8\u06da\u06da\u06d8\u06e4\u06ec\u06e8\u06dc\u06e1\u06e5\u06dc\u06e6\u06e8\u06d8\u06e7\u06d9\u06e0\u06db\u06e2\u06e2\u06db\u06da\u06d9\u06db\u06e2\u06d7\u06da\u06e8\u06eb\u06e4\u06df\u06e1\u06d8\u06e7\u06e8\u06d6\u06d8\u06e4\u06df\u06dc\u06e8\u06ec\u06da\u06e4\u06d6\u06ec\u06db\u06e0\u06e5\u06d8"

    goto :goto_6

    :sswitch_1b
    const-string v0, "\u06e2\u06d6\u06e7\u06da\u06e8\u06e1\u06d8\u06e5\u06d7\u06dc\u06d8\u06df\u06e7\u06ec\u06e8\u06d7\u06db\u06df\u06eb\u06e8\u06ec\u06e7\u06e1\u06d7\u06eb\u06dc\u06d8\u06e4\u06e8\u06d6\u06e2\u06e4"

    goto/16 :goto_0

    :sswitch_1c
    invoke-direct {p0}, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->OooOOoo()V

    const-string v0, "\u06d7\u06e5\u06df\u06ec\u06d7\u06eb\u06db\u06e2\u06d8\u06da\u06e6\u06dc\u06d8\u06d8\u06df\u06df\u06e4\u06eb\u06d7\u06dc\u06e8\u06e7\u06dc\u06d8\u06e2\u06ec\u06ec\u06d8\u06e5\u06df\u06e1\u06e0\u06e8\u06df\u06e0\u06e1\u06dc"

    goto/16 :goto_0

    :sswitch_1d
    const-string v0, "\u06d8\u06d9\u06dc\u06e8\u06d9\u06e1\u06d8\u06d8\u06db\u06e8\u06da\u06e5\u06d8\u06d9\u06e4\u06d6\u06d8\u06e2\u06e4\u06e8\u06d9\u06dc\u06e5\u06d8\u06e4\u06d9\u06e8\u06e8\u06e1\u06dc\u06d8\u06df\u06e4\u06df\u06db\u06d9\u06db\u06e7\u06e5\u06e1"

    goto/16 :goto_0

    :sswitch_1e
    const-string v0, "\u06d7\u06df\u06e2\u06d9\u06d7\u06da\u06df\u06e2\u06ec\u06e2\u06d7\u06da\u06eb\u06e1\u06d8\u06ec\u06e1\u06e5\u06ec\u06e0\u06dc\u06d6\u06e0\u06da\u06d6\u06d8\u06eb\u06eb\u06db\u06e0\u06ec\u06e7\u06db\u06e2\u06db\u06e1\u06e8\u06da\u06e4\u06d9\u06e6\u06e6\u06e7\u06d6\u06d8\u06e6\u06d7\u06e8\u06d8\u06e6\u06e5\u06e7\u06d6\u06e4\u06e8\u06d8"

    goto/16 :goto_0

    :sswitch_1f
    const-string v0, "\u06e2\u06d6\u06e7\u06da\u06e8\u06e1\u06d8\u06e5\u06d7\u06dc\u06d8\u06df\u06e7\u06ec\u06e8\u06d7\u06db\u06df\u06eb\u06e8\u06ec\u06e7\u06e1\u06d7\u06eb\u06dc\u06d8\u06e4\u06e8\u06d6\u06e2\u06e4"

    goto/16 :goto_0

    :sswitch_20
    const-string v0, "\u06d7\u06e5\u06df\u06ec\u06d7\u06eb\u06db\u06e2\u06d8\u06da\u06e6\u06dc\u06d8\u06d8\u06df\u06df\u06e4\u06eb\u06d7\u06dc\u06e8\u06e7\u06dc\u06d8\u06e2\u06ec\u06ec\u06d8\u06e5\u06df\u06e1\u06e0\u06e8\u06df\u06e0\u06e1\u06dc"

    goto/16 :goto_0

    :sswitch_21
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7753c563 -> :sswitch_3
        -0x6e598ec1 -> :sswitch_1f
        -0x63d2902d -> :sswitch_2
        -0x58e0d0c6 -> :sswitch_1
        -0x425ba7db -> :sswitch_14
        -0x3b145eb3 -> :sswitch_20
        0x4bae705 -> :sswitch_0
        0x14085203 -> :sswitch_21
        0x15fc8cbe -> :sswitch_b
        0x1ac09def -> :sswitch_1c
        0x45045f5f -> :sswitch_13
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0xc7b5482 -> :sswitch_9
        0x106a701f -> :sswitch_4
        0x1af2d3f2 -> :sswitch_1e
        0x1ffb6e2f -> :sswitch_a
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        -0x76ba6ffe -> :sswitch_7
        -0x5ed3af98 -> :sswitch_6
        0x36993a56 -> :sswitch_8
        0x4083d735 -> :sswitch_5
    .end sparse-switch

    :sswitch_data_3
    .sparse-switch
        -0x40ae70dc -> :sswitch_11
        -0x3e9793ad -> :sswitch_c
        -0xde9cead -> :sswitch_1d
        0x513c22 -> :sswitch_12
    .end sparse-switch

    :sswitch_data_4
    .sparse-switch
        -0x5510a647 -> :sswitch_10
        -0x4f1d8172 -> :sswitch_e
        -0x2bcd6348 -> :sswitch_f
        0x65ea7599 -> :sswitch_d
    .end sparse-switch

    :sswitch_data_5
    .sparse-switch
        -0x122fb674 -> :sswitch_1b
        0x1b88dc0f -> :sswitch_20
        0x3da37f2f -> :sswitch_15
        0x5aaf3041 -> :sswitch_17
    .end sparse-switch

    :sswitch_data_6
    .sparse-switch
        -0x752a180a -> :sswitch_1a
        -0x2f3fff11 -> :sswitch_18
        -0x22d908e4 -> :sswitch_19
        0x11d6751c -> :sswitch_16
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/16 v4, 0x400

    const-string v0, "\u06df\u06d7\u06e7\u06df\u06da\u06e6\u06e5\u06ec\u06d6\u06e2\u06dc\u06e7\u06eb\u06e8\u06e5\u06db\u06e6\u06df\u06e6\u06e0\u06e6\u06d8\u06e1\u06e6\u06e5\u06eb\u06e7\u06dc\u06e4\u06ec\u06da\u06e1\u06e8\u06d7\u06ec\u06df"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x49

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x113

    const/16 v2, 0xc8

    const v3, 0x33b27d17

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e6\u06e1\u06e8\u06eb\u06d9\u06d8\u06d8\u06e1\u06e5\u06dc\u06d8\u06e1\u06e8\u06d7\u06da\u06e6\u06e8\u06d8\u06e2\u06e5\u06e2\u06da\u06dc\u06db\u06df\u06e8\u06d8\u06e1\u06d7\u06e5\u06e1\u06e2\u06e8\u06e8\u06df\u06df\u06e4\u06e7\u06d6\u06e1\u06d8\u06db\u06e5\u06d8\u06e8\u06e6\u06d7\u06e5\u06e6\u06e2\u06e6\u06e2\u06e6\u06e7\u06e8\u06e2"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06d9\u06d6\u06eb\u06e7\u06e8\u06df\u06dc\u06d8\u06eb\u06d6\u06db\u06dc\u06d8\u06e5\u06e2\u06dc\u06e4\u06d9\u06eb\u06d7\u06e8\u06d8\u06eb\u06e4\u06df\u06d9\u06df\u06ec\u06e2\u06dc\u06d9\u06e7\u06e7\u06e6\u06d8\u06da\u06e4\u06d7\u06db\u06df\u06df\u06df\u06e0\u06e4"

    goto :goto_0

    :sswitch_2
    invoke-super {p0, p1}, Lcom/cyjh/common/base/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "\u06d9\u06d8\u06e5\u06d8\u06d9\u06e1\u06d8\u06dc\u06e6\u06e7\u06d8\u06e2\u06d9\u06e4\u06df\u06e6\u06d6\u06d8\u06e5\u06e6\u06eb\u06e1\u06e0\u06e2\u06d6\u06d6\u06e1\u06d8\u06e7\u06d7\u06eb\u06e7\u06e1\u06df\u06e0\u06da\u06e1\u06e7\u06dc\u06db\u06dc\u06e4\u06d8\u06d6\u06eb\u06d6\u06d8\u06d8\u06d7\u06d6\u06d8\u06e8\u06da\u06e4"

    goto :goto_0

    :sswitch_3
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->requestWindowFeature(I)Z

    const-string v0, "\u06da\u06df\u06da\u06e8\u06d8\u06dc\u06d8\u06e8\u06e1\u06e6\u06da\u06d9\u06d9\u06d8\u06d8\u06d8\u06ec\u06d6\u06e1\u06ec\u06df\u06dc\u06e0\u06d9\u06dc\u06d8\u06d7\u06ec\u06ec\u06d9\u06d6\u06e8\u06d7\u06d8\u06d6\u06eb\u06e5\u06e8"

    goto :goto_0

    :sswitch_4
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v4, v4}, Landroid/view/Window;->setFlags(II)V

    const-string v0, "\u06e5\u06db\u06e8\u06e4\u06db\u06e6\u06d8\u06d6\u06e8\u06db\u06e1\u06db\u06e1\u06d8\u06ec\u06ec\u06db\u06e1\u06e5\u06e7\u06e6\u06d8\u06df\u06e0\u06dc\u06d6\u06eb\u06e2\u06e5\u06d8\u06da\u06e1\u06d8\u06e6\u06d7\u06d6\u06e4\u06e4\u06ec"

    goto :goto_0

    :sswitch_5
    sget v0, Lcom/elfin/ad/R$layout;->activity_fullscreen_ad_two:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    const-string v0, "\u06db\u06dc\u06eb\u06d9\u06e5\u06da\u06e6\u06eb\u06e5\u06db\u06d9\u06d8\u06dc\u06e0\u06e1\u06e6\u06d8\u06d6\u06d8\u06ec\u06e5\u06e2\u06dc\u06da\u06d6\u06df\u06e0\u06d6\u06d8\u06e1\u06da\u06d7\u06df\u06e0\u06db\u06e0\u06d8\u06dc\u06d9\u06d8\u06d9\u06d7\u06e8\u06e5\u06e6\u06e1\u06dc\u06e1\u06d8\u06e1"

    goto :goto_0

    :sswitch_6
    invoke-direct {p0}, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->initView()V

    const-string v0, "\u06d7\u06e4\u06e8\u06dc\u06db\u06df\u06da\u06d6\u06e5\u06d8\u06ec\u06e4\u06e5\u06d8\u06df\u06e6\u06e2\u06d6\u06e6\u06e1\u06d8\u06ec\u06dc\u06e8\u06e1\u06e2\u06dc\u06d8\u06e5\u06ec\u06dc\u06d8\u06e1\u06d6\u06d9\u06e4\u06ec\u06e4\u06e6\u06d8\u06d8"

    goto :goto_0

    :sswitch_7
    invoke-direct {p0}, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->initData()V

    const-string v0, "\u06ec\u06ec\u06e1\u06e0\u06df\u06e2\u06df\u06d8\u06e2\u06e0\u06d9\u06d7\u06ec\u06e1\u06e4\u06e2\u06e5\u06d8\u06e0\u06d7\u06db\u06d8\u06e5\u06d9\u06df\u06d9\u06ec\u06e1\u06d9\u06e5\u06e2\u06e2\u06db\u06e2\u06db\u06e5\u06e6\u06e1\u06e8\u06eb"

    goto :goto_0

    :sswitch_8
    invoke-direct {p0}, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->initListener()V

    const-string v0, "\u06eb\u06df\u06eb\u06db\u06e4\u06db\u06e4\u06d8\u06d8\u06da\u06d7\u06dc\u06d8\u06dc\u06e4\u06e7\u06e6\u06d6\u06e2\u06ec\u06d9\u06e6\u06d8\u06e4\u06eb\u06e6\u06d8\u06e5\u06d6\u06eb\u06ec\u06ec\u06e5\u06e4\u06d8\u06e5\u06d8\u06e2\u06e1\u06e8\u06d8"

    goto :goto_0

    :sswitch_9
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x28f02676 -> :sswitch_1
        -0x22305f16 -> :sswitch_8
        -0x1e7b1d84 -> :sswitch_7
        0xb1de5df -> :sswitch_5
        0x1f7aa726 -> :sswitch_0
        0x2caea70b -> :sswitch_9
        0x2e63ca71 -> :sswitch_2
        0x556d4005 -> :sswitch_3
        0x7f2649e3 -> :sswitch_6
        0x7f932fdb -> :sswitch_4
    .end sparse-switch
.end method

.method public onDestroy()V
    .locals 5

    const/4 v4, 0x0

    const-string v0, "\u06ec\u06da\u06e4\u06df\u06e7\u06e8\u06d9\u06da\u06dc\u06d8\u06d8\u06d6\u06d6\u06d8\u06e7\u06d6\u06dc\u06e4\u06d8\u06d6\u06d8\u06e6\u06e5\u06e1\u06d8\u06e5\u06dc\u06e7\u06d9\u06e7\u06e4\u06e4\u06e7\u06d6\u06ec\u06e8\u06e7\u06d8\u06e8\u06eb\u06e0\u06df\u06da\u06d8\u06d8\u06e1\u06e4\u06dc\u06d8\u06db\u06e4\u06db\u06eb\u06d7\u06e6"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x11b

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x3d4

    const/16 v2, 0x3d8

    const v3, 0x219d819e

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e5\u06e0\u06eb\u06e6\u06db\u06df\u06e6\u06dc\u06e4\u06e8\u06ec\u06e7\u06e4\u06db\u06d8\u06e2\u06df\u06e6\u06d8\u06e2\u06d9\u06d9\u06e5\u06d8\u06d8\u06eb\u06ec\u06e6\u06d8\u06eb\u06dc\u06dc\u06d8\u06e4\u06d8\u06e2\u06ec\u06e8\u06db"

    goto :goto_0

    :sswitch_1
    invoke-super {p0}, Lcom/cyjh/common/base/activity/BaseActivity;->onDestroy()V

    const-string v0, "\u06e8\u06da\u06ec\u06d8\u06e4\u06d7\u06e2\u06d6\u06d8\u06df\u06e6\u06e8\u06d8\u06db\u06e4\u06e5\u06d8\u06e0\u06df\u06e6\u06e8\u06d8\u06d6\u06d8\u06e8\u06e1\u06e7\u06d8\u06da\u06d9\u06d9\u06df\u06e0\u06e8\u06da\u06d6\u06e4\u06eb\u06e4\u06e0"

    goto :goto_0

    :sswitch_2
    invoke-direct {p0}, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->OooOO0o()V

    const-string v0, "\u06d6\u06e1\u06d6\u06d8\u06e2\u06e5\u06e6\u06e8\u06d6\u06e4\u06e5\u06eb\u06ec\u06d6\u06d6\u06e2\u06e4\u06eb\u06d6\u06db\u06dc\u06e5\u06e8\u06e1\u06e7\u06e8\u06d6\u06e1\u06d8\u06da\u06e6\u06ec\u06e8\u06d9\u06e0\u06ec\u06e2\u06e0\u06d8\u06d9\u06d8\u06d8\u06e7\u06e7\u06d7"

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->o0OoOo0:Lcom/elfin/ad/activity/FullScreenTwoAdActivity$OooO0o;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const-string v0, "\u06dc\u06ec\u06e5\u06d8\u06d7\u06e0\u06d9\u06dc\u06eb\u06e7\u06dc\u06e8\u06e8\u06db\u06e4\u06e7\u06dc\u06e7\u06d8\u06df\u06ec\u06da\u06e6\u06eb\u06d6\u06d8\u06d7\u06db\u06d9\u06e7\u06d8\u06e7\u06d8"

    goto :goto_0

    :sswitch_4
    iput-boolean v4, p0, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->Ooooooo:Z

    const-string v0, "\u06eb\u06d9\u06e7\u06df\u06ec\u06e8\u06e8\u06e6\u06e2\u06e5\u06dc\u06e7\u06d8\u06eb\u06e8\u06d9\u06eb\u06e4\u06e1\u06eb\u06e8\u06e8\u06d8\u06d6\u06e4\u06e7\u06d6\u06e1\u06e2\u06e5\u06dc\u06e8\u06d8\u06e8\u06eb\u06e5\u06d7\u06df\u06da"

    goto :goto_0

    :sswitch_5
    iput-boolean v4, p0, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->ooOO:Z

    const-string v0, "\u06d7\u06e5\u06e1\u06d8\u06e4\u06d8\u06e2\u06e6\u06e2\u06ec\u06e8\u06e4\u06e1\u06d8\u06e1\u06d6\u06e1\u06d8\u06e4\u06da\u06df\u06eb\u06e8\u06e7\u06df\u06e6\u06d8\u06e8\u06d9\u06e8\u06d8\u06df\u06e8\u06e7\u06e8\u06e4\u06e0\u06d9\u06e2\u06dc\u06d8\u06da\u06eb\u06e6\u06e1\u06e7\u06d7"

    goto :goto_0

    :sswitch_6
    invoke-static {}, Lz2/mc;->OooO0oo()Lz2/mc;

    move-result-object v0

    invoke-virtual {v0}, Lz2/mc;->OooOO0o()V

    const-string v0, "\u06da\u06dc\u06d6\u06d8\u06e4\u06e2\u06e8\u06e5\u06e7\u06e2\u06e7\u06e2\u06eb\u06e4\u06e8\u06e1\u06d8\u06da\u06e2\u06df\u06ec\u06d8\u06e1\u06d8\u06ec\u06d7\u06da\u06d7\u06e7\u06e0\u06ec\u06da\u06e4\u06da\u06d7\u06db\u06d7\u06da"

    goto :goto_0

    :sswitch_7
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7b7001c2 -> :sswitch_0
        -0x4537d604 -> :sswitch_1
        -0x2c2e40a0 -> :sswitch_2
        -0xe3f630c -> :sswitch_3
        0x303432fc -> :sswitch_7
        0x3a5cc88a -> :sswitch_4
        0x55815fbb -> :sswitch_6
        0x660848f1 -> :sswitch_5
    .end sparse-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 7

    const/4 v2, 0x0

    const-string v0, "\u06d8\u06d6\u06e4\u06e8\u06e4\u06d7\u06db\u06d8\u06d8\u06e4\u06e6\u06d8\u06d8\u06ec\u06e2\u06e2\u06d6\u06e5\u06e6\u06d8\u06e2\u06df\u06d9\u06e2\u06e8\u06d8\u06d7\u06e5\u06d9\u06e1\u06e0\u06d8"

    move v1, v2

    move v3, v2

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/16 v5, 0x1a2

    xor-int/2addr v4, v5

    xor-int/lit8 v4, v4, 0x1e

    const/16 v5, 0x269

    const v6, 0x19f9cefc

    xor-int/2addr v4, v5

    xor-int/2addr v4, v6

    sparse-switch v4, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e2\u06e6\u06dc\u06d8\u06e0\u06eb\u06e2\u06df\u06e0\u06d9\u06e6\u06e5\u06da\u06d6\u06e8\u06e8\u06d8\u06d9\u06da\u06e1\u06d8\u06e1\u06e6\u06d7\u06e7\u06e8\u06e7\u06d8\u06dc\u06df\u06e8\u06e5\u06d7\u06df\u06dc\u06e6\u06d8\u06df\u06d6\u06e6\u06d8\u06d8\u06db\u06df\u06da\u06d9\u06d8\u06d8"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06e2\u06d8\u06db\u06e6\u06d7\u06e2\u06eb\u06e8\u06dc\u06e2\u06db\u06e8\u06d6\u06e4\u06df\u06e1\u06da\u06d6\u06e5\u06d8\u06d7\u06e1\u06d9\u06ec\u06ec\u06e7\u06e2\u06d7\u06d6\u06d8"

    goto :goto_0

    :sswitch_2
    const-string v0, "\u06eb\u06d7\u06e6\u06e6\u06dc\u06e2\u06e0\u06dc\u06dc\u06e6\u06e2\u06d8\u06e8\u06da\u06e1\u06d8\u06e4\u06e4\u06e8\u06ec\u06e1\u06e4\u06e0\u06e1\u06e2\u06e0\u06e1\u06df\u06d7\u06e1\u06d6\u06d8\u06e4\u06e1\u06e5\u06d8\u06e7\u06e2"

    goto :goto_0

    :sswitch_3
    const v4, -0x16dedbf5

    const-string v0, "\u06db\u06e2\u06eb\u06d6\u06eb\u06d9\u06eb\u06eb\u06dc\u06d8\u06d8\u06e2\u06e5\u06d8\u06e1\u06da\u06ec\u06e1\u06e8\u06d8\u06d8\u06d9\u06e7\u06d7\u06e1\u06df\u06d9\u06db\u06d8\u06e1\u06d7\u06d9\u06d7\u06dc\u06da\u06d8\u06d8\u06dc\u06e5\u06e0"

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v5

    xor-int/2addr v5, v4

    sparse-switch v5, :sswitch_data_1

    goto :goto_1

    :sswitch_4
    const-string v0, "\u06da\u06eb\u06e4\u06d6\u06dc\u06d8\u06db\u06d6\u06e5\u06d8\u06eb\u06df\u06e5\u06d8\u06e0\u06e8\u06e5\u06d8\u06e6\u06e5\u06e6\u06e4\u06e0\u06da\u06e6\u06da\u06ec\u06dc\u06e4\u06e5\u06df\u06df\u06e6\u06e6\u06e8\u06d7\u06e5\u06eb\u06e7\u06e4\u06ec\u06d6\u06d8\u06e1\u06d6\u06d8\u06eb\u06e6\u06df\u06e0\u06d6\u06d8\u06d8"

    goto :goto_0

    :sswitch_5
    const-string v0, "\u06e8\u06db\u06e6\u06d8\u06ec\u06d6\u06e7\u06d8\u06ec\u06df\u06e8\u06d7\u06d6\u06d8\u06d8\u06e6\u06da\u06d9\u06e6\u06e2\u06e8\u06d6\u06d8\u06d8\u06db\u06d8\u06e6\u06d8\u06da\u06e6\u06d8\u06d7\u06d9\u06df\u06e1\u06dc\u06dc\u06d8\u06eb\u06e4\u06df\u06dc\u06e6\u06df\u06e5\u06e1\u06e5\u06d8"

    goto :goto_1

    :sswitch_6
    const v5, 0x71659ad5

    const-string v0, "\u06e4\u06e7\u06e1\u06d8\u06e4\u06e2\u06d9\u06e8\u06dc\u06da\u06da\u06e6\u06e6\u06ec\u06e2\u06e1\u06e0\u06e0\u06e5\u06d8\u06ec\u06e8\u06d8\u06d9\u06e8\u06d9\u06e1\u06e5\u06e2\u06e4\u06d9\u06e1"

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v6

    xor-int/2addr v6, v5

    sparse-switch v6, :sswitch_data_2

    goto :goto_2

    :sswitch_7
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const-string v0, "\u06ec\u06e4\u06e6\u06db\u06d8\u06d8\u06e8\u06d8\u06d8\u06e1\u06e1\u06d8\u06d8\u06e6\u06e4\u06db\u06e7\u06d8\u06db\u06e1\u06db\u06dc\u06d8\u06db\u06e1\u06d8\u06d8\u06eb\u06e7\u06d6\u06e7\u06e7\u06da\u06e8\u06ec\u06d8\u06e7\u06df\u06e0\u06df\u06e0\u06e1\u06d6\u06e0\u06e6\u06e8\u06e1\u06d7\u06e1\u06e0\u06dc"

    goto :goto_2

    :cond_0
    const-string v0, "\u06e2\u06d7\u06e8\u06d7\u06d6\u06dc\u06e8\u06e0\u06d9\u06e8\u06e7\u06e7\u06ec\u06e6\u06df\u06e7\u06e7\u06d6\u06db\u06eb\u06e4\u06dc\u06d9\u06da\u06e5\u06e5\u06da\u06da\u06d6\u06e4\u06d6\u06d8\u06d9\u06df\u06df\u06e8\u06dc\u06e8\u06d7\u06d6\u06df\u06e7\u06e5\u06e8\u06d6\u06d8\u06e8\u06eb\u06e1\u06e7\u06eb\u06d6\u06df\u06e2\u06d7"

    goto :goto_2

    :sswitch_8
    const-string v0, "\u06ec\u06e5\u06db\u06e4\u06e1\u06e7\u06da\u06d8\u06e7\u06d8\u06e2\u06d8\u06d6\u06e2\u06e0\u06e5\u06e8\u06d9\u06e1\u06d9\u06e8\u06e2\u06e7\u06e4\u06d8\u06d8\u06e6\u06ec\u06dc\u06d8\u06d7\u06d8\u06e5"

    goto :goto_2

    :sswitch_9
    const-string v0, "\u06ec\u06e6\u06db\u06e8\u06db\u06dc\u06d8\u06e4\u06e2\u06e5\u06d8\u06d6\u06db\u06d7\u06db\u06e0\u06db\u06d9\u06d7\u06da\u06e6\u06df\u06d6\u06e8\u06e0\u06e6\u06d8\u06df\u06e7\u06e8\u06e8\u06df\u06e8\u06d8\u06e6\u06d6\u06e0\u06ec\u06dc\u06e4\u06e7\u06ec\u06e5\u06e2\u06eb\u06ec\u06db\u06d9\u06da\u06e7\u06e6\u06e0"

    goto :goto_1

    :sswitch_a
    const-string v0, "\u06d8\u06d6\u06eb\u06ec\u06e6\u06d8\u06db\u06dc\u06e6\u06e4\u06df\u06e2\u06da\u06e2\u06d8\u06da\u06e0\u06d8\u06d6\u06d8\u06d8\u06e6\u06d8\u06d6\u06d8\u06e2\u06d9\u06e1\u06e1\u06da\u06d6\u06d8"

    goto :goto_1

    :sswitch_b
    const/4 v3, 0x1

    const-string v0, "\u06d7\u06e2\u06eb\u06e0\u06db\u06da\u06e0\u06d9\u06e6\u06d9\u06d8\u06e5\u06e8\u06dc\u06d8\u06d7\u06e4\u06dc\u06e1\u06da\u06d9\u06df\u06d8\u06eb\u06da\u06e7\u06e4\u06eb\u06eb\u06e0\u06e1\u06db\u06eb\u06e1\u06df\u06e6\u06d8"

    goto :goto_0

    :sswitch_c
    const-string v0, "\u06dc\u06da\u06e7\u06ec\u06ec\u06e2\u06d6\u06e5\u06dc\u06e5\u06e0\u06dc\u06d8\u06e2\u06e4\u06df\u06e1\u06e2\u06e6\u06e4\u06db\u06e5\u06d8\u06e6\u06db\u06da\u06d7\u06d6\u06d8\u06ec\u06ec"

    move v1, v3

    goto :goto_0

    :sswitch_d
    const-string v0, "\u06df\u06e7\u06da\u06e1\u06df\u06e8\u06d7\u06e0\u06d8\u06d8\u06da\u06db\u06d9\u06e2\u06d6\u06d8\u06d6\u06da\u06eb\u06ec\u06e0\u06d6\u06d8\u06eb\u06d6\u06e7\u06d8\u06e6\u06db\u06e0\u06e8\u06dc\u06d9\u06d8\u06dc\u06e5\u06d8\u06e1\u06d9\u06d8\u06d8"

    goto :goto_0

    :sswitch_e
    const-string v0, "\u06e7\u06ec\u06e4\u06d8\u06e7\u06db\u06df\u06eb\u06dc\u06d8\u06e7\u06e2\u06d6\u06db\u06e0\u06e0\u06e2\u06ec\u06e5\u06d8\u06d9\u06e4\u06e2\u06df\u06d6\u06da\u06e6\u06ec\u06da\u06d9\u06d6\u06e7\u06d8\u06e4\u06e4\u06e5\u06d8\u06e6\u06ec\u06d8\u06e6\u06e2\u06e1\u06ec\u06df\u06df"

    move v1, v2

    goto :goto_0

    :sswitch_f
    const-string v0, "\u06d6\u06d6\u06e6\u06eb\u06ec\u06ec\u06dc\u06e0\u06d8\u06d8\u06ec\u06da\u06e6\u06d8\u06e6\u06e5\u06d9\u06e0\u06e2\u06d7\u06d6\u06d7\u06d8\u06d8\u06db\u06d9\u06e5\u06d8\u06df\u06e8\u06e0\u06e2\u06da\u06e6\u06e8\u06e5\u06e6\u06d8\u06e5\u06e5\u06e1\u06d8"

    goto :goto_0

    :sswitch_10
    const-string v0, "\u06e7\u06ec\u06e4\u06d8\u06e7\u06db\u06df\u06eb\u06dc\u06d8\u06e7\u06e2\u06d6\u06db\u06e0\u06e0\u06e2\u06ec\u06e5\u06d8\u06d9\u06e4\u06e2\u06df\u06d6\u06da\u06e6\u06ec\u06da\u06d9\u06d6\u06e7\u06d8\u06e4\u06e4\u06e5\u06d8\u06e6\u06ec\u06d8\u06e6\u06e2\u06e1\u06ec\u06df\u06df"

    goto :goto_0

    :sswitch_11
    return v1

    :sswitch_data_0
    .sparse-switch
        -0x7dcddc06 -> :sswitch_d
        -0x7163059f -> :sswitch_b
        -0x6ef0f860 -> :sswitch_0
        -0x6df21784 -> :sswitch_e
        -0x34d181cb -> :sswitch_1
        -0x3279e328 -> :sswitch_10
        -0x296e0f3d -> :sswitch_2
        -0x28c579e5 -> :sswitch_3
        -0x15d90ff6 -> :sswitch_c
        0x250148cb -> :sswitch_11
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x36964e85 -> :sswitch_4
        0x344b8c3e -> :sswitch_6
        0x414efdc8 -> :sswitch_a
        0x703e5a7b -> :sswitch_f
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        -0x67b7ce5a -> :sswitch_8
        0x56f4b671 -> :sswitch_9
        0x75c2e170 -> :sswitch_7
        0x7a1e912b -> :sswitch_5
    .end sparse-switch
.end method

.method public onPause()V
    .locals 4

    const-string v0, "\u06e2\u06d6\u06e7\u06d8\u06e6\u06e2\u06e5\u06e5\u06d7\u06dc\u06e5\u06e6\u06e0\u06e8\u06d8\u06ec\u06dc\u06e8\u06e1\u06d8\u06d8\u06e7\u06e1\u06db\u06e8\u06d8\u06e1\u06da\u06e6\u06d8\u06e6\u06d9\u06eb\u06d9\u06e4\u06e1\u06da\u06d7\u06e2\u06e4\u06e4\u06ec\u06e5\u06e4\u06da\u06d6\u06eb\u06d6\u06d6\u06d7\u06e7\u06e8\u06e1\u06e5\u06d8\u06e0\u06da\u06dc"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0xe4

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0xaa

    const/16 v2, 0x192

    const v3, -0xbc2e10d

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06db\u06eb\u06dc\u06d8\u06e6\u06d6\u06eb\u06eb\u06dc\u06e8\u06d8\u06e5\u06dc\u06e5\u06d8\u06dc\u06da\u06e0\u06eb\u06e4\u06d7\u06ec\u06e2\u06e1\u06d8\u06da\u06e1\u06d8\u06e7\u06e0\u06eb\u06d6\u06d9\u06e1\u06d8\u06d8\u06e7\u06eb\u06e8\u06e1\u06e6\u06db\u06e2\u06e5\u06d8\u06ec\u06ec\u06e8"

    goto :goto_0

    :sswitch_1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    const-string v0, "\u06e7\u06e7\u06d9\u06d9\u06ec\u06d8\u06d8\u06ec\u06e1\u06e5\u06e6\u06d9\u06dc\u06eb\u06d9\u06dc\u06d8\u06e7\u06e4\u06e5\u06d8\u06d7\u06d6\u06db\u06d9\u06dc\u06d9\u06e4\u06e4\u06d8\u06d7\u06ec\u06e4\u06e2\u06e4\u06e0\u06e5\u06db\u06e6\u06e4\u06d8\u06d6\u06d8\u06e6\u06e1\u06e5\u06eb\u06e6\u06e4\u06d6\u06df\u06df\u06dc\u06e7\u06dc\u06e7\u06e1\u06d8"

    goto :goto_0

    :sswitch_2
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    const-string v0, "\u06e6\u06e0\u06dc\u06d9\u06d9\u06e6\u06d7\u06e4\u06df\u06db\u06da\u06e1\u06d8\u06e8\u06eb\u06db\u06da\u06ec\u06e4\u06dc\u06e5\u06d6\u06d8\u06ec\u06db\u06d8\u06d9\u06d6\u06d6\u06e1\u06d8\u06e6"

    goto :goto_0

    :sswitch_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x3d7a7556 -> :sswitch_0
        0x259a2c39 -> :sswitch_3
        0x4e4d2ac3 -> :sswitch_2
        0x63719910 -> :sswitch_1
    .end sparse-switch
.end method

.method public onResume()V
    .locals 4

    const-string v0, "\u06d8\u06ec\u06d6\u06d8\u06d7\u06d9\u06eb\u06eb\u06df\u06e7\u06d8\u06e4\u06e2\u06eb\u06d9\u06e6\u06d7\u06e1\u06d8\u06dc\u06d9\u06e5\u06df\u06e5\u06e4\u06e4\u06df\u06df\u06e4\u06e6\u06e4\u06e5\u06e0\u06d6\u06db\u06df\u06e1\u06d8\u06eb\u06e8\u06e0\u06df\u06e6\u06e5\u06d8\u06d9\u06e1\u06d7\u06dc\u06d9\u06e8\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x111

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x153

    const/16 v2, 0x7d

    const v3, -0x603983db

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d6\u06d7\u06eb\u06d6\u06db\u06e8\u06e1\u06d9\u06e0\u06dc\u06e7\u06d6\u06d8\u06e7\u06eb\u06d8\u06d8\u06d6\u06e2\u06e6\u06e6\u06d8\u06e7\u06d8\u06d7\u06eb\u06d6\u06d8\u06e6\u06d9\u06da\u06e4\u06da\u06e8\u06e2\u06db\u06e6\u06e6\u06d6\u06eb"

    goto :goto_0

    :sswitch_1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    const-string v0, "\u06df\u06db\u06dc\u06d8\u06e0\u06da\u06d8\u06ec\u06e5\u06d6\u06e0\u06da\u06e6\u06e2\u06e0\u06e0\u06da\u06d7\u06df\u06e6\u06db\u06e1\u06df\u06dc\u06dc\u06e4\u06d9\u06e6\u06ec\u06db\u06e4\u06da\u06e8\u06d6\u06e6\u06db\u06e1\u06d8"

    goto :goto_0

    :sswitch_2
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    const-string v0, "\u06d6\u06dc\u06e8\u06d8\u06dc\u06e7\u06e4\u06e0\u06e7\u06e1\u06dc\u06ec\u06e6\u06e1\u06e8\u06e7\u06dc\u06da\u06e0\u06e0\u06d6\u06e4\u06e1\u06ec\u06d6\u06d7\u06e4\u06d9\u06e6\u06d6\u06d8\u06d8\u06d8\u06e7\u06dc\u06d8\u06db\u06e2\u06e0\u06e5\u06e7\u06db\u06d8\u06d6\u06dc\u06e4\u06ec\u06ec\u06db\u06e8\u06e5\u06d8"

    goto :goto_0

    :sswitch_3
    const v1, -0x76724172

    const-string v0, "\u06d9\u06e0\u06e2\u06e5\u06e0\u06d6\u06e1\u06dc\u06eb\u06dc\u06e4\u06e6\u06d6\u06dc\u06db\u06da\u06e5\u06d8\u06da\u06d9\u06db\u06d9\u06dc\u06e8\u06e1\u06e1\u06e6\u06da\u06d7\u06e6\u06e4\u06d8\u06e7\u06d8\u06e6\u06e1\u06e6\u06d8\u06db\u06e2\u06e5\u06d8\u06e7\u06dc\u06dc\u06e7\u06d8\u06e0\u06d7\u06d8"

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v2, v1

    sparse-switch v2, :sswitch_data_1

    goto :goto_1

    :sswitch_4
    const-string v0, "\u06d6\u06e4\u06e8\u06d9\u06e8\u06e5\u06d8\u06db\u06e8\u06dc\u06eb\u06e1\u06d8\u06eb\u06d8\u06e1\u06e5\u06e4\u06e6\u06e1\u06e8\u06e6\u06e8\u06e2\u06e5\u06d8\u06df\u06e0\u06d8\u06d8\u06d9\u06e2\u06e8\u06d8\u06e8\u06db\u06da\u06e0\u06e6\u06e6"

    goto :goto_0

    :sswitch_5
    const-string v0, "\u06eb\u06d8\u06df\u06da\u06d9\u06d8\u06d6\u06d7\u06d8\u06d8\u06db\u06d7\u06e6\u06d8\u06d7\u06e4\u06e6\u06d8\u06db\u06e5\u06d8\u06d8\u06df\u06e6\u06e1\u06e4\u06d6\u06d7\u06e1\u06dc\u06d7\u06d7\u06e6\u06e7\u06d8"

    goto :goto_1

    :sswitch_6
    const v2, -0x77d31689

    const-string v0, "\u06e7\u06eb\u06e8\u06e1\u06e6\u06e7\u06d8\u06e4\u06e8\u06e8\u06d8\u06d8\u06eb\u06e5\u06d8\u06e6\u06e5\u06e7\u06d7\u06e4\u06e4\u06e5\u06d8\u06d9\u06d6\u06d6\u06e8\u06dc\u06e7\u06d6\u06dc\u06d6\u06d8\u06ec\u06d9\u06e5\u06df\u06df\u06e6\u06d8\u06e4\u06d8\u06d8\u06e5\u06d9\u06e5\u06d8"

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v2

    sparse-switch v3, :sswitch_data_2

    goto :goto_2

    :sswitch_7
    const-string v0, "\u06d7\u06e8\u06d8\u06d7\u06e6\u06d8\u06e2\u06dc\u06d6\u06e7\u06d6\u06d9\u06e8\u06e6\u06e0\u06e0\u06e7\u06da\u06e8\u06dc\u06e1\u06d8\u06e2\u06d6\u06e2\u06d9\u06e8\u06e1\u06eb\u06da\u06eb\u06db\u06d8\u06e8\u06d8\u06dc\u06e0\u06ec\u06eb\u06d6\u06e7\u06eb\u06ec\u06e1\u06d8\u06e6\u06ec\u06e5\u06d8\u06ec\u06e8\u06d8"

    goto :goto_2

    :cond_0
    const-string v0, "\u06df\u06e2\u06e8\u06d8\u06ec\u06e0\u06e6\u06d8\u06e4\u06df\u06eb\u06e2\u06dc\u06e6\u06eb\u06ec\u06d9\u06eb\u06e8\u06e6\u06d8\u06e4\u06e0\u06d6\u06d9\u06eb\u06df\u06e2\u06df\u06d8\u06d8\u06d8\u06e2\u06e1\u06d7\u06e8\u06e5\u06e4\u06d8\u06da"

    goto :goto_2

    :sswitch_8
    iget-boolean v0, p0, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->ooOO:Z

    if-eqz v0, :cond_0

    const-string v0, "\u06e7\u06da\u06ec\u06e1\u06d7\u06e8\u06d8\u06e7\u06e7\u06e5\u06db\u06d9\u06e8\u06d8\u06d7\u06e6\u06d8\u06db\u06e5\u06dc\u06eb\u06e0\u06da\u06e2\u06e0\u06e4\u06ec\u06e0\u06dc\u06d8\u06e7\u06da\u06eb\u06dc\u06db\u06e4\u06e5\u06db\u06e7\u06e6\u06d7\u06d6\u06e2\u06e4\u06e4\u06e1\u06e5\u06d8\u06d9\u06db\u06d8"

    goto :goto_2

    :sswitch_9
    const-string v0, "\u06e1\u06d7\u06d9\u06eb\u06d9\u06e2\u06e5\u06d8\u06e1\u06dc\u06e4\u06dc\u06d8\u06da\u06df\u06d9\u06e2\u06d6\u06e1\u06dc\u06eb\u06e5\u06e7\u06e1\u06e5\u06da\u06dc\u06d9\u06db\u06e4\u06ec\u06e4\u06e8\u06da\u06d7\u06e1\u06d8\u06dc\u06da\u06e4\u06e7\u06da\u06e0\u06dc\u06d7\u06d9\u06db\u06e5\u06df"

    goto :goto_1

    :sswitch_a
    const-string v0, "\u06e0\u06e5\u06d8\u06d8\u06dc\u06eb\u06e6\u06d8\u06df\u06e5\u06e1\u06e5\u06dc\u06e8\u06eb\u06d9\u06e7\u06eb\u06d8\u06e1\u06d8\u06e1\u06da\u06e5\u06d8\u06ec\u06ec\u06d6\u06d8\u06e1\u06e7\u06d6\u06e0\u06eb\u06e6\u06ec\u06df\u06d8\u06eb\u06ec\u06d6\u06d8"

    goto :goto_1

    :sswitch_b
    iget-object v0, p0, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->o0OoOo0:Lcom/elfin/ad/activity/FullScreenTwoAdActivity$OooO0o;

    new-instance v1, Lcom/elfin/ad/activity/FullScreenTwoAdActivity$OooO00o;

    invoke-direct {v1, p0}, Lcom/elfin/ad/activity/FullScreenTwoAdActivity$OooO00o;-><init>(Lcom/elfin/ad/activity/FullScreenTwoAdActivity;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const-string v0, "\u06da\u06dc\u06db\u06e4\u06d6\u06e6\u06d6\u06d9\u06dc\u06d8\u06dc\u06e6\u06ec\u06d7\u06e6\u06e5\u06e6\u06e1\u06e1\u06d6\u06d6\u06e8\u06d8\u06e0\u06e0\u06d8\u06da\u06e6\u06d8\u06db\u06d8\u06d9\u06db\u06d6\u06e8\u06d8\u06e6\u06e6\u06e5\u06e6\u06d7\u06d7\u06d6\u06d9\u06e0"

    goto :goto_0

    :sswitch_c
    const-string v0, "\u06da\u06dc\u06db\u06e4\u06d6\u06e6\u06d6\u06d9\u06dc\u06d8\u06dc\u06e6\u06ec\u06d7\u06e6\u06e5\u06e6\u06e1\u06e1\u06d6\u06d6\u06e8\u06d8\u06e0\u06e0\u06d8\u06da\u06e6\u06d8\u06db\u06d8\u06d9\u06db\u06d6\u06e8\u06d8\u06e6\u06e6\u06e5\u06e6\u06d7\u06d7\u06d6\u06d9\u06e0"

    goto :goto_0

    :sswitch_d
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7d601651 -> :sswitch_0
        -0x43a39ef5 -> :sswitch_d
        -0x34362e2a -> :sswitch_1
        -0xef8af6b -> :sswitch_3
        0x390a05e7 -> :sswitch_b
        0x4e0f4572 -> :sswitch_2
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x7ba923c1 -> :sswitch_a
        0x426db029 -> :sswitch_6
        0x5a237c80 -> :sswitch_4
        0x6ecf1e3c -> :sswitch_c
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        -0x13a3fbde -> :sswitch_7
        0xe204a6e -> :sswitch_8
        0x1f67f1e9 -> :sswitch_9
        0x31b94b90 -> :sswitch_5
    .end sparse-switch
.end method
