.class public Lcom/cyjh/elfin/ui/activity/SplashActivity$OooOO0O;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/elfin/ui/activity/SplashActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OooOO0O"
.end annotation


# instance fields
.field private OoooOoO:Landroid/app/AlertDialog;

.field public final OoooOoo:Lcom/cyjh/elfin/ui/activity/SplashActivity;


# direct methods
.method private constructor <init>(Lcom/cyjh/elfin/ui/activity/SplashActivity;Landroid/app/AlertDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/cyjh/elfin/ui/activity/SplashActivity$OooOO0O;->OoooOoo:Lcom/cyjh/elfin/ui/activity/SplashActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/cyjh/elfin/ui/activity/SplashActivity$OooOO0O;->OoooOoO:Landroid/app/AlertDialog;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/cyjh/elfin/ui/activity/SplashActivity;Landroid/app/AlertDialog;Lcom/cyjh/elfin/ui/activity/SplashActivity$OooO00o;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/cyjh/elfin/ui/activity/SplashActivity$OooOO0O;-><init>(Lcom/cyjh/elfin/ui/activity/SplashActivity;Landroid/app/AlertDialog;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const-string v0, "\u06db\u06dc\u06e6\u06d8\u06dc\u06d7\u06dc\u06d8\u06df\u06ec\u06e5\u06da\u06d7\u06e6\u06ec\u06da\u06da\u06dc\u06e5\u06e8\u06e2\u06dc\u06e1\u06d8\u06d9\u06d7\u06eb\u06db\u06eb\u06d6\u06d8\u06e1\u06e6\u06e8\u06da\u06d8\u06e1\u06da\u06e1\u06d8\u06d8\u06e0\u06df\u06df\u06eb\u06e0\u06d7"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x381

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0xea

    const/16 v2, 0x129

    const v3, -0x63e9f3cd

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e5\u06e7\u06dc\u06d6\u06d8\u06dc\u06d8\u06e6\u06e7\u06d9\u06df\u06d6\u06d9\u06df\u06d6\u06e4\u06e7\u06eb\u06da\u06d7\u06e6\u06df\u06dc\u06df\u06e6\u06e5\u06d8\u06eb\u06e1\u06e7\u06d8"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06df\u06dc\u06e1\u06d8\u06e0\u06e5\u06d6\u06d8\u06e5\u06e6\u06e5\u06dc\u06e8\u06e7\u06d8\u06db\u06d6\u06e6\u06df\u06eb\u06da\u06e6\u06ec\u06d6\u06d8\u06ec\u06e0\u06d6\u06d6\u06ec\u06d6\u06df\u06d9\u06dc\u06d7\u06db\u06e4\u06d8\u06e2\u06d6\u06d8"

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SplashActivity$OooOO0O;->OoooOoO:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    const-string v0, "\u06db\u06da\u06e7\u06e7\u06e0\u06eb\u06e6\u06e4\u06ec\u06ec\u06d6\u06e1\u06d8\u06e2\u06e4\u06eb\u06e1\u06da\u06d6\u06df\u06e0\u06d8\u06d8\u06eb\u06e7\u06dc\u06e7\u06e1\u06d8\u06da\u06d6\u06e2\u06dc\u06d9\u06df\u06db\u06df\u06d7\u06d9\u06d9\u06e5\u06db\u06e6\u06e7"

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SplashActivity$OooOO0O;->OoooOoo:Lcom/cyjh/elfin/ui/activity/SplashActivity;

    invoke-static {v0}, Lcom/cyjh/elfin/ui/activity/SplashActivity;->OooOOO(Lcom/cyjh/elfin/ui/activity/SplashActivity;)Landroidx/lifecycle/AndroidViewModel;

    move-result-object v0

    check-cast v0, Lz2/qa;

    invoke-virtual {v0}, Lz2/qa;->OooOoo0()V

    const-string v0, "\u06e6\u06d7\u06d8\u06d7\u06e2\u06e7\u06e5\u06d6\u06dc\u06d9\u06e7\u06e5\u06d8\u06eb\u06eb\u06d8\u06d8\u06d8\u06e7\u06dc\u06d9\u06d6\u06e6\u06d8\u06e8\u06d8\u06e1\u06d8\u06db\u06e8\u06e8\u06eb\u06d8\u06db\u06d8\u06e2\u06d9\u06da\u06e8\u06e8\u06d8\u06e8\u06d9\u06e2\u06e0\u06ec\u06e6\u06d8\u06e2\u06e2\u06db\u06d8\u06db\u06e5"

    goto :goto_0

    :sswitch_4
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x31912488 -> :sswitch_0
        -0x1d652737 -> :sswitch_1
        0x19dda479 -> :sswitch_4
        0x6a6cbdc7 -> :sswitch_3
        0x79963d48 -> :sswitch_2
    .end sparse-switch
.end method
