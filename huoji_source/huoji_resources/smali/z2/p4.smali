.class public Lz2/p4;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz2/p4$OooO0OO;
    }
.end annotation


# static fields
.field private static OooO0o:Lz2/p4; = null

.field private static final OooO0oO:I = 0x1

.field private static final OooO0oo:I


# instance fields
.field private OooO00o:Landroid/content/Context;

.field private OooO0O0:Lz2/p4$OooO0OO;

.field private volatile OooO0OO:Z

.field private OooO0Oo:Ljava/lang/String;

.field private OooO0o0:Landroid/os/Handler;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lz2/p4$OooO00o;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lz2/p4$OooO00o;-><init>(Lz2/p4;Landroid/os/Looper;)V

    iput-object v0, p0, Lz2/p4;->OooO0o0:Landroid/os/Handler;

    iput-object p1, p0, Lz2/p4;->OooO00o:Landroid/content/Context;

    return-void
.end method

.method public static OooO(Landroid/content/Context;)Lz2/p4;
    .locals 1

    sget-object v0, Lz2/p4;->OooO0o:Lz2/p4;

    if-nez v0, :cond_0

    new-instance v0, Lz2/p4;

    invoke-direct {v0, p0}, Lz2/p4;-><init>(Landroid/content/Context;)V

    sput-object v0, Lz2/p4;->OooO0o:Lz2/p4;

    :cond_0
    sget-object p0, Lz2/p4;->OooO0o:Lz2/p4;

    return-object p0
.end method

.method public static synthetic OooO00o(Lz2/p4;)Lz2/p4$OooO0OO;
    .locals 0

    iget-object p0, p0, Lz2/p4;->OooO0O0:Lz2/p4$OooO0OO;

    return-object p0
.end method

.method public static synthetic OooO0O0(Lz2/p4;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lz2/p4;->OooO00o:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic OooO0OO(Lz2/p4;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lz2/p4;->OooO0oO(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic OooO0Oo(Lz2/p4;)Z
    .locals 0

    iget-boolean p0, p0, Lz2/p4;->OooO0OO:Z

    return p0
.end method

.method public static synthetic OooO0o(Lz2/p4;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lz2/p4;->OooO0Oo:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic OooO0o0(Lz2/p4;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lz2/p4;->OooO0o0:Landroid/os/Handler;

    return-object p0
.end method

.method private OooO0oO(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    if-lez v2, :cond_2

    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    :cond_0
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_4

    aget-object v4, v1, v3

    const-string v5, ""

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p1, v5, v4}, Lz2/p4;->OooO0oO(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, p1, v4, v5}, Lz2/p4;->OooO0oO(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    new-instance p2, Ljava/io/FileOutputStream;

    invoke-direct {p2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 p3, 0x400

    new-array p3, p3, [B

    :goto_2
    invoke-virtual {p1, p3}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    invoke-virtual {p2, p3, v0, v1}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_2

    :cond_3
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V

    :cond_4
    const/4 p1, 0x1

    iput-boolean p1, p0, Lz2/p4;->OooO0OO:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lz2/p4;->OooO0Oo:Ljava/lang/String;

    iput-boolean v0, p0, Lz2/p4;->OooO0OO:Z

    :goto_3
    return-void
.end method


# virtual methods
.method public OooO0oo(Ljava/lang/String;Ljava/lang/String;)Lz2/p4;
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lz2/p4$OooO0O0;

    invoke-direct {v1, p0, p1, p2}, Lz2/p4$OooO0O0;-><init>(Lz2/p4;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-object p0
.end method

.method public OooOO0(Lz2/p4$OooO0OO;)V
    .locals 0

    iput-object p1, p0, Lz2/p4;->OooO0O0:Lz2/p4$OooO0OO;

    return-void
.end method
