.class public Lz2/s8;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static OooO00o:Lz2/s8;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized OooO00o()Lz2/s8;
    .locals 2

    const-class v0, Lz2/s8;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lz2/s8;->OooO00o:Lz2/s8;

    if-nez v1, :cond_0

    new-instance v1, Lz2/s8;

    invoke-direct {v1}, Lz2/s8;-><init>()V

    sput-object v1, Lz2/s8;->OooO00o:Lz2/s8;

    :cond_0
    sget-object v1, Lz2/s8;->OooO00o:Lz2/s8;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public OooO0O0(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    sget-boolean v0, Lz2/g4;->OooO00o:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "---currentPid1:"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p2, Lcom/cyjh/elfin/base/AppContext;->o00Ooo:I

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1}, Lz2/g4;->OooO0OO(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p1, p2, v0, v1}, Lz2/g4;->OooO0o(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Z)Z

    return-void
.end method
