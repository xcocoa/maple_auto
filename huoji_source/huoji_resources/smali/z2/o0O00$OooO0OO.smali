.class public final Lz2/o0O00$OooO0OO;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/o0O00;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "OooO0OO"
.end annotation


# instance fields
.field private final OooO00o:Lz2/o0O00$OooO0o;

.field private final OooO0O0:[Z

.field private OooO0OO:Z

.field public final synthetic OooO0Oo:Lz2/o0O00;


# direct methods
.method private constructor <init>(Lz2/o0O00;Lz2/o0O00$OooO0o;)V
    .locals 0

    iput-object p1, p0, Lz2/o0O00$OooO0OO;->OooO0Oo:Lz2/o0O00;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lz2/o0O00$OooO0OO;->OooO00o:Lz2/o0O00$OooO0o;

    invoke-static {p2}, Lz2/o0O00$OooO0o;->OooO0o0(Lz2/o0O00$OooO0o;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lz2/o0O00;->Oooooo(Lz2/o0O00;)I

    move-result p1

    new-array p1, p1, [Z

    :goto_0
    iput-object p1, p0, Lz2/o0O00$OooO0OO;->OooO0O0:[Z

    return-void
.end method

.method public synthetic constructor <init>(Lz2/o0O00;Lz2/o0O00$OooO0o;Lz2/o0O00$OooO00o;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lz2/o0O00$OooO0OO;-><init>(Lz2/o0O00;Lz2/o0O00$OooO0o;)V

    return-void
.end method

.method public static synthetic OooO0OO(Lz2/o0O00$OooO0OO;)Lz2/o0O00$OooO0o;
    .locals 0

    iget-object p0, p0, Lz2/o0O00$OooO0OO;->OooO00o:Lz2/o0O00$OooO0o;

    return-object p0
.end method

.method public static synthetic OooO0Oo(Lz2/o0O00$OooO0OO;)[Z
    .locals 0

    iget-object p0, p0, Lz2/o0O00$OooO0OO;->OooO0O0:[Z

    return-object p0
.end method

.method private OooO0oo(I)Ljava/io/InputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lz2/o0O00$OooO0OO;->OooO0Oo:Lz2/o0O00;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lz2/o0O00$OooO0OO;->OooO00o:Lz2/o0O00$OooO0o;

    invoke-static {v1}, Lz2/o0O00$OooO0o;->OooO0oO(Lz2/o0O00$OooO0o;)Lz2/o0O00$OooO0OO;

    move-result-object v1

    if-ne v1, p0, :cond_1

    iget-object v1, p0, Lz2/o0O00$OooO0OO;->OooO00o:Lz2/o0O00$OooO0o;

    invoke-static {v1}, Lz2/o0O00$OooO0o;->OooO0o0(Lz2/o0O00$OooO0o;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v2

    :cond_0
    :try_start_1
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v3, p0, Lz2/o0O00$OooO0OO;->OooO00o:Lz2/o0O00$OooO0o;

    invoke-virtual {v3, p1}, Lz2/o0O00$OooO0o;->OooOO0(I)Ljava/io/File;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return-object v1

    :catch_0
    monitor-exit v0

    return-object v2

    :cond_1
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


# virtual methods
.method public OooO(ILjava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-virtual {p0, p1}, Lz2/o0O00$OooO0OO;->OooO0o(I)Ljava/io/File;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    new-instance p1, Ljava/io/OutputStreamWriter;

    sget-object v2, Lz2/o0O00O0o;->OooO0O0:Ljava/nio/charset/Charset;

    invoke-direct {p1, v1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {p1}, Lz2/o0O00O0o;->OooO00o(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception p2

    move-object v0, p1

    goto :goto_0

    :catchall_1
    move-exception p2

    :goto_0
    invoke-static {v0}, Lz2/o0O00O0o;->OooO00o(Ljava/io/Closeable;)V

    throw p2
.end method

.method public OooO00o()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lz2/o0O00$OooO0OO;->OooO0Oo:Lz2/o0O00;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lz2/o0O00;->o0OoOo0(Lz2/o0O00;Lz2/o0O00$OooO0OO;Z)V

    return-void
.end method

.method public OooO0O0()V
    .locals 1

    iget-boolean v0, p0, Lz2/o0O00$OooO0OO;->OooO0OO:Z

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lz2/o0O00$OooO0OO;->OooO00o()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public OooO0o(I)Ljava/io/File;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lz2/o0O00$OooO0OO;->OooO0Oo:Lz2/o0O00;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lz2/o0O00$OooO0OO;->OooO00o:Lz2/o0O00$OooO0o;

    invoke-static {v1}, Lz2/o0O00$OooO0o;->OooO0oO(Lz2/o0O00$OooO0o;)Lz2/o0O00$OooO0OO;

    move-result-object v1

    if-ne v1, p0, :cond_2

    iget-object v1, p0, Lz2/o0O00$OooO0OO;->OooO00o:Lz2/o0O00$OooO0o;

    invoke-static {v1}, Lz2/o0O00$OooO0o;->OooO0o0(Lz2/o0O00$OooO0o;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lz2/o0O00$OooO0OO;->OooO0O0:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, p1

    :cond_0
    iget-object v1, p0, Lz2/o0O00$OooO0OO;->OooO00o:Lz2/o0O00$OooO0o;

    invoke-virtual {v1, p1}, Lz2/o0O00$OooO0o;->OooOO0O(I)Ljava/io/File;

    move-result-object p1

    iget-object v1, p0, Lz2/o0O00$OooO0OO;->OooO0Oo:Lz2/o0O00;

    invoke-static {v1}, Lz2/o0O00;->Ooooooo(Lz2/o0O00;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lz2/o0O00$OooO0OO;->OooO0Oo:Lz2/o0O00;

    invoke-static {v1}, Lz2/o0O00;->Ooooooo(Lz2/o0O00;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_1
    monitor-exit v0

    return-object p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public OooO0o0()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lz2/o0O00$OooO0OO;->OooO0Oo:Lz2/o0O00;

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lz2/o0O00;->o0OoOo0(Lz2/o0O00;Lz2/o0O00$OooO0OO;Z)V

    iput-boolean v1, p0, Lz2/o0O00$OooO0OO;->OooO0OO:Z

    return-void
.end method

.method public OooO0oO(I)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lz2/o0O00$OooO0OO;->OooO0oo(I)Ljava/io/InputStream;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p1}, Lz2/o0O00;->Oooooo0(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method
