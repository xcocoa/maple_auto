.class public Lz2/oO0000Oo;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/oO0Ooooo;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz2/oO0000Oo$OooO00o;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Z:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lz2/oO0Ooooo<",
        "TZ;>;"
    }
.end annotation


# instance fields
.field private final OoooOoO:Z

.field private final OoooOoo:Z

.field private final Ooooo00:Lz2/oO0Ooooo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz2/oO0Ooooo<",
            "TZ;>;"
        }
    .end annotation
.end field

.field private Ooooo0o:Lz2/oO0000Oo$OooO00o;

.field private OooooO0:Lz2/o0O0O0Oo;

.field private OooooOO:I

.field private OooooOo:Z


# direct methods
.method public constructor <init>(Lz2/oO0Ooooo;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/oO0Ooooo<",
            "TZ;>;ZZ)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lz2/r2;->OooO0Oo(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lz2/oO0Ooooo;

    iput-object p1, p0, Lz2/oO0000Oo;->Ooooo00:Lz2/oO0Ooooo;

    iput-boolean p2, p0, Lz2/oO0000Oo;->OoooOoO:Z

    iput-boolean p3, p0, Lz2/oO0000Oo;->OoooOoo:Z

    return-void
.end method


# virtual methods
.method public declared-synchronized OooO00o()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lz2/oO0000Oo;->OooooOo:Z

    if-nez v0, :cond_0

    iget v0, p0, Lz2/oO0000Oo;->OooooOO:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lz2/oO0000Oo;->OooooOO:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot acquire a recycled resource"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public OooO0O0()Ljava/lang/Class;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TZ;>;"
        }
    .end annotation

    iget-object v0, p0, Lz2/oO0000Oo;->Ooooo00:Lz2/oO0Ooooo;

    invoke-interface {v0}, Lz2/oO0Ooooo;->OooO0O0()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public OooO0OO()Lz2/oO0Ooooo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lz2/oO0Ooooo<",
            "TZ;>;"
        }
    .end annotation

    iget-object v0, p0, Lz2/oO0000Oo;->Ooooo00:Lz2/oO0Ooooo;

    return-object v0
.end method

.method public OooO0Oo()Z
    .locals 1

    iget-boolean v0, p0, Lz2/oO0000Oo;->OoooOoO:Z

    return v0
.end method

.method public declared-synchronized OooO0o(Lz2/o0O0O0Oo;Lz2/oO0000Oo$OooO00o;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lz2/oO0000Oo;->OooooO0:Lz2/o0O0O0Oo;

    iput-object p2, p0, Lz2/oO0000Oo;->Ooooo0o:Lz2/oO0000Oo$OooO00o;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public OooO0o0()V
    .locals 3

    iget-object v0, p0, Lz2/oO0000Oo;->Ooooo0o:Lz2/oO0000Oo$OooO00o;

    monitor-enter v0

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget v1, p0, Lz2/oO0000Oo;->OooooOO:I

    if-lez v1, :cond_1

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lz2/oO0000Oo;->OooooOO:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lz2/oO0000Oo;->Ooooo0o:Lz2/oO0000Oo$OooO00o;

    iget-object v2, p0, Lz2/oO0000Oo;->OooooO0:Lz2/o0O0O0Oo;

    invoke-interface {v1, v2, p0}, Lz2/oO0000Oo$OooO00o;->OooO0Oo(Lz2/o0O0O0Oo;Lz2/oO0000Oo;)V

    :cond_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :cond_1
    :try_start_3
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot release a recycled or not yet acquired resource"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method public get()Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TZ;"
        }
    .end annotation

    iget-object v0, p0, Lz2/oO0000Oo;->Ooooo00:Lz2/oO0Ooooo;

    invoke-interface {v0}, Lz2/oO0Ooooo;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getSize()I
    .locals 1

    iget-object v0, p0, Lz2/oO0000Oo;->Ooooo00:Lz2/oO0Ooooo;

    invoke-interface {v0}, Lz2/oO0Ooooo;->getSize()I

    move-result v0

    return v0
.end method

.method public declared-synchronized recycle()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lz2/oO0000Oo;->OooooOO:I

    if-gtz v0, :cond_2

    iget-boolean v0, p0, Lz2/oO0000Oo;->OooooOo:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lz2/oO0000Oo;->OooooOo:Z

    iget-boolean v0, p0, Lz2/oO0000Oo;->OoooOoo:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lz2/oO0000Oo;->Ooooo00:Lz2/oO0Ooooo;

    invoke-interface {v0}, Lz2/oO0Ooooo;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot recycle a resource that has already been recycled"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot recycle a resource while it is still acquired"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 2

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EngineResource{isCacheable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lz2/oO0000Oo;->OoooOoO:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", listener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lz2/oO0000Oo;->Ooooo0o:Lz2/oO0000Oo$OooO00o;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lz2/oO0000Oo;->OooooO0:Lz2/o0O0O0Oo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", acquired="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lz2/oO0000Oo;->OooooOO:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isRecycled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lz2/oO0000Oo;->OooooOo:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", resource="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lz2/oO0000Oo;->Ooooo00:Lz2/oO0Ooooo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
