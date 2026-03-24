.class public Lz2/j70;
.super Lz2/z80;
.source ""


# instance fields
.field private final OooO00o:Ljava/lang/Object;

.field private final OooO0O0:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final OooO0OO:Z

.field private volatile OooO0Oo:Lz2/b90;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lz2/j70;-><init>(Ljava/lang/Class;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Lz2/z80;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lz2/j70;->OooO00o:Ljava/lang/Object;

    iput-object p1, p0, Lz2/j70;->OooO0O0:Ljava/lang/Class;

    iput-boolean p2, p0, Lz2/j70;->OooO0OO:Z

    return-void
.end method


# virtual methods
.method public OooO0oo()Lz2/b90;
    .locals 3

    iget-object v0, p0, Lz2/j70;->OooO0Oo:Lz2/b90;

    if-nez v0, :cond_1

    iget-object v0, p0, Lz2/j70;->OooO00o:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lz2/j70;->OooO0Oo:Lz2/b90;

    if-nez v1, :cond_0

    new-instance v1, Lz2/x60;

    iget-boolean v2, p0, Lz2/j70;->OooO0OO:Z

    invoke-direct {v1, v2}, Lz2/x60;-><init>(Z)V

    iget-object v2, p0, Lz2/j70;->OooO0O0:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Lz2/u90;->OooO0oO(Ljava/lang/Class;)Lz2/b90;

    move-result-object v1

    iput-object v1, p0, Lz2/j70;->OooO0Oo:Lz2/b90;

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
    iget-object v0, p0, Lz2/j70;->OooO0Oo:Lz2/b90;

    return-object v0
.end method
