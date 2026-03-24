.class public Lz2/cc;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz2/cc$OooO0O0;,
        Lz2/cc$OooO0OO;
    }
.end annotation


# static fields
.field private static OooO0Oo:Ljava/lang/String; = "cc"

.field public static final OooO0o:I = 0x3e8

.field private static OooO0o0:Lz2/cc; = null

.field public static final OooO0oO:I = 0x2bf20

.field public static final OooO0oo:I = 0x6ddd00


# instance fields
.field private OooO00o:Lz2/cc$OooO0O0;

.field private OooO0O0:Ljava/util/Timer;

.field private OooO0OO:Lz2/cc$OooO0OO;


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

.method public static synthetic OooO00o(Lz2/cc;)Lz2/cc$OooO0O0;
    .locals 0

    iget-object p0, p0, Lz2/cc;->OooO00o:Lz2/cc$OooO0O0;

    return-object p0
.end method

.method public static OooO0O0()Lz2/cc;
    .locals 2

    sget-object v0, Lz2/cc;->OooO0o0:Lz2/cc;

    if-nez v0, :cond_1

    const-class v0, Lz2/cc;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lz2/cc;->OooO0o0:Lz2/cc;

    if-nez v1, :cond_0

    new-instance v1, Lz2/cc;

    invoke-direct {v1}, Lz2/cc;-><init>()V

    sput-object v1, Lz2/cc;->OooO0o0:Lz2/cc;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lz2/cc;->OooO0o0:Lz2/cc;

    return-object v0
.end method


# virtual methods
.method public OooO0OO(Lz2/cc$OooO0O0;)Lz2/cc;
    .locals 0

    iput-object p1, p0, Lz2/cc;->OooO00o:Lz2/cc$OooO0O0;

    return-object p0
.end method

.method public OooO0Oo()V
    .locals 8

    iget-object v0, p0, Lz2/cc;->OooO0O0:Ljava/util/Timer;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lz2/cc;->OooO0O0:Ljava/util/Timer;

    new-instance v0, Lz2/cc$OooO0OO;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lz2/cc$OooO0OO;-><init>(Lz2/cc;Lz2/cc$OooO00o;)V

    iput-object v0, p0, Lz2/cc;->OooO0OO:Lz2/cc$OooO0OO;

    :cond_0
    iget-object v2, p0, Lz2/cc;->OooO0O0:Ljava/util/Timer;

    iget-object v3, p0, Lz2/cc;->OooO0OO:Lz2/cc$OooO0OO;

    const-wide/32 v4, 0x2bf20

    const-wide/32 v6, 0x6ddd00

    invoke-virtual/range {v2 .. v7}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method public OooO0o0()V
    .locals 1

    iget-object v0, p0, Lz2/cc;->OooO0O0:Ljava/util/Timer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lz2/cc;->OooO0O0:Ljava/util/Timer;

    :cond_0
    return-void
.end method
