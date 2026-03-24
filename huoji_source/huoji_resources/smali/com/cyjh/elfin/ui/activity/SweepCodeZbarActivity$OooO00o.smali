.class public Lcom/cyjh/elfin/ui/activity/SweepCodeZbarActivity$OooO00o;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/elfin/ui/activity/SweepCodeZbarActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final OooO00o:Lcom/cyjh/elfin/ui/activity/SweepCodeZbarActivity;


# direct methods
.method public constructor <init>(Lcom/cyjh/elfin/ui/activity/SweepCodeZbarActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeZbarActivity$OooO00o;->OooO00o:Lcom/cyjh/elfin/ui/activity/SweepCodeZbarActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 5

    const/4 v1, 0x0

    const-string v0, "\u06e6\u06e5\u06e5\u06d8\u06d9\u06e7\u06d7\u06e7\u06e1\u06df\u06e7\u06e0\u06d7\u06e7\u06d7\u06db\u06d7\u06d9\u06db\u06e5\u06d7\u06ec\u06df\u06e6\u06dc\u06e7\u06df\u06d9\u06d7\u06e6\u06d6\u06e0\u06e0\u06eb\u06e7\u06db\u06e7"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v3, 0x117

    xor-int/2addr v2, v3

    xor-int/lit16 v2, v2, 0x1c8

    const/16 v3, 0x39a

    const v4, 0x4b39674b    # 1.2150603E7f

    xor-int/2addr v2, v3

    xor-int/2addr v2, v4

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e0\u06d6\u06e2\u06ec\u06da\u06e5\u06e6\u06df\u06df\u06e1\u06e0\u06d6\u06db\u06da\u06e6\u06d8\u06df\u06e0\u06e6\u06d8\u06d9\u06db\u06e8\u06eb\u06e0\u06e7\u06e4\u06d7\u06dc\u06e2\u06e0\u06e1\u06d8\u06dc\u06e7\u06d8\u06d8\u06e2\u06d8\u06e1\u06d8\u06e7\u06e4\u06d8\u06d8\u06d6\u06e5\u06e7\u06dc\u06eb\u06e8\u06ec\u06e7\u06e1\u06df\u06da\u06e5\u06e6\u06e4\u06d7"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06e2\u06e7\u06d6\u06d8\u06da\u06e6\u06df\u06dc\u06d7\u06dc\u06e2\u06eb\u06e8\u06e0\u06e6\u06dc\u06e5\u06d6\u06dc\u06e0\u06e1\u06df\u06e6\u06ec\u06d8\u06df\u06d6\u06d9\u06d8\u06e1\u06d6\u06e2\u06db\u06e5\u06d8\u06ec\u06d8\u06d8\u06ec\u06db\u06e4\u06e8\u06d6\u06e2"

    goto :goto_0

    :sswitch_2
    const-string v0, "\u06d9\u06dc\u06e0\u06e8\u06d9\u06da\u06dc\u06e0\u06e2\u06e6\u06e6\u06e6\u06da\u06df\u06e5\u06e2\u06db\u06e6\u06d8\u06df\u06ec\u06eb\u06e4\u06e1\u06d7\u06d9\u06e4\u06d7\u06d7\u06e8\u06e4\u06e5\u06eb\u06e7\u06d9\u06e4\u06db\u06da\u06eb\u06e7\u06e5\u06e8\u06d7"

    goto :goto_0

    :sswitch_3
    iget-object v1, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeZbarActivity$OooO00o;->OooO00o:Lcom/cyjh/elfin/ui/activity/SweepCodeZbarActivity;

    const-string v0, "\u06dc\u06e6\u06d8\u06eb\u06e5\u06da\u06e4\u06e2\u06d8\u06d8\u06e7\u06e8\u06d6\u06d8\u06d8\u06e7\u06e7\u06e1\u06e0\u06eb\u06e4\u06d8\u06d8\u06d6\u06dc\u06df\u06db\u06eb\u06d6\u06e2\u06e5\u06db\u06e7\u06d6\u06da\u06d8\u06e4\u06e2\u06e5\u06e4\u06eb\u06e5\u06d9\u06da"

    goto :goto_0

    :sswitch_4
    invoke-static {v1}, Lcom/cyjh/elfin/ui/activity/SweepCodeZbarActivity;->OooO0oO(Lcom/cyjh/elfin/ui/activity/SweepCodeZbarActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v1, p1, p2, v0}, Lcom/cyjh/elfin/ui/activity/SweepCodeZbarActivity;->OooOOO([BLandroid/hardware/Camera;Landroid/view/View;)V

    const-string v0, "\u06d6\u06e1\u06eb\u06d7\u06db\u06df\u06e0\u06db\u06e6\u06e7\u06df\u06d9\u06e4\u06e6\u06d9\u06ec\u06df\u06da\u06e4\u06e0\u06e4\u06ec\u06e2\u06e4\u06da\u06df\u06d6\u06d8\u06d7\u06eb\u06e7\u06e5\u06e8\u06e5\u06d8\u06d9\u06e6\u06e2\u06eb\u06da\u06dc\u06d8\u06ec\u06eb\u06e6\u06d8\u06db\u06e8\u06e4\u06d8\u06e0\u06e6\u06d8"

    goto :goto_0

    :sswitch_5
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7786f3ab -> :sswitch_5
        -0x5c6fc4fd -> :sswitch_1
        -0x5a7ded37 -> :sswitch_0
        -0x56223351 -> :sswitch_2
        0x23ade109 -> :sswitch_3
        0x346185fd -> :sswitch_4
    .end sparse-switch
.end method
