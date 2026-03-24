.class public Lz2/t7;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz2/t7$OooO0OO;
    }
.end annotation


# static fields
.field private static OooO:Lz2/t7; = null

.field private static final OooO0oo:Ljava/lang/String; = "CameraInterface"


# instance fields
.field private OooO00o:Landroid/hardware/Camera;

.field private OooO0O0:Landroid/hardware/Camera$Parameters;

.field private OooO0OO:Z

.field private OooO0Oo:Landroid/os/Handler;

.field public OooO0o:Landroid/hardware/Camera$AutoFocusCallback;

.field private OooO0o0:Landroid/hardware/Camera$PreviewCallback;

.field private OooO0oO:Ljava/lang/Runnable;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lz2/t7;->OooO0OO:Z

    new-instance v0, Lz2/t7$OooO00o;

    invoke-direct {v0, p0}, Lz2/t7$OooO00o;-><init>(Lz2/t7;)V

    iput-object v0, p0, Lz2/t7;->OooO0o:Landroid/hardware/Camera$AutoFocusCallback;

    new-instance v0, Lz2/t7$OooO0O0;

    invoke-direct {v0, p0}, Lz2/t7$OooO0O0;-><init>(Lz2/t7;)V

    iput-object v0, p0, Lz2/t7;->OooO0oO:Ljava/lang/Runnable;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lz2/t7;->OooO0Oo:Landroid/os/Handler;

    return-void
.end method

