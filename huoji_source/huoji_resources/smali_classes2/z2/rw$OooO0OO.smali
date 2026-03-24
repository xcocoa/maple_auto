.class public final Lz2/rw$OooO0OO;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/dy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/rw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "OooO0OO"
.end annotation


# instance fields
.field private final OooO00o:Lz2/fy$OooO0o;

.field private OooO0O0:Lz2/d10;

.field private OooO0OO:Lz2/d10;

.field public OooO0Oo:Z

.field public final synthetic OooO0o0:Lz2/rw;


# direct methods
.method public constructor <init>(Lz2/rw;Lz2/fy$OooO0o;)V
    .locals 2

    iput-object p1, p0, Lz2/rw$OooO0OO;->OooO0o0:Lz2/rw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lz2/rw$OooO0OO;->OooO00o:Lz2/fy$OooO0o;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lz2/fy$OooO0o;->OooO0o0(I)Lz2/d10;

    move-result-object v0

    iput-object v0, p0, Lz2/rw$OooO0OO;->OooO0O0:Lz2/d10;

    new-instance v1, Lz2/rw$OooO0OO$OooO00o;

    invoke-direct {v1, p0, v0, p1, p2}, Lz2/rw$OooO0OO$OooO00o;-><init>(Lz2/rw$OooO0OO;Lz2/d10;Lz2/rw;Lz2/fy$OooO0o;)V

    iput-object v1, p0, Lz2/rw$OooO0OO;->OooO0OO:Lz2/d10;

    return-void
.end method


# virtual methods
.method public OooO00o()Lz2/d10;
    .locals 1

    iget-object v0, p0, Lz2/rw$OooO0OO;->OooO0OO:Lz2/d10;

    return-object v0
.end method

.method public abort()V
    .locals 4

    iget-object v0, p0, Lz2/rw$OooO0OO;->OooO0o0:Lz2/rw;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lz2/rw$OooO0OO;->OooO0Oo:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lz2/rw$OooO0OO;->OooO0Oo:Z

    iget-object v2, p0, Lz2/rw$OooO0OO;->OooO0o0:Lz2/rw;

    iget v3, v2, Lz2/rw;->Ooooo0o:I

    add-int/2addr v3, v1

    iput v3, v2, Lz2/rw;->Ooooo0o:I

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lz2/rw$OooO0OO;->OooO0O0:Lz2/d10;

    invoke-static {v0}, Lz2/zx;->OooO0oO(Ljava/io/Closeable;)V

    :try_start_1
    iget-object v0, p0, Lz2/rw$OooO0OO;->OooO00o:Lz2/fy$OooO0o;

    invoke-virtual {v0}, Lz2/fy$OooO0o;->OooO00o()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-void

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
