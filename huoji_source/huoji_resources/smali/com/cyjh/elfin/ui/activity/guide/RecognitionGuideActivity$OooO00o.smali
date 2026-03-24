.class public Lcom/cyjh/elfin/ui/activity/guide/RecognitionGuideActivity$OooO00o;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/elfin/ui/activity/guide/RecognitionGuideActivity;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final OoooOoO:Lcom/cyjh/elfin/ui/activity/guide/RecognitionGuideActivity;


# direct methods
.method public constructor <init>(Lcom/cyjh/elfin/ui/activity/guide/RecognitionGuideActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/cyjh/elfin/ui/activity/guide/RecognitionGuideActivity$OooO00o;->OoooOoO:Lcom/cyjh/elfin/ui/activity/guide/RecognitionGuideActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const-string v0, "\u06d6\u06d8\u06e2\u06dc\u06d7\u06eb\u06d9\u06d7\u06da\u06d7\u06e4\u06e7\u06e4\u06db\u06e0\u06df\u06da\u06e2\u06e1\u06e0\u06e4\u06d9\u06d7\u06e7\u06e2\u06da\u06e0\u06e7\u06db\u06d8\u06e8\u06db\u06ec\u06e0\u06d8\u06d6\u06d8\u06df\u06e0\u06d6\u06d9\u06d7\u06e7\u06d9\u06e0\u06df\u06eb\u06e4\u06db"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x248

    xor-int/2addr v1, v2

    xor-int/lit8 v1, v1, 0x0

    const/16 v2, 0x2d8

    const v3, 0x19d58802

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e1\u06e6\u06dc\u06d8\u06e2\u06e4\u06e6\u06d8\u06e2\u06d8\u06e1\u06d8\u06df\u06e2\u06d7\u06d7\u06d7\u06ec\u06d8\u06ec\u06d8\u06e2\u06e6\u06e2\u06e6\u06db\u06e5\u06d8\u06dc\u06e4\u06e7\u06db\u06ec\u06e2\u06d8\u06e8\u06ec\u06e4\u06e5\u06e5\u06df\u06e2\u06d6\u06dc\u06da\u06d6\u06d9\u06d8\u06e8\u06d8\u06d8\u06e2\u06d9\u06e4\u06d9\u06dc\u06d8\u06e7\u06e4\u06d9"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06d7\u06e4\u06dc\u06d8\u06d6\u06d7\u06e2\u06df\u06eb\u06e4\u06d8\u06d8\u06e6\u06d8\u06e7\u06da\u06d7\u06e6\u06d8\u06da\u06e8\u06e6\u06d8\u06e6\u06e8\u06d6\u06d8\u06e2\u06db\u06e4\u06e8\u06e5\u06e2\u06dc\u06e4\u06e5\u06d8\u06e6\u06e8\u06e1\u06d8\u06db\u06e2\u06e4\u06e1\u06dc\u06d8\u06eb\u06d6\u06d9\u06ec\u06e0\u06e0\u06eb\u06d9\u06db\u06e0\u06e5\u06d8\u06d8"

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/guide/RecognitionGuideActivity$OooO00o;->OoooOoO:Lcom/cyjh/elfin/ui/activity/guide/RecognitionGuideActivity;

    invoke-static {v0}, Lcom/cyjh/elfin/ui/activity/guide/RecognitionGuideActivity;->OooO0oO(Lcom/cyjh/elfin/ui/activity/guide/RecognitionGuideActivity;)V

    const-string v0, "\u06dc\u06eb\u06e6\u06d8\u06d6\u06e2\u06ec\u06e2\u06df\u06e8\u06d8\u06df\u06e0\u06e7\u06e5\u06e6\u06da\u06e7\u06db\u06d8\u06d8\u06d8\u06e1\u06e1\u06d8\u06d6\u06e7\u06df\u06df\u06ec\u06d9\u06e5\u06d7\u06da\u06e0\u06e2\u06ec\u06ec\u06d8\u06db\u06e6\u06e1\u06e7\u06d6\u06e2\u06e1\u06d6\u06d9\u06d8\u06d8\u06d8\u06db\u06da\u06e5\u06d9\u06e1\u06d8\u06e8"

    goto :goto_0

    :sswitch_3
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x61e8cfac -> :sswitch_1
        0x3df2411c -> :sswitch_3
        0x51a4f2d7 -> :sswitch_0
        0x74123bac -> :sswitch_2
    .end sparse-switch
.end method
