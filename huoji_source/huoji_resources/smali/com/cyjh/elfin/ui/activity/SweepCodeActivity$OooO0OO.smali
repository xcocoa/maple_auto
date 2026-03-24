.class public Lcom/cyjh/elfin/ui/activity/SweepCodeActivity$OooO0OO;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cyjh/elfin/ui/view/customview/TitleView$OooO0O0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OooO0OO"
.end annotation


# instance fields
.field public final OooO00o:Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;


# direct methods
.method private constructor <init>(Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity$OooO0OO;->OooO00o:Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;Lcom/cyjh/elfin/ui/activity/SweepCodeActivity$OooO00o;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity$OooO0OO;-><init>(Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const-string v0, "\u06e5\u06e0\u06df\u06ec\u06e2\u06e8\u06e2\u06d6\u06ec\u06e6\u06d7\u06d8\u06d8\u06e6\u06d6\u06e8\u06e1\u06eb\u06dc\u06d8\u06df\u06e6\u06d8\u06d8\u06d7\u06d7\u06ec\u06d6\u06df\u06d6\u06d9\u06e1\u06e8\u06d8\u06d6\u06e1\u06d6\u06d8\u06d6\u06ec\u06e8\u06d8\u06df\u06eb\u06e1\u06d8\u06db\u06d7\u06d9\u06d8\u06db\u06e2\u06da\u06da\u06eb"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x208

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x128

    const/16 v2, 0x303

    const v3, 0x791294c2

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d7\u06e6\u06e1\u06db\u06db\u06ec\u06da\u06df\u06e7\u06dc\u06e0\u06ec\u06e2\u06e5\u06da\u06eb\u06e4\u06da\u06e8\u06e6\u06e8\u06d8\u06df\u06d9\u06ec\u06eb\u06e8\u06e6\u06e8\u06e0\u06e6"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06e1\u06ec\u06df\u06e2\u06e8\u06dc\u06d8\u06df\u06dc\u06d6\u06ec\u06d7\u06e6\u06d9\u06e7\u06e4\u06d9\u06e5\u06e7\u06e2\u06e5\u06e0\u06eb\u06ec\u06e4\u06da\u06ec\u06da\u06e0\u06eb\u06e8\u06d8\u06d6\u06e6\u06dc\u06d8\u06e7\u06df\u06e7\u06e1\u06e1\u06e2\u06d9\u06da\u06e7"

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity$OooO0OO;->OooO00o:Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    const-string v0, "\u06db\u06e7\u06e5\u06e8\u06e6\u06eb\u06d9\u06e5\u06d6\u06ec\u06db\u06e5\u06d8\u06e8\u06e1\u06da\u06e4\u06e5\u06e8\u06da\u06d8\u06db\u06e5\u06eb\u06e0\u06d6\u06da\u06d6\u06d8\u06eb\u06d9\u06dc\u06d6\u06e2\u06db\u06e5\u06e5\u06e8\u06d8\u06dc\u06e4\u06e1\u06e0\u06e8\u06d9\u06e1\u06d9\u06e6\u06d6\u06e4\u06d9"

    goto :goto_0

    :sswitch_3
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x654a189a -> :sswitch_2
        0x3d7780b1 -> :sswitch_0
        0x496029c6 -> :sswitch_3
        0x61cfed3e -> :sswitch_1
    .end sparse-switch
.end method
