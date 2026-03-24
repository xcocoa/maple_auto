.class public abstract Lz2/ld0;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz2/ld0$OooO0O0;,
        Lz2/ld0$OooOOO;,
        Lz2/ld0$OooOOO0;,
        Lz2/ld0$OooOO0;,
        Lz2/ld0$OooO0OO;,
        Lz2/ld0$OooOOOO;,
        Lz2/ld0$OooOO0O;,
        Lz2/ld0$OooO0o;,
        Lz2/ld0$OooO;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lz2/ld0$OooO00o;)V
    .locals 0

    invoke-direct {p0}, Lz2/ld0;-><init>()V

    return-void
.end method


# virtual methods
.method public final OooO00o(Lz2/ed0;Ljava/util/concurrent/ScheduledThreadPoolExecutor;ZLz2/hd0;)Lz2/ed0;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lz2/ed0;

    invoke-virtual {p0, p4}, Lz2/ld0;->OooO0O0(Lz2/hd0;)Lpl/droidsonroids/gif/GifInfoHandle;

    move-result-object p4

    invoke-direct {v0, p4, p1, p2, p3}, Lz2/ed0;-><init>(Lpl/droidsonroids/gif/GifInfoHandle;Lz2/ed0;Ljava/util/concurrent/ScheduledThreadPoolExecutor;Z)V

    return-object v0
.end method

.method public final OooO0O0(Lz2/hd0;)Lpl/droidsonroids/gif/GifInfoHandle;
    .locals 2
    .param p1    # Lz2/hd0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lz2/ld0;->OooO0OO()Lpl/droidsonroids/gif/GifInfoHandle;

    move-result-object v0

    iget-char v1, p1, Lz2/hd0;->OooO00o:C

    iget-boolean p1, p1, Lz2/hd0;->OooO0O0:Z

    invoke-virtual {v0, v1, p1}, Lpl/droidsonroids/gif/GifInfoHandle;->Oooo0OO(CZ)V

    return-object v0
.end method

.method public abstract OooO0OO()Lpl/droidsonroids/gif/GifInfoHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
