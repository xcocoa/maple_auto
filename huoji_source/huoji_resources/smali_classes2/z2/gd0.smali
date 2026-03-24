.class public abstract Lz2/gd0;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lz2/gd0<",
        "TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private OooO00o:Lz2/ld0;

.field private OooO0O0:Lz2/ed0;

.field private OooO0OO:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private OooO0Oo:Z

.field private final OooO0o0:Lz2/hd0;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lz2/gd0;->OooO0Oo:Z

    new-instance v0, Lz2/hd0;

    invoke-direct {v0}, Lz2/hd0;-><init>()V

    iput-object v0, p0, Lz2/gd0;->OooO0o0:Lz2/hd0;

    return-void
.end method


# virtual methods
.method public OooO(Ljava/lang/String;)Lz2/gd0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    new-instance v0, Lz2/ld0$OooOO0O;

    invoke-direct {v0, p1}, Lz2/ld0$OooOO0O;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lz2/gd0;->OooO00o:Lz2/ld0;

    invoke-virtual {p0}, Lz2/gd0;->OooOo00()Lz2/gd0;

    move-result-object p1

    return-object p1
.end method

.method public OooO00o()Lz2/ed0;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lz2/gd0;->OooO00o:Lz2/ld0;

    const-string v1, "Source is not set"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v1, p0, Lz2/gd0;->OooO0O0:Lz2/ed0;

    iget-object v2, p0, Lz2/gd0;->OooO0OO:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    iget-boolean v3, p0, Lz2/gd0;->OooO0Oo:Z

    iget-object v4, p0, Lz2/gd0;->OooO0o0:Lz2/hd0;

    invoke-virtual {v0, v1, v2, v3, v4}, Lz2/ld0;->OooO00o(Lz2/ed0;Ljava/util/concurrent/ScheduledThreadPoolExecutor;ZLz2/hd0;)Lz2/ed0;

    move-result-object v0

    return-object v0
.end method

.method public OooO0O0(Landroid/content/ContentResolver;Landroid/net/Uri;)Lz2/gd0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Landroid/net/Uri;",
            ")TT;"
        }
    .end annotation

    new-instance v0, Lz2/ld0$OooOOOO;

    invoke-direct {v0, p1, p2}, Lz2/ld0$OooOOOO;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    iput-object v0, p0, Lz2/gd0;->OooO00o:Lz2/ld0;

    invoke-virtual {p0}, Lz2/gd0;->OooOo00()Lz2/gd0;

    move-result-object p1

    return-object p1
.end method

.method public OooO0OO(Landroid/content/res/AssetFileDescriptor;)Lz2/gd0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/AssetFileDescriptor;",
            ")TT;"
        }
    .end annotation

    new-instance v0, Lz2/ld0$OooO0O0;

    invoke-direct {v0, p1}, Lz2/ld0$OooO0O0;-><init>(Landroid/content/res/AssetFileDescriptor;)V

    iput-object v0, p0, Lz2/gd0;->OooO00o:Lz2/ld0;

    invoke-virtual {p0}, Lz2/gd0;->OooOo00()Lz2/gd0;

    move-result-object p1

    return-object p1
.end method

.method public OooO0Oo(Landroid/content/res/AssetManager;Ljava/lang/String;)Lz2/gd0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/AssetManager;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    new-instance v0, Lz2/ld0$OooO0OO;

    invoke-direct {v0, p1, p2}, Lz2/ld0$OooO0OO;-><init>(Landroid/content/res/AssetManager;Ljava/lang/String;)V

    iput-object v0, p0, Lz2/gd0;->OooO00o:Lz2/ld0;

    invoke-virtual {p0}, Lz2/gd0;->OooOo00()Lz2/gd0;

    move-result-object p1

    return-object p1
.end method

.method public OooO0o(Ljava/io/File;)Lz2/gd0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")TT;"
        }
    .end annotation

    new-instance v0, Lz2/ld0$OooOO0O;

    invoke-direct {v0, p1}, Lz2/ld0$OooOO0O;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lz2/gd0;->OooO00o:Lz2/ld0;

    invoke-virtual {p0}, Lz2/gd0;->OooOo00()Lz2/gd0;

    move-result-object p1

    return-object p1
.end method

.method public OooO0o0(Landroid/content/res/Resources;I)Lz2/gd0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "I)TT;"
        }
    .end annotation

    new-instance v0, Lz2/ld0$OooOOO;

    invoke-direct {v0, p1, p2}, Lz2/ld0$OooOOO;-><init>(Landroid/content/res/Resources;I)V

    iput-object v0, p0, Lz2/gd0;->OooO00o:Lz2/ld0;

    invoke-virtual {p0}, Lz2/gd0;->OooOo00()Lz2/gd0;

    move-result-object p1

    return-object p1
.end method

.method public OooO0oO(Ljava/io/FileDescriptor;)Lz2/gd0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/FileDescriptor;",
            ")TT;"
        }
    .end annotation

    new-instance v0, Lz2/ld0$OooOO0;

    invoke-direct {v0, p1}, Lz2/ld0$OooOO0;-><init>(Ljava/io/FileDescriptor;)V

    iput-object v0, p0, Lz2/gd0;->OooO00o:Lz2/ld0;

    invoke-virtual {p0}, Lz2/gd0;->OooOo00()Lz2/gd0;

    move-result-object p1

    return-object p1
