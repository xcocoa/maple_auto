.class public Lpl/droidsonroids/gif/GifTextureView$OooO0OO;
.super Ljava/lang/Thread;
.source ""

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpl/droidsonroids/gif/GifTextureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OooO0OO"
.end annotation


# instance fields
.field public final OoooOoO:Lz2/cd0;

.field private OoooOoo:Lpl/droidsonroids/gif/GifInfoHandle;

.field private Ooooo00:Ljava/io/IOException;

.field public Ooooo0o:[J

.field private final OooooO0:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lpl/droidsonroids/gif/GifTextureView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lpl/droidsonroids/gif/GifTextureView;)V
    .locals 1

    const-string v0, "GifRenderThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    new-instance v0, Lz2/cd0;

    invoke-direct {v0}, Lz2/cd0;-><init>()V

    iput-object v0, p0, Lpl/droidsonroids/gif/GifTextureView$OooO0OO;->OoooOoO:Lz2/cd0;

    new-instance v0, Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-direct {v0}, Lpl/droidsonroids/gif/GifInfoHandle;-><init>()V

    iput-object v0, p0, Lpl/droidsonroids/gif/GifTextureView$OooO0OO;->OoooOoo:Lpl/droidsonroids/gif/GifInfoHandle;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lpl/droidsonroids/gif/GifTextureView$OooO0OO;->OooooO0:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static synthetic OooO00o(Lpl/droidsonroids/gif/GifTextureView$OooO0OO;)Lpl/droidsonroids/gif/GifInfoHandle;
    .locals 0

    iget-object p0, p0, Lpl/droidsonroids/gif/GifTextureView$OooO0OO;->OoooOoo:Lpl/droidsonroids/gif/GifInfoHandle;

    return-object p0
.end method

.method public static synthetic OooO0O0(Lpl/droidsonroids/gif/GifTextureView$OooO0OO;)Ljava/io/IOException;
    .locals 0

    iget-object p0, p0, Lpl/droidsonroids/gif/GifTextureView$OooO0OO;->Ooooo00:Ljava/io/IOException;

    return-object p0
.end method


# virtual methods
.method public OooO0OO(Lpl/droidsonroids/gif/GifTextureView;Lpl/droidsonroids/gif/GifTextureView$OooO0O0;)V
    .locals 1
    .param p1    # Lpl/droidsonroids/gif/GifTextureView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lpl/droidsonroids/gif/GifTextureView$OooO0O0;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lpl/droidsonroids/gif/GifTextureView$OooO0OO;->OoooOoO:Lz2/cd0;

    invoke-virtual {v0}, Lz2/cd0;->OooO0O0()V

    if-eqz p2, :cond_0

    new-instance v0, Lz2/pd0;

    invoke-direct {v0, p2}, Lz2/pd0;-><init>(Lpl/droidsonroids/gif/GifTextureView$OooO0O0;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p1, v0}, Lpl/droidsonroids/gif/GifTextureView;->OooO0OO(Lpl/droidsonroids/gif/GifTextureView;Landroid/view/TextureView$SurfaceTextureListener;)V

    iget-object p1, p0, Lpl/droidsonroids/gif/GifTextureView$OooO0OO;->OoooOoo:Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-virtual {p1}, Lpl/droidsonroids/gif/GifInfoHandle;->OooOoO()V

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    iget-object p1, p0, Lpl/droidsonroids/gif/GifTextureView$OooO0OO;->OooooO0:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lpl/droidsonroids/gif/GifTextureView;

    if-eqz p1, :cond_0

    iget-object p2, p0, Lpl/droidsonroids/gif/GifTextureView$OooO0OO;->OoooOoo:Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-static {p1, p2}, Lpl/droidsonroids/gif/GifTextureView;->OooO0Oo(Lpl/droidsonroids/gif/GifTextureView;Lpl/droidsonroids/gif/GifInfoHandle;)V

    :cond_0
    iget-object p1, p0, Lpl/droidsonroids/gif/GifTextureView$OooO0OO;->OoooOoO:Lz2/cd0;

    invoke-virtual {p1}, Lz2/cd0;->OooO0OO()V

    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 0

    iget-object p1, p0, Lpl/droidsonroids/gif/GifTextureView$OooO0OO;->OoooOoO:Lz2/cd0;

    invoke-virtual {p1}, Lz2/cd0;->OooO0O0()V

    iget-object p1, p0, Lpl/droidsonroids/gif/GifTextureView$OooO0OO;->OoooOoo:Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-virtual {p1}, Lpl/droidsonroids/gif/GifInfoHandle;->OooOoO()V

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    const/4 p1, 0x1

    return p1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method

