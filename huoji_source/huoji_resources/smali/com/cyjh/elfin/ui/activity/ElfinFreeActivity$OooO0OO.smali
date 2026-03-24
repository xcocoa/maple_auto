.class public Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$OooO0OO;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->Oooo0oo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final OoooOoO:Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;


# direct methods
.method public constructor <init>(Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$OooO0OO;->OoooOoO:Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7

    const/4 v2, 0x0

    const/4 v6, 0x1

    const-string v0, "\u06df\u06df\u06d8\u06d7\u06d6\u06d8\u06d6\u06e1\u06d6\u06d8\u06d7\u06e4\u06e2\u06d7\u06e1\u06d7\u06db\u06e0\u06e8\u06d8\u06e6\u06dc\u06e1\u06d8\u06e6\u06dc\u06da\u06d6\u06e0\u06d8\u06d8\u06ec\u06e4\u06e8"

    move v1, v2

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/16 v4, 0x15

    xor-int/2addr v3, v4

    xor-int/lit16 v3, v3, 0x151

    const/16 v4, 0x127

    const v5, 0x1cd70d36

    xor-int/2addr v3, v4

    xor-int/2addr v3, v5

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e5\u06d9\u06d6\u06e7\u06dc\u06d6\u06da\u06e1\u06e6\u06e0\u06e7\u06d9\u06e8\u06d7\u06e6\u06d9\u06d9\u06e8\u06e8\u06dc\u06eb\u06e7\u06d8\u06d8\u06e2\u06d8\u06d9\u06e4\u06e0\u06e5\u06d8\u06e2\u06da\u06dc\u06eb\u06db\u06db\u06d8\u06d8\u06e6\u06e8\u06df\u06e6"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06e4\u06d9\u06e6\u06d8\u06ec\u06d6\u06df\u06e0\u06d7\u06e6\u06e1\u06d7\u06d8\u06d8\u06dc\u06e0\u06e6\u06d8\u06e0\u06d8\u06e7\u06d8\u06ec\u06df\u06d8\u06d8\u06e5\u06d6\u06e2\u06d9\u06d8\u06dc\u06e2\u06e7\u06e1\u06d8\u06d8\u06e4\u06df\u06ec\u06e4\u06e1\u06d8\u06e6\u06dc\u06dc\u06e5\u06d8\u06e1\u06d9\u06dc\u06d8\u06e4\u06e5\u06d7"

    goto :goto_0

    :sswitch_2
    const-string v0, "\u06dc\u06e6\u06d7\u06da\u06e4\u06e0\u06dc\u06ec\u06eb\u06ec\u06e8\u06d7\u06e7\u06d6\u06da\u06e0\u06e8\u06df\u06e4\u06ec\u06eb\u06dc\u06e7\u06d9\u06e6\u06e7\u06e5\u06db\u06d7\u06e1\u06d8\u06e2\u06e0\u06ec\u06db\u06e0\u06e5"

    goto :goto_0

    :sswitch_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const-string v0, "\u06e0\u06d6\u06e1\u06d8\u06ec\u06d7\u06db\u06e1\u06e0\u06d9\u06d6\u06e7\u06d8\u06db\u06eb\u06ec\u06e5\u06e1\u06e6\u06db\u06e5\u06e6\u06e2\u06ec\u06e1\u06e8\u06ec\u06df\u06d9\u06e4\u06dc\u06ec\u06e1\u06da\u06e7\u06ec\u06eb\u06ec\u06d8\u06e6\u06e4\u06d8\u06e8\u06d8\u06d9\u06dc\u06e5\u06e1\u06ec\u06dc\u06e4\u06d7\u06d6\u06e6\u06db\u06e1\u06d8"

    goto :goto_0

    :sswitch_4
    const v3, -0x6256919b

    const-string v0, "\u06e7\u06ec\u06e0\u06e2\u06d8\u06da\u06eb\u06e7\u06d6\u06d8\u06d9\u06ec\u06d8\u06d8\u06da\u06dc\u06e6\u06e4\u06e4\u06ec\u06e8\u06d6\u06d9\u06d9\u06d6\u06e8\u06d8\u06d6\u06e0\u06e2\u06e0\u06eb\u06d7\u06df\u06ec\u06d7\u06e2\u06df\u06e2\u06d8\u06e6\u06d8\u06dc\u06da\u06e5\u06d8\u06d7\u06ec\u06eb\u06da\u06e5\u06e6"

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    xor-int/2addr v4, v3

    sparse-switch v4, :sswitch_data_1

    goto :goto_1

    :sswitch_5
    const-string v0, "\u06eb\u06eb\u06ec\u06eb\u06e5\u06d6\u06db\u06e4\u06ec\u06d9\u06d9\u06d8\u06d8\u06d9\u06d6\u06dc\u06e7\u06da\u06e0\u06eb\u06d9\u06d8\u06d8\u06e7\u06e6\u06e1\u06d8\u06e7\u06db\u06d7\u06ec\u06e0\u06d9\u06ec\u06eb\u06df\u06e0\u06d9\u06da\u06e4\u06d6\u06e0\u06e6"

    goto :goto_1

    :sswitch_6
    const-string v0, "\u06d7\u06e6\u06df\u06dc\u06e1\u06e5\u06d8\u06e4\u06d7\u06e1\u06e6\u06d6\u06e1\u06d8\u06ec\u06e4\u06e0\u06e8\u06e6\u06e6\u06e6\u06e4\u06e5\u06d8\u06d8\u06eb\u06db\u06e4\u06e2\u06e0\u06d6\u06d8\u06ec\u06e6\u06dc\u06d8\u06e0\u06e2\u06db\u06eb\u06e6\u06e8\u06e1\u06e7\u06dc\u06e5\u06e8\u06d8\u06da\u06ec\u06dc\u06d8"

    goto :goto_1

    :sswitch_7
    const v4, 0x56061627

    const-string v0, "\u06d9\u06e5\u06d7\u06e4\u06d7\u06da\u06e5\u06ec\u06df\u06e1\u06da\u06e5\u06d8\u06e6\u06e8\u06df\u06e1\u06df\u06e1\u06d8\u06dc\u06e7\u06d9\u06e2\u06d6\u06d8\u06e2\u06d6\u06ec\u06e1\u06e5"

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v5

    xor-int/2addr v5, v4

    sparse-switch v5, :sswitch_data_2

    goto :goto_2

    :sswitch_8
    const-string v0, "\u06e6\u06e8\u06e4\u06e2\u06d7\u06e8\u06db\u06d6\u06d6\u06e5\u06dc\u06e8\u06d6\u06e5\u06e8\u06dc\u06e0\u06da\u06e1\u06e4\u06d8\u06e6\u06e8\u06eb\u06e0\u06df\u06e7\u06d6\u06d8\u06da\u06ec\u06df\u06e1\u06d6"

    goto :goto_2

    :cond_0
    const-string v0, "\u06e4\u06e6\u06d6\u06d8\u06e7\u06d7\u06d6\u06db\u06e8\u06e1\u06d8\u06e1\u06d8\u06db\u06e6\u06db\u06e5\u06d8\u06e2\u06e5\u06e7\u06e0\u06ec\u06dc\u06eb\u06e0\u06e8\u06d9\u06d7\u06e1\u06d8\u06e8\u06e6\u06da\u06eb\u06d8\u06d9\u06e5\u06e8\u06e1\u06d8\u06e8\u06d7\u06da\u06df\u06e2\u06db\u06e5\u06d9\u06e1\u06d8\u06dc\u06d6\u06e8\u06d8"

    goto :goto_2

    :sswitch_9
    if-eqz v1, :cond_0

    const-string v0, "\u06db\u06e2\u06e8\u06d8\u06e5\u06da\u06db\u06eb\u06e7\u06ec\u06e6\u06db\u06df\u06e4\u06e0\u06e0\u06e2\u06eb\u06df\u06e1\u06e0\u06e4\u06da\u06dc\u06e0\u06eb\u06d8\u06d9\u06eb\u06d6\u06d8\u06db\u06e0\u06da\u06e5\u06e0\u06dc"

    goto :goto_2

    :sswitch_a
    const-string v0, "\u06e0\u06df\u06d8\u06d8\u06d8\u06e5\u06da\u06e2\u06d9\u06dc\u06e0\u06e2\u06e1\u06d8\u06df\u06e0\u06e1\u06dc\u06df\u06db\u06eb\u06e4\u06d7\u06d7\u06d6\u06e0\u06eb\u06e6\u06d8\u06e4\u06d6\u06dc\u06d8\u06d8\u06e6\u06e7\u06ec\u06e7\u06dc\u06d8\u06d7\u06dc\u06e5\u06d8\u06e2\u06d8\u06df\u06e8\u06d8\u06e0\u06e6\u06e6\u06eb"

    goto :goto_1

    :sswitch_b
    const-string v0, "\u06e8\u06df\u06da\u06dc\u06ec\u06d6\u06d8\u06e0\u06e1\u06e8\u06d8\u06e5\u06da\u06dc\u06df\u06e5\u06e5\u06d8\u06e2\u06d8\u06d6\u06d9\u06ec\u06d7\u06d6\u06db\u06e1\u06e4\u06e1\u06da\u06e1\u06e2\u06e8\u06ec\u06e0\u06e0\u06db\u06db\u06ec\u06d7\u06d8\u06db\u06e4\u06e7\u06df\u06d7\u06e0\u06dc\u06e8"

    goto :goto_0

    :sswitch_c
    const v3, -0x3918d5ce

    const-string v0, "\u06e8\u06da\u06e8\u06d8\u06e0\u06e4\u06eb\u06eb\u06e4\u06e5\u06e0\u06e4\u06ec\u06da\u06ec\u06d7\u06da\u06e5\u06eb\u06e1\u06df\u06d6\u06d8\u06da\u06e6\u06ec\u06da\u06e4\u06e8\u06d8\u06db\u06dc\u06d8\u06ec\u06e1\u06eb\u06e1\u06e0\u06e4"

    :goto_3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    xor-int/2addr v4, v3

    sparse-switch v4, :sswitch_data_3

    goto :goto_3

    :sswitch_d
    const-string v0, "\u06d6\u06e5\u06e2\u06da\u06d7\u06e6\u06e4\u06db\u06d8\u06e5\u06e2\u06df\u06e1\u06e8\u06db\u06ec\u06e4\u06e5\u06d8\u06df\u06eb\u06dc\u06d8\u06db\u06d7\u06e6\u06d8\u06d6\u06e4\u06e8\u06e2\u06eb\u06e4\u06db\u06d9\u06e8\u06d8\u06d9\u06eb\u06e2\u06e2\u06e2\u06d7\u06da\u06d6\u06e0\u06ec\u06e0\u06e8\u06d8\u06e7\u06e7\u06d8\u06d8\u06e5\u06e7\u06e0\u06e8\u06e5\u06eb"

    goto :goto_3

    :sswitch_e
    const-string v0, "\u06e5\u06e8\u06da\u06da\u06d8\u06e7\u06d7\u06e4\u06e8\u06d8\u06d8\u06e1\u06d8\u06df\u06dc\u06d9\u06d9\u06d8\u06df\u06e0\u06e7\u06e7\u06e2\u06e6\u06df\u06e8\u06ec\u06e5\u06db\u06dc\u06d6\u06d8\u06e2\u06ec\u06ec\u06e7\u06e6\u06da"

    goto :goto_3

    :sswitch_f
    const v4, -0x2fd196f

    const-string v0, "\u06da\u06eb\u06e8\u06e5\u06e5\u06da\u06e5\u06e2\u06e4\u06e6\u06d9\u06db\u06ec\u06e6\u06d8\u06e6\u06e8\u06d8\u06ec\u06e7\u06e6\u06d8\u06ec\u06d9\u06dc\u06d8\u06d8\u06dc\u06d9\u06da\u06e8\u06d6\u06d8\u06da\u06db\u06d6\u06e5\u06d6\u06d6\u06dc\u06df\u06ec\u06df\u06e7\u06e1\u06d8\u06e4\u06d8\u06dc\u06d8\u06e5\u06eb\u06d6\u06d8"

    :goto_4
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v5

    xor-int/2addr v5, v4

    sparse-switch v5, :sswitch_data_4

    goto :goto_4

    :sswitch_10
    if-eq v1, v6, :cond_1

    const-string v0, "\u06eb\u06eb\u06db\u06d8\u06e6\u06e6\u06e5\u06e0\u06e5\u06d8\u06dc\u06e8\u06e7\u06d8\u06db\u06d7\u06dc\u06d9\u06ec\u06e0\u06e6\u06db\u06e5\u06e1\u06ec\u06d6\u06d7\u06e8\u06e1\u06eb\u06e8"

    goto :goto_4

    :cond_1
    const-string v0, "\u06ec\u06e8\u06e2\u06da\u06e2\u06d6\u06d8\u06eb\u06e8\u06e1\u06d6\u06d8\u06ec\u06e4\u06d7\u06e1\u06d8\u06df\u06d9\u06df\u06d9\u06eb\u06da\u06ec\u06da\u06df\u06eb\u06db\u06d8\u06d9\u06d7\u06d6"

    goto :goto_4

    :sswitch_11
    const-string v0, "\u06ec\u06d8\u06df\u06e8\u06d6\u06d9\u06e2\u06e8\u06e7\u06d8\u06e6\u06d8\u06d8\u06d7\u06e4\u06e7\u06e5\u06eb\u06e1\u06d8\u06e5\u06df\u06e1\u06df\u06e8\u06e8\u06d8\u06e4\u06e7\u06df\u06eb\u06dc\u06d9"

    goto :goto_4

    :sswitch_12
    const-string v0, "\u06e4\u06e0\u06d6\u06d9\u06d9\u06ec\u06ec\u06d8\u06e5\u06d8\u06e0\u06e6\u06d6\u06ec\u06e2\u06d7\u06db\u06da\u06db\u06db\u06e1\u06dc\u06d8\u06d6\u06df\u06d9\u06d9\u06e1\u06e7\u06e8\u06d9\u06dc\u06e1\u06e6\u06d7\u06e8\u06e1\u06e2"

    goto :goto_3

    :sswitch_13
    const-string v0, "\u06e2\u06dc\u06e1\u06d8\u06d9\u06d9\u06e6\u06d8\u06e5\u06d8\u06e6\u06d8\u06e2\u06d7\u06e6\u06eb\u06e1\u06d8\u06e0\u06d9\u06dc\u06d6\u06e8\u06d8\u06e6\u06df\u06e1\u06df\u06e8\u06da\u06e6\u06dc\u06e7"

    goto/16 :goto_0

    :sswitch_14
    const v3, 0x6f89e24e

    const-string v0, "\u06e1\u06da\u06e6\u06d8\u06e8\u06dc\u06d6\u06d8\u06e1\u06e4\u06eb\u06d9\u06e4\u06db\u06e1\u06db\u06e6\u06e5\u06e5\u06e5\u06e1\u06d8\u06e5\u06ec\u06e4\u06d7\u06e6\u06df\u06e6\u06d8\u06e8\u06e0\u06da\u06d8\u06df\u06e1\u06d8\u06ec\u06df"

    :goto_5
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    xor-int/2addr v4, v3

    sparse-switch v4, :sswitch_data_5

    goto :goto_5

    :sswitch_15
    const v4, 0x2f2b7cda

    const-string v0, "\u06e4\u06d7\u06e6\u06d8\u06d6\u06d8\u06e6\u06eb\u06e5\u06e7\u06d6\u06e5\u06dc\u06ec\u06d6\u06da\u06df\u06d9\u06eb\u06d8\u06e6\u06e0\u06d7\u06eb\u06d8\u06d8\u06d6\u06e5\u06e1\u06d8\u06d9\u06e7\u06e4\u06df\u06dc\u06e7\u06d8\u06d7\u06ec\u06e1\u06e4\u06ec\u06d6\u06d6\u06d7\u06d8\u06d7\u06e8\u06d6\u06d8\u06e5\u06da\u06e0\u06d8\u06ec\u06e8\u06df\u06e7\u06e8"

    :goto_6
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v5

    xor-int/2addr v5, v4

    sparse-switch v5, :sswitch_data_6

    goto :goto_6

    :sswitch_16
    const-string v0, "\u06e7\u06e6\u06e5\u06d8\u06ec\u06dc\u06e7\u06d8\u06dc\u06d7\u06e6\u06d8\u06e7\u06d9\u06e5\u06d8\u06dc\u06dc\u06d6\u06d8\u06d7\u06e1\u06e8\u06d8\u06e8\u06eb\u06e7\u06da\u06d8\u06ec\u06e5\u06e7\u06e5\u06da\u06e7\u06e7\u06e2\u06e7\u06e2\u06e4\u06e5\u06dc\u06d8\u06eb\u06e1\u06d8\u06d7\u06d6\u06eb\u06d9\u06d7\u06e4\u06d7\u06e2\u06e2\u06d6\u06e7\u06d9\u06e0\u06eb\u06dc\u06d8"

    goto :goto_5

    :cond_2
    const-string v0, "\u06e7\u06eb\u06d9\u06ec\u06e8\u06eb\u06d6\u06df\u06eb\u06d7\u06ec\u06db\u06e7\u06da\u06d6\u06e8\u06e2\u06e4\u06e4\u06ec\u06d6\u06e0\u06da\u06da\u06dc\u06db\u06d9\u06db\u06e4\u06e8\u06d8\u06e1\u06db\u06e1\u06d8\u06e0\u06df\u06da"

    goto :goto_6

    :sswitch_17
    const/4 v0, 0x2

    if-eq v1, v0, :cond_2

    const-string v0, "\u06d7\u06e1\u06e4\u06d9\u06da\u06e5\u06d8\u06da\u06e4\u06e1\u06d8\u06e7\u06da\u06e7\u06e6\u06e6\u06e2\u06e7\u06e1\u06e6\u06df\u06e7\u06e7\u06e5\u06e0\u06e4\u06df\u06e4\u06e5\u06d8\u06e1\u06dc\u06dc\u06e7\u06dc\u06d8\u06d6\u06ec\u06d7\u06ec\u06d6\u06d8\u06e7\u06d6\u06d8\u06d8\u06d9\u06ec\u06dc\u06e8\u06d7\u06d8\u06eb\u06d9\u06da\u06ec\u06df\u06e1"

    goto :goto_6

    :sswitch_18
    const-string v0, "\u06e0\u06d9\u06e8\u06e1\u06e5\u06e6\u06e4\u06e6\u06e7\u06d8\u06dc\u06e6\u06d8\u06e5\u06e7\u06dc\u06db\u06d9\u06d6\u06d8\u06ec\u06da\u06e0\u06da\u06d8\u06d7\u06e5\u06db\u06e6\u06d8\u06ec\u06d9"

    goto :goto_6

    :sswitch_19
    const-string v0, "\u06e0\u06d6\u06d6\u06e1\u06d8\u06e1\u06e8\u06df\u06e0\u06da\u06d6\u06e2\u06db\u06e2\u06e7\u06da\u06d8\u06e5\u06e5\u06e1\u06eb\u06e8\u06d9\u06e4\u06e2\u06ec\u06e0\u06e1\u06e6\u06db\u06e2\u06e7\u06e1\u06d8\u06e4\u06e8\u06e6\u06e4\u06dc\u06e8\u06d8\u06e8\u06e1\u06e6\u06d8\u06e7\u06e7\u06e1\u06d8\u06e1\u06dc\u06db"

    goto :goto_5

    :sswitch_1a
    const-string v0, "\u06d6\u06e7\u06eb\u06d8\u06ec\u06eb\u06d9\u06d8\u06dc\u06d9\u06dc\u06e7\u06d8\u06e6\u06e7\u06e5\u06d8\u06e5\u06e0\u06ec\u06e7\u06da\u06d8\u06db\u06d7\u06e5\u06ec\u06e1\u06d8\u06e2\u06d8\u06e0\u06d9\u06e2\u06e8\u06d8\u06dc\u06d8\u06d8\u06d8\u06ec\u06e8\u06e1\u06d8\u06d6\u06e2\u06d8\u06d8\u06e7\u06d7\u06d9\u06e5\u06d6\u06d9"

    goto :goto_5

    :sswitch_1b
    const-string v0, "\u06e7\u06e5\u06df\u06db\u06ec\u06d6\u06d8\u06e7\u06e0\u06eb\u06e2\u06e5\u06e6\u06df\u06e6\u06eb\u06da\u06e6\u06d7\u06dc\u06e5\u06eb\u06e0\u06dc\u06df\u06ec\u06e5\u06e6\u06df\u06d8\u06dc\u06d8\u06df\u06e7\u06e5\u06d7\u06e2\u06e5\u06d8\u06e4\u06e8\u06e6\u06d8\u06e4\u06e5\u06db\u06d8\u06e4\u06e5\u06d8\u06db\u06d9\u06d8\u06d9\u06d9\u06e7\u06db\u06dc\u06d6"

    goto/16 :goto_0

    :sswitch_1c
    const v3, -0x48ff5dd1

    const-string v0, "\u06d6\u06db\u06e8\u06d8\u06db\u06db\u06d7\u06e2\u06ec\u06e8\u06d8\u06db\u06e5\u06eb\u06df\u06db\u06d6\u06d8\u06db\u06da\u06e2\u06e5\u06ec\u06e5\u06d8\u06d7\u06e1\u06ec\u06eb\u06e8\u06e8\u06db\u06e7\u06d8\u06d8\u06dc\u06e1\u06d8\u06d8\u06e2\u06e0\u06e1\u06d8\u06e8\u06dc\u06e8\u06da\u06e6\u06db"

    :goto_7
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    xor-int/2addr v4, v3

    sparse-switch v4, :sswitch_data_7

    goto :goto_7

    :sswitch_1d
    const v4, -0x6a716de1

    const-string v0, "\u06db\u06e1\u06e5\u06d8\u06e0\u06e7\u06e4\u06d6\u06d8\u06e5\u06d8\u06e0\u06e2\u06da\u06e1\u06e2\u06db\u06e6\u06e4\u06d9\u06e1\u06e6\u06d9\u06e4\u06d9\u06e8\u06d6\u06eb\u06e1\u06d8"

    :goto_8
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v5

    xor-int/2addr v5, v4

    sparse-switch v5, :sswitch_data_8

    goto :goto_8

    :sswitch_1e
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$OooO0OO;->OoooOoO:Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;

    invoke-static {v0}, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->OooOoO0(Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "\u06d8\u06e0\u06dc\u06d8\u06e1\u06db\u06da\u06e0\u06e4\u06d6\u06e1\u06d6\u06dc\u06e1\u06d7\u06da\u06eb\u06eb\u06dc\u06d6\u06df\u06d9\u06ec\u06eb\u06eb\u06e2\u06db\u06e4\u06db\u06df\u06eb"

    goto :goto_8

    :sswitch_1f
    const-string v0, "\u06da\u06e2\u06d6\u06d8\u06e1\u06e2\u06d8\u06d8\u06ec\u06e7\u06d6\u06d8\u06e0\u06eb\u06dc\u06dc\u06e2\u06d9\u06e8\u06ec\u06eb\u06d9\u06dc\u06da\u06d7\u06d7\u06eb\u06e6\u06e6\u06e1\u06e8\u06e8\u06df\u06eb\u06d8\u06e1\u06d8\u06e5\u06da\u06d8\u06d8\u06e5\u06ec\u06d8\u06e8\u06d6\u06e1\u06eb\u06e5\u06e1\u06d6\u06e8\u06e0\u06e5\u06e8\u06e4\u06db\u06d7"

    goto :goto_7

    :cond_3
    const-string v0, "\u06e2\u06eb\u06e5\u06d9\u06e2\u06dc\u06d8\u06da\u06e0\u06d8\u06e8\u06d7\u06ec\u06da\u06e8\u06dc\u06e1\u06e2\u06e0\u06d7\u06df\u06d7\u06e7\u06e8\u06e8\u06d7\u06e0\u06e8\u06df\u06e6\u06d8\u06d7\u06e7\u06d6\u06e2\u06df\u06e1\u06d8\u06e1\u06db\u06e8\u06d9\u06ec\u06da"

    goto :goto_8

    :sswitch_20
    const-string v0, "\u06db\u06d8\u06e5\u06ec\u06e2\u06d6\u06d8\u06e2\u06e1\u06d8\u06d8\u06ec\u06dc\u06e5\u06d8\u06e2\u06e5\u06dc\u06e5\u06e6\u06e7\u06e2\u06e1\u06e8\u06d8\u06eb\u06eb\u06e2\u06d9\u06dc\u06e1\u06d7\u06e5\u06d6\u06d8"

    goto :goto_8

    :sswitch_21
    const-string v0, "\u06d8\u06d6\u06ec\u06d6\u06d7\u06e8\u06e6\u06e8\u06d6\u06d8\u06e0\u06e0\u06d8\u06e7\u06e8\u06e7\u06d8\u06e6\u06eb\u06ec\u06ec\u06e8\u06e2\u06d8\u06e4\u06ec\u06e2\u06e6\u06e8\u06da\u06d7\u06e0\u06e5\u06e4\u06e5\u06d8\u06e5\u06e8"

    goto :goto_7

    :sswitch_22
    const-string v0, "\u06ec\u06e4\u06ec\u06d8\u06eb\u06db\u06e8\u06e8\u06d8\u06e6\u06e6\u06e5\u06ec\u06eb\u06e1\u06eb\u06e0\u06dc\u06ec\u06e4\u06e7\u06d8\u06e5\u06e7\u06d8\u06e0\u06d7\u06d8\u06d8\u06e2\u06da\u06e8\u06d8"

    goto :goto_7

    :sswitch_23
    const-string v0, "\u06d8\u06dc\u06d8\u06e6\u06e5\u06e2\u06d7\u06da\u06dc\u06d8\u06db\u06e4\u06e5\u06d8\u06e7\u06d6\u06d7\u06d8\u06df\u06e4\u06db\u06d8\u06d8\u06e0\u06d9\u06d7\u06e2\u06e5\u06e8\u06d8\u06e8\u06e8\u06d8\u06d7\u06e4\u06e1\u06e7\u06d7\u06e1\u06d8\u06ec\u06df\u06d6\u06d8\u06da\u06e8\u06d8"

    goto/16 :goto_0

    :sswitch_24
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget-object v3, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$OooO0OO;->OoooOoO:Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;

    invoke-static {v3}, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->OooOo00(Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;)F

    move-result v3

    sub-float/2addr v0, v3

    invoke-virtual {p1, v0}, Landroid/view/View;->setX(F)V

    const-string v0, "\u06e8\u06d9\u06e7\u06e4\u06df\u06d8\u06d6\u06e1\u06d8\u06d7\u06d8\u06da\u06e0\u06eb\u06e6\u06d8\u06df\u06dc\u06d8\u06d8\u06e7\u06df\u06da\u06e8\u06e4\u06ec\u06e5\u06d7\u06e4\u06d7\u06e8\u06d9\u06eb\u06d7\u06e5\u06d8\u06e6\u06db\u06e8\u06e6\u06e6\u06e4\u06d8\u06e2\u06d8\u06d8"

    goto/16 :goto_0

    :sswitch_25
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iget-object v3, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$OooO0OO;->OoooOoO:Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;

    invoke-static {v3}, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->OooOo0o(Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;)F

    move-result v3

    sub-float/2addr v0, v3

    invoke-virtual {p1, v0}, Landroid/view/View;->setY(F)V

    const-string v0, "\u06e1\u06d7\u06d9\u06ec\u06e0\u06ec\u06d7\u06e7\u06e8\u06e5\u06db\u06ec\u06e5\u06e1\u06d8\u06d8\u06e1\u06eb\u06e2\u06df\u06d8\u06d8\u06d8\u06e7\u06df\u06e8\u06d8\u06dc\u06e8\u06dc\u06d8\u06eb\u06d7\u06e6\u06e7\u06e2\u06eb\u06d6\u06dc\u06d8\u06e8\u06e8\u06e8\u06d8\u06da\u06e4\u06d7"

    goto/16 :goto_0

    :sswitch_26
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$OooO0OO;->OoooOoO:Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;

    invoke-static {v0, p1}, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->OooOoOO(Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;Landroid/view/View;)V

    const-string v0, "\u06df\u06e4\u06d6\u06e0\u06d6\u06d9\u06e0\u06e0\u06dc\u06e1\u06dc\u06d8\u06e7\u06da\u06e0\u06e2\u06e4\u06d8\u06d8\u06dc\u06d6\u06eb\u06df\u06e1\u06ec\u06df\u06d6\u06e4\u06d8\u06d8\u06e5\u06e6\u06dc\u06d6\u06db\u06e5\u06d8\u06e5\u06db\u06e6\u06d8\u06e0\u06e2\u06d8\u06e7\u06e8\u06e4\u06eb\u06eb\u06e2\u06da\u06e2\u06e6\u06d8\u06dc\u06d9\u06e7"

    goto/16 :goto_0

    :sswitch_27
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$OooO0OO;->OoooOoO:Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;

    invoke-static {v0, v2}, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->OooOoO(Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;Z)Z

    const-string v0, "\u06d9\u06d9\u06e8\u06d8\u06df\u06da\u06e2\u06e8\u06e2\u06e5\u06eb\u06d8\u06d6\u06d8\u06e2\u06eb\u06d6\u06d8\u06e6\u06ec\u06d8\u06e6\u06df\u06e5\u06d8\u06e6\u06df\u06e1\u06d8\u06e2\u06e7\u06db\u06df\u06ec\u06df\u06d8\u06eb\u06d8\u06d8\u06e1\u06e1\u06df\u06e2\u06e2\u06db\u06df\u06e8\u06e4\u06e6\u06d8\u06ec\u06db\u06e1\u06d8"

    goto/16 :goto_0

    :sswitch_28
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$OooO0OO;->OoooOoO:Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;

    invoke-static {v0, p1}, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->OooOoo0(Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;Landroid/view/View;)V

    const-string v0, "\u06e6\u06da\u06dc\u06d8\u06df\u06e7\u06db\u06e6\u06d6\u06dc\u06d6\u06d6\u06dc\u06d8\u06da\u06e2\u06dc\u06df\u06d6\u06e5\u06d7\u06e5\u06dc\u06e0\u06db\u06e2\u06d8\u06e7\u06d6\u06e0\u06e4\u06e0\u06d7\u06e4\u06e6\u06d8\u06e8\u06da\u06d8\u06da\u06e0\u06e5\u06e2\u06db\u06e5\u06e4\u06eb\u06d6\u06d8\u06e6\u06d6\u06eb"

    goto/16 :goto_0

    :sswitch_29
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$OooO0OO;->OoooOoO:Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-static {v0, v3}, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->OooOo0(Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;F)F

    const-string v0, "\u06d6\u06df\u06df\u06d7\u06e0\u06d8\u06d8\u06dc\u06df\u06d6\u06d6\u06df\u06d6\u06eb\u06d8\u06e6\u06d8\u06e4\u06da\u06df\u06df\u06e5\u06d8\u06e0\u06d7\u06e1\u06da\u06e8\u06eb\u06d9\u06e0\u06d6\u06d8\u06e8\u06dc\u06ec\u06dc\u06e7\u06da\u06dc\u06e1\u06e6\u06d8\u06db\u06ec\u06eb\u06ec\u06ec\u06e7\u06d9\u06da\u06e4\u06d8\u06d8\u06d8\u06dc\u06db\u06e6"

    goto/16 :goto_0

    :sswitch_2a
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$OooO0OO;->OoooOoO:Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-static {v0, v3}, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->OooOo(Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;F)F

    const-string v0, "\u06ec\u06d9\u06d7\u06d9\u06e7\u06e5\u06d8\u06d8\u06d9\u06d7\u06eb\u06e5\u06d7\u06eb\u06dc\u06e7\u06df\u06e5\u06eb\u06e6\u06da\u06df\u06eb\u06e1\u06e6\u06d7\u06d8\u06db\u06e6\u06e8\u06dc"

    goto/16 :goto_0

    :sswitch_2b
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$OooO0OO;->OoooOoO:Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;

    invoke-static {v0, v6}, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->OooOoO(Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;Z)Z

    const-string v0, "\u06eb\u06e0\u06d7\u06df\u06e7\u06d8\u06d8\u06db\u06d7\u06e5\u06d8\u06e2\u06da\u06d7\u06df\u06db\u06e1\u06d8\u06e6\u06db\u06e8\u06e1\u06e1\u06dc\u06d8\u06dc\u06eb\u06e6\u06d9\u06eb\u06db\u06e1\u06d6\u06e5\u06d8\u06d7\u06e5\u06dc\u06e2\u06e0\u06e6\u06d8\u06da\u06e5\u06e0\u06d7\u06d9\u06df\u06e5\u06e5\u06eb\u06df\u06e8\u06e7\u06d8\u06d8\u06e7\u06e1\u06e6\u06eb\u06d8\u06d8"

    goto/16 :goto_0

    :sswitch_2c
    const-string v0, "\u06df\u06dc\u06e7\u06d8\u06e1\u06e0\u06ec\u06e6\u06e8\u06d8\u06e8\u06e5\u06e5\u06d7\u06e7\u06e8\u06d8\u06da\u06d9\u06d8\u06d8\u06d7\u06d6\u06ec\u06d7\u06e8\u06d6\u06e1\u06e2\u06d8\u06df\u06db\u06d8\u06d8\u06df\u06e0\u06eb\u06e0\u06d7\u06ec\u06df\u06db\u06e8\u06d8\u06d7\u06df\u06e5\u06e0\u06dc\u06e8\u06e0\u06df\u06d8\u06d8\u06e5\u06eb\u06d8\u06d8\u06dc\u06e2\u06dc"

    goto/16 :goto_0

    :sswitch_2d
    const-string v0, "\u06e5\u06e4\u06e0\u06eb\u06df\u06e1\u06eb\u06dc\u06d8\u06eb\u06d9\u06e4\u06d8\u06d8\u06dc\u06e8\u06da\u06d9\u06db\u06eb\u06d6\u06d9\u06df\u06df\u06e7\u06e8\u06e2\u06e1\u06ec"

    goto/16 :goto_0

    :sswitch_2e
    const-string v0, "\u06ec\u06e0\u06da\u06df\u06df\u06e1\u06db\u06e4\u06d6\u06e1\u06e5\u06d8\u06d7\u06da\u06df\u06d7\u06d9\u06d8\u06d8\u06dc\u06e1\u06e4\u06dc\u06e0\u06e8\u06d8\u06d7\u06d9\u06da\u06e8\u06dc\u06d8\u06e2\u06dc\u06d8\u06d8\u06d8\u06ec"

    goto/16 :goto_0

    :sswitch_2f
    const-string v0, "\u06eb\u06e0\u06d7\u06df\u06e7\u06d8\u06d8\u06db\u06d7\u06e5\u06d8\u06e2\u06da\u06d7\u06df\u06db\u06e1\u06d8\u06e6\u06db\u06e8\u06e1\u06e1\u06dc\u06d8\u06dc\u06eb\u06e6\u06d9\u06eb\u06db\u06e1\u06d6\u06e5\u06d8\u06d7\u06e5\u06dc\u06e2\u06e0\u06e6\u06d8\u06da\u06e5\u06e0\u06d7\u06d9\u06df\u06e5\u06e5\u06eb\u06df\u06e8\u06e7\u06d8\u06d8\u06e7\u06e1\u06e6\u06eb\u06d8\u06d8"

    goto/16 :goto_0

    :sswitch_30
    return v6

    :sswitch_data_0
    .sparse-switch
        -0x60cb8223 -> :sswitch_30
        -0x58c7a0b5 -> :sswitch_2f
        -0x5876167a -> :sswitch_26
        -0x57564b91 -> :sswitch_2a
        -0x47a076c3 -> :sswitch_28
        -0x4631c221 -> :sswitch_0
        -0x44aaa482 -> :sswitch_2f
        -0x3d291e91 -> :sswitch_2
        -0x18654318 -> :sswitch_24
        0x1685b247 -> :sswitch_4
        0x28a6319e -> :sswitch_2f
        0x3640ccde -> :sswitch_25
        0x3c17a73c -> :sswitch_3
        0x402ed5d5 -> :sswitch_1c
        0x4700895a -> :sswitch_1
        0x53a88eb9 -> :sswitch_14
        0x55e668aa -> :sswitch_c
        0x5fa5bfc4 -> :sswitch_29
        0x62250933 -> :sswitch_2b
        0x786897e6 -> :sswitch_27
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x5c613c4c -> :sswitch_2e
        0x477fa5f9 -> :sswitch_5
        0x75b37bfe -> :sswitch_7
        0x7d113e25 -> :sswitch_b
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        -0x7dd6f929 -> :sswitch_a
        -0x2242659b -> :sswitch_6
        0x470be1fb -> :sswitch_9
        0x50f1c5e6 -> :sswitch_8
    .end sparse-switch

    :sswitch_data_3
    .sparse-switch
        -0x4873726a -> :sswitch_13
        -0x220dda46 -> :sswitch_f
        0x44083d25 -> :sswitch_d
        0x5e340e4c -> :sswitch_2d
    .end sparse-switch

    :sswitch_data_4
    .sparse-switch
        -0x6485c5b4 -> :sswitch_11
        -0x49c1bfc3 -> :sswitch_12
        -0x406d0894 -> :sswitch_10
        0x7c51b12f -> :sswitch_e
    .end sparse-switch

    :sswitch_data_5
    .sparse-switch
        -0x63c40fc5 -> :sswitch_15
        -0x1a388774 -> :sswitch_1a
        -0xc596077 -> :sswitch_1b
        0x4525f972 -> :sswitch_2c
    .end sparse-switch

    :sswitch_data_6
    .sparse-switch
        -0x2f2b5a75 -> :sswitch_18
        0x564aacd4 -> :sswitch_16
        0x5837e494 -> :sswitch_19
        0x63b4e13d -> :sswitch_17
    .end sparse-switch

    :sswitch_data_7
    .sparse-switch
        -0x2bfbb397 -> :sswitch_23
        -0x45c4a59 -> :sswitch_22
        0x5adcf96b -> :sswitch_1d
        0x6186eb23 -> :sswitch_2f
    .end sparse-switch

    :sswitch_data_8
    .sparse-switch
        -0x7537a462 -> :sswitch_20
        -0x48a66c0c -> :sswitch_1e
        -0x1be1e6cb -> :sswitch_21
        0x26cd61f3 -> :sswitch_1f
    .end sparse-switch
.end method