.end method

.method public OooO0oo(Ljava/io/InputStream;)Lz2/gd0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")TT;"
        }
    .end annotation

    new-instance v0, Lz2/ld0$OooOOO0;

    invoke-direct {v0, p1}, Lz2/ld0$OooOOO0;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lz2/gd0;->OooO00o:Lz2/ld0;

    invoke-virtual {p0}, Lz2/gd0;->OooOo00()Lz2/gd0;

    move-result-object p1

    return-object p1
.end method

.method public OooOO0(Ljava/nio/ByteBuffer;)Lz2/gd0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            ")TT;"
        }
    .end annotation

    new-instance v0, Lz2/ld0$OooO;

    invoke-direct {v0, p1}, Lz2/ld0$OooO;-><init>(Ljava/nio/ByteBuffer;)V

    iput-object v0, p0, Lz2/gd0;->OooO00o:Lz2/ld0;

    invoke-virtual {p0}, Lz2/gd0;->OooOo00()Lz2/gd0;

    move-result-object p1

    return-object p1
.end method

.method public OooOO0O([B)Lz2/gd0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)TT;"
        }
    .end annotation

    new-instance v0, Lz2/ld0$OooO0o;

    invoke-direct {v0, p1}, Lz2/ld0$OooO0o;-><init>([B)V

    iput-object v0, p0, Lz2/gd0;->OooO00o:Lz2/ld0;

    invoke-virtual {p0}, Lz2/gd0;->OooOo00()Lz2/gd0;

    move-result-object p1

    return-object p1
.end method

.method public OooOO0o()Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    .locals 1

    iget-object v0, p0, Lz2/gd0;->OooO0OO:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    return-object v0
.end method

.method public OooOOO()Lz2/ed0;
    .locals 1

    iget-object v0, p0, Lz2/gd0;->OooO0O0:Lz2/ed0;

    return-object v0
.end method

.method public OooOOO0()Lz2/ld0;
    .locals 1

    iget-object v0, p0, Lz2/gd0;->OooO00o:Lz2/ld0;

    return-object v0
.end method

.method public OooOOOO()Lz2/hd0;
    .locals 1

    iget-object v0, p0, Lz2/gd0;->OooO0o0:Lz2/hd0;

    return-object v0
.end method

.method public OooOOOo()Z
    .locals 1

    iget-boolean v0, p0, Lz2/gd0;->OooO0Oo:Z

    return v0
.end method

.method public OooOOo(Z)Lz2/gd0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    iput-boolean p1, p0, Lz2/gd0;->OooO0Oo:Z

    invoke-virtual {p0}, Lz2/gd0;->OooOo00()Lz2/gd0;

    move-result-object p1

    return-object p1
.end method

.method public OooOOo0(Lz2/hd0;)Lz2/gd0;
    .locals 1
    .param p1    # Lz2/hd0;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/hd0;",
            ")TT;"
        }
    .end annotation

    .annotation build Lz2/sd0;
    .end annotation

    iget-object v0, p0, Lz2/gd0;->OooO0o0:Lz2/hd0;

    invoke-virtual {v0, p1}, Lz2/hd0;->OooO0O0(Lz2/hd0;)V

    invoke-virtual {p0}, Lz2/gd0;->OooOo00()Lz2/gd0;

    move-result-object p1

    return-object p1
.end method

.method public OooOOoo(I)Lz2/gd0;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x1L
            to = 0xffffL
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iget-object v0, p0, Lz2/gd0;->OooO0o0:Lz2/hd0;

    invoke-virtual {v0, p1}, Lz2/hd0;->OooO0Oo(I)V

    invoke-virtual {p0}, Lz2/gd0;->OooOo00()Lz2/gd0;

    move-result-object p1

    return-object p1
.end method

.method public OooOo(Lz2/ed0;)Lz2/gd0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/ed0;",
            ")TT;"
        }
    .end annotation

    iput-object p1, p0, Lz2/gd0;->OooO0O0:Lz2/ed0;

    invoke-virtual {p0}, Lz2/gd0;->OooOo00()Lz2/gd0;

    move-result-object p1

    return-object p1
.end method

.method public OooOo0(Z)Lz2/gd0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lz2/gd0;->OooOOo(Z)Lz2/gd0;

    move-result-object p1

    return-object p1
.end method

.method public abstract OooOo00()Lz2/gd0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public OooOo0O(Ljava/util/concurrent/ScheduledThreadPoolExecutor;)Lz2/gd0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ScheduledThreadPoolExecutor;",
            ")TT;"
        }
    .end annotation

    iput-object p1, p0, Lz2/gd0;->OooO0OO:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {p0}, Lz2/gd0;->OooOo00()Lz2/gd0;

    move-result-object p1

    return-object p1
.end method

.method public OooOo0o(I)Lz2/gd0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-direct {v0, p1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    iput-object v0, p0, Lz2/gd0;->OooO0OO:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {p0}, Lz2/gd0;->OooOo00()Lz2/gd0;

    move-result-object p1

    return-object p1
.end method
