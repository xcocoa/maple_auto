.class public Lcom/cyjh/elfin/ui/activity/FeedbackActivity$OooO00o;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cyjh/elfin/ui/view/customview/TitleView$OooO0O0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/elfin/ui/activity/FeedbackActivity;->OooO0oO()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final OooO00o:Lcom/cyjh/elfin/ui/activity/FeedbackActivity;


# direct methods
.method public constructor <init>(Lcom/cyjh/elfin/ui/activity/FeedbackActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/cyjh/elfin/ui/activity/FeedbackActivity$OooO00o;->OooO00o:Lcom/cyjh/elfin/ui/activity/FeedbackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const-string v0, "\u06eb\u06df\u06e6\u06e8\u06d8\u06e0\u06db\u06ec\u06d7\u06db\u06e0\u06d6\u06e8\u06d9\u06df\u06e5\u06e0\u06eb\u06e4\u06e4\u06dc\u06e4\u06d7\u06da\u06db\u06e5\u06df\u06eb\u06d8\u06d8\u06e1\u06e5\u06e1\u06d8\u06da\u06e2\u06e7\u06dc\u06e5\u06e5\u06d8\u06e2\u06d8\u06dc\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x1b0

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0xa7

    const/16 v2, 0x37f

    const v3, 0x6029ade8

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06db\u06e0\u06e8\u06e8\u06e4\u06e6\u06ec\u06d7\u06dc\u06da\u06d6\u06e5\u06d8\u06e5\u06da\u06e2\u06eb\u06d7\u06e8\u06d8\u06d9\u06da\u06e5\u06df\u06d8\u06d8\u06e2\u06d9\u06df\u06eb\u06df\u06ec\u06e7\u06d6\u06e5\u06ec\u06db\u06d6\u06eb\u06ec\u06d8\u06d8\u06d9\u06d6\u06d8\u06d8"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06e5\u06e5\u06e4\u06df\u06d8\u06e7\u06e2\u06e0\u06e2\u06e7\u06d8\u06dc\u06df\u06e1\u06e6\u06e4\u06e5\u06e7\u06d8\u06df\u06e0\u06e7\u06ec\u06e1\u06e2\u06eb\u06e4\u06da\u06e1\u06e0\u06dc"

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/FeedbackActivity$OooO00o;->OooO00o:Lcom/cyjh/elfin/ui/activity/FeedbackActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->onBackPressed()V

    const-string v0, "\u06e5\u06e8\u06e5\u06d8\u06e7\u06e8\u06e1\u06d8\u06e5\u06da\u06df\u06eb\u06ec\u06da\u06e1\u06e5\u06e6\u06ec\u06e5\u06ec\u06d7\u06d7\u06e8\u06df\u06e6\u06e0\u06e0\u06d8\u06e8\u06d8\u06d9\u06d8\u06e7\u06d8\u06da\u06e6\u06eb\u06e2\u06ec\u06eb\u06da\u06e1\u06e5\u06e4\u06e4\u06e1\u06dc\u06dc\u06e4\u06e7\u06e2\u06d7\u06e1\u06e1\u06e6\u06e2"

    goto :goto_0

    :sswitch_3
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x1151b0b8 -> :sswitch_2
        0x1ea200a -> :sswitch_1
        0x402c0306 -> :sswitch_0
        0x7bd2e630 -> :sswitch_3
    .end sparse-switch
.end method
