.class public Lz2/t80;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/q80;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz2/t80$OooO0O0;
    }
.end annotation


# instance fields
.field private final OooO00o:J

.field private final OooO0O0:Ljava/util/concurrent/TimeUnit;

.field private final OooO0OO:Z


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    int-to-long v0, p1

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct {p0, v0, v1, p1}, Lz2/t80;-><init>(JLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method public constructor <init>(JLjava/util/concurrent/TimeUnit;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lz2/t80;->OooO00o:J

    iput-object p3, p0, Lz2/t80;->OooO0O0:Ljava/util/concurrent/TimeUnit;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lz2/t80;->OooO0OO:Z

    return-void
.end method

.method public constructor <init>(Lz2/t80$OooO0O0;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lz2/t80$OooO0O0;->OooO0Oo()J

    move-result-wide v0

    iput-wide v0, p0, Lz2/t80;->OooO00o:J

    invoke-virtual {p1}, Lz2/t80$OooO0O0;->OooO0OO()Ljava/util/concurrent/TimeUnit;

    move-result-object v0

    iput-object v0, p0, Lz2/t80;->OooO0O0:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1}, Lz2/t80$OooO0O0;->OooO0O0()Z

    move-result p1

    iput-boolean p1, p0, Lz2/t80;->OooO0OO:Z

    return-void
.end method

.method public static OooO0O0()Lz2/t80$OooO0O0;
    .locals 1

    new-instance v0, Lz2/t80$OooO0O0;

    invoke-direct {v0}, Lz2/t80$OooO0O0;-><init>()V

    return-object v0
.end method

.method public static OooO0o(J)Lz2/t80;
    .locals 2

    new-instance v0, Lz2/t80;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct {v0, p0, p1, v1}, Lz2/t80;-><init>(JLjava/util/concurrent/TimeUnit;)V

    return-object v0
.end method

.method public static OooO0oO(J)Lz2/t80;
    .locals 2

    new-instance v0, Lz2/t80;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct {v0, p0, p1, v1}, Lz2/t80;-><init>(JLjava/util/concurrent/TimeUnit;)V

    return-object v0
.end method


# virtual methods
.method public OooO00o(Lz2/w90;Lorg/junit/runner/Description;)Lz2/w90;
    .locals 0

    :try_start_0
    invoke-virtual {p0, p1}, Lz2/t80;->OooO0OO(Lz2/w90;)Lz2/w90;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance p2, Lz2/t80$OooO00o;

    invoke-direct {p2, p0, p1}, Lz2/t80$OooO00o;-><init>(Lz2/t80;Ljava/lang/Exception;)V

    return-object p2
.end method

.method public OooO0OO(Lz2/w90;)Lz2/w90;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Lz2/a80;->OooO0OO()Lz2/a80$OooO0O0;

    move-result-object v0

    iget-wide v1, p0, Lz2/t80;->OooO00o:J

    iget-object v3, p0, Lz2/t80;->OooO0O0:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lz2/a80$OooO0O0;->OooO0o(JLjava/util/concurrent/TimeUnit;)Lz2/a80$OooO0O0;

    move-result-object v0

    iget-boolean v1, p0, Lz2/t80;->OooO0OO:Z

    invoke-virtual {v0, v1}, Lz2/a80$OooO0O0;->OooO0o0(Z)Lz2/a80$OooO0O0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lz2/a80$OooO0O0;->OooO0Oo(Lz2/w90;)Lz2/a80;

    move-result-object p1

    return-object p1
.end method

.method public final OooO0Oo()Z
    .locals 1

    iget-boolean v0, p0, Lz2/t80;->OooO0OO:Z

    return v0
.end method

.method public final OooO0o0(Ljava/util/concurrent/TimeUnit;)J
    .locals 3

    iget-wide v0, p0, Lz2/t80;->OooO00o:J

    iget-object v2, p0, Lz2/t80;->OooO0O0:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method
