.class public final Lz2/oO0Oo0o0$OooO0O0;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/oO0Oo0o0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OooO0O0"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final OooO0Oo:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lz2/oO0Oo0o0$OooO0O0<",
            "*>;>;"
        }
    .end annotation
.end field


# instance fields
.field private OooO00o:I

.field private OooO0O0:I

.field private OooO0OO:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lz2/t2;->OooO0o(I)Ljava/util/Queue;

    move-result-object v0

    sput-object v0, Lz2/oO0Oo0o0$OooO0O0;->OooO0Oo:Ljava/util/Queue;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static OooO00o(Ljava/lang/Object;II)Lz2/oO0Oo0o0$OooO0O0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(TA;II)",
            "Lz2/oO0Oo0o0$OooO0O0<",
            "TA;>;"
        }
    .end annotation

    sget-object v0, Lz2/oO0Oo0o0$OooO0O0;->OooO0Oo:Ljava/util/Queue;

    monitor-enter v0

    :try_start_0
    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lz2/oO0Oo0o0$OooO0O0;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    new-instance v1, Lz2/oO0Oo0o0$OooO0O0;

    invoke-direct {v1}, Lz2/oO0Oo0o0$OooO0O0;-><init>()V

    :cond_0
    invoke-direct {v1, p0, p1, p2}, Lz2/oO0Oo0o0$OooO0O0;->OooO0O0(Ljava/lang/Object;II)V

    return-object v1

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private OooO0O0(Ljava/lang/Object;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;II)V"
        }
    .end annotation

    iput-object p1, p0, Lz2/oO0Oo0o0$OooO0O0;->OooO0OO:Ljava/lang/Object;

    iput p2, p0, Lz2/oO0Oo0o0$OooO0O0;->OooO0O0:I

    iput p3, p0, Lz2/oO0Oo0o0$OooO0O0;->OooO00o:I

    return-void
.end method


# virtual methods
.method public OooO0OO()V
    .locals 2

    sget-object v0, Lz2/oO0Oo0o0$OooO0O0;->OooO0Oo:Ljava/util/Queue;

    monitor-enter v0

    :try_start_0
    invoke-interface {v0, p0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lz2/oO0Oo0o0$OooO0O0;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lz2/oO0Oo0o0$OooO0O0;

    iget v0, p0, Lz2/oO0Oo0o0$OooO0O0;->OooO0O0:I

    iget v2, p1, Lz2/oO0Oo0o0$OooO0O0;->OooO0O0:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Lz2/oO0Oo0o0$OooO0O0;->OooO00o:I

    iget v2, p1, Lz2/oO0Oo0o0$OooO0O0;->OooO00o:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lz2/oO0Oo0o0$OooO0O0;->OooO0OO:Ljava/lang/Object;

    iget-object p1, p1, Lz2/oO0Oo0o0$OooO0O0;->OooO0OO:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lz2/oO0Oo0o0$OooO0O0;->OooO00o:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lz2/oO0Oo0o0$OooO0O0;->OooO0O0:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lz2/oO0Oo0o0$OooO0O0;->OooO0OO:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
