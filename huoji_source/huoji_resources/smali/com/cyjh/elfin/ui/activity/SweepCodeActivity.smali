.class public Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;
.super Lcom/cyjh/common/base/activity/BaseActivity;

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyjh/elfin/ui/activity/SweepCodeActivity$OooO0OO;
    }
.end annotation


# static fields
.field public static final o00oO0O:Ljava/lang/String; = "SWEEP_RESULT_BACK"

.field private static final o0ooOO0:F = 0.5f

.field private static final o0ooOOo:J = 0xc8L


# instance fields
.field private OooooO0:Landroid/widget/RelativeLayout;

.field private OooooOO:Landroid/widget/RelativeLayout;

.field private OooooOo:Landroid/widget/ImageView;

.field private Oooooo:Lz2/pv;

.field private Oooooo0:Lcom/zbar/zbar/decode/CaptureActivityHandler;

.field private OoooooO:Z

.field private Ooooooo:Z

.field private o00O0O:Landroid/media/MediaPlayer;

.field private o00Oo0:I

.field private o00Ooo:I

.field private o00o0O:I

.field private final o00oO0o:Landroid/media/MediaPlayer$OnCompletionListener;

.field private o00ooo:I

.field private o0OoOo0:Z

.field public oo000o:Z

.field private ooOO:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/cyjh/common/base/activity/BaseActivity;-><init>()V

    iput-object v1, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->OooooO0:Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->OooooOO:Landroid/widget/RelativeLayout;

    iput-boolean v0, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->OoooooO:Z

    iput v0, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->o00Oo0:I

    iput v0, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->o00Ooo:I

    iput v0, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->o00o0O:I

    iput v0, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->o00ooo:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->oo000o:Z

    new-instance v0, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity$OooO0O0;

    invoke-direct {v0, p0}, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity$OooO0O0;-><init>(Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;)V

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->o00oO0o:Landroid/media/MediaPlayer$OnCompletionListener;

    return-void
.end method

.method private OooOOO(Landroid/view/SurfaceHolder;)V
    .locals 5

    :try_start_0
    invoke-static {}, Lz2/jv;->OooO0O0()Lz2/jv;

    move-result-object v0

    invoke-virtual {v0, p1}, Lz2/jv;->OooO0o(Landroid/view/SurfaceHolder;)V

    invoke-static {}, Lz2/jv;->OooO0O0()Lz2/jv;

    move-result-object v0

    invoke-virtual {v0}, Lz2/jv;->OooO0OO()Landroid/graphics/Point;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Point;->y:I

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->OooooOO:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getLeft()I

    move-result v2

    mul-int/2addr v2, v1

    iget-object v3, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->OooooO0:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v3

    div-int/2addr v2, v3

    iget-object v3, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->OooooOO:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getTop()I

    move-result v3

    mul-int/2addr v3, v0

    iget-object v4, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->OooooO0:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v4

    div-int/2addr v3, v4

    iget-object v4, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->OooooOO:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v4

    mul-int/2addr v1, v4

    iget-object v4, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->OooooO0:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v4

    div-int/2addr v1, v4

    iget-object v4, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->OooooOO:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v4

    mul-int/2addr v0, v4

    iget-object v4, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->OooooO0:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v4

    div-int/2addr v0, v4

    invoke-virtual {p0, v2}, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->OooOo0o(I)V

    invoke-virtual {p0, v3}, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->OooOo(I)V

    invoke-virtual {p0, v1}, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->OooOo0(I)V

    invoke-virtual {p0, v0}, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->OooOo00(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->OooOo0O(Z)V

    const v1, -0x1e1748a5

    const-string v0, "\u06d9\u06d6\u06ec\u06d6\u06d8\u06e0\u06e7\u06e4\u06d6\u06d8\u06e5\u06e7\u06df\u06e0\u06d6\u06d8\u06eb\u06d7\u06e6\u06d8\u06d9\u06da\u06e0\u06e0\u06e5\u06e7\u06d6\u06eb\u06dc\u06e0\u06e7\u06d9\u06da\u06df\u06e6\u06d9\u06d7\u06e6\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v2, v1

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :goto_1
    :sswitch_0
    return-void

    :sswitch_1
    const-string v0, "\u06db\u06db\u06e8\u06da\u06dc\u06d8\u06e7\u06e4\u06d8\u06d8\u06e5\u06d6\u06e4\u06dc\u06eb\u06e0\u06e8\u06e1\u06d8\u06d8\u06e8\u06d6\u06e7\u06d8\u06d8\u06e2\u06ec\u06d9\u06db\u06e1\u06d8\u06eb\u06eb\u06e1\u06e2\u06dc\u06e7\u06d8\u06e0\u06d9\u06dc\u06db\u06d8\u06e5\u06d8\u06dc\u06ec\u06e1\u06d8\u06eb\u06d8\u06d8\u06e0\u06ec\u06da\u06e1\u06ec\u06df"

    goto :goto_0

    :sswitch_2
    const v2, 0x6a9eff39

    const-string v0, "\u06d9\u06db\u06e1\u06e7\u06d9\u06db\u06ec\u06e8\u06e0\u06e0\u06eb\u06e5\u06e1\u06da\u06e1\u06d7\u06e6\u06df\u06e2\u06d6\u06d8\u06d8\u06df\u06d8\u06e7\u06db\u06d8\u06d8\u06e2\u06e1\u06d8\u06d8\u06df\u06df\u06db\u06e1\u06d8\u06d8\u06dc\u06e4\u06e1\u06d8\u06da\u06d9\u06e0\u06d7\u06d8\u06ec\u06e7\u06e1\u06e4"

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v2

    sparse-switch v3, :sswitch_data_1

    goto :goto_2

    :sswitch_3
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->Oooooo0:Lcom/zbar/zbar/decode/CaptureActivityHandler;

    if-nez v0, :cond_0

    const-string v0, "\u06ec\u06d9\u06d9\u06d9\u06d9\u06e1\u06e2\u06e4\u06e4\u06d7\u06d7\u06d8\u06d8\u06e1\u06dc\u06d6\u06df\u06dc\u06e5\u06d9\u06db\u06e1\u06e2\u06ec\u06dc\u06e5\u06e2\u06e0\u06eb\u06e0\u06d6"

    goto :goto_2

    :cond_0
    const-string v0, "\u06d8\u06e8\u06e4\u06ec\u06d7\u06ec\u06e1\u06db\u06e0\u06d6\u06d6\u06d8\u06e2\u06db\u06d6\u06da\u06eb\u06e1\u06db\u06e7\u06e6\u06d8\u06e8\u06e8\u06d8\u06e8\u06d6\u06e8\u06d6\u06e7\u06eb\u06e7\u06e6\u06d6\u06df\u06ec\u06e6\u06e1\u06e2\u06eb\u06e0\u06e8\u06e0\u06d9\u06e2\u06d8\u06dc\u06d7\u06d7"

    goto :goto_2

    :sswitch_4
    const-string v0, "\u06ec\u06e2\u06d9\u06db\u06d8\u06e0\u06da\u06da\u06e2\u06eb\u06d7\u06e6\u06e7\u06e0\u06dc\u06d8\u06d9\u06e0\u06d9\u06df\u06d9\u06eb\u06e4\u06e6\u06d8\u06e1\u06db\u06d6\u06e4\u06e6\u06eb"

    goto :goto_2

    :sswitch_5
    const-string v0, "\u06df\u06e5\u06d6\u06d8\u06e2\u06d6\u06e1\u06e8\u06e4\u06e5\u06d6\u06e2\u06d6\u06dc\u06ec\u06e2\u06df\u06e0\u06da\u06dc\u06e1\u06d8\u06d6\u06e1\u06dc\u06d8\u06e1\u06dc\u06e1\u06d8\u06e4\u06e1\u06e4\u06da\u06e0\u06df\u06e1\u06eb\u06db\u06da\u06d6\u06dc\u06d8\u06dc\u06db\u06d8"
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :sswitch_6
    const-string v0, "\u06dc\u06e6\u06e0\u06ec\u06db\u06e5\u06e4\u06e8\u06e1\u06e0\u06e8\u06d8\u06e4\u06d8\u06e1\u06da\u06d7\u06dc\u06d8\u06eb\u06e5\u06eb\u06d8\u06e7\u06e1\u06db\u06df\u06e7\u06e8\u06e6\u06dc\u06d8\u06dc\u06db\u06dc\u06e2\u06dc\u06d7\u06e6\u06d8\u06ec\u06e2\u06d8\u06d8\u06e1\u06db\u06e5\u06e8\u06e4\u06d6\u06e6\u06db\u06d8\u06e5\u06da"

    goto :goto_0

    :sswitch_7
    new-instance v0, Lcom/zbar/zbar/decode/CaptureActivityHandler;

    invoke-direct {v0, p0}, Lcom/zbar/zbar/decode/CaptureActivityHandler;-><init>(Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;)V

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->Oooooo0:Lcom/zbar/zbar/decode/CaptureActivityHandler;

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        -0x6897da5d -> :sswitch_7
        -0x2538e737 -> :sswitch_2
        -0x6d58dc6 -> :sswitch_6
        0x693cad32 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x51a48d8a -> :sswitch_3
        0x65f09c5c -> :sswitch_1
        0x7ba19c52 -> :sswitch_4
        0x7e17beae -> :sswitch_5
    .end sparse-switch
.end method

.method private OooOOO0()V
    .locals 7

    const/4 v4, 0x3

    const v1, -0x6a26de4a

    const-string v0, "\u06ec\u06e6\u06d8\u06db\u06eb\u06dc\u06d8\u06eb\u06eb\u06e1\u06d8\u06e6\u06e7\u06d9\u06e8\u06e5\u06eb\u06e5\u06e1\u06d6\u06d8\u06df\u06d6\u06dc\u06e0\u06e5\u06e6\u06d8\u06dc\u06e5\u06dc\u06e7\u06e1\u06da\u06e5\u06df\u06e0\u06e4\u06d6\u06da\u06eb\u06d6\u06d6\u06d8\u06d6\u06ec"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v2, v1

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const v1, 0x30b58903

    const-string v0, "\u06df\u06dc\u06dc\u06d8\u06d6\u06e7\u06dc\u06d8\u06e7\u06e1\u06e7\u06e2\u06dc\u06e0\u06ec\u06df\u06dc\u06d8\u06d9\u06d7\u06dc\u06d6\u06d7\u06e2\u06d7\u06d6\u06db\u06e8\u06df\u06d6\u06d8\u06d6\u06e8\u06e6\u06d8"

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v2, v1

    sparse-switch v2, :sswitch_data_1

    goto :goto_1

    :sswitch_1
    const-string v0, "\u06e1\u06dc\u06e0\u06df\u06e8\u06d8\u06e2\u06e8\u06d8\u06d8\u06ec\u06e0\u06ec\u06e1\u06da\u06e2\u06e1\u06e7\u06df\u06db\u06d9\u06e4\u06db\u06d7\u06d8\u06e7\u06e8\u06d8\u06da\u06dc\u06e5\u06d8\u06e2\u06e6\u06e4\u06d8\u06e6\u06e2\u06ec\u06e6\u06e5\u06d8\u06e5\u06df"

    goto :goto_1

    :sswitch_2
    const-string v0, "\u06e6\u06da\u06db\u06e0\u06ec\u06e5\u06d8\u06d9\u06e7\u06e2\u06d9\u06e0\u06da\u06da\u06e0\u06e8\u06e8\u06da\u06d6\u06e7\u06e2\u06e1\u06e2\u06e5\u06df\u06d8\u06db\u06db\u06e5\u06db\u06df\u06ec\u06db\u06d9\u06dc\u06d8"

    goto :goto_0

    :sswitch_3
    const v2, -0x46266a17

    const-string v0, "\u06e0\u06e8\u06d6\u06d8\u06e6\u06e2\u06e0\u06e4\u06e6\u06d7\u06da\u06e1\u06e4\u06d9\u06d7\u06da\u06d6\u06e8\u06e2\u06dc\u06e4\u06e8\u06d8\u06dc\u06e4\u06db\u06e7\u06e5\u06e1\u06d8\u06e6\u06e7\u06e1\u06e5\u06d7\u06df\u06e2\u06e1\u06e7\u06e8\u06e7\u06e4\u06e5\u06d7\u06d7\u06e7\u06db\u06df\u06eb\u06d7\u06e2"

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v2

    sparse-switch v3, :sswitch_data_2

    goto :goto_2

    :sswitch_4
    const-string v0, "\u06d6\u06d8\u06e1\u06d8\u06d6\u06eb\u06e4\u06dc\u06d8\u06ec\u06e1\u06d6\u06db\u06e2\u06e5\u06e6\u06d8\u06e6\u06e2\u06dc\u06df\u06e4\u06e2\u06e5\u06e2\u06ec\u06e5\u06e1\u06d7\u06e4\u06d7\u06e5\u06e4\u06d7\u06df\u06eb\u06d9\u06e6\u06d8\u06e5\u06e0\u06e5\u06d8\u06eb\u06e4\u06e8\u06d8\u06d8\u06e4\u06e6\u06e2\u06e4\u06d6\u06d8\u06e5\u06e5\u06d6\u06e6\u06da\u06e2"

    goto :goto_0

    :cond_0
    const-string v0, "\u06e4\u06e5\u06e8\u06d8\u06e5\u06e7\u06e5\u06dc\u06df\u06d9\u06e0\u06e8\u06e1\u06d9\u06e7\u06df\u06dc\u06e0\u06dc\u06d8\u06db\u06eb\u06d6\u06e7\u06e1\u06e7\u06d8\u06d7\u06ec\u06e4\u06e1\u06e5\u06d7\u06dc\u06d7\u06e1\u06e7\u06e2\u06e5\u06d8\u06e6\u06eb\u06df\u06d8\u06db"

    goto :goto_2

    :sswitch_5
    iget-boolean v0, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->o0OoOo0:Z

    if-eqz v0, :cond_0

    const-string v0, "\u06d9\u06d9\u06dc\u06e4\u06d7\u06e5\u06d8\u06e0\u06d6\u06e1\u06d6\u06e0\u06e1\u06d8\u06e7\u06e6\u06e8\u06d8\u06e5\u06e2\u06d6\u06d8\u06df\u06eb\u06eb\u06df\u06e8\u06da\u06da\u06e0\u06e1\u06da\u06e4\u06e5\u06d9\u06e5\u06e8\u06e7\u06d7\u06e6\u06d8\u06e7\u06d8\u06d8\u06df\u06d7\u06e6\u06d8"

    goto :goto_2

    :sswitch_6
    const-string v0, "\u06e1\u06d7\u06e6\u06d8\u06db\u06dc\u06e2\u06e8\u06e6\u06e5\u06eb\u06e8\u06df\u06e7\u06eb\u06e6\u06df\u06eb\u06e8\u06d8\u06e8\u06e7\u06e2\u06ec\u06e6\u06eb\u06ec\u06e7\u06df\u06d6\u06db\u06d8\u06d8\u06e2\u06d6\u06eb\u06d7\u06da\u06ec\u06e1\u06d9\u06e4\u06e0\u06e7\u06e6\u06d8\u06eb\u06e4\u06e5\u06da\u06d8\u06e5\u06d8"

    goto :goto_2

    :sswitch_7
    const-string v0, "\u06e2\u06e5\u06e1\u06d8\u06d8\u06e1\u06db\u06e1\u06e5\u06e8\u06e5\u06db\u06e5\u06d6\u06dc\u06e8\u06e8\u06df\u06e4\u06e5\u06e8\u06db\u06e7\u06d8\u06d7\u06e1\u06ec\u06eb\u06d7\u06e6\u06e6\u06d8"

    goto :goto_0

    :sswitch_8
    const-string v0, "\u06d6\u06e7\u06d8\u06d8\u06db\u06d6\u06d7\u06e7\u06e8\u06e1\u06dc\u06dc\u06d6\u06d8\u06ec\u06df\u06e5\u06e0\u06e2\u06db\u06e8\u06e4\u06e8\u06e8\u06e0\u06d6\u06e7\u06e2\u06d6\u06d8\u06e6\u06eb\u06e6\u06d8\u06e7\u06d8\u06d6\u06db\u06d8\u06db\u06d6\u06da\u06ec\u06ec\u06e4\u06e8\u06d8\u06d9\u06ec\u06d7\u06e6\u06df\u06ec\u06d7\u06e7\u06d8\u06e0\u06d8\u06e5\u06d8"

    goto :goto_1

    :sswitch_9
    const v2, -0x61d18c96

    const-string v0, "\u06d7\u06e7\u06e8\u06e8\u06da\u06d6\u06e1\u06e8\u06da\u06e6\u06e8\u06d8\u06e4\u06d7\u06dc\u06eb\u06e0\u06e7\u06dc\u06dc\u06e7\u06e1\u06d6\u06dc\u06e1\u06d9\u06da\u06e0\u06df\u06e6\u06d8"

    :goto_3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v2

    sparse-switch v3, :sswitch_data_3

    goto :goto_3

    :sswitch_a
    const-string v0, "\u06e7\u06e5\u06e1\u06d8\u06dc\u06d6\u06d6\u06e6\u06db\u06e1\u06ec\u06d8\u06e6\u06eb\u06d8\u06d8\u06da\u06e5\u06dc\u06d8\u06e6\u06eb\u06e7\u06e8\u06ec\u06d6\u06db\u06dc\u06d9\u06da\u06e8\u06e2\u06da\u06db\u06e8\u06e4\u06ec\u06e5\u06da\u06e6\u06df\u06da\u06e5\u06dc\u06d8\u06e5\u06e7\u06ec\u06d6\u06e2\u06da"

    goto :goto_1

    :cond_1
    const-string v0, "\u06e5\u06e4\u06ec\u06d9\u06e5\u06db\u06e0\u06da\u06eb\u06d8\u06e7\u06d8\u06e7\u06df\u06d6\u06d8\u06d6\u06e2\u06dc\u06db\u06d8\u06ec\u06d9\u06ec\u06e1\u06eb\u06e7\u06e6\u06d8\u06e0\u06df\u06e4\u06eb\u06d6\u06db\u06da\u06db\u06e5\u06d8\u06e5\u06d7\u06e6\u06d8\u06e1\u06d7\u06d7"

    goto :goto_3

    :sswitch_b
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->o00O0O:Landroid/media/MediaPlayer;

    if-nez v0, :cond_1

    const-string v0, "\u06d9\u06df\u06e0\u06e8\u06e4\u06d6\u06d8\u06e0\u06d6\u06dc\u06d9\u06e1\u06d6\u06d8\u06e1\u06e2\u06e0\u06e8\u06e6\u06dc\u06e7\u06e2\u06e8\u06d8\u06da\u06e2\u06df\u06e6\u06ec\u06df\u06e2\u06e7\u06e8\u06e0\u06df\u06e5\u06d8\u06dc\u06d7\u06e1\u06dc\u06db\u06e4\u06d6\u06dc\u06d6\u06d8\u06dc\u06da\u06e5\u06df\u06d9\u06e4"

    goto :goto_3

    :sswitch_c
    const-string v0, "\u06d7\u06ec\u06e1\u06ec\u06dc\u06ec\u06e2\u06e6\u06d9\u06e4\u06d9\u06e2\u06e5\u06e6\u06d9\u06d6\u06d6\u06df\u06e2\u06d6\u06d8\u06e4\u06df\u06e6\u06d8\u06d7\u06e5\u06e6\u06d8\u06eb\u06d6\u06e8\u06d8\u06d6\u06e0\u06da\u06df\u06e0"

    goto :goto_3

    :sswitch_d
    invoke-virtual {p0, v4}, Landroid/app/Activity;->setVolumeControlStream(I)V

    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->o00O0O:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v4}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->o00O0O:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->o00oO0o:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v6

    :try_start_0
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->o00O0O:Landroid/media/MediaPlayer;

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->o00O0O:Landroid/media/MediaPlayer;

    const/high16 v1, 0x3f000000    # 0.5f

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->o00O0O:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_4
    :sswitch_e
    return-void

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->o00O0O:Landroid/media/MediaPlayer;

    goto :goto_4

    :sswitch_data_0
    .sparse-switch
        -0x748ed6f2 -> :sswitch_e
        -0x1c90ddf3 -> :sswitch_7
        0x3fcb7013 -> :sswitch_0
        0x73f8548f -> :sswitch_3
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x7d1d3415 -> :sswitch_9
        -0x76bb7fc6 -> :sswitch_d
        0xe52ed9c -> :sswitch_1
        0x281c6b32 -> :sswitch_e
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        -0x606993db -> :sswitch_5
        -0x51ae69ee -> :sswitch_4
        0x30f41594 -> :sswitch_6
        0x70aef04b -> :sswitch_2
    .end sparse-switch

    :sswitch_data_3
    .sparse-switch
        -0x645680ef -> :sswitch_b
        -0x41f2c382 -> :sswitch_a
        -0x29b2cfaf -> :sswitch_c
        -0x22910b81 -> :sswitch_8
    .end sparse-switch
.end method

.method private OooOOOO()V
    .locals 6

    const/4 v3, 0x0

    const-string v0, "\u06df\u06e2\u06db\u06df\u06d9\u06e7\u06e0\u06d6\u06da\u06e4\u06d9\u06dc\u06d6\u06ec\u06e6\u06d8\u06e7\u06e4\u06df\u06d7\u06e7\u06d6\u06e4\u06ec\u06db\u06e5\u06d7\u06e8\u06d8\u06da\u06e2\u06e5\u06d8\u06e6\u06eb\u06eb\u06d9\u06d7\u06e5\u06d8"

    move-object v1, v0

    move-object v2, v3

    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v4, 0x1b1

    xor-int/2addr v0, v4

    xor-int/lit16 v0, v0, 0x1c4

    const/16 v4, 0x3bb

    const v5, -0x3773ca9f

    xor-int/2addr v0, v4

    xor-int/2addr v0, v5

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d7\u06e6\u06e1\u06d6\u06d8\u06e7\u06e7\u06ec\u06d7\u06e6\u06e0\u06db\u06e1\u06d8\u06dc\u06da\u06d8\u06d8\u06d8\u06da\u06e1\u06dc\u06d8\u06e7\u06dc\u06e6\u06df\u06d9\u06d8\u06d8\u06e4\u06e6\u06e7\u06e7\u06e1\u06e8\u06d8\u06d9\u06e2\u06d6\u06d9\u06df\u06e1\u06e6\u06db\u06d9\u06e7\u06dc\u06db\u06e4\u06d7\u06e8\u06ec\u06e8\u06e6\u06d8\u06e5\u06d8\u06d8\u06d8"

    move-object v1, v0

    goto :goto_0

    :sswitch_1
    const v0, 0x7f0902f0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cyjh/elfin/ui/view/customview/TitleView;

    const-string v1, "\u06db\u06d9\u06dc\u06d8\u06d8\u06e2\u06da\u06dc\u06db\u06d7\u06e4\u06d9\u06e8\u06d8\u06d9\u06d6\u06df\u06e1\u06e7\u06d6\u06e8\u06e8\u06dc\u06e6\u06d8\u06e4\u06df\u06d7\u06d9\u06e0\u06eb\u06eb"

    move-object v2, v0

    goto :goto_0

    :sswitch_2
    const v0, 0x7f1002a3

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setTitleText(Ljava/lang/String;)V

    const-string v0, "\u06e8\u06d7\u06e7\u06d6\u06e7\u06d6\u06d8\u06e5\u06ec\u06df\u06eb\u06e8\u06d7\u06d6\u06dc\u06e1\u06d6\u06e7\u06e5\u06d8\u06e8\u06db\u06da\u06e0\u06e5\u06e7\u06d6\u06e5\u06e5\u06d8\u06df\u06eb\u06e4\u06e5\u06d8\u06e7\u06d8\u06db\u06e0\u06eb\u06da\u06eb\u06dc\u06d8\u06ec\u06da\u06e5\u06da\u06e6\u06d6\u06ec\u06e8\u06dc\u06d8"

    move-object v1, v0

    goto :goto_0

    :sswitch_3
    const/4 v0, 0x4

    invoke-virtual {v2, v0}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setVisibilityRightImage(I)V

    const-string v0, "\u06eb\u06ec\u06e1\u06e0\u06d8\u06e4\u06d6\u06da\u06d8\u06d8\u06e0\u06e5\u06e7\u06e5\u06df\u06db\u06dc\u06e1\u06e6\u06db\u06ec\u06d7\u06e0\u06e7\u06e2\u06e2\u06d8\u06df\u06da\u06da\u06e2\u06e5\u06d8\u06e1\u06e1\u06df\u06d8\u06e7\u06df\u06ec\u06e2\u06d9"

    move-object v1, v0

    goto :goto_0

    :sswitch_4
    const v0, 0x7f0801c9

    invoke-virtual {v2, v0}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setleftImage(I)V

    const-string v0, "\u06ec\u06e4\u06d8\u06e7\u06da\u06e8\u06d6\u06e0\u06d9\u06e4\u06e2\u06e5\u06d8\u06da\u06e7\u06e8\u06db\u06dc\u06d8\u06d7\u06dc\u06d9\u06e0\u06e6\u06dc\u06e8\u06e6\u06d7\u06dc\u06db\u06e5\u06e7\u06dc\u06d8\u06e4\u06d8\u06df\u06e2\u06d8\u06e7\u06d8\u06df\u06e6\u06e5\u06dc\u06e6\u06e8\u06d8\u06da\u06e0\u06e7\u06df\u06e5\u06e1\u06ec\u06ec\u06e7"

    move-object v1, v0

    goto :goto_0

    :sswitch_5
    new-instance v0, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity$OooO0OO;

    invoke-direct {v0, p0, v3}, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity$OooO0OO;-><init>(Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;Lcom/cyjh/elfin/ui/activity/SweepCodeActivity$OooO00o;)V

    invoke-virtual {v2, v0}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setOnLeftImageViewListener(Lcom/cyjh/elfin/ui/view/customview/TitleView$OooO0O0;)V

    const-string v0, "\u06df\u06e2\u06d7\u06dc\u06db\u06e5\u06e5\u06d8\u06e1\u06e0\u06e8\u06d8\u06d7\u06e0\u06e1\u06d8\u06e1\u06e1\u06df\u06eb\u06d8\u06e4\u06e4\u06d8\u06e0\u06d6\u06dc\u06e1\u06e8\u06df\u06d6\u06ec\u06e4\u06d6\u06d8\u06d6\u06e0\u06e0"

    move-object v1, v0

    goto :goto_0

    :sswitch_6
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x59944fbc -> :sswitch_0
        -0x50d37e49 -> :sswitch_6
        -0x4e4b90d0 -> :sswitch_4
        -0x220c1f3b -> :sswitch_2
        -0x1d7e0e0f -> :sswitch_1
        0x14f54cd5 -> :sswitch_5
        0x589b4d1e -> :sswitch_3
    .end sparse-switch
