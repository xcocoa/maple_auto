.class public Lcom/cyjh/elfin/ui/activity/SplashActivity$OooO0O0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/elfin/ui/activity/SplashActivity;->Oooo0oo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final OoooOoO:Lcom/cyjh/elfin/ui/activity/SplashActivity;


# direct methods
.method public constructor <init>(Lcom/cyjh/elfin/ui/activity/SplashActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/cyjh/elfin/ui/activity/SplashActivity$OooO0O0;->OoooOoO:Lcom/cyjh/elfin/ui/activity/SplashActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const-string v0, "\u06d7\u06e7\u06e5\u06d8\u06d6\u06eb\u06e8\u06d7\u06d8\u06e7\u06ec\u06d8\u06db\u06e2\u06e4\u06db\u06d9\u06d8\u06eb\u06d7\u06dc\u06e0\u06dc\u06e5\u06d6\u06eb\u06e8\u06e4\u06e6\u06e8\u06e7\u06d8\u06e4\u06d8\u06d8\u06df\u06eb\u06dc\u06e6\u06e0\u06e6\u06da\u06e6\u06e8\u06d8\u06e2\u06e7\u06e5\u06d8\u06d6\u06d6\u06e4\u06da\u06e7\u06d8\u06d8\u06eb\u06df"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x354

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x211

    const/16 v2, 0x67

    const v3, -0x38cb81d

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e0\u06da\u06e5\u06d8\u06d7\u06d8\u06db\u06db\u06e6\u06da\u06e7\u06e0\u06e8\u06ec\u06da\u06e5\u06d8\u06d9\u06eb\u06e5\u06e0\u06ec\u06db\u06e0\u06e5\u06e4\u06db\u06da\u06d7\u06e8\u06da\u06e8\u06dc\u06e5\u06d8\u06d7\u06e2\u06d6\u06e7\u06d8\u06dc\u06d8\u06e0\u06e4\u06dc\u06e2\u06e7\u06e2\u06df\u06d8\u06e1\u06d8\u06da\u06eb\u06d7\u06d9\u06e2\u06da"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06d8\u06eb\u06e2\u06e8\u06e1\u06e8\u06e1\u06d7\u06d7\u06db\u06e8\u06e5\u06e6\u06eb\u06d6\u06d8\u06d9\u06da\u06d7\u06e1\u06da\u06db\u06e8\u06eb\u06df\u06d8\u06e2\u06e5\u06e7\u06d8\u06ec\u06e6\u06e6\u06e1\u06d9\u06e8\u06d9\u06dc\u06df\u06e4\u06e0\u06e4\u06e7\u06d7\u06e6\u06d7\u06e8\u06d8"

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SplashActivity$OooO0O0;->OoooOoO:Lcom/cyjh/elfin/ui/activity/SplashActivity;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.DATA_ROAMING_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const-string v0, "\u06db\u06e1\u06d6\u06d8\u06e8\u06e1\u06d6\u06d8\u06dc\u06e7\u06dc\u06d8\u06e5\u06d6\u06e5\u06d8\u06e7\u06e5\u06e1\u06e4\u06e7\u06d9\u06df\u06df\u06e2\u06e1\u06d9\u06e6\u06d8\u06d9\u06d6\u06e6\u06d8\u06d9\u06e7\u06e6\u06d8\u06e8\u06e7\u06d7\u06eb\u06e7\u06d8\u06d8\u06e7\u06e1\u06dc\u06e4\u06e5"

    goto :goto_0

    :sswitch_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x45a52474 -> :sswitch_0
        0x163441a8 -> :sswitch_3
        0x2052e37d -> :sswitch_1
        0x22c0b0da -> :sswitch_2
    .end sparse-switch
.end method
