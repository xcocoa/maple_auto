.class public Lcom/cyjh/elfin/ui/activity/SweepCodeActivity$OooO00o;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final OoooOoO:Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;


# direct methods
.method public constructor <init>(Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity$OooO00o;->OoooOoO:Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const-string v0, "\u06e2\u06da\u06eb\u06e5\u06e0\u06e1\u06d8\u06e6\u06eb\u06e1\u06d8\u06e4\u06d7\u06e5\u06d9\u06df\u06dc\u06e7\u06dc\u06d8\u06db\u06e6\u06e5\u06d8\u06dc\u06d9\u06df\u06d9\u06df\u06e1\u06d7\u06d6\u06d6\u06d7\u06da\u06e5\u06e5\u06d9\u06e5"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0xf2

    xor-int/2addr v1, v2

    xor-int/lit8 v1, v1, 0x59

    const/16 v2, 0x311

    const v3, 0x7bb0745c

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d6\u06e0\u06e6\u06d8\u06da\u06d8\u06d6\u06ec\u06e0\u06e0\u06e1\u06e0\u06dc\u06d8\u06e1\u06e5\u06e7\u06e8\u06e1\u06e2\u06d6\u06d7\u06d6\u06d8\u06df\u06e2\u06dc\u06eb\u06eb\u06e5\u06d8\u06d7\u06e2\u06e8"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06df\u06ec\u06eb\u06e1\u06ec\u06e6\u06ec\u06e1\u06ec\u06db\u06df\u06e0\u06e4\u06da\u06ec\u06eb\u06e1\u06da\u06d9\u06e2\u06eb\u06dc\u06d8\u06d6\u06e2\u06e2\u06eb\u06df\u06e2\u06e8\u06db\u06e6\u06e8\u06df\u06e1\u06db\u06da\u06e5\u06e7\u06e8\u06da\u06da"

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity$OooO00o;->OoooOoO:Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;

    invoke-virtual {v0}, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->OooOOo0()V

    const-string v0, "\u06d8\u06ec\u06e7\u06ec\u06e6\u06df\u06e2\u06df\u06d6\u06d8\u06e6\u06d8\u06d8\u06ec\u06dc\u06e7\u06d6\u06e1\u06e8\u06e6\u06d9\u06e0\u06e8\u06ec\u06e5\u06d8\u06da\u06e4\u06e5\u06db\u06d7\u06e5\u06d8\u06d8\u06e2\u06e8\u06ec\u06e4\u06d6\u06d8\u06e2\u06da\u06d7\u06eb\u06ec\u06da"

    goto :goto_0

    :sswitch_3
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5c95dc29 -> :sswitch_3
        -0x4c4c5249 -> :sswitch_0
        0x48fd502c -> :sswitch_2
        0x7fb55b03 -> :sswitch_1
    .end sparse-switch
.end method