.method public run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lpl/droidsonroids/gif/GifTextureView$OooO0OO;->OooooO0:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/droidsonroids/gif/GifTextureView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {v0}, Lpl/droidsonroids/gif/GifTextureView;->OooO00o(Lpl/droidsonroids/gif/GifTextureView;)Lz2/ld0;

    move-result-object v1

    invoke-virtual {v1}, Lz2/ld0;->OooO0OO()Lpl/droidsonroids/gif/GifInfoHandle;

    move-result-object v1

    iput-object v1, p0, Lpl/droidsonroids/gif/GifTextureView$OooO0OO;->OoooOoo:Lpl/droidsonroids/gif/GifInfoHandle;

    const/4 v2, 0x1

    invoke-virtual {v0}, Landroid/view/TextureView;->isOpaque()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lpl/droidsonroids/gif/GifInfoHandle;->Oooo0OO(CZ)V

    invoke-static {v0}, Lpl/droidsonroids/gif/GifTextureView;->OooO0O0(Lpl/droidsonroids/gif/GifTextureView;)Lz2/kd0$OooO0O0;

    move-result-object v1

    iget v1, v1, Lz2/kd0$OooO0O0;->OooO0O0:I

    if-ltz v1, :cond_1

    iget-object v1, p0, Lpl/droidsonroids/gif/GifTextureView$OooO0OO;->OoooOoo:Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-static {v0}, Lpl/droidsonroids/gif/GifTextureView;->OooO0O0(Lpl/droidsonroids/gif/GifTextureView;)Lz2/kd0$OooO0O0;

    move-result-object v0

    iget v0, v0, Lz2/kd0$OooO0O0;->OooO0O0:I

    invoke-virtual {v1, v0}, Lpl/droidsonroids/gif/GifInfoHandle;->Oooo0O0(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_1
    iget-object v0, p0, Lpl/droidsonroids/gif/GifTextureView$OooO0OO;->OooooO0:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/droidsonroids/gif/GifTextureView;

    if-nez v0, :cond_2

    iget-object v0, p0, Lpl/droidsonroids/gif/GifTextureView$OooO0OO;->OoooOoo:Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-virtual {v0}, Lpl/droidsonroids/gif/GifInfoHandle;->OooOoOO()V

    return-void

    :cond_2
    invoke-static {v0, p0}, Lpl/droidsonroids/gif/GifTextureView;->OooO0OO(Lpl/droidsonroids/gif/GifTextureView;Landroid/view/TextureView$SurfaceTextureListener;)V

    invoke-virtual {v0}, Landroid/view/TextureView;->isAvailable()Z

    move-result v1

    iget-object v2, p0, Lpl/droidsonroids/gif/GifTextureView$OooO0OO;->OoooOoO:Lz2/cd0;

    invoke-virtual {v2, v1}, Lz2/cd0;->OooO0Oo(Z)V

    if-eqz v1, :cond_3

    new-instance v1, Lpl/droidsonroids/gif/GifTextureView$OooO0OO$OooO00o;

    invoke-direct {v1, p0, v0}, Lpl/droidsonroids/gif/GifTextureView$OooO0OO$OooO00o;-><init>(Lpl/droidsonroids/gif/GifTextureView$OooO0OO;Lpl/droidsonroids/gif/GifTextureView;)V

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->post(Ljava/lang/Runnable;)Z

    :cond_3
    iget-object v1, p0, Lpl/droidsonroids/gif/GifTextureView$OooO0OO;->OoooOoo:Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-static {v0}, Lpl/droidsonroids/gif/GifTextureView;->OooO0o0(Lpl/droidsonroids/gif/GifTextureView;)F

    move-result v0

    invoke-virtual {v1, v0}, Lpl/droidsonroids/gif/GifInfoHandle;->Oooo0o0(F)V

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_6

    :try_start_1
    iget-object v0, p0, Lpl/droidsonroids/gif/GifTextureView$OooO0OO;->OoooOoO:Lz2/cd0;

    invoke-virtual {v0}, Lz2/cd0;->OooO00o()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    iget-object v0, p0, Lpl/droidsonroids/gif/GifTextureView$OooO0OO;->OooooO0:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/droidsonroids/gif/GifTextureView;

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1, v0}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    :try_start_2
    iget-object v0, p0, Lpl/droidsonroids/gif/GifTextureView$OooO0OO;->OoooOoo:Lpl/droidsonroids/gif/GifInfoHandle;

    iget-object v2, p0, Lpl/droidsonroids/gif/GifTextureView$OooO0OO;->Ooooo0o:[J

    invoke-virtual {v0, v1, v2}, Lpl/droidsonroids/gif/GifInfoHandle;->OooO00o(Landroid/view/Surface;[J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    throw v0

    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_6
    :goto_1
    iget-object v0, p0, Lpl/droidsonroids/gif/GifTextureView$OooO0OO;->OoooOoo:Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-virtual {v0}, Lpl/droidsonroids/gif/GifInfoHandle;->OooOoOO()V

    new-instance v0, Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-direct {v0}, Lpl/droidsonroids/gif/GifInfoHandle;-><init>()V

    iput-object v0, p0, Lpl/droidsonroids/gif/GifTextureView$OooO0OO;->OoooOoo:Lpl/droidsonroids/gif/GifInfoHandle;

    return-void

    :catch_1
    move-exception v0

    iput-object v0, p0, Lpl/droidsonroids/gif/GifTextureView$OooO0OO;->Ooooo00:Ljava/io/IOException;

    return-void
.end method
