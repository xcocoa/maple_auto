.class public Lz2/jv;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static OooO:Lz2/jv;

.field public static final OooOO0:I


# instance fields
.field private final OooO00o:Lz2/iv;

.field private OooO0O0:Landroid/hardware/Camera;

.field private OooO0OO:Z

.field private OooO0Oo:Z

.field private final OooO0o:Lz2/lv;

.field private final OooO0o0:Z

.field private final OooO0oO:Lz2/hv;

.field private OooO0oo:Landroid/hardware/Camera$Parameters;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/16 v0, 0x2710

    :goto_0
    sput v0, Lz2/jv;->OooOO0:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lz2/iv;

    invoke-direct {v0, p1}, Lz2/iv;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lz2/jv;->OooO00o:Lz2/iv;

    sget p1, Lz2/jv;->OooOO0:I

    const/4 v1, 0x3

    if-le p1, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lz2/jv;->OooO0o0:Z

    new-instance v1, Lz2/lv;

    invoke-direct {v1, v0, p1}, Lz2/lv;-><init>(Lz2/iv;Z)V

    iput-object v1, p0, Lz2/jv;->OooO0o:Lz2/lv;

    new-instance p1, Lz2/hv;

    invoke-direct {p1}, Lz2/hv;-><init>()V

    iput-object p1, p0, Lz2/jv;->OooO0oO:Lz2/hv;

    return-void
.end method

.method public static OooO0O0()Lz2/jv;
    .locals 1

    sget-object v0, Lz2/jv;->OooO:Lz2/jv;

    return-object v0
.end method

.method public static OooO0Oo(Landroid/content/Context;)V
    .locals 1

    sget-object v0, Lz2/jv;->OooO:Lz2/jv;

    if-nez v0, :cond_0

    new-instance v0, Lz2/jv;

    invoke-direct {v0, p0}, Lz2/jv;-><init>(Landroid/content/Context;)V

    sput-object v0, Lz2/jv;->OooO:Lz2/jv;

    :cond_0
    return-void
.end method


# virtual methods
.method public OooO(Landroid/os/Handler;I)V
    .locals 1

    iget-object v0, p0, Lz2/jv;->OooO0O0:Landroid/hardware/Camera;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lz2/jv;->OooO0Oo:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lz2/jv;->OooO0o:Lz2/lv;

    invoke-virtual {v0, p1, p2}, Lz2/lv;->OooO00o(Landroid/os/Handler;I)V

    iget-boolean p1, p0, Lz2/jv;->OooO0o0:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lz2/jv;->OooO0O0:Landroid/hardware/Camera;

    iget-object p2, p0, Lz2/jv;->OooO0o:Lz2/lv;

    invoke-virtual {p1, p2}, Landroid/hardware/Camera;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lz2/jv;->OooO0O0:Landroid/hardware/Camera;

    iget-object p2, p0, Lz2/jv;->OooO0o:Lz2/lv;

    invoke-virtual {p1, p2}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public OooO00o()V
    .locals 1

    iget-object v0, p0, Lz2/jv;->OooO0O0:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    invoke-static {}, Lz2/kv;->OooO00o()V

    iget-object v0, p0, Lz2/jv;->OooO0O0:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lz2/jv;->OooO0O0:Landroid/hardware/Camera;

    :cond_0
    return-void
.end method

.method public OooO0OO()Landroid/graphics/Point;
    .locals 1

    iget-object v0, p0, Lz2/jv;->OooO00o:Lz2/iv;

    invoke-virtual {v0}, Lz2/iv;->OooO0OO()Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method public OooO0o(Landroid/view/SurfaceHolder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lz2/jv;->OooO0O0:Landroid/hardware/Camera;

    if-nez v0, :cond_2

    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v0

    iput-object v0, p0, Lz2/jv;->OooO0O0:Landroid/hardware/Camera;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    iget-boolean p1, p0, Lz2/jv;->OooO0OO:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lz2/jv;->OooO0OO:Z

    iget-object p1, p0, Lz2/jv;->OooO00o:Lz2/iv;

    iget-object v0, p0, Lz2/jv;->OooO0O0:Landroid/hardware/Camera;

    invoke-virtual {p1, v0}, Lz2/iv;->OooO0oo(Landroid/hardware/Camera;)V

    :cond_0
    iget-object p1, p0, Lz2/jv;->OooO00o:Lz2/iv;

    iget-object v0, p0, Lz2/jv;->OooO0O0:Landroid/hardware/Camera;

    invoke-virtual {p1, v0}, Lz2/iv;->OooO(Landroid/hardware/Camera;)V

    invoke-static {}, Lz2/kv;->OooO0O0()V

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    throw p1

    :cond_2
    :goto_0
    return-void
.end method

.method public OooO0o0()V
    .locals 2

    iget-object v0, p0, Lz2/jv;->OooO0O0:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lz2/jv;->OooO0oo:Landroid/hardware/Camera$Parameters;

    const-string v1, "off"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    iget-object v0, p0, Lz2/jv;->OooO0O0:Landroid/hardware/Camera;

    iget-object v1, p0, Lz2/jv;->OooO0oo:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    :cond_0
    return-void
.end method

.method public OooO0oO()V
    .locals 2

    const-string v0, "zzz"

    const-string v1, "openLight1"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lz2/jv;->OooO0O0:Landroid/hardware/Camera;

    if-eqz v1, :cond_0

    const-string v1, "openLight2"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lz2/jv;->OooO0O0:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lz2/jv;->OooO0oo:Landroid/hardware/Camera$Parameters;

    const-string v1, "torch"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    iget-object v0, p0, Lz2/jv;->OooO0O0:Landroid/hardware/Camera;

    iget-object v1, p0, Lz2/jv;->OooO0oo:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    :cond_0
    return-void
.end method

.method public OooO0oo(Landroid/os/Handler;I)V
    .locals 1

    iget-object v0, p0, Lz2/jv;->OooO0O0:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lz2/jv;->OooO0Oo:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lz2/jv;->OooO0oO:Lz2/hv;

    invoke-virtual {v0, p1, p2}, Lz2/hv;->OooO00o(Landroid/os/Handler;I)V

    iget-object p1, p0, Lz2/jv;->OooO0O0:Landroid/hardware/Camera;

    iget-object p2, p0, Lz2/jv;->OooO0oO:Lz2/hv;

    invoke-virtual {p1, p2}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    :cond_0
    return-void
.end method

.method public OooOO0()V
    .locals 2

    iget-object v0, p0, Lz2/jv;->OooO0O0:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lz2/jv;->OooO0Oo:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lz2/jv;->OooO0Oo:Z

    :cond_0
    return-void
.end method

.method public OooOO0O()V
    .locals 3

    iget-object v0, p0, Lz2/jv;->OooO0O0:Landroid/hardware/Camera;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lz2/jv;->OooO0Oo:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lz2/jv;->OooO0o0:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    invoke-virtual {v0, v2}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    :cond_0
    iget-object v0, p0, Lz2/jv;->OooO0O0:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    iget-object v0, p0, Lz2/jv;->OooO0o:Lz2/lv;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lz2/lv;->OooO00o(Landroid/os/Handler;I)V

    iget-object v0, p0, Lz2/jv;->OooO0oO:Lz2/hv;

    invoke-virtual {v0, v2, v1}, Lz2/hv;->OooO00o(Landroid/os/Handler;I)V

    iput-boolean v1, p0, Lz2/jv;->OooO0Oo:Z

    :cond_1
    return-void
.end method
