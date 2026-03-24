.class public final Lz2/oO0$OooO00o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/oO0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OooO00o"
.end annotation


# static fields
.field private static final OooooO0:I = 0x9


# instance fields
.field private final OoooOoO:Ljava/lang/String;

.field public final OoooOoo:Lz2/oO0$OooO0O0;

.field public final Ooooo00:Z

.field private Ooooo0o:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lz2/oO0$OooO0O0;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz2/oO0$OooO00o;->OoooOoO:Ljava/lang/String;

    iput-object p2, p0, Lz2/oO0$OooO00o;->OoooOoo:Lz2/oO0$OooO0O0;

    iput-boolean p3, p0, Lz2/oO0$OooO00o;->Ooooo00:Z

    return-void
.end method


# virtual methods
.method public declared-synchronized newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 3
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    monitor-enter p0

    :try_start_0
    new-instance v0, Lz2/oO0$OooO00o$OooO00o;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "glide-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lz2/oO0$OooO00o;->OoooOoO:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-thread-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lz2/oO0$OooO00o;->Ooooo0o:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lz2/oO0$OooO00o$OooO00o;-><init>(Lz2/oO0$OooO00o;Ljava/lang/Runnable;Ljava/lang/String;)V

    iget p1, p0, Lz2/oO0$OooO00o;->Ooooo0o:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lz2/oO0$OooO00o;->Ooooo0o:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
