.class public Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$OooO0O0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->Oooo0oo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final OoooOoO:Landroid/os/CountDownTimer;

.field public final OoooOoo:Landroid/view/ViewGroup;

.field public final Ooooo00:Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;


# direct methods
.method public constructor <init>(Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;Landroid/os/CountDownTimer;Landroid/view/ViewGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$OooO0O0;->Ooooo00:Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;

    iput-object p2, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$OooO0O0;->OoooOoO:Landroid/os/CountDownTimer;

    iput-object p3, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$OooO0O0;->OoooOoo:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const-string v0, "\u06e7\u06e4\u06e4\u06e7\u06e1\u06e1\u06d8\u06e2\u06df\u06df\u06e2\u06e2\u06e1\u06d8\u06db\u06d6\u06dc\u06e8\u06e5\u06e4\u06e4\u06eb\u06e8\u06df\u06e2\u06e4\u06e2\u06eb\u06e6\u06d8\u06d6\u06e1\u06e4\u06d7\u06ec\u06e1\u06d8\u06df\u06da\u06d6\u06da\u06dc\u06e8\u06e2\u06e2\u06e4"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x238

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x281

    const/16 v2, 0x13c

    const v3, -0x7bdf2443

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06da\u06e7\u06e5\u06ec\u06e8\u06e6\u06d8\u06ec\u06e0\u06e8\u06d8\u06d6\u06d9\u06e6\u06e8\u06d8\u06d8\u06df\u06d6\u06e7\u06d8\u06d6\u06e6\u06e0\u06d7\u06d6\u06e7\u06e1\u06e6\u06e2\u06d8\u06d6\u06d7\u06eb\u06e0\u06e8\u06d7\u06e4\u06eb\u06db\u06eb\u06d6\u06df\u06eb\u06d6\u06eb\u06e0\u06e1\u06d8\u06e2\u06e4\u06d7\u06ec\u06ec\u06e5\u06e7\u06e8\u06d8"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06e1\u06d8\u06dc\u06d8\u06e0\u06e6\u06e8\u06d8\u06d6\u06e7\u06db\u06e4\u06e4\u06dc\u06d8\u06e0\u06e8\u06d7\u06e0\u06e2\u06db\u06ec\u06e8\u06dc\u06e2\u06e5\u06e6\u06e4\u06d7\u06e5\u06d8\u06df\u06d9\u06e5\u06d8\u06e1\u06e6\u06d7\u06e8\u06db\u06d9\u06d9\u06d9\u06e6\u06d8"

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$OooO0O0;->Ooooo00:Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->OooOOoo(Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;Z)Z

    const-string v0, "\u06e1\u06e8\u06e6\u06d7\u06e8\u06d8\u06e8\u06e0\u06d7\u06e4\u06da\u06d9\u06e5\u06da\u06e0\u06d6\u06d9\u06e5\u06d8\u06dc\u06e1\u06e1\u06d8\u06e5\u06e7\u06d6\u06d8\u06dc\u06d9\u06df\u06e0\u06dc\u06df\u06d9\u06d9\u06e5\u06d8\u06e7\u06e1\u06e8\u06d8\u06e7\u06e2\u06e6\u06d8\u06db\u06e6\u06e7"

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$OooO0O0;->OoooOoO:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    const-string v0, "\u06e4\u06e6\u06e5\u06ec\u06e1\u06e2\u06e0\u06e6\u06e4\u06e1\u06dc\u06e8\u06d8\u06e7\u06dc\u06e1\u06d8\u06d9\u06e1\u06dc\u06d6\u06db\u06dc\u06d8\u06df\u06d7\u06d6\u06e8\u06d7\u06e6\u06dc\u06d9\u06e0\u06e2\u06e6\u06d8\u06d8\u06d6\u06d7\u06dc\u06e7\u06e7\u06df\u06e8\u06e6\u06d8"

    goto :goto_0

    :sswitch_4
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$OooO0O0;->OoooOoo:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$OooO0O0;->Ooooo00:Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;

    invoke-static {v1}, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->OooOOo(Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const-string v0, "\u06e1\u06d9\u06e8\u06d8\u06d8\u06e0\u06df\u06e5\u06e5\u06e7\u06d8\u06d6\u06d7\u06d6\u06d8\u06d8\u06e6\u06d8\u06df\u06db\u06e2\u06e4\u06e2\u06d6\u06e7\u06ec\u06e5\u06ec\u06e4\u06dc\u06e0\u06da\u06e1\u06d8\u06e4\u06db\u06e1\u06e7\u06d6\u06e0\u06d6\u06ec\u06d7\u06eb\u06d9\u06e1\u06e5\u06d8\u06eb\u06db\u06e6"

    goto :goto_0

    :sswitch_5
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x6836a205 -> :sswitch_2
        -0x1376851c -> :sswitch_3
        0x1c5e2224 -> :sswitch_5
        0x212e10b9 -> :sswitch_1
        0x69038e8e -> :sswitch_0
        0x6cd8ccca -> :sswitch_4
    .end sparse-switch
.end method
