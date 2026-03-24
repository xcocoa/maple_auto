.class public Lz2/hz$OooO0o;
.super Lz2/yx;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz2/hz;->o0ooOO0(ILjava/util/List;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OoooOoo:I

.field public final synthetic Ooooo00:Ljava/util/List;

.field public final synthetic Ooooo0o:Z

.field public final synthetic OooooO0:Lz2/hz;


# direct methods
.method public varargs constructor <init>(Lz2/hz;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;Z)V
    .locals 0

    iput-object p1, p0, Lz2/hz$OooO0o;->OooooO0:Lz2/hz;

    iput p4, p0, Lz2/hz$OooO0o;->OoooOoo:I

    iput-object p5, p0, Lz2/hz$OooO0o;->Ooooo00:Ljava/util/List;

    iput-boolean p6, p0, Lz2/hz$OooO0o;->Ooooo0o:Z

    invoke-direct {p0, p2, p3}, Lz2/yx;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public OooOO0o()V
    .locals 4

    iget-object v0, p0, Lz2/hz$OooO0o;->OooooO0:Lz2/hz;

    iget-object v0, v0, Lz2/hz;->OoooooO:Lz2/mz;

    iget v1, p0, Lz2/hz$OooO0o;->OoooOoo:I

    iget-object v2, p0, Lz2/hz$OooO0o;->Ooooo00:Ljava/util/List;

    iget-boolean v3, p0, Lz2/hz$OooO0o;->Ooooo0o:Z

    invoke-interface {v0, v1, v2, v3}, Lz2/mz;->OooO0O0(ILjava/util/List;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v1, p0, Lz2/hz$OooO0o;->OooooO0:Lz2/hz;

    iget-object v1, v1, Lz2/hz;->o00ooo:Lz2/kz;

    iget v2, p0, Lz2/hz$OooO0o;->OoooOoo:I

    sget-object v3, Lokhttp3/internal/http2/ErrorCode;->CANCEL:Lokhttp3/internal/http2/ErrorCode;

    invoke-virtual {v1, v2, v3}, Lz2/kz;->o00o0O(ILokhttp3/internal/http2/ErrorCode;)V

    :cond_0
    if-nez v0, :cond_1

    iget-boolean v0, p0, Lz2/hz$OooO0o;->Ooooo0o:Z

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lz2/hz$OooO0o;->OooooO0:Lz2/hz;

    monitor-enter v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lz2/hz$OooO0o;->OooooO0:Lz2/hz;

    iget-object v1, v1, Lz2/hz;->o00oO0o:Ljava/util/Set;

    iget v2, p0, Lz2/hz$OooO0o;->OoooOoo:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_2
    :goto_0
    return-void
.end method