.end method

.method private OooOOo(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 4

    const-string v0, "\u06db\u06e0\u06e1\u06d8\u06e8\u06da\u06dc\u06d8\u06d6\u06ec\u06d8\u06eb\u06da\u06d7\u06e4\u06eb\u06e1\u06d8\u06d6\u06e7\u06e6\u06d8\u06d9\u06da\u06d8\u06db\u06dc\u06e1\u06e4\u06df\u06e5\u06d8\u06e2\u06e0\u06da"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x136

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x89

    const/16 v2, 0x23d

    const v3, 0x6446969d

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e7\u06e4\u06d6\u06ec\u06e1\u06e8\u06dc\u06dc\u06d9\u06d9\u06e0\u06e5\u06e8\u06d6\u06e2\u06dc\u06dc\u06ec\u06da\u06ec\u06e1\u06df\u06e1\u06da\u06e2\u06d7\u06da\u06db\u06ec"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06db\u06e7\u06d9\u06e4\u06e7\u06da\u06e2\u06e4\u06da\u06e8\u06d8\u06e0\u06eb\u06e5\u06d8\u06d8\u06e1\u06eb\u06e6\u06d8\u06ec\u06e2\u06d8\u06d8\u06e0\u06e0\u06e1\u06d8\u06d7\u06e1\u06e4\u06eb\u06ec\u06e7\u06e4\u06e8\u06dc\u06e1\u06eb\u06d7\u06e2\u06e5\u06e5\u06d8\u06d9\u06eb"

    goto :goto_0

    :sswitch_2
    const-string v0, "\u06d9\u06d8\u06df\u06da\u06d7\u06e8\u06d8\u06e6\u06df\u06d8\u06d8\u06e4\u06db\u06e0\u06ec\u06e5\u06d9\u06e5\u06e5\u06dc\u06e5\u06d8\u06e5\u06e2\u06e8\u06e4\u06e1\u06d8\u06dc\u06da\u06da\u06d8\u06e1\u06df\u06da\u06eb\u06e4\u06e6\u06d8\u06d9\u06ec\u06dc\u06ec\u06e6\u06d6\u06d8\u06e1\u06da\u06db\u06eb\u06e1\u06e5\u06e8\u06d9\u06dc\u06e8\u06e0\u06dc"

    goto :goto_0

    :sswitch_3
    const v1, 0x4e02fd93    # 5.4941408E8f

    const-string v0, "\u06d6\u06e0\u06e1\u06e2\u06e4\u06dc\u06d8\u06e2\u06dc\u06d8\u06e2\u06e6\u06e7\u06d8\u06e2\u06df\u06da\u06dc\u06dc\u06d8\u06e7\u06db\u06ec\u06db\u06e8\u06d6\u06db\u06db\u06dc\u06e4\u06e7\u06e6\u06ec\u06e6\u06ec\u06eb\u06e5\u06d8\u06e7\u06d8\u06dc\u06d8\u06d8\u06e2\u06e0\u06e2\u06d6\u06d7\u06d6\u06eb\u06d6\u06d8"

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v2, v1

    sparse-switch v2, :sswitch_data_1

    goto :goto_1

    :sswitch_4
    const-string v0, "\u06d9\u06eb\u06d8\u06d8\u06d8\u06e2\u06db\u06d7\u06d7\u06eb\u06ec\u06eb\u06e8\u06d9\u06db\u06e4\u06eb\u06e5\u06d8\u06d7\u06d6\u06e5\u06d8\u06e1\u06e4\u06d8\u06d8\u06e8\u06e6\u06e5\u06d8\u06e0\u06e1\u06e4\u06d6\u06db\u06da\u06d9\u06e5\u06e4"

    goto :goto_1

    :sswitch_5
    const-string v0, "\u06d6\u06d8\u06e7\u06e1\u06da\u06e8\u06d8\u06e6\u06e7\u06da\u06ec\u06ec\u06e0\u06d6\u06d6\u06d7\u06eb\u06d9\u06e1\u06d8\u06df\u06d6\u06e6\u06e0\u06e0\u06d8\u06d7\u06e6\u06e8\u06ec\u06e7\u06e7\u06db\u06e7\u06e1\u06e6\u06d8\u06e0\u06d8\u06dc\u06d8\u06e0\u06e0\u06e6\u06d8"

    goto :goto_1

    :sswitch_6
    const v2, 0x4f1309c9

    const-string v0, "\u06df\u06e0\u06e5\u06ec\u06dc\u06db\u06e4\u06d9\u06e6\u06d8\u06d6\u06df\u06d6\u06d8\u06d7\u06e4\u06e5\u06ec\u06e8\u06eb\u06e1\u06e2\u06ec\u06d8\u06d8\u06e1\u06d8\u06dc\u06df\u06d6\u06d8\u06e7\u06dc\u06df\u06d7\u06dc\u06ec\u06ec\u06e0\u06e4\u06d9\u06d6\u06d8\u06e5\u06e7\u06eb"

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v2

    sparse-switch v3, :sswitch_data_2

    goto :goto_2

    :sswitch_7
    const-string v0, "\u06eb\u06e8\u06e4\u06ec\u06d6\u06e7\u06e5\u06d8\u06e0\u06e0\u06e6\u06d7\u06eb\u06e6\u06d6\u06da\u06d7\u06da\u06d9\u06e5\u06d8\u06e1\u06ec\u06e8\u06d8\u06e2\u06d8\u06d6\u06d8\u06e1\u06da\u06e1\u06d8\u06d9\u06dc\u06e5\u06d8\u06d7\u06d7\u06da\u06e5\u06ec\u06df\u06d8\u06dc\u06db"

    goto :goto_2

    :cond_0
    const-string v0, "\u06eb\u06dc\u06e8\u06da\u06e2\u06e8\u06d8\u06d9\u06d6\u06e8\u06d8\u06df\u06d7\u06df\u06e0\u06ec\u06e7\u06d6\u06dc\u06d8\u06eb\u06d6\u06dc\u06d8\u06da\u06df\u06e7\u06e1\u06db\u06e2\u06d8\u06d7\u06e6\u06e5\u06e6\u06e1\u06d8\u06e0\u06ec\u06d6\u06d6\u06db\u06d9\u06e2\u06e4\u06e7"

    goto :goto_2

    :sswitch_8
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u06e4\u06e5\u06e6\u06d8\u06dc\u06e1\u06e6\u06d8\u06eb\u06e8\u06eb\u06d7\u06e6\u06e5\u06d6\u06e2\u06da\u06dc\u06e4\u06da\u06ec\u06dc\u06db\u06d9\u06d9\u06eb\u06e4\u06ec\u06db\u06db\u06e5\u06e5\u06d8\u06e5\u06e7\u06d9\u06db\u06dc\u06d7"

    goto :goto_2

    :sswitch_9
    const-string v0, "\u06e4\u06da\u06eb\u06dc\u06e0\u06e1\u06e0\u06eb\u06e6\u06d9\u06df\u06d8\u06e4\u06dc\u06eb\u06d9\u06e8\u06eb\u06e5\u06e8\u06e8\u06e0\u06e6\u06d8\u06d8\u06d7\u06db\u06e8\u06e8\u06ec\u06d8\u06e5\u06da\u06e7\u06da\u06db\u06d8\u06d8\u06dc\u06e8\u06d6\u06ec\u06da\u06d9\u06e8\u06e1\u06d9\u06df\u06d8\u06ec"

    goto :goto_1

    :sswitch_a
    const-string v0, "\u06e6\u06e8\u06e8\u06da\u06d6\u06d8\u06e2\u06eb\u06e7\u06e6\u06d9\u06e6\u06d8\u06e0\u06e7\u06da\u06da\u06e0\u06d7\u06df\u06e1\u06ec\u06dc\u06d8\u06dc\u06db\u06da\u06d7\u06e1\u06df\u06e1\u06e8\u06e4\u06e8\u06e5\u06d7\u06eb\u06d6\u06df\u06e0\u06d6\u06d6\u06d8\u06eb\u06da\u06e5\u06d8\u06ec\u06dc\u06e5"

    goto :goto_0

    :sswitch_b
    const-string v0, "Scan failed!"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const-string v0, "\u06df\u06e2\u06eb\u06d6\u06dc\u06e8\u06e0\u06da\u06e5\u06d8\u06e0\u06da\u06e1\u06e2\u06e2\u06e5\u06d8\u06d9\u06d9\u06e8\u06d8\u06e6\u06e0\u06e7\u06e6\u06ec\u06d8\u06d8\u06e4\u06e0\u06d9\u06d6\u06e0\u06d8\u06d8\u06d7\u06e2\u06e1\u06e5\u06d6\u06df\u06e4\u06e4\u06e1\u06e4\u06df\u06e6\u06d8\u06ec\u06e4\u06e8\u06d8\u06e1\u06eb\u06e7\u06dc\u06e1\u06df\u06e1\u06dc\u06df"

    goto :goto_0

    :sswitch_c
    const-string v0, "\u06df\u06e2\u06eb\u06d6\u06dc\u06e8\u06e0\u06da\u06e5\u06d8\u06e0\u06da\u06e1\u06e2\u06e2\u06e5\u06d8\u06d9\u06d9\u06e8\u06d8\u06e6\u06e0\u06e7\u06e6\u06ec\u06d8\u06d8\u06e4\u06e0\u06d9\u06d6\u06e0\u06d8\u06d8\u06d7\u06e2\u06e1\u06e5\u06d6\u06df\u06e4\u06e4\u06e1\u06e4\u06df\u06e6\u06d8\u06ec\u06e4\u06e8\u06d8\u06e1\u06eb\u06e7\u06dc\u06e1\u06df\u06e1\u06dc\u06df"

    goto :goto_0

    :sswitch_d
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6088edda -> :sswitch_b
        -0x27dfc9d5 -> :sswitch_0
        -0x1810d3a1 -> :sswitch_d
        0x318c675d -> :sswitch_3
        0x46b38e91 -> :sswitch_2
        0x654393a9 -> :sswitch_1
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x50502183 -> :sswitch_6
        -0x25e53cc7 -> :sswitch_c
        -0xaedcc39 -> :sswitch_4
        0x50912974 -> :sswitch_a
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        -0x665f5c7d -> :sswitch_8
        -0x44b42750 -> :sswitch_7
        -0x374aab47 -> :sswitch_9
        0x41048742 -> :sswitch_5
    .end sparse-switch
.end method

.method private OooOOoo()V
    .locals 5

    const/4 v1, 0x0

    const-string v0, "\u06dc\u06db\u06db\u06da\u06d9\u06e1\u06e4\u06da\u06d8\u06da\u06da\u06e1\u06d8\u06db\u06e4\u06dc\u06d8\u06d7\u06dc\u06e8\u06db\u06da\u06e5\u06e6\u06e2\u06e0\u06e0\u06e8\u06e7\u06e4\u06d6\u06e7"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v3, 0x135

    xor-int/2addr v2, v3

    xor-int/lit16 v2, v2, 0x3c2

    const/16 v3, 0x1e0

    const v4, 0x18d365d6

    xor-int/2addr v2, v3

    xor-int/2addr v2, v4

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e7\u06e2\u06e2\u06d6\u06df\u06df\u06e0\u06da\u06d6\u06e1\u06d9\u06e6\u06d8\u06df\u06e0\u06e0\u06eb\u06dc\u06e1\u06d8\u06d8\u06e4\u06d7\u06e6\u06d7\u06e7\u06dc\u06e4\u06e8\u06d8\u06e7\u06e6\u06eb\u06da\u06eb\u06d6\u06e6\u06e6\u06e5\u06db\u06db\u06df\u06da\u06e8"

    goto :goto_0

    :sswitch_1
    const v2, 0x3890a410

    const-string v0, "\u06da\u06dc\u06e6\u06d8\u06df\u06d8\u06e1\u06ec\u06e2\u06e7\u06e6\u06e8\u06d6\u06d9\u06e2\u06db\u06e4\u06dc\u06e7\u06d8\u06db\u06eb\u06e5\u06dc\u06e0\u06d7\u06e1\u06d8\u06e2\u06e8\u06df\u06e0\u06e0\u06d8\u06d8\u06e2\u06e1\u06e5\u06d8"

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v2

    sparse-switch v3, :sswitch_data_1

    goto :goto_1

    :sswitch_2
    const-string v0, "\u06e1\u06e6\u06e5\u06d8\u06d8\u06e8\u06d8\u06e4\u06dc\u06e6\u06df\u06d7\u06d6\u06d8\u06e6\u06db\u06e5\u06d8\u06d6\u06e8\u06e8\u06d8\u06e4\u06e5\u06d7\u06e5\u06e6\u06e6\u06e2\u06db\u06e4\u06e5\u06df\u06e0\u06e6\u06e5\u06d8\u06d8\u06e0\u06d6\u06e8\u06e2\u06d7\u06da\u06e1\u06e0\u06d8\u06e6\u06eb\u06e8\u06d8\u06e1\u06e7\u06eb"

    goto :goto_0

    :sswitch_3
    const-string v0, "\u06e4\u06d9\u06e2\u06d8\u06dc\u06e2\u06e6\u06e1\u06ec\u06d6\u06e4\u06d8\u06df\u06e4\u06d6\u06d8\u06e7\u06e7\u06e6\u06e1\u06e0\u06e4\u06d9\u06e6\u06d8\u06e4\u06e5\u06e4\u06d9\u06e2\u06e1\u06d8\u06e1\u06e6\u06e8\u06df\u06da\u06d8"

    goto :goto_1

    :sswitch_4
    const v3, 0x2c2ed7f7

    const-string v0, "\u06e7\u06ec\u06ec\u06e1\u06e2\u06e2\u06d9\u06e2\u06e0\u06e8\u06e2\u06e4\u06d6\u06d6\u06eb\u06e8\u06d8\u06eb\u06e6\u06e7\u06e6\u06d8\u06d9\u06e7\u06e5\u06d8\u06e1\u06e8\u06e2\u06dc\u06db\u06e5\u06e7\u06e6\u06e5\u06d8\u06df\u06e8\u06da\u06e8\u06df\u06dc\u06e4\u06e5\u06d9\u06d8\u06e8\u06e5\u06e5\u06eb\u06dc\u06e8\u06e0\u06da\u06d8\u06dc\u06e1"

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    xor-int/2addr v4, v3

    sparse-switch v4, :sswitch_data_2

    goto :goto_2

    :sswitch_5
    const-string v0, "\u06d9\u06e1\u06e7\u06e1\u06d6\u06e8\u06d8\u06e5\u06da\u06dc\u06d8\u06e1\u06e6\u06dc\u06e4\u06e7\u06e4\u06db\u06d8\u06d7\u06e7\u06df\u06d8\u06d8\u06e6\u06d9\u06ec\u06e4\u06df\u06dc\u06dc\u06e6\u06e7\u06d8"

    goto :goto_2

    :cond_0
    const-string v0, "\u06e4\u06e4\u06da\u06da\u06eb\u06da\u06da\u06e5\u06e2\u06e4\u06ec\u06e8\u06e2\u06dc\u06e1\u06e4\u06df\u06d9\u06ec\u06e8\u06d8\u06d8\u06eb\u06d7\u06dc\u06e7\u06d9\u06e5\u06d8\u06e4\u06db\u06e5"

    goto :goto_2

    :sswitch_6
    iget-boolean v0, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->o0OoOo0:Z

    if-eqz v0, :cond_0

    const-string v0, "\u06db\u06e6\u06da\u06ec\u06d6\u06e1\u06d8\u06d6\u06e7\u06e1\u06d8\u06e0\u06d6\u06e7\u06eb\u06d7\u06e6\u06e4\u06d9\u06e5\u06d8\u06ec\u06eb\u06e6\u06d6\u06eb\u06eb\u06db\u06e5\u06e0\u06d9\u06e0\u06da\u06d9\u06df\u06dc\u06d8\u06eb\u06e1\u06df"

    goto :goto_2

    :sswitch_7
    const-string v0, "\u06db\u06e8\u06e6\u06d7\u06d8\u06dc\u06e4\u06e7\u06e0\u06d6\u06e7\u06e6\u06d8\u06e0\u06e6\u06db\u06d7\u06df\u06e6\u06d8\u06e2\u06e5\u06e1\u06d8\u06e8\u06d6\u06da\u06eb\u06d9\u06e8\u06d8\u06d8\u06e7\u06e1\u06df\u06d8\u06e5\u06d6\u06d8\u06e4\u06db\u06d8\u06e1\u06eb\u06e5\u06d6\u06d8"

    goto :goto_1

    :sswitch_8
    const-string v0, "\u06e5\u06e4\u06e5\u06d8\u06e7\u06d6\u06dc\u06d8\u06d8\u06da\u06ec\u06d7\u06e7\u06e2\u06e0\u06da\u06df\u06ec\u06e7\u06e6\u06d9\u06e1\u06d9\u06df\u06eb\u06d6\u06d8\u06e2\u06da\u06e8\u06d8\u06e2\u06df\u06e2"

    goto :goto_1

    :sswitch_9
    iget-object v1, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->o00O0O:Landroid/media/MediaPlayer;

    const-string v0, "\u06e2\u06e6\u06eb\u06eb\u06d8\u06ec\u06e0\u06d9\u06e0\u06e2\u06e8\u06d8\u06d7\u06d9\u06e0\u06e6\u06d7\u06e5\u06d8\u06e7\u06e2\u06e8\u06d8\u06e1\u06d9\u06e1\u06eb\u06eb\u06d8\u06e0\u06e5\u06d7\u06e1\u06d7\u06db\u06d9\u06d7\u06e0"

    goto :goto_0

    :sswitch_a
    const v2, 0x6d39c014

    const-string v0, "\u06dc\u06d9\u06db\u06d7\u06e4\u06e4\u06d6\u06d8\u06d6\u06e0\u06e1\u06dc\u06d8\u06da\u06eb\u06dc\u06d8\u06da\u06db\u06db\u06da\u06d6\u06e8\u06d6\u06e0\u06ec\u06d9\u06df\u06d6\u06d8\u06e2\u06e1\u06d6\u06d8\u06e7\u06d9\u06e4\u06db\u06e2\u06d9\u06dc\u06e1\u06e1\u06d8\u06db\u06e1\u06d6"

    :goto_3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v2

    sparse-switch v3, :sswitch_data_3

    goto :goto_3

    :sswitch_b
    const v3, 0x68e3b56e

    const-string v0, "\u06e4\u06e2\u06eb\u06e0\u06eb\u06d6\u06e6\u06d6\u06dc\u06e8\u06da\u06e0\u06e8\u06ec\u06dc\u06e4\u06e4\u06e8\u06d8\u06e1\u06e1\u06eb\u06e1\u06db\u06da\u06e7\u06d9\u06e7\u06dc\u06e7\u06d9\u06ec\u06d8\u06d8\u06d7\u06e4\u06d9"

    :goto_4
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    xor-int/2addr v4, v3

    sparse-switch v4, :sswitch_data_4

    goto :goto_4

    :sswitch_c
    if-eqz v1, :cond_1

    const-string v0, "\u06ec\u06ec\u06dc\u06d8\u06df\u06db\u06e5\u06d8\u06e1\u06ec\u06e5\u06e8\u06df\u06e8\u06d8\u06d8\u06e8\u06e6\u06dc\u06e8\u06e5\u06e7\u06e5\u06ec\u06dc\u06d8\u06d8\u06d6\u06db\u06e6\u06d8\u06db\u06d8\u06e6\u06d8\u06db\u06e1\u06e8\u06d8\u06df\u06d8\u06e7"

    goto :goto_4

    :sswitch_d
    const-string v0, "\u06dc\u06e0\u06df\u06d9\u06e6\u06d7\u06d9\u06dc\u06e5\u06da\u06da\u06d6\u06df\u06d9\u06e4\u06d9\u06d9\u06e7\u06e2\u06e6\u06e2\u06da\u06e4\u06df\u06db\u06d7\u06d6\u06d8\u06d8"

    goto :goto_3

    :cond_1
    const-string v0, "\u06e5\u06d7\u06e6\u06dc\u06d9\u06da\u06e0\u06e7\u06ec\u06dc\u06d7\u06dc\u06d8\u06e8\u06df\u06e7\u06dc\u06e4\u06d6\u06e6\u06e6\u06eb\u06df\u06e1\u06e1\u06d8\u06e2\u06e2\u06ec\u06e7\u06e4\u06e5\u06d8"

    goto :goto_4

    :sswitch_e
    const-string v0, "\u06db\u06e8\u06e7\u06d8\u06e4\u06d6\u06d8\u06dc\u06d9\u06e5\u06d8\u06e2\u06eb\u06dc\u06d8\u06df\u06d7\u06e8\u06e1\u06e6\u06e1\u06d8\u06e8\u06e5\u06d8\u06e4\u06e6\u06df\u06db\u06df\u06d6\u06e5\u06e0\u06e4\u06e7\u06e6\u06dc\u06e0\u06e8\u06e4\u06da\u06da\u06e5\u06e4\u06e2\u06d8\u06d8\u06db\u06e2\u06d8\u06d7\u06e8\u06df"

    goto :goto_4

    :sswitch_f
    const-string v0, "\u06d7\u06df\u06d6\u06e0\u06d6\u06e7\u06d7\u06d6\u06df\u06df\u06e8\u06d8\u06e7\u06d9\u06d8\u06d8\u06e8\u06df\u06e2\u06d6\u06ec\u06e7\u06dc\u06e5\u06d8\u06da\u06e6\u06d8\u06d8\u06eb\u06e1\u06e6\u06d8\u06dc\u06e4\u06e4\u06ec\u06d6\u06d6\u06df\u06d7\u06d6\u06eb\u06ec\u06dc\u06d8\u06d7\u06e6\u06e4\u06eb\u06e1\u06e6\u06d6\u06df\u06ec\u06e4\u06e2\u06df"

    goto :goto_3

    :sswitch_10
    const-string v0, "\u06dc\u06ec\u06e4\u06df\u06d7\u06e6\u06d8\u06ec\u06e7\u06d9\u06e1\u06d6\u06d8\u06e5\u06e8\u06e2\u06db\u06ec\u06d6\u06d8\u06d7\u06e6\u06d9\u06db\u06e1\u06d8\u06e2\u06da\u06df\u06da\u06d9\u06da\u06e5\u06d8\u06e8\u06eb\u06df\u06d8"

    goto :goto_3

    :sswitch_11
    const-string v0, "\u06da\u06d7\u06d8\u06eb\u06e5\u06d8\u06e1\u06e6\u06e6\u06dc\u06d6\u06d8\u06e5\u06dc\u06ec\u06d7\u06da\u06eb\u06db\u06df\u06d9\u06dc\u06df\u06e4\u06db\u06ec\u06e5\u06d8\u06e2\u06e0\u06e8\u06d8\u06e8\u06e4\u06e5\u06d8\u06e5\u06e2\u06d9"

    goto/16 :goto_0

    :sswitch_12
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    const-string v0, "\u06da\u06e6\u06eb\u06dc\u06e8\u06dc\u06d8\u06dc\u06e0\u06e7\u06e2\u06eb\u06d6\u06d8\u06d6\u06dc\u06e6\u06d9\u06d6\u06e8\u06d8\u06db\u06e5\u06e1\u06d9\u06dc\u06d8\u06d9\u06db\u06db\u06e4\u06e2\u06e8"

    goto/16 :goto_0

    :sswitch_13
    const v2, 0x6917a4f4

    const-string v0, "\u06e1\u06df\u06d6\u06d8\u06e7\u06eb\u06e5\u06e0\u06e7\u06e8\u06d8\u06e1\u06d8\u06e2\u06db\u06df\u06d6\u06d8\u06d6\u06d6\u06e0\u06e0\u06dc\u06da\u06e5\u06d7\u06d8\u06d8\u06e2\u06d6\u06e4\u06d8\u06e4\u06da\u06e4\u06ec\u06d7\u06df\u06d9\u06e7\u06e1\u06eb\u06e1\u06db\u06df\u06e6"

    :goto_5
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v2

    sparse-switch v3, :sswitch_data_5

    goto :goto_5

    :sswitch_14
    const-string v0, "\u06e8\u06e2\u06d9\u06dc\u06da\u06d8\u06e7\u06e2\u06e4\u06ec\u06d6\u06d6\u06da\u06d9\u06e0\u06d8\u06df\u06d6\u06d8\u06ec\u06e0\u06d9\u06d7\u06d9\u06e2\u06da\u06e6\u06dc\u06d8\u06e7\u06e1\u06e4"

    goto/16 :goto_0

    :sswitch_15
    const-string v0, "\u06eb\u06eb\u06db\u06d9\u06df\u06d8\u06d8\u06da\u06d9\u06e8\u06d8\u06d9\u06d8\u06d8\u06d8\u06da\u06d9\u06d6\u06d8\u06e2\u06e6\u06dc\u06d9\u06da\u06d8\u06d8\u06e6\u06d8\u06e7\u06d8\u06d9\u06df\u06e5\u06d8\u06e7\u06e5\u06ec\u06d6\u06e0\u06e5\u06d8\u06e4\u06e7\u06ec\u06d6\u06e6\u06db\u06e1\u06eb\u06e1\u06d8\u06e7\u06eb\u06dc\u06d6\u06d9\u06e6\u06d8\u06da\u06eb\u06e8\u06e0\u06e1\u06e5\u06d8"

    goto :goto_5

    :sswitch_16
    const v3, 0x4d3e7085    # 1.9969032E8f

    const-string v0, "\u06e4\u06e8\u06df\u06eb\u06e8\u06dc\u06dc\u06e5\u06ec\u06da\u06da\u06e6\u06e7\u06d6\u06eb\u06eb\u06e4\u06eb\u06e2\u06eb\u06df\u06da\u06df\u06e2\u06e2\u06da\u06e6\u06e7\u06db\u06df\u06d6\u06df\u06e2\u06db\u06e4\u06e5\u06e4\u06e6\u06e0\u06e8\u06d8\u06e6\u06ec\u06d8\u06d8\u06d8\u06ec\u06e7\u06e5\u06da\u06e0\u06dc\u06e1"

    :goto_6
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    xor-int/2addr v4, v3

    sparse-switch v4, :sswitch_data_6

    goto :goto_6

    :sswitch_17
    const-string v0, "\u06d6\u06d7\u06dc\u06e1\u06e7\u06e1\u06d6\u06eb\u06e1\u06d6\u06e0\u06dc\u06d8\u06e4\u06eb\u06e5\u06ec\u06e2\u06d8\u06e0\u06e1\u06d6\u06dc\u06dc\u06ec\u06e5\u06d7\u06d7\u06db\u06e5\u06d6\u06d8\u06dc\u06db\u06e6\u06e2\u06e2\u06df\u06db\u06e5\u06e6\u06d8\u06e8\u06e0\u06d7\u06dc\u06da\u06df\u06d6\u06e7\u06d6\u06d6\u06e7\u06d9\u06d9\u06e2\u06ec"

    goto :goto_6

    :cond_2
    const-string v0, "\u06e5\u06dc\u06e7\u06d6\u06e5\u06db\u06e7\u06e8\u06eb\u06df\u06e6\u06d8\u06e4\u06d9\u06dc\u06e6\u06d8\u06dc\u06d9\u06da\u06eb\u06dc\u06e8\u06d8\u06e1\u06dc\u06e5\u06ec\u06e1\u06eb\u06e8\u06e8\u06e8\u06e6\u06e4\u06d9\u06d8\u06da\u06d9\u06ec\u06eb\u06da"

    goto :goto_6

    :sswitch_18
    iget-boolean v0, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->ooOO:Z

    if-eqz v0, :cond_2

    const-string v0, "\u06e7\u06dc\u06e5\u06d8\u06d8\u06df\u06ec\u06eb\u06d8\u06d6\u06d8\u06d9\u06e6\u06d8\u06eb\u06e8\u06ec\u06e6\u06dc\u06e1\u06e6\u06d9\u06e4\u06df\u06e6\u06d8\u06e4\u06da\u06d8\u06e2\u06e2\u06db\u06d8\u06e7\u06d8\u06e5\u06ec\u06e8\u06d8\u06eb\u06e1\u06d7\u06e6\u06db\u06e8\u06d8\u06e5\u06d7\u06dc\u06d9\u06e4\u06e1\u06d9\u06e1\u06e5\u06d9\u06e6"

    goto :goto_6

    :sswitch_19
    const-string v0, "\u06e7\u06e5\u06dc\u06df\u06ec\u06ec\u06eb\u06e1\u06d8\u06d8\u06eb\u06ec\u06d8\u06e6\u06e4\u06d8\u06d8\u06e8\u06e6\u06db\u06da\u06e2\u06d9\u06dc\u06e8\u06e0\u06e4\u06e7\u06e6\u06d8\u06db\u06db\u06d7\u06e6\u06e5\u06e6\u06d7\u06d7\u06e8\u06d8"

    goto :goto_5

    :sswitch_1a
    const-string v0, "\u06d8\u06ec\u06e6\u06e2\u06d9\u06d6\u06e5\u06e4\u06dc\u06d8\u06e5\u06d7\u06dc\u06e5\u06e5\u06eb\u06e1\u06ec\u06e7\u06e4\u06df\u06e6\u06d8\u06e1\u06d9\u06da\u06e1\u06e1\u06e5\u06df\u06d7\u06d6\u06d8\u06eb\u06d7\u06d6\u06d8\u06e1\u06e4\u06eb"

    goto :goto_5

    :sswitch_1b
    const-string v0, "\u06d6\u06db\u06e7\u06ec\u06e5\u06d8\u06d7\u06da\u06d7\u06eb\u06eb\u06e1\u06db\u06d8\u06d6\u06d8\u06d9\u06e4\u06e0\u06e5\u06d7\u06e7\u06d7\u06da\u06df\u06df\u06da\u06e7\u06e6\u06dc\u06e4\u06e6\u06d9\u06d9\u06d6\u06d7\u06d8\u06d8\u06eb\u06da\u06e6\u06d8\u06df\u06d7\u06e8\u06e5\u06e5\u06e2\u06eb\u06e2\u06e7"

    goto/16 :goto_0

    :sswitch_1c
    const-string v0, "vibrator"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    const-string v0, "\u06e8\u06e2\u06d9\u06dc\u06da\u06d8\u06e7\u06e2\u06e4\u06ec\u06d6\u06d6\u06da\u06d9\u06e0\u06d8\u06df\u06d6\u06d8\u06ec\u06e0\u06d9\u06d7\u06d9\u06e2\u06da\u06e6\u06dc\u06d8\u06e7\u06e1\u06e4"

    goto/16 :goto_0

    :sswitch_1d
    const-string v0, "\u06da\u06e6\u06eb\u06dc\u06e8\u06dc\u06d8\u06dc\u06e0\u06e7\u06e2\u06eb\u06d6\u06d8\u06d6\u06dc\u06e6\u06d9\u06d6\u06e8\u06d8\u06db\u06e5\u06e1\u06d9\u06dc\u06d8\u06d9\u06db\u06db\u06e4\u06e2\u06e8"

    goto/16 :goto_0

    :sswitch_1e
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x619cc376 -> :sswitch_1c
        -0x3a700b42 -> :sswitch_0
        -0x2cde16ac -> :sswitch_9
        -0x100fc326 -> :sswitch_1e
        0x36076057 -> :sswitch_a
        0x486b431d -> :sswitch_12
        0x697143b5 -> :sswitch_1
        0x7143f2f4 -> :sswitch_13
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x1f23cd9e -> :sswitch_4
        -0x127e3eee -> :sswitch_1d
        0x6f2787b9 -> :sswitch_2
        0x729e4ba7 -> :sswitch_8
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        -0x7fe016db -> :sswitch_5
        -0x2d3c27fb -> :sswitch_6
        0xc98933 -> :sswitch_3
        0x15015a61 -> :sswitch_7
    .end sparse-switch

    :sswitch_data_3
    .sparse-switch
        -0x4f31e2ec -> :sswitch_b
        -0x266b2a92 -> :sswitch_11
        -0x144a0a89 -> :sswitch_1d
        0x6867ceff -> :sswitch_10
    .end sparse-switch

    :sswitch_data_4
    .sparse-switch
        -0x247e8009 -> :sswitch_f
        -0x1791d9b9 -> :sswitch_d
        0x32ddec38 -> :sswitch_c
        0x3e970ac5 -> :sswitch_e
    .end sparse-switch

    :sswitch_data_5
    .sparse-switch
        -0x711bd0fd -> :sswitch_1a
        -0x666575ed -> :sswitch_14
        -0x37e2b1b7 -> :sswitch_1b
        -0x2ec6643c -> :sswitch_16
    .end sparse-switch

    :sswitch_data_6
    .sparse-switch
        -0x41cc1d5f -> :sswitch_17
        -0xd69e452 -> :sswitch_15
        -0x3bdd038 -> :sswitch_18
        0x7bb353e3 -> :sswitch_19
    .end sparse-switch
.end method

.method private OooOoO0()V
    .locals 6

    const/4 v2, 0x0

    const-string v0, "\u06e6\u06e6\u06e2\u06dc\u06e1\u06ec\u06e2\u06e6\u06d8\u06db\u06eb\u06e8\u06e6\u06e6\u06e8\u06d8\u06d9\u06e6\u06e7\u06d8\u06e5\u06e6\u06d8\u06da\u06eb\u06e2\u06e4\u06db\u06d6\u06d8\u06e6\u06eb"

    move-object v1, v2

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/16 v4, 0x162

    xor-int/2addr v3, v4

    xor-int/lit16 v3, v3, 0x32c

    const/16 v4, 0x3cf

    const v5, 0x18e96be4

    xor-int/2addr v3, v4

    xor-int/2addr v3, v5

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06db\u06e5\u06df\u06e4\u06d7\u06e0\u06e5\u06e7\u06d8\u06dc\u06da\u06d7\u06dc\u06dc\u06d9\u06e6\u06d8\u06d6\u06d8\u06e8\u06d6\u06df\u06da\u06dc\u06dc\u06db\u06da\u06e7\u06dc\u06e8\u06e6\u06e0\u06e0\u06dc\u06da\u06eb\u06df\u06e2\u06df\u06e2\u06dc\u06e2\u06e0\u06d8\u06df\u06df\u06e8\u06d7\u06e2\u06e8\u06d6\u06df\u06e0"

    goto :goto_0

    :sswitch_1
    iget-object v1, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->Oooooo0:Lcom/zbar/zbar/decode/CaptureActivityHandler;

    const-string v0, "\u06df\u06e4\u06d7\u06df\u06e8\u06e7\u06d6\u06e4\u06e4\u06db\u06d6\u06d8\u06d8\u06e0\u06d9\u06e5\u06e7\u06e7\u06df\u06db\u06da\u06df\u06ec\u06e2\u06eb\u06e8\u06ec\u06e6\u06d8\u06e4\u06e1\u06ec\u06e2\u06d8\u06e7\u06e6\u06e5\u06db"

    goto :goto_0

    :sswitch_2
    const v3, 0x6a525807

    const-string v0, "\u06db\u06eb\u06e0\u06ec\u06e2\u06d6\u06e8\u06da\u06e0\u06e0\u06e6\u06e6\u06d8\u06e6\u06eb\u06e5\u06e7\u06d8\u06eb\u06e6\u06d9\u06dc\u06e8\u06dc\u06e7\u06df\u06da\u06e7\u06e6\u06eb\u06dc\u06d6\u06d9\u06ec\u06e5\u06e5\u06da\u06dc\u06d6\u06d8\u06db\u06e6\u06da\u06d8\u06d8\u06d7\u06da\u06da\u06e4\u06e7\u06dc\u06e7\u06d9\u06e7"

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    xor-int/2addr v4, v3

    sparse-switch v4, :sswitch_data_1

    goto :goto_1

    :sswitch_3
    const-string v0, "\u06e8\u06d7\u06d7\u06e2\u06e8\u06e7\u06da\u06e1\u06d9\u06e4\u06d7\u06e0\u06ec\u06db\u06e1\u06d9\u06e6\u06e5\u06dc\u06d7\u06dc\u06e8\u06e7\u06d8\u06e5\u06e4\u06eb\u06d6\u06e1\u06e0"

    goto :goto_1

    :sswitch_4
    const-string v0, "\u06db\u06db\u06da\u06e8\u06e0\u06e6\u06d7\u06e0\u06e2\u06db\u06e4\u06e5\u06d8\u06dc\u06d9\u06e4\u06e2\u06d6\u06d8\u06e6\u06e1\u06da\u06ec\u06e8\u06e8\u06d8\u06e7\u06e5\u06d7\u06ec\u06d8\u06d8\u06e1\u06e8\u06e8\u06d8\u06e6\u06d7\u06ec\u06eb\u06d9\u06d8\u06d8\u06e6\u06e2\u06e2\u06e2\u06e1\u06e2\u06eb\u06e4\u06e1"

    goto :goto_1

    :sswitch_5
    const v4, 0x611493b0

    const-string v0, "\u06d8\u06da\u06e4\u06e4\u06e4\u06da\u06da\u06da\u06e6\u06d8\u06d6\u06ec\u06e4\u06e0\u06e5\u06eb\u06e6\u06da\u06e7\u06e7\u06e4\u06e6\u06d9\u06e6\u06e1\u06e1\u06eb\u06da\u06e0\u06df\u06d8\u06d6\u06e2\u06d8\u06e0\u06d8\u06dc\u06e2\u06d7\u06ec\u06e7\u06d7\u06d6\u06d8\u06da\u06d8\u06eb\u06ec\u06d8\u06e4"

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v5

    xor-int/2addr v5, v4

    sparse-switch v5, :sswitch_data_2

    goto :goto_2

    :sswitch_6
    const-string v0, "\u06ec\u06d7\u06eb\u06e8\u06dc\u06d7\u06ec\u06e0\u06eb\u06d7\u06d8\u06d8\u06d8\u06e8\u06e0\u06da\u06d7\u06e8\u06d7\u06eb\u06d9\u06e6\u06d8\u06e1\u06e0\u06d6\u06d9\u06eb\u06d6\u06ec\u06e0\u06e6"

    goto :goto_2

    :cond_0
    const-string v0, "\u06e7\u06e6\u06e6\u06d8\u06d6\u06e7\u06db\u06e0\u06e1\u06d7\u06db\u06ec\u06ec\u06d9\u06ec\u06da\u06d7\u06d7\u06da\u06e2\u06eb\u06e6\u06d8\u06e7\u06e8\u06d6\u06e0\u06e2\u06e0\u06d6\u06d9\u06df\u06e1\u06e6\u06d9\u06e0\u06e6\u06ec\u06d9\u06ec\u06db\u06e1\u06db\u06d9\u06d7\u06e6\u06d8\u06db\u06da\u06df"

    goto :goto_2

    :sswitch_7
    if-eqz v1, :cond_0

    const-string v0, "\u06e8\u06e6\u06eb\u06da\u06e6\u06df\u06e8\u06e7\u06d8\u06d6\u06e8\u06d9\u06e7\u06eb\u06d7\u06db\u06e8\u06e6\u06d6\u06d7\u06e6\u06d6\u06d9\u06d9\u06e4\u06e0\u06e5\u06da\u06e5\u06ec\u06db\u06ec\u06e1\u06d6\u06ec\u06e5\u06d6\u06d8\u06e0\u06e5\u06e0\u06d7\u06e6\u06d7\u06e6\u06d8\u06d7\u06e7\u06da\u06df\u06e4\u06e2\u06e5\u06e1\u06e8"

    goto :goto_2

    :sswitch_8
    const-string v0, "\u06e7\u06d8\u06e7\u06d8\u06dc\u06e0\u06da\u06dc\u06e6\u06da\u06df\u06eb\u06dc\u06da\u06e7\u06df\u06e8\u06d8\u06df\u06df\u06d6\u06d7\u06d8\u06eb\u06d6\u06e7\u06dc\u06d8\u06db\u06db\u06d9\u06eb\u06dc\u06d7\u06e7\u06e8\u06d6\u06e0\u06eb\u06df\u06ec\u06e6\u06e4\u06e2\u06db\u06e8\u06d8\u06d7\u06e2\u06df\u06e4\u06eb\u06e6\u06e7\u06e6\u06e5\u06d8"

    goto :goto_1

    :sswitch_9
    const-string v0, "\u06e7\u06e6\u06eb\u06ec\u06dc\u06e7\u06e4\u06e6\u06e6\u06d8\u06dc\u06e0\u06ec\u06da\u06e0\u06da\u06d9\u06e8\u06df\u06db\u06d9\u06e2\u06df\u06e5\u06e6\u06df\u06d6\u06e8\u06d8\u06e8\u06dc\u06e4\u06da\u06e0\u06e7\u06e5\u06e8\u06e1"

    goto :goto_0

    :sswitch_a
    invoke-virtual {v1}, Lcom/zbar/zbar/decode/CaptureActivityHandler;->OooO00o()V

    const-string v0, "\u06eb\u06e7\u06e1\u06d8\u06da\u06ec\u06d9\u06e6\u06d9\u06dc\u06d8\u06d9\u06e4\u06d6\u06d8\u06e0\u06df\u06e6\u06e2\u06da\u06dc\u06d8\u06d8\u06d7\u06d6\u06e7\u06d8\u06d8\u06d7\u06d7\u06e1\u06e1\u06dc\u06e8\u06e5\u06d6\u06e6\u06e2\u06e5\u06e1"

    goto :goto_0

    :sswitch_b
    iput-object v2, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->Oooooo0:Lcom/zbar/zbar/decode/CaptureActivityHandler;

    const-string v0, "\u06d8\u06d8\u06e6\u06d8\u06e6\u06d6\u06da\u06e6\u06e0\u06e2\u06ec\u06e1\u06db\u06e1\u06e6\u06e5\u06e0\u06d7\u06d9\u06e8\u06ec\u06eb\u06dc\u06e7\u06e1\u06e5\u06d9\u06e6\u06d7\u06e8\u06dc\u06d8\u06d8\u06e5\u06d8\u06d8\u06e7\u06d7\u06e5\u06e6\u06d9\u06e1\u06d8\u06dc\u06eb\u06d7\u06df\u06e6\u06e6"

    goto :goto_0

    :sswitch_c
    invoke-static {}, Lz2/jv;->OooO0O0()Lz2/jv;

    move-result-object v0

    invoke-virtual {v0}, Lz2/jv;->OooO00o()V

    const-string v0, "\u06e4\u06e8\u06e7\u06d8\u06e1\u06dc\u06e6\u06d8\u06e8\u06d9\u06e1\u06e4\u06e5\u06d9\u06d8\u06e7\u06dc\u06d8\u06e7\u06e0\u06ec\u06da\u06e1\u06e6\u06da\u06da\u06d7\u06e1\u06d6\u06da\u06d6\u06e6\u06e0\u06e2\u06d6\u06dc\u06d8\u06da\u06d6\u06d8\u06d8\u06e7\u06ec\u06d7\u06e5\u06d7\u06e8\u06d7\u06e1\u06e1\u06d8\u06d9\u06e0\u06d8\u06dc\u06e6\u06e4\u06e4\u06eb\u06d6"

    goto :goto_0

    :sswitch_d
    const-string v0, "\u06d8\u06d8\u06e6\u06d8\u06e6\u06d6\u06da\u06e6\u06e0\u06e2\u06ec\u06e1\u06db\u06e1\u06e6\u06e5\u06e0\u06d7\u06d9\u06e8\u06ec\u06eb\u06dc\u06e7\u06e1\u06e5\u06d9\u06e6\u06d7\u06e8\u06dc\u06d8\u06d8\u06e5\u06d8\u06d8\u06e7\u06d7\u06e5\u06e6\u06d9\u06e1\u06d8\u06dc\u06eb\u06d7\u06df\u06e6\u06e6"

    goto :goto_0

    :sswitch_e
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x5be13725 -> :sswitch_1
        -0x2f9b56a0 -> :sswitch_a
        -0x1ed3bc2f -> :sswitch_e
        -0xece002b -> :sswitch_b
        0xb8403d2 -> :sswitch_2
        0x29527694 -> :sswitch_c
        0x776a3e4a -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x3513672 -> :sswitch_3
        0xeb7a72b -> :sswitch_5
        0x12cca2dc -> :sswitch_9
        0x5c5dd81e -> :sswitch_d
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        0xc2e06b7 -> :sswitch_4
        0x3738ee1c -> :sswitch_8
        0x6ecd1fc6 -> :sswitch_6
        0x7e551547 -> :sswitch_7
    .end sparse-switch
.end method

.method private initView()V
    .locals 12

    const/4 v6, 0x0

    const/4 v5, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x0

    const-string v0, "\u06db\u06d9\u06e4\u06d6\u06e5\u06df\u06db\u06d7\u06d6\u06d8\u06d8\u06e2\u06d6\u06d8\u06ec\u06d9\u06d6\u06e5\u06eb\u06e2\u06da\u06e0\u06e2\u06eb\u06d8\u06e5\u06e2\u06e6\u06d7\u06e4\u06e5\u06d8\u06da\u06d7\u06e5\u06d8\u06ec\u06eb"

    move-object v3, v0

    move-object v4, v6

    move v9, v1

    move-object v10, v6

    move v11, v1

    :goto_0
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v6, 0x33

    xor-int/2addr v0, v6

    xor-int/lit16 v0, v0, 0xd5

    const/16 v6, 0x1ec

    const v7, 0x3854e59

    xor-int/2addr v0, v6

    xor-int/2addr v0, v7

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d9\u06e6\u06df\u06eb\u06e0\u06db\u06e2\u06d7\u06d9\u06d7\u06d6\u06da\u06dc\u06d9\u06da\u06e7\u06e8\u06d8\u06d8\u06e2\u06e6\u06e7\u06d7\u06dc\u06d8\u06e7\u06e0\u06e5\u06d6\u06eb\u06e5\u06d8\u06d6\u06db\u06e5\u06d8\u06e5\u06e5\u06e2"

    move-object v3, v0

    goto :goto_0

    :sswitch_1
    invoke-static {p0}, Lz2/jv;->OooO0Oo(Landroid/content/Context;)V

    const-string v0, "\u06e6\u06e7\u06dc\u06e8\u06e5\u06e1\u06e2\u06e6\u06df\u06eb\u06d8\u06e8\u06ec\u06e6\u06e1\u06d8\u06e4\u06e0\u06d8\u06df\u06e6\u06e7\u06d8\u06e0\u06e5\u06e1\u06d8\u06dc\u06e4\u06e1\u06d8\u06dc\u06e6\u06e5\u06dc\u06e1\u06d8\u06eb\u06ec\u06e8\u06d8\u06dc\u06e4\u06e8\u06e2\u06d9\u06e2"

    move-object v3, v0

    goto :goto_0

    :sswitch_2
    iput-boolean v1, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->Ooooooo:Z

    const-string v0, "\u06ec\u06e7\u06d8\u06d8\u06d6\u06dc\u06dc\u06d8\u06d8\u06d7\u06e1\u06e4\u06d6\u06e7\u06d8\u06df\u06e4\u06d9\u06e7\u06e7\u06e7\u06d7\u06e7\u06d8\u06df\u06d8\u06e4\u06eb\u06e5\u06d6\u06d8\u06da\u06eb\u06d7\u06d9\u06d7\u06d6\u06e0\u06ec\u06e7\u06e2\u06e7\u06d7\u06e2\u06e0\u06db\u06d9\u06e2\u06e6\u06d8\u06e8\u06e5\u06d9\u06e7\u06ec\u06dc\u06d9\u06d8\u06dc\u06d8"

    move-object v3, v0

    goto :goto_0

    :sswitch_3
    new-instance v0, Lz2/pv;

    invoke-direct {v0, p0}, Lz2/pv;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->Oooooo:Lz2/pv;

    const-string v0, "\u06dc\u06e8\u06e6\u06e4\u06df\u06e4\u06ec\u06da\u06e6\u06d8\u06df\u06e8\u06da\u06da\u06dc\u06d6\u06e5\u06d6\u06d6\u06d8\u06e0\u06e5\u06e2\u06e4\u06da\u06df\u06e4\u06e0\u06d7\u06df\u06db\u06e2"

    move-object v3, v0

    goto :goto_0

    :sswitch_4
    const v0, 0x7f090243

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->OooooO0:Landroid/widget/RelativeLayout;

    const-string v0, "\u06e8\u06d6\u06ec\u06d7\u06e2\u06e6\u06e5\u06d9\u06dc\u06d8\u06e7\u06e2\u06dc\u06d8\u06d9\u06e6\u06d6\u06d6\u06e0\u06df\u06e4\u06e0\u06e0\u06e0\u06e7\u06e5\u06e2\u06e6\u06d6\u06d8\u06e1\u06ec\u06e1\u06d6\u06e5\u06e8\u06eb\u06e5\u06e5\u06d8"

    move-object v3, v0

    goto :goto_0

    :sswitch_5
    const v0, 0x7f090244

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->OooooOO:Landroid/widget/RelativeLayout;

    const-string v0, "\u06d9\u06e4\u06e1\u06d8\u06d8\u06d6\u06e2\u06e4\u06db\u06da\u06eb\u06e2\u06e5\u06e7\u06e0\u06da\u06e1\u06e7\u06dc\u06d8\u06d9\u06e5\u06eb\u06e5\u06e0\u06da\u06e1\u06e5\u06e0\u06df\u06d6\u06d8\u06e7\u06dc\u06e5\u06d8\u06e8\u06da\u06e5\u06d8\u06d8\u06e8\u06d7\u06db\u06e2\u06db"

    move-object v3, v0

    goto :goto_0

    :sswitch_6
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v6, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    const-string v0, "\u06d7\u06e5\u06d7\u06e8\u06e0\u06e0\u06da\u06d8\u06d8\u06df\u06e1\u06e4\u06d7\u06e6\u06e6\u06d8\u06d8\u06e0\u06e6\u06d8\u06eb\u06e8\u06e6\u06d8\u06df\u06d8\u06ec\u06e2\u06df\u06d7\u06e1\u06df\u06e5\u06d8\u06e5\u06da\u06eb\u06e5\u06dc\u06d6\u06d8"

    move-object v3, v0

    move v11, v6

    goto :goto_0

    :sswitch_7
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->OooooOO:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const-string v3, "\u06e8\u06db\u06e1\u06ec\u06e5\u06e4\u06e1\u06e2\u06d8\u06dc\u06df\u06ec\u06e1\u06d6\u06e5\u06d8\u06eb\u06df\u06e2\u06e6\u06e8\u06e2\u06e0\u06e5\u06d8\u06e7\u06e1\u06d8\u06e7\u06e5\u06e5\u06d8"

    move-object v10, v0

    goto :goto_0

    :sswitch_8
    mul-int/lit8 v0, v11, 0x2

    div-int/lit8 v6, v0, 0x3

    const-string v0, "\u06d7\u06e7\u06d6\u06e7\u06ec\u06e6\u06d8\u06e4\u06d6\u06da\u06e4\u06e5\u06e6\u06e5\u06dc\u06e2\u06e6\u06eb\u06e6\u06df\u06e8\u06eb\u06da\u06e1\u06e4\u06d8\u06e2\u06e2\u06e8\u06dc"

    move-object v3, v0

    move v9, v6

    goto :goto_0

    :sswitch_9
    iput v9, v10, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    const-string v0, "\u06e7\u06e5\u06d9\u06e7\u06e2\u06da\u06d6\u06e8\u06e6\u06d8\u06db\u06ec\u06d6\u06d8\u06e0\u06e6\u06e1\u06e2\u06d7\u06e6\u06d9\u06dc\u06e1\u06d8\u06eb\u06e7\u06e7\u06da\u06e5\u06e5\u06d8\u06ec\u06e6\u06e0"

    move-object v3, v0

    goto :goto_0

    :sswitch_a
    iput v9, v10, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    const-string v0, "\u06ec\u06e6\u06e0\u06eb\u06e0\u06e6\u06d7\u06db\u06e8\u06db\u06e7\u06e4\u06e7\u06d7\u06df\u06e0\u06e1\u06dc\u06db\u06dc\u06d8\u06d8\u06e0\u06db\u06e0\u06d6\u06e8\u06dc\u06d8\u06d8\u06e5\u06d7\u06e7\u06e2\u06d7\u06e1\u06da\u06ec\u06e5\u06eb\u06dc\u06e6\u06d9\u06d9\u06d9\u06dc\u06eb\u06e5\u06dc\u06e2"

    move-object v3, v0

    goto :goto_0

    :sswitch_b
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->OooooOO:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v10}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v0, "\u06eb\u06ec\u06e8\u06d8\u06e2\u06e8\u06d6\u06dc\u06e7\u06d7\u06e7\u06da\u06e4\u06e8\u06d6\u06e1\u06d8\u06d8\u06e6\u06e1\u06d8\u06e5\u06d9\u06d9\u06e8\u06e6\u06d9\u06d6\u06e6\u06db\u06d9\u06eb\u06d8\u06d8\u06d7\u06e7\u06db\u06e4\u06ec\u06d9\u06d8\u06e8\u06dc\u06d8\u06d6\u06da\u06d9\u06e5\u06eb\u06ec\u06d8\u06e5\u06e5"

    move-object v3, v0

    goto/16 :goto_0

    :sswitch_c
    const v0, 0x7f090246

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->OooooOo:Landroid/widget/ImageView;

    const-string v0, "\u06ec\u06dc\u06e7\u06d8\u06da\u06e5\u06ec\u06d7\u06d7\u06d6\u06d7\u06dc\u06d8\u06d8\u06df\u06da\u06e2\u06db\u06e1\u06e0\u06e5\u06e6\u06e1\u06d8\u06e8\u06e7\u06e4\u06e0\u06d6\u06e2\u06e1\u06da\u06d8\u06d8\u06e2\u06df\u06e2\u06d7\u06e1\u06da\u06e1\u06e0\u06d8\u06ec\u06d6\u06d9\u06e7\u06e4\u06e4\u06dc"

    move-object v3, v0

    goto/16 :goto_0

    :sswitch_d
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const v8, 0x3f666666    # 0.9f

    move v3, v1

    move v4, v2

    move v6, v2

    move v7, v5

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    const-string v3, "\u06e1\u06da\u06db\u06e7\u06e7\u06db\u06dc\u06eb\u06e0\u06e2\u06dc\u06e4\u06d7\u06e2\u06da\u06e6\u06e1\u06e5\u06e2\u06e8\u06e5\u06e0\u06d6\u06d6\u06d8\u06e1\u06d9\u06e2\u06da\u06d8\u06e4"

    move-object v4, v0

    goto/16 :goto_0

    :sswitch_e
    const-wide/16 v6, 0x5dc

    invoke-virtual {v4, v6, v7}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    const-string v0, "\u06d8\u06e4\u06d6\u06d7\u06da\u06d8\u06d8\u06d6\u06e1\u06da\u06eb\u06d6\u06e5\u06ec\u06ec\u06d8\u06d8\u06ec\u06db\u06d8\u06d9\u06e8\u06e6\u06e1\u06d7\u06e5\u06d9\u06df\u06d7\u06d6\u06d7\u06e8\u06d8"

    move-object v3, v0

    goto/16 :goto_0

    :sswitch_f
    const/4 v0, -0x1

    invoke-virtual {v4, v0}, Landroid/view/animation/TranslateAnimation;->setRepeatCount(I)V

    const-string v0, "\u06d7\u06eb\u06e4\u06da\u06e4\u06d6\u06df\u06d6\u06eb\u06d8\u06e7\u06e5\u06df\u06d8\u06d9\u06da\u06dc\u06e5\u06e5\u06d8\u06df\u06e8\u06db\u06da\u06db\u06ec\u06e6\u06d6\u06e1\u06d9\u06e6\u06e1\u06df\u06eb\u06d6\u06db\u06e0\u06e4\u06eb\u06d8\u06eb\u06db\u06ec\u06dc\u06da\u06d8\u06d8\u06e6\u06d9\u06e8\u06df\u06e1\u06d6"

    move-object v3, v0

    goto/16 :goto_0

    :sswitch_10
    invoke-virtual {v4, v5}, Landroid/view/animation/TranslateAnimation;->setRepeatMode(I)V

    const-string v0, "\u06e1\u06e5\u06e8\u06d8\u06d8\u06ec\u06e6\u06e7\u06e4\u06e8\u06e6\u06e4\u06e4\u06e8\u06d9\u06e5\u06d8\u06ec\u06d7\u06eb\u06ec\u06df\u06da\u06e2\u06e6\u06e8\u06d8\u06e8\u06d6\u06e8\u06d8\u06e5\u06d6\u06e6\u06d8\u06e1\u06e1\u06e6\u06d8\u06e8\u06d8\u06df\u06e0\u06e2\u06d8\u06e1\u06dc\u06eb\u06df\u06e1\u06d8\u06e2\u06e1\u06e4\u06da\u06db\u06e6\u06d8\u06e7\u06e6\u06ec"

    move-object v3, v0

    goto/16 :goto_0

    :sswitch_11
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v4, v0}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-string v0, "\u06dc\u06d6\u06d7\u06da\u06e8\u06eb\u06df\u06d7\u06ec\u06eb\u06d6\u06d8\u06d8\u06d7\u06e8\u06e5\u06e6\u06da\u06e0\u06e1\u06eb\u06ec\u06dc\u06d7\u06df\u06e4\u06e2\u06d6\u06d8\u06d6\u06e7\u06e8\u06e1\u06ec\u06d9\u06d6\u06d9\u06d6\u06d8\u06e2\u06ec\u06d8\u06e0\u06e2\u06d9\u06db\u06e1\u06ec\u06e5\u06d6\u06dc\u06d8\u06e0\u06e2\u06e1\u06ec\u06df\u06e6\u06d8"

    move-object v3, v0

    goto/16 :goto_0

    :sswitch_12
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->OooooOo:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    const-string v0, "\u06d9\u06db\u06e1\u06dc\u06e4\u06d9\u06d7\u06e4\u06df\u06d7\u06e1\u06eb\u06d8\u06e4\u06ec\u06ec\u06e7\u06dc\u06d8\u06e4\u06d6\u06e7\u06d8\u06df\u06e8\u06e0\u06d9\u06d8\u06d8\u06e5\u06da\u06dc\u06d8\u06e4\u06dc\u06e1\u06d6\u06da\u06d7\u06e8\u06e2\u06d7\u06ec\u06e5\u06e2\u06d7\u06d8\u06e1\u06d8\u06da\u06df\u06e6\u06d8\u06d7\u06e2\u06e6\u06e8\u06ec"

    move-object v3, v0

    goto/16 :goto_0

    :sswitch_13
    const v0, 0x7f090357

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    new-instance v3, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity$OooO00o;

    invoke-direct {v3, p0}, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity$OooO00o;-><init>(Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "\u06d6\u06e5\u06df\u06ec\u06d9\u06e7\u06e6\u06ec\u06dc\u06e6\u06e5\u06d6\u06e0\u06d8\u06d8\u06d8\u06ec\u06e7\u06da\u06e5\u06ec\u06e1\u06d8\u06e4\u06ec\u06e5\u06d8\u06e2\u06e2\u06e1\u06df\u06e1\u06e6\u06d8\u06da\u06df\u06da\u06d7\u06e6\u06e1"

    move-object v3, v0

    goto/16 :goto_0

    :sswitch_14
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7e612345 -> :sswitch_a
        -0x79ac37c3 -> :sswitch_13
        -0x5305910a -> :sswitch_8
        -0x4bb6a05a -> :sswitch_6
        -0x47d24226 -> :sswitch_2
        -0x42ea2104 -> :sswitch_12
        -0x3ab4ad71 -> :sswitch_c
        -0x27f055cd -> :sswitch_5
        -0x160ed1ee -> :sswitch_9
        -0x15af32d6 -> :sswitch_f
        -0x174954c -> :sswitch_10
        0x13f25b98 -> :sswitch_3
        0x14e352cf -> :sswitch_4
        0x21801795 -> :sswitch_e
        0x3a566cce -> :sswitch_14
        0x44629a5e -> :sswitch_b
        0x55fd480f -> :sswitch_d
        0x5f7c2485 -> :sswitch_0
        0x6faabdb5 -> :sswitch_7
        0x7227ec2a -> :sswitch_1
        0x74ee2afe -> :sswitch_11
    .end sparse-switch
.end method


# virtual methods
.method public OooO()Landroid/os/Handler;
    .locals 4

    const-string v0, "\u06df\u06df\u06d6\u06d9\u06e8\u06ec\u06d9\u06dc\u06e5\u06db\u06dc\u06e6\u06d8\u06eb\u06d9\u06e5\u06d8\u06df\u06ec\u06d7\u06db\u06dc\u06e4\u06df\u06e1\u06df\u06d8\u06df\u06eb\u06da\u06df\u06ec\u06da\u06d6\u06e5\u06e2\u06d8\u06da\u06eb\u06ec\u06ec\u06e1\u06e1\u06e4\u06da\u06ec\u06d8\u06d8\u06e2\u06e1\u06ec\u06e5\u06e2\u06e1\u06da\u06e4\u06e0"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x25c

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x263

    const/16 v2, 0x2c

    const v3, 0x2e1b9572

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e5\u06e8\u06ec\u06e8\u06d8\u06e5\u06e2\u06eb\u06eb\u06e1\u06dc\u06e8\u06d7\u06d9\u06e6\u06d8\u06e1\u06eb\u06e4\u06e7\u06e2\u06e5\u06d6\u06df\u06e5\u06d8\u06e8\u06d6\u06d6\u06d9\u06dc\u06df"

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->Oooooo0:Lcom/zbar/zbar/decode/CaptureActivityHandler;

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x5ecf65b6 -> :sswitch_1
        -0x515530e0 -> :sswitch_0
    .end sparse-switch
.end method

.method public OooO0oO()I
    .locals 4

    const-string v0, "\u06df\u06d8\u06e5\u06d8\u06db\u06da\u06e8\u06df\u06e5\u06e4\u06d7\u06e7\u06dc\u06e2\u06dc\u06e4\u06d6\u06d8\u06df\u06e7\u06dc\u06e6\u06d8\u06d9\u06e8\u06e8\u06d8\u06e4\u06df\u06da\u06db\u06e8\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x12a

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x338

    const/16 v2, 0x2fc

    const v3, -0xa027907

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d8\u06d6\u06d6\u06e2\u06da\u06e4\u06d7\u06d9\u06e1\u06d8\u06e7\u06d8\u06e6\u06d8\u06dc\u06d7\u06e8\u06d8\u06ec\u06eb\u06ec\u06dc\u06dc\u06e5\u06d8\u06df\u06e6\u06eb\u06dc\u06dc\u06e4\u06db\u06e1\u06d8\u06e7\u06d6\u06e1\u06d8\u06da\u06d9\u06df\u06d8\u06e1\u06d8\u06d8\u06df\u06e1\u06e1\u06e4\u06d7\u06e4\u06d7\u06e4"

    goto :goto_0

    :sswitch_1
    iget v0, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->o00ooo:I

    return v0

    :sswitch_data_0
    .sparse-switch
        -0xd7799 -> :sswitch_0
        0x1b5c9682 -> :sswitch_1
    .end sparse-switch
.end method

.method public OooO0oo()I
    .locals 4

    const-string v0, "\u06e1\u06dc\u06ec\u06ec\u06dc\u06d8\u06e7\u06eb\u06e1\u06e4\u06e4\u06df\u06d9\u06eb\u06d7\u06e1\u06e5\u06e1\u06d8\u06e4\u06ec\u06d9\u06df\u06ec\u06e8\u06d8\u06eb\u06d8\u06df\u06e5\u06d6\u06d8\u06ec\u06d6\u06e8\u06d8\u06ec\u06e1\u06d8\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x221

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x362

    const/16 v2, 0x1d6

    const v3, 0x5923bb45

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06da\u06eb\u06e0\u06e5\u06e1\u06ec\u06e0\u06d7\u06d7\u06d7\u06e5\u06e1\u06e6\u06e1\u06dc\u06e0\u06e1\u06e6\u06d8\u06eb\u06e8\u06d8\u06d8\u06e2\u06e7\u06df\u06eb\u06d7\u06ec\u06d8\u06d6\u06e1\u06eb\u06df\u06e2\u06db\u06e6\u06d8\u06e5\u06d8\u06e8\u06ec\u06db\u06d6\u06d8"

    goto :goto_0

    :sswitch_1
    iget v0, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->o00o0O:I

    return v0

    :sswitch_data_0
    .sparse-switch
        -0x724d87c5 -> :sswitch_0
        -0x3d786a29 -> :sswitch_1
    .end sparse-switch
.end method

.method public OooOO0()I
    .locals 4

    const-string v0, "\u06e8\u06e8\u06d9\u06ec\u06d6\u06dc\u06ec\u06e8\u06e1\u06e7\u06d8\u06d8\u06dc\u06da\u06e2\u06d9\u06d6\u06d6\u06d8\u06dc\u06d8\u06d7\u06df\u06e2\u06e1\u06df\u06ec\u06ec\u06db\u06d7\u06e1\u06e1\u06e4\u06dc\u06d8\u06e4\u06e1\u06db\u06e4\u06e5\u06e5\u06d8\u06e4\u06e6"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x2ee

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x83

    const/16 v2, 0xcb

    const v3, -0x5a931b68

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e4\u06e4\u06e6\u06d6\u06e6\u06dc\u06dc\u06df\u06e4\u06d7\u06dc\u06d6\u06d6\u06eb\u06eb\u06d7\u06e8\u06da\u06eb\u06e1\u06d8\u06e0\u06e6\u06d7\u06d7\u06e6\u06df\u06db\u06d7\u06d9"

    goto :goto_0

    :sswitch_1
    iget v0, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->o00Oo0:I

    return v0

    :sswitch_data_0
    .sparse-switch
        -0x6bf4e5e5 -> :sswitch_1
        0x5563747a -> :sswitch_0
    .end sparse-switch
.end method

.method public OooOO0O()I
    .locals 4

    const-string v0, "\u06d6\u06e1\u06e8\u06d8\u06e4\u06d6\u06df\u06e2\u06da\u06df\u06e6\u06e7\u06d6\u06d8\u06df\u06e5\u06d8\u06d6\u06d7\u06e8\u06d8\u06d6\u06df\u06e1\u06e6\u06e6\u06d9\u06eb\u06d6\u06d8\u06d9\u06d7\u06df\u06d8\u06d8\u06e7\u06e2\u06d6\u06df\u06db\u06dc\u06d8\u06e5\u06d6\u06e8\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x7b

    xor-int/2addr v1, v2

    xor-int/lit8 v1, v1, 0x67

    const/16 v2, 0x197

    const v3, 0x12b7ff55

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e8\u06e0\u06da\u06e8\u06da\u06e5\u06d8\u06d7\u06d8\u06e5\u06d8\u06df\u06e2\u06d8\u06d8\u06d6\u06db\u06db\u06e4\u06e5\u06e7\u06d8\u06e2\u06eb\u06e0\u06d7\u06df\u06e0\u06e5\u06e2\u06e6\u06d6\u06d8\u06d8\u06d6\u06d9\u06d8\u06d8\u06e4\u06e7\u06e0\u06d7\u06df\u06eb\u06db\u06e4\u06e6\u06d7\u06eb\u06d7\u06dc\u06e7"

    goto :goto_0

    :sswitch_1
    iget v0, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->o00Ooo:I

    return v0

    :sswitch_data_0
    .sparse-switch
        -0x233d6a36 -> :sswitch_0
        -0x222bd674 -> :sswitch_1
    .end sparse-switch
.end method

.method public OooOO0o(Ljava/lang/String;)V
    .locals 5

    const/4 v1, 0x0

    const-string v0, "\u06e8\u06e0\u06e5\u06e1\u06df\u06e1\u06dc\u06e0\u06e5\u06e8\u06e6\u06e2\u06d7\u06d6\u06e4\u06e4\u06e1\u06db\u06e6\u06e7\u06e1\u06eb\u06e6\u06d8\u06d6\u06dc\u06d8\u06d8\u06df\u06d9\u06dc\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v3, 0x11d

    xor-int/2addr v2, v3

    xor-int/lit16 v2, v2, 0x97

    const/16 v3, 0x320

    const v4, 0x10e7efdc

    xor-int/2addr v2, v3

    xor-int/2addr v2, v4

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06da\u06db\u06da\u06eb\u06df\u06e0\u06d9\u06d9\u06d8\u06d8\u06e4\u06e1\u06ec\u06e1\u06d6\u06e7\u06dc\u06e6\u06e4\u06df\u06ec\u06e6\u06d6\u06d7\u06e5\u06e7\u06dc\u06e8\u06d7\u06e5\u06d9\u06e1\u06df\u06df\u06e5\u06dc\u06d6\u06d8\u06d7\u06e2\u06dc\u06ec\u06d9\u06e2\u06e6\u06eb\u06dc\u06d8\u06e1\u06e1\u06d8"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06d8\u06dc\u06e5\u06e2\u06e8\u06df\u06ec\u06e4\u06e7\u06d9\u06d8\u06e6\u06d7\u06d6\u06e5\u06e7\u06e0\u06da\u06eb\u06d7\u06da\u06e6\u06e1\u06e4\u06e1\u06e4\u06eb\u06d6\u06d6\u06e7\u06e4\u06d6\u06dc\u06dc\u06e8\u06ec"

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->Oooooo:Lz2/pv;

    invoke-virtual {v0}, Lz2/pv;->OooO0O0()V

    const-string v0, "\u06d8\u06db\u06e5\u06db\u06e2\u06e5\u06d6\u06db\u06eb\u06ec\u06d9\u06e5\u06df\u06d7\u06e5\u06e4\u06e7\u06e1\u06e0\u06e4\u06dc\u06d8\u06eb\u06d6\u06e4\u06e2\u06d9\u06e7\u06e8\u06e7\u06d8"

    goto :goto_0

    :sswitch_3
    invoke-direct {p0}, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->OooOOoo()V

    const-string v0, "\u06e2\u06eb\u06d9\u06d7\u06d6\u06e7\u06e1\u06e7\u06e0\u06eb\u06dc\u06d9\u06e5\u06d7\u06e8\u06d8\u06e2\u06e4\u06dc\u06e2\u06ec\u06d6\u06d8\u06e6\u06e1\u06eb\u06df\u06e2\u06df\u06d8\u06d8\u06eb"

    goto :goto_0

    :sswitch_4
    invoke-direct {p0}, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->OooOoO0()V

    const-string v0, "\u06eb\u06d7\u06e6\u06e8\u06dc\u06dc\u06d8\u06e0\u06ec\u06d6\u06dc\u06d7\u06e4\u06e6\u06e8\u06da\u06e5\u06e8\u06d8\u06e5\u06e2\u06e7\u06e8\u06e5\u06d8\u06d8\u06e0\u06d8\u06dc\u06d8\u06e5\u06d6\u06ec\u06e6\u06e2\u06da\u06e6\u06e4\u06e5\u06d8\u06df\u06dc\u06e8\u06e5\u06e6\u06e4\u06e2\u06dc\u06e7\u06d8\u06da\u06e6\u06e6\u06d8"

    goto :goto_0

    :sswitch_5
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->OooooOo:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    const-string v0, "\u06dc\u06e4\u06d6\u06d8\u06df\u06eb\u06dc\u06d8\u06d7\u06e8\u06e1\u06da\u06e2\u06dc\u06e1\u06ec\u06e5\u06d8\u06e4\u06d7\u06db\u06e1\u06e0\u06e8\u06d8\u06e5\u06dc\u06dc\u06d6\u06db\u06e8\u06e8\u06e7\u06e8\u06e2\u06eb\u06ec\u06d8\u06e8\u06d7\u06e5\u06d6\u06ec\u06d9\u06da\u06e1\u06d8\u06db\u06d8\u06e8\u06d8\u06e1\u06db\u06d7\u06e1\u06e1\u06dc\u06d8\u06eb\u06eb\u06ec"

    goto :goto_0

    :sswitch_6
    const v2, 0x19b6552a

    const-string v0, "\u06db\u06eb\u06e2\u06ec\u06e7\u06e1\u06d8\u06df\u06d8\u06e1\u06d8\u06e8\u06e5\u06e7\u06d8\u06e6\u06ec\u06df\u06e5\u06e5\u06dc\u06da\u06db\u06e8\u06d8\u06eb\u06e8\u06e7\u06d8\u06d9\u06e7\u06da\u06dc\u06e0\u06d7\u06e1\u06e5\u06e5\u06e5\u06e7\u06da\u06dc\u06db\u06d9\u06eb\u06e4\u06dc"

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v2

    sparse-switch v3, :sswitch_data_1

    goto :goto_1

    :sswitch_7
    const-string v0, "\u06d9\u06e7\u06e5\u06d8\u06e2\u06e7\u06e7\u06e7\u06d7\u06e4\u06db\u06d7\u06dc\u06d8\u06e0\u06df\u06e7\u06e0\u06d9\u06e6\u06d8\u06d9\u06dc\u06e8\u06d8\u06db\u06d6\u06df\u06dc\u06e1\u06d8\u06ec\u06da\u06e4\u06e4\u06d9\u06dc\u06e2\u06e2\u06ec\u06eb\u06db\u06e8\u06d8\u06e2\u06ec\u06e8\u06d8"

    goto :goto_0

    :sswitch_8
    const-string v0, "\u06d9\u06d8\u06e2\u06db\u06d9\u06d9\u06e4\u06d8\u06e2\u06d6\u06d7\u06d8\u06e1\u06d6\u06d6\u06d8\u06e8\u06e5\u06d8\u06d8\u06e4\u06e4\u06e1\u06e0\u06eb\u06ec\u06e5\u06e6\u06d8\u06df\u06e0\u06d9"

    goto :goto_1

    :sswitch_9
    const v3, -0x5d0ff273

    const-string v0, "\u06dc\u06d6\u06da\u06ec\u06eb\u06d8\u06e4\u06df\u06db\u06e2\u06e7\u06d9\u06d9\u06dc\u06d6\u06da\u06d8\u06e5\u06ec\u06ec\u06e5\u06d8\u06e8\u06e4\u06dc\u06db\u06e1\u06e6\u06d8\u06e0\u06d6\u06eb\u06e8\u06d8\u06e8\u06e6\u06d9\u06e2\u06d8\u06e7\u06e7\u06d9\u06ec\u06db\u06eb\u06ec\u06d6\u06e5\u06df\u06eb\u06ec\u06df\u06da\u06e7\u06d8\u06d8\u06d8"

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    xor-int/2addr v4, v3

    sparse-switch v4, :sswitch_data_2

    goto :goto_2

    :sswitch_a
    const-string v0, "\u06ec\u06df\u06e0\u06d6\u06dc\u06d6\u06d8\u06d7\u06eb\u06df\u06d8\u06eb\u06e6\u06d8\u06db\u06e7\u06d6\u06d8\u06df\u06d6\u06e6\u06d8\u06da\u06e8\u06dc\u06ec\u06d7\u06e2\u06e5\u06e0\u06d6\u06e7\u06e0\u06d6\u06d8\u06e1\u06e5\u06e0\u06dc\u06dc\u06d8\u06d8\u06ec\u06e2\u06ec\u06e4\u06d6\u06e1"

    goto :goto_1

    :cond_0
    const-string v0, "\u06e6\u06e4\u06e2\u06df\u06df\u06dc\u06e2\u06e8\u06e6\u06d6\u06ec\u06e2\u06d6\u06e0\u06da\u06e8\u06e6\u06e5\u06d8\u06df\u06ec\u06e0\u06db\u06e7\u06d9\u06eb\u06ec\u06d7\u06ec\u06da\u06d8\u06d8\u06d9\u06da\u06db\u06d8\u06ec"

    goto :goto_2

    :sswitch_b
    if-eqz p1, :cond_0

    const-string v0, "\u06e2\u06e7\u06e4\u06e0\u06d7\u06e8\u06d8\u06df\u06e5\u06eb\u06db\u06e8\u06e8\u06d8\u06e7\u06e4\u06da\u06d9\u06d9\u06e2\u06d6\u06e7\u06e6\u06e7\u06da\u06e2\u06e0\u06df\u06e6\u06e1\u06e0\u06e8\u06d8"

    goto :goto_2

    :sswitch_c
    const-string v0, "\u06d9\u06e6\u06d8\u06d8\u06e7\u06e0\u06e6\u06d8\u06d7\u06eb\u06e8\u06e2\u06ec\u06e8\u06d8\u06d7\u06db\u06e8\u06d8\u06e7\u06dc\u06e1\u06d8\u06ec\u06d6\u06dc\u06e1\u06ec\u06e8\u06d8\u06e4\u06eb\u06e8\u06d9\u06da\u06ec"

    goto :goto_2

    :sswitch_d
    const-string v0, "\u06e4\u06d7\u06d9\u06e0\u06e5\u06e5\u06d8\u06df\u06e2\u06e0\u06e1\u06eb\u06eb\u06df\u06eb\u06ec\u06e1\u06d8\u06e8\u06da\u06e2\u06df\u06e4\u06e6\u06e1\u06eb\u06ec\u06e1\u06d8\u06e7\u06d8\u06d8\u06d8\u06e7\u06dc\u06d9\u06ec\u06e6\u06d6\u06d8\u06da\u06eb\u06d6\u06d6\u06eb\u06d6\u06d8\u06dc\u06e4\u06d8\u06d7\u06e7\u06dc\u06d8\u06dc\u06d7\u06e5\u06d8\u06df\u06df\u06e0"

    goto :goto_1

    :sswitch_e
    const-string v0, "\u06e2\u06e7\u06e7\u06d6\u06dc\u06e1\u06e6\u06e0\u06dc\u06e0\u06d7\u06ec\u06dc\u06e8\u06d7\u06db\u06e1\u06d7\u06ec\u06ec\u06e6\u06eb\u06e0\u06e8\u06d8\u06d8\u06d7\u06e1\u06e6\u06d9\u06d8\u06d8\u06ec\u06eb\u06e5\u06d8\u06e6\u06db\u06e1\u06d8\u06df\u06e6\u06df\u06e4\u06e2\u06e2"

    goto :goto_0

    :sswitch_f
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v0, "\u06e6\u06e8\u06db\u06eb\u06da\u06e5\u06d8\u06e0\u06e8\u06e8\u06d8\u06e2\u06e7\u06e6\u06eb\u06da\u06ec\u06da\u06e8\u06e7\u06e0\u06e1\u06db\u06ec\u06db\u06db\u06ec\u06eb\u06df\u06e0\u06e2\u06d8\u06d8\u06da\u06da\u06e5\u06e7\u06d8\u06e1\u06d8\u06e1\u06e2\u06d7\u06d6\u06d8\u06e7"

    goto :goto_0

    :sswitch_10
    const-string v0, "SWEEP_RESULT_BACK"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "\u06eb\u06e1\u06dc\u06e5\u06d8\u06eb\u06d7\u06d9\u06d6\u06d8\u06e4\u06d8\u06dc\u06d8\u06eb\u06d6\u06df\u06e4\u06e4\u06d6\u06e5\u06dc\u06d8\u06e4\u06df\u06d6\u06ec\u06d9\u06d8\u06d8\u06d7\u06e5\u06d8\u06d8"

    goto :goto_0

    :sswitch_11
    const/4 v0, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    const-string v0, "\u06e6\u06e5\u06d6\u06d8\u06d9\u06e6\u06dc\u06d7\u06ec\u06e2\u06e7\u06e6\u06e7\u06eb\u06d7\u06e8\u06da\u06d6\u06e2\u06e5\u06ec\u06d6\u06e5\u06e2\u06df\u06e4\u06e1\u06d8\u06eb\u06e1\u06ec\u06e2\u06e7\u06e0\u06e6\u06da\u06e6\u06e4\u06e6\u06d8\u06d8\u06d8\u06d9\u06db"

    goto/16 :goto_0

    :sswitch_12
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const-string v0, "\u06da\u06ec\u06e2\u06d8\u06eb\u06da\u06e4\u06d9\u06e4\u06e2\u06d6\u06ec\u06e8\u06e8\u06dc\u06d8\u06dc\u06db\u06e5\u06d8\u06e5\u06e6\u06d7\u06e7\u06e2\u06e1\u06d6\u06d8\u06e4\u06dc\u06e1\u06d8"

    goto/16 :goto_0

    :sswitch_13
    const v0, 0x7f1002a5

    invoke-static {p0, v0}, Lz2/c5;->OooO0O0(Landroid/content/Context;I)V

    const-string v0, "\u06e7\u06ec\u06e7\u06d6\u06d9\u06db\u06ec\u06d7\u06e5\u06d8\u06d8\u06e6\u06e8\u06e5\u06e5\u06df\u06d9\u06e4\u06e0\u06eb\u06e7\u06d6\u06dc\u06e0\u06e7\u06e4\u06d7\u06e5\u06dc\u06e5\u06ec\u06e0\u06ec\u06e4\u06e2\u06e1\u06e4"

    goto/16 :goto_0

    :sswitch_14
    const-string v0, "\u06e7\u06ec\u06e7\u06d6\u06d9\u06db\u06ec\u06d7\u06e5\u06d8\u06d8\u06e6\u06e8\u06e5\u06e5\u06df\u06d9\u06e4\u06e0\u06eb\u06e7\u06d6\u06dc\u06e0\u06e7\u06e4\u06d7\u06e5\u06dc\u06e5\u06ec\u06e0\u06ec\u06e4\u06e2\u06e1\u06e4"

    goto/16 :goto_0

    :sswitch_15
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x78af5fa0 -> :sswitch_10
        -0x5e27a703 -> :sswitch_0
        -0x42f38c2f -> :sswitch_6
        -0x38aab0ca -> :sswitch_12
        0x6723fb5 -> :sswitch_3
        0x8e6624b -> :sswitch_11
        0x21037d10 -> :sswitch_f
        0x27237e36 -> :sswitch_1
        0x3b04805d -> :sswitch_13
        0x44c7c057 -> :sswitch_4
        0x52fbb1ad -> :sswitch_2
        0x612afdfc -> :sswitch_5
        0x6f8ca035 -> :sswitch_15
        0x7b4d5939 -> :sswitch_14
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x63d98204 -> :sswitch_e
        -0x540883e4 -> :sswitch_7
        -0x1a3646b0 -> :sswitch_d
        0x72200c21 -> :sswitch_9
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        -0x2dd7a3f4 -> :sswitch_8
        -0xe936477 -> :sswitch_b
        0x18ba61ac -> :sswitch_a
        0x5b867396 -> :sswitch_c
    .end sparse-switch
.end method

.method public OooOOOo()Z
    .locals 4

    const-string v0, "\u06e2\u06df\u06e1\u06d8\u06e6\u06db\u06eb\u06d8\u06eb\u06dc\u06d8\u06e5\u06dc\u06e4\u06e6\u06d7\u06d8\u06e0\u06df\u06e0\u06e6\u06eb\u06e6\u06d8\u06e6\u06eb\u06e8\u06e6\u06e6\u06e6\u06d6\u06e7\u06e5\u06d8\u06df\u06ec\u06d6\u06e7\u06ec\u06db\u06df\u06e2\u06e2\u06dc\u06e2\u06e6"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x3cf

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x3ae

    const/16 v2, 0x2f3

    const v3, -0x1f4db146

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06da\u06d8\u06e4\u06e1\u06df\u06e1\u06d7\u06db\u06d9\u06df\u06dc\u06dc\u06d8\u06db\u06ec\u06da\u06ec\u06e4\u06dc\u06d7\u06ec\u06e4\u06e7\u06df\u06ec\u06e4\u06dc\u06d7\u06e8\u06e7\u06d8"

    goto :goto_0

    :sswitch_1
    iget-boolean v0, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->OoooooO:Z

    return v0

    :sswitch_data_0
    .sparse-switch
        -0x7d152e3d -> :sswitch_1
        -0x3eb19316 -> :sswitch_0
    .end sparse-switch
.end method

.method public OooOOo0()V
    .locals 5

    const/4 v4, 0x1

    const-string v0, "\u06e2\u06da\u06e1\u06d8\u06e5\u06e6\u06e0\u06e7\u06e6\u06e6\u06d8\u06db\u06d8\u06e7\u06d8\u06e1\u06d6\u06e7\u06d6\u06e8\u06e5\u06e6\u06e7\u06ec\u06e7\u06d7\u06e6\u06d7\u06e2\u06e5\u06db\u06e6\u06d7\u06e6\u06d8\u06dc\u06d8\u06e6\u06d8\u06d8\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x5e

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x3ff

    const/16 v2, 0x284

    const v3, 0x7ea980c6

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e2\u06dc\u06e7\u06d8\u06dc\u06dc\u06eb\u06e7\u06ec\u06da\u06d8\u06e8\u06d8\u06d8\u06eb\u06df\u06e8\u06d8\u06ec\u06e6\u06dc\u06db\u06dc\u06dc\u06d8\u06e1\u06e5\u06d8\u06d8\u06dc\u06e8\u06e4\u06e5\u06e8\u06d8\u06e1\u06eb\u06e8\u06e7\u06e5\u06d6\u06db\u06e6\u06e0\u06d7\u06e4\u06df"

    goto :goto_0

    :sswitch_1
    const v1, 0x4930a90

    const-string v0, "\u06eb\u06e2\u06d7\u06ec\u06dc\u06df\u06dc\u06da\u06e4\u06e5\u06e0\u06e6\u06d8\u06e0\u06e8\u06e2\u06e4\u06e7\u06e6\u06d8\u06e0\u06d8\u06ec\u06e7\u06e2\u06e1\u06d8\u06e7\u06d6\u06d8\u06eb\u06da\u06e1\u06e7\u06eb\u06db\u06d6\u06e6\u06d8"

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v2, v1

    sparse-switch v2, :sswitch_data_1

    goto :goto_1

    :sswitch_2
    const v2, -0x1dda825b

    const-string v0, "\u06ec\u06e4\u06db\u06da\u06e4\u06d7\u06d7\u06df\u06dc\u06d8\u06d8\u06e7\u06e7\u06dc\u06e1\u06e5\u06d7\u06ec\u06e5\u06e7\u06e1\u06e5\u06d8\u06d6\u06e8\u06d8\u06e8\u06e7\u06ec\u06e2\u06e5\u06d8\u06d8\u06da\u06e0\u06e8\u06d8\u06dc\u06e5\u06d9\u06d6\u06e2\u06e7\u06df\u06db\u06da\u06d6\u06e6\u06eb\u06e1\u06e7"

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v2

    sparse-switch v3, :sswitch_data_2

    goto :goto_2

    :sswitch_3
    iget-boolean v0, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->oo000o:Z

    if-ne v0, v4, :cond_0

    const-string v0, "\u06e0\u06ec\u06e5\u06d8\u06e4\u06ec\u06d6\u06d8\u06d7\u06e6\u06e1\u06d8\u06e8\u06d8\u06e2\u06dc\u06e6\u06df\u06df\u06da\u06e0\u06e5\u06d8\u06dc\u06d8\u06d7\u06d9\u06e5\u06db\u06db\u06e7\u06e6\u06e6\u06e1\u06eb\u06e2\u06ec\u06da\u06d8\u06da\u06e5\u06e8\u06df\u06dc\u06e4\u06e4\u06e6\u06e7\u06db\u06e6\u06df\u06dc\u06d8\u06d7\u06e7\u06da\u06e8\u06e0"

    goto :goto_2

    :sswitch_4
    const-string v0, "\u06da\u06e8\u06e1\u06e7\u06d7\u06e5\u06d8\u06e6\u06db\u06e2\u06ec\u06e2\u06e6\u06e6\u06eb\u06e2\u06e6\u06e8\u06d8\u06d7\u06dc\u06e7\u06e1\u06dc\u06dc\u06d8\u06d9\u06e7\u06e8\u06d8\u06df\u06d7\u06eb\u06eb\u06e7\u06db\u06d9\u06da\u06e8"

    goto :goto_1

    :cond_0
    const-string v0, "\u06da\u06eb\u06e1\u06d8\u06e5\u06db\u06dc\u06e0\u06e4\u06e5\u06ec\u06d9\u06e0\u06df\u06db\u06e6\u06d8\u06e7\u06db\u06ec\u06e5\u06d8\u06eb\u06eb\u06ec\u06ec\u06e5\u06e5\u06e2\u06da\u06e6\u06ec\u06db\u06e6\u06d8\u06da\u06e0\u06e7"

    goto :goto_2

    :sswitch_5
    const-string v0, "\u06eb\u06db\u06df\u06d6\u06e1\u06e8\u06dc\u06d6\u06dc\u06da\u06eb\u06e8\u06e7\u06e1\u06d9\u06df\u06ec\u06eb\u06d8\u06db\u06e8\u06eb\u06e0\u06e8\u06d9\u06e0\u06da\u06df\u06dc\u06d8\u06e0\u06df\u06d7\u06e8\u06e7\u06e7"

    goto :goto_2

    :sswitch_6
    const-string v0, "\u06e1\u06dc\u06ec\u06d6\u06df\u06e1\u06d8\u06e4\u06e6\u06d6\u06d8\u06ec\u06d8\u06e6\u06d8\u06eb\u06e7\u06dc\u06e1\u06d9\u06dc\u06d8\u06dc\u06ec\u06eb\u06ec\u06d7\u06d8\u06d8\u06e7\u06df\u06e8\u06e5\u06dc\u06dc\u06d8\u06d7\u06e5\u06e4\u06ec\u06e4\u06e4\u06da\u06ec\u06d6\u06d8\u06e2\u06da\u06e1\u06d8"

    goto :goto_1

    :sswitch_7
    const-string v0, "\u06da\u06ec\u06e1\u06d9\u06e6\u06d9\u06ec\u06d8\u06e5\u06d8\u06e7\u06e4\u06d8\u06d8\u06e1\u06df\u06d6\u06d8\u06e1\u06dc\u06dc\u06e5\u06d7\u06e8\u06e2\u06e0\u06d9\u06d9\u06e5\u06e6\u06e4\u06eb\u06dc\u06e1\u06d8\u06d7\u06dc\u06e5\u06df\u06d6\u06e8\u06d8\u06e2\u06e4\u06e1\u06d6\u06e2\u06e8\u06d8\u06d9\u06df\u06da"

    goto :goto_1

    :sswitch_8
    const-string v0, "\u06e7\u06e0\u06e2\u06d9\u06e8\u06d6\u06d9\u06ec\u06d9\u06e0\u06da\u06e5\u06d8\u06eb\u06e6\u06e8\u06eb\u06e8\u06e4\u06da\u06e6\u06e6\u06d6\u06e7\u06dc\u06d8\u06dc\u06dc\u06d8\u06dc\u06e5\u06d8\u06e1\u06e5\u06db\u06e5\u06d8\u06e8"

    goto :goto_0

    :sswitch_9
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->oo000o:Z

    const-string v0, "\u06db\u06e2\u06db\u06d6\u06e0\u06e5\u06da\u06d6\u06d8\u06e1\u06e4\u06e2\u06eb\u06df\u06e5\u06e4\u06e6\u06e1\u06d9\u06e2\u06e0\u06e8\u06d9\u06e0\u06e2\u06e4\u06e4\u06d6\u06d8\u06e2"

    goto :goto_0

    :sswitch_a
    invoke-static {}, Lz2/jv;->OooO0O0()Lz2/jv;

    move-result-object v0

    invoke-virtual {v0}, Lz2/jv;->OooO0oO()V

    const-string v0, "\u06e0\u06df\u06e4\u06da\u06d7\u06d6\u06dc\u06db\u06eb\u06e5\u06e2\u06ec\u06d7\u06db\u06df\u06e8\u06df\u06ec\u06ec\u06e2\u06dc\u06e0\u06e5\u06e6\u06eb\u06e1\u06d9\u06df\u06d6\u06e0\u06e2\u06e2\u06d7\u06df\u06e4\u06e4"

    goto :goto_0

    :sswitch_b
    iput-boolean v4, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->oo000o:Z

    const-string v0, "\u06e6\u06e4\u06db\u06df\u06dc\u06d6\u06df\u06da\u06eb\u06e2\u06d7\u06db\u06eb\u06e6\u06d8\u06e4\u06e1\u06e7\u06d8\u06e5\u06e7\u06d6\u06ec\u06e4\u06e6\u06d8\u06e5\u06e1\u06d6\u06d8\u06d9\u06dc\u06df"

    goto :goto_0

    :sswitch_c
    invoke-static {}, Lz2/jv;->OooO0O0()Lz2/jv;

    move-result-object v0

    invoke-virtual {v0}, Lz2/jv;->OooO0o0()V

    const-string v0, "\u06e5\u06e4\u06e1\u06d6\u06e4\u06eb\u06df\u06dc\u06d9\u06df\u06e4\u06d8\u06e2\u06e7\u06e5\u06d8\u06e0\u06e4\u06e5\u06df\u06dc\u06df\u06e4\u06d6\u06d8\u06e4\u06eb\u06e7\u06dc\u06e5\u06e7\u06d8\u06d6\u06e4\u06e1\u06d6\u06e5\u06d8\u06d8\u06df\u06e4\u06e4\u06d8\u06d7\u06e2\u06e1\u06e4\u06eb\u06e6\u06dc\u06d6\u06d8\u06e4\u06ec\u06db\u06e8\u06dc\u06df"

    goto :goto_0

    :sswitch_d
    const-string v0, "\u06e2\u06ec\u06d7\u06db\u06e5\u06e1\u06e4\u06e0\u06e1\u06e5\u06e6\u06e8\u06d8\u06e4\u06eb\u06eb\u06d7\u06d7\u06ec\u06da\u06e8\u06e0\u06e1\u06e2\u06dc\u06d6\u06e5\u06e7\u06d6\u06e1\u06da\u06e4\u06e6\u06d8\u06e4\u06d9\u06dc\u06d8\u06eb\u06d7\u06d6\u06d8\u06eb\u06da\u06e6\u06df\u06dc\u06dc\u06e2\u06e8\u06d8\u06d8"

    goto :goto_0

    :sswitch_e
    const-string v0, "\u06e5\u06e4\u06e1\u06d6\u06e4\u06eb\u06df\u06dc\u06d9\u06df\u06e4\u06d8\u06e2\u06e7\u06e5\u06d8\u06e0\u06e4\u06e5\u06df\u06dc\u06df\u06e4\u06d6\u06d8\u06e4\u06eb\u06e7\u06dc\u06e5\u06e7\u06d8\u06d6\u06e4\u06e1\u06d6\u06e5\u06d8\u06d8\u06df\u06e4\u06e4\u06d8\u06d7\u06e2\u06e1\u06e4\u06eb\u06e6\u06dc\u06d6\u06d8\u06e4\u06ec\u06db\u06e8\u06dc\u06df"

    goto :goto_0

    :sswitch_f
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6e442153 -> :sswitch_a
        -0x41cddf86 -> :sswitch_c
        -0x165f8067 -> :sswitch_e
        0x54029cd -> :sswitch_1
        0x3641cfee -> :sswitch_0
        0x4cf1c74c -> :sswitch_b
        0x57f6a8ae -> :sswitch_9
        0x5cd009b2 -> :sswitch_f
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x44c233af -> :sswitch_8
        -0x20d778fb -> :sswitch_2
        0xb282327 -> :sswitch_7
        0x3dc72dc6 -> :sswitch_d
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        -0x5db53606 -> :sswitch_4
        -0x564df6b0 -> :sswitch_3
        -0x34baeff0 -> :sswitch_5
        -0x1d03af73 -> :sswitch_6
    .end sparse-switch
.end method

.method public OooOo(I)V
    .locals 4

    const-string v0, "\u06e8\u06e7\u06e8\u06d8\u06da\u06e0\u06df\u06da\u06d6\u06e5\u06d8\u06d9\u06d9\u06e6\u06d8\u06db\u06d6\u06d8\u06dc\u06e4\u06e7\u06e4\u06e5\u06e8\u06e7\u06ec\u06e8\u06d7\u06d8\u06e5\u06e6\u06df\u06e4"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x1de

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x31a

    const/16 v2, 0x185

    const v3, 0x7743118e

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06df\u06e2\u06e4\u06da\u06e1\u06db\u06e4\u06d9\u06e7\u06e0\u06e7\u06d8\u06ec\u06d8\u06db\u06df\u06e6\u06e4\u06e8\u06da\u06e7\u06df\u06e8\u06e6\u06d8\u06da\u06e0\u06dc\u06d8\u06e6\u06eb\u06e4\u06eb\u06e0\u06d7\u06db\u06e0\u06ec\u06eb\u06e7\u06d8\u06d6\u06dc\u06d7"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06db\u06da\u06d7\u06db\u06eb\u06e7\u06d8\u06e0\u06d7\u06db\u06d6\u06e5\u06d8\u06e0\u06d6\u06e6\u06d8\u06d6\u06dc\u06e4\u06e0\u06df\u06e5\u06d8\u06df\u06da\u06e6\u06e5\u06e5\u06d7\u06e7\u06ec\u06df\u06da\u06d7\u06dc\u06d8\u06e6\u06e8\u06e8\u06d9\u06d7\u06df\u06dc\u06da\u06da\u06d7\u06df\u06dc\u06df\u06d9\u06e4\u06e7\u06d7\u06e8\u06d8\u06d9\u06db\u06e2"

    goto :goto_0

    :sswitch_2
    iput p1, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->o00Ooo:I

    const-string v0, "\u06e8\u06e6\u06dc\u06d8\u06ec\u06ec\u06eb\u06e6\u06df\u06ec\u06eb\u06e0\u06ec\u06e6\u06eb\u06d7\u06e8\u06e0\u06e2\u06e5\u06e6\u06d8\u06d9\u06e2\u06e8\u06d8\u06e8\u06e7\u06d6\u06db\u06d8\u06e7\u06df\u06d9\u06db\u06eb\u06d7\u06e1\u06d8\u06e4\u06d7\u06d9\u06da\u06e0\u06d6\u06d8"

    goto :goto_0

    :sswitch_3
    return-void

    :sswitch_data_0
    .sparse-switch
        0x16aa4af -> :sswitch_3
        0x242f4f68 -> :sswitch_1
        0x3486c13f -> :sswitch_0
        0x51fea589 -> :sswitch_2
    .end sparse-switch
.end method

.method public OooOo0(I)V
    .locals 4

    const-string v0, "\u06e0\u06e5\u06d8\u06d8\u06e0\u06e1\u06d6\u06df\u06e4\u06e1\u06e5\u06d8\u06e6\u06df\u06e7\u06dc\u06d6\u06ec\u06d9\u06dc\u06da\u06e1\u06d6\u06dc\u06eb\u06e1\u06d6\u06eb\u06e7\u06e0\u06e4\u06e2\u06df\u06ec\u06d9\u06e2\u06db\u06da\u06e4\u06d8\u06da\u06e5\u06e8\u06d8\u06d6\u06e4\u06e0\u06ec\u06df\u06e6\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x7f

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x2fb

    const/16 v2, 0x1c4

    const v3, 0x508f3432

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d8\u06da\u06eb\u06d9\u06d6\u06e2\u06e7\u06eb\u06e5\u06d8\u06ec\u06d6\u06e5\u06e8\u06e1\u06d8\u06d8\u06e0\u06db\u06e7\u06dc\u06e8\u06d8\u06d9\u06e4\u06e5\u06d8\u06eb\u06e5\u06d8\u06d8\u06db\u06db\u06d7\u06db\u06da\u06e0\u06d7\u06d7\u06df\u06ec\u06e5\u06d6\u06e6\u06e8\u06e5\u06d8"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06eb\u06e4\u06e1\u06dc\u06da\u06df\u06df\u06d7\u06e5\u06e7\u06e0\u06dc\u06e1\u06e7\u06e5\u06dc\u06ec\u06eb\u06df\u06e2\u06d9\u06e0\u06e0\u06e4\u06eb\u06eb\u06e1\u06d8\u06ec\u06dc\u06e6\u06d8\u06ec\u06e2\u06e6\u06d7\u06e7\u06e7"

    goto :goto_0

    :sswitch_2
    iput p1, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->o00o0O:I

    const-string v0, "\u06da\u06e6\u06d7\u06e5\u06dc\u06e1\u06e5\u06d9\u06da\u06da\u06eb\u06e1\u06d8\u06eb\u06e0\u06d7\u06e4\u06da\u06e1\u06d8\u06e8\u06ec\u06d8\u06d8\u06dc\u06dc\u06e5\u06d8\u06e1\u06d9\u06d9\u06d6\u06df\u06e6\u06eb\u06da\u06d8\u06d8\u06df\u06e6\u06d9\u06da\u06e6\u06e4\u06e1\u06d8\u06e7\u06e4\u06e7\u06da\u06dc\u06e7\u06db"

    goto :goto_0

    :sswitch_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x55c13f1c -> :sswitch_1
        -0x352a2c0d -> :sswitch_3
        0x4177e4c -> :sswitch_0
        0x39e5beab -> :sswitch_2
    .end sparse-switch
.end method

.method public OooOo00(I)V
    .locals 4

    const-string v0, "\u06e7\u06d8\u06e0\u06df\u06e0\u06da\u06e7\u06e7\u06e2\u06e7\u06d7\u06d7\u06d9\u06e8\u06e1\u06df\u06e8\u06eb\u06e4\u06d8\u06d6\u06d8\u06e5\u06e8\u06e4\u06e6\u06dc\u06e1\u06e5\u06d8\u06e8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x122

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x2f5

    const/16 v2, 0x367

    const v3, -0x6c6bb021

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e6\u06d7\u06e1\u06d9\u06e7\u06da\u06d9\u06e6\u06dc\u06d6\u06e0\u06d9\u06e2\u06ec\u06e6\u06eb\u06dc\u06e8\u06d8\u06d6\u06e7\u06e8\u06e6\u06e4\u06e8\u06d8\u06e0\u06e4\u06eb\u06e5\u06d6\u06d6\u06e7\u06d8\u06ec\u06e5\u06e0\u06e4\u06dc\u06db\u06d8\u06ec\u06dc\u06e6\u06d8\u06db\u06d6\u06d9\u06e6\u06e2\u06dc\u06d8"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06e6\u06e7\u06e6\u06d8\u06d6\u06d8\u06d6\u06d8\u06df\u06ec\u06d9\u06eb\u06d7\u06dc\u06d8\u06dc\u06eb\u06e5\u06d8\u06eb\u06da\u06dc\u06e6\u06e8\u06e5\u06db\u06d6\u06d8\u06d8\u06ec\u06e4\u06db\u06e6\u06d9\u06e8\u06d6\u06e6\u06d8\u06e0\u06e1\u06d8\u06d8\u06df\u06e8\u06e2\u06db\u06e0\u06e8\u06d8\u06df\u06d9\u06ec\u06e1\u06e6\u06e7\u06df\u06ec\u06dc\u06e0\u06e4"

    goto :goto_0

    :sswitch_2
    iput p1, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->o00ooo:I

    const-string v0, "\u06e1\u06da\u06e2\u06dc\u06e2\u06e1\u06d6\u06df\u06e7\u06e2\u06ec\u06e7\u06d8\u06d9\u06e8\u06ec\u06e7\u06d7\u06df\u06e6\u06db\u06e0\u06dc\u06e1\u06e1\u06d9\u06d9\u06e5\u06df\u06e8\u06d8\u06e1\u06db\u06d8\u06d8\u06e2\u06db\u06dc\u06d9\u06d8\u06d6\u06d8\u06d9\u06d7\u06e7\u06ec\u06d9\u06eb\u06e2\u06d6"

    goto :goto_0

    :sswitch_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x4291e910 -> :sswitch_3
        0x119876d3 -> :sswitch_2
        0x3c3f00c4 -> :sswitch_1
        0x5f8c3fb9 -> :sswitch_0
    .end sparse-switch
.end method

.method public OooOo0O(Z)V
    .locals 4

    const-string v0, "\u06d6\u06d9\u06df\u06da\u06d8\u06e2\u06e7\u06e1\u06e7\u06da\u06eb\u06eb\u06dc\u06e0\u06db\u06ec\u06e1\u06e2\u06da\u06d9\u06eb\u06d9\u06e5\u06e2\u06eb\u06e7\u06da\u06db\u06dc\u06d8\u06d8\u06e4\u06e5\u06d6\u06e2\u06eb\u06df\u06eb\u06e5\u06d8\u06e8\u06e4\u06e4\u06da\u06eb\u06d7\u06df\u06da\u06d8\u06eb\u06d6\u06e5\u06d8\u06df\u06d6\u06db"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x151

    xor-int/2addr v1, v2

    xor-int/lit8 v1, v1, 0x7c

    const/16 v2, 0x9

    const v3, 0x7b2f8873

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e6\u06e6\u06e8\u06d8\u06ec\u06e4\u06e5\u06d8\u06e0\u06e2\u06e2\u06dc\u06e0\u06eb\u06d8\u06eb\u06d7\u06d8\u06d9\u06e6\u06e8\u06e7\u06eb\u06ec\u06ec\u06e6\u06da\u06e2\u06dc\u06e5\u06df\u06e4\u06db\u06d8\u06d8\u06dc\u06d8\u06db\u06db\u06db\u06d8\u06e4\u06e8\u06e8\u06d6\u06da\u06dc\u06d8\u06e2\u06e0\u06d7\u06d7\u06d6\u06d9\u06e2\u06df\u06e5\u06d8"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06ec\u06e2\u06d7\u06eb\u06e8\u06d8\u06d8\u06e4\u06d8\u06e1\u06d8\u06eb\u06e0\u06eb\u06df\u06e8\u06e8\u06e1\u06eb\u06e5\u06df\u06e2\u06e6\u06d8\u06df\u06e1\u06e6\u06d8\u06d6\u06e6\u06eb\u06eb\u06d9\u06d8\u06d8\u06d9\u06d8\u06d8\u06d8\u06d7\u06d7\u06d8\u06d8"

    goto :goto_0

    :sswitch_2
    iput-boolean p1, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->OoooooO:Z

    const-string v0, "\u06e2\u06db\u06d8\u06d6\u06e5\u06dc\u06df\u06e0\u06df\u06d9\u06da\u06e0\u06e1\u06d9\u06e8\u06df\u06db\u06da\u06df\u06df\u06eb\u06df\u06db\u06e6\u06df\u06e6\u06eb\u06e6\u06d9\u06e6\u06d8"

    goto :goto_0

    :sswitch_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x24fabb93 -> :sswitch_0
        0x430bcf21 -> :sswitch_2
        0x4b163e23 -> :sswitch_1
        0x55be913a -> :sswitch_3
    .end sparse-switch
.end method

.method public OooOo0o(I)V
    .locals 4

    const-string v0, "\u06e1\u06e0\u06eb\u06e0\u06e8\u06db\u06e1\u06d9\u06da\u06da\u06e6\u06e7\u06d8\u06d6\u06da\u06e5\u06d8\u06e6\u06db\u06e5\u06db\u06d9\u06d6\u06d8\u06d7\u06d9\u06db\u06e1\u06db\u06e7\u06dc\u06d8\u06e5\u06d8\u06eb\u06ec\u06e0\u06e2\u06e5\u06d8\u06d8\u06d6\u06da\u06e2\u06ec\u06ec\u06d6\u06d8\u06e6\u06d8\u06da\u06e7\u06e2\u06e6\u06d8\u06d9\u06db\u06dc\u06d8\u06e7\u06e7\u06e0"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x25c

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x363

    const/16 v2, 0x3a8

    const v3, 0x54b4ff9f

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06ec\u06d8\u06df\u06dc\u06da\u06d7\u06e7\u06d7\u06dc\u06dc\u06dc\u06dc\u06d8\u06eb\u06e8\u06e7\u06df\u06d6\u06d6\u06dc\u06e0\u06df\u06e8\u06e1\u06d6\u06d6\u06db\u06db\u06d9\u06ec\u06d6\u06d8"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06e4\u06e6\u06e5\u06d8\u06db\u06e4\u06e8\u06db\u06da\u06df\u06e5\u06e4\u06e5\u06d8\u06e6\u06d7\u06ec\u06e8\u06d9\u06ec\u06d7\u06e6\u06d7\u06d6\u06e4\u06e8\u06da\u06dc\u06e4\u06d7\u06da\u06e5\u06df\u06e6\u06e0\u06e5\u06e7\u06d8\u06e0\u06db\u06d9\u06e4\u06e7\u06dc"

    goto :goto_0

    :sswitch_2
    iput p1, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->o00Oo0:I

    const-string v0, "\u06e6\u06e0\u06d6\u06db\u06da\u06da\u06df\u06df\u06dc\u06e5\u06da\u06e1\u06d8\u06e1\u06e7\u06e5\u06d8\u06ec\u06da\u06eb\u06e1\u06d6\u06df\u06e2\u06e4\u06df\u06d9\u06e1\u06e5\u06d8\u06eb\u06d6\u06e1\u06db\u06e8\u06d7\u06db\u06e0\u06eb\u06eb\u06e5\u06d9\u06e7\u06d8\u06d8\u06d8\u06eb\u06d7\u06e8\u06d8\u06da\u06d8\u06dc\u06e4\u06e0\u06da\u06ec\u06e0\u06e6\u06d8"

    goto :goto_0

    :sswitch_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x1f3dd159 -> :sswitch_0
        -0x14f1d226 -> :sswitch_1
        -0x83155a6 -> :sswitch_2
        0x36025b01 -> :sswitch_3
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x0

    const-string v0, "\u06dc\u06d7\u06e6\u06d9\u06e2\u06dc\u06ec\u06e8\u06e5\u06d8\u06e0\u06e6\u06e5\u06d9\u06d9\u06d7\u06e4\u06ec\u06dc\u06e0\u06e4\u06e0\u06e1\u06e5\u06eb\u06e5\u06d6\u06eb\u06e1\u06dc\u06eb\u06d9\u06ec\u06e6\u06eb\u06e2\u06da"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x358

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x18e

    const/16 v2, 0x182

    const v3, -0x79ce88d5

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e1\u06e1\u06db\u06d9\u06e0\u06e5\u06da\u06d9\u06d6\u06d6\u06e5\u06df\u06e0\u06e2\u06e8\u06d8\u06e0\u06d6\u06ec\u06d9\u06eb\u06db\u06da\u06d8\u06d7\u06ec\u06ec\u06e7\u06ec\u06d6\u06e5\u06e5\u06e1\u06e8\u06e4\u06e8"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06df\u06e7\u06e1\u06d8\u06d6\u06e6\u06d6\u06d8\u06e4\u06e1\u06d8\u06e7\u06e0\u06e5\u06d8\u06e0\u06e0\u06e8\u06d8\u06e5\u06e8\u06d8\u06d9\u06eb\u06e1\u06dc\u06e0\u06e2\u06e8\u06db\u06e0\u06e2\u06db\u06eb\u06df\u06ec\u06d7\u06ec\u06e0\u06e1\u06e1\u06d8\u06df\u06dc\u06e2"

    goto :goto_0

    :sswitch_2
    invoke-super {p0, p1}, Lcom/cyjh/common/base/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "\u06e6\u06e5\u06d6\u06d8\u06e0\u06e2\u06e0\u06d7\u06e5\u06e8\u06df\u06d6\u06e6\u06dc\u06e6\u06d6\u06d7\u06e1\u06d6\u06d8\u06ec\u06e4\u06e4\u06d9\u06e8\u06d8\u06d9\u06e1\u06e7\u06e5\u06eb\u06d8\u06d8\u06e1\u06e7\u06d6\u06ec\u06e1\u06d6\u06d9\u06e2\u06d6\u06d8\u06dc\u06e7"

    goto :goto_0

    :sswitch_3
    const v0, 0x7f0c0032

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    const-string v0, "\u06e4\u06d9\u06e5\u06d8\u06e7\u06eb\u06e6\u06e6\u06eb\u06d8\u06d8\u06e4\u06d7\u06d7\u06e7\u06e1\u06db\u06e8\u06dc\u06dc\u06e5\u06d7\u06db\u06ec\u06e8\u06df\u06db\u06d8\u06da\u06e4\u06e1\u06eb\u06d9\u06e6\u06e0\u06d7\u06eb"

    goto :goto_0

    :sswitch_4
    const v1, 0xd5ea316

    const-string v0, "\u06d6\u06e5\u06d8\u06d7\u06df\u06d8\u06d8\u06e7\u06e4\u06eb\u06dc\u06e6\u06e6\u06e4\u06e5\u06d9\u06df\u06e7\u06da\u06e2\u06e7\u06e8\u06e4\u06e6\u06ec\u06da\u06d6\u06d7\u06e0\u06e2\u06d6\u06d6\u06e1\u06d8\u06d8\u06e2\u06da\u06d8\u06d9\u06d7\u06df\u06ec\u06e6\u06d8\u06e8\u06e4\u06da\u06e8\u06e1\u06e8\u06d8\u06d7\u06eb\u06e6\u06d8\u06d6\u06e1\u06ec"

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v2, v1

    sparse-switch v2, :sswitch_data_1

    goto :goto_1

    :sswitch_5
    const-string v0, "\u06e6\u06db\u06e8\u06e6\u06d8\u06e2\u06d9\u06d6\u06dc\u06e8\u06df\u06e2\u06da\u06d8\u06eb\u06ec\u06df\u06dc\u06e8\u06d7\u06dc\u06d8\u06d8\u06e5\u06e8\u06e5\u06e7\u06e7\u06e0\u06e2\u06e2\u06d8\u06e5\u06d8\u06ec\u06e6\u06d8\u06e4\u06df\u06d7\u06e8\u06e7\u06e8\u06e7\u06d8\u06da\u06e2\u06d6\u06e8\u06d8\u06d6\u06e7\u06e1\u06d8\u06e4\u06e6\u06e8"

    goto :goto_0

    :sswitch_6
    const-string v0, "\u06e0\u06eb\u06dc\u06e0\u06e8\u06e2\u06e4\u06da\u06e4\u06e6\u06e7\u06e0\u06db\u06e0\u06e5\u06e6\u06ec\u06db\u06df\u06e1\u06da\u06d7\u06ec\u06dc\u06d8\u06e6\u06e4\u06db\u06df\u06dc\u06e1\u06d8\u06e0\u06eb\u06e8\u06eb\u06e6\u06dc\u06dc\u06eb\u06d6\u06d8\u06d6\u06e4\u06e1\u06db\u06eb\u06e6\u06e4\u06d8\u06d8"

    goto :goto_1

    :sswitch_7
    const v2, -0x42907e5f

    const-string v0, "\u06e7\u06df\u06e5\u06d8\u06df\u06e6\u06da\u06ec\u06e6\u06d9\u06e6\u06eb\u06e2\u06d6\u06dc\u06dc\u06d8\u06eb\u06dc\u06d9\u06e2\u06e1\u06d9\u06da\u06da\u06d6\u06e8\u06e5\u06d8\u06ec\u06e6\u06e5\u06ec\u06eb\u06d8\u06e5\u06e2\u06e2\u06e4\u06e5\u06e4\u06e6\u06df\u06eb"

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v2

    sparse-switch v3, :sswitch_data_2

    goto :goto_2

    :sswitch_8
    const-string v0, "\u06ec\u06d7\u06eb\u06d7\u06da\u06d9\u06e8\u06e6\u06e5\u06db\u06ec\u06d7\u06e7\u06db\u06d6\u06e4\u06ec\u06e1\u06d6\u06d8\u06dc\u06e7\u06d6\u06d9\u06e6\u06e1\u06db\u06db\u06e1\u06db\u06eb\u06e6\u06e8\u06eb\u06e0\u06eb\u06d9\u06e0\u06e1\u06d9\u06db"

    goto :goto_2

    :cond_0
    const-string v0, "\u06e5\u06d8\u06e1\u06d8\u06e5\u06da\u06e1\u06d8\u06e7\u06d6\u06e2\u06e4\u06ec\u06d8\u06d8\u06df\u06df\u06d6\u06d9\u06ec\u06d9\u06db\u06e2\u06e2\u06df\u06df\u06dc\u06d8\u06e0\u06e7\u06d6\u06d8\u06d7\u06e4\u06d6"

    goto :goto_2

    :sswitch_9
    const-string v0, "android.permission.CAMERA"

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u06eb\u06e8\u06d6\u06e0\u06d6\u06e8\u06d8\u06d9\u06e0\u06e6\u06d8\u06e5\u06df\u06e6\u06d8\u06e4\u06d9\u06d9\u06e4\u06df\u06d6\u06e6\u06d8\u06d6\u06d8\u06e0\u06dc\u06e1\u06d8\u06e4\u06e8\u06e5\u06e7\u06e8\u06e8\u06e0\u06e7\u06db\u06e1\u06e4\u06e4\u06da\u06e4\u06e6\u06d8\u06dc\u06e8\u06e1\u06ec\u06eb\u06d6\u06d8\u06e0\u06d8\u06e8\u06d6\u06d9\u06df\u06e6\u06d7"

    goto :goto_2

    :sswitch_a
    const-string v0, "\u06e6\u06db\u06d6\u06d8\u06dc\u06d7\u06d8\u06d8\u06db\u06dc\u06e0\u06e1\u06e6\u06e1\u06d6\u06d6\u06db\u06e0\u06eb\u06ec\u06e2\u06dc\u06e8\u06e5\u06df\u06d6\u06d8\u06e7\u06eb\u06e7\u06e4\u06e2\u06df\u06e0\u06e7\u06dc\u06d8\u06db\u06e5\u06d8\u06e2\u06e6\u06df\u06df\u06df\u06e5\u06d8\u06e5\u06eb\u06e5\u06d8\u06dc\u06ec\u06e8\u06d8\u06dc\u06d8\u06d7\u06e4\u06eb\u06e1"

    goto :goto_1

    :sswitch_b
    const-string v0, "\u06e0\u06d7\u06db\u06e5\u06d8\u06e7\u06d8\u06db\u06e6\u06d8\u06e5\u06e7\u06e1\u06d7\u06e8\u06db\u06e4\u06d8\u06da\u06e7\u06df\u06d8\u06e8\u06d6\u06eb\u06db\u06e8\u06da\u06d9\u06e5\u06d6\u06d7\u06d9\u06e2\u06d7\u06d7\u06d8"

    goto :goto_1

    :sswitch_c
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "android.permission.CAMERA"

    aput-object v1, v0, v4

    invoke-static {p0, v0, v4}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    const-string v0, "\u06ec\u06d8\u06e7\u06d8\u06d6\u06ec\u06df\u06e0\u06e2\u06dc\u06d8\u06e7\u06d9\u06e0\u06db\u06e8\u06ec\u06d8\u06d9\u06da\u06e8\u06d7\u06e8\u06d8\u06e8\u06e1\u06d6\u06d8\u06e6\u06eb\u06d8\u06d8\u06d6\u06e2\u06e8\u06d8"

    goto :goto_0

    :sswitch_d
    invoke-direct {p0}, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->OooOOOO()V

    const-string v0, "\u06e2\u06e4\u06e8\u06eb\u06e6\u06e4\u06d6\u06e7\u06da\u06dc\u06df\u06e4\u06d9\u06e7\u06d6\u06e4\u06e5\u06e5\u06df\u06e8\u06e2\u06df\u06db\u06e1\u06d7\u06eb\u06e7\u06e7\u06d8\u06d8\u06d8\u06eb\u06d9\u06d8\u06da\u06ec\u06d8\u06df\u06e7\u06dc\u06d8\u06db\u06e6\u06e6\u06d8"

    goto :goto_0

    :sswitch_e
    invoke-direct {p0}, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->initView()V

    const-string v0, "\u06e4\u06d7\u06d8\u06d8\u06d6\u06db\u06e6\u06d8\u06dc\u06dc\u06e8\u06e7\u06d9\u06d9\u06e4\u06df\u06eb\u06df\u06e0\u06d8\u06e4\u06dc\u06dc\u06e7\u06e7\u06d8\u06d6\u06e7\u06d6\u06d8\u06d7\u06dc\u06e6\u06d8\u06d9\u06e2\u06e4\u06e1\u06dc"

    goto :goto_0

    :sswitch_f
    const-string v0, "\u06ec\u06da\u06dc\u06d8\u06e7\u06ec\u06e8\u06d8\u06eb\u06e4\u06d6\u06d8\u06e7\u06db\u06e6\u06d8\u06e6\u06e1\u06e5\u06d8\u06d7\u06e4\u06e4\u06d6\u06dc\u06d8\u06e2\u06e0\u06d7\u06e2\u06e6\u06e0\u06dc\u06d8\u06db\u06e7\u06d7\u06dc\u06d8\u06e2\u06e5\u06e6"

    goto :goto_0

    :sswitch_10
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x40971bd7 -> :sswitch_0
        -0x396ca1e9 -> :sswitch_10
        -0x2e85297f -> :sswitch_e
        -0x1af8c52a -> :sswitch_3
        -0xe2481e5 -> :sswitch_1
        0x578c286 -> :sswitch_10
        0x1c137d17 -> :sswitch_2
        0x20c729c8 -> :sswitch_c
        0x36846c8f -> :sswitch_4
        0x37b8e6db -> :sswitch_d
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x2865ebbd -> :sswitch_f
        -0x21059822 -> :sswitch_5
        0xfb17038 -> :sswitch_b
        0x3ec1d5bb -> :sswitch_7
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        -0x70f7249a -> :sswitch_9
        0x2cc04163 -> :sswitch_a
        0x425ac8df -> :sswitch_6
        0x5e290ce3 -> :sswitch_8
    .end sparse-switch
.end method

.method public onDestroy()V
    .locals 4

    const-string v0, "\u06d7\u06e5\u06e6\u06d8\u06e6\u06dc\u06e0\u06dc\u06d8\u06e6\u06d8\u06df\u06e2\u06e7\u06e2\u06e0\u06d9\u06e2\u06d9\u06e6\u06ec\u06d9\u06d7\u06d7\u06d8\u06db\u06e8\u06d8\u06d7\u06da\u06d8\u06d8\u06e1\u06df\u06e4\u06e5\u06dc\u06e6\u06d8\u06e8\u06d9\u06d6\u06e7\u06db\u06d9\u06eb\u06e5\u06df\u06db\u06d7\u06e2\u06df\u06eb\u06e2\u06df\u06da\u06e0"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0xe4

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x32d

    const/16 v2, 0x3b

    const v3, -0x327933f2

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e7\u06eb\u06d7\u06e2\u06e7\u06d9\u06eb\u06e1\u06d8\u06dc\u06e1\u06db\u06ec\u06e0\u06e8\u06d8\u06e0\u06db\u06da\u06db\u06df\u06e8\u06d8\u06eb\u06e7\u06eb\u06e5\u06e8\u06e0\u06d9\u06d7\u06eb"

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->Oooooo:Lz2/pv;

    invoke-virtual {v0}, Lz2/pv;->OooO0OO()V

    const-string v0, "\u06d7\u06eb\u06e0\u06d7\u06d8\u06eb\u06d8\u06e6\u06d8\u06e8\u06eb\u06dc\u06e0\u06ec\u06e7\u06e4\u06df\u06e5\u06d8\u06d7\u06eb\u06df\u06d6\u06dc\u06d9\u06df\u06dc\u06e8\u06d8\u06e1\u06dc\u06e8"

    goto :goto_0

    :sswitch_2
    invoke-super {p0}, Lcom/cyjh/common/base/activity/BaseActivity;->onDestroy()V

    const-string v0, "\u06dc\u06e5\u06e4\u06db\u06d9\u06e1\u06db\u06e5\u06d8\u06d9\u06e8\u06df\u06d7\u06eb\u06e1\u06e1\u06e2\u06e0\u06d8\u06e1\u06e8\u06e5\u06e6\u06e1\u06d8\u06e2\u06eb\u06e8\u06d8\u06eb\u06d6\u06d9"

    goto :goto_0

    :sswitch_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x34eb8720 -> :sswitch_2
        -0x5468800 -> :sswitch_0
        0x103ddaa6 -> :sswitch_3
        0x2bca5699 -> :sswitch_1
    .end sparse-switch
.end method

.method public onPause()V
    .locals 4

    const-string v0, "\u06dc\u06df\u06dc\u06d8\u06d7\u06e0\u06dc\u06d8\u06e0\u06eb\u06e1\u06e7\u06e6\u06e4\u06df\u06e7\u06d6\u06e2\u06da\u06e5\u06e8\u06e8\u06ec\u06d8\u06db\u06e1\u06d8\u06d8\u06db\u06e8\u06da\u06da\u06dc\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0xd4

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x3ec

    const/16 v2, 0xc2

    const v3, 0x344dec7b

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e0\u06e7\u06ec\u06df\u06da\u06e6\u06e6\u06eb\u06db\u06da\u06ec\u06ec\u06db\u06d8\u06d8\u06e6\u06e5\u06e2\u06e2\u06df\u06e7\u06e7\u06d7\u06df\u06e8\u06e4\u06e5\u06e2\u06ec\u06e1\u06eb\u06e1\u06df\u06e0\u06e0\u06ec\u06e8\u06da\u06df\u06e7\u06e1\u06e5\u06d8"

    goto :goto_0

    :sswitch_1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    const-string v0, "\u06d6\u06eb\u06e1\u06d8\u06dc\u06e1\u06ec\u06da\u06d9\u06d6\u06d8\u06e5\u06e0\u06e1\u06d8\u06e8\u06dc\u06dc\u06e5\u06d8\u06ec\u06d9\u06d6\u06d6\u06da\u06e5\u06d8\u06ec\u06e8\u06dc\u06e1\u06df\u06dc\u06d8\u06e8\u06e2\u06e8\u06d8\u06e7\u06d9\u06e8\u06eb\u06e2\u06d6\u06d8\u06e6"

    goto :goto_0

    :sswitch_2
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    const-string v0, "\u06e6\u06e7\u06da\u06e8\u06df\u06e6\u06d8\u06d6\u06d9\u06e2\u06eb\u06eb\u06e5\u06e4\u06e7\u06e0\u06d8\u06d8\u06e8\u06e8\u06dc\u06d8\u06d9\u06e0\u06d7\u06e2\u06e7\u06d7\u06e5\u06eb\u06d8\u06df\u06d7\u06e1\u06d8\u06e5\u06d6\u06e1\u06e0\u06df\u06d6\u06d6\u06eb\u06d8\u06eb\u06d7\u06d9\u06ec\u06dc\u06db"

    goto :goto_0

    :sswitch_3
    invoke-direct {p0}, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->OooOoO0()V

    const-string v0, "\u06df\u06e8\u06e6\u06d8\u06db\u06d6\u06dc\u06d8\u06da\u06eb\u06eb\u06e6\u06e1\u06e2\u06e6\u06e5\u06d8\u06d7\u06eb\u06e2\u06e1\u06d9\u06dc\u06d8\u06db\u06d7\u06d8\u06d8\u06ec\u06d8\u06db\u06d7\u06db\u06d9\u06dc\u06e4\u06eb\u06dc\u06df\u06e5\u06e0\u06ec\u06db\u06d9\u06e6\u06e4"

    goto :goto_0

    :sswitch_4
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7ef806f4 -> :sswitch_0
        -0x400edff0 -> :sswitch_4
        -0x359c3df7 -> :sswitch_2
        0xfc81853 -> :sswitch_1
        0x3d92140d -> :sswitch_3
    .end sparse-switch
.end method

.method public onResume()V
    .locals 6

    const/4 v5, 0x1

    const/4 v1, 0x0

    const-string v0, "\u06ec\u06e0\u06df\u06ec\u06e0\u06d8\u06d8\u06e7\u06ec\u06d6\u06dc\u06e0\u06d8\u06ec\u06e8\u06d9\u06da\u06e8\u06d6\u06d8\u06e7\u06e2\u06d7\u06eb\u06e8\u06d8\u06e6\u06dc\u06d7\u06d9\u06e2\u06e6\u06d8\u06e2\u06d7\u06e8\u06e8\u06e2\u06ec\u06e4\u06e0\u06ec\u06d7\u06e4\u06d8\u06dc\u06e5\u06e8\u06d8\u06da\u06e8\u06e1\u06d8\u06df\u06e4\u06dc\u06d8\u06dc\u06e0\u06e6"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v3, 0x1c6

    xor-int/2addr v2, v3

    xor-int/lit16 v2, v2, 0x278

    const/16 v3, 0x126

    const v4, -0x754f4f71

    xor-int/2addr v2, v3

    xor-int/2addr v2, v4

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06db\u06e1\u06d6\u06d9\u06e0\u06e4\u06e8\u06db\u06e4\u06eb\u06e4\u06e6\u06d8\u06e8\u06e2\u06e6\u06d8\u06e1\u06e2\u06e5\u06da\u06e4\u06eb\u06d7\u06d8\u06d7\u06e4\u06e5\u06e0\u06d8\u06e5\u06e2\u06df\u06e4\u06e6\u06d8\u06d7\u06e0\u06e4\u06e7\u06e8\u06ec\u06e2\u06e6\u06eb"

    goto :goto_0

    :sswitch_1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    const-string v0, "\u06db\u06ec\u06e2\u06e1\u06e7\u06da\u06d6\u06e8\u06da\u06dc\u06d8\u06e2\u06e5\u06d7\u06e1\u06d8\u06e1\u06d6\u06d8\u06e0\u06e5\u06e7\u06d8\u06db\u06db\u06e5\u06e4\u06e8\u06d9\u06da\u06e2\u06e1"

    goto :goto_0

    :sswitch_2
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    const-string v0, "\u06da\u06d9\u06ec\u06d7\u06e8\u06e8\u06d8\u06e2\u06eb\u06e2\u06d8\u06d6\u06d8\u06d8\u06e0\u06da\u06d9\u06d7\u06eb\u06d9\u06e6\u06d6\u06d8\u06e1\u06d9\u06ec\u06e8\u06e0\u06d8\u06eb\u06d6\u06d7\u06e1\u06d9\u06dc\u06d8\u06e0\u06e7\u06d8\u06d8\u06e5\u06ec\u06db\u06d6\u06e8\u06ec\u06eb\u06da\u06e6\u06d8\u06e4\u06e2\u06da"

    goto :goto_0

    :sswitch_3
    const v0, 0x7f090245

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    const-string v0, "\u06d8\u06e6\u06e6\u06d8\u06e6\u06d6\u06e6\u06d8\u06e8\u06d8\u06e6\u06e2\u06d6\u06e2\u06e8\u06db\u06da\u06e6\u06dc\u06e5\u06d6\u06db\u06eb\u06e2\u06e8\u06d8\u06e1\u06e7\u06d9\u06d6\u06d8\u06e1\u06d8\u06dc\u06d6\u06dc\u06e7\u06e7\u06e5\u06d8"

    goto :goto_0

    :sswitch_4
    const v2, 0x50d16168

    const-string v0, "\u06df\u06e1\u06e7\u06d8\u06d6\u06ec\u06e7\u06e4\u06df\u06e4\u06e1\u06e1\u06d8\u06d9\u06e5\u06e6\u06d8\u06d8\u06e4\u06e6\u06d8\u06e6\u06da\u06db\u06da\u06d8\u06da\u06e4\u06da\u06d8\u06e4\u06e6\u06dc\u06db\u06d7\u06d9\u06d6\u06d7\u06e6"

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v2

    sparse-switch v3, :sswitch_data_1

    goto :goto_1

    :sswitch_5
    const-string v0, "\u06ec\u06e0\u06df\u06e5\u06df\u06e6\u06e0\u06ec\u06e8\u06d6\u06dc\u06da\u06e0\u06e5\u06e7\u06d8\u06e1\u06eb\u06d6\u06d8\u06da\u06d7\u06eb\u06db\u06dc\u06eb\u06e6\u06db\u06e1\u06e6\u06e1\u06e0\u06e0\u06d7\u06e8\u06e4\u06e8\u06d8\u06df\u06e5\u06e2\u06ec\u06e1\u06d8"

    goto :goto_0

    :sswitch_6
    const-string v0, "\u06eb\u06e2\u06da\u06e7\u06df\u06e8\u06e1\u06da\u06eb\u06e1\u06d7\u06ec\u06d7\u06e2\u06d8\u06d8\u06e8\u06e1\u06ec\u06d9\u06e5\u06e7\u06e8\u06e0\u06dc\u06d8\u06d6\u06e4\u06db\u06dc\u06d8\u06d6\u06db\u06e5\u06d6\u06d8\u06eb\u06db\u06d9"

    goto :goto_1

    :sswitch_7
    const v3, -0x368193ff

    const-string v0, "\u06e0\u06d8\u06df\u06e2\u06e4\u06e6\u06d8\u06db\u06d7\u06e6\u06df\u06ec\u06d6\u06d8\u06ec\u06e7\u06d6\u06e7\u06d9\u06e8\u06d8\u06d9\u06d6\u06d6\u06d8\u06e0\u06d7\u06e0\u06e1\u06e2\u06e7\u06e6\u06db\u06e4\u06df\u06d9\u06d6\u06d8\u06e2\u06eb\u06e5\u06d8\u06dc\u06d7\u06d6\u06da\u06e0\u06e0\u06d8\u06e4\u06e6\u06da\u06d6\u06e1\u06d8\u06e4\u06e6\u06d7\u06da\u06dc"

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    xor-int/2addr v4, v3

    sparse-switch v4, :sswitch_data_2

    goto :goto_2

    :sswitch_8
    const-string v0, "\u06da\u06db\u06e6\u06d8\u06e0\u06e0\u06db\u06d8\u06e6\u06df\u06df\u06e0\u06da\u06d6\u06e5\u06e7\u06d8\u06eb\u06e7\u06d7\u06d9\u06dc\u06e0\u06db\u06e1\u06d8\u06eb\u06e6\u06e5\u06d8\u06dc\u06e7\u06e0\u06e6\u06d6\u06ec\u06eb\u06d7\u06da\u06e5\u06eb\u06d6\u06dc\u06da\u06e4"

    goto :goto_1

    :cond_0
    const-string v0, "\u06e8\u06d6\u06d9\u06ec\u06dc\u06e2\u06e6\u06db\u06ec\u06d9\u06e2\u06e2\u06d8\u06e7\u06e5\u06e5\u06d7\u06e5\u06e4\u06e1\u06d9\u06d7\u06ec\u06e8\u06db\u06db\u06e6\u06d8\u06dc\u06e1\u06e1\u06d8\u06d7\u06e0\u06d8\u06eb\u06e5\u06d8\u06e5\u06da\u06e2\u06dc\u06d7\u06d7\u06dc\u06d7\u06d6\u06d8\u06d6\u06da\u06e8\u06dc\u06df\u06d6\u06d8\u06e1\u06db\u06e6"

    goto :goto_2

    :sswitch_9
    iget-boolean v0, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->Ooooooo:Z

    if-eqz v0, :cond_0

    const-string v0, "\u06d6\u06d6\u06ec\u06e5\u06eb\u06dc\u06da\u06d8\u06dc\u06e6\u06e0\u06d7\u06ec\u06d6\u06e4\u06e4\u06d7\u06e2\u06e4\u06e4\u06e1\u06e0\u06e1\u06e6\u06e6\u06e0\u06e7\u06e1\u06e5\u06e1\u06e1\u06e1\u06ec\u06e2\u06eb\u06db"

    goto :goto_2

    :sswitch_a
    const-string v0, "\u06dc\u06dc\u06e6\u06d8\u06df\u06d6\u06d8\u06e2\u06d6\u06ec\u06e2\u06d8\u06d9\u06ec\u06e2\u06d9\u06e2\u06e2\u06da\u06df\u06e8\u06e0\u06e0\u06db\u06ec\u06db\u06e1\u06e4\u06eb\u06d9\u06e4\u06da\u06e5\u06eb\u06df\u06e5\u06e8\u06d8\u06ec\u06e8\u06d8\u06d8\u06e5\u06e7\u06d9\u06dc\u06d7\u06e7\u06eb\u06e6\u06dc"

    goto :goto_2

    :sswitch_b
    const-string v0, "\u06df\u06da\u06d8\u06d8\u06e1\u06d7\u06e0\u06d9\u06db\u06df\u06d8\u06db\u06d8\u06d8\u06e2\u06e2\u06e4\u06eb\u06e2\u06d7\u06db\u06db\u06dc\u06d8\u06d6\u06db\u06dc\u06df\u06eb\u06d6\u06e8\u06e7\u06e8\u06d8"

    goto :goto_1

    :sswitch_c
    invoke-direct {p0, v1}, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->OooOOO(Landroid/view/SurfaceHolder;)V

    const-string v0, "\u06dc\u06e1\u06ec\u06e4\u06e4\u06e8\u06dc\u06ec\u06da\u06e4\u06da\u06d9\u06d9\u06e5\u06e5\u06d6\u06e5\u06d8\u06e1\u06e4\u06e8\u06d8\u06e7\u06e5\u06e1\u06d8\u06da\u06e8\u06e1\u06eb\u06d9\u06d8"

    goto :goto_0

    :sswitch_d
    invoke-interface {v1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    const-string v0, "\u06dc\u06e4\u06e1\u06eb\u06e5\u06e6\u06d9\u06d8\u06e0\u06d6\u06df\u06e4\u06dc\u06e4\u06e2\u06d8\u06d6\u06e6\u06d8\u06df\u06e8\u06ec\u06e8\u06e1\u06e1\u06d8\u06e4\u06ec\u06db\u06d9\u06dc\u06e2"

    goto :goto_0

    :sswitch_e
    const/4 v0, 0x3

    invoke-interface {v1, v0}, Landroid/view/SurfaceHolder;->setType(I)V

    const-string v0, "\u06eb\u06d8\u06d7\u06e7\u06d7\u06eb\u06e1\u06ec\u06e7\u06dc\u06d8\u06d7\u06d7\u06ec\u06e4\u06d8\u06d7\u06d6\u06ec\u06e8\u06e6\u06d7\u06e5\u06eb\u06d6\u06dc\u06d8\u06e4\u06e4\u06d8\u06d8\u06db\u06e6\u06d8\u06d8\u06e4\u06e5\u06d6\u06d8"

    goto :goto_0

    :sswitch_f
    iput-boolean v5, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->o0OoOo0:Z

    const-string v0, "\u06da\u06e7\u06d8\u06d8\u06e4\u06d6\u06e4\u06d8\u06e7\u06da\u06d8\u06da\u06d7\u06e4\u06d6\u06ec\u06d6\u06e8\u06d8\u06e4\u06e2\u06da\u06dc\u06ec\u06eb\u06d9\u06dc\u06e8\u06dc\u06e8\u06d6\u06d8\u06d8\u06eb\u06db\u06e5\u06df\u06d7\u06e8\u06d7\u06e6\u06e2\u06e4\u06e2\u06d9\u06e0\u06e1\u06d8\u06db\u06d7\u06dc\u06d8\u06df\u06e5\u06e5\u06ec\u06db\u06db"

    goto :goto_0

    :sswitch_10
    const v2, 0x254014

    const-string v0, "\u06db\u06d9\u06e6\u06d8\u06e6\u06d7\u06da\u06dc\u06df\u06e6\u06d6\u06e0\u06eb\u06eb\u06dc\u06ec\u06d6\u06db\u06d8\u06d8\u06dc\u06da\u06e6\u06e7\u06e4\u06d8\u06d8\u06e5\u06db\u06ec\u06e7\u06e0\u06e1\u06e5\u06ec\u06df\u06d7\u06d6\u06e6\u06d8\u06da\u06d8\u06e7\u06d8\u06e8\u06e4\u06e5\u06d8"

    :goto_3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v2

    sparse-switch v3, :sswitch_data_3

    goto :goto_3

    :sswitch_11
    const v3, 0x67a8866f

    const-string v0, "\u06e0\u06e5\u06e5\u06d8\u06e5\u06db\u06e1\u06d6\u06e8\u06e7\u06d8\u06e5\u06dc\u06e8\u06d8\u06da\u06da\u06df\u06e7\u06dc\u06da\u06e2\u06e0\u06e5\u06e8\u06e6\u06e0\u06d6\u06da\u06e2\u06e0\u06db\u06d8\u06e8\u06eb\u06df\u06e6\u06db\u06e8\u06d8\u06db\u06ec\u06d6\u06d8\u06da\u06e5\u06e2\u06dc\u06da\u06e7\u06dc\u06e5\u06d8"

    :goto_4
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    xor-int/2addr v4, v3

    sparse-switch v4, :sswitch_data_4

    goto :goto_4

    :sswitch_12
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    const/4 v4, 0x2

    if-eq v0, v4, :cond_1

    const-string v0, "\u06e4\u06e5\u06e6\u06d8\u06da\u06eb\u06df\u06d7\u06d7\u06e8\u06dc\u06eb\u06e7\u06d8\u06d7\u06ec\u06ec\u06d7\u06e5\u06df\u06e1\u06e5\u06e4\u06db\u06df\u06d9\u06da\u06e4\u06e8\u06e1\u06d8\u06df\u06d7\u06e0\u06d6\u06db\u06d8\u06d8"

    goto :goto_4

    :sswitch_13
    const-string v0, "\u06eb\u06dc\u06e6\u06e1\u06da\u06e8\u06d7\u06df\u06e7\u06d8\u06e8\u06e0\u06d6\u06d6\u06d8\u06df\u06e5\u06e7\u06d8\u06e2\u06d8\u06e6\u06e2\u06d6\u06d8\u06e5\u06e8\u06e5\u06d8\u06df\u06e4\u06e1\u06d8\u06df\u06dc\u06ec\u06ec\u06df\u06e5"

    goto :goto_3

    :cond_1
    const-string v0, "\u06e7\u06ec\u06ec\u06ec\u06dc\u06db\u06e5\u06d8\u06d8\u06dc\u06e0\u06eb\u06e7\u06e1\u06da\u06df\u06df\u06e0\u06e6\u06eb\u06d8\u06d8\u06d9\u06d8\u06e8\u06d8\u06d6\u06df\u06e4\u06e6\u06eb\u06d9\u06dc\u06d7\u06e7\u06e5\u06dc\u06e5\u06d8\u06e5\u06eb\u06e0\u06e7\u06e5\u06d7\u06da\u06e8\u06d8\u06e0\u06e1\u06e5\u06d8"

    goto :goto_4

    :sswitch_14
    const-string v0, "\u06e5\u06d8\u06e5\u06d8\u06e1\u06db\u06d7\u06e7\u06e2\u06e6\u06d8\u06ec\u06e1\u06dc\u06d8\u06db\u06e4\u06e6\u06df\u06eb\u06d8\u06d8\u06e1\u06dc\u06e5\u06d8\u06e0\u06e1\u06e1\u06d8\u06d7\u06e8\u06e4\u06e4\u06eb\u06e0\u06e7\u06da\u06db\u06e6\u06e4\u06eb\u06db\u06e2\u06dc\u06d8\u06d9\u06d7\u06df\u06df\u06df\u06e2\u06d9\u06d9\u06db"

    goto :goto_4

    :sswitch_15
    const-string v0, "\u06db\u06da\u06d9\u06e0\u06d6\u06d8\u06db\u06e8\u06e7\u06da\u06e8\u06e6\u06d8\u06d9\u06dc\u06eb\u06ec\u06da\u06df\u06da\u06db\u06e8\u06d7\u06da\u06df\u06d8\u06df\u06e1\u06d8\u06d8\u06d9\u06df\u06df\u06d8\u06d7\u06e6\u06d8\u06eb\u06e2\u06d9\u06e6\u06e7\u06d7\u06e0"

    goto :goto_3

    :sswitch_16
    const-string v0, "\u06e7\u06e1\u06e1\u06d8\u06eb\u06df\u06e5\u06e6\u06e2\u06d8\u06db\u06ec\u06e8\u06d7\u06e0\u06d6\u06d8\u06da\u06e0\u06ec\u06e0\u06d8\u06df\u06db\u06e2\u06e1\u06e4\u06e8\u06db\u06e6"

    goto :goto_3

    :sswitch_17
    const-string v0, "\u06eb\u06e6\u06e7\u06d8\u06ec\u06e6\u06e6\u06e6\u06eb\u06dc\u06d8\u06eb\u06e4\u06dc\u06d8\u06d8\u06e0\u06e7\u06e2\u06d7\u06d8\u06dc\u06db\u06d7\u06dc\u06d8\u06e2\u06e0\u06d8\u06d8\u06e1\u06d8\u06ec\u06e0\u06e5\u06e0\u06e0\u06d8\u06da"

    goto/16 :goto_0

    :sswitch_18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->o0OoOo0:Z

    const-string v0, "\u06df\u06d9\u06da\u06e4\u06db\u06db\u06e0\u06e4\u06e0\u06db\u06e8\u06df\u06da\u06d9\u06e5\u06d8\u06eb\u06da\u06d7\u06e5\u06e2\u06eb\u06df\u06e0\u06d8\u06d8\u06e2\u06e2\u06db\u06e6\u06e6\u06e6\u06d8"

    goto/16 :goto_0

    :sswitch_19
    invoke-direct {p0}, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->OooOOO0()V

    const-string v0, "\u06ec\u06ec\u06e7\u06dc\u06e0\u06e5\u06d8\u06e5\u06dc\u06e1\u06d8\u06e4\u06ec\u06e6\u06d8\u06e1\u06e5\u06dc\u06d8\u06d7\u06d6\u06db\u06e6\u06e2\u06e5\u06d8\u06e7\u06d9\u06e4\u06d6\u06e6\u06da\u06e8\u06e7\u06e7\u06d8\u06d7\u06dc\u06eb\u06e5\u06d8\u06eb\u06e7\u06e1\u06e1\u06e2\u06e4\u06d6\u06e7\u06df\u06e6\u06e6\u06eb\u06ec\u06e2\u06df\u06da\u06e2\u06e2"

    goto/16 :goto_0

    :sswitch_1a
    iput-boolean v5, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->ooOO:Z

    const-string v0, "\u06e6\u06d9\u06d9\u06e7\u06df\u06d7\u06e4\u06e1\u06d8\u06d6\u06da\u06e6\u06e1\u06db\u06e6\u06d8\u06da\u06df\u06dc\u06d8\u06db\u06db\u06e5\u06da\u06dc\u06e4\u06d6\u06da\u06d8\u06dc\u06e6"

    goto/16 :goto_0

    :sswitch_1b
    const-string v0, "\u06e5\u06e1\u06d8\u06e1\u06e2\u06e0\u06e6\u06db\u06e8\u06d8\u06ec\u06e4\u06d9\u06e5\u06d7\u06e0\u06ec\u06d7\u06d6\u06d8\u06ec\u06e6\u06d7\u06d9\u06dc\u06ec\u06e6\u06e6\u06d9\u06d7\u06e5\u06e5\u06d9\u06e8\u06e1\u06d8\u06e6\u06d9\u06e4\u06e6\u06eb\u06da\u06ec\u06ec\u06d8\u06df\u06d6\u06e4\u06d8\u06dc"

    goto/16 :goto_0

    :sswitch_1c
    const-string v0, "\u06eb\u06d8\u06d7\u06e7\u06d7\u06eb\u06e1\u06ec\u06e7\u06dc\u06d8\u06d7\u06d7\u06ec\u06e4\u06d8\u06d7\u06d6\u06ec\u06e8\u06e6\u06d7\u06e5\u06eb\u06d6\u06dc\u06d8\u06e4\u06e4\u06d8\u06d8\u06db\u06e6\u06d8\u06d8\u06e4\u06e5\u06d6\u06d8"

    goto/16 :goto_0

    :sswitch_1d
    const-string v0, "\u06df\u06d9\u06da\u06e4\u06db\u06db\u06e0\u06e4\u06e0\u06db\u06e8\u06df\u06da\u06d9\u06e5\u06d8\u06eb\u06da\u06d7\u06e5\u06e2\u06eb\u06df\u06e0\u06d8\u06d8\u06e2\u06e2\u06db\u06e6\u06e6\u06e6\u06d8"

    goto/16 :goto_0

    :sswitch_1e
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7d2c5ab3 -> :sswitch_2
        -0x745df8a8 -> :sswitch_d
        -0x671f04d3 -> :sswitch_c
        -0x5e849780 -> :sswitch_0
        -0x40bd7dcd -> :sswitch_18
        -0x3f87bca0 -> :sswitch_4
        -0x3d16af11 -> :sswitch_1a
        -0x124a7da2 -> :sswitch_1c
        -0x1032a79c -> :sswitch_3
        0x3212fad -> :sswitch_19
        0x15b4e843 -> :sswitch_1e
        0x1f9f7ef5 -> :sswitch_e
        0x25ddf44d -> :sswitch_10
        0x2c40d682 -> :sswitch_f
        0x4690e55b -> :sswitch_1
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x7248a76 -> :sswitch_7
        0x15aaa9c7 -> :sswitch_b
        0x68ada990 -> :sswitch_1b
        0x7ad23d83 -> :sswitch_5
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        -0x40718a47 -> :sswitch_a
        -0x31aabbac -> :sswitch_9
        -0x100e8fa4 -> :sswitch_8
        -0xb6dd058 -> :sswitch_6
    .end sparse-switch

    :sswitch_data_3
    .sparse-switch
        -0x48306e13 -> :sswitch_11
        -0x2cf41fe7 -> :sswitch_1d
        0x303a84d6 -> :sswitch_17
        0x59d6ee58 -> :sswitch_16
    .end sparse-switch

    :sswitch_data_4
    .sparse-switch
        -0x356d87d7 -> :sswitch_12
        0x188c393b -> :sswitch_14
        0x2f4d0e13 -> :sswitch_13
        0x799dec9d -> :sswitch_15
    .end sparse-switch
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 4

    const-string v0, "\u06e2\u06e6\u06d7\u06d6\u06d8\u06d6\u06eb\u06ec\u06db\u06da\u06e4\u06dc\u06eb\u06da\u06d8\u06df\u06e7\u06d9\u06e6\u06e0\u06e8\u06dc\u06d7\u06d8\u06df\u06e2\u06e0\u06dc\u06e6\u06d9\u06d6\u06e5\u06d6\u06d6\u06d8\u06d6\u06ec\u06d8\u06d8\u06e4\u06d9\u06d7\u06d6\u06dc\u06d8\u06d8\u06e7\u06e4\u06d7"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x1c8

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x168

    const/16 v2, 0x7f

    const v3, -0x66753594

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d7\u06db\u06e6\u06e4\u06df\u06e2\u06e8\u06e2\u06e7\u06e8\u06e5\u06e1\u06d8\u06da\u06e0\u06d6\u06e8\u06e8\u06dc\u06d8\u06e2\u06ec\u06d7\u06d7\u06db\u06db\u06e7\u06da\u06e0\u06d8\u06d9\u06ec\u06e4\u06d8\u06e6\u06d8\u06e0\u06e0\u06da\u06dc\u06db\u06e4\u06d6\u06d9\u06d6"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06df\u06d6\u06dc\u06d8\u06da\u06eb\u06ec\u06df\u06eb\u06d9\u06d9\u06e7\u06d8\u06d8\u06e4\u06e5\u06dc\u06e2\u06db\u06d9\u06dc\u06e1\u06d6\u06e7\u06ec\u06e5\u06dc\u06d8\u06e6\u06e6\u06d6\u06e1\u06d8\u06dc\u06d6\u06e7\u06d8\u06d7\u06e2\u06d6\u06d8\u06da\u06dc\u06dc\u06ec\u06dc\u06d8\u06e1\u06d6\u06dc\u06e2\u06dc\u06d7"

    goto :goto_0

    :sswitch_2
    const-string v0, "\u06dc\u06e5\u06dc\u06db\u06ec\u06dc\u06e7\u06e1\u06d6\u06d8\u06eb\u06e8\u06dc\u06ec\u06e6\u06d6\u06e0\u06d8\u06ec\u06db\u06d9\u06da\u06d9\u06e0\u06ec\u06d6\u06e8\u06e5\u06e5\u06dc\u06e0\u06d9\u06e8\u06e5\u06d9\u06df\u06d6\u06d7\u06d8\u06e7\u06d8\u06eb\u06e8\u06e7\u06d8\u06e5\u06e8\u06e5\u06d8\u06d6\u06da\u06d8\u06e7\u06e6\u06e5\u06df\u06d7\u06d8\u06d8"

    goto :goto_0

    :sswitch_3
    const-string v0, "\u06d8\u06e0\u06ec\u06df\u06ec\u06d7\u06d7\u06ec\u06dc\u06e0\u06dc\u06d8\u06d8\u06d9\u06d8\u06d8\u06e7\u06e1\u06eb\u06df\u06e7\u06df\u06ec\u06e6\u06e5\u06e8\u06eb\u06eb\u06e0\u06e4\u06e2\u06d6\u06eb\u06d6\u06e6\u06d6\u06d8"

    goto :goto_0

    :sswitch_4
    const-string v0, "\u06e2\u06ec\u06e6\u06d8\u06e0\u06dc\u06e6\u06d8\u06d6\u06e1\u06e5\u06d9\u06d8\u06d7\u06eb\u06da\u06eb\u06eb\u06dc\u06e2\u06e5\u06ec\u06e1\u06d8\u06d7\u06e8\u06d7\u06e8\u06e7\u06da\u06da\u06e7\u06dc\u06e6\u06e4\u06df\u06e8\u06e8\u06e5\u06d6\u06e8\u06e8\u06e8\u06d6\u06d8\u06d8\u06d8\u06da\u06da\u06d7\u06e2\u06e1"

    goto :goto_0

    :sswitch_5
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7ea43c24 -> :sswitch_0
        -0x1cc4932b -> :sswitch_2
        0x195e7baf -> :sswitch_3
        0x510ff4b5 -> :sswitch_4
        0x6309d24c -> :sswitch_5
        0x6faee5b9 -> :sswitch_1
    .end sparse-switch
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 4

    const-string v0, "\u06e2\u06dc\u06ec\u06da\u06e5\u06e6\u06e6\u06da\u06d9\u06da\u06e7\u06e1\u06d8\u06d7\u06d6\u06d8\u06d7\u06d8\u06e5\u06d8\u06d6\u06da\u06e8\u06e0\u06e0\u06db\u06e2\u06d8\u06eb\u06da\u06e1\u06e4\u06d7\u06dc\u06e6\u06d8\u06d7\u06eb\u06e6\u06e1\u06da\u06d6\u06eb\u06e1\u06e1\u06d8\u06d8\u06ec\u06eb\u06e7\u06e5\u06ec\u06ec\u06df\u06e1\u06e1\u06e5\u06d9"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x1de

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x370

    const/16 v2, 0x383

    const v3, -0x786dc92b    # -2.1999866E-34f

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e4\u06da\u06d9\u06e1\u06dc\u06dc\u06d8\u06e6\u06d6\u06e8\u06da\u06d9\u06e5\u06d8\u06e1\u06ec\u06e1\u06d8\u06e0\u06e6\u06d6\u06e5\u06e4\u06d6\u06d7\u06e8\u06e5\u06e1\u06e6\u06e6\u06d8\u06e5\u06e6\u06e1\u06e2\u06dc\u06df\u06df\u06e1\u06e5\u06df\u06e6\u06d8\u06d6\u06e1\u06da"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06d7\u06dc\u06e0\u06d8\u06eb\u06eb\u06e8\u06e0\u06e0\u06df\u06e8\u06ec\u06e2\u06da\u06e1\u06d8\u06e5\u06e8\u06e6\u06d8\u06e8\u06df\u06d8\u06d8\u06eb\u06d6\u06e8\u06d8\u06dc\u06e6\u06ec\u06e6\u06d9\u06dc\u06d8\u06df\u06da\u06e5\u06df\u06e8\u06d8\u06e8\u06e4\u06d6\u06d6\u06d7\u06d6\u06d8\u06d7\u06ec\u06db\u06d8\u06e8\u06e5\u06d8"

    goto :goto_0

    :sswitch_2
    const v1, 0x5b622d70

    const-string v0, "\u06e6\u06e7\u06e7\u06d8\u06df\u06d9\u06df\u06e2\u06e7\u06d8\u06ec\u06e1\u06e7\u06e0\u06db\u06d9\u06ec\u06eb\u06dc\u06ec\u06d6\u06d8\u06e7\u06eb\u06e8\u06d8\u06e0\u06e4\u06d6\u06e1\u06df\u06eb"

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v2, v1

    sparse-switch v2, :sswitch_data_1

    goto :goto_1

    :sswitch_3
    const-string v0, "\u06db\u06d9\u06e5\u06e5\u06d7\u06e4\u06da\u06e8\u06d6\u06db\u06e8\u06d6\u06e5\u06d6\u06d7\u06e0\u06e1\u06e5\u06d8\u06e4\u06e1\u06d8\u06db\u06eb\u06d9\u06dc\u06d7\u06d8\u06d8\u06dc\u06d9\u06e5\u06d8\u06e1\u06d9\u06e6\u06da\u06dc\u06e2"

    goto :goto_1

    :sswitch_4
    const-string v0, "\u06ec\u06d6\u06e7\u06d8\u06da\u06e2\u06e1\u06db\u06d6\u06df\u06eb\u06e1\u06d7\u06df\u06e5\u06d7\u06e4\u06e5\u06db\u06df\u06df\u06e5\u06e4\u06da\u06d8\u06d8\u06e8\u06d6\u06e7\u06e7\u06e7\u06e4\u06e1\u06e2\u06e7\u06e0\u06e1\u06d8"

    goto :goto_1

    :sswitch_5
    const v2, 0x2a9b2a00

    const-string v0, "\u06e1\u06e7\u06e1\u06e1\u06d8\u06d8\u06d8\u06db\u06e5\u06e6\u06d8\u06d8\u06e4\u06e1\u06d8\u06df\u06d8\u06dc\u06d8\u06ec\u06dc\u06e8\u06d8\u06e2\u06d8\u06dc\u06e0\u06e1\u06da\u06e7\u06db\u06e1\u06d8\u06df\u06da"

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v2

    sparse-switch v3, :sswitch_data_2

    goto :goto_2

    :sswitch_6
    const-string v0, "\u06eb\u06d7\u06e0\u06e8\u06ec\u06d6\u06d8\u06dc\u06d9\u06ec\u06e5\u06e1\u06db\u06df\u06e8\u06d6\u06d8\u06e6\u06ec\u06eb\u06db\u06db\u06e7\u06e4\u06ec\u06e5\u06d8\u06e7\u06da\u06e7\u06e4\u06d9\u06da\u06da\u06e0\u06dc\u06e2\u06da\u06e8\u06da\u06dc\u06d7\u06d8\u06d9"

    goto :goto_2

    :cond_0
    const-string v0, "\u06df\u06eb\u06dc\u06d7\u06e7\u06e6\u06d8\u06e5\u06e5\u06d8\u06db\u06e1\u06e8\u06d6\u06da\u06e2\u06d9\u06e0\u06e1\u06dc\u06d6\u06e4\u06eb\u06dc\u06e8\u06db\u06ec\u06d9\u06ec\u06e7\u06e2"

    goto :goto_2

    :sswitch_7
    iget-boolean v0, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->Ooooooo:Z

    if-nez v0, :cond_0

    const-string v0, "\u06ec\u06eb\u06d8\u06e0\u06ec\u06d7\u06d8\u06eb\u06ec\u06d7\u06e5\u06ec\u06d7\u06e1\u06d8\u06d8\u06eb\u06df\u06e0\u06d8\u06db\u06dc\u06d8\u06e1\u06e1\u06e8\u06d8\u06e0\u06e8\u06e8\u06d8\u06d7\u06e6\u06d8\u06ec\u06e5\u06e6\u06d8\u06ec\u06da\u06ec\u06d8\u06e0\u06e5\u06e5\u06e6\u06db\u06ec\u06d8\u06e5\u06d8\u06e7\u06e5\u06dc\u06d8"

    goto :goto_2

    :sswitch_8
    const-string v0, "\u06eb\u06eb\u06e6\u06da\u06d9\u06db\u06e2\u06eb\u06d7\u06d6\u06e2\u06e8\u06d8\u06d7\u06e2\u06dc\u06d8\u06df\u06d6\u06e4\u06df\u06e8\u06d7\u06e4\u06e6\u06e8\u06eb\u06e2\u06e6\u06ec\u06e6\u06d7\u06e7\u06d7\u06db\u06db\u06ec\u06db\u06e2\u06e8\u06d8\u06eb\u06db\u06e0\u06e2\u06e4\u06eb\u06e4\u06d6\u06ec\u06e4\u06e2\u06eb\u06eb\u06e8"

    goto :goto_1

    :sswitch_9
    const-string v0, "\u06e6\u06d9\u06da\u06e8\u06db\u06d7\u06d7\u06e5\u06e5\u06d8\u06d9\u06db\u06e0\u06d6\u06e8\u06d9\u06e5\u06d8\u06dc\u06d8\u06e0\u06e5\u06df\u06d8\u06e2\u06e2\u06e5\u06eb\u06dc\u06d8\u06e0\u06e6\u06d6\u06d6\u06e2\u06e2\u06e4\u06d8\u06d8"

    goto :goto_0

    :sswitch_a
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->Ooooooo:Z

    const-string v0, "\u06e8\u06d8\u06e7\u06d8\u06e6\u06ec\u06d8\u06d8\u06eb\u06d6\u06d8\u06d8\u06e6\u06d8\u06d8\u06e6\u06df\u06e5\u06d8\u06da\u06da\u06e6\u06d9\u06d7\u06e7\u06ec\u06df\u06e1\u06eb\u06eb\u06d7\u06d6\u06e4\u06e0"

    goto :goto_0

    :sswitch_b
    invoke-direct {p0, p1}, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->OooOOO(Landroid/view/SurfaceHolder;)V

    const-string v0, "\u06d7\u06d6\u06eb\u06eb\u06d6\u06e7\u06d8\u06e5\u06e2\u06d8\u06da\u06df\u06e8\u06ec\u06e8\u06da\u06d7\u06e5\u06e8\u06d8\u06d8\u06df\u06db\u06d9\u06dc\u06d8\u06d8\u06db\u06eb\u06db\u06df\u06e4\u06e5\u06e2\u06d9\u06e0\u06da\u06d8\u06da"

    goto :goto_0

    :sswitch_c
    const-string v0, "\u06d7\u06d6\u06eb\u06eb\u06d6\u06e7\u06d8\u06e5\u06e2\u06d8\u06da\u06df\u06e8\u06ec\u06e8\u06da\u06d7\u06e5\u06e8\u06d8\u06d8\u06df\u06db\u06d9\u06dc\u06d8\u06d8\u06db\u06eb\u06db\u06df\u06e4\u06e5\u06e2\u06d9\u06e0\u06da\u06d8\u06da"

    goto :goto_0

    :sswitch_d
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4c360175 -> :sswitch_d
        0x3bd4d250 -> :sswitch_a
        0x482d9592 -> :sswitch_1
        0x5c75fa6c -> :sswitch_2
        0x6c2a37c1 -> :sswitch_0
        0x798d331e -> :sswitch_b
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x7c3c327d -> :sswitch_c
        -0x73bd44e4 -> :sswitch_5
        -0x52286f77 -> :sswitch_9
        -0x423c382c -> :sswitch_3
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        -0x1e0ce54e -> :sswitch_6
        -0x87786a7 -> :sswitch_8
        -0xf52361 -> :sswitch_7
        0x2d2f6b24 -> :sswitch_4
    .end sparse-switch
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 4

    const-string v0, "\u06df\u06d7\u06d8\u06d8\u06e5\u06df\u06d9\u06e4\u06d8\u06d8\u06e4\u06e8\u06e8\u06d6\u06e7\u06e5\u06d8\u06eb\u06e6\u06e5\u06d8\u06d6\u06d8\u06d7\u06e1\u06eb\u06e5\u06d8\u06e5\u06e1\u06e2\u06df\u06e2\u06e0\u06db\u06e2\u06e7\u06d8\u06da\u06e2\u06e7\u06d6\u06d8\u06e6\u06e8\u06e1\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x169

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x1f8

    const/16 v2, 0x32a

    const v3, -0x18de76a3

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06db\u06d7\u06da\u06e4\u06e0\u06eb\u06db\u06e2\u06e1\u06d8\u06d7\u06e8\u06e4\u06df\u06d6\u06d7\u06eb\u06e7\u06d8\u06df\u06e4\u06e4\u06d9\u06eb\u06d7\u06d6\u06e8\u06eb\u06e4\u06ec\u06ec"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06e0\u06e7\u06e6\u06e1\u06dc\u06e6\u06d9\u06d8\u06ec\u06df\u06da\u06d9\u06d6\u06d9\u06e5\u06e2\u06dc\u06e7\u06d8\u06e1\u06d9\u06ec\u06ec\u06d9\u06e2\u06d6\u06d8\u06ec\u06e4\u06d6\u06e6"

    goto :goto_0

    :sswitch_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;->Ooooooo:Z

    const-string v0, "\u06eb\u06eb\u06e6\u06d8\u06ec\u06e0\u06e5\u06d8\u06df\u06d6\u06e6\u06d8\u06e1\u06da\u06e5\u06d8\u06d7\u06dc\u06dc\u06eb\u06d9\u06e5\u06d8\u06e4\u06d7\u06ec\u06da\u06e2\u06e0\u06e8\u06d7\u06d6\u06dc\u06eb\u06d8\u06d8\u06e4\u06e1\u06e6\u06dc\u06d6\u06e5\u06d8\u06e8\u06da\u06d7\u06d9\u06e5\u06e2"

    goto :goto_0

    :sswitch_3
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0xe0daad4 -> :sswitch_0
        0x2bea1ed7 -> :sswitch_1
        0x3a53e5dc -> :sswitch_3
        0x7773b83d -> :sswitch_2
    .end sparse-switch
.end method
