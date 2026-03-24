.class public Lcom/cyjh/elfin/sweepcode/CameraSurfaceView;
.super Landroid/view/SurfaceView;

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# instance fields
.field public OoooOoO:Landroid/content/Context;

.field public OoooOoo:Landroid/view/SurfaceHolder;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/cyjh/elfin/sweepcode/CameraSurfaceView;->OoooOoO:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/cyjh/elfin/sweepcode/CameraSurfaceView;->OooO00o()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p1, p0, Lcom/cyjh/elfin/sweepcode/CameraSurfaceView;->OoooOoO:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/cyjh/elfin/sweepcode/CameraSurfaceView;->OooO00o()V

    return-void
.end method


# virtual methods
.method public OooO00o()V
    .locals 5

    const/4 v1, 0x0

    const-string v0, "\u06e8\u06d8\u06e8\u06d8\u06e0\u06db\u06e5\u06d8\u06dc\u06e4\u06d6\u06eb\u06e5\u06e1\u06d8\u06ec\u06e5\u06df\u06e2\u06e8\u06e5\u06d8\u06d8\u06df\u06d6\u06e2\u06e8\u06e1\u06eb\u06d6\u06e6\u06e6\u06d8\u06eb\u06da\u06e2\u06e0\u06d8\u06e6\u06e2\u06dc\u06e2\u06df\u06e1\u06e6\u06e1\u06e4\u06ec\u06d9\u06e1\u06d7"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v3, 0x121

    xor-int/2addr v2, v3

    xor-int/lit8 v2, v2, 0x27

    const/16 v3, 0x32

    const v4, -0x1c95aa26

    xor-int/2addr v2, v3

    xor-int/2addr v2, v4

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e1\u06e2\u06e6\u06d8\u06e5\u06e8\u06d7\u06ec\u06e1\u06da\u06eb\u06db\u06e7\u06e5\u06e4\u06df\u06df\u06d6\u06eb\u06da\u06d9\u06e4\u06dc\u06e4\u06df\u06da\u06d7\u06d7\u06d6\u06e4\u06eb\u06eb\u06e2\u06dc\u06d8\u06e0\u06d6\u06e1\u06d8"

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    const-string v0, "\u06df\u06e7\u06e1\u06d8\u06d9\u06ec\u06e6\u06e6\u06dc\u06e8\u06e6\u06e4\u06e1\u06e1\u06dc\u06dc\u06e8\u06e8\u06d8\u06df\u06eb\u06e2\u06da\u06da\u06df\u06da\u06d7\u06dc\u06ec\u06dc\u06e8\u06e2\u06e0\u06dc\u06d8\u06df\u06e6\u06dc\u06d8"

    goto :goto_0

    :sswitch_2
    iput-object v1, p0, Lcom/cyjh/elfin/sweepcode/CameraSurfaceView;->OoooOoo:Landroid/view/SurfaceHolder;

    const-string v0, "\u06d6\u06e5\u06dc\u06d8\u06e8\u06ec\u06db\u06e7\u06e2\u06da\u06da\u06da\u06d9\u06ec\u06d6\u06e1\u06d8\u06eb\u06e1\u06d8\u06e1\u06e8\u06d6\u06e5\u06da\u06e6\u06ec\u06e8\u06e6\u06d9\u06e8\u06d8\u06df\u06e1\u06d7\u06e4\u06e6\u06e2\u06d6\u06da\u06d9\u06d6\u06d9\u06da\u06e2\u06dc\u06db\u06e5\u06e6\u06e7\u06d8\u06d7\u06ec\u06e2\u06db\u06df"

    goto :goto_0

    :sswitch_3
    const/4 v0, -0x2

    invoke-interface {v1, v0}, Landroid/view/SurfaceHolder;->setFormat(I)V

    const-string v0, "\u06ec\u06ec\u06e8\u06d8\u06e0\u06e4\u06d7\u06e5\u06d8\u06e8\u06da\u06eb\u06eb\u06e0\u06da\u06e1\u06d8\u06da\u06db\u06d6\u06e8\u06e6\u06db\u06e8\u06db\u06df\u06e2\u06e0\u06d9\u06e4\u06e4\u06dc\u06dc\u06da\u06e6\u06d7\u06e0\u06e6\u06d8\u06e0\u06e6\u06e5\u06e5\u06e0\u06e1"

    goto :goto_0

    :sswitch_4
    iget-object v0, p0, Lcom/cyjh/elfin/sweepcode/CameraSurfaceView;->OoooOoo:Landroid/view/SurfaceHolder;

    const/4 v2, 0x3

    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder;->setType(I)V

    const-string v0, "\u06e7\u06e4\u06e1\u06e4\u06e6\u06da\u06d8\u06d9\u06db\u06dc\u06d9\u06d6\u06e2\u06e2\u06db\u06d8\u06d8\u06e1\u06db\u06d8\u06d8\u06e7\u06dc\u06e8\u06d8\u06e7\u06df\u06e4\u06e1\u06e1\u06e8\u06d8\u06df\u06d6\u06e2\u06d6\u06e5\u06e7\u06d8\u06e7\u06d8\u06e2\u06e4\u06eb\u06e4"

    goto :goto_0

    :sswitch_5
    iget-object v0, p0, Lcom/cyjh/elfin/sweepcode/CameraSurfaceView;->OoooOoo:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    const-string v0, "\u06eb\u06e8\u06ec\u06da\u06e1\u06d6\u06e7\u06e7\u06d8\u06ec\u06e7\u06e0\u06d9\u06e0\u06d9\u06da\u06d8\u06e2\u06e8\u06e8\u06e2\u06dc\u06e5\u06e1\u06d8\u06e5\u06d8\u06d9\u06e6\u06e6\u06dc\u06d8\u06df\u06e4\u06da\u06d9\u06e4\u06e4"

    goto :goto_0

    :sswitch_6
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5fcbf9f0 -> :sswitch_4
        -0x5f3b0714 -> :sswitch_5
        -0x1e1271d7 -> :sswitch_3
        0x4efaa72 -> :sswitch_1
        0x1d1b2bfe -> :sswitch_0
        0x2e0e1d2d -> :sswitch_6
        0x46c996f5 -> :sswitch_2
    .end sparse-switch
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 4

    const v1, -0x6459f135

    const-string v0, "\u06d8\u06df\u06d6\u06e5\u06eb\u06e6\u06d8\u06db\u06d8\u06e0\u06d7\u06e7\u06e0\u06db\u06e1\u06dc\u06d8\u06e7\u06eb\u06da\u06eb\u06d7\u06d6\u06d8\u06ec\u06d7\u06ec\u06e2\u06df\u06e1\u06da\u06e2\u06e0\u06e6\u06eb\u06e1\u06d8\u06e2\u06dc\u06e6\u06d8"

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
    const-string v0, "\u06d7\u06d9\u06e6\u06eb\u06eb\u06dc\u06d9\u06d6\u06e8\u06d8\u06e8\u06dc\u06e6\u06e5\u06dc\u06e0\u06db\u06e6\u06d7\u06d8\u06dc\u06e8\u06d8\u06e0\u06d8\u06dc\u06e0\u06dc\u06e1\u06da\u06e1\u06da\u06e2\u06e0\u06e6\u06d8\u06d9\u06d7\u06e6\u06d8\u06e1\u06ec\u06d6\u06d8\u06e6\u06e6\u06dc\u06eb\u06df\u06da\u06da\u06d7\u06e8"

    goto :goto_0

    :sswitch_2
    const v2, -0x26f035c

    const-string v0, "\u06d6\u06d9\u06d8\u06d8\u06e5\u06ec\u06d7\u06e8\u06e6\u06e0\u06d8\u06eb\u06d9\u06dc\u06e7\u06ec\u06e0\u06e4\u06da\u06e6\u06e7\u06e6\u06e0\u06d9\u06e7\u06e4\u06e6\u06e6\u06df\u06d7\u06d6\u06e1\u06d8\u06d6\u06da\u06db\u06e6\u06da\u06e7\u06ec\u06ec\u06da"

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v2

    sparse-switch v3, :sswitch_data_1

    goto :goto_2

    :sswitch_3
    const-string v0, "\u06db\u06e5\u06e5\u06d8\u06e0\u06dc\u06dc\u06e6\u06ec\u06d8\u06e8\u06da\u06d8\u06d8\u06e1\u06db\u06e5\u06d8\u06e2\u06e1\u06e8\u06d8\u06d8\u06e6\u06e5\u06d8\u06d9\u06da\u06d7\u06e6\u06d7\u06e5\u06d9\u06da\u06e1\u06da\u06e4\u06e8\u06d8\u06e4\u06e1\u06d8\u06d8\u06ec\u06e0\u06df\u06d6\u06e0\u06e4\u06e2\u06e2\u06e8\u06e2\u06e0\u06e5\u06d8"

    goto :goto_2

    :cond_0
    const-string v0, "\u06dc\u06e0\u06e1\u06e2\u06e6\u06d7\u06e0\u06e5\u06e5\u06d9\u06db\u06dc\u06d8\u06d8\u06e2\u06db\u06e5\u06e6\u06e1\u06d8\u06df\u06df\u06e2\u06eb\u06dc\u06e6\u06d6\u06d9\u06e2\u06da\u06ec\u06dc\u06e5\u06e4\u06e4\u06ec\u06eb\u06d6\u06d8\u06e8\u06d7\u06d6\u06eb\u06e8\u06d6\u06d8\u06df\u06db\u06e5\u06dc\u06df\u06eb\u06dc\u06dc\u06e5\u06d8\u06dc\u06e6\u06e1"

    goto :goto_2

    :sswitch_4
    iget-object v0, p0, Lcom/cyjh/elfin/sweepcode/CameraSurfaceView;->OoooOoo:Landroid/view/SurfaceHolder;

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "\u06da\u06e2\u06e0\u06e1\u06e7\u06e8\u06e6\u06e1\u06d9\u06db\u06db\u06dc\u06d8\u06ec\u06ec\u06e8\u06d8\u06dc\u06df\u06ec\u06e8\u06ec\u06da\u06e7\u06e4\u06d7\u06d8\u06df\u06d8\u06d8\u06d9\u06d8\u06e1\u06df\u06e5\u06e1\u06d8\u06d7\u06e7\u06e6\u06e1\u06da\u06d6\u06e2\u06ec\u06e6\u06d8"

    goto :goto_2

    :sswitch_5
    const-string v0, "\u06d7\u06df\u06df\u06d6\u06eb\u06e1\u06dc\u06e8\u06e7\u06df\u06d7\u06e7\u06e0\u06d8\u06e1\u06dc\u06d8\u06d8\u06d8\u06d8\u06e2\u06e2\u06e5\u06d7\u06da\u06da\u06dc\u06db\u06d9\u06df\u06da\u06eb\u06d9\u06d8\u06df\u06d7\u06e1"

    goto :goto_0

    :sswitch_6
    const-string v0, "\u06e2\u06e4\u06e7\u06ec\u06d8\u06e2\u06e5\u06e5\u06da\u06e2\u06e5\u06e1\u06d8\u06e0\u06da\u06d7\u06d7\u06dc\u06dc\u06d8\u06df\u06db\u06e0\u06e8\u06e5\u06d6\u06e6\u06ec\u06e6\u06d8\u06e5\u06e0\u06e1\u06e0\u06eb\u06e7\u06e6\u06d7\u06eb\u06eb\u06da\u06e0\u06e4\u06e0\u06e6\u06d8"

    goto :goto_0

    :sswitch_7
    :try_start_0
    invoke-static {}, Lz2/t7;->OooO()Lz2/t7;

    move-result-object v0

    invoke-virtual {v0}, Lz2/t7;->OooOOO0()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    invoke-static {}, Lz2/t7;->OooO()Lz2/t7;

    move-result-object v0

    invoke-virtual {v0, p1}, Lz2/t7;->OooO0oO(Landroid/view/SurfaceHolder;)V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_3

    :sswitch_data_0
    .sparse-switch
        -0x45849af3 -> :sswitch_7
        -0x9bfdf98 -> :sswitch_0
        -0x5fc75b3 -> :sswitch_6
        0x5b6adcc4 -> :sswitch_2
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x204376c6 -> :sswitch_4
        -0xc41ad16 -> :sswitch_3
        0x2f2ac802 -> :sswitch_1
        0x6cef948b -> :sswitch_5
    .end sparse-switch
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 4

    const-string v0, "\u06eb\u06d6\u06da\u06ec\u06e8\u06dc\u06e0\u06dc\u06e7\u06e0\u06e6\u06e6\u06e6\u06e6\u06da\u06e2\u06d8\u06d7\u06dc\u06e8\u06d8\u06e0\u06e4\u06d9\u06e5\u06db\u06d8\u06da\u06e7\u06d8\u06e6\u06da\u06e5\u06d9\u06e5\u06d6\u06e1\u06df\u06d6\u06d8\u06e0\u06e7\u06df\u06e4\u06e1\u06ec\u06e8\u06e7\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x72

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x16c

    const/16 v2, 0x59

    const v3, -0x434424f

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e2\u06dc\u06e7\u06d7\u06e0\u06e2\u06eb\u06ec\u06e4\u06e8\u06dc\u06db\u06da\u06e8\u06e5\u06d8\u06d9\u06e5\u06d6\u06d8\u06e4\u06d8\u06db\u06e4\u06d6\u06d6\u06dc\u06e2\u06e8\u06e8\u06d7\u06e1\u06d8\u06e1\u06e0\u06e6\u06e2\u06db\u06dc\u06d8\u06ec\u06eb\u06e4\u06e5\u06d8\u06ec\u06db\u06e1\u06db\u06e5\u06ec\u06e5\u06d8\u06d7\u06e5\u06e6\u06e8\u06e7\u06d8\u06d8"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06db\u06ec\u06e1\u06df\u06e0\u06db\u06e8\u06ec\u06db\u06e6\u06d6\u06e6\u06dc\u06df\u06eb\u06df\u06d9\u06db\u06e4\u06e8\u06e4\u06e2\u06eb\u06e5\u06e5\u06e5\u06e0\u06e1\u06eb"

    goto :goto_0

    :sswitch_2
    invoke-static {}, Lz2/t7;->OooO()Lz2/t7;

    move-result-object v0

    invoke-virtual {v0}, Lz2/t7;->OooO0o0()V

    const-string v0, "\u06e8\u06e8\u06da\u06d8\u06eb\u06e4\u06e0\u06e6\u06d6\u06d8\u06d8\u06ec\u06ec\u06e5\u06e1\u06eb\u06d6\u06e5\u06e5\u06d8\u06d8\u06e4\u06dc\u06d8\u06db\u06e8\u06e8\u06d8\u06d9\u06e6\u06e1\u06ec\u06e1\u06e8\u06e1\u06e1\u06d8\u06d8\u06e0\u06d7\u06dc\u06eb\u06e4\u06d6\u06e1\u06d7\u06d7\u06df\u06da\u06d9\u06e6\u06ec\u06eb"

    goto :goto_0

    :sswitch_3
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4e8ea7a4 -> :sswitch_0
        -0x23216c5e -> :sswitch_3
        0x2498b47a -> :sswitch_2
        0x5ba85bba -> :sswitch_1
    .end sparse-switch
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 4

    const-string v0, "\u06df\u06df\u06e8\u06d8\u06d8\u06e1\u06d6\u06e5\u06e1\u06e5\u06e5\u06d6\u06db\u06e1\u06d7\u06e2\u06e8\u06e2\u06d8\u06e5\u06e5\u06df\u06d8\u06d9\u06da\u06e1\u06d6\u06e6\u06d8\u06dc\u06dc\u06eb"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x65

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x35b

    const/16 v2, 0x3e6

    const v3, -0x7e13d93e

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e8\u06d7\u06e6\u06d6\u06d8\u06e1\u06e8\u06da\u06e5\u06dc\u06e0\u06e1\u06d9\u06dc\u06d8\u06dc\u06e6\u06e8\u06df\u06e5\u06dc\u06df\u06ec\u06d6\u06d8\u06ec\u06e7\u06e6\u06d8\u06d6\u06da\u06e4\u06ec\u06d7\u06dc\u06d6\u06da\u06db"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06e1\u06e4\u06e6\u06d9\u06da\u06d7\u06d9\u06dc\u06d6\u06e5\u06eb\u06e5\u06d8\u06dc\u06d7\u06d7\u06df\u06ec\u06da\u06df\u06d9\u06e7\u06e7\u06d9\u06dc\u06e2\u06e6\u06e0\u06da\u06e8\u06d8\u06d8\u06ec\u06db\u06d6\u06d9\u06e0\u06da"

    goto :goto_0

    :sswitch_2
    invoke-static {}, Lz2/t7;->OooO()Lz2/t7;

    move-result-object v0

    invoke-virtual {v0}, Lz2/t7;->OooO0oo()V

    const-string v0, "\u06e1\u06e0\u06e5\u06d8\u06dc\u06e1\u06e5\u06d8\u06e2\u06df\u06db\u06db\u06e1\u06ec\u06e6\u06da\u06ec\u06e1\u06d9\u06e0\u06df\u06d8\u06e6\u06d8\u06e1\u06e5\u06db\u06dc\u06dc\u06d8\u06d7\u06dc\u06e8\u06d8\u06e5\u06d9\u06e1\u06d8\u06d6\u06e2\u06e2\u06dc\u06e1\u06da\u06db\u06e7\u06e7"

    goto :goto_0

    :sswitch_3
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7003e44b -> :sswitch_2
        -0x2623d36c -> :sswitch_3
        0x2aa39be0 -> :sswitch_0
        0x46f43355 -> :sswitch_1
    .end sparse-switch
.end method