.method public static declared-synchronized OooO()Lz2/t7;
    .locals 2

    const-class v0, Lz2/t7;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lz2/t7;->OooO:Lz2/t7;

    if-nez v1, :cond_0

    new-instance v1, Lz2/t7;

    invoke-direct {v1}, Lz2/t7;-><init>()V

    sput-object v1, Lz2/t7;->OooO:Lz2/t7;

    :cond_0
    sget-object v1, Lz2/t7;->OooO:Lz2/t7;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static synthetic OooO00o(Lz2/t7;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lz2/t7;->OooO0oO:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic OooO0O0(Lz2/t7;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lz2/t7;->OooO0Oo:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic OooO0OO(Lz2/t7;)Z
    .locals 0

    iget-boolean p0, p0, Lz2/t7;->OooO0OO:Z

    return p0
.end method

.method public static synthetic OooO0Oo(Lz2/t7;)Landroid/hardware/Camera;
    .locals 0

    iget-object p0, p0, Lz2/t7;->OooO00o:Landroid/hardware/Camera;

    return-object p0
.end method


# virtual methods
.method public OooO0o(Lz2/t7$OooO0OO;)V
    .locals 1

    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v0

    iput-object v0, p0, Lz2/t7;->OooO00o:Landroid/hardware/Camera;

    invoke-interface {p1}, Lz2/t7$OooO0OO;->OooO00o()V

    return-void
.end method

.method public OooO0o0()V
    .locals 1

    :try_start_0
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v0

    iput-object v0, p0, Lz2/t7;->OooO00o:Landroid/hardware/Camera;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public OooO0oO(Landroid/view/SurfaceHolder;)V
    .locals 9

    iget-boolean v0, p0, Lz2/t7;->OooO0OO:Z

    if-eqz v0, :cond_0

    iget-object p1, p0, Lz2/t7;->OooO00o:Landroid/hardware/Camera;

    invoke-virtual {p1}, Landroid/hardware/Camera;->stopPreview()V

    return-void

    :cond_0
    iget-object v0, p0, Lz2/t7;->OooO00o:Landroid/hardware/Camera;

    if-eqz v0, :cond_9

    :try_start_0
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lz2/t7;->OooO0O0:Landroid/hardware/Camera$Parameters;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    iget-object v0, p0, Lz2/t7;->OooO0O0:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->OooO00o()Lcom/cyjh/elfin/base/AppContext;

    move-result-object p1

    const-string v0, "\u8bf7\u68c0\u67e5\u76f8\u673a\u662f\u5426\u53ef\u7528\u6216\u6743\u9650\u662f\u5426\u88ab\u7981\u7528"

    invoke-static {p1, v0}, Lz2/c5;->OooO0OO(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :cond_1
    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setPictureFormat(I)V

    invoke-static {}, Lz2/s7;->OooO0O0()Lz2/s7;

    move-result-object v0

    iget-object v1, p0, Lz2/t7;->OooO0O0:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lz2/s7;->OooO0o(Landroid/hardware/Camera$Parameters;)V

    invoke-static {}, Lz2/s7;->OooO0O0()Lz2/s7;

    move-result-object v0

    iget-object v1, p0, Lz2/t7;->OooO0O0:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lz2/s7;->OooO0oO(Landroid/hardware/Camera$Parameters;)V

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->OooO00o()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v0

    invoke-static {v0}, Lz2/u7;->OooO0OO(Landroid/content/Context;)I

    move-result v0

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->OooO00o()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v1

    invoke-static {v1}, Lz2/u7;->OooO0o0(Landroid/content/Context;)I

    move-result v1

    iget-object v2, p0, Lz2/t7;->OooO0O0:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_9

    const/4 v3, 0x1

    :try_start_1
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    goto/16 :goto_6

    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    if-ne v4, v3, :cond_3

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    iget v5, v0, Landroid/hardware/Camera$Size;->width:I

    :goto_1
    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    goto :goto_3

    :cond_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v3, :cond_8

    invoke-static {}, Lz2/s7;->OooO0O0()Lz2/s7;

    move-result-object v4

    int-to-float v5, v0

    const/high16 v6, 0x3f800000    # 1.0f

    mul-float v5, v5, v6

    int-to-float v6, v1

    div-float/2addr v5, v6

    invoke-virtual {v4, v2, v5, v1}, Lz2/s7;->OooO0Oo(Ljava/util/List;FI)Landroid/hardware/Camera$Size;

    move-result-object v4

    iget v5, v4, Landroid/hardware/Camera$Size;->width:I

    iget v4, v4, Landroid/hardware/Camera$Size;->height:I

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/Camera$Size;

    iget v8, v7, Landroid/hardware/Camera$Size;->width:I

    if-lt v8, v0, :cond_4

    iget v7, v7, Landroid/hardware/Camera$Size;->height:I

    if-lt v7, v1, :cond_4

    move v4, v7

    move v5, v8

    :cond_5
    if-eqz v5, :cond_7

    if-nez v4, :cond_6

    goto :goto_2

    :cond_6
    move v0, v4

    goto :goto_3

    :cond_7
    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v3

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    iget v5, v0, Landroid/hardware/Camera$Size;->width:I

    goto :goto_1

    :cond_8
    const/4 v0, 0x0

    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PreviewWidth:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PreviewHeight:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v1, p0, Lz2/t7;->OooO0O0:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v5, v0}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    iget-object v0, p0, Lz2/t7;->OooO00o:Landroid/hardware/Camera;

    const/16 v1, 0x5a

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    iget-object v0, p0, Lz2/t7;->OooO00o:Landroid/hardware/Camera;

    iget-object v1, p0, Lz2/t7;->OooO0O0:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_4
    :try_start_2
    iget-object v0, p0, Lz2/t7;->OooO00o:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    iget-object p1, p0, Lz2/t7;->OooO00o:Landroid/hardware/Camera;

    invoke-virtual {p1, p0}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    iget-object p1, p0, Lz2/t7;->OooO00o:Landroid/hardware/Camera;

    invoke-virtual {p1}, Landroid/hardware/Camera;->startPreview()V

    iget-object p1, p0, Lz2/t7;->OooO00o:Landroid/hardware/Camera;

    iget-object v0, p0, Lz2/t7;->OooO0o:Landroid/hardware/Camera$AutoFocusCallback;

    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_5

    :catch_2
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_5
    iput-boolean v3, p0, Lz2/t7;->OooO0OO:Z

    iget-object p1, p0, Lz2/t7;->OooO00o:Landroid/hardware/Camera;

    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p1

    iput-object p1, p0, Lz2/t7;->OooO0O0:Landroid/hardware/Camera$Parameters;

    nop

    :cond_9
    :goto_6
    return-void
.end method

.method public OooO0oo()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lz2/t7;->OooO00o:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    iget-object v0, p0, Lz2/t7;->OooO00o:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lz2/t7;->OooO0OO:Z

    iget-object v0, p0, Lz2/t7;->OooO00o:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    iput-object v1, p0, Lz2/t7;->OooO00o:Landroid/hardware/Camera;

    iget-object v0, p0, Lz2/t7;->OooO0Oo:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public OooOO0()V
    .locals 2

    iget-object v0, p0, Lz2/t7;->OooO00o:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lz2/t7;->OooO0O0:Landroid/hardware/Camera$Parameters;

    const-string v1, "off"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    iget-object v0, p0, Lz2/t7;->OooO00o:Landroid/hardware/Camera;

    iget-object v1, p0, Lz2/t7;->OooO0O0:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    :cond_0
    return-void
.end method

.method public OooOO0O()V
    .locals 2

    const-string v0, "zzz"

    const-string v1, "openLight1"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lz2/t7;->OooO00o:Landroid/hardware/Camera;

    if-eqz v1, :cond_0

    const-string v1, "openLight2"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lz2/t7;->OooO00o:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lz2/t7;->OooO0O0:Landroid/hardware/Camera$Parameters;

    const-string v1, "torch"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    iget-object v0, p0, Lz2/t7;->OooO00o:Landroid/hardware/Camera;

    iget-object v1, p0, Lz2/t7;->OooO0O0:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    :cond_0
    return-void
.end method

.method public OooOO0o(Landroid/hardware/Camera$PreviewCallback;)V
    .locals 0

    iput-object p1, p0, Lz2/t7;->OooO0o0:Landroid/hardware/Camera$PreviewCallback;

    return-void
.end method

.method public OooOOO0()V
    .locals 1

    iget-object v0, p0, Lz2/t7;->OooO00o:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    :cond_0
    return-void
.end method

.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 1

    iget-object v0, p0, Lz2/t7;->OooO0o0:Landroid/hardware/Camera$PreviewCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Landroid/hardware/Camera$PreviewCallback;->onPreviewFrame([BLandroid/hardware/Camera;)V

    :cond_0
    return-void
.end method
