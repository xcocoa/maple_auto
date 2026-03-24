.class public final Lz2/fy$OooO0o;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/fy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "OooO0o"
.end annotation


# instance fields
.field public final OooO00o:Lz2/fy$OooO;

.field public final OooO0O0:[Z

.field private OooO0OO:Z

.field public final synthetic OooO0Oo:Lz2/fy;


# direct methods
.method public constructor <init>(Lz2/fy;Lz2/fy$OooO;)V
    .locals 0

    iput-object p1, p0, Lz2/fy$OooO0o;->OooO0Oo:Lz2/fy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lz2/fy$OooO0o;->OooO00o:Lz2/fy$OooO;

    iget-boolean p2, p2, Lz2/fy$OooO;->OooO0o0:Z

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget p1, p1, Lz2/fy;->Oooooo0:I

    new-array p1, p1, [Z

    :goto_0
    iput-object p1, p0, Lz2/fy$OooO0o;->OooO0O0:[Z

    return-void
.end method


# virtual methods
.method public OooO00o()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lz2/fy$OooO0o;->OooO0Oo:Lz2/fy;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lz2/fy$OooO0o;->OooO0OO:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lz2/fy$OooO0o;->OooO00o:Lz2/fy$OooO;

    iget-object v1, v1, Lz2/fy$OooO;->OooO0o:Lz2/fy$OooO0o;

    if-ne v1, p0, :cond_0

    iget-object v1, p0, Lz2/fy$OooO0o;->OooO0Oo:Lz2/fy;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lz2/fy;->OooooOo(Lz2/fy$OooO0o;Z)V

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lz2/fy$OooO0o;->OooO0OO:Z

    monitor-exit v0

    return-void

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public OooO0O0()V
    .locals 3

    iget-object v0, p0, Lz2/fy$OooO0o;->OooO0Oo:Lz2/fy;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lz2/fy$OooO0o;->OooO0OO:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lz2/fy$OooO0o;->OooO00o:Lz2/fy$OooO;

    iget-object v1, v1, Lz2/fy$OooO;->OooO0o:Lz2/fy$OooO0o;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v1, p0, :cond_0

    :try_start_1
    iget-object v1, p0, Lz2/fy$OooO0o;->OooO0Oo:Lz2/fy;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lz2/fy;->OooooOo(Lz2/fy$OooO0o;Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    :cond_0
    :try_start_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public OooO0OO()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lz2/fy$OooO0o;->OooO0Oo:Lz2/fy;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lz2/fy$OooO0o;->OooO0OO:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lz2/fy$OooO0o;->OooO00o:Lz2/fy$OooO;

    iget-object v1, v1, Lz2/fy$OooO;->OooO0o:Lz2/fy$OooO0o;

    const/4 v2, 0x1

    if-ne v1, p0, :cond_0

    iget-object v1, p0, Lz2/fy$OooO0o;->OooO0Oo:Lz2/fy;

    invoke-virtual {v1, p0, v2}, Lz2/fy;->OooooOo(Lz2/fy$OooO0o;Z)V

    :cond_0
    iput-boolean v2, p0, Lz2/fy$OooO0o;->OooO0OO:Z

    monitor-exit v0

    return-void

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public OooO0Oo()V
    .locals 3

    iget-object v0, p0, Lz2/fy$OooO0o;->OooO00o:Lz2/fy$OooO;

    iget-object v0, v0, Lz2/fy$OooO;->OooO0o:Lz2/fy$OooO0o;

    if-ne v0, p0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lz2/fy$OooO0o;->OooO0Oo:Lz2/fy;

    iget v2, v1, Lz2/fy;->Oooooo0:I

    if-ge v0, v2, :cond_0

    :try_start_0
    iget-object v1, v1, Lz2/fy;->OoooOoO:Lz2/oz;

    iget-object v2, p0, Lz2/fy$OooO0o;->OooO00o:Lz2/fy$OooO;

    iget-object v2, v2, Lz2/fy$OooO;->OooO0Oo:[Ljava/io/File;

    aget-object v2, v2, v0

    invoke-interface {v1, v2}, Lz2/oz;->OooO0o(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lz2/fy$OooO0o;->OooO00o:Lz2/fy$OooO;

    const/4 v1, 0x0

    iput-object v1, v0, Lz2/fy$OooO;->OooO0o:Lz2/fy$OooO0o;

    :cond_1
    return-void
.end method

.method public OooO0o(I)Lz2/e10;
    .locals 4

    iget-object v0, p0, Lz2/fy$OooO0o;->OooO0Oo:Lz2/fy;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lz2/fy$OooO0o;->OooO0OO:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lz2/fy$OooO0o;->OooO00o:Lz2/fy$OooO;

    iget-boolean v2, v1, Lz2/fy$OooO;->OooO0o0:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    iget-object v2, v1, Lz2/fy$OooO;->OooO0o:Lz2/fy$OooO0o;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v2, p0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_1
    iget-object v2, p0, Lz2/fy$OooO0o;->OooO0Oo:Lz2/fy;

    iget-object v2, v2, Lz2/fy;->OoooOoO:Lz2/oz;

    iget-object v1, v1, Lz2/fy$OooO;->OooO0OO:[Ljava/io/File;

    aget-object p1, v1, p1

    invoke-interface {v2, p1}, Lz2/oz;->OooO00o(Ljava/io/File;)Lz2/e10;

    move-result-object p1
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return-object p1

    :catch_0
    monitor-exit v0

    return-object v3

    :cond_1
    :goto_0
    monitor-exit v0

    return-object v3

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public OooO0o0(I)Lz2/d10;
    .locals 4

    iget-object v0, p0, Lz2/fy$OooO0o;->OooO0Oo:Lz2/fy;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lz2/fy$OooO0o;->OooO0OO:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lz2/fy$OooO0o;->OooO00o:Lz2/fy$OooO;

    iget-object v2, v1, Lz2/fy$OooO;->OooO0o:Lz2/fy$OooO0o;

    if-eq v2, p0, :cond_0

    invoke-static {}, Lz2/w00;->OooO0O0()Lz2/d10;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :cond_0
    iget-boolean v2, v1, Lz2/fy$OooO;->OooO0o0:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lz2/fy$OooO0o;->OooO0O0:[Z

    const/4 v3, 0x1

    aput-boolean v3, v2, p1

    :cond_1
    iget-object v1, v1, Lz2/fy$OooO;->OooO0Oo:[Ljava/io/File;

    aget-object p1, v1, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Lz2/fy$OooO0o;->OooO0Oo:Lz2/fy;

    iget-object v1, v1, Lz2/fy;->OoooOoO:Lz2/oz;

    invoke-interface {v1, p1}, Lz2/oz;->OooO0O0(Ljava/io/File;)Lz2/d10;

    move-result-object p1
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance v1, Lz2/fy$OooO0o$OooO00o;

    invoke-direct {v1, p0, p1}, Lz2/fy$OooO0o$OooO00o;-><init>(Lz2/fy$OooO0o;Lz2/d10;)V

    monitor-exit v0

    return-object v1

    :catch_0
    invoke-static {}, Lz2/w00;->OooO0O0()Lz2/d10;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method
