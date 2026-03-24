.class public final Lz2/rw;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz2/rw$OooO0o;,
        Lz2/rw$OooO;,
        Lz2/rw$OooO0OO;
    }
.end annotation


# static fields
.field private static final Oooooo:I = 0x0

.field private static final Oooooo0:I = 0x31191

.field private static final OoooooO:I = 0x1

.field private static final Ooooooo:I = 0x2


# instance fields
.field public final OoooOoO:Lz2/hy;

.field public final OoooOoo:Lz2/fy;

.field public Ooooo00:I

.field public Ooooo0o:I

.field private OooooO0:I

.field private OooooOO:I

.field private OooooOo:I


# direct methods
.method public constructor <init>(Ljava/io/File;J)V
    .locals 1

    sget-object v0, Lz2/oz;->OooO00o:Lz2/oz;

    invoke-direct {p0, p1, p2, p3, v0}, Lz2/rw;-><init>(Ljava/io/File;JLz2/oz;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;JLz2/oz;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lz2/rw$OooO00o;

    invoke-direct {v0, p0}, Lz2/rw$OooO00o;-><init>(Lz2/rw;)V

    iput-object v0, p0, Lz2/rw;->OoooOoO:Lz2/hy;

    const v3, 0x31191

    const/4 v4, 0x2

    move-object v1, p4

    move-object v2, p1

    move-wide v5, p2

    invoke-static/range {v1 .. v6}, Lz2/fy;->Oooooo0(Lz2/oz;Ljava/io/File;IIJ)Lz2/fy;

    move-result-object p1

    iput-object p1, p0, Lz2/rw;->OoooOoo:Lz2/fy;

    return-void
.end method

.method private OooOO0(Lz2/fy$OooO0o;)V
    .locals 0
    .param p1    # Lz2/fy$OooO0o;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lz2/fy$OooO0o;->OooO00o()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public static o00O0O(Lz2/kx;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lz2/kx;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object p0

    invoke-virtual {p0}, Lokio/ByteString;->md5()Lokio/ByteString;

    move-result-object p0

    invoke-virtual {p0}, Lokio/ByteString;->hex()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static o00ooo(Lz2/l00;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-interface {p0}, Lz2/l00;->OooOo0O()J

    move-result-wide v0

    invoke-interface {p0}, Lz2/l00;->Oooo0OO()Ljava/lang/String;

    move-result-object p0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    const-wide/32 v2, 0x7fffffff

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    long-to-int p0, v0

    return p0

    :cond_0
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "expected an int but was \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\""

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public OooooOo()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lz2/rw;->OoooOoo:Lz2/fy;

    invoke-virtual {v0}, Lz2/fy;->Oooooo()V

    return-void
.end method

.method public Oooooo()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lz2/rw;->OoooOoo:Lz2/fy;

    invoke-virtual {v0}, Lz2/fy;->o0OoOo0()V

    return-void
.end method

.method public Oooooo0()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lz2/rw;->OoooOoo:Lz2/fy;

    invoke-virtual {v0}, Lz2/fy;->o00O0O()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public OoooooO(Lz2/qx;)Lz2/sx;
    .locals 4
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    invoke-virtual {p1}, Lz2/qx;->OooOO0O()Lz2/kx;

    move-result-object v0

    invoke-static {v0}, Lz2/rw;->o00O0O(Lz2/kx;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lz2/rw;->OoooOoo:Lz2/fy;

    invoke-virtual {v2, v0}, Lz2/fy;->ooOO(Ljava/lang/String;)Lz2/fy$OooOO0;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :try_start_1
    new-instance v2, Lz2/rw$OooO;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lz2/fy$OooOO0;->Oooooo(I)Lz2/e10;

    move-result-object v3

    invoke-direct {v2, v3}, Lz2/rw$OooO;-><init>(Lz2/e10;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    invoke-virtual {v2, v0}, Lz2/rw$OooO;->OooO0Oo(Lz2/fy$OooOO0;)Lz2/sx;

    move-result-object v0

    invoke-virtual {v2, p1, v0}, Lz2/rw$OooO;->OooO0O0(Lz2/qx;Lz2/sx;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {v0}, Lz2/sx;->OooOO0()Lz2/tx;

    move-result-object p1

    invoke-static {p1}, Lz2/zx;->OooO0oO(Ljava/io/Closeable;)V

    return-object v1

    :cond_1
    return-object v0

    :catch_0
    invoke-static {v0}, Lz2/zx;->OooO0oO(Ljava/io/Closeable;)V

    :catch_1
    return-object v1
.end method

.method public declared-synchronized Ooooooo()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lz2/rw;->OooooOO:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lz2/rw;->OoooOoo:Lz2/fy;

    invoke-virtual {v0}, Lz2/fy;->close()V

    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lz2/rw;->OoooOoo:Lz2/fy;

    invoke-virtual {v0}, Lz2/fy;->flush()V

    return-void
.end method

.method public o00Oo0()J
    .locals 2

    iget-object v0, p0, Lz2/rw;->OoooOoo:Lz2/fy;

    invoke-virtual {v0}, Lz2/fy;->o00Oo0()J

    move-result-wide v0

    return-wide v0
.end method

.method public declared-synchronized o00Ooo()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lz2/rw;->OooooO0:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public o00o0O(Lz2/sx;)Lz2/dy;
    .locals 3
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    invoke-virtual {p1}, Lz2/sx;->o0OOO0o()Lz2/qx;

    move-result-object v0

    invoke-virtual {v0}, Lz2/qx;->OooO0oO()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lz2/sx;->o0OOO0o()Lz2/qx;

    move-result-object v1

    invoke-virtual {v1}, Lz2/qx;->OooO0oO()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lz2/vy;->OooO00o(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lz2/sx;->o0OOO0o()Lz2/qx;

    move-result-object p1

    invoke-virtual {p0, p1}, Lz2/rw;->oo000o(Lz2/qx;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v2

    :cond_0
    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return-object v2

    :cond_1
    invoke-static {p1}, Lz2/uy;->OooO0o0(Lz2/sx;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-object v2

    :cond_2
    new-instance v0, Lz2/rw$OooO;

    invoke-direct {v0, p1}, Lz2/rw$OooO;-><init>(Lz2/sx;)V

    :try_start_1
    iget-object v1, p0, Lz2/rw;->OoooOoo:Lz2/fy;

    invoke-virtual {p1}, Lz2/sx;->o0OOO0o()Lz2/qx;

    move-result-object p1

    invoke-virtual {p1}, Lz2/qx;->OooOO0O()Lz2/kx;

    move-result-object p1

    invoke-static {p1}, Lz2/rw;->o00O0O(Lz2/kx;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lz2/fy;->OoooooO(Ljava/lang/String;)Lz2/fy$OooO0o;

    move-result-object p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    if-nez p1, :cond_3

    return-object v2

    :cond_3
    :try_start_2
    invoke-virtual {v0, p1}, Lz2/rw$OooO;->OooO0o(Lz2/fy$OooO0o;)V

    new-instance v0, Lz2/rw$OooO0OO;

    invoke-direct {v0, p0, p1}, Lz2/rw$OooO0OO;-><init>(Lz2/rw;Lz2/fy$OooO0o;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    return-object v0

    :catch_1
    move-object p1, v2

    :catch_2
    invoke-direct {p0, p1}, Lz2/rw;->OooOO0(Lz2/fy$OooO0o;)V

    return-object v2
.end method

.method public o00oO0O()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lz2/rw;->OoooOoo:Lz2/fy;

    invoke-virtual {v0}, Lz2/fy;->o0OO00O()J

    move-result-wide v0

    return-wide v0
.end method

.method public declared-synchronized o00oO0o()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lz2/rw;->OooooOo:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized o0OO00O()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lz2/rw;->Ooooo00:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public o0OOO0o()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lz2/rw$OooO0O0;

    invoke-direct {v0, p0}, Lz2/rw$OooO0O0;-><init>(Lz2/rw;)V

    return-object v0
.end method

.method public declared-synchronized o0Oo0oo()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lz2/rw;->Ooooo0o:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public o0OoOo0()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lz2/rw;->OoooOoo:Lz2/fy;

    invoke-virtual {v0}, Lz2/fy;->o00Ooo()V

    return-void
.end method

.method public declared-synchronized o0ooOO0()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lz2/rw;->OooooOO:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lz2/rw;->OooooOO:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized o0ooOOo(Lz2/ey;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lz2/rw;->OooooOo:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lz2/rw;->OooooOo:I

    iget-object v0, p1, Lz2/ey;->OooO00o:Lz2/qx;

    if-eqz v0, :cond_0

    iget p1, p0, Lz2/rw;->OooooO0:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lz2/rw;->OooooO0:I

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lz2/ey;->OooO0O0:Lz2/sx;

    if-eqz p1, :cond_1

    iget p1, p0, Lz2/rw;->OooooOO:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lz2/rw;->OooooOO:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public o0ooOoO(Lz2/sx;Lz2/sx;)V
    .locals 1

    new-instance v0, Lz2/rw$OooO;

    invoke-direct {v0, p2}, Lz2/rw$OooO;-><init>(Lz2/sx;)V

    invoke-virtual {p1}, Lz2/sx;->OooOO0()Lz2/tx;

    move-result-object p1

    check-cast p1, Lz2/rw$OooO0o;

    iget-object p1, p1, Lz2/rw$OooO0o;->OoooOoO:Lz2/fy$OooOO0;

    :try_start_0
    invoke-virtual {p1}, Lz2/fy$OooOO0;->OooooOo()Lz2/fy$OooO0o;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    :try_start_1
    invoke-virtual {v0, p1}, Lz2/rw$OooO;->OooO0o(Lz2/fy$OooO0o;)V

    invoke-virtual {p1}, Lz2/fy$OooO0o;->OooO0OO()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    :catch_1
    invoke-direct {p0, p1}, Lz2/rw;->OooOO0(Lz2/fy$OooO0o;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public oo000o(Lz2/qx;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lz2/rw;->OoooOoo:Lz2/fy;

    invoke-virtual {p1}, Lz2/qx;->OooOO0O()Lz2/kx;

    move-result-object p1

    invoke-static {p1}, Lz2/rw;->o00O0O(Lz2/kx;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lz2/fy;->o0ooOoO(Ljava/lang/String;)Z

    return-void
.end method

.method public ooOO()Z
    .locals 1

    iget-object v0, p0, Lz2/rw;->OoooOoo:Lz2/fy;

    invoke-virtual {v0}, Lz2/fy;->o00o0O()Z

    move-result v0

    return v0
.end method
