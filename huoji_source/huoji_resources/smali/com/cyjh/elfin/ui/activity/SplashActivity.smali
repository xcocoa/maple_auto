.class public Lcom/cyjh/elfin/ui/activity/SplashActivity;
.super Lcom/cyjh/common/base/activity/BaseModelActivity;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyjh/elfin/ui/activity/SplashActivity$OooO;,
        Lcom/cyjh/elfin/ui/activity/SplashActivity$OooOO0;,
        Lcom/cyjh/elfin/ui/activity/SplashActivity$OooOO0O;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/cyjh/common/base/activity/BaseModelActivity",
        "<",
        "Lz2/qa;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# static fields
.field public static final o00Oo0:I = 0x8

.field private static final o00Ooo:I = 0xc8

.field private static final o00o0O:Ljava/lang/String;

.field private static final o00ooo:I = 0x1


# instance fields
.field private OooooOO:[Ljava/lang/String;

.field private OooooOo:Landroid/widget/ImageView;

.field private Oooooo:Landroid/widget/LinearLayout;

.field private Oooooo0:Landroid/widget/TextView;

.field private OoooooO:Landroid/widget/TextView;

.field private Ooooooo:Lz2/rh;

.field private o00O0O:Lz2/nh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz2/nh",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private o0OoOo0:I

.field private ooOO:Lcom/cyjh/elfin/ui/activity/SplashActivity$OooO;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const-string v0, "\u06db\u06e4\u06e1\u06d8\u06e8\u06d6\u06e4\u06da\u06eb\u06e5\u06e5\u06e4\u06e5\u06e8\u06e1\u06dc\u06d8\u06e1\u06e6\u06e7\u06db\u06df\u06ec\u06dc\u06d6\u06eb\u06e0\u06eb\u06d6\u06d6\u06e5\u06df\u06ec\u06e5\u06ec\u06d8\u06d8\u06db\u06e2\u06e7\u06df\u06e4\u06eb\u06e5\u06e4\u06dc\u06d8\u06d8\u06ec\u06e6\u06db\u06e0\u06d6\u06e8\u06dc"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x310

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0xf5

    const/16 v2, 0x21

    const v3, 0x15fe0fc7

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-class v0, Lcom/cyjh/elfin/ui/activity/SplashActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cyjh/elfin/ui/activity/SplashActivity;->o00o0O:Ljava/lang/String;

    const-string v0, "\u06ec\u06d9\u06d7\u06d8\u06dc\u06ec\u06e0\u06eb\u06d7\u06e8\u06df\u06eb\u06eb\u06eb\u06d6\u06e8\u06da\u06e0\u06ec\u06d7\u06df\u06e2\u06d8\u06d6\u06da\u06e1\u06d6\u06d8\u06d9\u06e6\u06db\u06e0\u06db\u06d8\u06d6\u06ec\u06e6"

    goto :goto_0

    :sswitch_1
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x4b225173 -> :sswitch_1
        0x7862d097 -> :sswitch_0
    .end sparse-switch
.end method

.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/cyjh/common/base/activity/BaseModelActivity;-><init>()V

    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "android.permission.READ_PHONE_STATE"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "android.permission.CALL_PHONE"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "android.permission.ACCESS_NETWORK_STATE"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "android.permission.ACCESS_WIFI_STATE"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "android.permission.SEND_SMS"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "android.permission.READ_SMS"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "android.permission.READ_CONTACTS"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "android.permission.CAMERA"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/SplashActivity;->OooooOO:[Ljava/lang/String;

    iput v3, p0, Lcom/cyjh/elfin/ui/activity/SplashActivity;->o0OoOo0:I

    new-instance v0, Lcom/cyjh/elfin/ui/activity/SplashActivity$OooO00o;

    invoke-direct {v0, p0}, Lcom/cyjh/elfin/ui/activity/SplashActivity$OooO00o;-><init>(Lcom/cyjh/elfin/ui/activity/SplashActivity;)V

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/SplashActivity;->o00O0O:Lz2/nh;

    return-void
.end method

.method public static synthetic OooOO0(Lcom/cyjh/elfin/ui/activity/SplashActivity;Ljava/lang/String;)V
    .locals 4

    const-string v0, "\u06e5\u06e7\u06eb\u06d9\u06e8\u06dc\u06d8\u06e8\u06eb\u06db\u06db\u06db\u06e8\u06d8\u06e8\u06e7\u06df\u06e7\u06d9\u06e6\u06d7\u06dc\u06d8\u06e7\u06e1\u06df\u06db\u06e2\u06e6\u06d8\u06ec\u06d8\u06e0\u06e4\u06d6\u06e2\u06d8\u06d9\u06e5\u06d8\u06e2\u06e1\u06df\u06e1\u06e7\u06e8\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x100

    xor-int/2addr v1, v2

    xor-int/lit8 v1, v1, 0x4b

    const/16 v2, 0x387

    const v3, 0x2f85dfcf

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06df\u06d6\u06d6\u06d8\u06e0\u06ec\u06dc\u06d8\u06e1\u06ec\u06e6\u06d8\u06da\u06d6\u06eb\u06eb\u06e2\u06e0\u06e6\u06df\u06d9\u06e0\u06e8\u06e6\u06d8\u06e2\u06db\u06e4\u06eb\u06ec\u06e1\u06da\u06ec\u06e6\u06d8\u06d8\u06da\u06e5\u06df\u06d8\u06e7\u06da\u06eb\u06df\u06e4\u06e2\u06e4"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06e0\u06d9\u06e7\u06e1\u06eb\u06e6\u06d8\u06eb\u06e1\u06da\u06d6\u06e1\u06eb\u06da\u06e5\u06e4\u06d9\u06db\u06e6\u06d8\u06e0\u06e7\u06e2\u06e5\u06df\u06eb\u06e7\u06e2\u06ec\u06dc\u06db\u06d7"

    goto :goto_0

    :sswitch_2
    invoke-direct {p0, p1}, Lcom/cyjh/elfin/ui/activity/SplashActivity;->OooOoO0(Ljava/lang/String;)V

    const-string v0, "\u06e1\u06e2\u06db\u06df\u06d7\u06e1\u06e6\u06eb\u06e6\u06e1\u06e8\u06d9\u06e5\u06e1\u06e2\u06ec\u06df\u06e0\u06db\u06dc\u06e6\u06e4\u06ec\u06d9\u06d7\u06eb\u06dc\u06da\u06ec\u06e8\u06d6\u06e0\u06d7\u06dc\u06d8\u06db\u06e8\u06e6\u06e6\u06eb\u06db\u06eb\u06e0\u06eb\u06e1\u06eb\u06dc"

    goto :goto_0

    :sswitch_3
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6d24cb79 -> :sswitch_2
        -0x2ec81643 -> :sswitch_1
        -0x1a31713e -> :sswitch_3
        0x6e1bad10 -> :sswitch_0
    .end sparse-switch
.end method

.method public static synthetic OooOO0O(Lcom/cyjh/elfin/ui/activity/SplashActivity;)Landroid/widget/TextView;
    .locals 4

    const-string v0, "\u06e7\u06e4\u06d9\u06e1\u06e2\u06d8\u06db\u06d7\u06e0\u06e8\u06e4\u06e6\u06d8\u06dc\u06e5\u06eb\u06d8\u06d9\u06e6\u06d9\u06eb\u06dc\u06d8\u06d8\u06da\u06dc\u06e0\u06da\u06e6\u06da\u06e2\u06e8\u06d8\u06e1\u06d8\u06d8\u06d9\u06da\u06e8\u06d8\u06e6\u06e2\u06d7\u06d9\u06e1\u06e8\u06d8\u06e7\u06ec\u06db\u06d7\u06df\u06d8\u06d8\u06ec\u06e5\u06d6\u06d8\u06d7\u06e6\u06d6\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x92

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x19e

    const/16 v2, 0x1f5

    const v3, -0x191314c4

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e5\u06e7\u06d8\u06d8\u06d6\u06e2\u06e0\u06d6\u06ec\u06d8\u06eb\u06dc\u06d8\u06ec\u06d9\u06df\u06dc\u06e1\u06d6\u06d8\u06da\u06d8\u06dc\u06d8\u06e1\u06ec\u06df\u06e5\u06d7\u06ec\u06e6\u06e6\u06d8\u06e5\u06e7\u06e7\u06d6\u06d8\u06dc\u06db\u06e1\u06eb\u06db\u06e4"

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SplashActivity;->OoooooO:Landroid/widget/TextView;

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x68be445a -> :sswitch_1
        -0x381f2f0e -> :sswitch_0
    .end sparse-switch
.end method

.method public static synthetic OooOO0o(Lcom/cyjh/elfin/ui/activity/SplashActivity;)V
    .locals 4

    const-string v0, "\u06e0\u06e6\u06d9\u06df\u06e2\u06d7\u06eb\u06d6\u06e6\u06e2\u06e1\u06d8\u06e5\u06e6\u06e8\u06e6\u06da\u06d6\u06da\u06e5\u06e8\u06d8\u06df\u06db\u06d6\u06ec\u06df\u06ec\u06da\u06e8\u06db\u06dc\u06e8\u06d8\u06d8\u06eb\u06e0\u06e1\u06e6\u06d7\u06e1\u06d8\u06df\u06da\u06e5\u06d7\u06e7\u06e5\u06e6\u06eb\u06d6\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0xab

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x29c

    const/16 v2, 0x358

    const v3, -0x19eb1163

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e0\u06d6\u06e6\u06d7\u06d7\u06d9\u06ec\u06e6\u06dc\u06d8\u06e0\u06da\u06ec\u06df\u06e6\u06d8\u06e4\u06e8\u06e7\u06d8\u06df\u06d7\u06d6\u06d8\u06ec\u06d8\u06e6\u06d8\u06d7\u06db\u06e5\u06d8\u06e4\u06e1\u06e6\u06e1\u06ec\u06dc\u06dc\u06e7\u06e1\u06ec\u06d8\u06db\u06e0"

    goto :goto_0

    :sswitch_1
    invoke-direct {p0}, Lcom/cyjh/elfin/ui/activity/SplashActivity;->OooOoo0()V

    const-string v0, "\u06e5\u06e0\u06dc\u06d8\u06eb\u06eb\u06db\u06ec\u06d9\u06da\u06e1\u06db\u06d6\u06e8\u06eb\u06e8\u06e5\u06e5\u06dc\u06e0\u06df\u06eb\u06e6\u06da\u06da\u06d7\u06e8\u06da\u06d9\u06da\u06e5\u06e4\u06da\u06e2\u06db\u06e0\u06dc\u06e1\u06e8\u06d7\u06d9\u06eb\u06da\u06d9\u06df\u06db\u06e8"

    goto :goto_0

    :sswitch_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x5ef98ef1 -> :sswitch_1
        -0x289b81cd -> :sswitch_0
        0x6db2f8a7 -> :sswitch_2
    .end sparse-switch
.end method

.method public static synthetic OooOOO(Lcom/cyjh/elfin/ui/activity/SplashActivity;)Landroidx/lifecycle/AndroidViewModel;
    .locals 4

    const-string v0, "\u06ec\u06ec\u06eb\u06db\u06db\u06da\u06e5\u06e0\u06e6\u06d8\u06dc\u06db\u06e2\u06eb\u06d8\u06df\u06d8\u06d8\u06d6\u06e5\u06d8\u06eb\u06e2\u06d7\u06e0\u06eb\u06ec\u06d6\u06dc\u06d9\u06dc\u06dc\u06d7\u06e0\u06e2\u06ec\u06d7\u06e8\u06e1\u06e0\u06dc\u06df\u06ec\u06dc\u06d8\u06db\u06dc\u06e6\u06e7\u06ec\u06e4\u06eb\u06e2"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x24b

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x157

    const/16 v2, 0x163

    const v3, 0x1d0f270c

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e0\u06d8\u06ec\u06dc\u06db\u06e6\u06d8\u06e7\u06e5\u06e7\u06e8\u06e5\u06d8\u06d8\u06e2\u06dc\u06da\u06e1\u06e4\u06e6\u06d8\u06eb\u06e7\u06d7\u06db\u06df\u06ec\u06d8\u06d9\u06dc\u06eb\u06d8\u06df"

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/cyjh/common/base/activity/BaseModelActivity;->OooooO0:Landroidx/lifecycle/AndroidViewModel;

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x34b52334 -> :sswitch_0
        0x52b77aeb -> :sswitch_1
    .end sparse-switch
.end method

.method public static synthetic OooOOO0(Lcom/cyjh/elfin/ui/activity/SplashActivity;)Lz2/rh;
    .locals 4

    const-string v0, "\u06e6\u06e8\u06d9\u06e6\u06ec\u06dc\u06e1\u06e0\u06db\u06db\u06d6\u06e1\u06eb\u06dc\u06e6\u06d8\u06e5\u06e5\u06e7\u06e5\u06dc\u06e6\u06ec\u06db\u06d8\u06d6\u06d6\u06e8\u06e7\u06e0\u06d8\u06d8\u06e4\u06e2\u06d7\u06ec\u06da\u06e7"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x28d

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x2e2

    const/4 v2, 0x5

    const v3, -0x1a743550

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d9\u06e6\u06df\u06e8\u06e1\u06e7\u06ec\u06e1\u06e1\u06ec\u06eb\u06dc\u06d8\u06e1\u06e0\u06da\u06d9\u06da\u06d8\u06e1\u06d8\u06d7\u06d6\u06d7\u06db\u06e5\u06d9\u06db\u06eb\u06ec\u06e1\u06db\u06e8\u06e8\u06e7\u06e8\u06d8\u06e4\u06db\u06e7\u06e5\u06d6\u06da\u06e0\u06e2\u06e1\u06e8\u06ec\u06d6\u06d8"

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SplashActivity;->Ooooooo:Lz2/rh;

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x12eec7f4 -> :sswitch_1
        0x6df1f396 -> :sswitch_0
    .end sparse-switch
.end method

.method public static synthetic OooOOOO(Lcom/cyjh/elfin/ui/activity/SplashActivity;)Landroid/widget/TextView;
    .locals 4

    const-string v0, "\u06e5\u06df\u06da\u06d7\u06da\u06e7\u06e2\u06e6\u06df\u06e7\u06d9\u06e8\u06d9\u06e8\u06dc\u06e4\u06e6\u06dc\u06d8\u06dc\u06e2\u06e8\u06e5\u06dc\u06e2\u06d7\u06d8\u06e1\u06e1\u06e5\u06e7\u06d6\u06d9\u06d7\u06e8\u06e1\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x279

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x35d

    const/16 v2, 0x358

    const v3, -0x5f6c7237

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e0\u06da\u06e4\u06da\u06e2\u06e0\u06dc\u06dc\u06eb\u06e5\u06dc\u06e2\u06dc\u06e4\u06d6\u06e6\u06eb\u06d6\u06eb\u06ec\u06db\u06db\u06d9\u06e5\u06eb\u06da\u06e7\u06e0\u06d7\u06e5\u06d8\u06d6\u06d6\u06eb\u06d8\u06df\u06d6"

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SplashActivity;->Oooooo0:Landroid/widget/TextView;

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x6a362083 -> :sswitch_1
        -0x5510c0ea -> :sswitch_0
    .end sparse-switch
.end method

.method public static synthetic OooOOOo(Lcom/cyjh/elfin/ui/activity/SplashActivity;)Landroid/widget/ImageView;
    .locals 4

    const-string v0, "\u06df\u06eb\u06e1\u06d8\u06e8\u06eb\u06d9\u06da\u06e0\u06dc\u06eb\u06e2\u06e6\u06da\u06e2\u06d8\u06d8\u06dc\u06e7\u06e1\u06d8\u06e1\u06e4\u06e8\u06d8\u06e5\u06e1\u06ec\u06dc\u06ec\u06e5\u06eb\u06df\u06e5\u06d8\u06e8\u06e0\u06eb\u06ec\u06df\u06df"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0xb7

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x33e

    const/16 v2, 0xdb

    const v3, 0x43b27d82

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e8\u06e4\u06e1\u06e4\u06e6\u06e7\u06d7\u06e5\u06e5\u06da\u06e4\u06dc\u06e5\u06ec\u06d7\u06e5\u06d8\u06e8\u06e4\u06e2\u06da\u06d9\u06e5\u06d8\u06e1\u06d6\u06e6\u06da\u06e4\u06da\u06e0\u06e0\u06db\u06d8\u06e7\u06da"

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SplashActivity;->OooooOo:Landroid/widget/ImageView;

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0xc53c611 -> :sswitch_1
        0x7bbab71e -> :sswitch_0
    .end sparse-switch
.end method

.method public static synthetic OooOOo(Lcom/cyjh/elfin/ui/activity/SplashActivity;)V
    .locals 4

    const-string v0, "\u06db\u06d9\u06e6\u06df\u06e7\u06d7\u06e5\u06e1\u06e2\u06dc\u06d7\u06d6\u06d8\u06d7\u06db\u06e5\u06db\u06eb\u06d8\u06db\u06db\u06da\u06d9\u06e0\u06d9\u06d8\u06e0\u06dc\u06e6\u06df\u06e1\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x12d

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x1f1

    const/16 v2, 0x1b6

    const v3, 0x712418f0

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e1\u06e7\u06d6\u06e8\u06eb\u06e7\u06dc\u06e5\u06e6\u06d8\u06e2\u06d9\u06d8\u06e4\u06e6\u06d8\u06d8\u06db\u06e6\u06d8\u06d9\u06da\u06df\u06e6\u06e5\u06dc\u06d7\u06df\u06e6\u06d7\u06eb\u06e7\u06d8\u06e0\u06eb\u06d6\u06e2\u06e6\u06d6\u06dc\u06d7\u06db\u06eb\u06e5\u06d8\u06e6\u06d8\u06df\u06e5\u06d8\u06e5\u06d8\u06e8\u06e5\u06d8\u06eb\u06e4\u06e6\u06d8"

    goto :goto_0

    :sswitch_1
    invoke-direct {p0}, Lcom/cyjh/elfin/ui/activity/SplashActivity;->Oooo0o0()V

    const-string v0, "\u06d7\u06e0\u06dc\u06d7\u06e8\u06d8\u06db\u06dc\u06e7\u06e2\u06dc\u06dc\u06d8\u06e1\u06e8\u06d6\u06e5\u06e6\u06e8\u06d8\u06e7\u06da\u06df\u06db\u06d9\u06da\u06df\u06e6\u06d9\u06e0\u06dc\u06d8"

    goto :goto_0

    :sswitch_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x571443d8 -> :sswitch_2
        0x12c75519 -> :sswitch_1
        0x2c0f82f3 -> :sswitch_0
    .end sparse-switch
.end method

.method public static synthetic OooOOo0(Lcom/cyjh/elfin/ui/activity/SplashActivity;)Landroidx/lifecycle/AndroidViewModel;
    .locals 4

    const-string v0, "\u06dc\u06e7\u06ec\u06db\u06e0\u06e6\u06d8\u06e0\u06e7\u06e5\u06d8\u06df\u06e0\u06e2\u06e2\u06e5\u06e0\u06e7\u06eb\u06db\u06e1\u06e5\u06e0\u06d8\u06d6\u06db\u06e7\u06e1\u06db\u06e5\u06eb\u06e1\u06db\u06df\u06e5\u06d8\u06ec\u06da\u06e1\u06eb\u06df\u06e6\u06e4\u06e6\u06d6\u06d7\u06e5\u06ec\u06e1\u06dc"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x109

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x25d

    const/16 v2, 0xba

    const v3, -0x5b909fbf

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e6\u06e5\u06e6\u06dc\u06e7\u06dc\u06d8\u06df\u06d6\u06d8\u06d8\u06e6\u06e8\u06d6\u06e4\u06df\u06dc\u06d8\u06eb\u06e6\u06da\u06da\u06e5\u06dc\u06d8\u06d7\u06db\u06e0\u06db\u06e7\u06e7\u06e6\u06e1\u06dc\u06d8"

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/cyjh/common/base/activity/BaseModelActivity;->OooooO0:Landroidx/lifecycle/AndroidViewModel;

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x23f92cf0 -> :sswitch_0
        -0x14a7c6c7 -> :sswitch_1
    .end sparse-switch
.end method

.method public static synthetic OooOOoo(Lcom/cyjh/elfin/ui/activity/SplashActivity;)V
    .locals 4

    const-string v0, "\u06d8\u06e5\u06e7\u06e7\u06d7\u06df\u06e2\u06d8\u06dc\u06d8\u06d9\u06e0\u06dc\u06d8\u06e4\u06d6\u06d8\u06d7\u06d6\u06e7\u06d9\u06d7\u06e8\u06d8\u06e6\u06d6\u06d8\u06e7\u06dc\u06e1\u06d6\u06dc\u06e8\u06df\u06db\u06e0\u06dc\u06da\u06d6\u06d8\u06e8\u06e5\u06e6\u06d8\u06e5\u06da\u06eb\u06eb\u06e5\u06ec\u06e1\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x25d

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x21e

    const/16 v2, 0x33e

    const v3, 0x22f99431

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e2\u06d9\u06e8\u06da\u06e5\u06e8\u06db\u06da\u06e0\u06dc\u06eb\u06e8\u06d8\u06e4\u06e5\u06e5\u06e2\u06ec\u06da\u06eb\u06e6\u06d8\u06e7\u06ec\u06db\u06e4\u06e6\u06e5\u06e4\u06d6\u06d7\u06e4\u06ec\u06e6\u06d8\u06e0\u06d7"

    goto :goto_0

    :sswitch_1
    invoke-direct {p0}, Lcom/cyjh/elfin/ui/activity/SplashActivity;->Oooo0OO()V

    const-string v0, "\u06db\u06e8\u06e5\u06e7\u06dc\u06e8\u06d8\u06d9\u06da\u06dc\u06df\u06da\u06e1\u06d8\u06d7\u06da\u06ec\u06db\u06e5\u06e1\u06e8\u06d7\u06d7\u06e2\u06e5\u06d8\u06e4\u06d7\u06dc\u06d8\u06e0\u06e2\u06e6\u06d8\u06e1\u06e0\u06d6\u06e5\u06db\u06dc\u06d8\u06dc\u06e0\u06da\u06d7\u06e8\u06e5"

    goto :goto_0

    :sswitch_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x2c503d40 -> :sswitch_1
        0x21ba4bd5 -> :sswitch_2
        0x458e460e -> :sswitch_0
    .end sparse-switch
.end method

.method public static synthetic OooOo0(Lcom/cyjh/elfin/ui/activity/SplashActivity;)V
    .locals 4

    const-string v0, "\u06e8\u06e1\u06e2\u06e2\u06da\u06d9\u06d6\u06e6\u06e7\u06d8\u06e0\u06e1\u06e6\u06d8\u06e5\u06e2\u06df\u06d8\u06eb\u06e5\u06d8\u06dc\u06e1\u06db\u06df\u06da\u06d6\u06d8\u06df\u06e4\u06d6\u06da\u06e6\u06e0\u06d6\u06e8\u06e6\u06d8\u06d7\u06e2\u06e8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x25a

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x3f9

    const/16 v2, 0x218

    const v3, 0x3335a72f

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06ec\u06d7\u06e4\u06eb\u06da\u06d6\u06da\u06e6\u06e5\u06d9\u06d8\u06da\u06e0\u06e8\u06e7\u06d8\u06d9\u06e5\u06e6\u06d8\u06e7\u06e6\u06d6\u06e4\u06dc\u06e4\u06e6\u06eb\u06e1\u06e8\u06e6\u06e5\u06d8\u06eb\u06e1\u06eb\u06e2\u06e1\u06d9\u06e2\u06e2\u06e8\u06e5\u06ec\u06e8\u06d8\u06dc\u06d6\u06e1\u06d8\u06db\u06e6\u06d9"

    goto :goto_0

    :sswitch_1
    invoke-direct {p0}, Lcom/cyjh/elfin/ui/activity/SplashActivity;->Oooo()V

    const-string v0, "\u06d6\u06e1\u06eb\u06df\u06e7\u06e1\u06d8\u06e7\u06e4\u06e6\u06d8\u06e7\u06da\u06e8\u06dc\u06e6\u06ec\u06db\u06ec\u06e1\u06d8\u06e7\u06d8\u06e8\u06e5\u06e7\u06e6\u06db\u06d7\u06e7\u06df\u06e2\u06e0\u06d7\u06e0\u06d8\u06e6\u06e7\u06d9\u06eb\u06df\u06ec\u06d6\u06d7\u06e0\u06d6\u06d7\u06e0\u06e8\u06e8\u06e1\u06d8"

    goto :goto_0

    :sswitch_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x599da840 -> :sswitch_1
        -0x29265bd0 -> :sswitch_2
        0x7b0dd1cb -> :sswitch_0
    .end sparse-switch
.end method

.method public static synthetic OooOo00(Lcom/cyjh/elfin/ui/activity/SplashActivity;)I
    .locals 5

    const/4 v1, 0x0

    const-string v0, "\u06db\u06e0\u06e1\u06e8\u06e8\u06dc\u06e0\u06e4\u06dc\u06eb\u06db\u06e5\u06d8\u06e7\u06da\u06d6\u06d8\u06e8\u06e6\u06e5\u06e1\u06e2\u06e2\u06d9\u06e8\u06e5\u06dc\u06d9\u06d6\u06e8\u06dc\u06d8\u06e4\u06e5\u06e1\u06e2\u06e8\u06e1"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v3, 0x18b

    xor-int/2addr v2, v3

    xor-int/lit16 v2, v2, 0x28d

    const/16 v3, 0x127

    const v4, -0x1e4d1932

    xor-int/2addr v2, v3

    xor-int/2addr v2, v4

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06ec\u06d8\u06e2\u06dc\u06e0\u06d8\u06d8\u06df\u06eb\u06e2\u06da\u06dc\u06d8\u06eb\u06e2\u06d6\u06d8\u06ec\u06e2\u06d9\u06e0\u06e7\u06e1\u06d8\u06d8\u06e6\u06e5\u06ec\u06d9\u06e5\u06d8\u06eb\u06e5\u06eb\u06e2\u06eb\u06e7\u06e4\u06d7\u06e8\u06e4\u06e0\u06d6\u06d8\u06da\u06d7\u06e8\u06d9\u06eb\u06e0\u06e8\u06e8\u06e8\u06d8"

    goto :goto_0

    :sswitch_1
    iget v1, p0, Lcom/cyjh/elfin/ui/activity/SplashActivity;->o0OoOo0:I

    const-string v0, "\u06e1\u06e2\u06d6\u06e1\u06eb\u06e5\u06d8\u06e5\u06d9\u06ec\u06e8\u06e5\u06e7\u06db\u06dc\u06da\u06d9\u06d7\u06e5\u06eb\u06da\u06e6\u06d8\u06ec\u06d8\u06e5\u06d8\u06e6\u06ec\u06db\u06d6\u06db\u06dc"

    goto :goto_0

    :sswitch_2
    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/cyjh/elfin/ui/activity/SplashActivity;->o0OoOo0:I

    const-string v0, "\u06e8\u06e2\u06dc\u06d8\u06e8\u06d9\u06e6\u06d8\u06e2\u06d7\u06e8\u06d8\u06e7\u06e6\u06da\u06ec\u06da\u06d9\u06e5\u06df\u06e5\u06d8\u06e8\u06e8\u06e2\u06ec\u06e5\u06da\u06d6\u06e8\u06e8\u06d8\u06d7\u06d7\u06e6\u06d8\u06e5\u06d7\u06db\u06ec\u06dc\u06e8\u06d8\u06dc\u06e7\u06dc\u06d8\u06ec\u06e7\u06e6"

    goto :goto_0

    :sswitch_3
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x76745783 -> :sswitch_0
        -0x37bdf05 -> :sswitch_2
        0x1eb26786 -> :sswitch_3
        0x4713873f -> :sswitch_1
    .end sparse-switch
.end method

.method private OooOo0O(ILjava/lang/String;)V
    .locals 4

    const-string v0, "\u06da\u06ec\u06db\u06d6\u06d7\u06e0\u06dc\u06e7\u06d6\u06d8\u06e5\u06da\u06e7\u06e7\u06e4\u06d6\u06d8\u06e7\u06d7\u06e2\u06d6\u06e7\u06e4\u06e5\u06dc\u06e0\u06e5\u06e1\u06d9\u06dc\u06dc\u06d6\u06d6\u06db\u06ec\u06db\u06eb\u06d6\u06e8\u06da\u06e7\u06e8\u06e4\u06d6\u06d8\u06e5\u06dc\u06e8\u06d6\u06d8\u06ec\u06da\u06e4\u06e5\u06da\u06da\u06e1"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x1f6

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x23f

    const/4 v2, 0x1

    const v3, 0x23d4269c

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d7\u06e0\u06d6\u06e2\u06da\u06df\u06e7\u06d9\u06e5\u06d8\u06e8\u06db\u06d7\u06d8\u06d6\u06e6\u06da\u06eb\u06d9\u06e6\u06db\u06e4\u06dc\u06e1\u06d8\u06d8\u06e4\u06e2\u06e0\u06d8\u06e0\u06d9\u06d9\u06ec\u06e0\u06db\u06e0\u06e5\u06e6\u06e4\u06e5\u06d7\u06e7"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06e6\u06e6\u06d9\u06db\u06eb\u06d6\u06df\u06e0\u06e5\u06e7\u06d8\u06d8\u06d8\u06d9\u06db\u06d8\u06d8\u06ec\u06e0\u06da\u06dc\u06e4\u06d7\u06d8\u06d8\u06e6\u06e6\u06e6\u06d8\u06dc\u06d9\u06dc\u06d8"

    goto :goto_0

    :sswitch_2
    const-string v0, "\u06df\u06dc\u06e2\u06db\u06d7\u06d8\u06dc\u06db\u06e7\u06dc\u06d7\u06e4\u06d7\u06e8\u06eb\u06df\u06e7\u06da\u06e2\u06e6\u06da\u06dc\u06e5\u06e5\u06d8\u06db\u06db\u06e2\u06e8\u06e6\u06e8\u06d8\u06d8\u06e5\u06e8\u06d8\u06e5\u06e4\u06e5\u06dc\u06d9\u06db\u06e0\u06d8\u06e0\u06d8\u06df\u06da\u06e5\u06d6\u06e8"

    goto :goto_0

    :sswitch_3
    invoke-static {}, Lz2/x9;->OooO0O0()Lz2/x9;

    move-result-object v0

    new-instance v1, Lcom/cyjh/elfin/ui/activity/SplashActivity$OooOO0;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/cyjh/elfin/ui/activity/SplashActivity$OooOO0;-><init>(Lcom/cyjh/elfin/ui/activity/SplashActivity;Lcom/cyjh/elfin/ui/activity/SplashActivity$OooO00o;)V

    invoke-virtual {v0, p1, p2, p0, v1}, Lz2/x9;->OooO00o(ILjava/lang/String;Landroid/content/Context;Lz2/ka;)V

    const-string v0, "\u06e7\u06e1\u06e1\u06d8\u06da\u06d9\u06d7\u06e7\u06e1\u06d7\u06e7\u06e4\u06e5\u06e4\u06d7\u06e6\u06eb\u06e0\u06e8\u06d8\u06e1\u06ec\u06e4\u06e2\u06d6\u06d8\u06e7\u06df\u06e6\u06d7\u06df\u06e0\u06e1\u06eb\u06e8\u06e0\u06e1\u06e5\u06d8\u06e8\u06d6\u06d8\u06e6\u06da\u06d6\u06d8"

    goto :goto_0

    :sswitch_4
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x15bc6ca -> :sswitch_2
        0x39f9b09d -> :sswitch_3
        0x4e0f5c1d -> :sswitch_4
        0x763ca0b2 -> :sswitch_1
        0x7c3253f4 -> :sswitch_0
    .end sparse-switch
.end method

.method private OooOo0o()V
    .locals 6

    const/4 v2, 0x0

    const-string v0, "\u06da\u06e4\u06d8\u06d8\u06d6\u06eb\u06e5\u06d8\u06eb\u06d7\u06eb\u06d9\u06e4\u06d6\u06e6\u06d9\u06d7\u06d7\u06ec\u06e8\u06e8\u06d8\u06d8\u06e5\u06e0\u06d7\u06d7\u06df\u06dc\u06e5\u06e0\u06df\u06eb\u06d7\u06d8\u06eb\u06d8\u06e7\u06d8\u06dc\u06da\u06e5\u06d8\u06dc\u06ec\u06e7\u06e6\u06d8\u06d6\u06d8\u06e8\u06eb\u06d7"

    move-object v1, v2

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/16 v4, 0x137

    xor-int/2addr v3, v4

    xor-int/lit16 v3, v3, 0x12a

    const/16 v4, 0x3b2

    const v5, -0x46e50841

    xor-int/2addr v3, v4

    xor-int/2addr v3, v5

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d6\u06e2\u06d9\u06df\u06e0\u06d6\u06d8\u06dc\u06e8\u06e7\u06d8\u06e1\u06e1\u06e6\u06e6\u06d6\u06e5\u06d8\u06dc\u06e7\u06e8\u06d8\u06e2\u06df\u06e6\u06da\u06e0\u06e4\u06da\u06ec\u06e8\u06e2\u06da\u06e2\u06d9\u06e2\u06e0\u06db\u06d6\u06d8\u06e1\u06d8\u06e1\u06d8\u06dc\u06d8\u06d8\u06d8\u06d6\u06e1\u06e1\u06dc\u06e0\u06df\u06e1\u06e6\u06dc\u06d8\u06db\u06db\u06e8\u06d8"

    goto :goto_0

    :sswitch_1
    iget-object v1, p0, Lcom/cyjh/elfin/ui/activity/SplashActivity;->ooOO:Lcom/cyjh/elfin/ui/activity/SplashActivity$OooO;

    const-string v0, "\u06db\u06ec\u06e7\u06ec\u06e8\u06d8\u06db\u06da\u06eb\u06e0\u06eb\u06db\u06eb\u06dc\u06e8\u06ec\u06dc\u06d6\u06d8\u06e1\u06e8\u06e2\u06d8\u06e8\u06e4\u06ec\u06e2\u06e7\u06dc\u06d9\u06e4\u06d7\u06e6\u06e5\u06d8\u06db\u06d9\u06db\u06e1\u06da\u06db\u06e7\u06d7\u06dc"

    goto :goto_0

    :sswitch_2
    const v3, 0x7bba87a2

    const-string v0, "\u06db\u06d9\u06d7\u06d6\u06e1\u06d7\u06e8\u06e0\u06db\u06db\u06eb\u06ec\u06e0\u06e7\u06e1\u06d8\u06e4\u06e6\u06e0\u06df\u06da\u06db\u06da\u06e2\u06e5\u06d8\u06e2\u06df\u06e8\u06e4\u06e0\u06d6\u06d8\u06db\u06e1\u06e4\u06e8\u06df\u06db\u06d8\u06e7\u06dc\u06d8\u06dc\u06e5\u06e2"

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    xor-int/2addr v4, v3

    sparse-switch v4, :sswitch_data_1

    goto :goto_1

    :sswitch_3
    const v4, 0x78b21da5

    const-string v0, "\u06d9\u06d6\u06e6\u06e4\u06e2\u06e8\u06d8\u06d6\u06dc\u06dc\u06e2\u06e8\u06d7\u06d8\u06df\u06e6\u06e1\u06e1\u06d6\u06e8\u06e5\u06ec\u06e6\u06df\u06e8\u06d8\u06eb\u06df\u06dc\u06d8\u06dc\u06eb\u06db"

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v5

    xor-int/2addr v5, v4

    sparse-switch v5, :sswitch_data_2

    goto :goto_2

    :sswitch_4
    if-eqz v1, :cond_0

    const-string v0, "\u06d9\u06da\u06e0\u06e5\u06dc\u06e4\u06d9\u06df\u06d8\u06d8\u06d7\u06df\u06dc\u06d9\u06df\u06e1\u06d8\u06e5\u06eb\u06e1\u06e5\u06e6\u06d7\u06e8\u06e6\u06df\u06df\u06dc\u06d8\u06d8\u06eb\u06dc\u06e5\u06d8\u06e6\u06e5\u06eb\u06d6\u06d6\u06dc"

    goto :goto_2

    :sswitch_5
    const-string v0, "\u06e6\u06d8\u06e1\u06e5\u06e8\u06e7\u06d8\u06e5\u06db\u06e0\u06ec\u06e5\u06e4\u06db\u06d8\u06e5\u06df\u06e2\u06da\u06d6\u06d8\u06d8\u06d6\u06e2\u06d9\u06d6\u06e2\u06d9\u06db\u06d7\u06e1\u06d8\u06e0\u06e5\u06e8\u06da\u06e6\u06e2\u06e4\u06d7\u06d7\u06ec\u06e8\u06dc\u06d8"

    goto :goto_1

    :cond_0
    const-string v0, "\u06ec\u06ec\u06e6\u06d8\u06d7\u06eb\u06ec\u06d9\u06e8\u06e8\u06d8\u06e8\u06e8\u06e2\u06dc\u06d7\u06e5\u06d8\u06db\u06e7\u06d6\u06e1\u06db\u06db\u06e5\u06e2\u06e6\u06e6\u06d8\u06dc\u06e0\u06d7\u06db\u06e6\u06eb\u06ec\u06e0\u06dc\u06dc\u06d8\u06ec\u06eb\u06eb\u06e8\u06e5\u06e5\u06da\u06dc\u06e6\u06d8\u06d8\u06ec\u06e6\u06d8\u06e8\u06e8\u06e8\u06d8\u06e8\u06eb\u06e0"

    goto :goto_2

    :sswitch_6
    const-string v0, "\u06e0\u06e7\u06e2\u06e6\u06e1\u06e8\u06d8\u06d7\u06e4\u06d9\u06da\u06e1\u06d8\u06ec\u06d7\u06e6\u06d8\u06e6\u06e7\u06d7\u06eb\u06ec\u06e8\u06d8\u06eb\u06d9\u06e1\u06d8\u06e5\u06dc\u06d8\u06e2\u06db\u06db\u06df\u06e2\u06e6\u06e4\u06d8\u06d8\u06ec\u06db\u06e7\u06d7\u06e8\u06db"

    goto :goto_2

    :sswitch_7
    const-string v0, "\u06e4\u06d8\u06e8\u06d6\u06e0\u06ec\u06e1\u06d8\u06d8\u06d8\u06e4\u06d7\u06db\u06e2\u06d8\u06e2\u06e1\u06e2\u06e6\u06d8\u06e6\u06e6\u06eb\u06e1\u06d9\u06e8\u06e8\u06d9\u06da\u06e0\u06e0\u06e6\u06da\u06e6\u06d9\u06e6\u06d8\u06d6\u06d8\u06e7\u06e5\u06e5\u06e8\u06d8\u06ec\u06dc\u06e5\u06e8\u06d9\u06df"

    goto :goto_1

    :sswitch_8
    const-string v0, "\u06ec\u06e1\u06e4\u06dc\u06dc\u06e7\u06da\u06e2\u06dc\u06d8\u06e6\u06ec\u06d8\u06d8\u06e0\u06e2\u06e7\u06e8\u06dc\u06e1\u06d9\u06eb\u06d8\u06d8\u06e5\u06eb\u06e8\u06e7\u06e8\u06dc\u06e7\u06ec"

    goto :goto_1

    :sswitch_9
    const-string v0, "\u06e0\u06e4\u06e1\u06d8\u06e1\u06e7\u06dc\u06d8\u06df\u06e7\u06dc\u06d8\u06d9\u06e1\u06dc\u06d8\u06eb\u06dc\u06dc\u06e4\u06e2\u06e5\u06d8\u06e4\u06e5\u06e2\u06e1\u06d8\u06da\u06e1\u06e2\u06eb\u06e1\u06e1\u06d8"

    goto :goto_0

    :sswitch_a
    invoke-virtual {v1}, Landroid/os/CountDownTimer;->cancel()V

    const-string v0, "\u06e6\u06e8\u06e7\u06e1\u06dc\u06e4\u06eb\u06e2\u06e7\u06e6\u06db\u06e6\u06d7\u06df\u06e6\u06e0\u06e2\u06d9\u06e1\u06ec\u06d6\u06d8\u06df\u06e2\u06d7\u06e5\u06e6\u06e7\u06d6\u06e2\u06d8\u06d8\u06d8\u06e1\u06ec\u06e7\u06da\u06d9\u06e1\u06d8\u06e7\u06e2\u06ec"

    goto :goto_0

    :sswitch_b
    const/4 v0, 0x0

    iput v0, p0, Lcom/cyjh/elfin/ui/activity/SplashActivity;->o0OoOo0:I

    const-string v0, "\u06dc\u06ec\u06e7\u06df\u06e6\u06e7\u06d8\u06ec\u06e2\u06e8\u06d8\u06eb\u06eb\u06e5\u06d8\u06db\u06e6\u06d6\u06d8\u06e7\u06e6\u06d6\u06ec\u06dc\u06ec\u06e7\u06e4\u06e2\u06d8\u06df\u06e5\u06ec\u06e4\u06ec\u06da\u06db\u06d8\u06d8\u06e2\u06dc\u06d7\u06d7\u06eb\u06e1\u06d8\u06d6\u06e7\u06d6\u06d8\u06d8\u06d6\u06e1\u06d6\u06e2\u06dc\u06e5\u06e4\u06e2\u06e7\u06d8\u06e1"

    goto :goto_0

    :sswitch_c
    iput-object v2, p0, Lcom/cyjh/elfin/ui/activity/SplashActivity;->ooOO:Lcom/cyjh/elfin/ui/activity/SplashActivity$OooO;

    const-string v0, "\u06d8\u06df\u06e1\u06d8\u06e8\u06d6\u06e5\u06d8\u06eb\u06e1\u06d8\u06d8\u06eb\u06d6\u06d8\u06dc\u06d7\u06d7\u06ec\u06db\u06ec\u06e7\u06e1\u06ec\u06ec\u06e4\u06dc\u06d8\u06e0\u06e2\u06dc\u06d8\u06ec\u06e2\u06d9\u06e4\u06e6\u06e5\u06d8\u06d9\u06d9\u06e6"

    goto :goto_0

    :sswitch_d
    const-string v0, "\u06d8\u06df\u06e1\u06d8\u06e8\u06d6\u06e5\u06d8\u06eb\u06e1\u06d8\u06d8\u06eb\u06d6\u06d8\u06dc\u06d7\u06d7\u06ec\u06db\u06ec\u06e7\u06e1\u06ec\u06ec\u06e4\u06dc\u06d8\u06e0\u06e2\u06dc\u06d8\u06ec\u06e2\u06d9\u06e4\u06e6\u06e5\u06d8\u06d9\u06d9\u06e6"

    goto :goto_0

    :sswitch_e
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x5f35db89 -> :sswitch_a
        -0x212b3b9d -> :sswitch_c
        0x2252529 -> :sswitch_e
        0x4ee82363 -> :sswitch_0
        0x5a1b295e -> :sswitch_b
        0x60bba467 -> :sswitch_2
        0x74770016 -> :sswitch_1
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x7ddf246f -> :sswitch_d
        -0x2b660b51 -> :sswitch_8
        -0x16573688 -> :sswitch_9
        -0x115a067c -> :sswitch_3
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        -0x74c33641 -> :sswitch_6
        -0x3bda3424 -> :sswitch_5
        -0x11644bd8 -> :sswitch_4
        0x2c6197d -> :sswitch_7
    .end sparse-switch
.end method

.method private OooOoO0(Ljava/lang/String;)V
    .locals 6

    const/4 v2, 0x0

    const-string v0, "\u06e0\u06e5\u06d6\u06d8\u06e5\u06dc\u06e5\u06d8\u06d7\u06dc\u06db\u06e7\u06da\u06e5\u06d8\u06e2\u06e5\u06d8\u06dc\u06eb\u06da\u06e4\u06e1\u06eb\u06eb\u06e6\u06d6\u06dc\u06eb\u06da\u06e5\u06d6\u06e1\u06d8"

    move-object v1, v2

    move-object v3, v2

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v4, 0x22d

    xor-int/2addr v2, v4

    xor-int/lit16 v2, v2, 0x353

    const/16 v4, 0x150

    const v5, -0x70dca569

    xor-int/2addr v2, v4

    xor-int/2addr v2, v5

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d7\u06d6\u06d6\u06ec\u06d6\u06dc\u06d8\u06dc\u06d8\u06ec\u06d9\u06da\u06e6\u06d8\u06d6\u06d9\u06dc\u06d8\u06e0\u06e6\u06e4\u06da\u06dc\u06e4\u06d9\u06ec\u06dc\u06d8\u06e1\u06eb\u06d7\u06e0\u06ec\u06eb\u06e7\u06e4\u06df\u06eb\u06d6\u06d6\u06d7\u06d9\u06e5\u06d8\u06df\u06e1\u06eb\u06e8\u06e8\u06ec\u06df"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06ec\u06d9\u06d9\u06e1\u06e1\u06e5\u06dc\u06e5\u06e6\u06d8\u06d9\u06e4\u06e1\u06d8\u06df\u06eb\u06ec\u06e8\u06e5\u06d7\u06d7\u06db\u06df\u06e6\u06e0\u06d9\u06d8\u06ec\u06e2\u06dc\u06e8\u06e0\u06e6\u06d6\u06ec\u06e4\u06db\u06d9\u06db\u06e6\u06dc\u06d8\u06dc\u06e6\u06d8\u06d8"

    goto :goto_0

    :sswitch_2
    const v2, 0x67a6add9

    const-string v0, "\u06e4\u06e2\u06e8\u06db\u06e7\u06d8\u06e2\u06d9\u06eb\u06eb\u06db\u06ec\u06e4\u06d8\u06d7\u06ec\u06d6\u06e2\u06e8\u06db\u06e1\u06e1\u06df\u06e8\u06d9\u06db\u06d6\u06e4\u06e7\u06e1\u06d8\u06e7\u06eb\u06dc\u06d8\u06db\u06e5\u06d8\u06db\u06e6\u06e7\u06db\u06eb\u06eb\u06e2\u06e6\u06e4\u06e5\u06db\u06d9\u06e8\u06eb\u06e1\u06d8\u06eb\u06e2\u06db"

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    xor-int/2addr v4, v2

    sparse-switch v4, :sswitch_data_1

    goto :goto_1

    :sswitch_3
    const v4, -0x69479d46

    const-string v0, "\u06e1\u06e4\u06ec\u06e1\u06e4\u06e0\u06d6\u06db\u06e8\u06e8\u06e4\u06e1\u06d8\u06eb\u06e4\u06da\u06e4\u06da\u06d9\u06eb\u06d8\u06e4\u06e7\u06e7\u06e4\u06db\u06d8\u06e5\u06d8\u06db\u06dc\u06dc\u06d9\u06db\u06d8\u06d8\u06d8\u06e8\u06e1\u06d8\u06d9\u06e4\u06df\u06da\u06e0\u06e5\u06e5\u06e8\u06e1\u06d9\u06e0\u06e5\u06e4\u06e6\u06d6\u06e8\u06e0\u06d6\u06d8"

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v5

    xor-int/2addr v5, v4

    sparse-switch v5, :sswitch_data_2

    goto :goto_2

    :sswitch_4
    const-string v0, "\u06e4\u06ec\u06d8\u06d8\u06d8\u06db\u06e1\u06d8\u06eb\u06da\u06da\u06d9\u06e0\u06e0\u06e2\u06d7\u06dc\u06d8\u06d8\u06e2\u06e0\u06e7\u06d7\u06e6\u06d8\u06e7\u06df\u06e8\u06d7\u06e6\u06e7\u06d7\u06eb\u06da"

    goto :goto_2

    :sswitch_5
    const-string v0, "\u06dc\u06ec\u06e5\u06e1\u06e2\u06eb\u06e1\u06e4\u06d8\u06d8\u06df\u06ec\u06db\u06d9\u06e1\u06d8\u06db\u06e0\u06e2\u06e2\u06e4\u06e1\u06d7\u06e5\u06d9\u06e7\u06e1\u06d8\u06d8\u06e0\u06e8\u06e8\u06d8"

    goto :goto_1

    :cond_0
    const-string v0, "\u06e7\u06d7\u06e8\u06d8\u06e7\u06e4\u06e5\u06ec\u06eb\u06da\u06dc\u06dc\u06eb\u06e2\u06e2\u06d6\u06d8\u06e2\u06e4\u06e4\u06e5\u06e1\u06e7\u06d8\u06e1\u06d7\u06db\u06e8\u06d6\u06eb\u06d8\u06e7\u06e5\u06db\u06e1\u06e6\u06d8\u06e5\u06e1\u06e5\u06d8\u06ec\u06e1\u06d8\u06e7\u06e0\u06dc\u06d8\u06df\u06da\u06db\u06e4\u06d7\u06d8\u06db\u06d9\u06e0\u06eb\u06d9\u06d8"

    goto :goto_2

    :sswitch_6
    const-string v0, ".gif"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u06d9\u06db\u06db\u06dc\u06e4\u06d7\u06e6\u06dc\u06e7\u06d8\u06d9\u06da\u06d9\u06df\u06df\u06d8\u06e8\u06da\u06d8\u06df\u06dc\u06eb\u06e7\u06e0\u06eb\u06eb\u06ec\u06e8\u06e5\u06d8\u06eb\u06e8\u06e5\u06e2\u06dc\u06e1\u06d8\u06d8"

    goto :goto_2

    :sswitch_7
    const-string v0, "\u06db\u06e6\u06e6\u06d9\u06da\u06d9\u06db\u06d6\u06e5\u06d9\u06e2\u06d7\u06e0\u06e5\u06e0\u06df\u06e6\u06e7\u06df\u06e0\u06eb\u06e0\u06e2\u06da\u06e6\u06df\u06e2\u06da\u06dc\u06dc\u06d8"

    goto :goto_1

    :sswitch_8
    const-string v0, "\u06e5\u06e5\u06d7\u06e4\u06e8\u06e5\u06dc\u06d6\u06e5\u06d8\u06e2\u06d7\u06ec\u06e7\u06df\u06e6\u06d8\u06db\u06e2\u06da\u06db\u06e7\u06e6\u06da\u06d8\u06d8\u06d8\u06e4\u06ec\u06e8\u06e2\u06db\u06eb"

    goto :goto_1

    :sswitch_9
    const-string v0, "\u06e2\u06e4\u06d8\u06d8\u06e7\u06eb\u06eb\u06d8\u06df\u06d9\u06e0\u06db\u06d6\u06e4\u06e1\u06db\u06df\u06e6\u06e6\u06e1\u06d9\u06e7\u06e1\u06e6\u06d8\u06e0\u06e6\u06d8\u06e4\u06e6\u06df\u06d8\u06da\u06e5\u06e8\u06d6\u06eb\u06eb\u06d6\u06d6\u06db"

    goto :goto_0

    :sswitch_a
    invoke-static {}, Lz2/m4;->OooO0OO()Lz2/p1;

    move-result-object v2

    const-string v0, "\u06e4\u06da\u06dc\u06d9\u06e4\u06e6\u06e8\u06df\u06d8\u06e2\u06e8\u06e0\u06e4\u06da\u06db\u06eb\u06e4\u06e8\u06d8\u06dc\u06e6\u06df\u06d9\u06eb\u06e5\u06eb\u06da\u06e6\u06d8\u06ec\u06e7\u06da\u06eb\u06da\u06e8\u06d8\u06eb\u06d9\u06dc"

    move-object v3, v2

    goto :goto_0

    :sswitch_b
    sget-object v0, Lz2/o0oo0000;->OooO0OO:Lz2/o0oo0000;

    invoke-virtual {v3, v0}, Lz2/i1;->OooOOoo(Lz2/o0oo0000;)Lz2/i1;

    const-string v0, "\u06d8\u06e0\u06e8\u06e6\u06e4\u06e8\u06e4\u06e8\u06e8\u06d8\u06eb\u06e4\u06e1\u06d8\u06e7\u06e5\u06e5\u06d8\u06e6\u06e8\u06e4\u06eb\u06e5\u06dc\u06df\u06e0\u06e0\u06e4\u06d8\u06e2\u06d7\u06da\u06d7\u06e2\u06d8\u06e7\u06d8\u06d6\u06df\u06d6\u06d8\u06df\u06e6\u06df\u06e4\u06d8\u06e8\u06dc\u06da\u06d7\u06e0\u06e6\u06dc\u06d8\u06e7\u06e5\u06db\u06e8\u06e1\u06e8\u06d8"

    goto :goto_0

    :sswitch_c
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SplashActivity;->OooooOo:Landroid/widget/ImageView;

    invoke-static {p0, p1, v0, v3}, Lz2/m4;->OooOOO(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;Lz2/p1;)V

    const-string v0, "\u06eb\u06dc\u06da\u06dc\u06d9\u06e4\u06db\u06e8\u06ec\u06eb\u06e7\u06db\u06d8\u06e0\u06e6\u06e1\u06d8\u06eb\u06d7\u06d9\u06e6\u06d8\u06dc\u06db\u06d6\u06d7\u06eb\u06e4\u06e7\u06e2\u06e2\u06d9\u06d9\u06d9\u06eb\u06e2\u06e5\u06d8\u06db\u06d6\u06da\u06d6\u06e8\u06e4\u06da\u06e4\u06e6\u06e0\u06d7\u06e1"

    goto :goto_0

    :sswitch_d
    invoke-static {}, Lz2/m4;->OooO0OO()Lz2/p1;

    move-result-object v1

    const-string v0, "\u06db\u06e6\u06e8\u06eb\u06da\u06e8\u06e5\u06db\u06e5\u06e5\u06d8\u06e2\u06e6\u06e6\u06dc\u06da\u06eb\u06da\u06e1\u06e6\u06e7\u06e4\u06e2\u06e6\u06d8\u06e2\u06e8\u06e5\u06d8\u06eb\u06e1\u06d8\u06d8\u06d6\u06e4\u06e2\u06db\u06e7\u06e4\u06e6\u06e1\u06da\u06e8\u06df\u06e1\u06df\u06e6\u06d8\u06d9\u06dc\u06da\u06e6\u06e1\u06e8\u06e5\u06da\u06d7"

    goto :goto_0

    :sswitch_e
    sget-object v0, Lz2/o0oo0000;->OooO0O0:Lz2/o0oo0000;

    invoke-virtual {v1, v0}, Lz2/i1;->OooOOoo(Lz2/o0oo0000;)Lz2/i1;

    const-string v0, "\u06e2\u06e7\u06da\u06e6\u06e6\u06d8\u06eb\u06e4\u06dc\u06e8\u06da\u06e6\u06d8\u06d9\u06e7\u06e2\u06d8\u06dc\u06d7\u06d6\u06e8\u06e6\u06d8\u06e8\u06e6\u06d9\u06e7\u06d9\u06eb\u06df\u06e6\u06e1\u06d8\u06e1\u06d6\u06e6\u06d8\u06d6\u06df\u06e7"

    goto :goto_0

    :sswitch_f
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SplashActivity;->OooooOo:Landroid/widget/ImageView;

    invoke-static {p0, p1, v0, v1}, Lz2/m4;->OooOO0O(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;Lz2/p1;)V

    const-string v0, "\u06e8\u06eb\u06e7\u06e6\u06e6\u06dc\u06d8\u06df\u06d6\u06d6\u06d9\u06e6\u06e7\u06e7\u06d8\u06d8\u06e6\u06e8\u06e6\u06e5\u06e1\u06e7\u06da\u06da\u06eb\u06e5\u06d9\u06df\u06eb\u06d6\u06d8\u06d7\u06eb\u06d6\u06e6\u06e7\u06e8\u06d8"

    goto/16 :goto_0

    :sswitch_10
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SplashActivity;->Ooooooo:Lz2/rh;

    invoke-virtual {v0}, Lz2/rh;->OooO0o0()V

    const-string v0, "\u06d8\u06eb\u06e4\u06e5\u06e2\u06e5\u06d8\u06d6\u06db\u06e0\u06e0\u06dc\u06e7\u06d8\u06db\u06d9\u06df\u06eb\u06e5\u06d9\u06e8\u06e1\u06d8\u06e4\u06e0\u06dc\u06d8\u06e2\u06d6\u06e1\u06d8\u06e5\u06e2\u06dc"

    goto/16 :goto_0

    :sswitch_11
    const-string v0, "\u06ec\u06ec\u06eb\u06e7\u06d8\u06d8\u06d8\u06eb\u06dc\u06e1\u06e6\u06e8\u06df\u06e6\u06dc\u06d7\u06d6\u06ec\u06d6\u06d8\u06d6\u06e4\u06da\u06e5\u06d9\u06e5\u06dc\u06ec\u06e6\u06d8\u06e5\u06e5\u06e6\u06d8"

    goto/16 :goto_0

    :sswitch_12
    const-string v0, "\u06e8\u06eb\u06e7\u06e6\u06e6\u06dc\u06d8\u06df\u06d6\u06d6\u06d9\u06e6\u06e7\u06e7\u06d8\u06d8\u06e6\u06e8\u06e6\u06e5\u06e1\u06e7\u06da\u06da\u06eb\u06e5\u06d9\u06df\u06eb\u06d6\u06d8\u06d7\u06eb\u06d6\u06e6\u06e7\u06e8\u06d8"

    goto/16 :goto_0

    :sswitch_13
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7c5e9505 -> :sswitch_e
        -0x6c2306c4 -> :sswitch_0
        -0x6ad417d3 -> :sswitch_f
        -0x609b83ef -> :sswitch_a
        -0x5d794e99 -> :sswitch_12
        -0x533f4553 -> :sswitch_1
        -0x4f011478 -> :sswitch_2
        0x322aa7a0 -> :sswitch_10
        0x32ea6e86 -> :sswitch_c
        0x4843bcb6 -> :sswitch_b
        0x4cc3043b -> :sswitch_13
        0x670922f0 -> :sswitch_d
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x60ab4b88 -> :sswitch_11
        -0x58daf90c -> :sswitch_3
        0x666d68b8 -> :sswitch_9
        0x7d2ecf4a -> :sswitch_8
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        -0x60839446 -> :sswitch_6
        -0x4ae12c91 -> :sswitch_5
        0x1f00e49d -> :sswitch_7
        0x47e74516 -> :sswitch_4
    .end sparse-switch
.end method

.method private OooOoOO()V
    .locals 8

    const/4 v2, 0x0

    const-string v0, "\u06eb\u06ec\u06e6\u06e6\u06d8\u06da\u06e0\u06ec\u06d6\u06d8\u06e2\u06eb\u06d7\u06e5\u06d8\u06df\u06d8\u06e0\u06dc\u06eb\u06e7\u06dc\u06d9\u06e4\u06eb\u06db\u06ec\u06e7\u06e2\u06e8\u06e7\u06d8\u06da\u06e4\u06e2\u06d6\u06d7\u06d8\u06d8\u06e8\u06e5\u06ec\u06eb\u06e0\u06ec"

    move-object v1, v2

    move-object v3, v2

    move-object v4, v2

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/16 v6, 0xcd

    xor-int/2addr v5, v6

    xor-int/lit16 v5, v5, 0x317

    const/16 v6, 0x18b

    const v7, 0xad4cd24

    xor-int/2addr v5, v6

    xor-int/2addr v5, v7

    sparse-switch v5, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e6\u06d7\u06e1\u06e5\u06e4\u06d7\u06da\u06e8\u06e5\u06e6\u06e5\u06e5\u06d7\u06dc\u06e1\u06e2\u06e7\u06e8\u06d8\u06e1\u06d8\u06e7\u06d8\u06e5\u06d8\u06eb\u06e5\u06e8\u06db\u06ec\u06d7\u06e4\u06d6\u06e5\u06db\u06db\u06e6"

    goto :goto_0

    :sswitch_1
    const v5, -0x3fa9ca08

    const-string v0, "\u06db\u06e4\u06e8\u06d8\u06d9\u06d9\u06dc\u06d8\u06e1\u06d7\u06e5\u06df\u06d9\u06e7\u06d9\u06e1\u06d9\u06dc\u06d9\u06e5\u06d7\u06e2\u06d7\u06df\u06dc\u06d9\u06e1\u06e4\u06e7\u06eb\u06df\u06dc\u06e2\u06dc\u06d6\u06da\u06d8\u06e4\u06da\u06d6\u06d8\u06da\u06e6\u06da\u06e2\u06d6\u06df\u06d7\u06e5\u06e1\u06d6\u06e6\u06e6\u06e2\u06d8\u06e0"

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v6

    xor-int/2addr v6, v5

    sparse-switch v6, :sswitch_data_1

    goto :goto_1

    :sswitch_2
    const-string v0, "\u06e2\u06db\u06e1\u06d8\u06e5\u06ec\u06e7\u06df\u06e0\u06d8\u06d9\u06eb\u06e4\u06e1\u06e1\u06dc\u06e4\u06d8\u06d8\u06ec\u06e5\u06e6\u06d8\u06e7\u06da\u06e8\u06e5\u06d8\u06e0\u06dc\u06e1\u06db\u06da\u06e8\u06d8\u06d8\u06e8\u06eb\u06d6\u06df\u06e5\u06e1\u06d8\u06d9\u06eb\u06e4\u06d9\u06e8\u06da\u06ec\u06e4\u06e7"

    goto :goto_0

    :sswitch_3
    const-string v0, "\u06e4\u06e8\u06e8\u06df\u06e7\u06e2\u06e1\u06e7\u06eb\u06df\u06e2\u06dc\u06db\u06d6\u06d8\u06e2\u06d6\u06e8\u06d8\u06e7\u06db\u06d6\u06d8\u06d6\u06d7\u06e5\u06d9\u06dc\u06e0\u06da\u06db\u06dc\u06e0\u06d6\u06dc\u06d8\u06eb\u06d8"

    goto :goto_1

    :sswitch_4
    const v6, 0x1f4ea59d

    const-string v0, "\u06e8\u06e2\u06e6\u06ec\u06e5\u06d6\u06d8\u06da\u06d8\u06e4\u06db\u06dc\u06e8\u06da\u06e7\u06e2\u06e8\u06d8\u06e2\u06d8\u06e5\u06e1\u06d8\u06d6\u06da\u06d7\u06da\u06e1\u06da\u06e7\u06ec\u06df"

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v7

    xor-int/2addr v7, v6

    sparse-switch v7, :sswitch_data_2

    goto :goto_2

    :sswitch_5
    const-string v0, "\u06e7\u06e0\u06d7\u06e0\u06d8\u06d8\u06d7\u06e0\u06df\u06d7\u06dc\u06e4\u06e0\u06d6\u06d8\u06eb\u06d8\u06e1\u06e5\u06db\u06e0\u06eb\u06d8\u06e2\u06dc\u06ec\u06e4\u06d7\u06eb\u06e7\u06e1\u06e7\u06e8\u06d8\u06e7\u06e2\u06e5\u06d8\u06db\u06e1\u06d8\u06e8\u06e4\u06d6\u06d8\u06d9\u06dc\u06d8\u06eb\u06e0\u06d8"

    goto :goto_2

    :cond_0
    const-string v0, "\u06e7\u06da\u06e1\u06e7\u06e8\u06d8\u06d8\u06dc\u06d7\u06dc\u06d8\u06e6\u06e4\u06e5\u06d8\u06e4\u06eb\u06e0\u06db\u06e1\u06e6\u06d8\u06e0\u06e4\u06d9\u06e8\u06e8\u06e7\u06e1\u06e7\u06e2\u06e5\u06da\u06e5\u06d8\u06e8\u06e7\u06e2\u06e4\u06e6\u06d6\u06d8\u06d9\u06dc\u06dc\u06df\u06dc\u06da\u06d9\u06e4\u06db\u06e7\u06d8\u06e7\u06d8\u06e7\u06e8\u06e7\u06d8\u06e8\u06db"

    goto :goto_2

    :sswitch_6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x17

    if-lt v0, v7, :cond_0

    const-string v0, "\u06d7\u06e4\u06e1\u06e0\u06e7\u06da\u06db\u06e5\u06e4\u06da\u06e6\u06d8\u06eb\u06ec\u06e1\u06d8\u06e8\u06e2\u06e6\u06d8\u06df\u06dc\u06da\u06d8\u06d6\u06d7\u06e1\u06e8\u06e6\u06ec\u06df\u06e2\u06e0\u06db\u06d8\u06d8\u06d9\u06e6\u06e4"

    goto :goto_2

    :sswitch_7
    const-string v0, "\u06e0\u06e2\u06e2\u06d6\u06e1\u06e4\u06e1\u06d8\u06dc\u06d8\u06e2\u06e7\u06e1\u06d8\u06df\u06d7\u06d6\u06e5\u06dc\u06e6\u06d8\u06df\u06da\u06e5\u06e5\u06dc\u06dc\u06e7\u06d6\u06d8\u06e4\u06d7\u06e8\u06d8\u06e0\u06e5\u06e4\u06d9\u06da\u06d8\u06e0\u06da\u06d8\u06e4\u06e5\u06e8\u06d8\u06eb\u06d6\u06e7\u06eb\u06e8\u06d7\u06e4\u06e0\u06e2\u06e5\u06e5"

    goto :goto_1

    :sswitch_8
    const-string v0, "\u06e6\u06eb\u06e0\u06ec\u06d6\u06e6\u06ec\u06ec\u06e5\u06d8\u06d6\u06d9\u06d7\u06eb\u06dc\u06d7\u06e1\u06e6\u06d8\u06d9\u06e2\u06d8\u06d8\u06e8\u06e7\u06dc\u06e5\u06e7\u06e6\u06d7\u06e5\u06e5\u06d8\u06d8\u06d8\u06e8\u06e7\u06e5\u06d6\u06e2\u06e5\u06eb\u06e7\u06da\u06e8\u06db\u06db\u06da\u06d8\u06e6\u06d7"

    goto :goto_1

    :sswitch_9
    const v5, -0x12a01250

    const-string v0, "\u06e2\u06d8\u06dc\u06d9\u06d9\u06e0\u06da\u06e7\u06e5\u06ec\u06e4\u06da\u06d9\u06e4\u06eb\u06e1\u06d9\u06d8\u06d6\u06d6\u06d8\u06db\u06e5\u06d6\u06e6\u06d7\u06e0\u06e4\u06da\u06e2\u06d7\u06d6\u06e4\u06ec\u06e7\u06e2"

    :goto_3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v6

    xor-int/2addr v6, v5

    sparse-switch v6, :sswitch_data_3

    goto :goto_3

    :sswitch_a
    const-string v0, "\u06d9\u06ec\u06e8\u06d8\u06e2\u06e2\u06e0\u06e1\u06e0\u06db\u06e0\u06e4\u06d6\u06db\u06e4\u06e1\u06d9\u06df\u06e7\u06db\u06e2\u06d7\u06e8\u06d8\u06e8\u06da\u06e5\u06e0\u06e5\u06e6\u06e7\u06d8\u06e1\u06e7\u06d9\u06e0\u06e7\u06e1\u06eb\u06e8\u06e0\u06e0\u06d7\u06e5\u06d8\u06e7\u06e1\u06e7\u06d8\u06d8\u06d8\u06e0"

    goto :goto_3

    :sswitch_b
    const-string v0, "\u06d7\u06ec\u06e7\u06ec\u06db\u06e5\u06ec\u06e2\u06db\u06d9\u06dc\u06d8\u06dc\u06db\u06e8\u06d8\u06eb\u06e4\u06e0\u06db\u06df\u06dc\u06e8\u06e6\u06e6\u06e5\u06e7\u06e0\u06eb\u06e7\u06db"

    goto :goto_3

    :sswitch_c
    const v6, -0x2e7c1656

    const-string v0, "\u06e1\u06d8\u06e1\u06d8\u06db\u06e4\u06dc\u06d8\u06ec\u06e0\u06e7\u06d8\u06df\u06e4\u06df\u06df\u06e2\u06d9\u06d8\u06d8\u06e8\u06e6\u06e7\u06e0\u06eb\u06d6\u06d8\u06e7\u06e5\u06e4\u06e4\u06da\u06d8"

    :goto_4
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v7

    xor-int/2addr v7, v6

    sparse-switch v7, :sswitch_data_4

    goto :goto_4

    :sswitch_d
    invoke-static {p0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "\u06e1\u06e1\u06d8\u06d8\u06e0\u06e6\u06da\u06df\u06e0\u06e1\u06eb\u06e2\u06dc\u06d8\u06e7\u06e5\u06e5\u06d6\u06e1\u06e8\u06e2\u06d9\u06d9\u06dc\u06e1\u06d7\u06d8\u06e0\u06df\u06e4\u06e6\u06da\u06da\u06e8\u06d8\u06dc\u06e5\u06d9\u06e5\u06df\u06d8\u06e2\u06e7\u06e8"

    goto :goto_4

    :cond_1
    const-string v0, "\u06ec\u06e0\u06e8\u06d8\u06df\u06e7\u06dc\u06d8\u06dc\u06e2\u06db\u06e6\u06e7\u06e5\u06d8\u06d9\u06eb\u06d6\u06d8\u06e6\u06da\u06e1\u06d8\u06db\u06e7\u06e2\u06d8\u06e4\u06d9\u06d6\u06dc\u06d7\u06e5\u06d7\u06e0\u06e1\u06ec\u06e5\u06ec\u06eb\u06e1\u06d8"

    goto :goto_4

    :sswitch_e
    const-string v0, "\u06df\u06e7\u06ec\u06e4\u06e6\u06dc\u06e2\u06d6\u06da\u06dc\u06e0\u06d7\u06db\u06e6\u06db\u06e8\u06e8\u06dc\u06d8\u06e4\u06dc\u06dc\u06d8\u06d6\u06db\u06dc\u06d8\u06e0\u06da\u06e0\u06e5\u06ec\u06ec"

    goto :goto_4

    :sswitch_f
    const-string v0, "\u06d9\u06e2\u06e5\u06d8\u06e0\u06d6\u06e6\u06dc\u06e1\u06ec\u06d6\u06e6\u06e8\u06dc\u06dc\u06df\u06d9\u06e4\u06db\u06e0\u06d8\u06d8\u06db\u06d6\u06eb\u06e8\u06ec\u06e2\u06d9\u06db\u06d9\u06e4\u06d8\u06ec\u06d9\u06e0\u06e8\u06d8\u06d8\u06e6\u06e8\u06e5\u06ec\u06d9\u06d6\u06e5\u06e4\u06e6\u06e7\u06dc\u06d8"

    goto :goto_3

    :sswitch_10
    const-string v0, "\u06e4\u06e7\u06eb\u06db\u06dc\u06d9\u06e4\u06d9\u06d6\u06e7\u06e5\u06e8\u06d8\u06db\u06ec\u06e1\u06e2\u06dc\u06e5\u06ec\u06e4\u06d8\u06d8\u06df\u06e0\u06ec\u06e5\u06e1\u06d8\u06e4\u06d6\u06e8\u06d8\u06e6\u06df\u06db\u06d6\u06d8\u06da"

    goto/16 :goto_0

    :sswitch_11
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v4, 0x7f0c00e0

    invoke-virtual {v0, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    const-string v0, "\u06d8\u06e0\u06e6\u06d8\u06e5\u06da\u06e5\u06ec\u06e2\u06e6\u06d8\u06e1\u06e4\u06e5\u06e7\u06d9\u06eb\u06d8\u06e4\u06dc\u06d8\u06e5\u06db\u06e1\u06d8\u06e7\u06e0\u06e2\u06eb\u06e6\u06e8\u06d8\u06db\u06e2\u06e8\u06d8\u06d7\u06eb\u06e8\u06d8\u06e8\u06ec\u06dc\u06d8"

    goto/16 :goto_0

    :sswitch_12
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v0, "\u06df\u06e4\u06db\u06eb\u06d6\u06eb\u06e6\u06df\u06d6\u06d8\u06d6\u06db\u06d9\u06e2\u06e1\u06ec\u06e1\u06da\u06db\u06eb\u06ec\u06eb\u06df\u06e5\u06e5\u06d8\u06eb\u06e7\u06e8\u06d8"

    goto/16 :goto_0

    :sswitch_13
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const-string v0, "\u06e2\u06d6\u06e0\u06d7\u06e1\u06dc\u06d8\u06e5\u06df\u06e6\u06d8\u06d8\u06d8\u06eb\u06d9\u06eb\u06dc\u06eb\u06e7\u06d7\u06df\u06dc\u06e5\u06d8\u06da\u06d7\u06d6\u06d8\u06e8\u06e6\u06d8\u06dc\u06eb\u06e5\u06dc\u06ec\u06e5\u06d8\u06da\u06d6\u06e1\u06da\u06d8\u06e6\u06eb\u06d8\u06e2"

    goto/16 :goto_0

    :sswitch_14
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const-string v0, "\u06e6\u06e8\u06df\u06d7\u06e4\u06d6\u06d8\u06e5\u06e7\u06d8\u06da\u06e2\u06dc\u06e4\u06d9\u06d6\u06e1\u06e6\u06dc\u06e1\u06eb\u06da\u06d8\u06e1\u06d8\u06d8\u06d9\u06d9\u06e1\u06e6\u06d7\u06d9\u06db\u06d8\u06df\u06e8\u06df\u06e1\u06d8\u06db\u06df\u06e8\u06d8\u06e6\u06d9\u06dc\u06d8\u06df\u06da\u06e2\u06e6\u06e8\u06dc\u06d8"

    goto/16 :goto_0

    :sswitch_15
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    const-string v0, "\u06d8\u06e0\u06dc\u06d8\u06e2\u06ec\u06ec\u06e7\u06d8\u06db\u06d6\u06e6\u06da\u06df\u06e0\u06dc\u06e1\u06db\u06e2\u06d7\u06e6\u06d9\u06dc\u06d9\u06dc\u06d8\u06e2\u06e4\u06e7\u06e5\u06e5\u06e4\u06db\u06d7\u06e7\u06e5\u06e5\u06eb\u06d7\u06e7\u06db\u06db\u06e0\u06e7\u06dc\u06e5\u06e7\u06d8\u06df\u06d7\u06e8\u06d8\u06d9\u06e2\u06e5\u06d7\u06eb\u06e2"

    goto/16 :goto_0

    :sswitch_16
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    const-string v0, "\u06e1\u06e5\u06df\u06e8\u06dc\u06df\u06e2\u06d8\u06da\u06e4\u06e4\u06e6\u06d8\u06d9\u06e1\u06e4\u06d7\u06da\u06e5\u06d8\u06da\u06d9\u06df\u06d7\u06dc\u06dc\u06dc\u06d8\u06e6\u06e1\u06db\u06df\u06db\u06db\u06e1\u06d8\u06e0\u06e1\u06d7"

    goto/16 :goto_0

    :sswitch_17
    const v0, 0x7f090277

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v5, Lz2/j9;

    invoke-direct {v5, p0, v1}, Lz2/j9;-><init>(Lcom/cyjh/elfin/ui/activity/SplashActivity;Landroid/app/AlertDialog;)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "\u06df\u06e5\u06d8\u06db\u06e4\u06da\u06d8\u06e8\u06eb\u06d6\u06da\u06d8\u06d8\u06e0\u06e4\u06e6\u06d8\u06d8\u06e2\u06dc\u06d7\u06db\u06d7\u06e6\u06e6\u06da\u06d9\u06ec\u06dc\u06dc\u06e2\u06d8\u06d8\u06ec\u06eb\u06da\u06e0\u06db\u06e4\u06e7\u06d8\u06d8\u06d6\u06e1\u06e1\u06dc\u06da\u06e4\u06e4\u06dc\u06e2"

    goto/16 :goto_0

    :sswitch_18
    iget-object v0, p0, Lcom/cyjh/common/base/activity/BaseModelActivity;->OooooO0:Landroidx/lifecycle/AndroidViewModel;

    check-cast v0, Lz2/qa;

    invoke-virtual {v0}, Lz2/qa;->Oooo000()V

    const-string v0, "\u06e5\u06d8\u06e4\u06e8\u06e1\u06d8\u06d7\u06df\u06e5\u06d6\u06ec\u06d7\u06e1\u06e5\u06e0\u06da\u06ec\u06d9\u06ec\u06db\u06e2\u06ec\u06e5\u06d8\u06d6\u06df\u06e8\u06e7"

    goto/16 :goto_0

    :sswitch_19
    const-string v0, "\u06e7\u06e4\u06d8\u06d8\u06e0\u06e7\u06db\u06eb\u06e2\u06ec\u06d8\u06d7\u06e8\u06d8\u06db\u06e4\u06e1\u06d6\u06dc\u06ec\u06e6\u06e1\u06db\u06e7\u06dc\u06e0\u06e1\u06da\u06dc\u06e5\u06e6\u06d6\u06e8\u06e5\u06d8\u06d8\u06e8\u06eb\u06e7"

    goto/16 :goto_0

    :sswitch_1a
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x501593ad -> :sswitch_14
        -0x36aa6906 -> :sswitch_18
        -0x26a00c48 -> :sswitch_1a
        -0x1489d6b0 -> :sswitch_12
        0x1837dc3e -> :sswitch_13
        0x22a80134 -> :sswitch_17
        0x23bbbd21 -> :sswitch_9
        0x26355084 -> :sswitch_1a
        0x2a8a2367 -> :sswitch_15
        0x62345335 -> :sswitch_1
        0x634fb3cc -> :sswitch_0
        0x6934794e -> :sswitch_11
        0x6ad19f77 -> :sswitch_16
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x6fbc3bb2 -> :sswitch_4
        -0x36a736d4 -> :sswitch_19
        0x31f2bfbb -> :sswitch_8
        0x64fb6df2 -> :sswitch_2
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        -0x4b99f432 -> :sswitch_7
        -0xd996f34 -> :sswitch_6
        0x37f53c86 -> :sswitch_5
        0x6fc830b9 -> :sswitch_3
    .end sparse-switch

    :sswitch_data_3
    .sparse-switch
        -0x738ab57b -> :sswitch_19
        -0x6f379ab9 -> :sswitch_c
        -0x3dae39e6 -> :sswitch_a
        -0x108dfd3e -> :sswitch_10
    .end sparse-switch

    :sswitch_data_4
    .sparse-switch
        -0x7badd72c -> :sswitch_d
        -0x5e40ac85 -> :sswitch_e
        -0x533c738a -> :sswitch_b
        0xae259b7 -> :sswitch_f
    .end sparse-switch
.end method

.method private OooOoo()V
    .locals 4

    const-string v0, "\u06ec\u06df\u06d7\u06d9\u06e4\u06df\u06d6\u06d8\u06d9\u06e5\u06e5\u06dc\u06d8\u06e7\u06df\u06e4\u06eb\u06e2\u06e2\u06e6\u06d8\u06d6\u06d9\u06e5\u06e5\u06da\u06d8\u06d8\u06df\u06d7\u06e1\u06df\u06d7\u06ec\u06eb\u06eb\u06e5\u06d8\u06e0\u06e7\u06d6\u06d8\u06e6\u06e8\u06e5\u06da\u06e0\u06eb\u06ec\u06dc\u06e6\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x251

    xor-int/2addr v1, v2

    xor-int/lit8 v1, v1, 0x34

    const/16 v2, 0xe

    const v3, -0x62f46cc8

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06db\u06ec\u06e5\u06e7\u06d9\u06ec\u06ec\u06e2\u06e4\u06e6\u06ec\u06d8\u06d8\u06e5\u06e8\u06eb\u06dc\u06e6\u06d8\u06d6\u06da\u06e1\u06e7\u06d8\u06ec\u06e7\u06e0\u06e0\u06e4\u06e6\u06d8\u06d8"

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/cyjh/common/base/activity/BaseModelActivity;->OooooO0:Landroidx/lifecycle/AndroidViewModel;

    check-cast v0, Lz2/qa;

    invoke-virtual {v0}, Lz2/qa;->Oooo0oo()V

    const-string v0, "\u06e2\u06d9\u06e6\u06dc\u06e0\u06e0\u06ec\u06e6\u06e2\u06e0\u06e5\u06e5\u06e2\u06eb\u06df\u06dc\u06da\u06dc\u06dc\u06e7\u06e7\u06eb\u06e6\u06d8\u06e4\u06e1\u06d8\u06da\u06d9\u06e0\u06e0\u06e7\u06db\u06e2\u06d6\u06da\u06df\u06e6\u06da\u06e7\u06e2\u06eb\u06e0\u06e8\u06df\u06d9\u06e5\u06d8\u06e4\u06e0\u06e7\u06db\u06d8\u06d9"

    goto :goto_0

    :sswitch_2
    const/4 v0, 0x1

    invoke-static {v0}, Lz2/y8;->OooOO0o(I)V

    const-string v0, "\u06dc\u06e2\u06d6\u06d8\u06d8\u06db\u06d6\u06d8\u06e4\u06e8\u06e5\u06df\u06eb\u06e5\u06d8\u06e0\u06eb\u06e1\u06d8\u06d9\u06e8\u06d8\u06e7\u06e4\u06e1\u06e5\u06d9\u06d6\u06d8\u06ec\u06df\u06db\u06e8\u06db\u06d8\u06d9\u06e7\u06d6\u06e2\u06da\u06e6\u06e5\u06df\u06e0\u06e7\u06e0\u06e8\u06d6\u06db\u06d6\u06db\u06d6\u06d8\u06e6\u06df\u06e6\u06e7"

    goto :goto_0

    :sswitch_3
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5cb5a186 -> :sswitch_2
        -0x2b68ff75 -> :sswitch_3
        -0x1af1babc -> :sswitch_1
        0x3bd0089d -> :sswitch_0
    .end sparse-switch
.end method

.method private OooOoo0()V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v1, 0x0

    const-string v0, "\u06d6\u06eb\u06d8\u06d8\u06e2\u06e0\u06e5\u06e7\u06e7\u06e2\u06e0\u06e2\u06da\u06d9\u06d6\u06e2\u06e8\u06d7\u06d8\u06e4\u06e5\u06e1\u06d8\u06e2\u06da\u06e8\u06d8\u06d9\u06e8\u06e7\u06d8\u06e0\u06e7\u06e1\u06df\u06e8\u06db\u06e0\u06e2\u06d8\u06d8\u06d8\u06eb\u06e6\u06ec\u06d8\u06d8\u06e6\u06d9\u06d7\u06e5\u06eb"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v3, 0x151

    xor-int/2addr v2, v3

    xor-int/lit16 v2, v2, 0x2e9

    const/16 v3, 0x107

    const v4, -0x31b958db

    xor-int/2addr v2, v3

    xor-int/2addr v2, v4

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d7\u06e5\u06e0\u06dc\u06ec\u06e4\u06dc\u06da\u06e5\u06df\u06eb\u06e4\u06dc\u06db\u06dc\u06d8\u06e6\u06d9\u06e5\u06d8\u06e2\u06df\u06d6\u06d8\u06e8\u06d8\u06e1\u06e6\u06df\u06da\u06d8\u06e2\u06d9\u06d6\u06d9\u06d6\u06e8\u06e6\u06d9\u06ec\u06e8\u06e1\u06e6\u06d8\u06e0\u06dc\u06e6\u06e8\u06d8\u06e8\u06eb\u06e5"

    goto :goto_0

    :sswitch_1
    invoke-static {}, Lz2/h6;->OooO00o()V

    const-string v0, "\u06d8\u06e4\u06dc\u06dc\u06e7\u06db\u06df\u06d9\u06eb\u06eb\u06e6\u06e4\u06d8\u06d8\u06d6\u06d8\u06d6\u06e8\u06d7\u06e0\u06dc\u06e8\u06d7\u06e0\u06d9\u06d7\u06e2\u06e0\u06d7\u06e6\u06d7\u06da\u06e6\u06ec\u06dc\u06e0\u06da\u06e0\u06e6\u06e6\u06d8\u06df\u06d7\u06e5\u06d9\u06e4\u06dc\u06ec\u06e5\u06d8\u06e7\u06e2\u06d6\u06d6\u06ec\u06e4"

    goto :goto_0

    :sswitch_2
    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->OooO00o()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v0

    invoke-static {p0}, Lz2/f4;->OooO0O0(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, v0, Lcom/cyjh/elfin/base/AppContext;->Ooooo0o:Z

    const-string v0, "\u06d7\u06eb\u06d8\u06d8\u06e2\u06dc\u06d6\u06d8\u06e1\u06da\u06e7\u06e4\u06e6\u06db\u06eb\u06e1\u06d7\u06e2\u06e1\u06d8\u06ec\u06d9\u06ec\u06e2\u06da\u06d9\u06e1\u06e8\u06d9\u06db\u06e5\u06eb\u06db\u06df\u06e7\u06e4\u06da\u06e6\u06eb\u06e8\u06e7\u06e8\u06ec\u06d9"

    goto :goto_0

    :sswitch_3
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "type"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "\u06e1\u06e7\u06dc\u06e2\u06e2\u06e6\u06d8\u06df\u06e1\u06d8\u06e6\u06d8\u06da\u06eb\u06d7\u06e6\u06d8\u06d9\u06e7\u06e1\u06db\u06e4\u06e2\u06d6\u06d9\u06ec\u06d8\u06e5\u06e1\u06d8\u06e5\u06e5\u06d9\u06e7\u06da\u06e7\u06e7\u06df\u06e7\u06ec\u06ec\u06db\u06ec\u06db\u06e7"

    goto :goto_0

    :sswitch_4
    const v2, -0x762295c9

    const-string v0, "\u06df\u06e0\u06d9\u06da\u06d6\u06e7\u06d6\u06d9\u06e8\u06e6\u06df\u06e7\u06e6\u06dc\u06d8\u06e1\u06ec\u06e2\u06e5\u06db\u06d9\u06d6\u06dc\u06d7\u06e8\u06db\u06df\u06d7\u06e8\u06dc\u06e5\u06db\u06e8\u06d8\u06e0\u06e7\u06d9\u06e2\u06d8\u06d6\u06d7\u06e6\u06dc\u06e2\u06e6\u06ec\u06eb\u06d7\u06e7\u06d7\u06e7\u06d6\u06e6\u06e5"

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v2

    sparse-switch v3, :sswitch_data_1

    goto :goto_1

    :sswitch_5
    const v3, -0x38ae6fd4

    const-string v0, "\u06e7\u06d9\u06dc\u06d8\u06db\u06e2\u06d9\u06d6\u06d7\u06e1\u06e0\u06e0\u06ec\u06e2\u06e6\u06d8\u06d8\u06d9\u06e5\u06e0\u06d8\u06e8\u06dc\u06e1\u06e6\u06e8\u06d9\u06dc\u06d8\u06d8\u06e2\u06d7\u06e5\u06d8"

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    xor-int/2addr v4, v3

    sparse-switch v4, :sswitch_data_2

    goto :goto_2

    :sswitch_6
    const-string v0, "\u06ec\u06dc\u06e0\u06dc\u06d6\u06df\u06e0\u06e7\u06e4\u06d8\u06dc\u06e7\u06da\u06e7\u06e8\u06d8\u06e8\u06e0\u06e7\u06e7\u06e1\u06d6\u06e1\u06e0\u06db\u06e4\u06e8\u06eb\u06dc\u06da\u06db\u06d6\u06d7\u06d8\u06e4\u06e0\u06d9"

    goto :goto_1

    :sswitch_7
    const-string v0, "\u06e5\u06e4\u06e6\u06ec\u06e2\u06e8\u06d8\u06e7\u06d6\u06e1\u06dc\u06d9\u06d6\u06d8\u06d7\u06e0\u06e4\u06d7\u06e7\u06df\u06e6\u06e7\u06db\u06d8\u06eb\u06e2\u06d6\u06e1\u06d8\u06d8\u06db\u06d8\u06d8\u06d8\u06e7\u06e2\u06e7\u06e1\u06d7\u06e0"

    goto :goto_1

    :cond_0
    const-string v0, "\u06dc\u06e8\u06e7\u06d7\u06e8\u06e7\u06d8\u06e7\u06e7\u06dc\u06d8\u06e6\u06d9\u06e0\u06df\u06e1\u06e2\u06e5\u06dc\u06e1\u06d8\u06df\u06d8\u06db\u06d9\u06d8\u06e7\u06d8\u06e0\u06e2\u06e6\u06e2\u06e7\u06dc\u06ec\u06db\u06d7\u06e2\u06e1\u06e0\u06eb\u06e4\u06d8\u06db\u06da\u06e8\u06d8\u06d7\u06e2\u06dc\u06d8\u06d8\u06e2\u06e2"

    goto :goto_2

    :sswitch_8
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "\u06e7\u06e1\u06e7\u06da\u06e1\u06e5\u06d8\u06e6\u06e8\u06d6\u06d8\u06e7\u06e0\u06e5\u06e8\u06ec\u06db\u06e5\u06ec\u06eb\u06e5\u06d9\u06e1\u06dc\u06ec\u06d6\u06d8\u06e2\u06d7\u06e7\u06e8\u06e8\u06e5"

    goto :goto_2

    :sswitch_9
    const-string v0, "\u06d6\u06e7\u06d8\u06d7\u06dc\u06dc\u06da\u06e5\u06e4\u06e4\u06d9\u06e5\u06d8\u06e1\u06da\u06e1\u06e4\u06e5\u06e4\u06e7\u06eb\u06e8\u06d8\u06df\u06d7\u06e0\u06df\u06e1\u06da\u06ec\u06d6\u06d8\u06e2\u06d9\u06dc\u06d8\u06d9\u06df\u06ec\u06eb\u06e1\u06d9\u06e2\u06e2\u06e5\u06d8\u06d6\u06dc\u06e5\u06eb\u06d9\u06eb"

    goto :goto_2

    :sswitch_a
    const-string v0, "\u06e7\u06e8\u06d6\u06e0\u06eb\u06d7\u06d9\u06e7\u06e5\u06ec\u06e5\u06d7\u06da\u06ec\u06ec\u06e7\u06d9\u06db\u06d8\u06df\u06da\u06d9\u06d6\u06d9\u06e2\u06dc\u06dc\u06d8\u06ec\u06e5\u06e6\u06da\u06e2\u06db\u06e8\u06e4\u06eb\u06da\u06e5\u06eb\u06e1\u06d7\u06eb\u06e7\u06e7\u06e7\u06e8\u06d6\u06ec\u06dc\u06e2\u06da\u06eb\u06da\u06e4"

    goto :goto_1

    :sswitch_b
    const-string v0, "\u06db\u06eb\u06d7\u06e8\u06df\u06e8\u06d8\u06da\u06e4\u06e1\u06d8\u06dc\u06ec\u06db\u06e7\u06e8\u06e8\u06e8\u06e7\u06e1\u06d8\u06d6\u06e7\u06e6\u06ec\u06d9\u06dc\u06dc\u06e6\u06d8\u06d9\u06dc\u06e8\u06e7\u06eb\u06e5\u06eb\u06e6\u06e4"

    goto :goto_0

    :sswitch_c
    const v2, 0x21142e96

    const-string v0, "\u06d6\u06dc\u06e7\u06d8\u06e5\u06eb\u06e4\u06e8\u06e5\u06e6\u06d8\u06d7\u06eb\u06dc\u06d6\u06e1\u06e0\u06e7\u06e7\u06e8\u06e1\u06e2\u06da\u06eb\u06d8\u06e1\u06d8\u06e7\u06d6\u06d8\u06d6\u06d9\u06eb\u06e4\u06e1\u06d8\u06d7\u06e5\u06e1\u06eb\u06e0\u06e6\u06eb\u06e8\u06dc\u06d8"

    :goto_3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v2

    sparse-switch v3, :sswitch_data_3

    goto :goto_3

    :sswitch_d
    const v3, -0x680cfeed

    const-string v0, "\u06e6\u06e1\u06eb\u06e5\u06e7\u06e1\u06d8\u06e0\u06e8\u06e6\u06d6\u06d6\u06e5\u06d7\u06e5\u06e8\u06d7\u06d6\u06e2\u06dc\u06d6\u06d8\u06d8\u06df\u06dc\u06dc\u06d8\u06d9\u06e4\u06e1\u06e0\u06d9\u06db\u06eb\u06e1\u06ec\u06e4\u06e4\u06d6\u06dc\u06eb\u06eb\u06e8\u06dc\u06d8\u06d7\u06d8\u06e5\u06d8\u06d6\u06d9\u06e8\u06d9\u06db\u06d9\u06eb\u06e4\u06d8\u06d8"

    :goto_4
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    xor-int/2addr v4, v3

    sparse-switch v4, :sswitch_data_4

    goto :goto_4

    :sswitch_e
    const-string v0, "\u06d9\u06d8\u06dc\u06d8\u06dc\u06e2\u06e5\u06e0\u06e8\u06ec\u06ec\u06dc\u06e2\u06ec\u06e2\u06d9\u06e0\u06db\u06e0\u06ec\u06e8\u06e1\u06d8\u06d7\u06d8\u06d6\u06e8\u06e5\u06df\u06d6\u06e4\u06db"

    goto :goto_4

    :sswitch_f
    const-string v0, "\u06df\u06d9\u06e0\u06da\u06e0\u06e8\u06d8\u06e6\u06e8\u06e1\u06d8\u06d6\u06e2\u06e5\u06d8\u06e1\u06e6\u06d8\u06e1\u06eb\u06e8\u06d8\u06dc\u06da\u06dc\u06d8\u06dc\u06e6\u06e5\u06e1\u06e1\u06d6\u06d8\u06df\u06db\u06dc\u06da\u06d7\u06e6\u06e0\u06e5\u06d9\u06dc\u06df\u06e5\u06e8\u06e1\u06da"

    goto :goto_3

    :cond_1
    const-string v0, "\u06eb\u06eb\u06e5\u06eb\u06e6\u06dc\u06d8\u06e4\u06df\u06db\u06d8\u06dc\u06d7\u06e2\u06e1\u06dc\u06e7\u06d9\u06e5\u06e6\u06da\u06d8\u06d8\u06ec\u06e8\u06e0\u06d7\u06e5\u06e2\u06d7\u06d6\u06e6\u06d8\u06e5\u06e5\u06d6\u06d8\u06ec\u06d7\u06d6\u06d8"

    goto :goto_4

    :sswitch_10
    const-string v0, "PowerBoot"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "\u06e4\u06df\u06d6\u06d8\u06d6\u06d9\u06e0\u06e8\u06e7\u06e1\u06d8\u06ec\u06db\u06e5\u06da\u06e8\u06d8\u06d6\u06da\u06e1\u06d8\u06ec\u06e5\u06d6\u06d8\u06e5\u06e1\u06e7\u06d8\u06e0\u06eb\u06e5\u06d8\u06db\u06eb\u06e4\u06d9\u06e2\u06e2\u06df\u06d7\u06e1\u06d8"

    goto :goto_4

    :sswitch_11
    const-string v0, "\u06ec\u06e7\u06e1\u06d8\u06e1\u06e6\u06dc\u06d8\u06d6\u06dc\u06e1\u06e0\u06d7\u06e5\u06d8\u06ec\u06d8\u06d6\u06d8\u06d7\u06da\u06e5\u06d8\u06df\u06e8\u06d8\u06d8\u06d7\u06db\u06d6\u06eb\u06eb\u06e8\u06d8\u06e0\u06e5\u06e2\u06db\u06e4\u06e1\u06d8\u06e6\u06e7\u06d8\u06d6\u06e4\u06e2\u06e6\u06e5\u06df"

    goto :goto_3

    :sswitch_12
    const-string v0, "\u06e7\u06d7\u06e6\u06da\u06e6\u06e8\u06e2\u06e6\u06d8\u06d8\u06dc\u06e2\u06e8\u06d8\u06e2\u06e6\u06db\u06e1\u06e8\u06ec\u06d6\u06dc\u06e6\u06d8\u06e2\u06e5\u06e2\u06e6\u06db\u06e6\u06df\u06d8\u06d8\u06e2\u06e1\u06ec\u06d9\u06e0\u06dc\u06d8\u06eb\u06db\u06e6\u06d8\u06eb\u06e0\u06d8\u06d6\u06e1\u06eb\u06e7\u06dc\u06d6"

    goto :goto_3

    :sswitch_13
    const-string v0, "\u06e5\u06db\u06e0\u06e6\u06e4\u06ec\u06e5\u06ec\u06da\u06e4\u06e1\u06e8\u06e1\u06e7\u06d6\u06e8\u06e6\u06e4\u06eb\u06e5\u06d6\u06e1\u06e2\u06e7\u06db\u06e5\u06d7\u06dc\u06db\u06d8\u06d8\u06d8\u06e7\u06df\u06e1\u06d8\u06dc\u06e8\u06e7\u06d8\u06e8\u06e2\u06e8\u06d8"

    goto/16 :goto_0

    :sswitch_14
    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->OooO00o()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v0

    iput-boolean v6, v0, Lcom/cyjh/elfin/base/AppContext;->OoooooO:Z

    const-string v0, "\u06df\u06d8\u06d7\u06e6\u06dc\u06e7\u06e1\u06dc\u06e5\u06d8\u06e8\u06e6\u06e1\u06e7\u06da\u06d9\u06e8\u06e4\u06d8\u06e7\u06dc\u06da\u06d9\u06df\u06e1\u06ec\u06d9\u06e4\u06da\u06da\u06eb\u06e7\u06d9\u06e8\u06d8\u06e6\u06d9\u06df\u06e5\u06e4\u06e5\u06d8\u06da\u06e2\u06dc\u06d6\u06e7\u06e6\u06db\u06e5\u06d6\u06d8"

    goto/16 :goto_0

    :sswitch_15
    const v2, 0x79e77105

    const-string v0, "\u06e0\u06e6\u06d8\u06db\u06e1\u06e7\u06eb\u06da\u06e5\u06e6\u06d8\u06e7\u06d8\u06e8\u06e5\u06da\u06d9\u06e8\u06d7\u06db\u06dc\u06d8\u06d8\u06e7\u06e1\u06e8\u06d8\u06d8\u06d7\u06ec\u06e7\u06e7\u06e0\u06d8\u06e0\u06d8\u06e8\u06ec\u06e8"

    :goto_5
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v2

    sparse-switch v3, :sswitch_data_5

    goto :goto_5

    :sswitch_16
    const-string v0, "\u06e7\u06e4\u06e8\u06e7\u06e0\u06d7\u06ec\u06e1\u06e7\u06d8\u06ec\u06e0\u06d7\u06e0\u06e8\u06d8\u06d8\u06d8\u06dc\u06e2\u06e4\u06db\u06d6\u06d8\u06e8\u06e8\u06eb\u06df\u06eb\u06e8\u06d8\u06e7\u06e8\u06e5\u06d8\u06e7\u06dc\u06d8\u06d8\u06d7\u06e5\u06e7\u06d8\u06d8\u06d6\u06d7\u06e6\u06e5\u06e5\u06d8\u06db\u06e5\u06ec\u06e8\u06e2\u06e1\u06d8\u06e6\u06df\u06dc\u06d8"

    goto :goto_5

    :sswitch_17
    const-string v0, "\u06d6\u06d7\u06e2\u06d8\u06e1\u06da\u06da\u06e8\u06d7\u06e7\u06eb\u06d6\u06df\u06e1\u06e0\u06e8\u06da\u06d6\u06e6\u06da\u06e2\u06db\u06e4\u06e1\u06e2\u06e7\u06e5\u06e8\u06e5\u06e7\u06d8\u06e2\u06e6\u06e5\u06d8\u06da\u06e2\u06da\u06e2\u06d6\u06e1\u06d8\u06d9\u06e5\u06e8\u06e2\u06eb\u06e0\u06e7\u06da\u06e8"

    goto :goto_5

    :sswitch_18
    const v3, -0x1bce2757

    const-string v0, "\u06eb\u06e0\u06d9\u06ec\u06e8\u06ec\u06d6\u06eb\u06e6\u06d8\u06d6\u06e4\u06e5\u06d8\u06e2\u06e0\u06e6\u06d8\u06df\u06eb\u06eb\u06df\u06e1\u06e2\u06d8\u06dc\u06d6\u06db\u06e4\u06e1\u06eb\u06e5\u06eb\u06dc\u06d8\u06df\u06df\u06d9\u06ec\u06db\u06df\u06dc\u06e8\u06e6\u06d8\u06e5\u06d6\u06ec\u06d9\u06df\u06e1\u06d8\u06eb\u06eb\u06db\u06d8\u06eb\u06e4"

    :goto_6
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    xor-int/2addr v4, v3

    sparse-switch v4, :sswitch_data_6

    goto :goto_6

    :sswitch_19
    const-string v0, "AppReboot"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "\u06ec\u06da\u06e5\u06d6\u06d6\u06e6\u06eb\u06d8\u06d6\u06da\u06e0\u06d6\u06d8\u06e4\u06d7\u06e0\u06d6\u06ec\u06e8\u06d8\u06df\u06db\u06dc\u06db\u06e6\u06d8\u06e7\u06df\u06d8\u06db\u06d9"

    goto :goto_6

    :cond_2
    const-string v0, "\u06dc\u06e4\u06ec\u06db\u06d8\u06e5\u06e7\u06dc\u06e7\u06dc\u06e1\u06e7\u06d8\u06d8\u06e6\u06e5\u06e6\u06e1\u06d8\u06eb\u06d6\u06e1\u06ec\u06e8\u06e0\u06ec\u06e4\u06e6\u06d8\u06e7\u06da\u06da\u06da\u06dc\u06d8\u06db\u06d6\u06e5\u06df\u06e2\u06d8\u06d8\u06eb\u06e0\u06ec\u06db\u06da\u06dc\u06e6\u06e0\u06e8"

    goto :goto_6

    :sswitch_1a
    const-string v0, "\u06d8\u06e0\u06db\u06d8\u06e4\u06da\u06db\u06e7\u06e6\u06d7\u06e4\u06d8\u06e5\u06e7\u06e5\u06d8\u06eb\u06e1\u06ec\u06d7\u06eb\u06db\u06dc\u06d8\u06d7\u06df\u06d6\u06d8\u06e5\u06ec\u06da\u06d9\u06d9\u06da\u06dc\u06d8\u06d6\u06d7\u06e8\u06d9\u06df\u06d8\u06df\u06d7\u06e1\u06d8\u06df\u06d8\u06e6"

    goto :goto_6

    :sswitch_1b
    const-string v0, "\u06d7\u06e4\u06da\u06e7\u06e7\u06da\u06d9\u06da\u06dc\u06d8\u06dc\u06d6\u06d8\u06db\u06e8\u06e5\u06d8\u06db\u06ec\u06e8\u06d8\u06d8\u06dc\u06e6\u06d8\u06eb\u06e8\u06db\u06e8\u06d9\u06e6\u06da\u06d6\u06e6\u06e1\u06ec\u06df\u06d9\u06d8\u06da\u06ec\u06dc\u06d8\u06e0\u06e6\u06d7"

    goto :goto_5

    :sswitch_1c
    const-string v0, "\u06d8\u06d7\u06e0\u06e5\u06d9\u06dc\u06d8\u06e8\u06df\u06d9\u06d9\u06e8\u06ec\u06d9\u06d7\u06e2\u06d8\u06db\u06db\u06d7\u06d8\u06e6\u06d8\u06e2\u06d8\u06e4\u06d8\u06da\u06eb\u06df\u06e1\u06e1\u06db\u06d8\u06e7\u06da\u06e1\u06d7"

    goto/16 :goto_0

    :sswitch_1d
    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->OooO00o()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v0

    iput-boolean v6, v0, Lcom/cyjh/elfin/base/AppContext;->Ooooooo:Z

    const-string v0, "\u06e4\u06e8\u06e0\u06e8\u06e0\u06d6\u06d8\u06d7\u06e5\u06e1\u06e1\u06e5\u06e0\u06dc\u06ec\u06da\u06e0\u06df\u06e7\u06db\u06eb\u06e1\u06d8\u06da\u06e1\u06e7\u06d8\u06d9\u06d9\u06e1\u06d8\u06df\u06e5"

    goto/16 :goto_0

    :sswitch_1e
    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->OooO00o()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "sIsBooted"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v0, Lcom/cyjh/elfin/base/AppContext;->OoooooO:Z

    const-string v0, "\u06e0\u06e5\u06d8\u06eb\u06ec\u06eb\u06eb\u06e0\u06ec\u06eb\u06e6\u06d6\u06d8\u06da\u06d9\u06d8\u06d8\u06e0\u06dc\u06e7\u06d7\u06e2\u06e5\u06e6\u06e6\u06e7\u06d8\u06d9\u06e5\u06eb\u06e8\u06d9\u06eb"

    goto/16 :goto_0

    :sswitch_1f
    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->OooO00o()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v0

    iput-boolean v5, v0, Lcom/cyjh/elfin/base/AppContext;->Ooooooo:Z

    const-string v0, "\u06e0\u06e2\u06e6\u06e2\u06db\u06d6\u06d7\u06e4\u06dc\u06d8\u06e1\u06e7\u06e7\u06da\u06e5\u06e8\u06d8\u06e8\u06e4\u06e0\u06e2\u06db\u06e1\u06eb\u06e1\u06ec\u06d7\u06d6\u06e1\u06e8\u06e1\u06e1\u06d8\u06dc\u06d6\u06d7\u06d8\u06d7\u06d9"

    goto/16 :goto_0

    :sswitch_20
    invoke-direct {p0}, Lcom/cyjh/elfin/ui/activity/SplashActivity;->OooOoo()V

    const-string v0, "\u06db\u06db\u06e2\u06e8\u06eb\u06e8\u06d8\u06e4\u06dc\u06e2\u06db\u06e1\u06d6\u06d8\u06dc\u06d9\u06dc\u06d8\u06e1\u06d6\u06e1\u06d8\u06d7\u06d6\u06df\u06e7\u06ec\u06dc\u06df\u06da\u06e2\u06db\u06e5\u06eb\u06e8\u06e5\u06d8\u06d8\u06e6\u06d8\u06e2\u06d6\u06dc\u06e8\u06db\u06d7\u06d8\u06df\u06e8\u06e2\u06e0\u06d6\u06d6\u06d8\u06d9\u06db\u06d6\u06eb\u06e5\u06e4"

    goto/16 :goto_0

    :sswitch_21
    const-string v0, "\u06db\u06e7\u06e6\u06d9\u06d6\u06e8\u06d8\u06e4\u06d9\u06e5\u06e2\u06e5\u06e0\u06e7\u06db\u06da\u06e5\u06da\u06e1\u06df\u06e7\u06ec\u06d9\u06e5\u06e0\u06da\u06e2\u06d7\u06ec\u06e6\u06e6\u06d7\u06e2\u06d8\u06d8\u06d8\u06d6\u06eb\u06e1\u06df\u06e0\u06eb\u06e6"

    goto/16 :goto_0

    :sswitch_22
    const-string v0, "\u06e0\u06db\u06d9\u06e7\u06dc\u06db\u06e8\u06d6\u06d6\u06eb\u06da\u06e2\u06e8\u06dc\u06e4\u06d8\u06e8\u06df\u06db\u06e1\u06d6\u06e1\u06e7\u06e5\u06d8\u06d6\u06d9\u06e8\u06d9\u06e8\u06d8\u06d8"

    goto/16 :goto_0

    :sswitch_23
    const-string v0, "\u06e0\u06e2\u06e6\u06e2\u06db\u06d6\u06d7\u06e4\u06dc\u06d8\u06e1\u06e7\u06e7\u06da\u06e5\u06e8\u06d8\u06e8\u06e4\u06e0\u06e2\u06db\u06e1\u06eb\u06e1\u06ec\u06d7\u06d6\u06e1\u06e8\u06e1\u06e1\u06d8\u06dc\u06d6\u06d7\u06d8\u06d7\u06d9"

    goto/16 :goto_0

    :sswitch_24
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7e542ba8 -> :sswitch_4
        -0x6bbc6caf -> :sswitch_1
        -0x22f27313 -> :sswitch_20
        -0x1366a699 -> :sswitch_1e
        -0x6167d03 -> :sswitch_23
        0xe0e7aa6 -> :sswitch_3
        0xe36e624 -> :sswitch_14
        0x149a0d77 -> :sswitch_24
        0x150d8ac0 -> :sswitch_c
        0x21e82e84 -> :sswitch_2
        0x2ca965ed -> :sswitch_1f
        0x54c10f11 -> :sswitch_0
        0x6567d7e3 -> :sswitch_23
        0x6739e6cd -> :sswitch_1d
        0x69bd4398 -> :sswitch_15
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x3a1c4003 -> :sswitch_b
        -0x38834d80 -> :sswitch_5
        0x2af2c04 -> :sswitch_a
        0x171ab7c4 -> :sswitch_22
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        0x472e1eeb -> :sswitch_7
        0x53430fae -> :sswitch_8
        0x5dacc0d3 -> :sswitch_6
        0x6a7111c8 -> :sswitch_9
    .end sparse-switch

    :sswitch_data_3
    .sparse-switch
        -0x34cc3d31 -> :sswitch_13
        -0x6a04573 -> :sswitch_d
        0x2faca836 -> :sswitch_21
        0x6ec7485f -> :sswitch_12
    .end sparse-switch

    :sswitch_data_4
    .sparse-switch
        -0x3d8733d4 -> :sswitch_10
        -0x2c1a5b96 -> :sswitch_11
        -0x2217be74 -> :sswitch_e
        0x3e03001a -> :sswitch_f
    .end sparse-switch

    :sswitch_data_5
    .sparse-switch
        -0x6e8fd57e -> :sswitch_1c
        0x14a36c7c -> :sswitch_23
        0x43d99d9d -> :sswitch_16
        0x4690b7e2 -> :sswitch_18
    .end sparse-switch

    :sswitch_data_6
    .sparse-switch
        -0x7de6ea2f -> :sswitch_1b
        -0x1ea0843b -> :sswitch_17
        -0x1a41e557 -> :sswitch_1a
        0x332052be -> :sswitch_19
    .end sparse-switch
.end method

.method private OooOooO()V
    .locals 4

    const-string v0, "\u06e1\u06da\u06ec\u06df\u06e8\u06dc\u06db\u06d8\u06d8\u06e6\u06e8\u06e4\u06e7\u06df\u06da\u06e1\u06db\u06d8\u06e6\u06d8\u06da\u06e6\u06e5\u06e2\u06e5\u06d8\u06d8\u06e5\u06eb\u06dc\u06d8\u06e8\u06e1\u06e1\u06d8\u06d6\u06e5\u06eb"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x85

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x26d

    const/16 v2, 0x3bc

    const v3, -0x1d974e00

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d8\u06dc\u06e5\u06da\u06e7\u06e2\u06df\u06db\u06dc\u06d8\u06e6\u06e6\u06e5\u06e0\u06e7\u06e8\u06da\u06e7\u06eb\u06d8\u06ec\u06e7\u06e8\u06e1\u06d6\u06d8\u06d7\u06e1\u06e0\u06d7\u06e1\u06d8"

    goto :goto_0

    :sswitch_1
    invoke-static {}, Lz2/oi;->OooO0o()Lz2/oi;

    move-result-object v0

    new-instance v1, Lcom/cyjh/elfin/ui/activity/SplashActivity$OooO0OO;

    invoke-direct {v1, p0}, Lcom/cyjh/elfin/ui/activity/SplashActivity$OooO0OO;-><init>(Lcom/cyjh/elfin/ui/activity/SplashActivity;)V

    invoke-virtual {v0, v1}, Lz2/oi;->OooO00o(Lz2/r3;)V

    const-string v0, "\u06e7\u06e7\u06d8\u06d8\u06dc\u06ec\u06e5\u06eb\u06da\u06df\u06d8\u06e8\u06d6\u06eb\u06e6\u06e6\u06db\u06e6\u06e6\u06dc\u06e1\u06d8\u06da\u06dc\u06e7\u06d8\u06dc\u06e2\u06e7\u06da\u06e8\u06e7\u06d6\u06e7\u06d8\u06e4\u06eb\u06e8\u06d8\u06e6\u06d7\u06ec\u06eb\u06e6"

    goto :goto_0

    :sswitch_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x29c38b29 -> :sswitch_0
        -0x263c9b51 -> :sswitch_2
        0x454fbec4 -> :sswitch_1
    .end sparse-switch
.end method

.method private synthetic OooOooo(Landroid/app/AlertDialog;Landroid/view/View;)V
    .locals 5

    const/4 v1, 0x0

    const-string v0, "\u06df\u06da\u06dc\u06d8\u06dc\u06e7\u06e8\u06d8\u06e7\u06d7\u06e5\u06d8\u06d9\u06ec\u06dc\u06d8\u06e4\u06db\u06df\u06e6\u06da\u06e5\u06dc\u06eb\u06e1\u06d8\u06e7\u06db\u06e1\u06da\u06e1\u06d6\u06d8\u06e4\u06e4\u06e7\u06ec\u06e2\u06e5\u06d8\u06dc\u06e8\u06e2\u06d8\u06d6\u06dc\u06dc\u06df\u06e7\u06d8\u06e7\u06e0\u06db\u06e8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v3, 0x335

    xor-int/2addr v2, v3

    xor-int/lit16 v2, v2, 0x3dc

    const/16 v3, 0x125

    const v4, 0x401cfb85

    xor-int/2addr v2, v3

    xor-int/2addr v2, v4

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e2\u06d6\u06e6\u06d8\u06df\u06e6\u06e5\u06d8\u06da\u06e8\u06d8\u06d8\u06d9\u06ec\u06e6\u06df\u06d9\u06e2\u06da\u06df\u06e6\u06e2\u06e5\u06eb\u06e2\u06eb\u06d7\u06e0\u06e1\u06e8\u06d8\u06d9\u06d9\u06e8\u06d6\u06ec\u06db\u06e6\u06eb\u06e5\u06e6\u06db\u06e4\u06db\u06dc\u06d6"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06e8\u06e4\u06df\u06db\u06d9\u06db\u06e8\u06e5\u06e1\u06d8\u06d6\u06d6\u06d7\u06d8\u06e4\u06e6\u06d9\u06d8\u06e7\u06e7\u06d7\u06e2\u06e8\u06d8\u06d6\u06e1\u06e6\u06e4\u06e8\u06e5\u06d8\u06d7\u06dc\u06d9\u06df\u06eb"

    goto :goto_0

    :sswitch_2
    const-string v0, "\u06df\u06d7\u06d8\u06d8\u06d9\u06e6\u06df\u06e1\u06e5\u06e5\u06e7\u06e6\u06ec\u06d9\u06ec\u06e4\u06e6\u06e6\u06d8\u06d8\u06d8\u06e4\u06dc\u06d8\u06e5\u06d6\u06e6\u06d8\u06ec\u06e6\u06d7\u06dc\u06e4\u06e1\u06d8\u06dc\u06e2\u06d8\u06df\u06d8\u06e1"

    goto :goto_0

    :sswitch_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u06d7\u06e1\u06ec\u06e5\u06eb\u06e1\u06d8\u06e6\u06d7\u06ec\u06dc\u06e8\u06eb\u06da\u06da\u06e8\u06e5\u06eb\u06e1\u06e1\u06db\u06e6\u06d9\u06e7\u06e2\u06ec\u06d9\u06d9\u06e1\u06eb\u06e1\u06d8\u06e8\u06d7\u06e7\u06e7\u06d9\u06db\u06d9\u06eb\u06d6\u06ec\u06d6\u06da\u06e7\u06e0\u06e4\u06eb\u06d7\u06e0"

    goto :goto_0

    :sswitch_4
    const-string v0, "package:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u06e8\u06e5\u06d6\u06db\u06da\u06e5\u06db\u06e8\u06e6\u06eb\u06d6\u06e4\u06e8\u06d8\u06e7\u06d8\u06e6\u06ec\u06d7\u06d7\u06e2\u06eb\u06d9\u06e5\u06df\u06e2\u06e4\u06d6\u06d7\u06e8\u06df\u06e0\u06d7\u06e6\u06d9\u06eb\u06ec\u06da\u06d8\u06ec\u06e1\u06e8\u06d8\u06eb\u06e4\u06e7\u06e0\u06ec\u06e7\u06e0\u06df\u06d8\u06e7"

    goto :goto_0

    :sswitch_5
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u06d7\u06e2\u06e7\u06d8\u06d6\u06d9\u06e0\u06df\u06e2\u06d9\u06e4\u06d8\u06e1\u06d6\u06d8\u06d8\u06d7\u06e1\u06e5\u06e6\u06d9\u06e6\u06e7\u06eb\u06e7\u06da\u06e2\u06da\u06e1\u06e5\u06e5\u06e0\u06d6\u06e6\u06d8\u06d9\u06da\u06e5"

    goto :goto_0

    :sswitch_6
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.settings.action.MANAGE_OVERLAY_PERMISSION"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/16 v2, 0xc8

    invoke-virtual {p0, v0, v2}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    const-string v0, "\u06d9\u06d9\u06e2\u06da\u06e0\u06e8\u06d8\u06d6\u06eb\u06e2\u06ec\u06e8\u06d8\u06d6\u06db\u06e6\u06eb\u06dc\u06e8\u06df\u06dc\u06db\u06ec\u06d7\u06d8\u06e2\u06e2\u06e8\u06d8\u06e8\u06eb\u06e1\u06eb\u06d9\u06eb\u06dc\u06ec\u06e5\u06d8"

    goto :goto_0

    :sswitch_7
    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    const-string v0, "\u06e8\u06e4\u06df\u06d9\u06df\u06dc\u06d8\u06e6\u06ec\u06ec\u06da\u06dc\u06db\u06eb\u06eb\u06d8\u06eb\u06dc\u06db\u06e4\u06e5\u06eb\u06d8\u06ec\u06e6\u06eb\u06d8\u06e5\u06d7\u06e2\u06db"

    goto :goto_0

    :sswitch_8
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x717ebec9 -> :sswitch_7
        -0x49931283 -> :sswitch_1
        -0x21453790 -> :sswitch_2
        -0x2c0f18b -> :sswitch_3
        0x1d096826 -> :sswitch_0
        0x2f544cb0 -> :sswitch_5
        0x31f2b903 -> :sswitch_8
        0x50b9fa7c -> :sswitch_4
        0x712bf949 -> :sswitch_6
    .end sparse-switch
.end method

.method private Oooo()V
    .locals 4

    const-string v0, "\u06d9\u06e8\u06d9\u06e2\u06e1\u06d6\u06e2\u06ec\u06df\u06e2\u06e6\u06d8\u06eb\u06e0\u06e7\u06e5\u06db\u06dc\u06d8\u06dc\u06e8\u06e7\u06e0\u06db\u06e5\u06d7\u06e4\u06d7\u06e4\u06e6\u06e2\u06d7\u06da\u06d6\u06e6\u06e4\u06e5\u06ec\u06dc\u06e1\u06d8\u06db\u06db\u06d7\u06e1\u06e4\u06ec\u06ec\u06e7\u06e8\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0xb3

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x29c

    const/16 v2, 0x118

    const v3, 0x30ebf1bb

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d6\u06db\u06e4\u06e2\u06e4\u06d7\u06e2\u06da\u06d8\u06d8\u06db\u06df\u06dc\u06d8\u06ec\u06e8\u06e0\u06d7\u06e0\u06d9\u06eb\u06d8\u06e7\u06d8\u06e8\u06d7\u06ec\u06e6\u06e8\u06d8\u06e2\u06e0\u06e2"

    goto :goto_0

    :sswitch_1
    invoke-static {p0}, Lz2/y8;->OooO0OO(Landroid/content/Context;)V

    const-string v0, "\u06e2\u06eb\u06e5\u06d8\u06e0\u06e7\u06ec\u06d8\u06e7\u06e1\u06da\u06df\u06d8\u06dc\u06db\u06dc\u06dc\u06d8\u06dc\u06e4\u06d8\u06d8\u06d6\u06ec\u06df\u06ec\u06e8\u06da\u06db\u06e7\u06e8\u06d8\u06dc\u06d6\u06d7\u06e5\u06df\u06d9\u06da\u06e6\u06d7"

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const-string v0, "\u06e8\u06df\u06da\u06dc\u06db\u06e6\u06d8\u06d7\u06e0\u06d6\u06d8\u06d6\u06d6\u06e0\u06d7\u06e7\u06d8\u06d8\u06ec\u06e5\u06db\u06e7\u06df\u06e5\u06d8\u06d9\u06db\u06e6\u06e8\u06e4\u06d6\u06d8\u06da\u06d6\u06e4"

    goto :goto_0

    :sswitch_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x41873ce1 -> :sswitch_1
        0x131b716e -> :sswitch_3
        0x151ed66d -> :sswitch_2
        0x51d84ed9 -> :sswitch_0
    .end sparse-switch
.end method

.method private synthetic Oooo0(Lcom/cyjh/http/bean/response/PhoneConfig;)V
    .locals 4

    const-string v0, "\u06e5\u06e8\u06dc\u06d6\u06eb\u06dc\u06d8\u06e4\u06e8\u06e6\u06e4\u06e1\u06e0\u06e7\u06e4\u06d9\u06e5\u06da\u06d8\u06d8\u06e5\u06e0\u06da\u06e2\u06e5\u06da\u06d6\u06d8\u06ec\u06e8\u06e6\u06e5\u06e1\u06e8\u06e1\u06d9\u06d7\u06ec\u06e1\u06df\u06e4\u06e5\u06e2\u06e0\u06d7\u06d8\u06d8\u06e5\u06e4\u06db\u06e7\u06d8\u06e5\u06d8\u06e5\u06e4\u06e8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x37c

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x362

    const/16 v2, 0x35b

    const v3, -0x271245ed

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e1\u06d6\u06e2\u06e8\u06d8\u06da\u06d6\u06d7\u06e8\u06e8\u06e4\u06e4\u06e8\u06eb\u06e4\u06d8\u06e4\u06db\u06e0\u06ec\u06d6\u06d8\u06eb\u06e0\u06e7\u06df\u06d6\u06dc\u06ec\u06d8\u06d6\u06d8\u06ec\u06da\u06d8\u06d7\u06e6"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06e4\u06e7\u06e8\u06dc\u06d9\u06dc\u06d8\u06ec\u06e0\u06d8\u06d8\u06ec\u06e1\u06eb\u06e1\u06da\u06d7\u06d9\u06d7\u06e6\u06df\u06e7\u06dc\u06d8\u06e0\u06e1\u06e8\u06e4\u06eb\u06e8\u06d8\u06e1\u06d8"

    goto :goto_0

    :sswitch_2
    const v1, 0x6fb65422

    const-string v0, "\u06d7\u06d7\u06e6\u06dc\u06e4\u06d9\u06e6\u06e1\u06d7\u06e8\u06e1\u06e1\u06df\u06e4\u06e5\u06d8\u06ec\u06e8\u06e6\u06e1\u06e6\u06e8\u06d8\u06d7\u06e1\u06eb\u06ec\u06d6\u06eb\u06eb\u06e6\u06e1"

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v2, v1

    sparse-switch v2, :sswitch_data_1

    goto :goto_1

    :sswitch_3
    const-string v0, "\u06d9\u06d6\u06d6\u06d8\u06e8\u06e2\u06e1\u06dc\u06e1\u06d8\u06e7\u06ec\u06eb\u06dc\u06e6\u06e1\u06df\u06e1\u06db\u06d6\u06d6\u06e8\u06dc\u06da\u06db\u06e0\u06ec\u06e7\u06d7\u06ec\u06d9\u06dc\u06d6\u06d8\u06db\u06e5\u06e7\u06d8\u06d6\u06e1\u06e8\u06e5\u06eb\u06d9\u06e4\u06df\u06e1\u06d8\u06e4\u06e0\u06e1\u06d8"

    goto :goto_0

    :sswitch_4
    const-string v0, "\u06eb\u06e7\u06e5\u06d8\u06d8\u06e2\u06e8\u06e0\u06ec\u06d9\u06e5\u06e4\u06e8\u06d8\u06eb\u06dc\u06d9\u06e0\u06e2\u06dc\u06e6\u06e8\u06db\u06e4\u06d6\u06ec\u06db\u06d6\u06dc\u06db\u06e2\u06dc\u06d8\u06d9\u06e0\u06e2\u06da\u06dc\u06eb\u06da\u06e7\u06e2\u06da\u06db\u06dc"

    goto :goto_1

    :sswitch_5
    const v2, -0x7c46c0d1

    const-string v0, "\u06db\u06da\u06e8\u06d8\u06e5\u06e1\u06e7\u06d8\u06e0\u06e1\u06e8\u06db\u06e4\u06e5\u06d8\u06e6\u06e6\u06e6\u06d8\u06ec\u06e4\u06db\u06d8\u06d7\u06e4\u06eb\u06e7\u06da\u06e1\u06eb\u06e7\u06d8\u06e7\u06dc"

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v2

    sparse-switch v3, :sswitch_data_2

    goto :goto_2

    :sswitch_6
    if-eqz p1, :cond_0

    const-string v0, "\u06d9\u06e5\u06e7\u06e0\u06d7\u06d7\u06da\u06e1\u06d9\u06e7\u06e7\u06e7\u06d6\u06e1\u06dc\u06d8\u06eb\u06e4\u06df\u06ec\u06e1\u06e1\u06dc\u06e2\u06e6\u06d9\u06df\u06e1\u06e6\u06e0\u06d7\u06dc\u06da\u06e0\u06e8\u06d7\u06ec\u06e6\u06d8\u06dc\u06e0\u06dc\u06d8\u06e6\u06e4\u06d6\u06e1\u06d6\u06d9\u06e0\u06e0\u06e8\u06da\u06e0\u06df"

    goto :goto_2

    :cond_0
    const-string v0, "\u06d6\u06df\u06dc\u06e6\u06d7\u06e8\u06dc\u06df\u06e4\u06d7\u06d6\u06d8\u06d8\u06e0\u06e4\u06eb\u06e1\u06da\u06ec\u06df\u06e5\u06e6\u06d8\u06db\u06e4\u06ec\u06d6\u06e8\u06e6\u06e6\u06df\u06eb\u06e4\u06d8\u06e5\u06d8\u06e4\u06e1\u06db\u06e8\u06e4\u06eb\u06e8\u06d6\u06d8\u06e7\u06ec\u06e0\u06e6\u06d8"

    goto :goto_2

    :sswitch_7
    const-string v0, "\u06e5\u06d6\u06e0\u06d7\u06e5\u06eb\u06dc\u06e5\u06d8\u06dc\u06db\u06eb\u06e2\u06e7\u06d6\u06d8\u06d7\u06e1\u06dc\u06d8\u06e7\u06d7\u06ec\u06d9\u06e5\u06e5\u06d8\u06d9\u06d7\u06dc\u06e1\u06da\u06eb\u06e6\u06ec\u06d7\u06d7\u06da\u06d8\u06e0\u06e7\u06e4\u06ec\u06d7\u06e6\u06d8\u06db\u06e2\u06d6\u06d8\u06e8\u06ec"

    goto :goto_2

    :sswitch_8
    const-string v0, "\u06d9\u06e0\u06d7\u06db\u06e8\u06e6\u06d8\u06dc\u06db\u06e6\u06ec\u06e5\u06eb\u06db\u06d9\u06e5\u06e4\u06d7\u06da\u06ec\u06e2\u06eb\u06e7\u06da\u06d7\u06d8\u06e1\u06e8\u06d8\u06ec\u06e4\u06dc\u06d8\u06e4\u06e8\u06e7\u06d8\u06e4\u06e0\u06e5\u06e2\u06d8\u06e1\u06d8\u06e8\u06e5\u06e0\u06e0\u06dc\u06e5\u06db\u06e8\u06da\u06db\u06d7\u06e2\u06da\u06d9\u06e0"

    goto :goto_1

    :sswitch_9
    const-string v0, "\u06d6\u06e8\u06df\u06df\u06db\u06ec\u06df\u06da\u06e8\u06d8\u06ec\u06db\u06e1\u06d9\u06e8\u06dc\u06d8\u06df\u06dc\u06dc\u06dc\u06d6\u06e2\u06eb\u06ec\u06e1\u06d8\u06d7\u06e8\u06e8\u06da\u06e6\u06d8\u06d8\u06df\u06d8\u06e5\u06d6\u06d9\u06df\u06e6\u06e4\u06eb\u06df\u06e1"

    goto :goto_1

    :sswitch_a
    const-string v0, "\u06d8\u06e8\u06dc\u06d9\u06ec\u06dc\u06dc\u06dc\u06e7\u06d8\u06e7\u06e6\u06db\u06e5\u06e7\u06d8\u06d8\u06da\u06e5\u06d8\u06e4\u06d7\u06e6\u06db\u06d6\u06d8\u06d8\u06e8\u06ec\u06d8\u06d8\u06da\u06e1\u06e6\u06d8\u06d8\u06da\u06e6\u06df\u06d6\u06e1\u06d8\u06dc\u06d6\u06d9\u06e1\u06d8\u06e5\u06d8\u06e8\u06e0\u06e8\u06e7\u06db\u06d9"

    goto :goto_0

    :sswitch_b
    invoke-static {p0, p1}, Lcom/cyjh/elfin/ui/activity/guide/RecognitionGuideActivity;->OooO0oo(Landroid/content/Context;Lcom/cyjh/http/bean/response/PhoneConfig;)V

    const-string v0, "\u06db\u06e8\u06da\u06e8\u06e1\u06e4\u06e6\u06e0\u06e2\u06dc\u06db\u06d6\u06d8\u06e0\u06da\u06e5\u06eb\u06d6\u06e0\u06da\u06e8\u06ec\u06d9\u06e4\u06d7\u06df\u06e5\u06e0\u06e4\u06db\u06dc\u06d8\u06d9\u06d8\u06eb\u06e4\u06e1\u06e8\u06d8\u06d9\u06e1\u06d7\u06e1\u06da\u06e8\u06d8\u06db\u06ec\u06da\u06e5\u06e1\u06da"

    goto :goto_0

    :sswitch_c
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const-string v0, "\u06d9\u06d6\u06d6\u06d8\u06e8\u06e2\u06e1\u06dc\u06e1\u06d8\u06e7\u06ec\u06eb\u06dc\u06e6\u06e1\u06df\u06e1\u06db\u06d6\u06d6\u06e8\u06dc\u06da\u06db\u06e0\u06ec\u06e7\u06d7\u06ec\u06d9\u06dc\u06d6\u06d8\u06db\u06e5\u06e7\u06d8\u06d6\u06e1\u06e8\u06e5\u06eb\u06d9\u06e4\u06df\u06e1\u06d8\u06e4\u06e0\u06e1\u06d8"

    goto :goto_0

    :sswitch_d
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x511dd25e -> :sswitch_0
        -0x3c631b91 -> :sswitch_d
        -0x3abff118 -> :sswitch_c
        0x89824c -> :sswitch_b
        0x49072de8 -> :sswitch_1
        0x4f8a3c35 -> :sswitch_2
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0xb5f3eb2 -> :sswitch_a
        0x1c474414 -> :sswitch_5
        0x66aa109a -> :sswitch_3
        0x6f94e975 -> :sswitch_9
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        -0x578afe16 -> :sswitch_7
        -0x52bab29d -> :sswitch_8
        -0x1fee47a4 -> :sswitch_6
        0x35e4a273 -> :sswitch_4
    .end sparse-switch
.end method

.method private synthetic Oooo00O(Lz2/qa$Oooo0;)V
    .locals 5

    const/4 v1, 0x0

    const-string v0, "\u06d9\u06df\u06ec\u06eb\u06e6\u06df\u06d6\u06df\u06e4\u06e8\u06e1\u06e6\u06d8\u06df\u06e8\u06d7\u06d6\u06da\u06d8\u06d8\u06df\u06db\u06e0\u06df\u06d7\u06dc\u06e5\u06e4\u06dc\u06d8\u06d7\u06eb\u06dc\u06d8\u06ec\u06e2\u06dc\u06d8\u06e8\u06e0\u06da\u06e6\u06d8\u06da\u06e1\u06df\u06e7\u06eb\u06db\u06df\u06e6\u06e8\u06e2\u06e7\u06d8\u06e0\u06eb\u06df\u06e0"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v3, 0x253

    xor-int/2addr v2, v3

    xor-int/lit16 v2, v2, 0x325

    const/16 v3, 0x9

    const v4, 0x6f0e3c2c

    xor-int/2addr v2, v3

    xor-int/2addr v2, v4

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06df\u06eb\u06e8\u06db\u06e8\u06d8\u06d9\u06e1\u06e6\u06e6\u06d6\u06e5\u06e2\u06d8\u06e8\u06d8\u06e2\u06db\u06e8\u06d8\u06e8\u06d9\u06dc\u06e6\u06ec\u06d7\u06e5\u06d8\u06df\u06e2\u06d7\u06ec\u06ec\u06d6\u06d8\u06e2\u06d6\u06df"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06e0\u06d7\u06dc\u06e1\u06e4\u06eb\u06eb\u06da\u06e0\u06e8\u06e1\u06d7\u06e8\u06d6\u06d8\u06e1\u06eb\u06d6\u06dc\u06e7\u06d8\u06d6\u06e6\u06e1\u06d8\u06df\u06eb\u06e1\u06d8\u06df\u06e2\u06d8\u06d9\u06d7\u06eb\u06d7\u06e7\u06eb\u06d7\u06d9\u06dc\u06e4\u06db\u06d8\u06d8"

    goto :goto_0

    :sswitch_2
    const v2, 0x3fe98ef0

    const-string v0, "\u06e4\u06e5\u06db\u06e6\u06df\u06d8\u06d8\u06e8\u06ec\u06d9\u06e1\u06e4\u06e6\u06d8\u06e0\u06e0\u06e4\u06eb\u06e7\u06e5\u06e2\u06dc\u06e4\u06eb\u06e0\u06e8\u06e0\u06e7\u06d8\u06d8\u06e0\u06ec\u06dc\u06e7\u06db\u06e5\u06dc\u06e7\u06e6\u06d8\u06db\u06e7\u06ec\u06eb\u06eb\u06eb\u06d9\u06d7\u06e5\u06d8\u06d9\u06dc\u06e1"

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v2

    sparse-switch v3, :sswitch_data_1

    goto :goto_1

    :sswitch_3
    const-string v0, "\u06e0\u06d9\u06e4\u06eb\u06e2\u06eb\u06e7\u06e6\u06d8\u06dc\u06eb\u06e0\u06e0\u06da\u06e1\u06d8\u06e2\u06dc\u06e5\u06d8\u06e6\u06e5\u06e5\u06d8\u06e6\u06e1\u06e5\u06d8\u06d7\u06dc\u06e5\u06d8\u06e8\u06d6\u06d6\u06e6\u06dc\u06e8\u06d8\u06e0\u06e1\u06e5\u06e4\u06e5\u06df\u06e6\u06e2"

    goto :goto_0

    :sswitch_4
    const-string v0, "\u06eb\u06e5\u06e8\u06da\u06e0\u06e4\u06d9\u06da\u06e8\u06e0\u06e1\u06e8\u06e2\u06eb\u06df\u06e0\u06db\u06e5\u06db\u06d9\u06eb\u06e4\u06db\u06dc\u06d8\u06d8\u06ec\u06db\u06da\u06dc\u06e5\u06d8\u06e0\u06ec\u06e6\u06dc\u06e4\u06e1\u06d8\u06e0\u06d8\u06d7\u06e0\u06eb\u06e0\u06db\u06da\u06d9\u06e2\u06d6\u06e0"

    goto :goto_1

    :sswitch_5
    const v3, -0xa2b1424

    const-string v0, "\u06e8\u06e8\u06db\u06da\u06e0\u06e6\u06d8\u06d7\u06e7\u06e4\u06d7\u06eb\u06e6\u06eb\u06e6\u06d6\u06df\u06d9\u06e4\u06d9\u06df\u06eb\u06e6\u06dc\u06d7\u06e0\u06d6\u06d7\u06e0\u06d6\u06e6\u06d9\u06e8\u06dc\u06da\u06dc\u06d8"

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    xor-int/2addr v4, v3

    sparse-switch v4, :sswitch_data_2

    goto :goto_2

    :sswitch_6
    if-nez p1, :cond_0

    const-string v0, "\u06eb\u06db\u06e6\u06d8\u06e2\u06d7\u06e8\u06d8\u06e2\u06e2\u06e8\u06dc\u06da\u06e8\u06ec\u06d8\u06d7\u06e2\u06d7\u06e2\u06d8\u06e7\u06d9\u06e6\u06d6\u06e5\u06e7\u06ec\u06e7\u06d6\u06d6"

    goto :goto_2

    :cond_0
    const-string v0, "\u06e6\u06e5\u06d8\u06d8\u06e8\u06eb\u06e8\u06d8\u06db\u06e4\u06d8\u06e6\u06d9\u06da\u06e5\u06e1\u06d8\u06ec\u06e1\u06d9\u06e4\u06e8\u06e6\u06e6\u06e6\u06db\u06dc\u06d9\u06e1\u06e0\u06e2\u06e6"

    goto :goto_2

    :sswitch_7
    const-string v0, "\u06df\u06eb\u06ec\u06e4\u06eb\u06db\u06da\u06ec\u06e4\u06d9\u06dc\u06e5\u06d8\u06dc\u06ec\u06e2\u06d9\u06e1\u06d8\u06d8\u06e2\u06e0\u06dc\u06dc\u06d7\u06d6\u06d8\u06e8\u06e8\u06e6\u06d8\u06d6\u06e8\u06e5\u06d8\u06d8\u06e0\u06e2\u06d8\u06e6\u06df\u06e4\u06d6\u06e6\u06d8\u06d8"

    goto :goto_2

    :sswitch_8
    const-string v0, "\u06eb\u06df\u06da\u06d7\u06db\u06dc\u06eb\u06e8\u06d7\u06e1\u06dc\u06e4\u06e6\u06e7\u06e5\u06e5\u06dc\u06db\u06e0\u06e5\u06e1\u06d7\u06da\u06e7\u06ec\u06e6\u06d7\u06dc\u06ec\u06db\u06e0\u06e4\u06ec\u06dc\u06d8\u06e7\u06eb\u06d7\u06e5\u06d8\u06e5\u06d8\u06ec\u06d9\u06e0\u06e5\u06e6\u06d8"

    goto :goto_1

    :sswitch_9
    const-string v0, "\u06d7\u06db\u06e6\u06e8\u06d9\u06e6\u06e4\u06e8\u06ec\u06eb\u06e8\u06eb\u06d6\u06e2\u06e5\u06d9\u06ec\u06e8\u06d6\u06e0\u06e7\u06e6\u06e5\u06d6\u06dc\u06db\u06d8\u06df\u06e6\u06e1\u06d8\u06d7\u06e8\u06e8\u06d8\u06d7\u06e8\u06d7\u06ec\u06e6\u06e4\u06d7\u06e2\u06e7\u06e0\u06e6\u06e4\u06e7\u06e5\u06dc"

    goto :goto_1

    :sswitch_a
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const v2, 0x7f10023f

    invoke-static {v0, v2}, Lz2/c5;->OooO0O0(Landroid/content/Context;I)V

    const-string v0, "\u06d7\u06e5\u06d6\u06d8\u06e8\u06d8\u06e0\u06df\u06ec\u06e4\u06e1\u06d6\u06db\u06e2\u06d8\u06e7\u06d8\u06da\u06da\u06df\u06d6\u06e6\u06e8\u06d8\u06e2\u06e7\u06e8\u06dc\u06ec\u06dc\u06d8\u06dc\u06e6\u06dc"

    goto :goto_0

    :sswitch_b
    iget v1, p1, Lz2/qa$Oooo0;->OooO00o:I

    const-string v0, "\u06e0\u06da\u06e4\u06e4\u06e6\u06dc\u06e5\u06d8\u06e8\u06d8\u06e4\u06db\u06da\u06e2\u06d7\u06d8\u06e0\u06e4\u06db\u06e1\u06e6\u06db\u06e5\u06d7\u06db\u06db\u06e1\u06e4\u06dc\u06db\u06e6\u06e4\u06e0\u06d8\u06d8\u06d8\u06da\u06e5\u06d8\u06d6\u06e8\u06e2\u06d6\u06e0\u06e8\u06db\u06d6\u06d9\u06dc\u06e4\u06d9\u06d9\u06e8\u06e5\u06d8\u06db\u06d9\u06e6"

    goto :goto_0

    :sswitch_c
    const v2, -0x48dfea31

    const-string v0, "\u06da\u06da\u06d7\u06eb\u06da\u06e5\u06da\u06df\u06e6\u06e7\u06dc\u06d8\u06ec\u06e4\u06dc\u06d9\u06da\u06e8\u06e4\u06e4\u06d9\u06e1\u06dc\u06d8\u06e8\u06df\u06e8\u06d8\u06d9\u06e1\u06e2\u06e0\u06e8\u06e5\u06d8\u06e7\u06df\u06e2\u06dc\u06ec\u06e1\u06d8\u06d8\u06e0\u06e5\u06d8\u06e4\u06e6\u06d9\u06dc\u06e8\u06da"

    :goto_3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v2

    sparse-switch v3, :sswitch_data_3

    goto :goto_3

    :sswitch_d
    const-string v0, "\u06df\u06dc\u06d8\u06db\u06d8\u06df\u06da\u06d8\u06e1\u06e2\u06eb\u06e4\u06e8\u06e4\u06e4\u06df\u06d7\u06ec\u06e4\u06db\u06e6\u06d8\u06e1\u06e2\u06e8\u06d8\u06d6\u06dc\u06e8\u06e4\u06eb\u06e8\u06df\u06d8\u06e2\u06e7\u06e2\u06e0\u06e1\u06eb\u06d9\u06e2\u06d9\u06d6\u06d8"

    goto :goto_0

    :sswitch_e
    const-string v0, "\u06ec\u06e6\u06d6\u06e1\u06eb\u06e4\u06eb\u06ec\u06d7\u06d7\u06e2\u06e0\u06e5\u06d7\u06e1\u06ec\u06eb\u06d7\u06e8\u06ec\u06e5\u06e8\u06ec\u06e4\u06da\u06e5\u06e1\u06d8\u06e7\u06db\u06e7\u06e0\u06e1\u06e6\u06d8\u06e2\u06e8\u06dc"

    goto :goto_3

    :sswitch_f
    const v3, -0xac7d892

    const-string v0, "\u06e7\u06db\u06e6\u06d8\u06dc\u06db\u06d9\u06da\u06eb\u06d7\u06e1\u06e1\u06d6\u06d8\u06d8\u06da\u06db\u06df\u06e4\u06e5\u06d8\u06df\u06d6\u06d7\u06eb\u06df\u06df\u06d9\u06eb\u06e4\u06da\u06e4"

    :goto_4
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    xor-int/2addr v4, v3

    sparse-switch v4, :sswitch_data_4

    goto :goto_4

    :sswitch_10
    const/4 v0, -0x1

    if-eq v1, v0, :cond_1

    const-string v0, "\u06da\u06e5\u06e8\u06d8\u06e0\u06e2\u06e0\u06d9\u06da\u06e1\u06d8\u06e5\u06db\u06e8\u06e0\u06e2\u06db\u06e8\u06eb\u06d8\u06d9\u06dc\u06eb\u06e0\u06d9\u06d6\u06ec\u06e1\u06d6\u06d8\u06d8\u06dc\u06d9\u06da\u06eb\u06ec\u06df\u06d7\u06e5\u06d8"

    goto :goto_4

    :cond_1
    const-string v0, "\u06e7\u06e7\u06e1\u06e2\u06da\u06e8\u06da\u06e0\u06d9\u06d7\u06eb\u06e4\u06db\u06ec\u06e1\u06d8\u06d6\u06dc\u06d7\u06e7\u06e4\u06e0\u06e6\u06db\u06dc\u06e6\u06d8\u06d7\u06e6\u06e8"

    goto :goto_4

    :sswitch_11
    const-string v0, "\u06da\u06d7\u06e0\u06da\u06e1\u06e7\u06e4\u06e0\u06e8\u06d8\u06db\u06ec\u06e2\u06e1\u06e4\u06e6\u06e4\u06df\u06da\u06eb\u06e2\u06d6\u06d7\u06d6\u06e1\u06ec\u06df\u06dc\u06d8\u06dc\u06eb\u06e0\u06e0\u06eb\u06da\u06e5\u06d6\u06d8\u06e4\u06eb\u06dc\u06e8\u06d6\u06df"

    goto :goto_4

    :sswitch_12
    const-string v0, "\u06e2\u06d7\u06e6\u06d8\u06e0\u06eb\u06df\u06e0\u06dc\u06dc\u06d8\u06e2\u06d8\u06e2\u06e8\u06ec\u06e7\u06e7\u06e2\u06da\u06df\u06d9\u06e6\u06eb\u06dc\u06e8\u06d8\u06df\u06db\u06d6\u06e8\u06e0\u06e8\u06d8\u06e0\u06e5\u06d6\u06df\u06df\u06eb\u06e5\u06db\u06e0\u06e7\u06e0\u06d8\u06eb\u06d9\u06e2\u06e1\u06df\u06e6\u06eb\u06d8\u06e0\u06e1\u06e4\u06d9"

    goto :goto_3

    :sswitch_13
    const-string v0, "\u06e2\u06da\u06e2\u06e1\u06e8\u06d6\u06d8\u06d8\u06e6\u06e1\u06da\u06d8\u06e5\u06d6\u06e4\u06e8\u06dc\u06d7\u06e4\u06d8\u06d6\u06e1\u06dc\u06d9\u06e5\u06d8\u06db\u06e5\u06dc\u06d8\u06d7\u06e7\u06d6\u06d8"

    goto :goto_3

    :sswitch_14
    const-string v0, "\u06dc\u06e6\u06eb\u06e8\u06db\u06e8\u06e6\u06d8\u06d6\u06df\u06da\u06dc\u06d8\u06d6\u06eb\u06e6\u06d8\u06d6\u06d7\u06d8\u06d8\u06ec\u06d6\u06e7\u06e4\u06e7\u06e5\u06e8\u06d9\u06e6\u06e6\u06e6\u06eb"

    goto/16 :goto_0

    :sswitch_15
    const v2, 0x35f783bb

    const-string v0, "\u06eb\u06db\u06e0\u06db\u06e4\u06df\u06d9\u06ec\u06db\u06e2\u06db\u06e5\u06d7\u06d7\u06db\u06da\u06d6\u06e5\u06d6\u06eb\u06df\u06db\u06e6\u06d9\u06e7\u06e4\u06da\u06d6\u06db\u06dc\u06d8\u06e5\u06e0\u06e5\u06d7\u06dc\u06e6\u06d8\u06eb\u06e6\u06e2\u06db\u06eb\u06d7"

    :goto_5
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v2

    sparse-switch v3, :sswitch_data_5

    goto :goto_5

    :sswitch_16
    const-string v0, "\u06db\u06d7\u06d8\u06d8\u06e7\u06e7\u06d8\u06e6\u06e5\u06ec\u06e0\u06d9\u06e2\u06d8\u06e8\u06d7\u06d8\u06da\u06db\u06e8\u06dc\u06e7\u06d8\u06ec\u06e0\u06e8\u06e7\u06e4\u06d7\u06e5\u06e6\u06d8"

    goto/16 :goto_0

    :sswitch_17
    const-string v0, "\u06ec\u06d8\u06d9\u06df\u06e6\u06e5\u06d6\u06e6\u06e5\u06d8\u06e5\u06d7\u06e0\u06d8\u06e6\u06e8\u06da\u06d7\u06e1\u06e1\u06e0\u06e8\u06d8\u06da\u06eb\u06e1\u06e1\u06d7\u06d6\u06d8\u06e4\u06da\u06d6\u06e8\u06e4\u06dc\u06d9\u06db\u06e6\u06d8\u06eb\u06e7\u06ec\u06e0\u06e4\u06dc\u06d8\u06d6\u06d9\u06d6\u06e8\u06d7\u06db"

    goto :goto_5

    :sswitch_18
    const v3, -0x36bb4e02

    const-string v0, "\u06e4\u06da\u06e4\u06eb\u06e0\u06e7\u06dc\u06da\u06e8\u06dc\u06e6\u06e7\u06d8\u06d9\u06d7\u06e1\u06d8\u06e7\u06dc\u06e0\u06df\u06e2\u06d8\u06ec\u06e4\u06e4\u06e5\u06e6\u06e6\u06e5\u06e0\u06df\u06e5\u06df\u06e7\u06e4\u06d9\u06e8\u06e7\u06df\u06d9\u06df\u06ec\u06e8\u06d8\u06e2\u06e8\u06e1\u06d8\u06d9\u06d7\u06df\u06e4\u06e2\u06e6\u06d8\u06e0"

    :goto_6
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    xor-int/2addr v4, v3

    sparse-switch v4, :sswitch_data_6

    goto :goto_6

    :sswitch_19
    const-string v0, "\u06db\u06d6\u06e7\u06d8\u06eb\u06eb\u06d7\u06e6\u06e5\u06d7\u06e4\u06d8\u06d8\u06e7\u06d7\u06e0\u06ec\u06dc\u06e2\u06e6\u06ec\u06e4\u06d7\u06e0\u06e1\u06d8\u06eb\u06db\u06d7\u06e4\u06e0\u06eb\u06d8\u06e4\u06db\u06e1\u06e5\u06e6"

    goto :goto_6

    :cond_2
    const-string v0, "\u06e0\u06d9\u06e5\u06e2\u06e2\u06e6\u06d8\u06e4\u06e1\u06e2\u06d8\u06e8\u06e6\u06d8\u06e0\u06e0\u06e8\u06e6\u06d8\u06d6\u06db\u06d8\u06eb\u06da\u06ec\u06d9\u06d9\u06e8\u06eb\u06e0\u06e1\u06d8\u06d8\u06d8\u06db\u06da\u06e6\u06da\u06e1\u06d8\u06e0\u06db\u06e1\u06df\u06db\u06d7\u06e1\u06d8\u06e2\u06d7\u06e7\u06df\u06e6\u06db\u06df\u06e6\u06d9"

    goto :goto_6

    :sswitch_1a
    if-eqz v1, :cond_2

    const-string v0, "\u06e4\u06e8\u06e8\u06d8\u06d9\u06e0\u06e2\u06eb\u06e2\u06dc\u06d7\u06e0\u06d7\u06e5\u06e7\u06d6\u06d8\u06e4\u06e6\u06e7\u06d8\u06e1\u06e0\u06d6\u06da\u06e5\u06d9\u06e6\u06d7\u06eb\u06dc\u06d8\u06db\u06e4\u06dc\u06ec\u06d8\u06e5\u06e1\u06df\u06d9\u06e1\u06d8\u06db\u06dc\u06e5\u06d8"

    goto :goto_6

    :sswitch_1b
    const-string v0, "\u06d9\u06e8\u06e2\u06d7\u06db\u06e4\u06e7\u06e4\u06e0\u06e7\u06e5\u06e4\u06e1\u06d8\u06e5\u06df\u06d7\u06e4\u06eb\u06d6\u06d8\u06dc\u06ec\u06e4\u06df\u06e1\u06e5\u06dc\u06dc\u06d6\u06d8\u06da\u06e8\u06d8\u06e7\u06d8\u06e8\u06db\u06d6\u06df\u06e0\u06d6\u06d9\u06dc\u06e6\u06e7\u06e8\u06d6\u06df\u06e6\u06d8\u06d9\u06eb\u06d6\u06d8"

    goto :goto_5

    :sswitch_1c
    const-string v0, "\u06ec\u06ec\u06d9\u06e0\u06df\u06e6\u06d8\u06ec\u06e7\u06e2\u06ec\u06e8\u06e0\u06df\u06e8\u06eb\u06db\u06db\u06dc\u06d8\u06eb\u06e7\u06e8\u06e6\u06d6\u06e8\u06da\u06dc\u06e1\u06d8\u06db\u06e8\u06e0"

    goto :goto_5

    :sswitch_1d
    const-string v0, "\u06e6\u06e0\u06df\u06df\u06df\u06e1\u06d8\u06d7\u06d7\u06da\u06d9\u06df\u06e7\u06d7\u06d8\u06e0\u06df\u06e8\u06e6\u06df\u06d9\u06e7\u06e4\u06d6\u06e6\u06d7\u06df\u06d8\u06df\u06e7\u06eb"

    goto/16 :goto_0

    :sswitch_1e
    const v2, -0x3b244075

    const-string v0, "\u06d6\u06da\u06d8\u06d7\u06e6\u06e7\u06dc\u06e6\u06e5\u06d6\u06e0\u06dc\u06d8\u06d6\u06dc\u06e7\u06e5\u06dc\u06e5\u06dc\u06e7\u06e6\u06d6\u06e6\u06e6\u06d7\u06e1\u06d8\u06e1\u06d7\u06e8\u06e6\u06e5\u06e7\u06d8\u06e8\u06da\u06d6\u06e8\u06e4\u06e0\u06e7\u06db\u06df"

    :goto_7
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v2

    sparse-switch v3, :sswitch_data_7

    goto :goto_7

    :sswitch_1f
    const-string v0, "\u06dc\u06d7\u06e5\u06d8\u06d9\u06ec\u06ec\u06e6\u06e2\u06db\u06e5\u06db\u06e2\u06df\u06e6\u06d9\u06dc\u06e0\u06d9\u06dc\u06e7\u06eb\u06e2\u06da\u06d8\u06d8\u06db\u06ec\u06d7\u06df\u06db\u06da\u06e4\u06d6\u06d9\u06eb\u06d8\u06d8\u06d8\u06da\u06eb\u06da\u06df\u06e8\u06e4\u06d8\u06e6\u06d8\u06ec\u06e6"

    goto/16 :goto_0

    :sswitch_20
    const-string v0, "\u06ec\u06db\u06e4\u06d8\u06eb\u06e2\u06e6\u06db\u06e0\u06e8\u06e5\u06e6\u06d8\u06d9\u06ec\u06d8\u06d8\u06d8\u06e6\u06e2\u06db\u06dc\u06db\u06db\u06ec\u06d8\u06da\u06db\u06e6\u06d7\u06eb\u06e2\u06d6\u06d8\u06da\u06e4\u06e2\u06d8\u06d8\u06d9\u06e0\u06e2\u06e7\u06d7\u06d7\u06e2\u06e1\u06d8\u06eb\u06e1\u06df"

    goto :goto_7

    :sswitch_21
    const v3, -0x205b8fe4

    const-string v0, "\u06e4\u06e8\u06e1\u06db\u06d6\u06e1\u06d8\u06df\u06dc\u06ec\u06e0\u06d6\u06e8\u06d8\u06d8\u06eb\u06df\u06e7\u06e4\u06e5\u06da\u06ec\u06e7\u06eb\u06d7\u06e1\u06eb\u06d8\u06d7\u06e2\u06ec\u06e0\u06e0\u06eb\u06e2\u06eb\u06e0\u06da"

    :goto_8
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    xor-int/2addr v4, v3

    sparse-switch v4, :sswitch_data_8

    goto :goto_8

    :sswitch_22
    const-string v0, "\u06e8\u06e6\u06eb\u06eb\u06d9\u06e6\u06d6\u06e8\u06dc\u06d8\u06e4\u06e7\u06e8\u06d9\u06e2\u06df\u06d8\u06e7\u06e6\u06d8\u06e0\u06e1\u06e5\u06db\u06db\u06ec\u06db\u06e6\u06d7\u06df\u06e2\u06eb"

    goto :goto_7

    :cond_3
    const-string v0, "\u06ec\u06e1\u06e1\u06d8\u06d7\u06e5\u06eb\u06df\u06d9\u06d7\u06d6\u06db\u06e0\u06d7\u06dc\u06e5\u06d7\u06d6\u06e2\u06dc\u06d8\u06d8\u06eb\u06e5\u06d6\u06da\u06e0\u06eb\u06eb\u06df\u06dc"

    goto :goto_8

    :sswitch_23
    const/4 v0, 0x1

    if-eq v1, v0, :cond_3

    const-string v0, "\u06da\u06d7\u06e6\u06e5\u06e6\u06d6\u06e0\u06d9\u06da\u06d6\u06d8\u06d8\u06d8\u06e1\u06e0\u06e8\u06db\u06eb\u06d6\u06dc\u06e0\u06db\u06e1\u06dc\u06e6\u06da\u06d7\u06e8\u06d8\u06e6\u06d6\u06e7"

    goto :goto_8

    :sswitch_24
    const-string v0, "\u06d7\u06e0\u06e8\u06ec\u06d7\u06db\u06e7\u06e7\u06d6\u06e0\u06dc\u06e7\u06e2\u06e5\u06e6\u06d8\u06d8\u06e1\u06e1\u06d8\u06e2\u06e2\u06e8\u06d8\u06dc\u06d6\u06e8\u06e2\u06df\u06dc\u06db\u06d8\u06d6\u06d8\u06e4\u06e2\u06d6\u06e7\u06e8\u06db\u06d6\u06d8\u06da\u06ec\u06e8\u06da\u06e7\u06e4\u06e1\u06d8\u06e1\u06dc\u06ec"

    goto :goto_8

    :sswitch_25
    const-string v0, "\u06da\u06d7\u06e2\u06da\u06df\u06d6\u06d8\u06e7\u06e1\u06e0\u06e0\u06d7\u06dc\u06e6\u06e8\u06e0\u06da\u06dc\u06db\u06e2\u06e0\u06db\u06d8\u06df\u06d8\u06d8\u06e4\u06e4\u06d6\u06dc\u06e7\u06e1\u06e6\u06e1\u06df\u06db\u06d7\u06d9\u06e0\u06e7\u06db\u06e1\u06d7\u06dc\u06da\u06d9\u06e7\u06e5\u06dc\u06e8\u06e6\u06d6\u06e7\u06d9\u06da\u06e4"

    goto :goto_7

    :sswitch_26
    const-string v0, "\u06db\u06e1\u06d8\u06d8\u06d9\u06dc\u06d6\u06d9\u06ec\u06e6\u06df\u06d8\u06e7\u06e8\u06db\u06e6\u06d8\u06e2\u06da\u06e1\u06e5\u06e6\u06e2\u06df\u06e6\u06e5\u06d8\u06e5\u06da\u06d9\u06da\u06ec\u06ec\u06e6\u06e0\u06d6\u06d8\u06da\u06d8\u06e4"

    goto/16 :goto_0

    :sswitch_27
    const v2, -0x42d346e0

    const-string v0, "\u06d7\u06da\u06d7\u06da\u06d7\u06e8\u06d9\u06e7\u06e4\u06e6\u06e1\u06d6\u06e8\u06dc\u06d8\u06e0\u06e5\u06e7\u06e2\u06df\u06dc\u06d9\u06e1\u06e1\u06d8\u06dc\u06d8\u06d8\u06d8\u06e2\u06ec\u06e5\u06d8\u06e4\u06d8\u06df\u06e1\u06ec\u06d6\u06d8\u06e2\u06da\u06d6\u06e8\u06dc\u06e0"

    :goto_9
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v2

    sparse-switch v3, :sswitch_data_9

    goto :goto_9

    :sswitch_28
    const v3, -0x541ce5a

    const-string v0, "\u06d8\u06d7\u06e6\u06da\u06e5\u06d8\u06e5\u06dc\u06ec\u06e6\u06da\u06d8\u06d8\u06d9\u06e0\u06d9\u06e8\u06da\u06e6\u06d8\u06da\u06e4\u06e1\u06d8\u06e1\u06eb\u06df\u06e7\u06d6\u06e7\u06d8\u06e0\u06d7\u06da\u06e7\u06df\u06e6\u06df\u06e0\u06e5\u06da\u06df\u06d7\u06ec\u06e0\u06e2\u06db\u06d8\u06d8\u06e1\u06e8\u06d8\u06db\u06d8\u06e0\u06e2\u06d9\u06e8"

    :goto_a
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    xor-int/2addr v4, v3

    sparse-switch v4, :sswitch_data_a

    goto :goto_a

    :sswitch_29
    const/16 v0, 0x64

    if-eq v1, v0, :cond_4

    const-string v0, "\u06ec\u06e4\u06e0\u06eb\u06d9\u06d6\u06d8\u06e2\u06e7\u06d8\u06d8\u06e4\u06da\u06ec\u06e5\u06d8\u06dc\u06d8\u06e1\u06db\u06e4\u06e5\u06d6\u06d7\u06db\u06d7\u06e6\u06d8\u06e8\u06d7\u06e8\u06e2\u06db\u06dc"

    goto :goto_a

    :sswitch_2a
    const-string v0, "\u06d6\u06e0\u06d9\u06d7\u06d9\u06d8\u06e0\u06e0\u06d7\u06ec\u06d6\u06d6\u06d8\u06e0\u06ec\u06d7\u06df\u06e1\u06e5\u06d8\u06e5\u06e8\u06d7\u06e0\u06d7\u06df\u06db\u06e1\u06e5\u06e7\u06e1\u06db\u06db\u06d8\u06dc\u06d8\u06df\u06e2\u06d7\u06dc\u06d7\u06e6\u06e2\u06e6\u06d7\u06e7\u06e5\u06e0\u06ec\u06e7\u06dc\u06d8\u06ec\u06e2\u06dc\u06d8\u06ec\u06df\u06e2"

    goto :goto_9

    :cond_4
    const-string v0, "\u06e5\u06d9\u06db\u06e8\u06dc\u06e6\u06d8\u06d9\u06d9\u06e1\u06da\u06df\u06d6\u06e8\u06e6\u06ec\u06e7\u06e5\u06d9\u06d8\u06eb\u06e0\u06e8\u06e8\u06d8\u06db\u06e0\u06df\u06d8\u06e6\u06e0\u06dc\u06df\u06e1\u06df\u06db\u06d9\u06e4\u06db\u06d9\u06d8\u06e4\u06da\u06ec\u06e4\u06e1\u06e2\u06e1\u06d8\u06d8\u06e1\u06d6\u06d6\u06dc\u06ec\u06d8"

    goto :goto_a

    :sswitch_2b
    const-string v0, "\u06e7\u06e0\u06d8\u06d8\u06eb\u06ec\u06e8\u06d8\u06e2\u06e4\u06e1\u06d8\u06df\u06e7\u06e1\u06d8\u06e1\u06ec\u06d6\u06d8\u06e1\u06e7\u06d9\u06df\u06e5\u06e7\u06e8\u06e1\u06e5\u06dc\u06da\u06e5\u06ec\u06e4\u06e4\u06e4\u06e4\u06d8\u06e7\u06e8\u06d6\u06d8\u06e1\u06e2\u06e5\u06eb\u06d9\u06da\u06d7\u06eb\u06d9\u06eb\u06e1\u06e1\u06d8\u06e6\u06dc\u06e6\u06d8\u06e4\u06d6\u06e1"

    goto :goto_a

    :sswitch_2c
    const-string v0, "\u06e6\u06e4\u06e1\u06d8\u06d6\u06e0\u06dc\u06d7\u06d9\u06e7\u06e7\u06e0\u06dc\u06d8\u06e1\u06db\u06ec\u06d9\u06d8\u06e7\u06dc\u06da\u06d9\u06e8\u06e8\u06d7\u06d7\u06e8\u06db"

    goto :goto_9

    :sswitch_2d
    const-string v0, "\u06db\u06d7\u06d7\u06d7\u06d9\u06e5\u06d8\u06e0\u06d6\u06da\u06ec\u06d6\u06db\u06e4\u06e8\u06e0\u06e4\u06e6\u06eb\u06e4\u06e7\u06d7\u06e6\u06d6\u06da\u06e6\u06e5\u06e1\u06db\u06d7\u06d8"

    goto :goto_9

    :sswitch_2e
    const-string v0, "\u06dc\u06da\u06da\u06e5\u06d8\u06e5\u06d8\u06d7\u06e2\u06d9\u06d7\u06e0\u06db\u06dc\u06db\u06df\u06d9\u06d6\u06d8\u06db\u06e5\u06e7\u06ec\u06df\u06ec\u06da\u06eb\u06e1\u06d8\u06e1\u06dc\u06e0\u06eb\u06e1\u06e8\u06dc\u06e2\u06df\u06db\u06ec\u06db\u06e1\u06d8\u06e1\u06d8\u06e0\u06e2\u06db\u06e4\u06e0\u06e1\u06e8\u06e2\u06e2\u06e4\u06e8"

    goto/16 :goto_0

    :sswitch_2f
    invoke-direct {p0}, Lcom/cyjh/elfin/ui/activity/SplashActivity;->OooOooO()V

    const-string v0, "\u06da\u06dc\u06e5\u06d8\u06dc\u06e5\u06e4\u06e1\u06e1\u06ec\u06d7\u06e1\u06d6\u06d9\u06e7\u06d8\u06e0\u06d9\u06e2\u06e7\u06d9\u06e0\u06d8\u06df\u06db\u06df\u06d6\u06ec\u06e4\u06d8\u06e1\u06df\u06dc\u06e1\u06df\u06dc\u06d8"

    goto/16 :goto_0

    :sswitch_30
    invoke-direct {p0}, Lcom/cyjh/elfin/ui/activity/SplashActivity;->Oooo0OO()V

    const-string v0, "\u06da\u06e1\u06eb\u06e6\u06d7\u06eb\u06e7\u06d6\u06d8\u06e4\u06e5\u06eb\u06e6\u06d9\u06d9\u06d8\u06e2\u06e5\u06d8\u06da\u06ec\u06e8\u06d8\u06e2\u06d9\u06e0\u06d7\u06e1\u06e0\u06e8\u06eb\u06df"

    goto/16 :goto_0

    :sswitch_31
    iget v0, p1, Lz2/qa$Oooo0;->OooO0OO:I

    iget-object v2, p1, Lz2/qa$Oooo0;->OooO0O0:Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Lcom/cyjh/elfin/ui/activity/SplashActivity;->OooOo0O(ILjava/lang/String;)V

    const-string v0, "\u06da\u06ec\u06dc\u06e8\u06e6\u06d8\u06e8\u06ec\u06d8\u06d8\u06eb\u06d6\u06d6\u06d8\u06e0\u06e5\u06df\u06d9\u06df\u06e8\u06d8\u06e8\u06e0\u06d9\u06e6\u06da\u06e0\u06db\u06d9\u06e1\u06d8\u06e8\u06e1\u06df\u06e5\u06da\u06d6\u06d8\u06e1\u06d6\u06e2\u06da\u06e8\u06e8\u06dc\u06e2\u06e5\u06d8\u06df\u06e0\u06e2\u06e2\u06d6\u06e7"

    goto/16 :goto_0

    :sswitch_32
    invoke-direct {p0}, Lcom/cyjh/elfin/ui/activity/SplashActivity;->Oooo0oo()V

    const-string v0, "\u06df\u06ec\u06dc\u06e6\u06e1\u06ec\u06d9\u06d8\u06e5\u06d8\u06da\u06e4\u06e5\u06d8\u06e0\u06e8\u06ec\u06d8\u06dc\u06e0\u06da\u06e5\u06e6\u06da\u06d8\u06eb\u06da\u06dc\u06d8\u06e5\u06db\u06dc\u06d8"

    goto/16 :goto_0

    :sswitch_33
    const-string v0, "\u06d8\u06d7\u06db\u06e7\u06d7\u06db\u06d6\u06ec\u06eb\u06e8\u06e5\u06e4\u06d7\u06df\u06d8\u06d8\u06d8\u06ec\u06e5\u06e1\u06df\u06e5\u06e0\u06e0\u06da\u06ec\u06df\u06d8\u06df\u06dc\u06e6\u06e1\u06e8\u06df\u06e8\u06ec\u06d7\u06d8\u06dc\u06d9\u06d6\u06d6\u06df\u06d8\u06dc\u06dc\u06da\u06e5\u06dc"

    goto/16 :goto_0

    :sswitch_34
    const-string v0, "\u06da\u06e0\u06e6\u06d8\u06e6\u06e8\u06d9\u06dc\u06db\u06e6\u06d6\u06e7\u06db\u06dc\u06e1\u06d8\u06d9\u06e7\u06e6\u06d8\u06da\u06da\u06ec\u06e1\u06e7\u06da\u06d6\u06d7\u06dc\u06dc\u06e8\u06e5\u06e1\u06eb\u06e7\u06ec\u06e5\u06e4\u06d7\u06e1\u06ec\u06e1\u06e8\u06d8\u06d7\u06e7\u06d7\u06dc\u06ec\u06d7"

    goto/16 :goto_0

    :sswitch_35
    const-string v0, "\u06df\u06ec\u06dc\u06e6\u06e1\u06ec\u06d9\u06d8\u06e5\u06d8\u06da\u06e4\u06e5\u06d8\u06e0\u06e8\u06ec\u06d8\u06dc\u06e0\u06da\u06e5\u06e6\u06da\u06d8\u06eb\u06da\u06dc\u06d8\u06e5\u06db\u06dc\u06d8"

    goto/16 :goto_0

    :sswitch_36
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7f61be67 -> :sswitch_0
        -0x7c742a0f -> :sswitch_31
        -0x49e475a2 -> :sswitch_36
        -0x39b9d857 -> :sswitch_35
        -0x32a416e7 -> :sswitch_15
        -0x6f92cc2 -> :sswitch_a
        0x11504975 -> :sswitch_35
        0x157b0372 -> :sswitch_35
        0x24c81c27 -> :sswitch_2f
        0x2892ece6 -> :sswitch_27
        0x2a4dd81c -> :sswitch_35
        0x3e23115f -> :sswitch_36
        0x41bd03fb -> :sswitch_32
        0x5317de30 -> :sswitch_1
        0x55c343c0 -> :sswitch_2
        0x575a6e48 -> :sswitch_1e
        0x6e009b07 -> :sswitch_c
        0x729c4420 -> :sswitch_30
        0x7ea6998e -> :sswitch_b
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x635b8900 -> :sswitch_9
        0x135f25f1 -> :sswitch_33
        0x5953e85f -> :sswitch_3
        0x7f5c1168 -> :sswitch_5
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        -0x37c6cec9 -> :sswitch_4
        -0x242103f3 -> :sswitch_8
        -0x1ec457d8 -> :sswitch_6
        0x55f10670 -> :sswitch_7
    .end sparse-switch

    :sswitch_data_3
    .sparse-switch
        -0x7ba3da8f -> :sswitch_13
        -0x71db2508 -> :sswitch_d
        -0x138f4066 -> :sswitch_14
        0x769059b2 -> :sswitch_f
    .end sparse-switch

    :sswitch_data_4
    .sparse-switch
        -0x367c9386 -> :sswitch_10
        -0x94e1598 -> :sswitch_e
        0x3932a881 -> :sswitch_12
        0x503013de -> :sswitch_11
    .end sparse-switch

    :sswitch_data_5
    .sparse-switch
        -0x13a842bc -> :sswitch_18
        0x16060a0d -> :sswitch_1c
        0x304851fb -> :sswitch_16
        0x65f6070c -> :sswitch_1d
    .end sparse-switch

    :sswitch_data_6
    .sparse-switch
        -0x762b39b9 -> :sswitch_1a
        -0x52596281 -> :sswitch_17
        -0x258cab42 -> :sswitch_1b
        0x638d88f6 -> :sswitch_19
    .end sparse-switch

    :sswitch_data_7
    .sparse-switch
        -0x6bd80350 -> :sswitch_1f
        -0x60379ddc -> :sswitch_25
        -0x24abea47 -> :sswitch_21
        0x18aa9575 -> :sswitch_26
    .end sparse-switch

    :sswitch_data_8
    .sparse-switch
        -0x3b0b2297 -> :sswitch_20
        -0xd4374fa -> :sswitch_22
        0x1a0d2aa0 -> :sswitch_23
        0x24a3e79e -> :sswitch_24
    .end sparse-switch

    :sswitch_data_9
    .sparse-switch
        -0x5a794fc5 -> :sswitch_2d
        -0x1fab4066 -> :sswitch_2e
        0x6e2b33ed -> :sswitch_34
        0x730b1069 -> :sswitch_28
    .end sparse-switch

    :sswitch_data_a
    .sparse-switch
        -0x7c5da542 -> :sswitch_29
        -0x5c4199cf -> :sswitch_2a
        -0x2e4f286 -> :sswitch_2b
        0x9298702 -> :sswitch_2c
    .end sparse-switch
.end method

.method private Oooo0OO()V
    .locals 4

    const-string v0, "\u06df\u06e6\u06d7\u06e1\u06d6\u06e8\u06e1\u06e7\u06d6\u06e4\u06e1\u06e5\u06e7\u06df\u06e5\u06df\u06eb\u06e1\u06e0\u06e0\u06e7\u06e2\u06eb\u06ec\u06d7\u06e8\u06e8\u06d8\u06db\u06e5\u06df\u06d8\u06df\u06df\u06df\u06e6\u06e4\u06e7\u06d7\u06db\u06e7\u06dc\u06dc\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x150

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x346

    const/16 v2, 0x21e

    const v3, -0xe2643c9

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e7\u06d9\u06d7\u06e6\u06eb\u06e0\u06d9\u06e2\u06dc\u06db\u06d9\u06d6\u06d8\u06e4\u06e5\u06df\u06ec\u06e1\u06da\u06d8\u06d8\u06e0\u06df\u06dc\u06e1\u06dc\u06e2\u06da\u06d7\u06e0\u06ec\u06d6\u06eb\u06ec\u06d8\u06e7\u06d6\u06ec\u06dc\u06d8\u06d7\u06d9\u06e2\u06e7\u06e5\u06e1\u06e7\u06e6\u06d6"

    goto :goto_0

    :sswitch_1
    const v1, 0x424fb871

    const-string v0, "\u06d8\u06e6\u06e4\u06e7\u06d9\u06e5\u06e7\u06db\u06e7\u06da\u06db\u06e5\u06d8\u06d7\u06d6\u06e0\u06db\u06d6\u06e7\u06e4\u06d6\u06ec\u06e6\u06e6\u06e2\u06df\u06e1\u06d8\u06e8\u06db\u06e4"

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v2, v1

    sparse-switch v2, :sswitch_data_1

    goto :goto_1

    :sswitch_2
    const-string v0, "\u06e8\u06d7\u06da\u06eb\u06e1\u06e8\u06e1\u06db\u06e8\u06d8\u06e8\u06e1\u06e0\u06e7\u06d6\u06e8\u06d9\u06dc\u06e1\u06d8\u06e7\u06eb\u06e5\u06d8\u06e0\u06ec\u06df\u06d9\u06e1\u06d6\u06e4\u06e5"

    goto :goto_1

    :sswitch_3
    const-string v0, "\u06dc\u06df\u06ec\u06dc\u06e1\u06dc\u06e8\u06d9\u06e6\u06e5\u06e1\u06d8\u06e5\u06e8\u06d8\u06d8\u06db\u06db\u06e7\u06db\u06da\u06e0\u06e6\u06d8\u06d8\u06e0\u06d9\u06e6\u06e2\u06e6\u06e1\u06d8\u06d8\u06e7\u06e5\u06e1\u06eb\u06da\u06e7\u06dc\u06e8\u06d8\u06d8\u06e2\u06e4\u06e6\u06da\u06e4\u06d6\u06e6\u06e0"

    goto :goto_1

    :sswitch_4
    const v2, -0x73bf8de1

    const-string v0, "\u06eb\u06df\u06d8\u06ec\u06da\u06d9\u06dc\u06da\u06d8\u06d8\u06dc\u06db\u06d8\u06e5\u06e6\u06eb\u06dc\u06db\u06d7\u06eb\u06ec\u06dc\u06ec\u06e0\u06df\u06e6\u06d7\u06e1\u06dc\u06dc\u06d8\u06ec\u06df\u06e1\u06d8\u06eb\u06e7\u06d9\u06d6\u06db\u06e2\u06e6\u06e4\u06e8\u06df\u06df\u06e5\u06d8\u06e1\u06e4\u06ec"

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v2

    sparse-switch v3, :sswitch_data_2

    goto :goto_2

    :sswitch_5
    const-string v0, "\u06e4\u06eb\u06db\u06eb\u06e1\u06d8\u06d8\u06ec\u06eb\u06da\u06eb\u06e5\u06d8\u06e2\u06e5\u06e2\u06df\u06df\u06d6\u06e8\u06e1\u06e8\u06df\u06d6\u06dc\u06e1\u06e5\u06eb\u06ec\u06d8"

    goto :goto_2

    :cond_0
    const-string v0, "\u06d6\u06e0\u06d6\u06e6\u06df\u06d8\u06d8\u06e2\u06da\u06e8\u06d6\u06e4\u06d9\u06e1\u06e5\u06d6\u06d6\u06e1\u06dc\u06d8\u06e5\u06db\u06d6\u06d8\u06e5\u06d6\u06e5\u06d8\u06d9\u06d6\u06e1\u06d8\u06db\u06ec\u06e1\u06d8\u06e1\u06e5\u06e8\u06d8\u06e1\u06d6\u06e6\u06df\u06d9\u06e2\u06e4\u06da\u06dc\u06d8\u06ec\u06d7\u06e6\u06e4\u06da\u06e8\u06d8\u06ec\u06e5\u06dc\u06d8\u06e6\u06e6\u06e1\u06d8"

    goto :goto_2

    :sswitch_6
    invoke-static {}, Lz2/qh;->OooO0O0()Lz2/qh;

    move-result-object v0

    invoke-virtual {v0}, Lz2/qh;->OooO0Oo()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "\u06ec\u06db\u06e6\u06d8\u06dc\u06dc\u06e7\u06ec\u06e5\u06e4\u06e2\u06d7\u06e5\u06d8\u06df\u06dc\u06db\u06e2\u06e6\u06d8\u06d8\u06d6\u06d6\u06ec\u06e1\u06e6\u06d7\u06d9\u06e6\u06e5\u06d8\u06da\u06e4\u06e7"

    goto :goto_2

    :sswitch_7
    const-string v0, "\u06e5\u06df\u06e1\u06e5\u06dc\u06e6\u06da\u06dc\u06d7\u06d8\u06e5\u06d7\u06e7\u06e8\u06e5\u06d8\u06e5\u06e5\u06e1\u06dc\u06eb\u06d8\u06d8\u06e2\u06da\u06e7\u06e2\u06e2\u06dc\u06d8\u06e4\u06eb\u06db\u06ec\u06da\u06d7\u06db\u06e8\u06d7\u06e1\u06e6\u06dc\u06e6\u06db\u06ec\u06da\u06e5\u06d8\u06d8\u06e5\u06e2\u06e8\u06d8"

    goto :goto_1

    :sswitch_8
    const-string v0, "\u06df\u06e8\u06e2\u06df\u06e5\u06e6\u06eb\u06dc\u06e6\u06da\u06e4\u06e1\u06e8\u06ec\u06db\u06d8\u06e2\u06dc\u06da\u06e6\u06d7\u06eb\u06db\u06d9\u06e5\u06d6\u06dc\u06d9\u06d9\u06e5\u06d8\u06e2\u06e0\u06db\u06e6\u06e6\u06e1\u06e5\u06e6\u06e4\u06dc\u06e7\u06dc\u06d8\u06db\u06d7\u06db\u06d9\u06d7\u06e5\u06d8\u06e2\u06da\u06dc\u06ec\u06dc\u06e7\u06d8"

    goto :goto_0

    :sswitch_9
    const-string v0, "XJL_AD_TAG1"

    const-string v1, "adview show"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "\u06e4\u06e0\u06d9\u06db\u06e0\u06e4\u06da\u06e8\u06e6\u06d7\u06eb\u06d7\u06ec\u06d6\u06db\u06e2\u06df\u06e5\u06d8\u06df\u06d6\u06eb\u06e5\u06e7\u06e0\u06d8\u06d9\u06e1\u06e6\u06e2\u06dc\u06d8\u06d6\u06eb\u06df\u06eb\u06d6\u06da\u06e2\u06e2\u06e7\u06df\u06e0\u06d7"

    goto :goto_0

    :sswitch_a
    invoke-direct {p0}, Lcom/cyjh/elfin/ui/activity/SplashActivity;->Oooo0o()V

    const-string v0, "\u06e5\u06d9\u06e4\u06d9\u06dc\u06eb\u06e7\u06e8\u06d6\u06d9\u06ec\u06d8\u06d8\u06e7\u06dc\u06dc\u06d8\u06eb\u06e6\u06e8\u06d8\u06d6\u06e0\u06e5\u06d8\u06d8\u06df\u06d8\u06e5\u06eb\u06d9\u06eb\u06eb\u06e6\u06d8\u06d8\u06e7\u06e5\u06d8\u06e2\u06dc\u06d9\u06dc\u06d9\u06da\u06e4\u06d9\u06d6"

    goto :goto_0

    :sswitch_b
    const-string v0, "XJL_AD_TAG"

    const-string v1, "adview hide"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "\u06e8\u06d9\u06dc\u06d8\u06ec\u06e7\u06df\u06ec\u06e1\u06eb\u06ec\u06ec\u06e1\u06d8\u06e4\u06e6\u06e1\u06dc\u06d8\u06e5\u06d8\u06d6\u06eb\u06e5\u06e8\u06e2\u06e6\u06ec\u06e1\u06e5\u06d7\u06e8\u06e4\u06e7\u06e6\u06ec\u06d9\u06e1\u06d7\u06e5\u06dc\u06ec\u06e7\u06df\u06da\u06e2\u06e5\u06dc\u06d8\u06eb\u06d8\u06e8\u06d8"

    goto :goto_0

    :sswitch_c
    invoke-static {p0}, Lz2/y8;->OooO0O0(Landroid/content/Context;)V

    const-string v0, "\u06da\u06e6\u06d6\u06d8\u06e0\u06e0\u06da\u06e7\u06e4\u06e0\u06eb\u06df\u06e4\u06e6\u06e1\u06d9\u06dc\u06db\u06e7\u06e6\u06e0\u06e8\u06d8\u06e7\u06e8\u06e7\u06db\u06e7\u06eb\u06eb\u06e2\u06eb\u06dc\u06d6\u06da\u06df\u06d7\u06e0\u06db\u06df\u06d8\u06e7\u06dc\u06e6"

    goto :goto_0

    :sswitch_d
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const-string v0, "\u06e8\u06e7\u06e8\u06d9\u06d7\u06e5\u06e2\u06e7\u06e7\u06d9\u06da\u06d6\u06ec\u06e0\u06e6\u06e6\u06df\u06e1\u06d8\u06e4\u06e5\u06e7\u06d8\u06d6\u06e0\u06e5\u06d8\u06df\u06ec\u06dc\u06e1\u06d6\u06d8\u06d8\u06e2\u06ec\u06db\u06ec\u06df\u06ec\u06da\u06dc\u06ec\u06eb\u06e6\u06d7"

    goto :goto_0

    :sswitch_e
    const-string v0, "\u06ec\u06df\u06e5\u06e0\u06dc\u06d6\u06e5\u06df\u06e4\u06e6\u06e4\u06d8\u06d8\u06e2\u06d6\u06e5\u06d8\u06db\u06da\u06dc\u06db\u06e8\u06dc\u06e7\u06d8\u06e5\u06d6\u06dc\u06d8\u06da\u06db\u06e1"

    goto :goto_0

    :sswitch_f
    const-string v0, "\u06e8\u06e7\u06e8\u06d9\u06d7\u06e5\u06e2\u06e7\u06e7\u06d9\u06da\u06d6\u06ec\u06e0\u06e6\u06e6\u06df\u06e1\u06d8\u06e4\u06e5\u06e7\u06d8\u06d6\u06e0\u06e5\u06d8\u06df\u06ec\u06dc\u06e1\u06d6\u06d8\u06d8\u06e2\u06ec\u06db\u06ec\u06df\u06ec\u06da\u06dc\u06ec\u06eb\u06e6\u06d7"

    goto :goto_0

    :sswitch_10
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x149a22a3 -> :sswitch_c
        -0xd41bed4 -> :sswitch_1
        0x522c156 -> :sswitch_b
        0x2850204c -> :sswitch_d
        0x2cff2971 -> :sswitch_a
        0x3ac454db -> :sswitch_f
        0x4266c1a1 -> :sswitch_10
        0x5245e69d -> :sswitch_0
        0x5ba38ae0 -> :sswitch_9
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x47ea6077 -> :sswitch_4
        -0x1de1c33f -> :sswitch_8
        0x210138d6 -> :sswitch_e
        0x6e3c7bd0 -> :sswitch_2
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        -0x346b5aa0 -> :sswitch_3
        -0x2274f0a3 -> :sswitch_5
        -0xd873e5a -> :sswitch_7
        0x64c4ae0f -> :sswitch_6
    .end sparse-switch
.end method

.method private Oooo0o()V
    .locals 4

    const-string v0, "\u06e4\u06e7\u06d7\u06e4\u06e2\u06e2\u06e2\u06e2\u06d9\u06e1\u06d6\u06e6\u06d8\u06da\u06df\u06e8\u06e6\u06e2\u06e6\u06d8\u06eb\u06d8\u06d6\u06d8\u06db\u06d6\u06d8\u06e6\u06e1\u06ec\u06e1\u06db\u06e0\u06e8\u06e7\u06d8\u06eb\u06e5\u06d6\u06d8\u06e6\u06df\u06d8\u06d8\u06ec\u06e5\u06eb\u06d8\u06d6\u06e8\u06d8\u06d9\u06da\u06e0"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0xbd

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x2cd

    const/16 v2, 0xd0

    const v3, -0x24cf44be

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d7\u06d6\u06d6\u06e5\u06eb\u06e7\u06ec\u06eb\u06d8\u06da\u06e0\u06d9\u06e6\u06dc\u06df\u06d6\u06e1\u06e0\u06e0\u06db\u06d8\u06eb\u06dc\u06e7\u06da\u06d8\u06d8\u06ec\u06d9\u06dc\u06d8\u06e7\u06e2\u06e0\u06ec\u06e6\u06e8\u06d8\u06d9\u06db\u06e5\u06d8\u06db\u06e5\u06d6\u06d8\u06db\u06dc\u06e0\u06d7\u06db\u06ec"

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SplashActivity;->Ooooooo:Lz2/rh;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/cyjh/elfin/ui/activity/SplashActivity;->o00O0O:Lz2/nh;

    invoke-virtual {v0, v1, v2}, Lz2/rh;->OooOO0(ILz2/nh;)V

    const-string v0, "\u06e8\u06df\u06e6\u06e2\u06e1\u06ec\u06e5\u06e5\u06e1\u06d8\u06e6\u06d8\u06e8\u06d8\u06e2\u06e1\u06e1\u06d8\u06e8\u06e0\u06e0\u06e6\u06e2\u06e5\u06d8\u06e7\u06e0\u06e7\u06df\u06eb\u06e1\u06d8\u06eb\u06e4\u06d8\u06d8"

    goto :goto_0

    :sswitch_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x72ea4057 -> :sswitch_0
        -0x3f293ede -> :sswitch_2
        0x3f59cafd -> :sswitch_1
    .end sparse-switch
.end method

.method private Oooo0o0()V
    .locals 5

    const/4 v2, 0x0

    const-string v0, "\u06ec\u06e7\u06e5\u06d8\u06e2\u06df\u06e1\u06d8\u06e4\u06eb\u06d6\u06d8\u06e4\u06d6\u06e6\u06db\u06ec\u06e7\u06dc\u06d6\u06da\u06e0\u06e6\u06e0\u06e4\u06db\u06db\u06e8\u06d7\u06ec\u06e7\u06d9\u06db\u06d6\u06e1\u06df\u06d8\u06e7\u06d6\u06df\u06e1\u06e7\u06d7\u06eb\u06e6\u06e1\u06d8\u06e5"

    move-object v1, v0

    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v3, 0x385

    xor-int/2addr v0, v3

    xor-int/lit8 v0, v0, 0x2f

    const/16 v3, 0x1e5

    const v4, -0x1b6123c2

    xor-int/2addr v0, v3

    xor-int/2addr v0, v4

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06dc\u06d9\u06e0\u06d9\u06ec\u06e7\u06dc\u06db\u06e6\u06e1\u06d8\u06db\u06e0\u06e4\u06e1\u06dc\u06e2\u06db\u06e0\u06e8\u06e2\u06ec\u06e2\u06dc\u06d8\u06ec\u06d7\u06e1\u06df\u06d9\u06eb\u06e1\u06d7\u06e7\u06d8\u06e6\u06ec\u06da\u06e2\u06d6\u06d8\u06ec\u06e7\u06db"

    move-object v1, v0

    goto :goto_0

    :sswitch_1
    const-string v0, "XJL_AD_TAG"

    const-string v1, "adview loadBannerForYunJing "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "\u06e2\u06e0\u06e1\u06e5\u06e1\u06da\u06df\u06eb\u06e5\u06d8\u06dc\u06e4\u06dc\u06e2\u06e6\u06dc\u06ec\u06dc\u06e1\u06ec\u06e2\u06dc\u06db\u06d7\u06e8\u06df\u06d8\u06e8\u06e5\u06d8"

    move-object v1, v0

    goto :goto_0

    :sswitch_2
    const v0, 0x7f0902a3

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    const-string v1, "\u06d9\u06e4\u06d7\u06e1\u06e0\u06dc\u06df\u06e8\u06d8\u06d8\u06e8\u06d9\u06d6\u06d7\u06e5\u06e8\u06ec\u06e5\u06e1\u06d8\u06dc\u06df\u06d7\u06e7\u06ec\u06d6\u06d8\u06e6\u06db\u06d6\u06d8\u06d9\u06e2\u06e8"

    move-object v2, v0

    goto :goto_0

    :sswitch_3
    invoke-static {}, Lz2/ih;->OooO0Oo()Lz2/ih;

    move-result-object v0

    new-instance v1, Lcom/cyjh/elfin/ui/activity/SplashActivity$OooO0o;

    invoke-direct {v1, p0}, Lcom/cyjh/elfin/ui/activity/SplashActivity$OooO0o;-><init>(Lcom/cyjh/elfin/ui/activity/SplashActivity;)V

    invoke-virtual {v0, p0, v2, v1}, Lz2/ih;->OooO0O0(Landroid/app/Activity;Landroid/view/ViewGroup;Lz2/xh;)V

    const-string v0, "\u06eb\u06d7\u06dc\u06d8\u06e1\u06d7\u06e6\u06d8\u06e5\u06d6\u06db\u06db\u06e2\u06e4\u06e5\u06d9\u06d6\u06e7\u06e5\u06e7\u06d8\u06e2\u06eb\u06e8\u06dc\u06ec\u06e4\u06d7\u06d7\u06e2\u06da\u06e2\u06e7\u06ec\u06d6\u06d7\u06db\u06e1\u06d6\u06e2\u06d8\u06dc\u06db\u06e7\u06e8\u06d8\u06e8\u06e6\u06eb\u06d6\u06e5\u06ec\u06e6\u06e0\u06e1\u06db\u06d6\u06e6\u06d8"

    move-object v1, v0

    goto :goto_0

    :sswitch_4
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x2ca3158c -> :sswitch_4
        -0xfef6e6c -> :sswitch_0
        0x1d1e27b9 -> :sswitch_1
        0x262470dd -> :sswitch_3
        0x393f1e38 -> :sswitch_2
    .end sparse-switch
.end method

.method private Oooo0oO()V
    .locals 11

    const/4 v4, 0x0

    const/4 v2, 0x0

    const-string v0, "\u06df\u06d7\u06e7\u06d8\u06d6\u06d7\u06d8\u06e8\u06d8\u06d8\u06d7\u06e4\u06e5\u06df\u06d9\u06ec\u06d6\u06e8\u06d8\u06ec\u06eb\u06e1\u06dc\u06df\u06dc\u06d8\u06eb\u06eb\u06e6\u06d8\u06e7\u06e0\u06e5\u06d8\u06e1\u06da\u06e7\u06e6\u06e7\u06e1\u06d8\u06e6\u06e7\u06eb\u06d8\u06e4\u06dc\u06d8\u06d8\u06e4\u06e4"

    move v1, v2

    move-object v3, v4

    move v5, v2

    move v6, v2

    move-object v7, v4

    move-object v8, v4

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/16 v9, 0x27

    xor-int/2addr v4, v9

    xor-int/lit16 v4, v4, 0x19d

    const/16 v9, 0xe8

    const v10, 0x16b68918

    xor-int/2addr v4, v9

    xor-int/2addr v4, v10

    sparse-switch v4, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d9\u06d6\u06e0\u06d8\u06d6\u06da\u06d6\u06dc\u06ec\u06ec\u06e0\u06e5\u06e8\u06d6\u06e5\u06d8\u06da\u06db\u06ec\u06e7\u06e2\u06d6\u06db\u06e5\u06df\u06df\u06e5\u06d6\u06d8\u06eb\u06e4\u06d6\u06d8"

    goto :goto_0

    :sswitch_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "\u06e2\u06df\u06dc\u06d8\u06e1\u06dc\u06e8\u06d8\u06da\u06da\u06ec\u06d8\u06e7\u06dc\u06d8\u06d9\u06e0\u06d8\u06d6\u06e5\u06eb\u06db\u06d7\u06e5\u06d8\u06eb\u06d9\u06d6\u06d8\u06ec\u06e6\u06e5\u06dc\u06eb\u06e6\u06da\u06e7\u06dc\u06d8\u06dc\u06e5\u06d7\u06e1\u06eb\u06e7\u06d8\u06d6\u06e0\u06e5\u06dc\u06eb\u06df\u06d9\u06dc"

    move-object v8, v4

    goto :goto_0

    :sswitch_2
    iget-object v4, p0, Lcom/cyjh/elfin/ui/activity/SplashActivity;->OooooOO:[Ljava/lang/String;

    const-string v0, "\u06d8\u06ec\u06da\u06d7\u06ec\u06eb\u06e2\u06e0\u06e7\u06eb\u06e6\u06d7\u06e6\u06e0\u06d8\u06d8\u06e8\u06e1\u06e8\u06d8\u06ec\u06dc\u06e5\u06e5\u06e4\u06d6\u06e1\u06e1\u06e8\u06d8\u06dc\u06d9\u06dc\u06e0\u06ec\u06eb\u06d7\u06ec\u06e4\u06e2\u06eb\u06e2\u06e2\u06d8\u06e5"

    move-object v7, v4

    goto :goto_0

    :sswitch_3
    array-length v4, v7

    const-string v0, "\u06ec\u06e5\u06ec\u06eb\u06e2\u06d9\u06e2\u06e5\u06e8\u06d8\u06ec\u06e2\u06dc\u06d8\u06df\u06e4\u06d7\u06d7\u06dc\u06db\u06e1\u06df\u06d8\u06d8\u06e2\u06d6\u06e6\u06e5\u06d8\u06df\u06d6\u06e1\u06d8"

    move v6, v4

    goto :goto_0

    :sswitch_4
    const-string v0, "\u06e8\u06d6\u06dc\u06d8\u06e6\u06df\u06e1\u06d8\u06e4\u06ec\u06df\u06e6\u06e6\u06e5\u06eb\u06e8\u06e6\u06d8\u06e4\u06ec\u06e7\u06d9\u06d8\u06e5\u06d8\u06da\u06e4\u06dc\u06d8\u06d7\u06e5\u06e8\u06d9\u06d9\u06e6\u06d8\u06d9\u06e6\u06d9\u06d9\u06d6\u06eb\u06ec\u06e0\u06eb\u06eb\u06d6\u06e6\u06eb\u06d8\u06d7\u06da\u06d6\u06db\u06e7\u06d8\u06e7"

    goto :goto_0

    :sswitch_5
    const-string v0, "\u06d7\u06db\u06d6\u06da\u06e7\u06dc\u06e8\u06e1\u06ec\u06e5\u06e4\u06e4\u06db\u06df\u06d7\u06e2\u06dc\u06e2\u06d9\u06da\u06dc\u06e4\u06e5\u06d9\u06e8\u06d9\u06d9\u06db\u06ec"

    move v5, v2

    goto :goto_0

    :sswitch_6
    const v4, -0x4ddf43d4

    const-string v0, "\u06e1\u06e0\u06e5\u06e5\u06db\u06d7\u06e6\u06e4\u06dc\u06d6\u06e6\u06ec\u06dc\u06e1\u06e1\u06d8\u06ec\u06e8\u06e1\u06e2\u06df\u06df\u06db\u06e8\u06e0\u06dc\u06d8\u06d6\u06d8\u06eb\u06e5\u06e5\u06e2\u06db\u06e0\u06db\u06e5\u06ec\u06d9\u06df\u06e5\u06d6\u06da\u06da\u06e0\u06da\u06d9\u06e5\u06d9\u06e8\u06e6\u06d6\u06e5\u06eb\u06e5"

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v9

    xor-int/2addr v9, v4

    sparse-switch v9, :sswitch_data_1

    goto :goto_1

    :sswitch_7
    const v9, 0x1493625c

    const-string v0, "\u06d8\u06db\u06e6\u06ec\u06db\u06e2\u06e4\u06e8\u06d8\u06d8\u06e5\u06d7\u06d6\u06da\u06e4\u06dc\u06dc\u06dc\u06e6\u06ec\u06ec\u06d7\u06d7\u06e7\u06dc\u06df\u06eb\u06d6\u06e8\u06e8\u06d6\u06da\u06d7\u06d7\u06db\u06e4\u06e1\u06e6\u06dc\u06da\u06db\u06db\u06e7\u06e5\u06eb\u06e1\u06d8\u06ec\u06da\u06d8\u06d8\u06d8\u06d7\u06e4\u06e5\u06d7\u06d6"

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v10

    xor-int/2addr v10, v9

    sparse-switch v10, :sswitch_data_2

    goto :goto_2

    :sswitch_8
    const-string v0, "\u06ec\u06d6\u06dc\u06d8\u06ec\u06e7\u06e8\u06d8\u06e1\u06ec\u06eb\u06e0\u06e1\u06e8\u06d8\u06dc\u06da\u06d6\u06d8\u06e7\u06e6\u06e5\u06d9\u06e0\u06e5\u06d8\u06e7\u06db\u06d6\u06e8\u06da\u06dc\u06dc\u06e8\u06da\u06d6\u06e6\u06d8\u06dc\u06d8\u06dc"

    goto :goto_1

    :cond_0
    const-string v0, "\u06d7\u06d9\u06d6\u06da\u06d7\u06e5\u06d8\u06e1\u06d9\u06dc\u06d8\u06d6\u06df\u06e8\u06e4\u06d7\u06e5\u06e4\u06e1\u06db\u06e0\u06df\u06e4\u06ec\u06dc\u06e8\u06e6\u06d8\u06d8\u06e6\u06d6\u06db\u06d7\u06db\u06eb\u06e5\u06e6\u06d9\u06d6\u06e5\u06e2\u06e4\u06e1"

    goto :goto_2

    :sswitch_9
    if-ge v5, v6, :cond_0

    const-string v0, "\u06da\u06e7\u06da\u06e5\u06eb\u06da\u06d6\u06df\u06d7\u06db\u06e7\u06e6\u06d8\u06e8\u06dc\u06e4\u06d8\u06d8\u06e8\u06e8\u06ec\u06e0\u06e0\u06dc\u06e1\u06dc\u06dc\u06d8\u06e8\u06e4\u06e8"

    goto :goto_2

    :sswitch_a
    const-string v0, "\u06d7\u06e4\u06e5\u06d9\u06d8\u06d6\u06df\u06eb\u06eb\u06df\u06ec\u06d7\u06df\u06e0\u06ec\u06e7\u06e0\u06e6\u06e1\u06d9\u06e4\u06dc\u06e6\u06db\u06d9\u06d7\u06d6\u06d8\u06e6\u06df\u06e8\u06d8\u06e5\u06d6\u06e0\u06eb\u06e5\u06dc"

    goto :goto_2

    :sswitch_b
    const-string v0, "\u06d7\u06e7\u06e5\u06d9\u06da\u06df\u06d9\u06e8\u06e2\u06d9\u06dc\u06e1\u06d6\u06e5\u06e5\u06d8\u06ec\u06eb\u06e5\u06e2\u06e5\u06e1\u06d6\u06e8\u06dc\u06d6\u06d7\u06e1\u06d8\u06d9\u06e8\u06dc\u06d8\u06e2\u06e1\u06d8\u06d8\u06e5\u06df\u06e1\u06d8"

    goto :goto_1

    :sswitch_c
    const-string v0, "\u06df\u06d9\u06ec\u06eb\u06d9\u06e0\u06ec\u06e6\u06e2\u06e5\u06d9\u06e1\u06d8\u06e8\u06e8\u06e4\u06ec\u06d9\u06e5\u06d8\u06e4\u06e0\u06e4\u06da\u06e5\u06d8\u06e6\u06ec\u06e8\u06e8\u06ec\u06e7"

    goto :goto_1

    :sswitch_d
    const-string v0, "\u06e0\u06d9\u06dc\u06e8\u06e1\u06ec\u06e7\u06e0\u06e0\u06eb\u06e5\u06ec\u06e0\u06e8\u06d6\u06e8\u06d8\u06e8\u06d7\u06dc\u06e5\u06e1\u06e6\u06e1\u06e2\u06d8\u06e2\u06e2\u06e1\u06e7\u06e5\u06e1\u06e0\u06e5\u06e7\u06e8\u06d9\u06e4\u06d8\u06d8\u06da\u06e0\u06e1"

    goto :goto_0

    :sswitch_e
    aget-object v3, v7, v5

    const-string v0, "\u06e7\u06e4\u06d8\u06e1\u06e5\u06e4\u06e4\u06dc\u06e8\u06d8\u06da\u06e4\u06d8\u06df\u06db\u06e6\u06e6\u06d6\u06e5\u06d8\u06e8\u06e7\u06db\u06e1\u06ec\u06e7\u06eb\u06e5\u06eb\u06dc\u06e4\u06e0"

    goto :goto_0

    :sswitch_f
    const v4, 0x669195ab

    const-string v0, "\u06e6\u06e5\u06d8\u06e2\u06da\u06e4\u06d7\u06d9\u06d8\u06d8\u06d9\u06df\u06d8\u06d8\u06ec\u06df\u06d6\u06d8\u06e4\u06eb\u06e1\u06e2\u06eb\u06eb\u06df\u06df\u06dc\u06d8\u06e0\u06d6\u06e6\u06d8\u06ec\u06ec\u06e8\u06d8\u06ec\u06da\u06e5\u06d8\u06e0\u06df\u06e6"

    :goto_3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v9

    xor-int/2addr v9, v4

    sparse-switch v9, :sswitch_data_3

    goto :goto_3

    :sswitch_10
    const-string v0, "\u06e0\u06e5\u06df\u06d8\u06db\u06d9\u06d9\u06e8\u06d8\u06eb\u06e0\u06e8\u06d8\u06e6\u06e7\u06d6\u06e0\u06d8\u06e0\u06e8\u06e4\u06e5\u06d8\u06d8\u06df\u06d8\u06d7\u06e1\u06dc\u06d8\u06e7\u06d7\u06df"

    goto :goto_3

    :sswitch_11
    const-string v0, "\u06db\u06db\u06e1\u06d7\u06e1\u06d8\u06e5\u06d6\u06d8\u06e2\u06d6\u06e8\u06d8\u06eb\u06df\u06e1\u06d8\u06da\u06e8\u06e1\u06d8\u06e5\u06e0\u06e8\u06d8\u06e5\u06dc\u06e6\u06ec\u06d6\u06dc\u06dc\u06e0\u06e8\u06d8\u06e0\u06dc\u06eb\u06e6\u06d8\u06e6\u06d8\u06db\u06da\u06dc\u06d8\u06e7\u06eb\u06d8"

    goto :goto_3

    :sswitch_12
    const v9, -0x1c67f17c

    const-string v0, "\u06e2\u06e4\u06e8\u06e5\u06d6\u06dc\u06d8\u06e4\u06eb\u06d6\u06d8\u06e8\u06e4\u06db\u06e5\u06eb\u06db\u06e4\u06df\u06d6\u06da\u06df\u06e0\u06e6\u06d6\u06e0\u06d7\u06e1\u06e7\u06d8\u06dc\u06e2\u06d8\u06d8"

    :goto_4
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v10

    xor-int/2addr v10, v9

    sparse-switch v10, :sswitch_data_4

    goto :goto_4

    :sswitch_13
    const-string v0, "\u06e4\u06e0\u06e5\u06d8\u06e5\u06e4\u06e7\u06d9\u06db\u06d9\u06dc\u06e4\u06e7\u06e5\u06e1\u06e6\u06e5\u06db\u06d8\u06df\u06e2\u06e1\u06e6\u06e4\u06e0\u06e0\u06e8\u06e5\u06e2\u06db\u06e1\u06d8\u06e4\u06eb\u06d6\u06d8\u06d7\u06d8\u06d8\u06d8"

    goto :goto_3

    :cond_1
    const-string v0, "\u06db\u06db\u06e6\u06e2\u06eb\u06df\u06e2\u06e2\u06d7\u06df\u06e5\u06e4\u06ec\u06d7\u06e0\u06dc\u06e6\u06e8\u06d8\u06e6\u06e1\u06d6\u06eb\u06e6\u06e1\u06e5\u06e8\u06d8\u06db\u06d6\u06e1\u06d8\u06d7\u06e6\u06e4\u06e8\u06dc\u06dc\u06d8"

    goto :goto_4

    :sswitch_14
    invoke-static {p0, v3}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "\u06df\u06e7\u06e6\u06df\u06e0\u06e6\u06d9\u06da\u06e1\u06d8\u06d7\u06d8\u06eb\u06dc\u06da\u06e6\u06df\u06e8\u06e5\u06da\u06e4\u06e1\u06d8\u06e0\u06e8\u06e8\u06ec\u06df\u06d8\u06d8\u06e2\u06e4\u06e4\u06db\u06e1\u06dc\u06d8\u06e1\u06d7\u06eb\u06eb\u06e6\u06e8\u06e2\u06d7\u06da\u06db\u06e4\u06d8\u06e5\u06d8\u06d8\u06d8"

    goto :goto_4

    :sswitch_15
    const-string v0, "\u06da\u06da\u06db\u06da\u06e1\u06d9\u06dc\u06e1\u06e5\u06d8\u06e5\u06eb\u06ec\u06e6\u06e0\u06e1\u06d8\u06ec\u06dc\u06d8\u06e4\u06e8\u06e5\u06d8\u06dc\u06e7\u06e4\u06e1\u06d8\u06da\u06df\u06eb\u06d6\u06e5\u06e4\u06dc\u06e1\u06ec\u06e4\u06da\u06ec\u06ec\u06e7\u06da\u06df\u06e7\u06e1\u06e8\u06d8\u06ec\u06dc\u06da\u06da\u06e1\u06d8\u06e7\u06df\u06d7"

    goto :goto_4

    :sswitch_16
    const-string v0, "\u06e0\u06d9\u06e8\u06e1\u06e5\u06d8\u06da\u06e2\u06e8\u06d8\u06e4\u06e0\u06ec\u06dc\u06e1\u06e2\u06ec\u06e7\u06e0\u06ec\u06e5\u06e5\u06d6\u06db\u06e5\u06d8\u06e5\u06dc\u06df\u06e8\u06da\u06e1\u06d8\u06d8\u06dc\u06e1\u06d8\u06e1\u06eb\u06e2\u06d7\u06da\u06e0\u06ec\u06e8\u06eb\u06df\u06e6\u06e8\u06d9\u06d6\u06e8"

    goto/16 :goto_0

    :sswitch_17
    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "\u06e8\u06df\u06ec\u06d8\u06e7\u06e5\u06e8\u06e0\u06e6\u06d8\u06d8\u06e6\u06db\u06db\u06e7\u06e0\u06d8\u06d6\u06eb\u06e1\u06db\u06e7\u06d6\u06ec\u06e8\u06e4\u06d9\u06e4\u06e5\u06e5\u06d8\u06e8\u06da\u06db\u06db\u06e8\u06e6\u06d8\u06ec\u06e7\u06e0\u06d8\u06e7\u06e8\u06e8\u06e8\u06ec\u06e0\u06d7\u06e1\u06d8\u06d8\u06db\u06db\u06d9\u06d7\u06d8"

    goto/16 :goto_0

    :sswitch_18
    add-int/lit8 v1, v5, 0x1

    const-string v0, "\u06df\u06da\u06e8\u06e0\u06e2\u06e4\u06e1\u06dc\u06d6\u06e6\u06e1\u06d8\u06d6\u06e8\u06d9\u06e7\u06df\u06e5\u06d6\u06df\u06df\u06e8\u06d7\u06d6\u06d8\u06e5\u06e0\u06e0\u06eb\u06e6\u06e5"

    goto/16 :goto_0

    :sswitch_19
    const-string v0, "\u06da\u06df\u06dc\u06d8\u06da\u06d6\u06e8\u06d8\u06d7\u06e1\u06e8\u06db\u06d6\u06e8\u06da\u06e0\u06df\u06ec\u06e2\u06d8\u06d6\u06e5\u06e0\u06e6\u06db\u06e1\u06eb\u06dc\u06e7\u06e2\u06e1\u06df\u06e6\u06e8\u06d8\u06d9\u06e1\u06dc\u06d8"

    move v5, v1

    goto/16 :goto_0

    :sswitch_1a
    const v4, 0x5b060f8e

    const-string v0, "\u06e4\u06e2\u06dc\u06df\u06dc\u06ec\u06d9\u06ec\u06d6\u06d8\u06e7\u06da\u06d9\u06df\u06e5\u06e1\u06d8\u06e2\u06d6\u06d6\u06e7\u06e8\u06da\u06e7\u06ec\u06e5\u06d9\u06e1\u06e1\u06d6\u06e5\u06e1\u06da\u06d6\u06e5\u06d8\u06e0\u06eb\u06dc\u06df\u06e8\u06e8\u06d8\u06e1\u06db\u06e5\u06e0\u06e1\u06e8\u06d8\u06e5\u06e7\u06d6\u06df\u06db\u06df\u06e2\u06e4\u06e6"

    :goto_5
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v9

    xor-int/2addr v9, v4

    sparse-switch v9, :sswitch_data_5

    goto :goto_5

    :sswitch_1b
    const-string v0, "\u06db\u06eb\u06db\u06e5\u06e0\u06d6\u06d8\u06ec\u06e8\u06d6\u06d8\u06da\u06e8\u06d7\u06e2\u06e6\u06e5\u06e2\u06e5\u06d6\u06e2\u06e2\u06e0\u06df\u06e4\u06e5\u06d8\u06da\u06d9\u06e2\u06d8\u06e2\u06d9\u06e1\u06d8\u06e5\u06d8\u06e4\u06dc\u06e6\u06d8\u06eb\u06eb\u06eb\u06df\u06dc\u06eb\u06e2\u06e2\u06e8\u06da\u06da"

    goto/16 :goto_0

    :sswitch_1c
    const-string v0, "\u06eb\u06db\u06dc\u06e2\u06e1\u06d7\u06e1\u06e8\u06d6\u06d8\u06ec\u06dc\u06d7\u06df\u06d8\u06e1\u06da\u06e6\u06d8\u06d8\u06eb\u06d8\u06e6\u06d9\u06e2\u06e5\u06d8\u06e1\u06d6\u06db\u06e7\u06e8\u06dc\u06d8"

    goto :goto_5

    :sswitch_1d
    const v9, -0x4c95e395

    const-string v0, "\u06db\u06df\u06d9\u06da\u06e1\u06e5\u06e5\u06d6\u06d8\u06ec\u06d6\u06e1\u06d8\u06dc\u06d7\u06ec\u06ec\u06d9\u06db\u06e5\u06eb\u06d7\u06d6\u06dc\u06d8\u06df\u06e2\u06da\u06eb\u06ec\u06df\u06da\u06e7\u06e7\u06e2\u06e0\u06d9\u06d7\u06d6\u06e7\u06e7\u06db\u06e2\u06d9\u06ec\u06e4\u06d6\u06e5\u06d8\u06dc\u06eb\u06d9\u06e2\u06ec\u06d8"

    :goto_6
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v10

    xor-int/2addr v10, v9

    sparse-switch v10, :sswitch_data_6

    goto :goto_6

    :sswitch_1e
    const-string v0, "\u06d9\u06e7\u06db\u06da\u06ec\u06e8\u06e1\u06e7\u06e7\u06e2\u06e6\u06e6\u06eb\u06e0\u06ec\u06d8\u06da\u06dc\u06d8\u06da\u06db\u06e0\u06e0\u06e4\u06ec\u06d7\u06dc\u06e6\u06d8\u06e0\u06e1\u06e1\u06d8\u06df\u06d9\u06d8\u06e7\u06db\u06e6\u06eb\u06d6\u06e1\u06e1\u06ec\u06dc\u06d8"

    goto :goto_6

    :cond_2
    const-string v0, "\u06e6\u06e6\u06e1\u06d8\u06e6\u06df\u06df\u06e0\u06e0\u06e6\u06d8\u06d7\u06dc\u06e7\u06e7\u06e0\u06eb\u06e4\u06d6\u06da\u06e7\u06d9\u06e5\u06ec\u06d6\u06eb\u06e2\u06d9\u06e5\u06d8\u06e8\u06e5\u06d7\u06d9\u06e8\u06e0\u06da\u06e1\u06d9\u06e5\u06dc\u06db\u06d8\u06e8\u06e5\u06e6\u06d8\u06e4\u06df\u06e7"

    goto :goto_6

    :sswitch_1f
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "\u06e0\u06e1\u06ec\u06d9\u06ec\u06dc\u06d8\u06e5\u06e4\u06d9\u06d6\u06da\u06dc\u06e8\u06df\u06e4\u06ec\u06e2\u06e5\u06d8\u06e1\u06d6\u06e2\u06e7\u06e8\u06d8\u06d8\u06e0\u06ec\u06e0\u06ec\u06eb\u06e4\u06e1\u06e4\u06d6\u06e4\u06d8\u06d8\u06d7\u06df\u06dc\u06d8\u06e6\u06e2\u06e2"

    goto :goto_6

    :sswitch_20
    const-string v0, "\u06d7\u06e7\u06e2\u06e7\u06d6\u06e7\u06df\u06e6\u06d6\u06d8\u06da\u06d7\u06e8\u06d8\u06d8\u06e8\u06d8\u06d6\u06e1\u06e1\u06e8\u06ec\u06e5\u06d8\u06ec\u06d7\u06ec\u06e8\u06ec\u06e1\u06d8\u06da\u06ec\u06e2\u06eb\u06d6\u06d6\u06dc\u06e5\u06e6\u06d8\u06e1\u06d7\u06dc\u06d9\u06df\u06d8\u06e2\u06e1\u06e6\u06d8\u06dc\u06e2\u06eb\u06e5\u06d9\u06e1\u06d6\u06df\u06e0"

    goto :goto_5

    :sswitch_21
    const-string v0, "\u06db\u06e7\u06e2\u06e4\u06e1\u06e8\u06d8\u06e6\u06e7\u06e5\u06d9\u06dc\u06e5\u06d8\u06d6\u06dc\u06e6\u06e6\u06e8\u06e8\u06d7\u06e6\u06d6\u06d8\u06d6\u06df\u06df\u06e8\u06e6\u06e8\u06d6\u06d8\u06da"

    goto :goto_5

    :sswitch_22
    const-string v0, "\u06e2\u06da\u06e5\u06e4\u06e7\u06e8\u06d8\u06d8\u06ec\u06e6\u06e0\u06e1\u06d6\u06d7\u06dc\u06e1\u06d8\u06e0\u06e0\u06e1\u06d8\u06e6\u06e7\u06e0\u06d6\u06e7\u06df\u06e5\u06eb\u06e8\u06d7\u06d6\u06d9"

    goto/16 :goto_0

    :sswitch_23
    invoke-direct {p0}, Lcom/cyjh/elfin/ui/activity/SplashActivity;->OooOoOO()V

    const-string v0, "\u06e0\u06db\u06e5\u06d8\u06e4\u06d6\u06d6\u06d8\u06e7\u06d9\u06dc\u06df\u06eb\u06e0\u06d9\u06e2\u06e0\u06da\u06eb\u06e8\u06e8\u06e2\u06df\u06eb\u06db\u06db\u06d6\u06d9\u06eb\u06e5\u06e6\u06d8"

    goto/16 :goto_0

    :sswitch_24
    new-array v0, v2, [Ljava/lang/String;

    invoke-interface {v8, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const/4 v4, 0x1

    invoke-static {p0, v0, v4}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    const-string v0, "\u06ec\u06d8\u06d6\u06d8\u06d9\u06e1\u06e0\u06e6\u06e6\u06d6\u06e5\u06e0\u06d6\u06ec\u06e5\u06d8\u06d8\u06d8\u06e4\u06e5\u06db\u06e5\u06d6\u06e5\u06d6\u06d8\u06e7\u06eb\u06eb\u06ec\u06df\u06e6\u06e4\u06e2\u06d6\u06d8\u06eb\u06e5\u06e6\u06d8\u06df\u06e2\u06ec\u06da\u06e4\u06e1\u06d8\u06d8\u06df\u06da\u06eb\u06e8\u06e7\u06d8\u06d7\u06eb\u06e0\u06d6\u06e6\u06dc\u06d8"

    goto/16 :goto_0

    :sswitch_25
    const-string v0, "\u06d7\u06db\u06d6\u06da\u06e7\u06dc\u06e8\u06e1\u06ec\u06e5\u06e4\u06e4\u06db\u06df\u06d7\u06e2\u06dc\u06e2\u06d9\u06da\u06dc\u06e4\u06e5\u06d9\u06e8\u06d9\u06d9\u06db\u06ec"

    goto/16 :goto_0

    :sswitch_26
    const-string v0, "\u06e8\u06df\u06ec\u06d8\u06e7\u06e5\u06e8\u06e0\u06e6\u06d8\u06d8\u06e6\u06db\u06db\u06e7\u06e0\u06d8\u06d6\u06eb\u06e1\u06db\u06e7\u06d6\u06ec\u06e8\u06e4\u06d9\u06e4\u06e5\u06e5\u06d8\u06e8\u06da\u06db\u06db\u06e8\u06e6\u06d8\u06ec\u06e7\u06e0\u06d8\u06e7\u06e8\u06e8\u06e8\u06ec\u06e0\u06d7\u06e1\u06d8\u06d8\u06db\u06db\u06d9\u06d7\u06d8"

    goto/16 :goto_0

    :sswitch_27
    const-string v0, "\u06e6\u06e8\u06e7\u06d8\u06ec\u06d7\u06e7\u06df\u06e6\u06e0\u06e6\u06e2\u06e2\u06e2\u06da\u06d7\u06d6\u06ec\u06d6\u06d8\u06e0\u06df\u06d6\u06da\u06e5\u06dc\u06d8\u06e7\u06d6\u06e0\u06d7\u06d9\u06df\u06e6\u06e8\u06e1\u06e0\u06ec\u06e4\u06d9\u06e8\u06db\u06d8\u06d7"

    goto/16 :goto_0

    :sswitch_28
    const-string v0, "\u06ec\u06d8\u06d6\u06d8\u06d9\u06e1\u06e0\u06e6\u06e6\u06d6\u06e5\u06e0\u06d6\u06ec\u06e5\u06d8\u06d8\u06d8\u06e4\u06e5\u06db\u06e5\u06d6\u06e5\u06d6\u06d8\u06e7\u06eb\u06eb\u06ec\u06df\u06e6\u06e4\u06e2\u06d6\u06d8\u06eb\u06e5\u06e6\u06d8\u06df\u06e2\u06ec\u06da\u06e4\u06e1\u06d8\u06d8\u06df\u06da\u06eb\u06e8\u06e7\u06d8\u06d7\u06eb\u06e0\u06d6\u06e6\u06dc\u06d8"

    goto/16 :goto_0

    :sswitch_29
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7801fbe5 -> :sswitch_17
        -0x74b53b2e -> :sswitch_6
        -0x72989b49 -> :sswitch_23
        -0x6f417785 -> :sswitch_e
        -0x5520e849 -> :sswitch_29
        -0x51be6506 -> :sswitch_25
        -0x41d6ab3d -> :sswitch_18
        -0x38926149 -> :sswitch_4
        -0x283390fb -> :sswitch_2
        -0x24b0c21b -> :sswitch_19
        -0x14f89cbd -> :sswitch_1a
        -0xec3d618 -> :sswitch_24
        0x1ab67305 -> :sswitch_5
        0x1b7d7589 -> :sswitch_1
        0x3412234b -> :sswitch_28
        0x59997247 -> :sswitch_3
        0x64d97739 -> :sswitch_f
        0x6a8d9ef5 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x5fa5e9f0 -> :sswitch_7
        -0x379c6c65 -> :sswitch_d
        -0x87415bd -> :sswitch_c
        0x64f76912 -> :sswitch_27
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        -0x6ee6ebb4 -> :sswitch_9
        -0x28a4a62f -> :sswitch_b
        -0x1eee9b38 -> :sswitch_8
        -0x1e04267a -> :sswitch_a
    .end sparse-switch

    :sswitch_data_3
    .sparse-switch
        -0x3d7d148f -> :sswitch_12
        0x118ca067 -> :sswitch_16
        0x18e2eabd -> :sswitch_26
        0x599eff91 -> :sswitch_10
    .end sparse-switch

    :sswitch_data_4
    .sparse-switch
        -0x41c8b66d -> :sswitch_13
        0x1baf301b -> :sswitch_14
        0x2c212625 -> :sswitch_11
        0x5bfa5f02 -> :sswitch_15
    .end sparse-switch

    :sswitch_data_5
    .sparse-switch
        -0x1f171508 -> :sswitch_22
        -0x1e118dff -> :sswitch_1d
        0x2a57463e -> :sswitch_1b
        0x5d0f510f -> :sswitch_21
    .end sparse-switch

    :sswitch_data_6
    .sparse-switch
        -0x2d18c725 -> :sswitch_1e
        0x7707336d -> :sswitch_20
        0x7a24296c -> :sswitch_1f
        0x7ff55dd6 -> :sswitch_1c
    .end sparse-switch
.end method

.method private Oooo0oo()V
    .locals 8

    const/4 v3, 0x0

    const-string v0, "\u06dc\u06d8\u06e6\u06db\u06d9\u06e8\u06d8\u06e7\u06e0\u06d7\u06e2\u06ec\u06e1\u06d8\u06e2\u06e8\u06e7\u06eb\u06e2\u06e6\u06d8\u06d7\u06d8\u06e1\u06ec\u06e1\u06ec\u06df\u06e1\u06ec\u06e6\u06dc\u06d9\u06e6\u06ec\u06e5\u06e2\u06e4\u06d6\u06d8\u06d9\u06ec\u06df\u06e2\u06e5\u06da\u06e6\u06df\u06e4\u06e0\u06db\u06e5\u06d8\u06d6\u06d6\u06e6\u06d8\u06ec\u06e7\u06e8\u06d8"

    move-object v1, v0

    move-object v2, v3

    move-object v4, v3

    move-object v5, v3

    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v6, 0xf2

    xor-int/2addr v0, v6

    xor-int/lit16 v0, v0, 0x125

    const/16 v6, 0x217

    const v7, 0x161f3c4b

    xor-int/2addr v0, v6

    xor-int/2addr v0, v7

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e5\u06d8\u06d6\u06d8\u06e4\u06d8\u06e6\u06df\u06db\u06e2\u06d6\u06dc\u06eb\u06d8\u06d8\u06d7\u06e1\u06d8\u06e6\u06da\u06dc\u06d8\u06d8\u06d8\u06e5\u06e0\u06e7\u06eb\u06e5\u06d9\u06d6\u06d9\u06eb\u06e8\u06d6\u06d9\u06dc\u06d8"

    move-object v1, v0

    goto :goto_0

    :sswitch_1
    const v1, -0x1e0c543f

    const-string v0, "\u06d6\u06e1\u06d9\u06eb\u06ec\u06d7\u06e2\u06e8\u06db\u06ec\u06e6\u06e6\u06ec\u06ec\u06e7\u06d7\u06d8\u06e8\u06d6\u06e5\u06e5\u06dc\u06d8\u06e7\u06dc\u06d6\u06d8\u06e7\u06eb\u06e1\u06d8\u06e6\u06dc\u06db\u06dc\u06e7\u06d8\u06e7\u06ec\u06dc\u06e5\u06e5\u06da\u06dc\u06e1\u06d8\u06d8\u06dc\u06d9\u06e5\u06d8\u06e2\u06ec\u06d6\u06da\u06d8\u06e0"

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v6

    xor-int/2addr v6, v1

    sparse-switch v6, :sswitch_data_1

    goto :goto_1

    :sswitch_2
    const v6, -0x20b83545

    const-string v0, "\u06db\u06e5\u06db\u06db\u06df\u06df\u06d6\u06e8\u06e0\u06db\u06e2\u06d7\u06ec\u06d6\u06e2\u06df\u06d6\u06e5\u06e7\u06d8\u06d8\u06dc\u06ec\u06da\u06da\u06ec\u06e1\u06da\u06ec\u06e0\u06d8\u06e5\u06e1\u06e0\u06e7\u06df"

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v7

    xor-int/2addr v7, v6

    sparse-switch v7, :sswitch_data_2

    goto :goto_2

    :sswitch_3
    invoke-static {}, Lz2/v3;->OooO()Lz2/v3;

    move-result-object v0

    invoke-virtual {v0}, Lz2/v3;->OooO0O0()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/cyjh/elfin/ui/activity/SplashActivity;

    if-eqz v0, :cond_0

    const-string v0, "\u06da\u06e6\u06e4\u06dc\u06d9\u06e1\u06d8\u06d9\u06e6\u06d8\u06ec\u06d8\u06d6\u06e6\u06e1\u06e5\u06d8\u06dc\u06eb\u06d7\u06da\u06ec\u06e2\u06d8\u06e5\u06df\u06e6\u06e7\u06dc\u06d9\u06e1\u06dc\u06d9\u06e4\u06e4\u06e6\u06d8\u06d6\u06d8\u06db\u06ec\u06e6\u06d8\u06da\u06e6\u06d7\u06d7\u06ec\u06da\u06e7\u06ec\u06eb\u06df\u06e4\u06d9\u06d8\u06e7\u06d8"

    goto :goto_2

    :sswitch_4
    const-string v0, "\u06dc\u06ec\u06eb\u06da\u06e4\u06d8\u06e6\u06dc\u06da\u06df\u06e8\u06d6\u06d8\u06d9\u06e0\u06da\u06dc\u06ec\u06eb\u06e4\u06d6\u06e5\u06d8\u06df\u06e4\u06e7\u06d8\u06dc\u06ec\u06df\u06eb\u06e2\u06e5\u06e0\u06eb\u06e8\u06e8\u06e8\u06d8\u06e4\u06e6\u06dc\u06d8\u06e7\u06e6\u06e0\u06da\u06da\u06e2\u06e1\u06e6"

    goto :goto_1

    :cond_0
    const-string v0, "\u06ec\u06e4\u06eb\u06db\u06e6\u06ec\u06e4\u06dc\u06e7\u06eb\u06e5\u06e1\u06ec\u06ec\u06e2\u06df\u06d7\u06db\u06df\u06e1\u06e7\u06d7\u06e6\u06d7\u06e2\u06e8\u06d6\u06db\u06d8\u06d8"

    goto :goto_2

    :sswitch_5
    const-string v0, "\u06e6\u06d7\u06ec\u06d8\u06dc\u06db\u06d6\u06e7\u06ec\u06ec\u06db\u06d8\u06ec\u06ec\u06d8\u06e6\u06e7\u06d8\u06dc\u06d7\u06e7\u06d8\u06e6\u06d7\u06e4\u06d9\u06e7\u06e2\u06e8\u06e7\u06d8\u06d7\u06e7\u06e5\u06e6\u06da\u06e4\u06da\u06dc\u06df\u06da\u06e6\u06d6\u06d8\u06d6\u06e7\u06dc\u06d8\u06df\u06df\u06d6"

    goto :goto_2

    :sswitch_6
    const-string v0, "\u06e8\u06e2\u06d9\u06e6\u06d7\u06d9\u06e4\u06e5\u06ec\u06d9\u06e0\u06db\u06da\u06e5\u06d8\u06eb\u06e2\u06e6\u06e0\u06dc\u06e0\u06ec\u06db\u06ec\u06eb\u06e0\u06d8\u06e8\u06d9\u06eb\u06eb\u06d9\u06d8\u06df\u06d6\u06dc"

    goto :goto_1

    :sswitch_7
    const-string v0, "\u06e5\u06d6\u06e5\u06db\u06d6\u06d8\u06e1\u06eb\u06d8\u06d8\u06d9\u06e8\u06e8\u06db\u06ec\u06e1\u06dc\u06db\u06e5\u06d8\u06eb\u06ec\u06e5\u06d6\u06d9\u06d8\u06d8\u06e7\u06d7\u06db\u06e6\u06df\u06df\u06da\u06db\u06d8\u06e4\u06e6\u06d8\u06d9\u06e7\u06e5\u06d8\u06e1\u06d7\u06e6\u06d6\u06ec\u06e1\u06df\u06e4\u06e4"

    goto :goto_1

    :sswitch_8
    const-string v0, "\u06e2\u06d7\u06d7\u06dc\u06da\u06e6\u06d8\u06eb\u06da\u06dc\u06d8\u06e1\u06e7\u06e6\u06e2\u06e2\u06e1\u06d8\u06da\u06e6\u06ec\u06d6\u06e6\u06ec\u06dc\u06d9\u06eb\u06da\u06d7\u06e7\u06e1\u06d9\u06e1\u06ec\u06e8\u06dc\u06d8\u06e2\u06e5\u06d8\u06d8\u06df\u06d9\u06d7\u06db\u06d9\u06d9\u06db\u06d8\u06e4\u06db\u06eb"

    move-object v1, v0

    goto :goto_0

    :sswitch_9
    invoke-static {}, Lz2/x9;->OooO0O0()Lz2/x9;

    move-result-object v0

    const v1, 0x7f0c00e1

    const v5, 0x7f110191

    invoke-virtual {v0, p0, v1, v5}, Lz2/x9;->OooO0o0(Landroid/content/Context;II)Landroid/app/AlertDialog;

    move-result-object v5

    const-string v0, "\u06df\u06e6\u06e1\u06e7\u06e0\u06db\u06d8\u06dc\u06e2\u06e6\u06da\u06dc\u06d8\u06e6\u06e4\u06d8\u06d9\u06eb\u06e6\u06ec\u06e4\u06df\u06d8\u06d6\u06e1\u06d8\u06d8\u06d7\u06e7\u06e7\u06d7\u06e0"

    move-object v1, v0

    goto :goto_0

    :sswitch_a
    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog;->setCancelable(Z)V

    const-string v0, "\u06e4\u06e5\u06e5\u06d8\u06ec\u06dc\u06e6\u06d8\u06e2\u06d8\u06d8\u06d8\u06e0\u06dc\u06e0\u06e1\u06d9\u06e5\u06d8\u06e0\u06d7\u06ec\u06d9\u06d8\u06d8\u06d8\u06e2\u06db\u06e2\u06e0\u06e7\u06d6\u06d8\u06e6\u06e0\u06e7\u06e4\u06e7\u06d7\u06db\u06e2\u06db"

    move-object v1, v0

    goto :goto_0

    :sswitch_b
    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    const-string v0, "\u06e6\u06d7\u06d6\u06d8\u06d7\u06eb\u06d8\u06ec\u06e2\u06d6\u06d8\u06e5\u06e5\u06d7\u06e2\u06e5\u06d9\u06d9\u06ec\u06e7\u06d6\u06d7\u06db\u06db\u06e6\u06e8\u06d7\u06e0\u06d6\u06e7\u06dc\u06db\u06d8\u06e7\u06d6\u06d8\u06e6\u06e1\u06d6\u06d8\u06db\u06dc\u06ec\u06eb\u06db\u06df\u06df\u06e4\u06e1\u06d8\u06df\u06ec\u06d8\u06dc\u06d7\u06dc\u06d8\u06e0\u06da\u06d6"

    move-object v1, v0

    goto :goto_0

    :sswitch_c
    const v0, 0x7f090308

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "\u06e2\u06e0\u06eb\u06e4\u06ec\u06df\u06e7\u06df\u06ec\u06d6\u06e4\u06dc\u06ec\u06ec\u06e1\u06da\u06e6\u06d8\u06d8\u06e6\u06dc\u06ec\u06d6\u06df\u06e5\u06db\u06d6\u06d8\u06e2\u06d8\u06dc\u06eb\u06d7\u06e8\u06e1\u06db\u06e6\u06d8\u06e6\u06d6\u06d8\u06d8\u06e1\u06d7\u06df"

    move-object v4, v0

    goto/16 :goto_0

    :sswitch_d
    const v0, 0x7f09030a

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "\u06d6\u06da\u06d6\u06d8\u06e0\u06d6\u06d6\u06e0\u06d9\u06e5\u06ec\u06d9\u06e4\u06df\u06d6\u06dc\u06eb\u06e6\u06e4\u06e6\u06d9\u06db\u06d7\u06da\u06e2\u06d6\u06d8\u06d8\u06e6\u06d9\u06ec\u06d6\u06da\u06e1\u06d8\u06e4\u06d8\u06e2"

    move-object v2, v0

    goto/16 :goto_0

    :sswitch_e
    new-instance v0, Lcom/cyjh/elfin/ui/activity/SplashActivity$OooOO0O;

    invoke-direct {v0, p0, v5, v3}, Lcom/cyjh/elfin/ui/activity/SplashActivity$OooOO0O;-><init>(Lcom/cyjh/elfin/ui/activity/SplashActivity;Landroid/app/AlertDialog;Lcom/cyjh/elfin/ui/activity/SplashActivity$OooO00o;)V

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "\u06d7\u06df\u06d6\u06d8\u06d6\u06eb\u06d6\u06e6\u06d9\u06e8\u06d8\u06ec\u06d7\u06eb\u06e8\u06e1\u06d8\u06e5\u06e7\u06e1\u06d9\u06dc\u06d7\u06e4\u06da\u06ec\u06eb\u06e5\u06d8\u06da\u06e2\u06e7"

    move-object v1, v0

    goto/16 :goto_0

    :sswitch_f
    new-instance v0, Lcom/cyjh/elfin/ui/activity/SplashActivity$OooO0O0;

    invoke-direct {v0, p0}, Lcom/cyjh/elfin/ui/activity/SplashActivity$OooO0O0;-><init>(Lcom/cyjh/elfin/ui/activity/SplashActivity;)V

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "\u06e8\u06df\u06d9\u06d6\u06e8\u06d8\u06d8\u06da\u06d8\u06eb\u06d6\u06da\u06dc\u06d8\u06e1\u06db\u06e6\u06e4\u06dc\u06e2\u06da\u06d6\u06d8\u06df\u06eb\u06e1\u06d8\u06e4\u06dc\u06da\u06d6\u06e1\u06da"

    move-object v1, v0

    goto/16 :goto_0

    :sswitch_10
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u5f39\u7a97\u51fa\u95ee\u9898"

    invoke-static {v0, v1}, Lz2/c5;->OooO0o0(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "\u06dc\u06d9\u06db\u06dc\u06e6\u06ec\u06d9\u06db\u06db\u06e5\u06e1\u06e8\u06db\u06dc\u06e7\u06d9\u06d8\u06e5\u06d7\u06da\u06e7\u06d9\u06ec\u06e7\u06dc\u06da\u06e7\u06e0\u06e6\u06d9\u06db\u06d7\u06e2\u06dc\u06e1\u06d8\u06eb\u06d8\u06da\u06d9\u06db\u06e2"

    move-object v1, v0

    goto/16 :goto_0

    :sswitch_11
    const-string v0, "\u06e5\u06e6\u06e4\u06e6\u06db\u06e0\u06da\u06e0\u06dc\u06d8\u06eb\u06dc\u06e1\u06d8\u06e8\u06d6\u06e0\u06d6\u06dc\u06d7\u06df\u06e4\u06db\u06e8\u06eb\u06e5\u06d8\u06df\u06db\u06d7\u06eb\u06db\u06df"

    move-object v1, v0

    goto/16 :goto_0

    :sswitch_12
    const-string v0, "\u06dc\u06d9\u06db\u06dc\u06e6\u06ec\u06d9\u06db\u06db\u06e5\u06e1\u06e8\u06db\u06dc\u06e7\u06d9\u06d8\u06e5\u06d7\u06da\u06e7\u06d9\u06ec\u06e7\u06dc\u06da\u06e7\u06e0\u06e6\u06d9\u06db\u06d7\u06e2\u06dc\u06e1\u06d8\u06eb\u06d8\u06da\u06d9\u06db\u06e2"

    move-object v1, v0

    goto/16 :goto_0

    :sswitch_13
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x3ac42a1e -> :sswitch_f
        -0x19f676fe -> :sswitch_d
        -0x10692c46 -> :sswitch_13
        0x1209cc70 -> :sswitch_0
        0x1541d73b -> :sswitch_e
        0x1b24c864 -> :sswitch_10
        0x1c6a2ca7 -> :sswitch_b
        0x318d076f -> :sswitch_a
        0x41f31ade -> :sswitch_12
        0x4a43beac -> :sswitch_9
        0x610e2abf -> :sswitch_1
        0x6aca3fbb -> :sswitch_c
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x45ffe681 -> :sswitch_8
        0x9e8cfe -> :sswitch_7
        0x3be8d77a -> :sswitch_2
        0x5a0a57fc -> :sswitch_11
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        -0x3054a440 -> :sswitch_5
        0x1242133 -> :sswitch_3
        0x72e6f6ee -> :sswitch_4
        0x74795a27 -> :sswitch_6
    .end sparse-switch
.end method


# virtual methods
.method public OooO()V
    .locals 4

    const-string v0, "\u06d7\u06dc\u06e1\u06e1\u06e0\u06d8\u06da\u06d6\u06dc\u06e7\u06d8\u06eb\u06d6\u06e4\u06e8\u06d7\u06dc\u06df\u06e1\u06d7\u06d8\u06d8\u06d7\u06d6\u06dc\u06d8\u06dc\u06d8\u06d6\u06dc\u06e5\u06d7\u06d6\u06e0\u06ec\u06d7\u06e4\u06db"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x3b2

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x24d

    const/16 v2, 0x2a7

    const v3, -0x687868a

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d8\u06e0\u06dc\u06dc\u06db\u06e8\u06d8\u06e6\u06e1\u06db\u06e2\u06d7\u06d8\u06eb\u06dc\u06d8\u06e5\u06e8\u06e5\u06e7\u06e7\u06e1\u06d8\u06e2\u06e2\u06e1\u06db\u06db\u06e5\u06e0\u06d7\u06d6\u06d8"

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/cyjh/common/base/activity/BaseModelActivity;->OooooO0:Landroidx/lifecycle/AndroidViewModel;

    check-cast v0, Lz2/qa;

    invoke-virtual {v0}, Lz2/qa;->Oooo0()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lz2/l9;

    invoke-direct {v1, p0}, Lz2/l9;-><init>(Lcom/cyjh/elfin/ui/activity/SplashActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    const-string v0, "\u06e2\u06da\u06db\u06da\u06e5\u06e1\u06e8\u06e5\u06e1\u06d6\u06d6\u06e1\u06e8\u06e5\u06e7\u06eb\u06e1\u06d8\u06e1\u06e8\u06dc\u06e6\u06dc\u06db\u06d7\u06d9\u06e1\u06d9\u06d6\u06d8\u06d8\u06ec\u06ec\u06d7\u06da\u06e8\u06d8\u06e4\u06d8\u06d9\u06d9\u06df\u06e5\u06e5\u06eb\u06d8\u06d8\u06e5\u06d9\u06e5"

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/cyjh/common/base/activity/BaseModelActivity;->OooooO0:Landroidx/lifecycle/AndroidViewModel;

    check-cast v0, Lz2/qa;

    invoke-virtual {v0}, Lz2/qa;->Oooo0O0()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lz2/k9;

    invoke-direct {v1, p0}, Lz2/k9;-><init>(Lcom/cyjh/elfin/ui/activity/SplashActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    const-string v0, "\u06dc\u06d7\u06eb\u06dc\u06e8\u06e2\u06eb\u06ec\u06eb\u06db\u06e0\u06da\u06d6\u06d6\u06e7\u06eb\u06e5\u06e7\u06df\u06eb\u06dc\u06ec\u06eb\u06db\u06e2\u06d7\u06e2\u06e8\u06e7\u06db\u06e4\u06df\u06d9\u06dc\u06e8\u06d8\u06ec\u06eb\u06e6\u06d6\u06df\u06e1\u06d8"

    goto :goto_0

    :sswitch_3
    new-instance v0, Lz2/rh;

    iget-object v1, p0, Lcom/cyjh/elfin/ui/activity/SplashActivity;->OooooOo:Landroid/widget/ImageView;

    invoke-direct {v0, p0, v1}, Lz2/rh;-><init>(Landroid/app/Activity;Landroid/view/View;)V

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/SplashActivity;->Ooooooo:Lz2/rh;

    const-string v0, "\u06e7\u06e0\u06da\u06e4\u06d6\u06d6\u06d8\u06d8\u06d8\u06e1\u06dc\u06d8\u06d6\u06d8\u06e0\u06eb\u06d6\u06e2\u06d8\u06dc\u06d8\u06e5\u06db\u06db\u06e2\u06e2\u06e1\u06e6\u06dc\u06e7\u06d8\u06d9\u06d6\u06d8\u06d8\u06eb\u06ec\u06e1\u06d8\u06d6\u06eb\u06d8\u06d8\u06eb\u06e7\u06d7"

    goto :goto_0

    :sswitch_4
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x4d87888c -> :sswitch_2
        -0x314e5105 -> :sswitch_1
        -0x253e6b5a -> :sswitch_0
        0x7c75ee9 -> :sswitch_3
        0x528406b5 -> :sswitch_4
    .end sparse-switch
.end method

.method public OooO0oO()I
    .locals 4

    const-string v0, "\u06da\u06e7\u06e0\u06e5\u06e1\u06dc\u06e4\u06eb\u06e0\u06d8\u06da\u06d8\u06d8\u06e4\u06df\u06df\u06e8\u06ec\u06e6\u06d8\u06dc\u06e5\u06d9\u06e1\u06df\u06e6\u06e6\u06e7\u06e4\u06d6\u06e0\u06d6\u06d8\u06e5\u06eb\u06e2\u06eb\u06da\u06eb\u06d8\u06df\u06e2\u06d8\u06dc\u06e1"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0xa7

    xor-int/2addr v1, v2

    xor-int/lit8 v1, v1, 0x72

    const/16 v2, 0x35e

    const v3, 0x1ba3201a

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e1\u06d6\u06dc\u06d8O\u06e1\u06e1\u06ec\u06dc\u06e1\u06e8\u06ec\u06df\u06e6\u06d8\u06e4\u06e5\u06e6\u06d8\u06e8\u06d9\u06ec\u06d6\u06e0\u06e0\u06d6\u06da\u06d7\u06e6\u06e8\u06e4"

    goto :goto_0

    :sswitch_1
    const v0, 0x7f0c002f

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7d2fb7c4 -> :sswitch_0
        0x3583ad26 -> :sswitch_1
    .end sparse-switch
.end method

.method public OooO0oo()Ljava/lang/Class;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Lz2/qa;",
            ">;"
        }
    .end annotation

    const-string v0, "\u06dc\u06d7\u06d6\u06d8\u06e1\u06e7\u06d8\u06da\u06d8\u06ec\u06e2\u06da\u06e6\u06d8\u06e6\u06da\u06d8\u06d8\u06e8\u06e2\u06d6\u06d8\u06d7\u06e7\u06e2\u06d9\u06d6\u06e5\u06d8\u06e7\u06d9\u06e1\u06d8\u06e0\u06e0\u06da\u06e4\u06d7\u06df\u06e2\u06e8\u06e1\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0xa5

    xor-int/2addr v1, v2

    xor-int/lit8 v1, v1, 0x18

    const/16 v2, 0x27e

    const v3, 0xfaa746e

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e1\u06e1\u06e1\u06ec\u06eb\u06eb\u06df\u06e6\u06e1\u06d9\u06da\u06db\u06e1\u06db\u06e8\u06d8\u06db\u06d8\u06e0\u06e5\u06e7\u06ec\u06df\u06da\u06e5\u06d8\u06da\u06df\u06da\u06d8\u06da\u06e5\u06d8\u06e2\u06eb\u06d6\u06e4\u06dc\u06e7\u06d8"

    goto :goto_0

    :sswitch_1
    const-class v0, Lz2/qa;

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x445689f6 -> :sswitch_0
        0x4b92427b -> :sswitch_1
    .end sparse-switch
.end method

.method public OooOo()V
    .locals 6

    const/4 v2, 0x0

    const-string v0, "\u06e2\u06d7\u06e1\u06d8\u06e2\u06e2\u06ec\u06e6\u06d9\u06eb\u06ec\u06d6\u06dc\u06d8\u06e7\u06d8\u06e1\u06d9\u06d8\u06ec\u06e2\u06e2\u06df\u06e2\u06eb\u06d6\u06d8\u06d6\u06ec\u06dc\u06d8\u06e8\u06db\u06d7\u06e6\u06e6\u06e1\u06df\u06e2\u06e4\u06e5\u06e6\u06e1\u06e5\u06e2\u06e4"

    move-object v1, v2

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/16 v4, 0xa1

    xor-int/2addr v3, v4

    xor-int/lit16 v3, v3, 0x2fd

    const/16 v4, 0x19a

    const v5, -0x68a5b7f2

    xor-int/2addr v3, v4

    xor-int/2addr v3, v5

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d7\u06df\u06d8\u06d8\u06db\u06e7\u06e5\u06d8\u06db\u06dc\u06d8\u06d8\u06ec\u06ec\u06e8\u06d8\u06e5\u06eb\u06e1\u06d8\u06e1\u06ec\u06dc\u06d6\u06e5\u06dc\u06d8\u06e2\u06e4\u06e7\u06e2\u06e6\u06dc\u06d8\u06d8\u06eb\u06d8\u06d8\u06e4\u06e7\u06df\u06e4\u06dc\u06d8\u06e8\u06e7\u06ec\u06dc\u06da\u06e6\u06d8\u06ec\u06e8\u06e5\u06e8\u06ec\u06e5\u06db\u06e5\u06e7\u06d8\u06d6\u06e0\u06dc\u06d8"

    goto :goto_0

    :sswitch_1
    invoke-direct {p0}, Lcom/cyjh/elfin/ui/activity/SplashActivity;->OooOo0o()V

    const-string v0, "\u06e4\u06e6\u06e7\u06e5\u06da\u06e6\u06d8\u06e7\u06dc\u06e8\u06d8\u06e0\u06dc\u06d8\u06e1\u06dc\u06da\u06e6\u06e6\u06e7\u06d8\u06eb\u06d9\u06d6\u06d8\u06e5\u06d7\u06e5\u06e2\u06d6\u06e0\u06e2\u06e7\u06e4\u06da\u06d9\u06e1\u06d8\u06dc\u06e4\u06e6\u06d8\u06ec\u06d9\u06eb\u06da\u06e0\u06eb\u06da\u06d8\u06d9\u06da\u06df\u06e2\u06eb\u06dc\u06dc\u06d8\u06d6\u06e7\u06e5\u06d8"

    goto :goto_0

    :sswitch_2
    new-instance v1, Lcom/cyjh/elfin/ui/activity/SplashActivity$OooO;

    const/16 v0, 0x8

    invoke-direct {v1, p0, v0, v2}, Lcom/cyjh/elfin/ui/activity/SplashActivity$OooO;-><init>(Lcom/cyjh/elfin/ui/activity/SplashActivity;ILcom/cyjh/elfin/ui/activity/SplashActivity$OooO00o;)V

    const-string v0, "\u06dc\u06e4\u06eb\u06e6\u06d9\u06d9\u06db\u06e4\u06e6\u06e5\u06d6\u06d9\u06d8\u06df\u06d6\u06da\u06d9\u06d6\u06d8\u06d9\u06db\u06eb\u06df\u06d9\u06e2\u06d6\u06d6\u06e6\u06d8\u06dc\u06d7\u06db"

    goto :goto_0

    :sswitch_3
    iput-object v1, p0, Lcom/cyjh/elfin/ui/activity/SplashActivity;->ooOO:Lcom/cyjh/elfin/ui/activity/SplashActivity$OooO;

    const-string v0, "\u06d6\u06e5\u06d6\u06d7\u06d8\u06df\u06eb\u06e1\u06e5\u06e1\u06e2\u06e2\u06ec\u06e8\u06d6\u06e4\u06d8\u06e6\u06d8\u06ec\u06e8\u06e4\u06e1\u06e2\u06d8\u06d8\u06e4\u06da\u06e7\u06d6\u06e5\u06db\u06df\u06e2\u06d6\u06e8\u06e7\u06e5\u06d8\u06e4\u06e6\u06d8\u06e7\u06d8\u06df\u06da\u06dc\u06e2\u06da\u06e1"

    goto :goto_0

    :sswitch_4
    invoke-virtual {v1}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    const-string v0, "\u06e0\u06e7\u06d6\u06db\u06da\u06ec\u06dc\u06e0\u06e8\u06d8\u06ec\u06e8\u06e6\u06d8\u06da\u06d8\u06d8\u06d8\u06df\u06e7\u06df\u06d8\u06d8\u06e7\u06d9\u06d7\u06d6\u06e0\u06e7\u06e7\u06da\u06eb\u06e8"

    goto :goto_0

    :sswitch_5
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x43996cb7 -> :sswitch_1
        -0x2e85aa7e -> :sswitch_0
        0xc06787f -> :sswitch_4
        0x20873f05 -> :sswitch_3
        0x257ddda9 -> :sswitch_5
        0x48024fb3 -> :sswitch_2
    .end sparse-switch
.end method

.method public OooOoO()V
    .locals 8

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const v5, -0x25552f6b

    const-string v1, "\u06db\u06da\u06e1\u06d7\u06d9\u06d9\u06e0\u06e7\u06e4\u06e4\u06da\u06da\u06e6\u06e2\u06e7\u06ec\u06d8\u06d6\u06d8\u06e8\u06e5\u06e8\u06d6\u06da\u06ec\u06e6\u06da\u06d7\u06ec\u06e5\u06e4\u06e8\u06e5\u06df\u06dc\u06d7\u06e7\u06e6\u06e5\u06e5\u06d8\u06d7\u06ec\u06e1\u06e1\u06d7\u06ec\u06e7\u06dc\u06d6\u06e8\u06e2\u06e7"

    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v6

    xor-int/2addr v6, v5

    sparse-switch v6, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const v6, 0x1bd54ab0

    const-string v1, "\u06e5\u06e7\u06db\u06d8\u06e4\u06e1\u06d8\u06e0\u06da\u06e2\u06d9\u06e4\u06d6\u06dc\u06e5\u06da\u06e4\u06dc\u06d9\u06d8\u06e0\u06e8\u06d8\u06e0\u06d7\u06e5\u06d8\u06da\u06d7\u06df\u06d7\u06e6\u06e8\u06e0\u06e5\u06dc\u06d8\u06db\u06e5\u06eb\u06dc\u06df\u06d6\u06db\u06d8\u06eb\u06e0\u06e5\u06e4\u06ec\u06e4\u06e4"

    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v7

    xor-int/2addr v7, v6

    sparse-switch v7, :sswitch_data_1

    goto :goto_1

    :sswitch_1
    const-string v1, "\u06d6\u06e1\u06dc\u06d8\u06e2\u06e4\u06e0\u06ec\u06da\u06e0\u06d9\u06d9\u06e6\u06d8\u06d8\u06e8\u06e7\u06d8\u06e0\u06da\u06e1\u06db\u06e1\u06e8\u06e5\u06e8\u06dc\u06d8\u06d7\u06d9\u06e6\u06df\u06d7\u06e4\u06e4\u06df\u06e7\u06da\u06df\u06e5\u06dc\u06da\u06db\u06e2\u06e4\u06e2\u06e8\u06e8\u06d8\u06da\u06dc\u06e5"

    goto :goto_1

    :sswitch_2
    const-string v1, "\u06ec\u06d8\u06e7\u06d8\u06e8\u06e7\u06e7\u06d6\u06d8\u06e0\u06e0\u06da\u06dc\u06db\u06eb\u06e4\u06eb\u06da\u06d7\u06e5\u06db\u06dc\u06d8\u06dc\u06e2\u06e5\u06e0\u06da\u06dc\u06d7\u06e0\u06d9"

    goto :goto_0

    :cond_0
    const-string v1, "\u06d8\u06db\u06eb\u06d9\u06e7\u06e2\u06d7\u06e5\u06d8\u06dc\u06d9\u06d7\u06d8\u06e8\u06e0\u06d8\u06da\u06d6\u06eb\u06d9\u06db\u06d8\u06e7\u06d8\u06d8\u06e5\u06dc\u06d6\u06e0\u06e2\u06e0\u06e5\u06eb\u06e5\u06e1\u06d9\u06db\u06e1\u06d9\u06db\u06e1\u06ec\u06e8\u06d7\u06d7\u06e0\u06db\u06da\u06d6\u06e4\u06e5\u06dc\u06d8\u06e7\u06e0\u06e0"

    goto :goto_1

    :sswitch_3
    const/16 v1, 0x1c

    if-lt v4, v1, :cond_0

    const-string v1, "\u06e5\u06e0\u06d9\u06e7\u06df\u06ec\u06e1\u06e7\u06e5\u06e4\u06e6\u06d8\u06e1\u06e6\u06d6\u06dc\u06ec\u06e2\u06db\u06d9\u06dc\u06d8\u06e2\u06dc\u06da\u06db\u06e1\u06e5\u06d8\u06d8\u06ec\u06e1\u06d8\u06d8\u06e7\u06e4\u06eb\u06d7\u06e1\u06d8\u06e7\u06dc\u06da\u06dc\u06d9\u06d6\u06d8\u06df\u06d7\u06e1\u06eb\u06db\u06d9"

    goto :goto_1

    :sswitch_4
    const-string v1, "\u06d9\u06e0\u06e7\u06e0\u06e5\u06e6\u06d8\u06e6\u06e7\u06e1\u06d8\u06e6\u06e4\u06e8\u06d8\u06df\u06d6\u06e5\u06d8\u06df\u06d9\u06d8\u06d6\u06d8\u06eb\u06e7\u06d7\u06ec\u06e0\u06eb\u06d8\u06d8\u06e6\u06e7\u06d8\u06d8"
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :sswitch_5
    const-string v1, "\u06e5\u06e4\u06d6\u06d8\u06eb\u06e4\u06da\u06eb\u06e2\u06e8\u06d8\u06e1\u06e1\u06e4\u06d9\u06df\u06d9\u06e7\u06e7\u06e8\u06e4\u06d7\u06dc\u06e6\u06e0\u06d8\u06d8\u06e5\u06e6\u06e1\u06d8\u06dc\u06dc\u06e8\u06e4\u06e2\u06dc\u06d8\u06e2\u06eb\u06e8\u06e0\u06e1\u06dc\u06d8\u06e7\u06eb\u06ec"

    goto :goto_0

    :sswitch_6
    const/high16 v1, 0x8000000

    :try_start_1
    invoke-virtual {v2, v3, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    const v3, -0x6dc84d87

    const-string v1, "\u06e7\u06e5\u06e6\u06d8\u06e5\u06d7\u06db\u06ec\u06dc\u06d8\u06d9\u06e8\u06db\u06dc\u06e7\u06d8\u06e5\u06e8\u06da\u06e6\u06e8\u06e5\u06d8\u06e5\u06e7\u06e6\u06d8\u06d6\u06db\u06ec\u06e8\u06df\u06e1"

    :goto_2
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    xor-int/2addr v4, v3

    sparse-switch v4, :sswitch_data_2

    goto :goto_2

    :sswitch_7
    const v4, 0x61878062

    const-string v1, "\u06e8\u06db\u06dc\u06d8\u06d8\u06e0\u06e4\u06da\u06df\u06d6\u06d9\u06df\u06e5\u06d8\u06e1\u06e2\u06db\u06ec\u06ec\u06df\u06d8\u06eb\u06eb\u06e2\u06e4\u06df\u06df\u06d8\u06e5\u06d8\u06e6\u06d7\u06e6"

    :goto_3
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v5

    xor-int/2addr v5, v4

    sparse-switch v5, :sswitch_data_3

    goto :goto_3

    :sswitch_8
    invoke-virtual {v2}, Landroid/content/pm/SigningInfo;->hasMultipleSigners()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "\u06e1\u06db\u06e5\u06d8\u06e8\u06d7\u06e4\u06dc\u06e5\u06d7\u06da\u06e8\u06e8\u06d8\u06e7\u06e5\u06d7\u06ec\u06db\u06d8\u06d8\u06df\u06df\u06e7\u06df\u06e1\u06dc\u06d8\u06e7\u06e1\u06e0\u06e6\u06dc\u06da\u06ec\u06e1\u06e0\u06dc\u06e2\u06d7\u06e5\u06db\u06ec\u06e2\u06df\u06e0\u06df\u06e2\u06d9\u06d7\u06e8\u06db\u06e8\u06e4\u06d9\u06ec\u06e2\u06e0"

    goto :goto_3

    :sswitch_9
    const-string v1, "\u06df\u06d6\u06e8\u06d9\u06e1\u06e0\u06eb\u06d9\u06db\u06ec\u06dc\u06df\u06df\u06e5\u06d8\u06d8\u06e8\u06db\u06e4\u06dc\u06e8\u06eb\u06da\u06d6\u06e5\u06d8\u06db\u06e0\u06e2\u06e6\u06dc\u06df\u06e1\u06e8\u06e0\u06e7\u06e5\u06da"

    goto :goto_2

    :cond_1
    const-string v1, "\u06e6\u06d6\u06d6\u06d8\u06d7\u06e4\u06dc\u06ec\u06db\u06d6\u06d8\u06e5\u06e4\u06e5\u06d8\u06d7\u06e4\u06e1\u06e6\u06e8\u06d8\u06d8\u06db\u06db\u06dc\u06d6\u06d9\u06e8\u06e8\u06db\u06ec\u06d7\u06df\u06e1\u06e4\u06da\u06eb\u06dc\u06e0\u06eb\u06e5\u06eb\u06d6\u06e1\u06d8\u06d8\u06ec\u06e5\u06d8\u06e1\u06d9\u06e5\u06d8\u06da\u06d6\u06e2"

    goto :goto_3

    :sswitch_a
    const-string v1, "\u06eb\u06e1\u06e5\u06d8\u06da\u06d6\u06e1\u06d8\u06e1\u06e0\u06e6\u06e5\u06d9\u06d6\u06d8\u06d9\u06e6\u06ec\u06dc\u06e6\u06d9\u06db\u06e0\u06df\u06e1\u06df\u06d7\u06d7\u06df\u06e2\u06d8\u06e2\u06e1\u06d8\u06d9\u06d9\u06e0\u06e7\u06e5\u06d8"

    goto :goto_3

    :sswitch_b
    const-string v1, "\u06e6\u06d6\u06e5\u06d7\u06e8\u06d6\u06eb\u06e1\u06d8\u06d8\u06eb\u06da\u06eb\u06d7\u06db\u06e5\u06da\u06e6\u06db\u06d8\u06e7\u06e0\u06e5\u06d9\u06d8\u06e0\u06e4\u06ec\u06e4\u06da\u06e5"

    goto :goto_2

    :sswitch_c
    const-string v1, "\u06e7\u06e0\u06d6\u06e7\u06dc\u06e5\u06dc\u06da\u06d8\u06dc\u06d7\u06e7\u06dc\u06e1\u06e5\u06d8\u06da\u06da\u06d8\u06d8\u06eb\u06dc\u06ec\u06e7\u06db\u06e8\u06df\u06d6\u06e0\u06d8\u06e2\u06ec\u06e5\u06e2\u06ec\u06db\u06d7\u06d9"

    goto :goto_2

    :sswitch_d
    invoke-virtual {v2}, Landroid/content/pm/SigningInfo;->getApkContentsSigners()[Landroid/content/pm/Signature;

    move-result-object v2

    array-length v3, v2
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_4
    const v4, -0x376a7e30

    const-string v1, "\u06d7\u06d8\u06e7\u06d8\u06d7\u06d9\u06db\u06db\u06d7\u06e4\u06eb\u06dc\u06e1\u06d8\u06e8\u06df\u06ec\u06e2\u06da\u06eb\u06e1\u06d9\u06d7\u06e0\u06e2\u06e8\u06d7\u06e2\u06da\u06e7\u06e5\u06d8\u06d9\u06e2\u06e5\u06d8\u06ec\u06db\u06e5\u06d8\u06d8\u06da\u06e5\u06d8\u06db\u06d8\u06ec"

    :goto_5
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v5

    xor-int/2addr v5, v4

    sparse-switch v5, :sswitch_data_4

    goto :goto_5

    :sswitch_e
    const-string v1, "\u06da\u06e4\u06e1\u06d8\u06d6\u06dc\u06df\u06eb\u06e1\u06e0\u06e2\u06e0\u06d8\u06d8\u06e8\u06d9\u06e2\u06e1\u06e0\u06e6\u06d8\u06df\u06d9\u06db\u06eb\u06ec\u06da\u06e4\u06d8\u06e2\u06d7\u06dc\u06e5\u06d8\u06e8\u06e4\u06d6\u06d8\u06e5\u06eb\u06e4\u06d6\u06df\u06dc\u06d7\u06eb"

    goto :goto_5

    :sswitch_f
    const-string v1, "\u06e8\u06e0\u06dc\u06d8\u06d8\u06e2\u06e8\u06ec\u06d6\u06e1\u06e6\u06e4\u06df\u06da\u06dc\u06e1\u06eb\u06da\u06e5\u06db\u06ec\u06d8\u06d8\u06e0\u06d7\u06d8\u06d8\u06eb\u06df\u06e5\u06d8\u06da\u06d8\u06e6\u06d8\u06e2\u06e7\u06e5\u06e1\u06e4\u06d6"

    goto :goto_5

    :sswitch_10
    const v5, 0x50ff83a3

    const-string v1, "\u06e0\u06d8\u06d8\u06d8\u06e2\u06dc\u06eb\u06e5\u06d8\u06e5\u06ec\u06df\u06d9\u06e8\u06e7\u06da\u06e1\u06db\u06d6\u06ec\u06e4\u06e7\u06dc\u06e8\u06dc\u06dc\u06dc\u06e8\u06eb\u06eb\u06db\u06da\u06dc\u06db\u06d8\u06d8\u06df\u06d7\u06eb\u06db\u06e6\u06d6\u06d8\u06e2\u06e1\u06d7\u06e2\u06e5\u06d8\u06d8\u06eb\u06d8\u06df\u06ec\u06dc\u06df"

    :goto_6
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v6

    xor-int/2addr v6, v5

    sparse-switch v6, :sswitch_data_5

    goto :goto_6

    :sswitch_11
    const-string v1, "\u06eb\u06da\u06d8\u06d8\u06e0\u06d8\u06ec\u06dc\u06e7\u06e4\u06e2\u06eb\u06e7\u06e8\u06e2\u06ec\u06ec\u06da\u06e2\u06d8\u06e0\u06e8\u06d8\u06e7\u06e8\u06e2\u06da\u06d9\u06d9\u06e6\u06d9\u06e1\u06d8\u06dc\u06e0\u06df\u06e6\u06d8\u06e0"

    goto :goto_6

    :cond_2
    const-string v1, "\u06ec\u06da\u06d6\u06d8\u06d7\u06ec\u06e1\u06d8\u06d6\u06dc\u06e7\u06d8\u06e6\u06db\u06e1\u06db\u06d6\u06ec\u06eb\u06eb\u06e6\u06e1\u06d7\u06e6\u06ec\u06e0\u06d9\u06d9\u06e4\u06d8\u06d6\u06df\u06e8\u06d8\u06e2\u06d9\u06e2\u06d8\u06db\u06d8\u06d8\u06d9\u06e7\u06e0\u06df\u06df\u06e0\u06da\u06d8\u06eb\u06da\u06dc\u06d8"

    goto :goto_6

    :sswitch_12
    if-ge v0, v3, :cond_2

    const-string v1, "\u06e1\u06e5\u06dc\u06d8\u06d6\u06e4\u06dc\u06e6\u06d8\u06e6\u06eb\u06e2\u06e1\u06d8\u06e8\u06ec\u06ec\u06eb\u06e7\u06e2\u06dc\u06dc\u06d8\u06d8\u06d6\u06d7\u06db\u06d6\u06e1\u06d8\u06d8\u06db\u06e4\u06e1\u06e7\u06e6\u06db\u06dc\u06d8\u06dc"

    goto :goto_6

    :sswitch_13
    const-string v1, "\u06d6\u06e6\u06dc\u06e5\u06d7\u06e6\u06d8\u06ec\u06d6\u06e2\u06e8\u06e4\u06df\u06ec\u06d9\u06d8\u06e0\u06db\u06d7\u06eb\u06db\u06d7\u06dc\u06ec\u06e4\u06e6\u06e6\u06db\u06e5\u06e2\u06e7\u06d8\u06db\u06d9\u06db\u06e1\u06e6\u06d8\u06eb\u06e5\u06d9\u06e8\u06e4\u06da"

    goto :goto_5

    :sswitch_14
    aget-object v1, v2, v0

    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "V2/V3 Signature: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :sswitch_15
    invoke-virtual {v2}, Landroid/content/pm/SigningInfo;->getSigningCertificateHistory()[Landroid/content/pm/Signature;

    move-result-object v2

    array-length v3, v2
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_7
    const v4, -0x16ca29d7

    const-string v1, "\u06e6\u06da\u06e1\u06d8\u06d8\u06e7\u06d7\u06dc\u06e0\u06e5\u06e4\u06dc\u06d8\u06e6\u06d9\u06e8\u06ec\u06e2\u06dc\u06d8\u06e5\u06d6\u06e7\u06d8\u06da\u06db\u06da\u06e2\u06d8\u06da\u06ec\u06e5\u06e8\u06e4\u06d7\u06d8\u06e0\u06e7\u06d8\u06d8\u06e4\u06e6\u06e2\u06d6\u06d9\u06d8"

    :goto_8
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v5

    xor-int/2addr v5, v4

    sparse-switch v5, :sswitch_data_6

    goto :goto_8

    :sswitch_16
    const-string v1, "\u06e0\u06d8\u06e1\u06d9\u06d6\u06d7\u06e8\u06e1\u06d8\u06ec\u06db\u06d6\u06d9\u06e6\u06e7\u06d8\u06e1\u06e7\u06da\u06df\u06da\u06e1\u06e7\u06ec\u06e7\u06e2\u06e8\u06d6\u06e7\u06d8\u06d6\u06d6\u06db\u06e0\u06dc\u06d9"

    goto :goto_8

    :sswitch_17
    const-string v1, "\u06ec\u06ec\u06df\u06da\u06e8\u06d8\u06ec\u06e1\u06e5\u06d9\u06e0\u06e8\u06d8\u06da\u06e2\u06dc\u06e4\u06e2\u06df\u06e6\u06e6\u06e5\u06d6\u06e7\u06eb\u06e1\u06e7\u06d8\u06e8\u06da\u06db\u06d6\u06e0\u06e7\u06df\u06dc\u06d8\u06d8\u06d8\u06e2\u06d9\u06e0\u06eb\u06e5\u06eb\u06e1\u06e6\u06d8\u06e4\u06e2\u06e2\u06db\u06d6\u06d8\u06e1\u06e6\u06db"

    goto :goto_8

    :sswitch_18
    const v5, -0xa7532f8

    const-string v1, "\u06e5\u06ec\u06e6\u06d8\u06db\u06d6\u06dc\u06df\u06e1\u06e6\u06d8\u06e5\u06dc\u06e4\u06e2\u06e7\u06e6\u06e8\u06e1\u06e0\u06ec\u06d9\u06e2\u06e6\u06e4\u06e5\u06e4\u06e8\u06eb\u06d9\u06e5\u06d6\u06e1\u06e2\u06e7\u06df\u06d6\u06dc\u06db\u06e6\u06dc\u06e2\u06d8\u06d8\u06d8\u06e4\u06d7\u06e5\u06d6\u06da\u06e5\u06dc\u06e4\u06e5\u06e7\u06da\u06da"

    :goto_9
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v6

    xor-int/2addr v6, v5

    sparse-switch v6, :sswitch_data_7

    goto :goto_9

    :sswitch_19
    const-string v1, "\u06d7\u06e6\u06df\u06df\u06d9\u06da\u06d6\u06d8\u06d8\u06e1\u06e6\u06d8\u06eb\u06ec\u06e7\u06e8\u06da\u06e0\u06d8\u06e6\u06e6\u06e7\u06d9\u06e5\u06d8\u06e2\u06d7\u06d8\u06e5\u06db\u06e5"

    goto :goto_8

    :cond_3
    const-string v1, "\u06eb\u06df\u06dc\u06e5\u06e6\u06e6\u06d7\u06d7\u06e8\u06d8\u06dc\u06db\u06eb\u06e6\u06e6\u06e6\u06d8\u06ec\u06ec\u06e2\u06e5\u06da\u06e8\u06d8\u06e2\u06e5\u06d8\u06d7\u06d9\u06e1\u06d8\u06df\u06d9\u06d8\u06d8\u06db\u06d8\u06d6\u06e6\u06eb\u06e6\u06e0\u06e6\u06e6\u06d8\u06e2\u06e8\u06db\u06d7\u06d6\u06e1\u06d7\u06db\u06df\u06da\u06df\u06db\u06d9\u06d6\u06d8\u06d8"

    goto :goto_9

    :sswitch_1a
    if-ge v0, v3, :cond_3

    const-string v1, "\u06e6\u06e6\u06e6\u06e7\u06e7\u06e6\u06e7\u06e2\u06eb\u06e6\u06d9\u06ec\u06e7\u06da\u06dc\u06d8\u06df\u06da\u06e5\u06e7\u06d9\u06eb\u06e5\u06e2\u06e5\u06d8\u06eb\u06db\u06e0\u06d9\u06e4\u06e6\u06e7\u06d6\u06e1\u06d8\u06da\u06e2\u06e2\u06d8\u06d8\u06e0\u06e2\u06e5\u06db\u06da\u06df\u06e1\u06d8"

    goto :goto_9

    :sswitch_1b
    const-string v1, "\u06da\u06eb\u06da\u06e2\u06d9\u06db\u06d9\u06e4\u06ec\u06e4\u06e4\u06d7\u06e1\u06d8\u06d9\u06e5\u06e4\u06e2\u06e7\u06d9\u06e4\u06df\u06db\u06e6\u06e6\u06e1\u06e7\u06df\u06da\u06e2\u06ec\u06e7\u06d7\u06e6\u06e7\u06e5\u06d8\u06ec\u06e4\u06e6\u06d8\u06db\u06da\u06e1\u06e1\u06eb\u06e1\u06e7\u06d7\u06ec"

    goto :goto_9

    :sswitch_1c
    aget-object v1, v2, v0

    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "V1 Signature: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :sswitch_1d
    const/16 v1, 0x40

    invoke-virtual {v2, v3, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v3, v2
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_0

    :goto_a
    const v4, 0x3712af18

    const-string v1, "\u06df\u06d9\u06e6\u06e8\u06d6\u06df\u06e8\u06e6\u06d8\u06ec\u06df\u06df\u06e1\u06e7\u06e1\u06d8\u06e6\u06e1\u06d8\u06e4\u06d8\u06da\u06e8\u06d9\u06da\u06db\u06dc\u06d8\u06db\u06eb\u06e4\u06d7\u06e1\u06eb\u06e2\u06eb\u06d6\u06e8\u06df\u06e1\u06e4\u06e0\u06e1\u06d8\u06ec\u06e6\u06e7\u06d8\u06e5\u06da\u06e5\u06d8\u06e5\u06d6\u06da\u06e8\u06e4\u06e5"

    :goto_b
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v5

    xor-int/2addr v5, v4

    sparse-switch v5, :sswitch_data_8

    goto :goto_b

    :sswitch_1e
    const-string v1, "\u06dc\u06da\u06ec\u06da\u06e2\u06eb\u06db\u06e7\u06dc\u06d8\u06d8\u06e1\u06e1\u06db\u06e6\u06e6\u06d8\u06d9\u06e7\u06e0\u06e8\u06e7\u06e8\u06e2\u06d8\u06e0\u06e1\u06e7\u06e6\u06d8\u06e2\u06d7\u06e0\u06e8\u06df\u06df\u06dc\u06dc\u06d6"

    goto :goto_b

    :sswitch_1f
    const-string v1, "\u06e2\u06d8\u06e5\u06d8\u06db\u06db\u06da\u06e5\u06eb\u06e2\u06db\u06d9\u06e1\u06e7\u06dc\u06e6\u06ec\u06ec\u06df\u06e0\u06e6\u06d8\u06e4\u06e4\u06eb\u06d6\u06e0\u06e5\u06e0\u06d9\u06da\u06e0\u06e4\u06d8\u06d8\u06eb\u06e2\u06e8\u06d9\u06d7\u06dc\u06d8\u06dc\u06da\u06e6\u06d8\u06e2\u06dc\u06d6\u06d9\u06db"

    goto :goto_b

    :sswitch_20
    const v5, 0x284c142b

    const-string v1, "\u06e7\u06d8\u06da\u06e4\u06e1\u06d9\u06e2\u06d9\u06db\u06d9\u06d7\u06e2\u06d6\u06e7\u06e8\u06d8\u06e8\u06d8\u06eb\u06e0\u06d7\u06d8\u06db\u06eb\u06df\u06d8\u06e1\u06e8\u06d8\u06e4\u06da\u06da\u06e5\u06e5\u06d8\u06db\u06db\u06e0\u06df\u06e4\u06dc\u06d8\u06df\u06d6\u06d8\u06eb\u06df\u06e2\u06e8\u06e6\u06e1\u06e4\u06dc\u06df\u06e7\u06df\u06e6\u06d8"

    :goto_c
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v6

    xor-int/2addr v6, v5

    sparse-switch v6, :sswitch_data_9

    goto :goto_c

    :sswitch_21
    if-ge v0, v3, :cond_4

    const-string v1, "\u06d8\u06e1\u06ec\u06d9\u06d9\u06e4\u06da\u06d6\u06eb\u06dc\u06df\u06d6\u06d8\u06da\u06e1\u06d8\u06d8\u06eb\u06e5\u06d9\u06dc\u06e0\u06da\u06e6\u06da\u06dc\u06e5\u06e5\u06d8\u06e1\u06eb\u06d6\u06d8\u06d7\u06eb\u06e8\u06d7\u06e8\u06d6\u06e4\u06e8\u06d9\u06e5\u06e1\u06d9\u06db\u06db\u06e4\u06e0\u06d9\u06ec\u06e0\u06e7\u06e1\u06d8\u06e6\u06e6\u06d6\u06d8"

    goto :goto_c

    :cond_4
    const-string v1, "\u06e0\u06d8\u06ec\u06e7\u06df\u06e5\u06d8\u06d6\u06d8\u06d8\u06d8\u06e0\u06ec\u06e6\u06dc\u06e8\u06e4\u06e2\u06d9\u06eb\u06e5\u06da\u06d8\u06d8\u06d7\u06d6\u06d8\u06db\u06eb\u06d8\u06d8\u06e0\u06eb\u06dc\u06d6\u06e6\u06e7\u06e0\u06d7\u06e8\u06d8\u06e8\u06e7\u06d7\u06df\u06d6\u06d6\u06dc\u06dc\u06d8\u06d6\u06ec\u06e6\u06d8"

    goto :goto_c

    :sswitch_22
    const-string v1, "\u06e5\u06e2\u06d8\u06d8\u06da\u06dc\u06e0\u06e2\u06e6\u06dc\u06d8\u06e6\u06d9\u06dc\u06e1\u06e7\u06da\u06e0\u06db\u06d6\u06e1\u06df\u06e0\u06d7\u06e7\u06e7\u06e2\u06d8\u06e2\u06e4\u06da"

    goto :goto_c

    :sswitch_23
    const-string v1, "\u06e2\u06e6\u06dc\u06e6\u06e0\u06eb\u06db\u06e6\u06e7\u06d8\u06da\u06db\u06d8\u06df\u06df\u06d8\u06e0\u06da\u06df\u06e4\u06d7\u06e2\u06e5\u06e5\u06e7\u06ec\u06eb\u06e1\u06e6\u06e4\u06e0\u06ec\u06d7\u06e1\u06d8\u06da\u06d6\u06d9\u06e5\u06da\u06df\u06dc\u06e4\u06e5\u06d8"

    goto :goto_b

    :sswitch_24
    aget-object v1, v2, v0

    :try_start_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "V1 Signature: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :sswitch_25
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x74f8b1bf -> :sswitch_0
        -0xa84099d -> :sswitch_5
        -0x4ebfc30 -> :sswitch_6
        0x3f34ae2d -> :sswitch_1d
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x3c60d11e -> :sswitch_4
        -0x2f449830 -> :sswitch_3
        -0x241a656 -> :sswitch_2
        0x7a644d38 -> :sswitch_1
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        -0x7de3d5fc -> :sswitch_d
        -0x6467eb36 -> :sswitch_7
        0x457a59e7 -> :sswitch_c
        0x5af14582 -> :sswitch_15
    .end sparse-switch

    :sswitch_data_3
    .sparse-switch
        -0x17dc00c4 -> :sswitch_9
        0x1d4f8911 -> :sswitch_a
        0x27338547 -> :sswitch_b
        0x7741b7c0 -> :sswitch_8
    .end sparse-switch

    :sswitch_data_4
    .sparse-switch
        -0x1687a56d -> :sswitch_10
        0xef8ae73 -> :sswitch_14
        0x1ca879b5 -> :sswitch_e
        0x2f73346d -> :sswitch_25
    .end sparse-switch

    :sswitch_data_5
    .sparse-switch
        -0x36a8e91f -> :sswitch_f
        -0x2f6bb554 -> :sswitch_12
        0x35695139 -> :sswitch_13
        0x5c7c5f6a -> :sswitch_11
    .end sparse-switch

    :sswitch_data_6
    .sparse-switch
        -0x280f8cdd -> :sswitch_18
        0x2ac5893d -> :sswitch_16
        0x42fac5a3 -> :sswitch_1c
        0x48cd11ec -> :sswitch_25
    .end sparse-switch

    :sswitch_data_7
    .sparse-switch
        -0x7d2e2d92 -> :sswitch_1b
        -0x5c883f26 -> :sswitch_19
        -0xd219961 -> :sswitch_17
        -0x2532543 -> :sswitch_1a
    .end sparse-switch

    :sswitch_data_8
    .sparse-switch
        -0x7a517ad7 -> :sswitch_1e
        -0x74db6edd -> :sswitch_20
        -0xfc31f22 -> :sswitch_24
        0x60147e74 -> :sswitch_25
    .end sparse-switch

    :sswitch_data_9
    .sparse-switch
        -0x4e60800b -> :sswitch_23
        -0x4cf8672f -> :sswitch_21
        0x16374026 -> :sswitch_1f
        0x20dc4b1e -> :sswitch_22
    .end sparse-switch
.end method

.method public synthetic Oooo000(Landroid/app/AlertDialog;Landroid/view/View;)V
    .locals 4

    const-string v0, "\u06e0\u06eb\u06db\u06dc\u06eb\u06d7\u06e0\u06d6\u06dc\u06d8\u06d6\u06e0\u06eb\u06da\u06e4\u06e5\u06d8\u06dc\u06e8\u06e6\u06e8\u06d8\u06e5\u06d8\u06e0\u06df\u06e8\u06d8\u06e4\u06d9\u06d6\u06d8\u06d9\u06e4\u06d8\u06d8\u06e0\u06da\u06e4\u06d8\u06e6\u06d8\u06ec\u06e2\u06e0\u06df\u06e8\u06d8\u06d8\u06e7\u06df\u06e8\u06e0\u06d7\u06d7\u06e8\u06d7\u06d8\u06d8\u06e8\u06e6"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x3b5

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x1c9

    const/16 v2, 0x354

    const v3, 0x56a59c87

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e5\u06e0\u06d7\u06e6\u06e6\u06d6\u06e8\u06d7\u06d8\u06d8\u06eb\u06d7\u06e6\u06d8\u06d6\u06ec\u06db\u06e7\u06dc\u06d8\u06d8\u06e0\u06d6\u06d9\u06eb\u06ec\u06da\u06e6\u06e5\u06e1\u06d8\u06e8\u06e4\u06e1\u06d8\u06e6\u06dc\u06d8\u06db\u06d6\u06d8\u06d8\u06db\u06d6\u06e7\u06d8\u06d7\u06eb\u06ec\u06eb\u06dc\u06d6\u06d8\u06d7\u06e1\u06ec"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06e6\u06d8\u06e4\u06df\u06e5\u06df\u06ec\u06eb\u06e1\u06d7\u06d8\u06e7\u06d8\u06d7\u06d6\u06e5\u06d7\u06df\u06e6\u06d8\u06dc\u06e1\u06d8\u06e0\u06db\u06eb\u06d8\u06e0\u06e7\u06d9\u06e0\u06e0"

    goto :goto_0

    :sswitch_2
    const-string v0, "\u06ec\u06e4\u06d6\u06e8\u06ec\u06e1\u06d8\u06e0\u06e1\u06e0\u06df\u06e5\u06e0\u06e1\u06d9\u06d7\u06e2\u06e0\u06db\u06e7\u06e7\u06ec\u06d6\u06d8\u06df\u06e7\u06dc\u06e4\u06ec\u06d9\u06e1\u06da\u06d7\u06e8\u06e6\u06d9\u06e4\u06e0\u06d6\u06ec\u06d7\u06dc\u06d8\u06e8\u06d8\u06e0\u06e5\u06e7\u06d8"

    goto :goto_0

    :sswitch_3
    invoke-direct {p0, p1, p2}, Lcom/cyjh/elfin/ui/activity/SplashActivity;->OooOooo(Landroid/app/AlertDialog;Landroid/view/View;)V

    const-string v0, "\u06d6\u06e5\u06e2\u06e2\u06d7\u06e0\u06e2\u06e8\u06e7\u06e1\u06e4\u06e7\u06d7\u06d6\u06ec\u06e6\u06e4\u06e5\u06d8\u06ec\u06d9\u06d9\u06e7\u06e4\u06e2\u06dc\u06dc\u06e8\u06e5\u06e1\u06d9"

    goto :goto_0

    :sswitch_4
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x57f73afb -> :sswitch_2
        -0x3126f97f -> :sswitch_1
        0x1e86b799 -> :sswitch_0
        0x4bd45ede -> :sswitch_4
        0x50f3821e -> :sswitch_3
    .end sparse-switch
.end method

.method public synthetic Oooo00o(Lz2/qa$Oooo0;)V
    .locals 4

    const-string v0, "\u06df\u06e6\u06dc\u06d8\u06db\u06e7\u06e6\u06d8\u06e1\u06e0\u06ec\u06d7\u06e2\u06e8\u06d8\u06e7\u06ec\u06dc\u06d8\u06da\u06e1\u06d9\u06d9\u06e6\u06d8\u06e1\u06d8\u06dc\u06e6\u06e0\u06e4\u06d9\u06dc\u06dc\u06d8\u06e5\u06d9\u06eb\u06e4\u06e0\u06ec"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x1fb

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x3ba

    const/16 v2, 0xf4

    const v3, 0x6231846b

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d6\u06d6\u06df\u06d8\u06e0\u06e1\u06d8\u06e6\u06d7\u06d6\u06da\u06d7\u06e8\u06eb\u06ec\u06df\u06e0\u06eb\u06d8\u06e1\u06e4\u06e0\u06e0\u06db\u06e6\u06d9\u06e6\u06dc\u06d7\u06e6\u06d8\u06e8\u06d9\u06eb\u06e4\u06e5\u06e2\u06da\u06dc\u06dc\u06d8\u06e2\u06da\u06e8\u06e8\u06eb\u06e1\u06ec\u06da\u06e8\u06d8\u06d7\u06d9\u06dc\u06d8\u06dc\u06e5\u06df"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06ec\u06d7\u06e5\u06d8\u06e2\u06d8\u06e4\u06ec\u06dc\u06e5\u06d8\u06dc\u06e1\u06d8\u06e7\u06d6\u06e2\u06dc\u06e0\u06db\u06e5\u06ec\u06d6\u06d8\u06d7\u06e8\u06e1\u06d8\u06e4\u06e5\u06d6\u06d8\u06e5\u06eb\u06da\u06df\u06ec\u06eb\u06d8\u06db\u06d8\u06d8\u06e5\u06e7\u06e5\u06d8\u06e7\u06da\u06d7"

    goto :goto_0

    :sswitch_2
    invoke-direct {p0, p1}, Lcom/cyjh/elfin/ui/activity/SplashActivity;->Oooo00O(Lz2/qa$Oooo0;)V

    const-string v0, "\u06df\u06e2\u06e1\u06d8\u06d8\u06da\u06e0\u06eb\u06ec\u06e5\u06dc\u06d6\u06e6\u06e1\u06eb\u06dc\u06d8\u06e1\u06e4\u06e4\u06ec\u06e6\u06db\u06dc\u06dc\u06d9\u06e7\u06da\u06eb\u06ec\u06df\u06e1\u06d8\u06e8\u06ec\u06eb\u06ec\u06e2\u06df"

    goto :goto_0

    :sswitch_3
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x28f3b300 -> :sswitch_0
        -0x1ff3984c -> :sswitch_2
        0x2e891dc3 -> :sswitch_3
        0x3b8f4a72 -> :sswitch_1
    .end sparse-switch
.end method

.method public synthetic Oooo0O0(Lcom/cyjh/http/bean/response/PhoneConfig;)V
    .locals 4

    const-string v0, "\u06d9\u06db\u06ec\u06dc\u06d9\u06e6\u06d8\u06db\u06ec\u06e8\u06d6\u06d9\u06d6\u06d8\u06d9\u06df\u06e0\u06e8\u06d8\u06e0\u06d7\u06d9\u06d8\u06d6\u06ec\u06d9\u06d8\u06db\u06e4\u06db\u06e7\u06dc\u06d8\u06e0\u06d7\u06e1\u06e8\u06e7\u06e6\u06d8\u06e1\u06d7\u06e6\u06e8\u06d9\u06da\u06e0\u06df\u06d8\u06d8\u06d9\u06eb\u06d8\u06d6\u06eb\u06d8\u06e0\u06d6\u06ec"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x2a

    xor-int/2addr v1, v2

    xor-int/lit8 v1, v1, 0x50

    const/16 v2, 0x148

    const v3, -0x54dea1f0

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e0\u06e8\u06d7\u06e2\u06d6\u06d7\u06e7\u06d8\u06e8\u06d6\u06dc\u06da\u06dc\u06e8\u06d7\u06e7\u06d6\u06e6\u06d8\u06e2\u06dc\u06e5\u06d8\u06d7\u06e1\u06d6\u06d8\u06db\u06df\u06e0\u06d6\u06dc\u06e1\u06d8"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06d9\u06d9\u06df\u06df\u06df\u06df\u06eb\u06e4\u06d8\u06d7\u06d9\u06d9\u06e7\u06d9\u06e1\u06d8\u06e7\u06dc\u06e0\u06e6\u06df\u06d8\u06d8\u06e5\u06e5\u06dc\u06d8\u06df\u06dc\u06e5\u06d8\u06e7\u06da\u06d8\u06d8\u06db\u06e5\u06e1\u06da\u06ec\u06e1\u06d8\u06ec\u06d9\u06df\u06e5\u06d6\u06d6\u06d8\u06d8\u06e6\u06e5"

    goto :goto_0

    :sswitch_2
    invoke-direct {p0, p1}, Lcom/cyjh/elfin/ui/activity/SplashActivity;->Oooo0(Lcom/cyjh/http/bean/response/PhoneConfig;)V

    const-string v0, "\u06d9\u06ec\u06d8\u06d8\u06d6\u06d6\u06df\u06ec\u06e1\u06d9\u06e2\u06e6\u06d8\u06e7\u06d6\u06e2\u06ec\u06d8\u06db\u06dc\u06d8\u06d7\u06e7\u06dc\u06e8\u06d8\u06d6\u06e6\u06df\u06e7\u06d9\u06e5\u06d8\u06ec\u06d8\u06e4\u06d6\u06ec\u06e4"

    goto :goto_0

    :sswitch_3
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6a5feaf9 -> :sswitch_1
        -0x49d436f5 -> :sswitch_0
        0x49b4c4f2 -> :sswitch_2
        0x4e3c06c0 -> :sswitch_3
    .end sparse-switch
.end method

.method public initView()V
    .locals 4

    const-string v0, "\u06e1\u06d7\u06e8\u06d8\u06d9\u06db\u06d8\u06eb\u06d6\u06e1\u06da\u06d8\u06eb\u06ec\u06df\u06e5\u06d8\u06da\u06eb\u06e6\u06eb\u06d6\u06e7\u06e5\u06dc\u06d8\u06eb\u06dc\u06df\u06e1\u06d6\u06e5\u06d8\u06ec\u06da\u06db\u06d8\u06e8\u06e2\u06e6\u06e0\u06e8\u06e6\u06d8\u06df\u06da\u06e5\u06da\u06e5\u06e1"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x2e4

    xor-int/2addr v1, v2

    xor-int/lit8 v1, v1, 0x3e

    const/16 v2, 0x2e8

    const v3, -0x15ebebef

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e8\u06e6\u06eb\u06db\u06ec\u06d8\u06e0\u06df\u06e6\u06e5\u06e2\u06d6\u06eb\u06dc\u06e6\u06e4\u06e0\u06e5\u06d8\u06e1\u06e5\u06ec\u06e4\u06e4\u06e7\u06df\u06e7\u06e0\u06e5\u06e8\u06d8"

    goto :goto_0

    :sswitch_1
    const v0, 0x7f090335

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/SplashActivity;->OooooOo:Landroid/widget/ImageView;

    const-string v0, "\u06e1\u06df\u06d7\u06ec\u06e8\u06e8\u06eb\u06e8\u06d8\u06df\u06e8\u06e8\u06d6\u06d7\u06e2\u06d7\u06e1\u06e2\u06ec\u06dc\u06e8\u06d8\u06d6\u06df\u06df\u06df\u06d9\u06e8\u06db\u06e8\u06df"

    goto :goto_0

    :sswitch_2
    const v0, 0x7f09046a

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/SplashActivity;->Oooooo0:Landroid/widget/TextView;

    const-string v0, "\u06d8\u06df\u06d7\u06d6\u06dc\u06e8\u06e1\u06e1\u06d8\u06d6\u06e1\u06d9\u06e7\u06db\u06e1\u06d7\u06df\u06d9\u06e7\u06d6\u06d8\u06db\u06e8\u06e1\u06d8\u06df\u06e8\u06d6\u06e8\u06e0\u06e6\u06d8\u06e2\u06da\u06e5\u06d8\u06eb\u06e7\u06e8\u06d8\u06e5\u06d8\u06d8\u06e4\u06da\u06e8\u06eb\u06e4\u06ec\u06e2\u06dc\u06d6\u06d8"

    goto :goto_0

    :sswitch_3
    const v0, 0x7f0902e0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/SplashActivity;->Oooooo:Landroid/widget/LinearLayout;

    const-string v0, "\u06e7\u06e7\u06dc\u06d8\u06e8\u06ec\u06dc\u06d6\u06db\u06e0\u06e6\u06d7\u06e5\u06d8\u06df\u06e5\u06e1\u06e6\u06e2\u06e6\u06e8\u06da\u06df\u06e1\u06e7\u06e8\u06eb\u06df\u06e6\u06d8\u06d7\u06df\u06e6\u06e1\u06dc\u06e7\u06d7\u06e5\u06dc\u06e7\u06e0\u06e8\u06e0\u06e5\u06df"

    goto :goto_0

    :sswitch_4
    const v0, 0x7f090454

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/SplashActivity;->OoooooO:Landroid/widget/TextView;

    const-string v0, "\u06d9\u06e8\u06eb\u06e5\u06e6\u06d8\u06dc\u06e1\u06e1\u06d8\u06db\u06db\u06da\u06dc\u06eb\u06e4\u06dc\u06e0\u06d8\u06d9\u06d8\u06e1\u06e0\u06eb\u06d9\u06e8\u06db\u06ec\u06d8\u06d8\u06e4\u06e7\u06d6\u06d8\u06e0\u06e1\u06d8\u06e1\u06e1\u06d8\u06ec\u06e5\u06e5\u06d8\u06e5\u06d7\u06d6\u06dc\u06d6\u06ec\u06e1\u06dc\u06eb\u06da\u06e5\u06d8"

    goto :goto_0

    :sswitch_5
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x54fe9a89 -> :sswitch_1
        -0x25dbf991 -> :sswitch_2
        -0x16663ba3 -> :sswitch_4
        0x29c06ccb -> :sswitch_5
        0x4b109fb6 -> :sswitch_3
        0x52f9cfdd -> :sswitch_0
    .end sparse-switch
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p3    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "\u06db\u06d6\u06e7\u06d9\u06ec\u06e6\u06d8\u06d6\u06eb\u06d9\u06d9\u06e2\u06e6\u06df\u06d8\u06eb\u06d6\u06db\u06e7\u06e6\u06e8\u06ec\u06e8\u06eb\u06d6\u06e5\u06d8\u06db\u06eb\u06dc\u06db\u06d8\u06d8\u06e1\u06db\u06e7\u06db\u06d6\u06e5\u06d8\u06d9\u06e5\u06d8\u06e4\u06db\u06df\u06dc\u06e4\u06e8\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x277

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0xe3

    const/4 v2, 0x1

    const v3, 0x59c633ce

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e7\u06eb\u06d9\u06e1\u06ec\u06e1\u06dc\u06e2\u06d6\u06d8\u06d6\u06db\u06e8\u06db\u06e7\u06df\u06e4\u06e0\u06df\u06df\u06e2\u06d7\u06d6\u06e8\u06db\u06da\u06eb\u06d8\u06dc\u06e2\u06df\u06e2\u06e4\u06df\u06e1\u06e7\u06da\u06d6\u06d8\u06e0\u06dc\u06d8\u06d6\u06df\u06eb\u06df\u06e5\u06df\u06ec\u06e5\u06e6\u06e5\u06e0\u06e4"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06da\u06e7\u06e8\u06d8\u06dc\u06eb\u06e5\u06dc\u06e8\u06e1\u06d9\u06d7\u06e8\u06d8\u06d8\u06df\u06dc\u06dc\u06eb\u06ec\u06dc\u06e7\u06d8\u06e5\u06e1\u06d8\u06da\u06e4\u06e8\u06d8\u06df\u06d8\u06ec"

    goto :goto_0

    :sswitch_2
    const-string v0, "\u06ec\u06ec\u06df\u06ec\u06da\u06da\u06da\u06e1\u06da\u06db\u06ec\u06df\u06e4\u06e2\u06d6\u06d9\u06e4\u06d7\u06d9\u06db\u06e6\u06e2\u06d6\u06e8\u06e6\u06dc\u06d6\u06d8\u06d7\u06e1\u06d8\u06dc\u06dc\u06d7\u06dc\u06eb\u06d9"

    goto :goto_0

    :sswitch_3
    const-string v0, "\u06d6\u06e5\u06e1\u06df\u06e6\u06da\u06e6\u06e4\u06e7\u06d6\u06d6\u06d8\u06e1\u06df\u06e2\u06e0\u06e4\u06ec\u06e6\u06db\u06e6\u06d8\u06d6\u06e1\u06db\u06d6\u06e8\u06d6\u06d8\u06df\u06e5\u06d6\u06d8\u06e5\u06df\u06d9\u06eb\u06d7\u06e8\u06ec\u06e6\u06e5\u06d8\u06df\u06e6\u06e6\u06e8\u06dc\u06eb\u06d6\u06da\u06df"

    goto :goto_0

    :sswitch_4
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const-string v0, "\u06d9\u06eb\u06e2\u06db\u06e8\u06e8\u06d8\u06e8\u06d7\u06e6\u06d8\u06e4\u06d9\u06e4\u06e0\u06e0\u06e8\u06d8\u06e7\u06e6\u06dc\u06e5\u06ec\u06e4\u06e4\u06d9\u06e6\u06ec\u06d6\u06e1\u06d6\u06dc\u06d8\u06e4\u06e7\u06e5\u06d8\u06dc\u06d6\u06d6\u06d8\u06eb\u06da\u06ec\u06d8\u06e8\u06e4"

    goto :goto_0

    :sswitch_5
    const v1, -0x5fb88f9c

    const-string v0, "\u06e2\u06d6\u06d7\u06d8\u06e5\u06e6\u06d6\u06d7\u06d6\u06d8\u06e5\u06dc\u06e1\u06d8\u06df\u06e1\u06da\u06eb\u06dc\u06e6\u06d8\u06e5\u06e5\u06e1\u06d7\u06e0\u06d8\u06db\u06e1\u06ec\u06e2\u06d7\u06e5\u06d8\u06d6\u06da\u06e0\u06da\u06e5\u06d8\u06dc\u06dc\u06da"

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v2, v1

    sparse-switch v2, :sswitch_data_1

    goto :goto_1

    :sswitch_6
    const v2, 0x1b699c42

    const-string v0, "\u06d9\u06ec\u06d8\u06da\u06d9\u06d7\u06dc\u06dc\u06e6\u06e5\u06dc\u06eb\u06e0\u06d7\u06e5\u06df\u06d7\u06e2\u06e4\u06e5\u06e1\u06d9\u06e6\u06e2\u06d9\u06db\u06e1\u06d6\u06e1\u06db\u06da\u06e8\u06d6\u06e7\u06d8"

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v2

    sparse-switch v3, :sswitch_data_2

    goto :goto_2

    :sswitch_7
    const-string v0, "\u06ec\u06d7\u06d8\u06db\u06e2\u06e6\u06d9\u06d7\u06e8\u06e5\u06df\u06db\u06e0\u06d8\u06e1\u06e6\u06e7\u06e5\u06d8\u06dc\u06db\u06e4\u06e2\u06e8\u06db\u06df\u06e6\u06dc\u06e7\u06dc\u06e0"

    goto :goto_1

    :cond_0
    const-string v0, "\u06e2\u06d8\u06df\u06e2\u06da\u06ec\u06e0\u06ec\u06e6\u06e2\u06e7\u06e1\u06e2\u06e7\u06e5\u06d8\u06eb\u06e8\u06e8\u06d8\u06e2\u06d9\u06e8\u06e7\u06eb\u06df\u06da\u06dc\u06d8\u06e8\u06e7\u06d7\u06dc\u06e8\u06e8\u06e6\u06d9\u06e8\u06e2\u06e0\u06e6\u06d8\u06d6\u06e8\u06d6\u06e0\u06eb\u06e8\u06e8\u06da\u06ec\u06e2\u06e2\u06d7\u06d6\u06e8\u06d8"

    goto :goto_2

    :sswitch_8
    const/16 v0, 0xc8

    if-ne p1, v0, :cond_0

    const-string v0, "\u06d8\u06e0\u06d8\u06d6\u06e6\u06e7\u06e4\u06e7\u06e2\u06e8\u06e6\u06e6\u06db\u06e4\u06dc\u06d8\u06d7\u06dc\u06e5\u06d8\u06e4\u06d8\u06e5\u06d8\u06dc\u06df\u06dc\u06d8\u06e0\u06eb\u06e8\u06d8\u06e6\u06e4\u06e8\u06e5\u06e6\u06d9\u06ec\u06db\u06da\u06e7\u06db\u06d9\u06ec\u06e1"

    goto :goto_2

    :sswitch_9
    const-string v0, "\u06db\u06e6\u06da\u06da\u06d8\u06da\u06db\u06eb\u06dc\u06d8\u06dc\u06e2\u06dc\u06e7\u06e2\u06d8\u06df\u06eb\u06e0\u06d7\u06dc\u06d9\u06e6\u06d9\u06d7\u06e5\u06d7\u06d8\u06d8\u06e8\u06d8\u06d6\u06e0\u06d6\u06d8\u06ec\u06e8\u06e1"

    goto :goto_2

    :sswitch_a
    const-string v0, "\u06df\u06e7\u06eb\u06d8\u06e6\u06e0\u06ec\u06dc\u06e6\u06d8\u06da\u06d7\u06df\u06d7\u06e5\u06e4\u06e0\u06d8\u06eb\u06da\u06d7\u06db\u06da\u06d7\u06e7\u06da\u06e6\u06d9\u06da\u06e1\u06df\u06e1\u06ec\u06da\u06dc\u06d8"

    goto :goto_1

    :sswitch_b
    const-string v0, "\u06ec\u06e1\u06e6\u06d8\u06e8\u06d6\u06d9\u06e1\u06ec\u06db\u06db\u06d8\u06e5\u06e0\u06dc\u06d6\u06d8\u06d9\u06d7\u06e5\u06eb\u06ec\u06d9\u06d8\u06da\u06d8\u06d8\u06e6\u06eb\u06e6\u06d8\u06d9\u06d9\u06e8\u06e1\u06d9\u06e8\u06e7\u06d8\u06ec"

    goto :goto_1

    :sswitch_c
    const-string v0, "\u06df\u06e6\u06e1\u06d8\u06e2\u06da\u06df\u06e4\u06e6\u06d8\u06e7\u06db\u06d8\u06d8\u06e5\u06e2\u06d6\u06e2\u06da\u06e7\u06da\u06e5\u06dc\u06d8\u06ec\u06e7\u06df\u06e6\u06e5\u06d8\u06d8\u06e1\u06e5"

    goto :goto_0

    :sswitch_d
    const v1, -0x1e8207b0

    const-string v0, "\u06d9\u06d6\u06dc\u06d8\u06d6\u06e8\u06e5\u06d8\u06d9\u06e7\u06d8\u06e2\u06dc\u06db\u06dc\u06dc\u06e0\u06e0\u06d7\u06e6\u06d8\u06e7\u06e0\u06e7\u06e5\u06dc\u06d7\u06d7\u06e2\u06dc\u06e4\u06e8\u06e2\u06d9\u06d8\u06ec\u06e8\u06e7\u06eb\u06e2\u06eb\u06da\u06dc\u06dc"

    :goto_3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v2, v1

    sparse-switch v2, :sswitch_data_3

    goto :goto_3

    :sswitch_e
    const-string v0, "\u06df\u06e7\u06d6\u06d8\u06d6\u06eb\u06e8\u06e2\u06ec\u06d6\u06d8\u06e6\u06df\u06d9\u06eb\u06e1\u06e1\u06d8\u06ec\u06d8\u06e8\u06dc\u06d9\u06e7\u06df\u06e0\u06da\u06e8\u06e4\u06e4\u06e4\u06e8\u06dc\u06d8\u06db\u06e6\u06dc\u06dc\u06d7\u06da"

    goto :goto_3

    :sswitch_f
    const-string v0, "\u06e4\u06e1\u06e7\u06d8\u06e4\u06da\u06e6\u06d8\u06df\u06e0\u06d6\u06d8\u06d7\u06d9\u06e5\u06d8\u06dc\u06d7\u06e6\u06d6\u06d7\u06d6\u06d7\u06da\u06db\u06dc\u06eb\u06e5\u06e7\u06d9\u06df\u06d7\u06eb\u06dc"

    goto :goto_3

    :sswitch_10
    const v2, 0x4ae862e6    # 7614835.0f

    const-string v0, "\u06e0\u06e1\u06d8\u06d8\u06da\u06e2\u06e8\u06db\u06d7\u06dc\u06e2\u06e8\u06e0\u06df\u06d6\u06ec\u06e5\u06e2\u06e6\u06e7\u06ec\u06e1\u06da\u06e4\u06e7\u06e0\u06e2\u06e8\u06d8\u06d8\u06eb\u06e7\u06d6\u06e6\u06dc\u06e7\u06db\u06d6\u06d8\u06da\u06d7\u06e6\u06e8\u06dc\u06ec\u06e4\u06d7\u06e8\u06d8\u06e6\u06e4\u06d7\u06d7\u06e7\u06e1\u06dc\u06d8\u06d8"

    :goto_4
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v2

    sparse-switch v3, :sswitch_data_4

    goto :goto_4

    :sswitch_11
    const-string v0, "\u06e5\u06e8\u06e7\u06d9\u06d9\u06eb\u06dc\u06d9\u06e0\u06e6\u06e5\u06e8\u06d8\u06d6\u06d8\u06eb\u06e8\u06e0\u06d7\u06e0\u06e6\u06da\u06e1\u06db\u06da\u06d7\u06e2\u06e4\u06db\u06d9\u06d8\u06d6\u06e7\u06d9\u06e2\u06e5\u06df\u06eb\u06e1\u06e1\u06d8\u06e7\u06e6\u06e2\u06d6\u06d7\u06e6\u06e8\u06d6\u06d8"

    goto :goto_4

    :cond_1
    const-string v0, "\u06e0\u06e5\u06e1\u06dc\u06e8\u06d8\u06d8\u06dc\u06e6\u06d8\u06e2\u06eb\u06e4\u06d8\u06dc\u06df\u06e5\u06e7\u06e5\u06d7\u06e2\u06d6\u06e6\u06e7\u06e5\u06e0\u06d8\u06e6\u06e6\u06e5\u06d8\u06d8\u06df\u06da\u06e0\u06d7\u06e1\u06d8\u06d7\u06ec\u06e5\u06d8\u06e0\u06e2\u06e6\u06e0\u06e8\u06e5\u06e0\u06d9\u06d6\u06d8"

    goto :goto_4

    :sswitch_12
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v0, v3, :cond_1

    const-string v0, "\u06e1\u06dc\u06e8\u06d8\u06d7\u06e7\u06d6\u06e2\u06df\u06d6\u06d8\u06eb\u06e4\u06e4\u06eb\u06e4\u06df\u06e2\u06e8\u06e7\u06d8\u06eb\u06df\u06eb\u06d9\u06e2\u06da\u06e0\u06e5\u06e8\u06d8\u06d6\u06d8\u06da\u06ec\u06d7\u06e6\u06d8\u06e8\u06e5\u06e8\u06d8\u06d9\u06dc\u06e5\u06e2\u06e4\u06d6\u06d8\u06e4\u06e6\u06ec\u06df\u06d7\u06e0"

    goto :goto_4

    :sswitch_13
    const-string v0, "\u06eb\u06d9\u06e8\u06d8\u06e4\u06d6\u06e0\u06e2\u06ec\u06dc\u06db\u06ec\u06e2\u06e2\u06d8\u06d9\u06e2\u06e5\u06d8\u06e5\u06d7\u06d6\u06d8\u06e5\u06eb\u06eb\u06db\u06d7\u06dc\u06e8\u06d8\u06e8\u06d9\u06e8\u06da\u06dc\u06ec"

    goto :goto_3

    :sswitch_14
    const-string v0, "\u06e7\u06d9\u06e6\u06e4\u06d6\u06df\u06da\u06d6\u06d8\u06e2\u06d9\u06eb\u06d8\u06d6\u06d9\u06dc\u06d7\u06e1\u06df\u06d7\u06dc\u06ec\u06d7\u06d7\u06e5\u06da\u06ec\u06e1\u06d8\u06e8\u06d8"

    goto/16 :goto_0

    :sswitch_15
    const v1, 0x6b3e253e

    const-string v0, "\u06e5\u06e1\u06dc\u06eb\u06db\u06d8\u06eb\u06d9\u06dc\u06df\u06dc\u06da\u06e5\u06d6\u06d6\u06d8\u06d6\u06eb\u06d9\u06db\u06e2\u06d7\u06d9\u06e2\u06e0\u06d6\u06e6\u06dc\u06d8\u06db\u06e1\u06db\u06db\u06e8\u06dc\u06d8\u06e8\u06e6\u06e5\u06dc\u06da\u06e8\u06d9\u06e4\u06eb\u06d8\u06ec\u06e0\u06db\u06e1\u06d8\u06e7\u06e4\u06ec\u06e7\u06d7\u06df"

    :goto_5
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v2, v1

    sparse-switch v2, :sswitch_data_5

    goto :goto_5

    :sswitch_16
    const v2, 0x38da608c

    const-string v0, "\u06df\u06e7\u06e6\u06d8\u06d6\u06e5\u06e5\u06e7\u06e2\u06ec\u06eb\u06e4\u06e0\u06df\u06e2\u06e6\u06d9\u06e1\u06d8\u06ec\u06e4\u06e6\u06d8\u06e2\u06d6\u06e8\u06d8\u06df\u06d8\u06d7\u06e6\u06d6\u06eb\u06d6\u06eb\u06d8\u06d8\u06d6\u06e8\u06d8\u06d8\u06eb\u06df\u06e8\u06d8\u06d8\u06e2\u06e1\u06d7\u06e7\u06e6\u06d8"

    :goto_6
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v2

    sparse-switch v3, :sswitch_data_6

    goto :goto_6

    :sswitch_17
    invoke-static {p0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "\u06dc\u06e4\u06d6\u06df\u06d7\u06eb\u06e8\u06d8\u06df\u06db\u06d8\u06e8\u06d8\u06e2\u06da\u06d9\u06d8\u06d8\u06dc\u06e7\u06d6\u06d8\u06da\u06e2\u06e1\u06e5\u06e4\u06dc\u06d6\u06e4\u06eb"

    goto :goto_6

    :sswitch_18
    const-string v0, "\u06eb\u06eb\u06dc\u06d8\u06eb\u06ec\u06dc\u06d8\u06d8\u06eb\u06db\u06d8\u06e1\u06e2\u06e4\u06e1\u06dc\u06d8\u06e4\u06db\u06e0\u06df\u06eb\u06e4\u06d6\u06db\u06e0\u06db\u06e8\u06e6\u06d8\u06db\u06d7\u06e6\u06e6\u06db\u06d6\u06d7\u06d7\u06e1\u06d8"

    goto :goto_5

    :cond_2
    const-string v0, "\u06e7\u06e6\u06db\u06d6\u06dc\u06e0\u06d9\u06e5\u06ec\u06da\u06da\u06eb\u06e0\u06e4\u06e7\u06db\u06e1\u06e7\u06e5\u06da\u06ec\u06e7\u06e6\u06e8\u06e0\u06e0\u06ec\u06dc\u06d8\u06eb\u06e4\u06e8\u06d8\u06db\u06db\u06da\u06d6\u06e8\u06e6\u06dc\u06e5\u06e0\u06e8\u06d6\u06e6\u06d7\u06df\u06e8\u06d8"

    goto :goto_6

    :sswitch_19
    const-string v0, "\u06e7\u06dc\u06e4\u06d9\u06e5\u06e5\u06d8\u06df\u06e5\u06eb\u06e4\u06e7\u06e2\u06d6\u06da\u06e2\u06d9\u06d8\u06da\u06e5\u06e4\u06db\u06e6\u06d6\u06e4\u06df\u06d6\u06e1\u06e4\u06df\u06da"

    goto :goto_6

    :sswitch_1a
    const-string v0, "\u06ec\u06d8\u06df\u06ec\u06e7\u06d8\u06dc\u06df\u06e2\u06db\u06db\u06e1\u06d8\u06d7\u06d8\u06e5\u06d8\u06e5\u06ec\u06d8\u06dc\u06db\u06dc\u06d8\u06e7\u06e1\u06db\u06e0\u06d7\u06e6\u06d8\u06d8\u06e2\u06dc\u06eb\u06d9\u06d9\u06e7\u06d9\u06d7\u06e6\u06e4\u06eb\u06e1\u06dc\u06e1\u06eb\u06e6\u06eb\u06eb\u06e6\u06e1\u06d8"

    goto :goto_5

    :sswitch_1b
    const-string v0, "\u06d6\u06e1\u06e6\u06d8\u06da\u06df\u06df\u06e8\u06db\u06df\u06e2\u06e5\u06ec\u06d8\u06df\u06e8\u06d8\u06e5\u06d8\u06dc\u06d8\u06e0\u06d6\u06e6\u06e1\u06db\u06d8\u06d8\u06e6\u06e0\u06dc\u06e1\u06d7\u06d6\u06d8\u06e5\u06e6\u06e2\u06d8\u06dc"

    goto :goto_5

    :sswitch_1c
    const-string v0, "\u06d7\u06e8\u06d6\u06d8\u06ec\u06d7\u06df\u06e7\u06e8\u06e6\u06e1\u06ec\u06e5\u06d8\u06d6\u06da\u06e1\u06db\u06d6\u06eb\u06d7\u06d8\u06e1\u06e7\u06db\u06e5\u06d8\u06ec\u06db\u06e4\u06df\u06d7\u06e5\u06e6\u06e1\u06e7\u06d8\u06e1\u06e8\u06e2\u06ec\u06da\u06e8\u06eb\u06eb\u06d6\u06d8\u06da\u06e5\u06e5\u06d8\u06e8\u06ec"

    goto/16 :goto_0

    :sswitch_1d
    const-string v0, "\u8bf7\u786e\u4fdd\u5f00\u542f\u60ac\u6d6e\u7a97\u6743\u9650\uff0c\u5426\u5219\u5c06\u65e0\u6cd5\u6b63\u5e38\u4f7f\u7528"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const-string v0, "\u06e5\u06e1\u06dc\u06d8\u06e5\u06dc\u06df\u06eb\u06df\u06e0\u06d6\u06e8\u06e2\u06dc\u06e2\u06e6\u06d8\u06df\u06da\u06d8\u06d8\u06d8\u06e6\u06d6\u06d8\u06eb\u06d6\u06d6\u06db\u06e8\u06d9\u06d8\u06e4\u06db\u06e5\u06d8\u06e5\u06d8\u06e1\u06d9\u06e5\u06d8\u06eb\u06d8\u06e1\u06e1\u06e6\u06df\u06d9\u06d7\u06e1\u06d8\u06d9\u06d8\u06e7"

    goto/16 :goto_0

    :sswitch_1e
    invoke-direct {p0}, Lcom/cyjh/elfin/ui/activity/SplashActivity;->OooOoOO()V

    const-string v0, "\u06e8\u06e4\u06db\u06df\u06d8\u06dc\u06e6\u06d8\u06e7\u06e8\u06d7\u06dc\u06e0\u06e4\u06e4\u06e8\u06ec\u06d8\u06d8\u06df\u06d8\u06e8\u06eb\u06e5\u06dc\u06d9\u06eb\u06e8\u06d8\u06ec\u06d7\u06df\u06ec\u06eb\u06e1\u06eb\u06df\u06e2\u06e6\u06da\u06df\u06d9\u06d8\u06e5\u06d9\u06e0\u06e5\u06eb\u06e5\u06df"

    goto/16 :goto_0

    :sswitch_1f
    const-string v0, "\u06e5\u06e1\u06dc\u06d8\u06e5\u06dc\u06df\u06eb\u06df\u06e0\u06d6\u06e8\u06e2\u06dc\u06e2\u06e6\u06d8\u06df\u06da\u06d8\u06d8\u06d8\u06e6\u06d6\u06d8\u06eb\u06d6\u06d6\u06db\u06e8\u06d9\u06d8\u06e4\u06db\u06e5\u06d8\u06e5\u06d8\u06e1\u06d9\u06e5\u06d8\u06eb\u06d8\u06e1\u06e1\u06e6\u06df\u06d9\u06d7\u06e1\u06d8\u06d9\u06d8\u06e7"

    goto/16 :goto_0

    :sswitch_20
    const-string v0, "\u06e8\u06e4\u06db\u06df\u06d8\u06dc\u06e6\u06d8\u06e7\u06e8\u06d7\u06dc\u06e0\u06e4\u06e4\u06e8\u06ec\u06d8\u06d8\u06df\u06d8\u06e8\u06eb\u06e5\u06dc\u06d9\u06eb\u06e8\u06d8\u06ec\u06d7\u06df\u06ec\u06eb\u06e1\u06eb\u06df\u06e2\u06e6\u06da\u06df\u06d9\u06d8\u06e5\u06d9\u06e0\u06e5\u06eb\u06e5\u06df"

    goto/16 :goto_0

    :sswitch_21
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x6d034d82 -> :sswitch_21
        -0x68b45142 -> :sswitch_1
        -0x4f670abd -> :sswitch_2
        -0x4de9c6ff -> :sswitch_15
        -0x3efd874d -> :sswitch_4
        -0x3da75efe -> :sswitch_1d
        -0x378de322 -> :sswitch_1e
        -0x2ad1f6a1 -> :sswitch_5
        -0x15d781ee -> :sswitch_d
        -0x7b67cba -> :sswitch_3
        0x10081d11 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x705c0167 -> :sswitch_6
        -0x3688fd15 -> :sswitch_c
        -0x2ce866de -> :sswitch_b
        0x4c29103e -> :sswitch_20
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        -0x4685c4cc -> :sswitch_8
        -0x2b391f35 -> :sswitch_7
        -0x1cf27e2f -> :sswitch_a
        0x18adad29 -> :sswitch_9
    .end sparse-switch

    :sswitch_data_3
    .sparse-switch
        0x18fc82d3 -> :sswitch_14
        0x2f423aa3 -> :sswitch_e
        0x2fc8c5a1 -> :sswitch_1f
        0x32c9aacf -> :sswitch_10
    .end sparse-switch

    :sswitch_data_4
    .sparse-switch
        -0x1e284e45 -> :sswitch_11
        0x383e6ebf -> :sswitch_13
        0x64d54582 -> :sswitch_12
        0x7aa7b25a -> :sswitch_f
    .end sparse-switch

    :sswitch_data_5
    .sparse-switch
        -0x59c2b5d5 -> :sswitch_1c
        -0x1a5afb1b -> :sswitch_1b
        -0x12fc5974 -> :sswitch_16
        0x1b8da508 -> :sswitch_1f
    .end sparse-switch

    :sswitch_data_6
    .sparse-switch
        -0x702fd892 -> :sswitch_19
        -0x5e807042 -> :sswitch_1a
        -0x7b4198 -> :sswitch_17
        0x3e52c367 -> :sswitch_18
    .end sparse-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    const/4 v1, 0x0

    const-string v0, "\u06e1\u06df\u06e1\u06d8\u06e7\u06dc\u06e2\u06df\u06ec\u06e7\u06da\u06e5\u06db\u06e4\u06d9\u06d8\u06d8\u06d8\u06d7\u06e0\u06d8\u06e7\u06d9\u06d8\u06d6\u06d7\u06e8\u06e2\u06e6\u06d8\u06ec\u06eb\u06e2\u06dc\u06db\u06e4\u06d9\u06d8\u06d8\u06db\u06d6\u06d6\u06d8\u06d8\u06dc\u06da"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v3, 0x212

    xor-int/2addr v2, v3

    xor-int/lit16 v2, v2, 0x137

    const/16 v3, 0x2a1

    const v4, -0x6d531524

    xor-int/2addr v2, v3

    xor-int/2addr v2, v4

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e7\u06d9\u06d6\u06df\u06e0\u06da\u06e8\u06df\u06e1\u06e0\u06e7\u06e6\u06e5\u06dc\u06e2\u06da\u06e7\u06e0\u06e5\u06e0\u06da\u06d9\u06db\u06e4\u06e5\u06e1\u06da\u06dc\u06d8\u06d9\u06d9\u06e0\u06e8\u06d9\u06df\u06df\u06e4\u06d9\u06e7\u06e1\u06e1"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06df\u06e8\u06dc\u06db\u06e7\u06e1\u06d7\u06e4\u06d6\u06d8\u06db\u06e8\u06e8\u06e4\u06e2\u06e1\u06dc\u06e0\u06d7\u06e1\u06e1\u06e0\u06df\u06db\u06e1\u06d7\u06e8\u06d6\u06e4\u06db\u06e4\u06ec\u06eb\u06e5\u06e7\u06e2"

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const-string v0, "\u06df\u06da\u06e2\u06dc\u06e6\u06d9\u06e0\u06eb\u06e1\u06d8\u06dc\u06e8\u06e8\u06d8\u06e2\u06e5\u06e8\u06d8\u06d7\u06e5\u06e0\u06dc\u06e6\u06eb\u06d7\u06eb\u06e4\u06d9\u06dc\u06e4\u06dc\u06d6\u06e6\u06dc\u06d8\u06d9\u06d9\u06d9\u06e7\u06eb\u06e1\u06d8\u06e6\u06e4\u06e8\u06d8"

    goto :goto_0

    :sswitch_3
    const v2, 0x45048005    # 2120.0012f

    const-string v0, "\u06e8\u06e8\u06e7\u06e7\u06df\u06d6\u06d9\u06e4\u06e5\u06d8\u06eb\u06e5\u06e4\u06e2\u06d7\u06e2\u06e8\u06ec\u06e0\u06dc\u06e1\u06d8\u06e7\u06dc\u06e7\u06e1\u06ec\u06db\u06ec\u06df\u06e5\u06e7\u06d9\u06ec\u06e0\u06e6\u06e1\u06dc\u06e0\u06db\u06df\u06e8\u06e4\u06ec\u06ec\u06e4\u06e6\u06dc"

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v2

    sparse-switch v3, :sswitch_data_1

    goto :goto_1

    :sswitch_4
    const-string v0, "\u06dc\u06da\u06dc\u06da\u06db\u06e0\u06d8\u06db\u06d8\u06eb\u06eb\u06db\u06ec\u06db\u06da\u06dc\u06db\u06d7\u06e4\u06e1\u06dc\u06e2\u06e4\u06e6\u06da\u06d9\u06db\u06ec\u06eb"

    goto :goto_0

    :sswitch_5
    const-string v0, "\u06e8\u06e0\u06e2\u06e4\u06e8\u06d9\u06db\u06e0\u06e8\u06e4\u06e8\u06dc\u06d8\u06d7\u06dc\u06d9\u06d9\u06df\u06e1\u06dc\u06e1\u06da\u06e2\u06d6\u06d8\u06d9\u06dc\u06d6\u06d8\u06dc\u06e8\u06e5\u06d8"

    goto :goto_1

    :sswitch_6
    const v3, -0x7c750f51

    const-string v0, "\u06d7\u06dc\u06db\u06e7\u06da\u06d9\u06df\u06df\u06d7\u06e4\u06d8\u06d8\u06d8\u06d6\u06d7\u06df\u06d9\u06da\u06da\u06e6\u06d8\u06e5\u06e4\u06e5\u06e6\u06d8\u06d9\u06ec\u06da\u06e1\u06d6\u06e2\u06e7\u06d8\u06d8\u06d8\u06d8\u06db\u06eb"

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    xor-int/2addr v4, v3

    sparse-switch v4, :sswitch_data_2

    goto :goto_2

    :sswitch_7
    const-string v0, "\u06d8\u06dc\u06e0\u06ec\u06e0\u06d7\u06db\u06e2\u06e5\u06eb\u06dc\u06e0\u06e2\u06d9\u06e7\u06dc\u06d9\u06e4\u06d9\u06e7\u06e2\u06e1\u06eb\u06dc\u06d8\u06e1\u06df\u06e7\u06d7\u06e1\u06dc\u06d8"

    goto :goto_2

    :cond_0
    const-string v0, "\u06ec\u06eb\u06eb\u06e1\u06e4\u06df\u06d8\u06e8\u06eb\u06e7\u06eb\u06e5\u06e4\u06d9\u06e1\u06e6\u06e1\u06d8\u06d7\u06df\u06d8\u06ec\u06ec\u06e7\u06e4\u06e4\u06d8\u06d8\u06dc\u06e1\u06e1\u06e4\u06d8\u06e4\u06e1\u06df\u06ec\u06d6\u06e1\u06e1\u06d8\u06d9\u06d7\u06eb\u06e5\u06d6\u06d6\u06df\u06e1"

    goto :goto_2

    :sswitch_8
    const v0, 0x7f090335

    if-eq v1, v0, :cond_0

    const-string v0, "\u06e1\u06e8\u06df\u06e5\u06e1\u06e8\u06d8\u06e7\u06e4\u06e8\u06d8\u06dc\u06e8\u06e0\u06d7\u06ec\u06e8\u06d8\u06d7\u06e7\u06d6\u06d6\u06d9\u06d6\u06e2\u06d6\u06dc\u06da\u06e5\u06dc\u06d8\u06e4\u06da\u06e1\u06d8\u06ec\u06d8\u06e1\u06d9\u06df\u06e8\u06e1\u06eb\u06e1\u06e1\u06e2\u06e8\u06e5\u06e4\u06db\u06d8\u06df\u06e6\u06d8\u06d7\u06da\u06dc\u06d8\u06eb\u06db\u06e6"

    goto :goto_2

    :sswitch_9
    const-string v0, "\u06df\u06e1\u06e8\u06dc\u06e4\u06d8\u06d9\u06e2\u06ec\u06da\u06d6\u06e0\u06d7\u06da\u06ec\u06da\u06e5\u06d6\u06e7\u06e8\u06d6\u06e7\u06e6\u06d8\u06d8\u06d8\u06dc\u06d6\u06dc\u06e2\u06eb\u06e4\u06e1\u06e1\u06eb\u06dc\u06db\u06e0\u06e0\u06d8\u06eb\u06dc\u06ec\u06e0\u06eb\u06d6\u06e0\u06eb\u06d6\u06d9\u06df\u06e2\u06dc\u06e2"

    goto :goto_1

    :sswitch_a
    const-string v0, "\u06da\u06eb\u06e5\u06e2\u06e2\u06e6\u06e5\u06d9\u06e0\u06d7\u06e1\u06e2\u06d7\u06d8\u06e2\u06d6\u06d9\u06e1\u06d8\u06eb\u06da\u06e1\u06ec\u06e0\u06eb\u06d9\u06e2\u06e5\u06d8\u06e5\u06db\u06d6"

    goto :goto_1

    :sswitch_b
    const-string v0, "\u06e5\u06e6\u06e1\u06df\u06ec\u06d9\u06e4\u06e5\u06e1\u06d8\u06e4\u06ec\u06d6\u06dc\u06da\u06df\u06df\u06e7\u06d8\u06d8\u06d7\u06e5\u06e7\u06e4\u06d8\u06e8\u06d8\u06d6\u06e2\u06e1\u06dc\u06e1\u06db\u06d6\u06e6\u06d6\u06da\u06e2\u06ec\u06e6\u06d9\u06d9\u06e5\u06e8\u06ec\u06e8\u06e0\u06e4\u06e5\u06df\u06eb\u06eb\u06e1\u06df\u06db\u06e7\u06e2"

    goto :goto_0

    :sswitch_c
    const v2, -0x159a82ea

    const-string v0, "\u06d8\u06e2\u06df\u06e0\u06d9\u06d6\u06d8\u06e4\u06d6\u06da\u06e2\u06db\u06e2\u06e6\u06d6\u06eb\u06eb\u06e5\u06df\u06ec\u06e0\u06e1\u06eb\u06d7\u06e8\u06eb\u06d6\u06d9\u06e5\u06d7\u06ec\u06e6\u06d6\u06d8\u06e0\u06e8\u06d6\u06d8\u06df\u06dc\u06d8\u06e2\u06e6\u06e8\u06d8\u06e6\u06e5\u06d6\u06d8\u06e6\u06e8\u06d8"

    :goto_3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v2

    sparse-switch v3, :sswitch_data_3

    goto :goto_3

    :sswitch_d
    const-string v0, "\u06dc\u06e1\u06e5\u06d8\u06d7\u06e5\u06d6\u06d6\u06e6\u06d9\u06dc\u06e7\u06e6\u06d6\u06e6\u06d8\u06eb\u06e7\u06d8\u06d8\u06df\u06d7\u06df\u06dc\u06e8\u06ec\u06e7\u06d7\u06da\u06d8\u06e6\u06e1\u06e6\u06d8\u06d8\u06d8\u06e2\u06dc\u06d7\u06e7\u06eb\u06d9\u06d9\u06e2\u06eb\u06d9\u06e6\u06d8\u06df\u06e2\u06eb\u06e5\u06d9\u06d6\u06e7"

    goto :goto_0

    :sswitch_e
    const-string v0, "\u06e4\u06d6\u06e6\u06e5\u06da\u06e6\u06eb\u06d6\u06e6\u06e2\u06d7\u06e8\u06ec\u06d6\u06eb\u06d6\u06da\u06e0\u06d8\u06e1\u06d7\u06e6\u06d8\u06e2\u06e5\u06e8\u06d8\u06ec\u06df\u06ec\u06ec\u06dc\u06d9\u06e6\u06e8"

    goto :goto_3

    :sswitch_f
    const v3, -0x2a868164

    const-string v0, "\u06e7\u06da\u06ec\u06d9\u06da\u06e6\u06da\u06d8\u06eb\u06d9\u06da\u06d9\u06dc\u06e7\u06e5\u06d8\u06e1\u06e2\u06e1\u06db\u06e7\u06d6\u06d8\u06e2\u06dc\u06d6\u06ec\u06dc\u06e0\u06db\u06df\u06d7\u06d9\u06e5\u06da\u06eb\u06d6\u06e0\u06e0\u06e6\u06e6\u06e7\u06db\u06d6\u06d8\u06e8\u06e2\u06e4\u06d6\u06df\u06e8\u06d8"

    :goto_4
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    xor-int/2addr v4, v3

    sparse-switch v4, :sswitch_data_4

    goto :goto_4

    :sswitch_10
    const-string v0, "\u06e4\u06e2\u06d9\u06e1\u06df\u06e0\u06df\u06d8\u06d8\u06e5\u06e1\u06e8\u06d8\u06d6\u06db\u06e6\u06d8\u06e1\u06eb\u06e5\u06e0\u06d9\u06dc\u06e5\u06d8\u06ec\u06e4\u06e0\u06e2\u06d9\u06d8\u06e5\u06eb\u06e1\u06d9\u06e4\u06d8\u06ec\u06d7\u06eb\u06e5\u06e8\u06e2\u06e2\u06d6\u06eb\u06e8\u06ec\u06db\u06e1\u06d8\u06e8\u06eb\u06d6\u06d7\u06e7"

    goto :goto_3

    :cond_1
    const-string v0, "\u06dc\u06e0\u06d7\u06e0\u06da\u06e4\u06e7\u06d6\u06d6\u06d8\u06d7\u06e5\u06e2\u06db\u06d7\u06dc\u06d8\u06dc\u06e5\u06e5\u06e7\u06e6\u06e7\u06d8\u06dc\u06e4\u06da\u06db\u06e6\u06e2\u06e8\u06e1\u06df\u06ec\u06df\u06dc\u06d8\u06dc\u06df\u06d6\u06d8\u06d8\u06db\u06e1\u06d8\u06d6\u06e8\u06e5\u06d8"

    goto :goto_4

    :sswitch_11
    const v0, 0x7f090454

    if-eq v1, v0, :cond_1

    const-string v0, "\u06ec\u06da\u06db\u06e6\u06e1\u06eb\u06e5\u06eb\u06eb\u06dc\u06e0\u06e4\u06e8\u06d8\u06d8\u06da\u06eb\u06da\u06df\u06d6\u06da\u06da\u06db\u06d6\u06d8\u06e6\u06e7\u06dc\u06d8\u06e4\u06d6\u06d6\u06eb\u06dc\u06db\u06d8\u06e0\u06e6\u06e0\u06dc\u06d6\u06d8\u06d9\u06e4\u06e8\u06d8\u06e1\u06e7\u06e5\u06e6\u06df\u06d6"

    goto :goto_4

    :sswitch_12
    const-string v0, "\u06e8\u06db\u06df\u06e5\u06e8\u06da\u06e8\u06df\u06e0\u06ec\u06e2\u06e1\u06db\u06e8\u06d8\u06e5\u06df\u06e2\u06eb\u06e4\u06e5\u06d8\u06d9\u06d6\u06ec\u06e8\u06ec\u06d9\u06e1\u06e2\u06e1\u06d8\u06e4\u06d9\u06e5\u06dc\u06e8\u06ec"

    goto :goto_4

    :sswitch_13
    const-string v0, "\u06eb\u06d8\u06df\u06dc\u06e4\u06e5\u06d8\u06e1\u06dc\u06eb\u06dc\u06ec\u06db\u06e7\u06e6\u06e6\u06db\u06dc\u06e1\u06e4\u06dc\u06d8\u06d6\u06e1\u06e5\u06d8\u06e7\u06e5\u06e2\u06e2\u06d9\u06d7"

    goto :goto_3

    :sswitch_14
    const-string v0, "\u06e1\u06e7\u06e8\u06d8\u06d7\u06e2\u06d6\u06d8\u06e4\u06e5\u06d8\u06d8\u06e1\u06e4\u06e2\u06e4\u06db\u06d6\u06df\u06e7\u06db\u06d6\u06d6\u06e6\u06dc\u06e5\u06d9\u06e2\u06d8\u06e7\u06d8\u06eb\u06e5\u06e8\u06d8\u06ec\u06dc\u06dc\u06e1\u06d9\u06d8\u06ec\u06e7\u06d9\u06e8\u06db\u06e7\u06d7\u06d7\u06e5\u06d6\u06e5\u06d6"

    goto/16 :goto_0

    :sswitch_15
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SplashActivity;->Ooooooo:Lz2/rh;

    invoke-virtual {v0}, Lz2/rh;->OooO0Oo()V

    const-string v0, "\u06e7\u06e5\u06d6\u06d8\u06e2\u06e1\u06ec\u06df\u06e8\u06df\u06eb\u06ec\u06e7\u06d7\u06e6\u06e7\u06d9\u06e6\u06e5\u06d8\u06e8\u06d6\u06d8\u06db\u06ec\u06e8\u06e0\u06ec\u06e1\u06da\u06e2\u06e1"

    goto/16 :goto_0

    :sswitch_16
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SplashActivity;->Ooooooo:Lz2/rh;

    invoke-virtual {v0}, Lz2/rh;->OooOOO0()V

    const-string v0, "\u06e4\u06e8\u06e1\u06d8\u06d6\u06e4\u06e6\u06d8\u06e8\u06dc\u06d6\u06d8\u06dc\u06dc\u06e7\u06d8\u06e1\u06eb\u06d8\u06d6\u06e5\u06e7\u06e8\u06e5\u06e2\u06e4\u06dc\u06e1\u06e6\u06d8\u06ec\u06e4\u06e2\u06d7\u06e6\u06e8\u06e4\u06d7\u06eb\u06ec\u06df\u06e0\u06e0\u06d6\u06d8\u06d8"

    goto/16 :goto_0

    :sswitch_17
    const-string v0, "\u06e4\u06e8\u06e1\u06d8\u06d6\u06e4\u06e6\u06d8\u06e8\u06dc\u06d6\u06d8\u06dc\u06dc\u06e7\u06d8\u06e1\u06eb\u06d8\u06d6\u06e5\u06e7\u06e8\u06e5\u06e2\u06e4\u06dc\u06e1\u06e6\u06d8\u06ec\u06e4\u06e2\u06d7\u06e6\u06e8\u06e4\u06d7\u06eb\u06ec\u06df\u06e0\u06e0\u06d6\u06d8\u06d8"

    goto/16 :goto_0

    :sswitch_18
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x65a98f52 -> :sswitch_17
        -0x646d3a96 -> :sswitch_c
        -0x50beda6 -> :sswitch_16
        0x1473bebe -> :sswitch_1
        0x16cb6394 -> :sswitch_17
        0x23faea22 -> :sswitch_2
        0x2db4cd8e -> :sswitch_15
        0x54386503 -> :sswitch_0
        0x5741beab -> :sswitch_3
        0x61c0b8e4 -> :sswitch_18
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x6c33ba4b -> :sswitch_6
        -0x27a06dd9 -> :sswitch_b
        -0x23abf569 -> :sswitch_4
        -0x4d36626 -> :sswitch_a
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        -0x56f59b97 -> :sswitch_7
        -0x53c14789 -> :sswitch_5
        -0x12310f2 -> :sswitch_8
        0x540e220b -> :sswitch_9
    .end sparse-switch

    :sswitch_data_3
    .sparse-switch
        -0x7685634c -> :sswitch_f
        -0x51a59cbd -> :sswitch_d
        0x480909ba -> :sswitch_13
        0x67e0554f -> :sswitch_14
    .end sparse-switch

    :sswitch_data_4
    .sparse-switch
        -0x49e77ec8 -> :sswitch_10
        -0x4849d91a -> :sswitch_11
        -0x64be869 -> :sswitch_12
        0x5545b70 -> :sswitch_e
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    const-string v0, "\u06e0\u06d8\u06dc\u06dc\u06e4\u06df\u06e7\u06ec\u06e5\u06d8\u06eb\u06d8\u06e5\u06d8\u06db\u06e8\u06d8\u06d8\u06e5\u06d6\u06d8\u06e7\u06ec\u06e4\u06d6\u06da\u06ec\u06e6\u06e8\u06e2\u06d9\u06e7\u06e1\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x179

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x32a

    const/16 v2, 0x3d8

    const v3, -0xb99c254

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e1\u06d7\u06d9\u06e2\u06e1\u06dc\u06e0\u06e4\u06df\u06df\u06d7\u06d6\u06e4\u06e5\u06d6\u06d8\u06dc\u06e4\u06db\u06d7\u06e5\u06d6\u06d8\u06ec\u06e1\u06e4\u06ec\u06dc\u06d8\u06d8\u06eb\u06eb\u06e2\u06e8\u06db\u06e2\u06da\u06e4\u06e7\u06db\u06d6\u06dc\u06d8\u06e1\u06d9\u06d6\u06d8\u06e0\u06e5\u06e5\u06df\u06ec\u06e1"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06e7\u06d8\u06e5\u06d8\u06e0\u06d6\u06e0\u06e7\u06e4\u06da\u06e1\u06d7\u06dc\u06d8\u06e4\u06d6\u06e6\u06d8\u06e4\u06eb\u06e4\u06e5\u06e1\u06e7\u06d8\u06d9\u06e2\u06dc\u06d8\u06e6\u06db\u06ec\u06da\u06df\u06d8\u06d8\u06da\u06d6\u06db\u06d7\u06df\u06e8\u06d8"

    goto :goto_0

    :sswitch_2
    invoke-super {p0, p1}, Lcom/cyjh/common/base/activity/BaseModelActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "\u06db\u06d8\u06eb\u06e7\u06ec\u06d6\u06e5\u06e6\u06e1\u06d8\u06e7\u06e7\u06e8\u06d8\u06e8\u06d9\u06e1\u06d8\u06dc\u06db\u06d7\u06df\u06e7\u06db\u06e1\u06db\u06df\u06e5\u06e2\u06e2\u06e6\u06d8\u06d6\u06e0\u06d8\u06d8\u06ec\u06e6\u06d6\u06e0\u06d7\u06e5\u06d9\u06df\u06e8\u06db\u06ec\u06d8\u06ec\u06e5\u06d8\u06e5\u06df\u06e4\u06e8"

    goto :goto_0

    :sswitch_3
    const v1, 0x623aff60

    const-string v0, "\u06da\u06e2\u06e8\u06db\u06d6\u06dc\u06e0\u06d9\u06d6\u06e7\u06e4\u06e7\u06d7\u06da\u06e8\u06d9\u06e7\u06d8\u06d8\u06e8\u06e1\u06e6\u06d8\u06e8\u06d8\u06e5\u06d8\u06ec\u06df\u06e0\u06e1\u06e8\u06e7\u06d8\u06d6\u06e7\u06d9\u06da\u06e4\u06e1\u06e2\u06d7\u06dc\u06dc\u06e1\u06dc\u06d8"

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v2, v1

    sparse-switch v2, :sswitch_data_1

    goto :goto_1

    :sswitch_4
    const-string v0, "\u06e0\u06e1\u06e7\u06d8\u06eb\u06dc\u06e0\u06e6\u06dc\u06df\u06da\u06e0\u06d6\u06df\u06d9\u06e5\u06d8\u06e5\u06d6\u06e8\u06d9\u06e5\u06e0\u06d6\u06e1\u06d8\u06d6\u06e6\u06dc\u06e4\u06e0\u06e1\u06d8\u06eb\u06e7\u06dc\u06d8\u06e1\u06e0"

    goto :goto_0

    :sswitch_5
    const-string v0, "\u06eb\u06e5\u06dc\u06e1\u06e1\u06e7\u06d8\u06d7\u06d6\u06e6\u06d6\u06d8\u06e1\u06d7\u06e6\u06d8\u06da\u06ec\u06e5\u06eb\u06d6\u06e5\u06d8\u06ec\u06d8\u06e6\u06d8\u06d8\u06e8\u06e2\u06d7\u06e8\u06e1"

    goto :goto_1

    :sswitch_6
    const v2, -0x2286b09f

    const-string v0, "\u06e6\u06e7\u06da\u06d9\u06d8\u06d8\u06e1\u06d7\u06d6\u06d6\u06e6\u06e7\u06eb\u06e5\u06d8\u06da\u06e5\u06da\u06e6\u06e2\u06e4\u06e7\u06db\u06dc\u06d8\u06e2\u06d8\u06df\u06e5\u06dc\u06d8\u06e4\u06da\u06db\u06d6\u06dc\u06da\u06e8\u06e2\u06da\u06db\u06e5"

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v2

    sparse-switch v3, :sswitch_data_2

    goto :goto_2

    :sswitch_7
    invoke-virtual {p0}, Landroid/app/Activity;->isTaskRoot()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "\u06d8\u06da\u06e0\u06df\u06e7\u06e0\u06d8\u06e8\u06e8\u06d8\u06df\u06e0\u06e2\u06e5\u06e8\u06d7\u06e2\u06dc\u06e2\u06e2\u06df\u06e8\u06d7\u06dc\u06e4\u06d9\u06e8\u06e4\u06eb\u06d6\u06dc\u06e8\u06e2\u06da\u06e7\u06d7\u06e2\u06e5\u06e7\u06ec\u06dc\u06ec"

    goto :goto_2

    :cond_0
    const-string v0, "\u06e6\u06dc\u06dc\u06df\u06d7\u06e7\u06ec\u06d8\u06e7\u06d8\u06e7\u06db\u06dc\u06df\u06e7\u06da\u06dc\u06e4\u06d8\u06db\u06d8\u06d9\u06eb\u06d8\u06e8\u06db\u06e2\u06e0\u06d7\u06e7\u06d8"

    goto :goto_2

    :sswitch_8
    const-string v0, "\u06dc\u06db\u06dc\u06d8\u06e2\u06d8\u06d9\u06d8\u06d8\u06e6\u06d8\u06e4\u06e1\u06e7\u06d9\u06d7\u06e1\u06d8\u06e6\u06ec\u06df\u06e8\u06e8\u06e1\u06e2\u06e8\u06e6\u06da\u06d7\u06dc\u06df\u06db\u06e0\u06eb\u06d6\u06ec\u06d9\u06dc\u06e4"

    goto :goto_2

    :sswitch_9
    const-string v0, "\u06d6\u06e7\u06d9\u06e7\u06e0\u06df\u06dc\u06da\u06d8\u06d8\u06e8\u06e4\u06dc\u06d8\u06e5\u06dc\u06e1\u06d8\u06d7\u06e6\u06d9\u06e6\u06e5\u06e5\u06d8\u06e0\u06e1\u06e4\u06e4\u06e6\u06d9\u06dc\u06e8\u06d7"

    goto :goto_1

    :sswitch_a
    const-string v0, "\u06e6\u06e6\u06e8\u06dc\u06e6\u06d6\u06d9\u06e6\u06db\u06e2\u06df\u06e7\u06dc\u06d7\u06e6\u06e8\u06da\u06dc\u06e0\u06ec\u06ec\u06d7\u06d6\u06e0\u06dc\u06d8\u06e7\u06d8\u06e1\u06d8\u06e8\u06d7\u06e7\u06e0\u06e7\u06e6\u06e2\u06e5\u06d7\u06d7\u06d9\u06e6\u06e0\u06e2\u06d6\u06d8\u06eb\u06e0\u06d8\u06d8"

    goto :goto_1

    :sswitch_b
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const-string v0, "\u06df\u06df\u06d6\u06e6\u06e5\u06ec\u06e0\u06e6\u06e5\u06df\u06eb\u06e0\u06d7\u06e1\u06e0\u06e8\u06e5\u06da\u06da\u06d9\u06df\u06eb\u06e7\u06d9\u06e6\u06e8\u06d7\u06da\u06dc\u06db\u06e4\u06e7\u06e8\u06d8\u06d8\u06e4\u06ec"

    goto :goto_0

    :sswitch_c
    const v1, 0x26a284da

    const-string v0, "\u06e5\u06df\u06da\u06d8\u06d9\u06e1\u06d8\u06dc\u06e2\u06dc\u06e4\u06d7\u06e1\u06da\u06d6\u06df\u06e2\u06e8\u06e4\u06d8\u06e8\u06e2\u06d7\u06e6\u06ec\u06dc\u06d9\u06d6\u06d8\u06eb\u06d8\u06d9"

    :goto_3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v2, v1

    sparse-switch v2, :sswitch_data_3

    goto :goto_3

    :sswitch_d
    const-string v0, "\u06e2\u06dc\u06e5\u06d8\u06d9\u06df\u06da\u06e7\u06db\u06dc\u06e7\u06d6\u06e5\u06d8\u06e8\u06e0\u06e6\u06eb\u06e5\u06eb\u06d8\u06e7\u06e1\u06e6\u06df\u06eb\u06d8\u06e4\u06eb\u06e5\u06e0\u06d6\u06e5\u06db\u06df\u06df\u06dc\u06e8\u06d8\u06e6\u06e1\u06e5\u06e5\u06e4\u06e0\u06e6\u06e6\u06e2\u06dc\u06dc\u06e1\u06d8"

    goto :goto_3

    :sswitch_e
    const-string v0, "\u06e8\u06e1\u06db\u06ec\u06d9\u06ec\u06e5\u06e1\u06e6\u06d8\u06d9\u06d8\u06d6\u06d8\u06dc\u06e7\u06d7\u06d9\u06e2\u06e7\u06e6\u06e4\u06d8\u06d7\u06e2\u06d6\u06db\u06e2\u06e6\u06d8\u06db\u06da\u06e1\u06e6\u06dc\u06ec\u06d9\u06e6\u06ec"

    goto :goto_3

    :sswitch_f
    const v2, 0x7a5cedd7

    const-string v0, "\u06eb\u06eb\u06e8\u06d8\u06eb\u06e4\u06d8\u06e6\u06e6\u06df\u06ec\u06d8\u06dc\u06d8\u06da\u06e7\u06dc\u06d8\u06dc\u06d8\u06df\u06df\u06d9\u06d7\u06df\u06d9\u06e2\u06ec\u06e6\u06d6\u06df\u06ec\u06e1\u06e7\u06e6\u06db\u06ec\u06ec\u06df\u06e5\u06e8\u06d8\u06d8\u06e0\u06e0\u06db\u06e1\u06d8\u06e5\u06e5\u06e7\u06d8"

    :goto_4
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v2

    sparse-switch v3, :sswitch_data_4

    goto :goto_4

    :sswitch_10
    const-string v0, "\u06e6\u06d8\u06d6\u06da\u06df\u06d6\u06d8\u06e7\u06df\u06d8\u06e4\u06d9\u06e5\u06d8\u06ec\u06eb\u06d6\u06d8\u06e6\u06d7\u06ec\u06d8\u06da\u06e1\u06d8\u06eb\u06e1\u06e1\u06d8\u06e2\u06db\u06e7\u06eb\u06e0\u06e8\u06d8\u06eb\u06db\u06e4\u06e1\u06e7\u06d6\u06d8\u06e4\u06d8\u06d7\u06e8\u06d7\u06e2\u06e1\u06d6\u06d8\u06e7\u06d9\u06df\u06d9\u06e0\u06db\u06e4\u06d8\u06e7"

    goto :goto_4

    :cond_1
    const-string v0, "\u06d7\u06ec\u06e7\u06d8\u06e7\u06e2\u06df\u06d6\u06da\u06d7\u06e7\u06d6\u06d8\u06e1\u06df\u06e1\u06d7\u06dc\u06e6\u06d8\u06e7\u06e4\u06df\u06df\u06d9\u06d9\u06e1\u06e7\u06d8\u06da\u06dc\u06e1\u06d8\u06ec\u06ec\u06e7\u06db\u06e5\u06d8\u06e4\u06d9\u06df\u06d6\u06db\u06dc\u06d8\u06d8\u06da\u06e6\u06d8\u06e8\u06ec\u06e1\u06d8"

    goto :goto_4

    :sswitch_11
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v0, v3, :cond_1

    const-string v0, "\u06ec\u06d9\u06e1\u06d7\u06ec\u06db\u06df\u06e6\u06db\u06e8\u06eb\u06e5\u06d8\u06d9\u06dc\u06d8\u06e4\u06e8\u06e0\u06da\u06d7\u06e1\u06db\u06ec\u06e1\u06db\u06d6\u06d8\u06e0\u06e1\u06e8\u06d8\u06dc\u06e6\u06d6\u06d8\u06eb\u06e2\u06dc\u06d8\u06e5\u06ec\u06d8\u06eb\u06d8\u06db"

    goto :goto_4

    :sswitch_12
    const-string v0, "\u06e4\u06e1\u06d6\u06e7\u06eb\u06d9\u06e8\u06e0\u06d7\u06ec\u06d6\u06d8\u06e1\u06e6\u06d8\u06d8\u06e4\u06dc\u06e4\u06e8\u06d8\u06d9\u06e4\u06e7\u06d6\u06d8\u06d9\u06e5\u06e1\u06e6\u06d7\u06d6\u06ec\u06d6\u06d6\u06d8\u06eb\u06e8\u06eb\u06ec\u06e0\u06ec\u06ec\u06eb\u06d8\u06d6\u06e5\u06d9\u06d6\u06dc\u06e6"

    goto :goto_3

    :sswitch_13
    const-string v0, "\u06db\u06dc\u06e1\u06db\u06da\u06e6\u06d7\u06d6\u06e7\u06e5\u06df\u06da\u06d6\u06db\u06e7\u06db\u06d6\u06e5\u06ec\u06e1\u06eb\u06e7\u06ec\u06e1\u06d9\u06e4\u06d9\u06dc\u06e0\u06da\u06e0\u06e1\u06e0\u06e7\u06e2\u06e5\u06d8\u06e7\u06d8\u06d8\u06df\u06e1\u06d6\u06d7\u06d8\u06e6\u06d8\u06d9\u06d9\u06dc"

    goto/16 :goto_0

    :sswitch_14
    invoke-direct {p0}, Lcom/cyjh/elfin/ui/activity/SplashActivity;->Oooo0oO()V

    const-string v0, "\u06ec\u06da\u06e6\u06ec\u06e5\u06eb\u06dc\u06dc\u06db\u06eb\u06e5\u06d8\u06dc\u06df\u06e1\u06e4\u06dc\u06e1\u06ec\u06e2\u06d8\u06d8\u06d8\u06ec\u06e8\u06e8\u06eb\u06db\u06da\u06e0\u06d9\u06d7\u06d8\u06d8\u06e4\u06e5\u06eb\u06d6\u06e1\u06dc\u06e6\u06e5\u06d9"

    goto/16 :goto_0

    :sswitch_15
    invoke-direct {p0}, Lcom/cyjh/elfin/ui/activity/SplashActivity;->OooOoOO()V

    const-string v0, "\u06d7\u06e8\u06df\u06eb\u06d9\u06e1\u06d8\u06e0\u06d6\u06da\u06d6\u06e6\u06dc\u06d8\u06d9\u06e7\u06ec\u06e4\u06d6\u06e5\u06d8\u06e4\u06db\u06e8\u06d9\u06dc\u06d9\u06db\u06db\u06dc\u06d6\u06d6\u06e8\u06d8"

    goto/16 :goto_0

    :sswitch_16
    const-string v0, "\u06df\u06df\u06e1\u06d8\u06e8\u06e2\u06e5\u06d8\u06ec\u06e6\u06e7\u06eb\u06d6\u06e5\u06dc\u06e0\u06e2\u06e4\u06e8\u06d8\u06e4\u06e5\u06e8\u06e7\u06da\u06eb\u06e2\u06e6\u06ec\u06e2\u06dc\u06e1\u06d8\u06eb\u06e0\u06dc\u06d8\u06ec\u06e7\u06d9\u06e5\u06d8\u06e5\u06da\u06e1\u06ec"

    goto/16 :goto_0

    :sswitch_17
    const-string v0, "\u06e0\u06dc\u06db\u06da\u06e0\u06df\u06e5\u06d7\u06ec\u06e8\u06df\u06dc\u06e6\u06e6\u06e1\u06e0\u06e4\u06e0\u06eb\u06e0\u06e4\u06e6\u06e0\u06e6\u06e6\u06da\u06e8\u06eb\u06e0\u06eb\u06d9\u06e0\u06d6\u06d8\u06e1\u06d7\u06ec\u06e2\u06db\u06d8\u06e4\u06da\u06e5\u06d6\u06d6\u06e6\u06e6\u06eb\u06e5\u06d8\u06ec\u06df\u06e7\u06e6\u06dc\u06e2"

    goto/16 :goto_0

    :sswitch_18
    const-string v0, "\u06d7\u06e8\u06df\u06eb\u06d9\u06e1\u06d8\u06e0\u06d6\u06da\u06d6\u06e6\u06dc\u06d8\u06d9\u06e7\u06ec\u06e4\u06d6\u06e5\u06d8\u06e4\u06db\u06e8\u06d9\u06dc\u06d9\u06db\u06db\u06dc\u06d6\u06d6\u06e8\u06d8"

    goto/16 :goto_0

    :sswitch_19
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x6cc89641 -> :sswitch_15
        -0x56dbdfa8 -> :sswitch_c
        -0x4f69e6b0 -> :sswitch_b
        -0x3e94f8ba -> :sswitch_19
        -0x9fb8d9d -> :sswitch_14
        -0x7127f16 -> :sswitch_0
        0x132cc1ca -> :sswitch_18
        0x19ce26be -> :sswitch_19
        0x34945bda -> :sswitch_2
        0x554d69de -> :sswitch_1
        0x5633b53b -> :sswitch_3
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x3f74dbcc -> :sswitch_4
        -0x37335ad9 -> :sswitch_6
        -0x21be11b1 -> :sswitch_16
        0x6f78647d -> :sswitch_a
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        -0x6db81411 -> :sswitch_5
        -0x286d8ca7 -> :sswitch_9
        0x49f8251c -> :sswitch_8
        0x60940eb2 -> :sswitch_7
    .end sparse-switch

    :sswitch_data_3
    .sparse-switch
        -0x324dc9ac -> :sswitch_13
        0x3b1a870d -> :sswitch_f
        0x4725f7d9 -> :sswitch_17
        0x6b81f60d -> :sswitch_d
    .end sparse-switch

    :sswitch_data_4
    .sparse-switch
        -0x6313f664 -> :sswitch_e
        0x4cd4e2b2 -> :sswitch_12
        0x52e19508 -> :sswitch_10
        0x78e9ee8f -> :sswitch_11
    .end sparse-switch
.end method

.method public onDestroy()V
    .locals 6

    const/4 v2, 0x0

    const-string v0, "\u06e5\u06d7\u06d9\u06d6\u06d6\u06e1\u06d8\u06e0\u06eb\u06e1\u06e8\u06d6\u06e1\u06d8\u06e7\u06eb\u06e6\u06e8\u06eb\u06d8\u06d8\u06e0\u06e2\u06e5\u06d8\u06e4\u06e1\u06d9\u06df\u06e7\u06e6\u06d8\u06e4\u06d8\u06eb\u06e1\u06dc\u06d6\u06da\u06dc\u06e6\u06e7\u06d8\u06d6\u06e8\u06d7"

    move-object v1, v2

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/16 v4, 0x1ae

    xor-int/2addr v3, v4

    xor-int/lit16 v3, v3, 0x298

    const/16 v4, 0x180

    const v5, -0x7d34c5f9

    xor-int/2addr v3, v4

    xor-int/2addr v3, v5

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06db\u06e2\u06dc\u06d8\u06ec\u06e1\u06db\u06dc\u06d6\u06d8\u06d8\u06e1\u06d6\u06e2\u06db\u06e1\u06e7\u06eb\u06d8\u06dc\u06d7\u06e4\u06e8\u06d8\u06db\u06d6\u06d9\u06d7\u06e8\u06e6\u06e6\u06e2\u06e5\u06d9\u06e7\u06e8\u06e6\u06d8\u06e7\u06dc\u06e1\u06e6\u06e5\u06e0\u06e2\u06dc\u06ec\u06d7\u06e5\u06e2\u06e1\u06d9\u06e7\u06e6\u06e6\u06d6\u06da"

    goto :goto_0

    :sswitch_1
    invoke-super {p0}, Lcom/cyjh/common/base/activity/BaseActivity;->onDestroy()V

    const-string v0, "\u06ec\u06e5\u06d9\u06eb\u06eb\u06d9\u06e6\u06e2\u06dc\u06ec\u06e6\u06d8\u06d8\u06d8\u06eb\u06e6\u06e0\u06e8\u06d8\u06e5\u06e4\u06e8\u06d8\u06d8\u06dc\u06e6\u06eb\u06e4\u06e8\u06d8\u06d8\u06e8\u06e7\u06dc\u06d8\u06d6\u06d9\u06db"

    goto :goto_0

    :sswitch_2
    iget-object v1, p0, Lcom/cyjh/elfin/ui/activity/SplashActivity;->Ooooooo:Lz2/rh;

    const-string v0, "\u06df\u06dc\u06d9\u06d6\u06d8\u06e1\u06d8\u06e1\u06e5\u06ec\u06eb\u06eb\u06ec\u06db\u06dc\u06ec\u06e7\u06d8\u06e5\u06e8\u06ec\u06d8\u06db\u06e8\u06e6\u06d8\u06eb\u06eb\u06da\u06ec\u06e2\u06e7\u06e4\u06d6\u06eb\u06e2\u06e8\u06e8\u06d8"

    goto :goto_0

    :sswitch_3
    const v3, 0xea063f2

    const-string v0, "\u06e4\u06d7\u06e2\u06e5\u06e6\u06e7\u06da\u06e7\u06d8\u06e0\u06e5\u06e5\u06d8\u06e8\u06d8\u06e8\u06d8\u06e8\u06eb\u06da\u06e2\u06e8\u06d8\u06e2\u06e0\u06e5\u06d8\u06e8\u06da\u06ec\u06e6\u06e1\u06eb\u06d8\u06e4\u06da\u06e5\u06e6\u06d6\u06d8"

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    xor-int/2addr v4, v3

    sparse-switch v4, :sswitch_data_1

    goto :goto_1

    :sswitch_4
    const-string v0, "\u06db\u06dc\u06dc\u06dc\u06dc\u06e6\u06e0\u06e0\u06d8\u06d8\u06d7\u06e6\u06e5\u06d8\u06ec\u06e0\u06e2\u06ec\u06e2\u06e1\u06d6\u06e8\u06e6\u06d8\u06e5\u06db\u06d7\u06e0\u06e8\u06d8\u06e7\u06e0\u06d8\u06d8\u06d6\u06e4\u06d7\u06e4\u06e2\u06d6\u06d8"

    goto :goto_0

    :sswitch_5
    const-string v0, "\u06ec\u06e7\u06eb\u06eb\u06da\u06e7\u06d8\u06eb\u06db\u06db\u06e6\u06d7\u06d8\u06e6\u06df\u06df\u06db\u06e8\u06e2\u06da\u06e2\u06e4\u06e0\u06e7\u06e0\u06e6\u06e6\u06db\u06dc\u06d6\u06d8"

    goto :goto_1

    :sswitch_6
    const v4, 0xa5b8338

    const-string v0, "\u06d6\u06eb\u06e5\u06e1\u06dc\u06e0\u06da\u06d7\u06d7\u06da\u06df\u06d9\u06ec\u06e1\u06d6\u06d8\u06d7\u06d6\u06dc\u06d8\u06e4\u06e8\u06d6\u06d8\u06d9\u06e8\u06e4\u06e7\u06e1\u06da\u06e1\u06e2\u06e6\u06d8\u06e0\u06e5\u06dc\u06d8\u06e7\u06d7\u06e1\u06d8\u06e1\u06e0\u06e1\u06d8\u06db\u06e6\u06e5\u06e2\u06d8\u06da\u06d6\u06d6\u06e7\u06d8\u06e4\u06e2\u06d7\u06ec\u06e4\u06db"

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v5

    xor-int/2addr v5, v4

    sparse-switch v5, :sswitch_data_2

    goto :goto_2

    :sswitch_7
    if-eqz v1, :cond_0

    const-string v0, "\u06e1\u06d7\u06d6\u06d8\u06e6\u06e2\u06d8\u06dc\u06e0\u06e0\u06d7\u06e1\u06d6\u06d8\u06db\u06d7\u06d6\u06e4\u06e4\u06d7\u06e2\u06da\u06e7\u06e1\u06e2\u06dc\u06d8\u06d9\u06db\u06e1\u06d8\u06d6\u06e8\u06e1\u06d8\u06e6\u06e8\u06db\u06e0\u06e7\u06dc\u06d8\u06e7\u06e1\u06e8\u06d8\u06e5\u06e6\u06e6"

    goto :goto_2

    :cond_0
    const-string v0, "\u06e6\u06e1\u06d8\u06d9\u06e4\u06e5\u06d8\u06e5\u06e2\u06e6\u06e1\u06df\u06df\u06e7\u06e1\u06d9\u06df\u06e1\u06e8\u06d8\u06dc\u06dc\u06d9\u06da\u06eb\u06dc\u06e0\u06e1\u06da\u06df\u06e5\u06d6\u06d8\u06e0\u06db\u06dc\u06d8\u06e8\u06e6\u06e2\u06e0\u06d7\u06d7\u06eb\u06d6\u06d9"

    goto :goto_2

    :sswitch_8
    const-string v0, "\u06d7\u06d7\u06e4\u06e7\u06da\u06e8\u06d8\u06df\u06d7\u06db\u06e7\u06e1\u06d8\u06d8\u06d7\u06ec\u06e5\u06d8\u06db\u06db\u06e1\u06d8\u06eb\u06e2\u06e6\u06d8\u06dc\u06e1\u06db\u06e6\u06db\u06dc\u06d8\u06e0\u06e7\u06d7\u06e5\u06db\u06ec\u06d9\u06da\u06ec"

    goto :goto_2

    :sswitch_9
    const-string v0, "\u06e6\u06d9\u06e8\u06d8\u06e0\u06e2\u06eb\u06e8\u06d6\u06e8\u06e6\u06e6\u06db\u06e1\u06df\u06d6\u06e6\u06eb\u06e7\u06db\u06df\u06d6\u06e2\u06e8\u06db\u06d8\u06d8\u06df\u06e5\u06d8\u06e1"

    goto :goto_1

    :sswitch_a
    const-string v0, "\u06e0\u06d9\u06dc\u06d8\u06e8\u06e8\u06d8\u06d8\u06eb\u06e8\u06e7\u06d8\u06d7\u06d8\u06e8\u06d8\u06d7\u06e5\u06da\u06e0\u06d7\u06e6\u06d8\u06d6\u06e8\u06d7\u06d9\u06e0\u06dc\u06d8\u06d9\u06d8\u06e5\u06d6\u06e2\u06e2"

    goto :goto_1

    :sswitch_b
    invoke-virtual {v1}, Lz2/rh;->OooOOO()V

    const-string v0, "\u06d6\u06d7\u06df\u06d9\u06e1\u06dc\u06e4\u06d9\u06e1\u06d8\u06e7\u06e2\u06ec\u06dc\u06df\u06d7\u06ec\u06eb\u06dc\u06d8\u06e8\u06db\u06dc\u06ec\u06dc\u06e7\u06d8\u06d6\u06dc\u06e2\u06e2\u06e7\u06d7\u06e4\u06d6\u06e8\u06e1\u06e0\u06e1\u06eb\u06ec\u06e1\u06d8\u06e6\u06dc\u06d7\u06eb\u06eb\u06e6\u06d8\u06e5\u06eb\u06e4\u06d6\u06ec\u06d8\u06eb\u06e7\u06db"

    goto :goto_0

    :sswitch_c
    iput-object v2, p0, Lcom/cyjh/elfin/ui/activity/SplashActivity;->Ooooooo:Lz2/rh;

    const-string v0, "\u06e8\u06d9\u06d8\u06d8\u06e0\u06e8\u06d8\u06e4\u06d7\u06d9\u06ec\u06ec\u06e6\u06e2\u06eb\u06d8\u06d8\u06d9\u06e2\u06e7\u06df\u06da\u06eb\u06e6\u06d7\u06dc\u06eb\u06e8\u06e6\u06dc\u06d6\u06dc\u06d7\u06eb\u06db\u06db\u06ec\u06dc\u06d6\u06e0\u06d7\u06eb\u06df"

    goto :goto_0

    :sswitch_d
    const-string v0, "\u06e8\u06d9\u06d8\u06d8\u06e0\u06e8\u06d8\u06e4\u06d7\u06d9\u06ec\u06ec\u06e6\u06e2\u06eb\u06d8\u06d8\u06d9\u06e2\u06e7\u06df\u06da\u06eb\u06e6\u06d7\u06dc\u06eb\u06e8\u06e6\u06dc\u06d6\u06dc\u06d7\u06eb\u06db\u06db\u06ec\u06dc\u06d6\u06e0\u06d7\u06eb\u06df"

    goto :goto_0

    :sswitch_e
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x6ce74e03 -> :sswitch_c
        -0x1a7ea804 -> :sswitch_0
        -0xb1a35ea -> :sswitch_3
        -0x45923ea -> :sswitch_1
        0x33bbb132 -> :sswitch_2
        0x534d31a2 -> :sswitch_b
        0x685f7682 -> :sswitch_e
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0xb563f17 -> :sswitch_d
        0x27916265 -> :sswitch_4
        0x3ecf15b1 -> :sswitch_6
        0x6fb55e11 -> :sswitch_a
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        -0x709357ee -> :sswitch_5
        -0x58da19d0 -> :sswitch_7
        -0x31dd376c -> :sswitch_8
        0x719ece04 -> :sswitch_9
    .end sparse-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 7

    const/4 v2, 0x0

    const-string v0, "\u06e6\u06d8\u06ec\u06db\u06e6\u06da\u06e7\u06ec\u06e6\u06d8\u06e0\u06e6\u06d6\u06d8\u06d9\u06e6\u06e6\u06dc\u06e6\u06d8\u06d8\u06e0\u06eb\u06db\u06eb\u06df\u06e5\u06dc\u06df\u06dc\u06e2\u06e7\u06e8\u06e0\u06eb\u06db\u06e7\u06da\u06e5"

    move v1, v2

    move v3, v2

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/16 v5, 0x38e

    xor-int/2addr v4, v5

    xor-int/lit16 v4, v4, 0x281

    const/16 v5, 0x1b1

    const v6, 0x6df273c2

    xor-int/2addr v4, v5

    xor-int/2addr v4, v6

    sparse-switch v4, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e8\u06ec\u06e6\u06d8\u06df\u06db\u06d9\u06d8\u06d7\u06d6\u06d7\u06e2\u06d8\u06d8\u06d9\u06e1\u06d9\u06e8\u06dc\u06e7\u06df\u06e1\u06d7\u06e6\u06dc\u06d8\u06d8\u06e7\u06d6\u06dc\u06e8\u06df\u06e8\u06df\u06d7\u06e5\u06e4\u06da\u06da\u06e5\u06e1\u06df\u06dc\u06dc\u06e5\u06d8"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06ec\u06e1\u06e6\u06d9\u06e8\u06e8\u06d6\u06e4\u06e5\u06d8\u06e7\u06e8\u06e1\u06d9\u06e1\u06d8\u06e4\u06db\u06dc\u06e2\u06d9\u06e2\u06e4\u06e7\u06dc\u06e6\u06e5\u06d9\u06d6\u06e7"

    goto :goto_0

    :sswitch_2
    const-string v0, "\u06e6\u06d9\u06e5\u06d8\u06dc\u06d6\u06d8\u06eb\u06e2\u06e1\u06e5\u06d9\u06e5\u06d8\u06df\u06e6\u06e7\u06e4\u06e2\u06d9\u06df\u06e1\u06e8\u06d8\u06df\u06ec\u06da\u06db\u06df\u06e4\u06e0\u06da\u06d9\u06d8\u06dc\u06df\u06eb\u06e1\u06d8\u06e1\u06e1\u06dc\u06d8\u06db\u06d7\u06dc\u06e8\u06dc\u06e1\u06ec\u06df\u06df"

    goto :goto_0

    :sswitch_3
    const v4, 0x52526d91

    const-string v0, "\u06db\u06e1\u06e5\u06d8\u06e1\u06e2\u06e5\u06d9\u06dc\u06ec\u06e8\u06e0\u06db\u06e1\u06eb\u06ec\u06d9\u06d7\u06e8\u06d8\u06df\u06d8\u06d9\u06e4\u06e2\u06e2\u06ec\u06e4\u06d8\u06e7\u06ec\u06dc\u06d6\u06e7\u06e8\u06d8\u06e2\u06d9\u06d8\u06d8\u06e7\u06db\u06e0\u06e2\u06e1\u06e6\u06e5\u06d9\u06e1\u06e1\u06d6\u06d6\u06d8\u06dc\u06ec\u06df\u06e7\u06eb\u06e5\u06d8"

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v5

    xor-int/2addr v5, v4

    sparse-switch v5, :sswitch_data_1

    goto :goto_1

    :sswitch_4
    const-string v0, "\u06df\u06d8\u06e0\u06e0\u06d9\u06e8\u06eb\u06e0\u06da\u06e6\u06da\u06dc\u06d8\u06d6\u06d8\u06e4\u06d8\u06e8\u06e5\u06d9\u06e6\u06dc\u06e4\u06e8\u06e2\u06ec\u06e8\u06e5\u06df\u06e4\u06da"

    goto :goto_0

    :sswitch_5
    const-string v0, "\u06e8\u06dc\u06da\u06e7\u06eb\u06d6\u06e8\u06d6\u06e5\u06ec\u06d8\u06eb\u06dc\u06df\u06e4\u06e1\u06e0\u06e2\u06ec\u06e4\u06e1\u06d8\u06df\u06e2\u06ec\u06d6\u06e2\u06e1\u06d8\u06e8\u06da\u06eb\u06eb\u06e4\u06dc\u06ec\u06dc\u06dc"

    goto :goto_1

    :sswitch_6
    const v5, 0xcd38ad2

    const-string v0, "\u06d9\u06d9\u06d9\u06e5\u06e0\u06e8\u06d8\u06d6\u06eb\u06d6\u06d8\u06dc\u06e4\u06ec\u06d8\u06e6\u06eb\u06dc\u06d7\u06d8\u06d9\u06e4\u06e7\u06e6\u06eb\u06da\u06d8\u06ec\u06df\u06eb\u06e4\u06e4"

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v6

    xor-int/2addr v6, v5

    sparse-switch v6, :sswitch_data_2

    goto :goto_2

    :sswitch_7
    const-string v0, "\u06e1\u06d8\u06e6\u06d8\u06da\u06e4\u06e1\u06d8\u06d8\u06da\u06eb\u06d7\u06dc\u06e5\u06e0\u06df\u06e6\u06d8\u06e2\u06d6\u06e5\u06e2\u06df\u06eb\u06dc\u06da\u06e8\u06e4\u06d6\u06dc\u06e6\u06e8\u06d6\u06d8\u06e5\u06dc\u06ec\u06df\u06ec\u06db\u06d7\u06e5\u06da\u06dc\u06e0\u06eb\u06eb\u06d6\u06e1\u06d9\u06ec\u06d8\u06e6\u06e1\u06dc\u06d7\u06e6\u06d8"

    goto :goto_2

    :cond_0
    const-string v0, "\u06d8\u06e8\u06e5\u06d8\u06e6\u06e5\u06e6\u06e1\u06e5\u06e1\u06d8\u06e4\u06ec\u06e6\u06ec\u06ec\u06e4\u06d6\u06e5\u06d8\u06e7\u06df\u06e7\u06d6\u06d8\u06eb\u06e7\u06d7\u06e0\u06da\u06e8\u06dc\u06ec\u06d6\u06e8\u06d8\u06d7\u06e6\u06da"

    goto :goto_2

    :sswitch_8
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const-string v0, "\u06e2\u06db\u06ec\u06ec\u06db\u06e5\u06e2\u06db\u06df\u06e2\u06da\u06e8\u06d8\u06e6\u06e8\u06d8\u06e8\u06d8\u06e7\u06d8\u06da\u06eb\u06e6\u06d8\u06ec\u06ec\u06e8\u06e7\u06db\u06e0\u06e1"

    goto :goto_2

    :sswitch_9
    const-string v0, "\u06df\u06d7\u06e1\u06d6\u06e2\u06dc\u06eb\u06dc\u06d8\u06ec\u06e8\u06dc\u06d8\u06da\u06da\u06db\u06da\u06ec\u06df\u06e7\u06dc\u06d8\u06e5\u06dc\u06d8\u06d9\u06e2\u06e5\u06dc\u06da\u06d7\u06e8\u06e1\u06df\u06e8\u06e5\u06eb\u06d8\u06e7\u06d8\u06e1\u06e7\u06d8"

    goto :goto_1

    :sswitch_a
    const-string v0, "\u06e1\u06d7\u06df\u06e4\u06e2\u06e1\u06d8\u06d6\u06e2\u06db\u06df\u06e4\u06e8\u06d8\u06df\u06d8\u06e8\u06d8\u06e0\u06e6\u06dc\u06d8\u06ec\u06e8\u06dc\u06d8\u06e6\u06e0\u06d7\u06e6\u06d6\u06e0\u06e4\u06df\u06e7\u06e8\u06d8\u06e1\u06d8\u06db"

    goto :goto_1

    :sswitch_b
    const-string v0, "\u06df\u06e8\u06dc\u06ec\u06dc\u06e5\u06d8\u06e5\u06d6\u06d9\u06df\u06d8\u06e5\u06e6\u06da\u06dc\u06da\u06d7\u06dc\u06e4\u06d8\u06e5\u06df\u06db\u06df\u06e8\u06eb\u06da\u06dc\u06e8\u06d8\u06e2\u06e7\u06db\u06d8\u06d8"

    goto :goto_0

    :sswitch_c
    const/4 v3, 0x1

    const-string v0, "\u06d8\u06e5\u06e8\u06df\u06d9\u06d6\u06d9\u06d8\u06db\u06ec\u06e0\u06dc\u06d8\u06e4\u06ec\u06e5\u06d7\u06e8\u06e5\u06e6\u06eb\u06e8\u06e2\u06db\u06d8\u06e0\u06e2\u06dc\u06e2\u06d7\u06ec\u06d6\u06e6\u06db\u06e8\u06dc\u06e8\u06e4\u06dc\u06e4\u06e8\u06e8\u06ec"

    goto :goto_0

    :sswitch_d
    const-string v0, "\u06d8\u06e5\u06e7\u06d8\u06dc\u06dc\u06e6\u06d9\u06ec\u06e5\u06e8\u06e5\u06d8\u06d8\u06da\u06db\u06e5\u06d8\u06db\u06e2\u06e1\u06e7\u06d7\u06d8\u06e8\u06e0\u06e8\u06d8\u06eb\u06e7\u06d8\u06e6\u06e5\u06e6\u06e6\u06eb\u06d8\u06d8\u06e8\u06e1\u06e8\u06e1\u06d8\u06e8\u06e4\u06d9"

    move v1, v3

    goto :goto_0

    :sswitch_e
    const-string v0, "\u06da\u06e8\u06e6\u06d8\u06dc\u06e8\u06e1\u06da\u06db\u06e6\u06d8\u06e0\u06eb\u06d6\u06d6\u06dc\u06dc\u06d8\u06e5\u06e6\u06e2\u06e2\u06d7\u06e7\u06e2\u06dc\u06d8\u06ec\u06d6\u06dc\u06d8\u06e8\u06e6\u06e4\u06e4\u06e1\u06d9\u06d7\u06ec\u06dc\u06d8\u06e4\u06e8\u06d8\u06df\u06dc\u06e1\u06d8"

    goto :goto_0

    :sswitch_f
    const-string v0, "\u06dc\u06dc\u06d8\u06d8\u06eb\u06d8\u06d8\u06d8\u06eb\u06d8\u06e6\u06df\u06db\u06ec\u06e4\u06d7\u06e2\u06e4\u06e1\u06d6\u06d8\u06e0\u06d7\u06e7\u06eb\u06da\u06d8\u06db\u06d9\u06ec\u06db\u06da\u06dc\u06df\u06e5\u06da\u06dc\u06e8"

    move v1, v2

    goto :goto_0

    :sswitch_10
    const-string v0, "\u06dc\u06dc\u06d8\u06d8\u06eb\u06d8\u06d8\u06d8\u06eb\u06d8\u06e6\u06df\u06db\u06ec\u06e4\u06d7\u06e2\u06e4\u06e1\u06d6\u06d8\u06e0\u06d7\u06e7\u06eb\u06da\u06d8\u06db\u06d9\u06ec\u06db\u06da\u06dc\u06df\u06e5\u06da\u06dc\u06e8"

    goto :goto_0

    :sswitch_11
    return v1

    :sswitch_data_0
    .sparse-switch
        -0x7c9f808e -> :sswitch_11
        -0x645e7a00 -> :sswitch_0
        -0x5d0f4f7c -> :sswitch_10
        -0x583ec81e -> :sswitch_c
        -0x4868adc8 -> :sswitch_d
        -0x33c853b3 -> :sswitch_2
        -0x211a5411 -> :sswitch_f
        -0x17748596 -> :sswitch_3
        0x1acab4f1 -> :sswitch_1
        0x1df570c7 -> :sswitch_e
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x65c8d6cb -> :sswitch_b
        -0x60689899 -> :sswitch_a
        0x760838a -> :sswitch_4
        0x5b74800a -> :sswitch_6
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        -0x35fb90f0 -> :sswitch_8
        -0x2f0ca559 -> :sswitch_5
        -0x1d30a9b4 -> :sswitch_9
        0x2d90371c -> :sswitch_7
    .end sparse-switch
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 11
    .param p2    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v2, 0x0

    const-string v0, "\u06d6\u06e6\u06dc\u06d8\u06ec\u06e8\u06e4\u06e8\u06e4\u06e8\u06d8\u06d7\u06eb\u06da\u06e8\u06d9\u06e1\u06d8\u06d7\u06e0\u06e5\u06d8\u06d8\u06ec\u06e2\u06d9\u06d9\u06e5\u06e5\u06d8\u06d8\u06db\u06e8\u06eb\u06e1\u06eb\u06d8\u06eb\u06ec\u06e7"

    move v1, v2

    move v3, v2

    move v4, v2

    move v6, v2

    move v5, v2

    move v7, v2

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v8

    const/16 v9, 0x3b5

    xor-int/2addr v8, v9

    xor-int/lit16 v8, v8, 0x1bb

    const/16 v9, 0x1e6

    const v10, -0x2a05cab7

    xor-int/2addr v8, v9

    xor-int/2addr v8, v10

    sparse-switch v8, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e0\u06e8\u06ec\u06e1\u06e4\u06e6\u06e8\u06d6\u06e1\u06d8\u06d7\u06dc\u06e8\u06d6\u06e1\u06eb\u06d9\u06db\u06e2\u06e5\u06df\u06e8\u06e4\u06dc\u06e6\u06d8\u06df\u06e2\u06e1\u06d8\u06d9\u06d6\u06e1\u06e5\u06e7\u06e5\u06d8\u06e4\u06d7\u06dc\u06d8"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06df\u06e5\u06e1\u06d8\u06e6\u06e7\u06d8\u06d7\u06e5\u06dc\u06e6\u06d8\u06e2\u06d8\u06e1\u06d9\u06db\u06e5\u06d8\u06e5\u06eb\u06e0\u06eb\u06e5\u06e8\u06e5\u06e6\u06e8\u06d8\u06db\u06e8\u06e5\u06e6\u06e6\u06dc\u06e2\u06e5\u06d8\u06da\u06db\u06e7\u06da\u06eb\u06e2\u06dc\u06ec\u06d6\u06df\u06df"

    goto :goto_0

    :sswitch_2
    const-string v0, "\u06e0\u06e7\u06e6\u06d6\u06d8\u06d8\u06e5\u06d6\u06e0\u06e4\u06e7\u06e4\u06dc\u06eb\u06d6\u06d8\u06e6\u06d7\u06e8\u06e5\u06e2\u06d6\u06d8\u06e4\u06d8\u06e7\u06d8\u06d6\u06e7\u06db\u06e4\u06df\u06e6"

    goto :goto_0

    :sswitch_3
    const-string v0, "\u06e7\u06dc\u06e4\u06e2\u06e0\u06e2\u06eb\u06d7\u06e1\u06e8\u06d6\u06dc\u06eb\u06d8\u06e6\u06df\u06e1\u06e7\u06e1\u06d8\u06df\u06db\u06e5\u06df\u06e7\u06e7\u06e8\u06e6\u06e1\u06d8\u06df\u06da\u06df\u06d8\u06dc\u06dc\u06d8\u06df\u06e0\u06e0\u06e0\u06e6\u06d6"

    goto :goto_0

    :sswitch_4
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const-string v0, "\u06d8\u06dc\u06e8\u06df\u06dc\u06e0\u06db\u06e8\u06e5\u06e4\u06d9\u06e5\u06d8\u06e5\u06dc\u06e8\u06ec\u06e6\u06d8\u06d9\u06e4\u06da\u06e8\u06e0\u06df\u06dc\u06e6\u06e6\u06d8\u06db\u06eb\u06e0\u06ec\u06eb\u06e5\u06dc\u06e8\u06e1\u06d8\u06d7\u06d6\u06e8\u06d8\u06d6\u06e6\u06d8\u06d8"

    goto :goto_0

    :sswitch_5
    array-length v7, p3

    const-string v0, "\u06e2\u06db\u06da\u06d8\u06e2\u06ec\u06db\u06e0\u06d6\u06d8\u06d7\u06e1\u06d8\u06e1\u06da\u06e8\u06ec\u06dc\u06df\u06da\u06e7\u06ec\u06e7\u06dc\u06d8\u06e5\u06da\u06d6\u06ec\u06eb\u06d8\u06d8\u06e8\u06e1\u06d7\u06e4\u06da\u06e1\u06d8\u06e6\u06df\u06db\u06e6\u06e4\u06e0"

    goto :goto_0

    :sswitch_6
    const/4 v5, 0x1

    const-string v0, "\u06d7\u06eb\u06da\u06e6\u06ec\u06d6\u06d8\u06e0\u06db\u06d8\u06e8\u06d8\u06e0\u06e1\u06dc\u06d9\u06d6\u06e8\u06e0\u06d9\u06e2\u06d7\u06da\u06e2\u06db\u06d8\u06e2\u06e5\u06d8\u06d6\u06dc\u06e7\u06e7\u06d9\u06eb\u06e6\u06e6\u06d7\u06e6\u06e8\u06db\u06db\u06df\u06d6"

    goto :goto_0

    :sswitch_7
    const-string v0, "\u06db\u06e4\u06e0\u06e6\u06eb\u06d7\u06e4\u06e7\u06e7\u06dc\u06e0\u06e6\u06e0\u06ec\u06d6\u06d8\u06d8\u06d6\u06db\u06e5\u06e5\u06e5\u06dc\u06dc\u06e7\u06d8\u06e0\u06da\u06db\u06db\u06e8\u06e1\u06d9\u06e7\u06e2\u06d9\u06d8\u06e7\u06e8\u06e0\u06e7\u06e2\u06ec\u06d6\u06d8\u06db\u06e0\u06e1\u06e5\u06dc\u06ec"

    goto :goto_0

    :sswitch_8
    const-string v0, "\u06e4\u06e6\u06d6\u06d8\u06db\u06e6\u06e2\u06e6\u06d7\u06e6\u06d8\u06d9\u06d6\u06e7\u06dc\u06e1\u06e7\u06e5\u06e5\u06db\u06d7\u06e5\u06d6\u06d8\u06e7\u06d7\u06d8\u06d7\u06e2\u06e4\u06d7\u06e5\u06d8\u06d8\u06d8\u06ec\u06e6"

    move v6, v2

    goto :goto_0

    :sswitch_9
    const-string v0, "\u06e4\u06e0\u06dc\u06e5\u06e1\u06db\u06ec\u06dc\u06e2\u06e1\u06e0\u06d6\u06d8\u06e0\u06e7\u06d8\u06d8\u06e1\u06d6\u06db\u06e8\u06eb\u06dc\u06ec\u06da\u06db\u06e6\u06e1\u06d8\u06e4\u06e7\u06e8"

    move v4, v5

    goto :goto_0

    :sswitch_a
    const v8, -0x59bf72e1

    const-string v0, "\u06e0\u06d6\u06eb\u06e2\u06e2\u06dc\u06d8\u06d6\u06d7\u06e7\u06e2\u06eb\u06d6\u06db\u06d8\u06e2\u06ec\u06e5\u06eb\u06d8\u06e4\u06e2\u06e1\u06df\u06d9\u06e8\u06e4\u06df\u06e8\u06da"

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v9

    xor-int/2addr v9, v8

    sparse-switch v9, :sswitch_data_1

    goto :goto_1

    :sswitch_b
    const-string v0, "\u06d7\u06e0\u06dc\u06ec\u06d8\u06e6\u06e4\u06ec\u06e2\u06da\u06e1\u06d8\u06e8\u06e0\u06e8\u06eb\u06da\u06e0\u06e4\u06d6\u06e8\u06e8\u06d7\u06e6\u06e4\u06e0\u06d9\u06dc\u06df\u06e4\u06e7\u06d9\u06dc\u06d8\u06eb\u06e7\u06db\u06e8\u06d7\u06d6\u06e8\u06da\u06e8\u06d8"

    goto :goto_0

    :sswitch_c
    const-string v0, "\u06d6\u06df\u06d7\u06e0\u06d9\u06dc\u06dc\u06dc\u06e7\u06d8\u06e4\u06df\u06e0\u06e5\u06e0\u06e4\u06db\u06e1\u06e6\u06e5\u06d7\u06dc\u06d8\u06e1\u06e1\u06e6\u06d8\u06e6\u06da\u06df\u06dc\u06da\u06e7\u06eb\u06e5\u06e4\u06eb\u06e5\u06dc\u06df\u06e1\u06da\u06e6\u06e0\u06e6\u06d8\u06e7\u06d6\u06eb\u06e2\u06d9\u06d8\u06d8\u06df\u06e7\u06e1\u06d8\u06d7\u06e2\u06e5\u06d8"

    goto :goto_1

    :sswitch_d
    const v9, -0x15a00870

    const-string v0, "\u06e2\u06d6\u06d6\u06e8\u06e6\u06ec\u06dc\u06e6\u06d6\u06d8\u06d8\u06eb\u06db\u06e5\u06e7\u06e1\u06da\u06e0\u06d7\u06eb\u06e1\u06d8\u06d8\u06e4\u06df\u06dc\u06d8\u06e8\u06eb\u06d6\u06e8\u06db\u06eb\u06e7\u06ec\u06d7\u06d6\u06e2\u06dc\u06d8\u06dc\u06d9\u06dc\u06e5\u06e7\u06e5\u06d7\u06da\u06df\u06dc\u06e0\u06e6\u06e6\u06e5\u06db\u06e1\u06d8\u06d6"

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v10

    xor-int/2addr v10, v9

    sparse-switch v10, :sswitch_data_2

    goto :goto_2

    :sswitch_e
    const-string v0, "\u06ec\u06e8\u06e7\u06e7\u06d6\u06e4\u06e4\u06e8\u06e5\u06d8\u06e6\u06d7\u06eb\u06d6\u06eb\u06e5\u06eb\u06e0\u06e1\u06d8\u06e4\u06d9\u06e5\u06dc\u06e7\u06d8\u06d8\u06d7\u06e6\u06e4\u06db\u06da\u06e6"

    goto :goto_2

    :cond_0
    const-string v0, "\u06e7\u06da\u06e6\u06da\u06eb\u06e0\u06e5\u06df\u06dc\u06e5\u06e8\u06d8\u06eb\u06e4\u06d8\u06e2\u06d6\u06e2\u06e8\u06dc\u06e6\u06d8\u06dc\u06e1\u06e7\u06da\u06e7\u06df\u06db\u06d8\u06da\u06e5\u06e6\u06e6\u06d8\u06eb\u06e6\u06d8\u06e7\u06e8\u06e0\u06df\u06e8\u06e6\u06d8\u06d8\u06e5\u06e7\u06d8\u06e2\u06e8\u06e4\u06e0\u06d7\u06d6\u06e1\u06d9\u06df"

    goto :goto_2

    :sswitch_f
    if-ge v6, v7, :cond_0

    const-string v0, "\u06df\u06da\u06d9\u06d8\u06e7\u06e8\u06db\u06d8\u06e0\u06db\u06e7\u06dc\u06e8\u06e2\u06da\u06e1\u06da\u06da\u06ec\u06e0\u06e8\u06d8\u06e8\u06da\u06e4\u06e1\u06d8\u06dc\u06d8\u06e7\u06da\u06e8\u06d8"

    goto :goto_2

    :sswitch_10
    const-string v0, "\u06ec\u06e1\u06e8\u06d6\u06d6\u06df\u06d7\u06ec\u06e4\u06d8\u06e5\u06e6\u06d8\u06e0\u06e7\u06dc\u06d6\u06e6\u06e6\u06d8\u06d6\u06e8\u06d8\u06d8\u06ec\u06ec\u06e8\u06e0\u06df\u06dc\u06e5\u06e0\u06e6\u06d8\u06e2\u06e6\u06dc\u06d8\u06e5\u06d8\u06e7\u06df\u06d9\u06dc\u06e0\u06eb\u06e6\u06d8"

    goto :goto_1

    :sswitch_11
    const-string v0, "\u06e0\u06e4\u06e1\u06e2\u06d9\u06dc\u06e8\u06d9\u06df\u06d6\u06e5\u06da\u06e5\u06d8\u06e1\u06d8\u06e4\u06dc\u06e0\u06ec\u06d7\u06d6\u06d8\u06dc\u06e5\u06d6\u06dc\u06da\u06d8\u06da\u06dc\u06d8"

    goto :goto_1

    :sswitch_12
    const-string v0, "\u06e5\u06da\u06da\u06da\u06d9\u06dc\u06d8\u06dc\u06e5\u06d6\u06d8\u06dc\u06e5\u06e7\u06d8\u06d7\u06e7\u06d6\u06d8\u06e0\u06dc\u06e6\u06d8\u06ec\u06e7\u06d8\u06db\u06e6\u06dc\u06d7\u06db\u06dc\u06d6\u06e6\u06d8\u06ec\u06e2\u06db\u06d9\u06e8\u06d8\u06e2\u06db\u06df\u06d7\u06d7\u06df"

    goto :goto_0

    :sswitch_13
    const-string v0, "\u06e6\u06e5\u06e8\u06e8\u06eb\u06e1\u06d8\u06e0\u06e8\u06e6\u06d9\u06db\u06d8\u06d8\u06e0\u06eb\u06d6\u06d8\u06e4\u06dc\u06d8\u06d8\u06da\u06e5\u06e2\u06e7\u06da\u06e6\u06e2\u06e1\u06e0\u06df\u06e2\u06d9"

    move v3, v4

    goto :goto_0

    :sswitch_14
    const v8, -0x3da75acf

    const-string v0, "\u06dc\u06e0\u06e5\u06d8\u06e2\u06e6\u06e8\u06d8\u06db\u06d6\u06e5\u06d8\u06e1\u06d7\u06e6\u06df\u06d8\u06dc\u06d8\u06db\u06d6\u06df\u06e2\u06ec\u06e2\u06ec\u06eb\u06e6\u06d7\u06e4\u06e1\u06d8\u06d9\u06d7\u06ec\u06ec\u06eb\u06db\u06ec"

    :goto_3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v9

    xor-int/2addr v9, v8

    sparse-switch v9, :sswitch_data_3

    goto :goto_3

    :sswitch_15
    const v9, -0x30b5031d

    const-string v0, "\u06ec\u06d8\u06e1\u06d8\u06da\u06e6\u06d8\u06d8\u06e7\u06eb\u06e1\u06d8\u06d7\u06d9\u06e8\u06df\u06eb\u06e2\u06d6\u06dc\u06eb\u06df\u06e1\u06e5\u06d6\u06e7\u06e6\u06d8\u06e4\u06dc\u06e7\u06d8\u06e0\u06e1\u06d8\u06d8\u06d7\u06d9\u06d8\u06e5\u06d9\u06db\u06ec\u06e5\u06d8\u06e8\u06db\u06d6\u06d8"

    :goto_4
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v10

    xor-int/2addr v10, v9

    sparse-switch v10, :sswitch_data_4

    goto :goto_4

    :sswitch_16
    const-string v0, "\u06eb\u06e2\u06e5\u06d8\u06d7\u06e0\u06d8\u06da\u06e6\u06d7\u06e2\u06dc\u06e8\u06d8\u06d7\u06e8\u06e5\u06e1\u06df\u06e6\u06e2\u06da\u06d6\u06d8\u06dc\u06d8\u06e2\u06ec\u06e0\u06e6\u06e5\u06d6\u06df\u06db\u06eb\u06eb\u06d6\u06df\u06e7\u06d7\u06db\u06e6\u06d8\u06e5\u06db\u06da"

    goto :goto_3

    :sswitch_17
    const-string v0, "\u06e7\u06e6\u06d6\u06e7\u06eb\u06e1\u06d8\u06e6\u06eb\u06d8\u06da\u06d9\u06eb\u06eb\u06e5\u06d8\u06db\u06d9\u06db\u06dc\u06e5\u06e1\u06eb\u06e1\u06d6\u06e8\u06e7\u06e1\u06d8\u06e7\u06e2\u06e5\u06d8\u06e5\u06df\u06d8\u06d8\u06e5\u06e5\u06e8\u06d8\u06e4\u06d7\u06e1\u06d8\u06eb\u06e8\u06e8\u06d8\u06e2\u06dc\u06e8\u06ec\u06d9\u06d6\u06d8"

    goto :goto_3

    :cond_1
    const-string v0, "\u06e8\u06e4\u06e6\u06d8\u06e2\u06d9\u06e5\u06eb\u06df\u06e5\u06d8\u06e1\u06d9\u06dc\u06e8\u06e8\u06d9\u06e2\u06d9\u06d7\u06db\u06d7\u06e7\u06e8\u06e4\u06d6\u06d6\u06da\u06e1\u06d8\u06df\u06df\u06dc\u06e4\u06e5\u06d7\u06e2\u06d9\u06e1\u06d7\u06e2\u06d6\u06d8\u06e1\u06da\u06e7\u06e1\u06d9\u06eb\u06e6\u06ec\u06d8\u06d9\u06d8\u06e1\u06d8\u06d6\u06e2\u06d6\u06d8"

    goto :goto_4

    :sswitch_18
    aget v0, p3, v6

    const/4 v10, -0x1

    if-ne v0, v10, :cond_1

    const-string v0, "\u06dc\u06d9\u06eb\u06d6\u06e0\u06dc\u06e4\u06ec\u06d8\u06d8\u06e2\u06ec\u06da\u06e1\u06e5\u06e1\u06d7\u06dc\u06dc\u06d8\u06d6\u06e1\u06e5\u06d8\u06da\u06e1\u06e4\u06e7\u06da\u06d9\u06dc\u06e5\u06d8\u06ec\u06e0\u06d8\u06d8\u06d6\u06d9\u06eb\u06da\u06e6\u06e0\u06e8\u06eb\u06e6\u06d8\u06e8\u06eb\u06e8\u06eb\u06e2\u06d6\u06d8"

    goto :goto_4

    :sswitch_19
    const-string v0, "\u06d9\u06da\u06d8\u06d8\u06da\u06e6\u06e6\u06df\u06e4\u06e7\u06e0\u06e0\u06e8\u06e1\u06d7\u06e5\u06e8\u06d8\u06db\u06e2\u06d6\u06d6\u06d8\u06da\u06dc\u06e1\u06db\u06d6\u06d8\u06da\u06eb\u06d9\u06d8\u06df\u06d7\u06da\u06e4\u06e6\u06d8"

    goto :goto_4

    :sswitch_1a
    const-string v0, "\u06e0\u06e0\u06e0\u06e0\u06d9\u06dc\u06d8\u06e7\u06d7\u06e4\u06d8\u06d8\u06e2\u06da\u06d9\u06ec\u06d6\u06e4\u06da\u06e1\u06d6\u06ec\u06dc\u06d9\u06e2\u06e1\u06e5\u06d8\u06d8\u06e8\u06d6\u06ec\u06e0\u06e0\u06e0\u06dc\u06d6\u06e5\u06e0\u06eb\u06eb\u06d8\u06e8\u06d8\u06e2\u06d6\u06e6\u06e5\u06eb\u06d6\u06d8\u06d8\u06da\u06e8\u06d8\u06e4\u06d8\u06e6"

    goto :goto_3

    :sswitch_1b
    const-string v0, "\u06e7\u06e8\u06e7\u06e0\u06e8\u06e4\u06e1\u06eb\u06da\u06e6\u06d8\u06e4\u06ec\u06ec\u06d6\u06d8\u06e7\u06e7\u06d9\u06ec\u06ec\u06e5\u06d8\u06df\u06e0\u06e2\u06d9\u06e8\u06df\u06e2\u06eb\u06da\u06ec\u06dc\u06e5\u06e5\u06e1\u06e8\u06e4\u06eb\u06db\u06d9\u06e8\u06e6"

    goto/16 :goto_0

    :sswitch_1c
    const-string v0, "\u06e4\u06db\u06e7\u06d6\u06e5\u06dc\u06d8\u06d9\u06d6\u06e6\u06d8\u06d7\u06da\u06dc\u06d8\u06d8\u06dc\u06e4\u06e8\u06e0\u06df\u06df\u06e5\u06dc\u06d8\u06d6\u06d6\u06da\u06e2\u06dc\u06df\u06db\u06db\u06ec\u06d7\u06df\u06d7\u06e0\u06df\u06e8\u06d9\u06eb\u06d9\u06e5\u06e7\u06d8\u06e2\u06e6\u06e1\u06e2\u06e1\u06d8\u06d8"

    goto/16 :goto_0

    :sswitch_1d
    const-string v0, "\u06e5\u06eb\u06ec\u06eb\u06df\u06e6\u06e7\u06e1\u06d6\u06d8\u06e8\u06eb\u06eb\u06e6\u06dc\u06e1\u06e8\u06d8\u06dc\u06e2\u06e7\u06e8\u06df\u06e8\u06d7\u06e5\u06e5\u06e0\u06d6\u06ec\u06d7\u06e0\u06e0\u06df\u06da\u06d9"

    move v3, v2

    goto/16 :goto_0

    :sswitch_1e
    add-int/lit8 v1, v6, 0x1

    const-string v0, "\u06d8\u06e0\u06e4\u06df\u06e2\u06d9\u06db\u06d6\u06dc\u06d8\u06e2\u06d6\u06e1\u06d8\u06ec\u06d6\u06da\u06e2\u06e1\u06e7\u06db\u06df\u06eb\u06dc\u06e8\u06e1\u06d7\u06e2\u06e6\u06db\u06e1\u06e8\u06d8\u06e5\u06df\u06e1\u06d8\u06e4\u06d8\u06db"

    goto/16 :goto_0

    :sswitch_1f
    const-string v0, "\u06d8\u06e7\u06e8\u06d8\u06d6\u06db\u06e7\u06e2\u06e4\u06dc\u06d8\u06e6\u06e0\u06d8\u06d8\u06da\u06da\u06dc\u06d8\u06eb\u06e8\u06d6\u06e7\u06e4\u06d7\u06ec\u06eb\u06dc\u06db\u06e0\u06eb\u06e6\u06e5\u06e4"

    move v4, v3

    goto/16 :goto_0

    :sswitch_20
    const-string v0, "\u06d8\u06dc\u06e5\u06d6\u06d7\u06da\u06d8\u06d8\u06d8\u06eb\u06e5\u06e1\u06e1\u06d7\u06d6\u06ec\u06d6\u06d8\u06d8\u06dc\u06d6\u06e1\u06eb\u06e4\u06d7\u06e1\u06e4\u06e1\u06df\u06d9\u06db\u06e6\u06eb\u06e0\u06dc\u06d8\u06e6\u06e6\u06e2\u06e2\u06d7\u06e4"

    move v6, v1

    goto/16 :goto_0

    :sswitch_21
    const v8, -0x49102df1

    const-string v0, "\u06d6\u06d8\u06e1\u06e6\u06e4\u06d8\u06e7\u06e8\u06db\u06e2\u06e1\u06e2\u06eb\u06e7\u06d9\u06da\u06df\u06e8\u06dc\u06dc\u06e4\u06e7\u06e1\u06e8\u06d8\u06dc\u06e1\u06eb\u06df\u06da\u06d9\u06d9\u06eb\u06da\u06ec\u06e8\u06e1"

    :goto_5
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v9

    xor-int/2addr v9, v8

    sparse-switch v9, :sswitch_data_5

    goto :goto_5

    :sswitch_22
    const-string v0, "\u06d7\u06db\u06e4\u06d7\u06e8\u06eb\u06e0\u06e5\u06e5\u06e6\u06e2\u06e5\u06db\u06df\u06e2\u06e5\u06d8\u06df\u06dc\u06df\u06d7\u06e2\u06df\u06e4\u06e7\u06db\u06da\u06d9\u06e8\u06d8"

    goto/16 :goto_0

    :sswitch_23
    const-string v0, "\u06e4\u06d8\u06e8\u06e1\u06e0\u06e5\u06d8\u06e5\u06da\u06e5\u06e6\u06eb\u06df\u06df\u06e2\u06d8\u06d8\u06e7\u06d6\u06da\u06db\u06eb\u06da\u06df\u06e4\u06dc\u06e5\u06dc\u06eb\u06e5\u06ec\u06e5\u06d8\u06db\u06ec\u06e1\u06e0\u06d9\u06dc\u06d9\u06d8\u06e8\u06d6\u06eb\u06da"

    goto :goto_5

    :sswitch_24
    const v9, -0x3567309a    # -5007283.0f

    const-string v0, "\u06e7\u06ec\u06dc\u06e0\u06e8\u06e7\u06e8\u06e1\u06d6\u06d8\u06e4\u06e8\u06e8\u06d8\u06d8\u06e1\u06e2\u06e1\u06e8\u06d9\u06e4\u06d8\u06e4\u06e8\u06ec\u06db\u06d7\u06df\u06e8\u06e5\u06ec\u06e4\u06d9\u06e8\u06d9\u06e6\u06e6\u06df\u06e7\u06e5\u06e7\u06d8\u06d6\u06eb\u06ec\u06d8\u06dc\u06dc\u06d8\u06e7\u06e6"

    :goto_6
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v10

    xor-int/2addr v10, v9

    sparse-switch v10, :sswitch_data_6

    goto :goto_6

    :sswitch_25
    if-eqz v4, :cond_2

    const-string v0, "\u06da\u06dc\u06d9\u06e4\u06ec\u06e6\u06d8\u06e6\u06e0\u06dc\u06e0\u06d8\u06d7\u06e1\u06d8\u06d9\u06e0\u06e2\u06e0\u06ec\u06eb\u06d6\u06d8\u06eb\u06ec\u06d7\u06e8\u06e0\u06e8\u06eb\u06db\u06ec\u06ec\u06e0\u06e6\u06d8\u06da\u06d8\u06d8"

    goto :goto_6

    :cond_2
    const-string v0, "\u06da\u06d7\u06e7\u06d8\u06dc\u06e7\u06e2\u06e7\u06dc\u06eb\u06e2\u06e6\u06d6\u06d8\u06e1\u06e2\u06dc\u06dc\u06d8\u06db\u06dc\u06e6\u06d8\u06e8\u06d8\u06ec\u06eb\u06e5\u06d8\u06d8\u06dc\u06e1\u06d7"

    goto :goto_6

    :sswitch_26
    const-string v0, "\u06d9\u06d7\u06d8\u06da\u06e7\u06e8\u06e5\u06e6\u06dc\u06d8\u06ec\u06e7\u06df\u06ec\u06db\u06d8\u06d8\u06d7\u06da\u06ec\u06d9\u06dc\u06e8\u06da\u06e0\u06e1\u06eb\u06d8\u06eb\u06e4\u06db\u06e5\u06d9\u06d7\u06d6\u06e8\u06df\u06e8"

    goto :goto_6

    :sswitch_27
    const-string v0, "\u06d6\u06d6\u06e1\u06d8\u06db\u06e0\u06d8\u06e4\u06d8\u06e8\u06db\u06d7\u06e0\u06d9\u06dc\u06da\u06dc\u06e2\u06e5\u06d8\u06e2\u06e4\u06d6\u06eb\u06da\u06e1\u06d8\u06db\u06e7\u06d8\u06e2\u06e5\u06db\u06e2\u06e2\u06e8\u06db\u06ec\u06e7"

    goto :goto_5

    :sswitch_28
    const-string v0, "\u06e8\u06e0\u06e2\u06e2\u06e1\u06d8\u06e6\u06e7\u06e8\u06e7\u06e4\u06dc\u06d8\u06e5\u06db\u06d8\u06d8\u06d9\u06e2\u06db\u06d9\u06d9\u06e7\u06d7\u06db\u06e0\u06e4\u06db\u06e2\u06e4\u06e4\u06db\u06eb\u06e6\u06e4\u06e5\u06e1\u06dc\u06df\u06d9\u06e4\u06e6\u06d6\u06d8\u06e1\u06e5\u06e6\u06d8\u06ec\u06df\u06db\u06db\u06e2\u06e0\u06e4\u06dc\u06dc"

    goto :goto_5

    :sswitch_29
    const-string v0, "\u06e4\u06df\u06e1\u06e8\u06d8\u06d8\u06d8\u06d8\u06e2\u06d8\u06e0\u06e0\u06dc\u06d8\u06db\u06db\u06df\u06e5\u06d6\u06e7\u06d8\u06e1\u06e2\u06eb\u06e1\u06e2\u06eb\u06d6\u06e7\u06e6\u06d8\u06e6\u06e7\u06dc\u06d8\u06e2\u06eb\u06e8\u06d8\u06e0\u06e5\u06e7\u06d6\u06da\u06d7\u06df\u06e8\u06e0"

    goto/16 :goto_0

    :sswitch_2a
    invoke-direct {p0}, Lcom/cyjh/elfin/ui/activity/SplashActivity;->OooOoOO()V

    const-string v0, "\u06df\u06e8\u06dc\u06e5\u06d7\u06e8\u06d8\u06e0\u06e5\u06e5\u06d6\u06df\u06d8\u06e4\u06e4\u06e5\u06da\u06d8\u06e5\u06d8\u06e8\u06e2\u06da\u06eb\u06e1\u06e2\u06e5\u06df\u06e2\u06d7\u06e2\u06d7\u06e8\u06d7\u06e4\u06da\u06e0\u06e2\u06e4\u06e7\u06e2\u06dc\u06e7\u06e7\u06d7\u06e6\u06e1\u06dc\u06eb\u06e2"

    goto/16 :goto_0

    :sswitch_2b
    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->OooO00o()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v0

    const-string v8, "\u83b7\u53d6\u6743\u9650\u5931\u8d25"

    invoke-static {v0, v8}, Lz2/c5;->OooO0o0(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "\u06e6\u06d7\u06d9\u06e1\u06d9\u06e8\u06d8\u06e6\u06e5\u06dc\u06da\u06ec\u06e1\u06d8\u06d7\u06da\u06d6\u06d7\u06eb\u06d8\u06d8\u06db\u06e6\u06e6\u06d8\u06e0\u06d6\u06e5\u06d7\u06e4\u06db\u06e5\u06e1\u06dc\u06d8\u06e5\u06db\u06d6\u06d8\u06eb\u06d9\u06eb\u06d7\u06e5\u06e8\u06e6\u06d8\u06d6"

    goto/16 :goto_0

    :sswitch_2c
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const-string v0, "\u06ec\u06eb\u06e2\u06d8\u06e4\u06e5\u06dc\u06df\u06d6\u06d8\u06db\u06e6\u06eb\u06d9\u06d8\u06e5\u06d6\u06db\u06e7\u06db\u06d7\u06e0\u06ec\u06e5\u06e7\u06db\u06d6\u06ec\u06e1\u06e6\u06e0\u06e7\u06db\u06e7\u06d7\u06e4\u06e0\u06e0\u06ec\u06d9\u06db\u06da\u06da"

    goto/16 :goto_0

    :sswitch_2d
    const-string v0, "\u06e4\u06e0\u06dc\u06e5\u06e1\u06db\u06ec\u06dc\u06e2\u06e1\u06e0\u06d6\u06d8\u06e0\u06e7\u06d8\u06d8\u06e1\u06d6\u06db\u06e8\u06eb\u06dc\u06ec\u06da\u06db\u06e6\u06e1\u06d8\u06e4\u06e7\u06e8"

    goto/16 :goto_0

    :sswitch_2e
    const-string v0, "\u06e5\u06eb\u06ec\u06eb\u06df\u06e6\u06e7\u06e1\u06d6\u06d8\u06e8\u06eb\u06eb\u06e6\u06dc\u06e1\u06e8\u06d8\u06dc\u06e2\u06e7\u06e8\u06df\u06e8\u06d7\u06e5\u06e5\u06e0\u06d6\u06ec\u06d7\u06e0\u06e0\u06df\u06da\u06d9"

    goto/16 :goto_0

    :sswitch_2f
    const-string v0, "\u06ec\u06eb\u06e2\u06d8\u06e4\u06e5\u06dc\u06df\u06d6\u06d8\u06db\u06e6\u06eb\u06d9\u06d8\u06e5\u06d6\u06db\u06e7\u06db\u06d7\u06e0\u06ec\u06e5\u06e7\u06db\u06d6\u06ec\u06e1\u06e6\u06e0\u06e7\u06db\u06e7\u06d7\u06e4\u06e0\u06e0\u06ec\u06d9\u06db\u06da\u06da"

    goto/16 :goto_0

    :sswitch_30
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7ac310ba -> :sswitch_1f
        -0x79aa4d1e -> :sswitch_30
        -0x72cc2e90 -> :sswitch_1e
        -0x703236da -> :sswitch_2b
        -0x6c107134 -> :sswitch_8
        -0x521a12fd -> :sswitch_3
        -0x31bdc7e9 -> :sswitch_9
        -0x298100f9 -> :sswitch_13
        -0x27fc661b -> :sswitch_1d
        -0xce8773a -> :sswitch_a
        -0xba8af7b -> :sswitch_20
        -0x89fe3a -> :sswitch_2d
        0x26dfb54 -> :sswitch_1
        0x629123d -> :sswitch_21
        0xc7ae501 -> :sswitch_2a
        0x1f02a32b -> :sswitch_1c
        0x1f545394 -> :sswitch_6
        0x1f821ea8 -> :sswitch_2
        0x299d35fb -> :sswitch_5
        0x2b6cf50b -> :sswitch_0
        0x37e4984b -> :sswitch_2c
        0x44035318 -> :sswitch_4
        0x460500a4 -> :sswitch_7
        0x50268526 -> :sswitch_2f
        0x794ebc32 -> :sswitch_14
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x2bb0c964 -> :sswitch_12
        0x49188807 -> :sswitch_b
        0x4f552c0b -> :sswitch_11
        0x7ab1f814 -> :sswitch_d
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        -0x265c9cc6 -> :sswitch_10
        -0x166ff721 -> :sswitch_c
        0x26e23083 -> :sswitch_f
        0x7e9c33eb -> :sswitch_e
    .end sparse-switch

    :sswitch_data_3
    .sparse-switch
        -0x4a00a69e -> :sswitch_15
        -0x3343eeee -> :sswitch_1b
        -0x2315129 -> :sswitch_2e
        0x4b686256 -> :sswitch_1a
    .end sparse-switch

    :sswitch_data_4
    .sparse-switch
        -0xac740c3 -> :sswitch_18
        -0xa5dc0e8 -> :sswitch_19
        0x6ebde050 -> :sswitch_16
        0x73742401 -> :sswitch_17
    .end sparse-switch

    :sswitch_data_5
    .sparse-switch
        -0x58cc0bc9 -> :sswitch_29
        0x25542f3f -> :sswitch_28
        0x58128877 -> :sswitch_22
        0x67ab13d6 -> :sswitch_24
    .end sparse-switch

    :sswitch_data_6
    .sparse-switch
        -0x603096eb -> :sswitch_23
        -0x5a91d2e8 -> :sswitch_25
        -0x4eb6125 -> :sswitch_26
        0x1d049655 -> :sswitch_27
    .end sparse-switch
.end method

.method public onResume()V
    .locals 5

    const/4 v1, 0x0

    const-string v0, "\u06d6\u06d7\u06d6\u06d8\u06e1\u06e4\u06d8\u06d8\u06da\u06da\u06e7\u06dc\u06e1\u06dc\u06e7\u06db\u06d6\u06d8\u06eb\u06d9\u06e0\u06d6\u06d9\u06d6\u06d8\u06d7\u06df\u06e6\u06d7\u06e6\u06e6\u06da\u06e1\u06e5\u06ec\u06eb\u06e4\u06ec\u06e5\u06d9\u06e4\u06db\u06e5\u06e1\u06eb\u06e0"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v3, 0x318

    xor-int/2addr v2, v3

    xor-int/lit16 v2, v2, 0x3f5

    const/16 v3, 0xad

    const v4, -0x50c6be0f

    xor-int/2addr v2, v3

    xor-int/2addr v2, v4

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e1\u06e0\u06eb\u06e7\u06e6\u06d9\u06d8\u06d8\u06e0\u06d9\u06da\u06e2\u06ec\u06e1\u06e1\u06e2\u06e4\u06d8\u06d9\u06eb\u06df\u06dc\u06e1\u06e4\u06df\u06e1\u06ec\u06db\u06e8\u06d8\u06ec\u06da\u06e2\u06e8\u06eb\u06ec"

    goto :goto_0

    :sswitch_1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    const-string v0, "\u06e7\u06d8\u06dc\u06e2\u06ec\u06e1\u06d8\u06ec\u06db\u06e2\u06d9\u06d8\u06dc\u06d8\u06ec\u06e6\u06e6\u06e4\u06d7\u06db\u06e7\u06d9\u06eb\u06eb\u06eb\u06e1\u06e0\u06dc\u06d8\u06e8\u06d8\u06e7\u06d9\u06ec\u06dc\u06d8\u06e1\u06e0\u06e0"

    goto :goto_0

    :sswitch_2
    iget-object v1, p0, Lcom/cyjh/elfin/ui/activity/SplashActivity;->Ooooooo:Lz2/rh;

    const-string v0, "\u06eb\u06df\u06d6\u06da\u06e2\u06d6\u06eb\u06da\u06e2\u06da\u06e1\u06d6\u06db\u06eb\u06db\u06d6\u06dc\u06d6\u06d9\u06e4\u06d8\u06d8\u06dc\u06e1\u06eb\u06df\u06e2\u06dc\u06d9\u06df\u06e1\u06da\u06df\u06dc\u06da\u06e4\u06d6\u06d8\u06eb\u06d8\u06e1\u06dc\u06e1\u06d8\u06d9\u06e4\u06db\u06e1\u06d7\u06dc"

    goto :goto_0

    :sswitch_3
    const v2, -0x5e4d8002

    const-string v0, "\u06e8\u06e1\u06ec\u06e4\u06d7\u06e5\u06e5\u06e8\u06ec\u06e1\u06ec\u06e2\u06e4\u06eb\u06e5\u06d8\u06dc\u06e5\u06d8\u06d8\u06d6\u06e5\u06da\u06e5\u06eb\u06e7\u06e0\u06e2\u06d6\u06e0\u06eb\u06e1\u06d8"

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v2

    sparse-switch v3, :sswitch_data_1

    goto :goto_1

    :sswitch_4
    const-string v0, "\u06ec\u06df\u06e2\u06e5\u06dc\u06e6\u06d7\u06db\u06e7\u06d8\u06d8\u06df\u06eb\u06d9\u06e8\u06e0\u06e8\u06d8\u06d8\u06e5\u06dc\u06d8\u06dc\u06e0\u06d7\u06da\u06e4\u06e5\u06d8\u06e2\u06df\u06e0\u06d9\u06d7\u06e6\u06d8\u06e5\u06d6\u06e6\u06df\u06db\u06d8\u06ec\u06e8\u06e5\u06e6\u06e5\u06e6\u06e2\u06dc\u06e7\u06d8"

    goto :goto_0

    :sswitch_5
    const-string v0, "\u06d7\u06d6\u06e7\u06d8\u06d7\u06ec\u06dc\u06d8\u06ec\u06db\u06dc\u06d7\u06d9\u06eb\u06e1\u06e8\u06d9\u06e1\u06e5\u06ec\u06d6\u06e8\u06d8\u06d8\u06e4\u06d6\u06e1\u06da\u06d9\u06e8\u06db\u06da\u06eb"

    goto :goto_1

    :sswitch_6
    const v3, 0x4e74c3a9

    const-string v0, "\u06ec\u06e5\u06e6\u06d8\u06df\u06df\u06e6\u06d8\u06e0\u06db\u06db\u06e6\u06d6\u06d7\u06dc\u06e1\u06d8\u06e5\u06d9\u06da\u06e7\u06e8\u06e5\u06e5\u06e4\u06dc\u06ec\u06e1\u06e7\u06e6\u06d9\u06d7\u06e1\u06d6\u06e4\u06d8\u06e7\u06e8\u06d8\u06d7\u06db\u06d6\u06e7\u06e4\u06d6\u06d8"

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    xor-int/2addr v4, v3

    sparse-switch v4, :sswitch_data_2

    goto :goto_2

    :sswitch_7
    const-string v0, "\u06ec\u06da\u06e5\u06d8\u06e6\u06e5\u06e8\u06e4\u06d9\u06e8\u06d8\u06eb\u06eb\u06e0\u06d6\u06da\u06ec\u06eb\u06ec\u06df\u06e6\u06ec\u06e8\u06d9\u06ec\u06dc\u06d8\u06da\u06e4\u06e0\u06d9\u06e4\u06e2\u06db\u06d7\u06d6\u06d8\u06d8\u06e7\u06db\u06e0\u06d9\u06df\u06d8\u06da\u06e1\u06d8"

    goto :goto_2

    :cond_0
    const-string v0, "\u06eb\u06e8\u06e7\u06e7\u06d7\u06e2\u06d7\u06e1\u06d8\u06d6\u06e4\u06d9\u06e1\u06e4\u06d8\u06d8\u06d9\u06da\u06e8\u06df\u06d9\u06d9\u06db\u06ec\u06e2\u06d9\u06db\u06e1\u06e7\u06e6\u06d8"

    goto :goto_2

    :sswitch_8
    if-eqz v1, :cond_0

    const-string v0, "\u06e7\u06e8\u06d8\u06d8\u06db\u06e4\u06d9\u06eb\u06d6\u06e8\u06d8\u06db\u06e4\u06e4\u06e4\u06e0\u06e7\u06d7\u06d6\u06ec\u06e7\u06e0\u06eb\u06df\u06eb\u06e8\u06db\u06e2\u06e7\u06da\u06d8\u06e4\u06e1\u06db\u06df\u06ec\u06e1\u06eb\u06e8\u06e4\u06e0\u06d9\u06d8\u06d6\u06d7\u06df\u06df\u06ec\u06db\u06d9"

    goto :goto_2

    :sswitch_9
    const-string v0, "\u06d7\u06e5\u06d9\u06dc\u06df\u06ec\u06e1\u06e6\u06e6\u06d8\u06db\u06d9\u06e5\u06d9\u06df\u06e5\u06d8\u06df\u06e7\u06e1\u06d8\u06e5\u06e4\u06da\u06e0\u06e4\u06e7\u06da\u06e6\u06d6\u06e6\u06e4\u06e8\u06d8\u06d9\u06e0\u06e6\u06d9\u06e7\u06e1\u06d6\u06d9\u06e8\u06d8\u06d8\u06ec\u06e1\u06e7\u06ec\u06e0\u06e0\u06d6\u06d8"

    goto :goto_1

    :sswitch_a
    const-string v0, "\u06db\u06e5\u06d6\u06d8\u06eb\u06dc\u06d6\u06d8\u06d7\u06d9\u06dc\u06d8\u06db\u06df\u06d8\u06e1\u06dc\u06e6\u06d8\u06e4\u06d6\u06e0\u06d8\u06df\u06e2\u06e6\u06df\u06e7\u06eb\u06e0\u06e7\u06e8\u06dc\u06d8\u06d8\u06e7\u06d8\u06e2\u06e5\u06e0\u06e2\u06df\u06d6\u06e1\u06d8\u06e6\u06e0\u06e2\u06e0\u06e0\u06e7\u06e8\u06e6\u06d8\u06d8\u06e8\u06dc\u06e0\u06e6\u06e7\u06d6\u06d8"

    goto :goto_1

    :sswitch_b
    const-string v0, "\u06e7\u06da\u06e8\u06d8\u06eb\u06e6\u06e8\u06d8\u06db\u06e2\u06e0\u06d6\u06d7\u06e7\u06e4\u06dc\u06db\u06d7\u06d9\u06d7\u06e8\u06e7\u06d8\u06dc\u06e8\u06d6\u06d8\u06e0\u06e1\u06d8\u06dc\u06e8\u06d8\u06e5\u06da\u06e1\u06db\u06d9\u06dc\u06d8\u06e4\u06dc\u06e6\u06e2\u06eb\u06e1\u06e0\u06dc\u06dc\u06d8\u06dc\u06d8\u06e8\u06d8"

    goto :goto_0

    :sswitch_c
    invoke-virtual {v1}, Lz2/rh;->OooOOOO()V

    const-string v0, "\u06ec\u06df\u06e2\u06e5\u06dc\u06e6\u06d7\u06db\u06e7\u06d8\u06d8\u06df\u06eb\u06d9\u06e8\u06e0\u06e8\u06d8\u06d8\u06e5\u06dc\u06d8\u06dc\u06e0\u06d7\u06da\u06e4\u06e5\u06d8\u06e2\u06df\u06e0\u06d9\u06d7\u06e6\u06d8\u06e5\u06d6\u06e6\u06df\u06db\u06d8\u06ec\u06e8\u06e5\u06e6\u06e5\u06e6\u06e2\u06dc\u06e7\u06d8"

    goto :goto_0

    :sswitch_d
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x5349dba0 -> :sswitch_2
        -0x362adf0c -> :sswitch_c
        -0x32ea5c34 -> :sswitch_0
        0xef085ff -> :sswitch_d
        0x5c1e46b9 -> :sswitch_3
        0x71730df0 -> :sswitch_1
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x63e3e072 -> :sswitch_6
        -0x2db94e67 -> :sswitch_a
        -0x2c5c01c5 -> :sswitch_b
        0x16f8c873 -> :sswitch_4
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        -0x570a322d -> :sswitch_9
        -0x567675b4 -> :sswitch_8
        0x10f1af42 -> :sswitch_5
        0x247fa233 -> :sswitch_7
    .end sparse-switch
.end method
