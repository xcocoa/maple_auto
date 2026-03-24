.class public Lz2/hz$OooOO0;
.super Lz2/yx;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz2/hz;->o0ooOoO(ILokhttp3/internal/http2/ErrorCode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OoooOoo:I

.field public final synthetic Ooooo00:Lokhttp3/internal/http2/ErrorCode;

.field public final synthetic Ooooo0o:Lz2/hz;


# direct methods
.method public varargs constructor <init>(Lz2/hz;Ljava/lang/String;[Ljava/lang/Object;ILokhttp3/internal/http2/ErrorCode;)V
    .locals 0

    iput-object p1, p0, Lz2/hz$OooOO0;->Ooooo0o:Lz2/hz;

    iput p4, p0, Lz2/hz$OooOO0;->OoooOoo:I

    iput-object p5, p0, Lz2/hz$OooOO0;->Ooooo00:Lokhttp3/internal/http2/ErrorCode;

    invoke-direct {p0, p2, p3}, Lz2/yx;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public OooOO0o()V
    .locals 3

    iget-object v0, p0, Lz2/hz$OooOO0;->Ooooo0o:Lz2/hz;

    iget-object v0, v0, Lz2/hz;->OoooooO:Lz2/mz;

    iget v1, p0, Lz2/hz$OooOO0;->OoooOoo:I

    iget-object v2, p0, Lz2/hz$OooOO0;->Ooooo00:Lokhttp3/internal/http2/ErrorCode;

    invoke-interface {v0, v1, v2}, Lz2/mz;->OooO0OO(ILokhttp3/internal/http2/ErrorCode;)V

    iget-object v0, p0, Lz2/hz$OooOO0;->Ooooo0o:Lz2/hz;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lz2/hz$OooOO0;->Ooooo0o:Lz2/hz;

    iget-object v1, v1, Lz2/hz;->o00oO0o:Ljava/util/Set;

    iget v2, p0, Lz2/hz$OooOO0;->OoooOoo:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
