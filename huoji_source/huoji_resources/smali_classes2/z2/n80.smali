.class public abstract Lz2/n80;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/q80;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz2/n80$OooO0O0;,
        Lz2/n80$OooO0OO;
    }
.end annotation


# instance fields
.field private final OooO00o:Lz2/n80$OooO0O0;

.field private volatile OooO0O0:J

.field private volatile OooO0OO:J


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lz2/n80$OooO0O0;

    invoke-direct {v0}, Lz2/n80$OooO0O0;-><init>()V

    invoke-direct {p0, v0}, Lz2/n80;-><init>(Lz2/n80$OooO0O0;)V

    return-void
.end method

.method public constructor <init>(Lz2/n80$OooO0O0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz2/n80;->OooO00o:Lz2/n80$OooO0O0;

    return-void
.end method

.method public static synthetic OooO0O0(Lz2/n80;)V
    .locals 0

    invoke-direct {p0}, Lz2/n80;->OooOO0()V

    return-void
.end method

.method public static synthetic OooO0OO(Lz2/n80;)J
    .locals 2

    invoke-direct {p0}, Lz2/n80;->OooO0oO()J

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic OooO0Oo(Lz2/n80;)V
    .locals 0

    invoke-direct {p0}, Lz2/n80;->OooOO0O()V

    return-void
.end method

.method private OooO0oO()J
    .locals 5

    iget-wide v0, p0, Lz2/n80;->OooO0O0:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-wide v0, p0, Lz2/n80;->OooO0OO:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget-object v0, p0, Lz2/n80;->OooO00o:Lz2/n80$OooO0O0;

    invoke-virtual {v0}, Lz2/n80$OooO0O0;->OooO00o()J

    move-result-wide v0

    :cond_0
    iget-wide v2, p0, Lz2/n80;->OooO0O0:J

    sub-long/2addr v0, v2

    return-wide v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Test has not started"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private OooOO0()V
    .locals 2

    iget-object v0, p0, Lz2/n80;->OooO00o:Lz2/n80$OooO0O0;

    invoke-virtual {v0}, Lz2/n80$OooO0O0;->OooO00o()J

    move-result-wide v0

    iput-wide v0, p0, Lz2/n80;->OooO0O0:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lz2/n80;->OooO0OO:J

    return-void
.end method

.method private OooOO0O()V
    .locals 2

    iget-object v0, p0, Lz2/n80;->OooO00o:Lz2/n80$OooO0O0;

    invoke-virtual {v0}, Lz2/n80$OooO0O0;->OooO00o()J

    move-result-wide v0

    iput-wide v0, p0, Lz2/n80;->OooO0OO:J

    return-void
.end method


# virtual methods
.method public OooO(JLorg/junit/AssumptionViolatedException;Lorg/junit/runner/Description;)V
    .locals 0

    return-void
.end method

.method public final OooO00o(Lz2/w90;Lorg/junit/runner/Description;)Lz2/w90;
    .locals 2

    new-instance v0, Lz2/n80$OooO0OO;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lz2/n80$OooO0OO;-><init>(Lz2/n80;Lz2/n80$OooO00o;)V

    invoke-virtual {v0, p1, p2}, Lz2/r80;->OooO00o(Lz2/w90;Lorg/junit/runner/Description;)Lz2/w90;

    move-result-object p1

    return-object p1
.end method

.method public OooO0o(JLorg/junit/runner/Description;)V
    .locals 0

    return-void
.end method

.method public OooO0o0(JLjava/lang/Throwable;Lorg/junit/runner/Description;)V
    .locals 0

    return-void
.end method

.method public OooO0oo(Ljava/util/concurrent/TimeUnit;)J
    .locals 3

    invoke-direct {p0}, Lz2/n80;->OooO0oO()J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public OooOO0o(JLorg/junit/runner/Description;)V
    .locals 0

    return-void
.end method
