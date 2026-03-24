.class public Lz2/m10;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final OooOO0o:Ljava/util/concurrent/ExecutorService;


# instance fields
.field public OooO:Ljava/util/concurrent/ExecutorService;

.field public OooO00o:Z

.field public OooO0O0:Z

.field public OooO0OO:Z

.field public OooO0Oo:Z

.field public OooO0o:Z

.field public OooO0o0:Z

.field public OooO0oO:Z

.field public OooO0oo:Z

.field public OooOO0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field public OooOO0O:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lz2/z10;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lz2/m10;->OooOO0o:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lz2/m10;->OooO00o:Z

    iput-boolean v0, p0, Lz2/m10;->OooO0O0:Z

    iput-boolean v0, p0, Lz2/m10;->OooO0OO:Z

    iput-boolean v0, p0, Lz2/m10;->OooO0Oo:Z

    iput-boolean v0, p0, Lz2/m10;->OooO0o:Z

    sget-object v0, Lz2/m10;->OooOO0o:Ljava/util/concurrent/ExecutorService;

    iput-object v0, p0, Lz2/m10;->OooO:Ljava/util/concurrent/ExecutorService;

    return-void
.end method


# virtual methods
.method public OooO(Z)Lz2/m10;
    .locals 0

    iput-boolean p1, p0, Lz2/m10;->OooO0Oo:Z

    return-object p0
.end method

.method public OooO00o(Lz2/z10;)Lz2/m10;
    .locals 1

    iget-object v0, p0, Lz2/m10;->OooOO0O:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lz2/m10;->OooOO0O:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lz2/m10;->OooOO0O:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public OooO0O0()Lz2/l10;
    .locals 1

    new-instance v0, Lz2/l10;

    invoke-direct {v0, p0}, Lz2/l10;-><init>(Lz2/m10;)V

    return-object v0
.end method

.method public OooO0OO(Z)Lz2/m10;
    .locals 0

    iput-boolean p1, p0, Lz2/m10;->OooO0o:Z

    return-object p0
.end method

.method public OooO0Oo(Ljava/util/concurrent/ExecutorService;)Lz2/m10;
    .locals 0

    iput-object p1, p0, Lz2/m10;->OooO:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method

.method public OooO0o()Lz2/l10;
    .locals 3

    const-class v0, Lz2/l10;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lz2/l10;->OooOOo:Lz2/l10;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lz2/m10;->OooO0O0()Lz2/l10;

    move-result-object v1

    sput-object v1, Lz2/l10;->OooOOo:Lz2/l10;

    sget-object v1, Lz2/l10;->OooOOo:Lz2/l10;

    monitor-exit v0

    return-object v1

    :cond_0
    new-instance v1, Lorg/greenrobot/eventbus/EventBusException;

    const-string v2, "Default instance already exists. It may be only set once before it\'s used the first time to ensure consistent behavior."

    invoke-direct {v1, v2}, Lorg/greenrobot/eventbus/EventBusException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public OooO0o0(Z)Lz2/m10;
    .locals 0

    iput-boolean p1, p0, Lz2/m10;->OooO0oO:Z

    return-object p0
.end method

.method public OooO0oO(Z)Lz2/m10;
    .locals 0

    iput-boolean p1, p0, Lz2/m10;->OooO0O0:Z

    return-object p0
.end method

.method public OooO0oo(Z)Lz2/m10;
    .locals 0

    iput-boolean p1, p0, Lz2/m10;->OooO00o:Z

    return-object p0
.end method

.method public OooOO0(Z)Lz2/m10;
    .locals 0

    iput-boolean p1, p0, Lz2/m10;->OooO0OO:Z

    return-object p0
.end method

.method public OooOO0O(Ljava/lang/Class;)Lz2/m10;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lz2/m10;"
        }
    .end annotation

    iget-object v0, p0, Lz2/m10;->OooOO0:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lz2/m10;->OooOO0:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lz2/m10;->OooOO0:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public OooOO0o(Z)Lz2/m10;
    .locals 0

    iput-boolean p1, p0, Lz2/m10;->OooO0oo:Z

    return-object p0
.end method

.method public OooOOO0(Z)Lz2/m10;
    .locals 0

    iput-boolean p1, p0, Lz2/m10;->OooO0o0:Z

    return-object p0
.end method
