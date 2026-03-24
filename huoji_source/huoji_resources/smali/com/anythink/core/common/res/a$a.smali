.class public final Lcom/anythink/core/common/res/a$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/core/common/res/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/core/common/res/a$a$a;
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/core/common/res/a;

.field private final b:Lcom/anythink/core/common/res/a$b;

.field private c:Z


# direct methods
.method private constructor <init>(Lcom/anythink/core/common/res/a;Lcom/anythink/core/common/res/a$b;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/core/common/res/a$a;->a:Lcom/anythink/core/common/res/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/anythink/core/common/res/a$a;->b:Lcom/anythink/core/common/res/a$b;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/anythink/core/common/res/a;Lcom/anythink/core/common/res/a$b;B)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/anythink/core/common/res/a$a;-><init>(Lcom/anythink/core/common/res/a;Lcom/anythink/core/common/res/a$b;)V

    return-void
.end method

.method public static synthetic a(Lcom/anythink/core/common/res/a$a;)Lcom/anythink/core/common/res/a$b;
    .locals 0

    iget-object p0, p0, Lcom/anythink/core/common/res/a$a;->b:Lcom/anythink/core/common/res/a$b;

    return-object p0
.end method

.method private a(ILjava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-virtual {p0, p1}, Lcom/anythink/core/common/res/a$a;->a(I)Ljava/io/OutputStream;

    move-result-object p1

    invoke-static {}, Lcom/anythink/core/common/res/a;->a()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v1}, Lcom/anythink/core/common/res/a;->a(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p1

    :goto_0
    invoke-static {v0}, Lcom/anythink/core/common/res/a;->a(Ljava/io/Closeable;)V

    throw p1
.end method

.method private b(I)Ljava/io/InputStream;
    .locals 3

    iget-object v0, p0, Lcom/anythink/core/common/res/a$a;->a:Lcom/anythink/core/common/res/a;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/anythink/core/common/res/a$a;->b:Lcom/anythink/core/common/res/a$b;

    invoke-static {v1}, Lcom/anythink/core/common/res/a$b;->b(Lcom/anythink/core/common/res/a$b;)Lcom/anythink/core/common/res/a$a;

    move-result-object v1

    if-ne v1, p0, :cond_1

    iget-object v1, p0, Lcom/anythink/core/common/res/a$a;->b:Lcom/anythink/core/common/res/a$b;

    invoke-static {v1}, Lcom/anythink/core/common/res/a$b;->e(Lcom/anythink/core/common/res/a$b;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    monitor-exit v0

    return-object p1

    :cond_0
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/anythink/core/common/res/a$a;->b:Lcom/anythink/core/common/res/a$b;

    invoke-virtual {v2, p1}, Lcom/anythink/core/common/res/a$b;->a(I)Ljava/io/File;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    monitor-exit v0

    return-object v1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public static synthetic b(Lcom/anythink/core/common/res/a$a;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/core/common/res/a$a;->c:Z

    return v0
.end method

.method private c(I)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/anythink/core/common/res/a$a;->b(I)Ljava/io/InputStream;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/anythink/core/common/res/a;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public final a(I)Ljava/io/OutputStream;
    .locals 4

    iget-object v0, p0, Lcom/anythink/core/common/res/a$a;->a:Lcom/anythink/core/common/res/a;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/anythink/core/common/res/a$a;->b:Lcom/anythink/core/common/res/a$b;

    invoke-static {v1}, Lcom/anythink/core/common/res/a$b;->b(Lcom/anythink/core/common/res/a$b;)Lcom/anythink/core/common/res/a$a;

    move-result-object v1

    if-ne v1, p0, :cond_0

    new-instance v1, Lcom/anythink/core/common/res/a$a$a;

    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/anythink/core/common/res/a$a;->b:Lcom/anythink/core/common/res/a$b;

    invoke-virtual {v3, p1}, Lcom/anythink/core/common/res/a$b;->b(I)Ljava/io/File;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/4 p1, 0x0

    invoke-direct {v1, p0, v2, p1}, Lcom/anythink/core/common/res/a$a$a;-><init>(Lcom/anythink/core/common/res/a$a;Ljava/io/OutputStream;B)V

    monitor-exit v0

    return-object v1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final a()V
    .locals 2

    iget-boolean v0, p0, Lcom/anythink/core/common/res/a$a;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/core/common/res/a$a;->a:Lcom/anythink/core/common/res/a;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/anythink/core/common/res/a;->a(Lcom/anythink/core/common/res/a;Lcom/anythink/core/common/res/a$a;Z)V

    iget-object v0, p0, Lcom/anythink/core/common/res/a$a;->a:Lcom/anythink/core/common/res/a;

    iget-object v1, p0, Lcom/anythink/core/common/res/a$a;->b:Lcom/anythink/core/common/res/a$b;

    invoke-static {v1}, Lcom/anythink/core/common/res/a$b;->d(Lcom/anythink/core/common/res/a$b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/res/a;->c(Ljava/lang/String;)Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/anythink/core/common/res/a$a;->a:Lcom/anythink/core/common/res/a;

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lcom/anythink/core/common/res/a;->a(Lcom/anythink/core/common/res/a;Lcom/anythink/core/common/res/a$a;Z)V

    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/anythink/core/common/res/a$a;->a:Lcom/anythink/core/common/res/a;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/anythink/core/common/res/a;->a(Lcom/anythink/core/common/res/a;Lcom/anythink/core/common/res/a$a;Z)V

    return-void
.end method
