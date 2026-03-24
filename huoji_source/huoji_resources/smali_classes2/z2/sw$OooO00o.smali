.class public final Lz2/sw$OooO00o;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/sw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OooO00o"
.end annotation


# instance fields
.field public OooO00o:Z

.field public OooO0O0:Z

.field public OooO0OO:I

.field public OooO0Oo:I

.field public OooO0o:Z

.field public OooO0o0:I

.field public OooO0oO:Z

.field public OooO0oo:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lz2/sw$OooO00o;->OooO0OO:I

    iput v0, p0, Lz2/sw$OooO00o;->OooO0Oo:I

    iput v0, p0, Lz2/sw$OooO00o;->OooO0o0:I

    return-void
.end method


# virtual methods
.method public OooO()Lz2/sw$OooO00o;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lz2/sw$OooO00o;->OooO0o:Z

    return-object p0
.end method

.method public OooO00o()Lz2/sw;
    .locals 1

    new-instance v0, Lz2/sw;

    invoke-direct {v0, p0}, Lz2/sw;-><init>(Lz2/sw$OooO00o;)V

    return-object v0
.end method

.method public OooO0O0()Lz2/sw$OooO00o;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lz2/sw$OooO00o;->OooO0oo:Z

    return-object p0
.end method

.method public OooO0OO(ILjava/util/concurrent/TimeUnit;)Lz2/sw$OooO00o;
    .locals 3

    if-ltz p1, :cond_1

    int-to-long v0, p1

    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide p1

    const-wide/32 v0, 0x7fffffff

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    const p1, 0x7fffffff

    goto :goto_0

    :cond_0
    long-to-int p1, p1

    :goto_0
    iput p1, p0, Lz2/sw$OooO00o;->OooO0OO:I

    return-object p0

    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "maxAge < 0: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public OooO0Oo(ILjava/util/concurrent/TimeUnit;)Lz2/sw$OooO00o;
    .locals 3

    if-ltz p1, :cond_1

    int-to-long v0, p1

    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide p1

    const-wide/32 v0, 0x7fffffff

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    const p1, 0x7fffffff

    goto :goto_0

    :cond_0
    long-to-int p1, p1

    :goto_0
    iput p1, p0, Lz2/sw$OooO00o;->OooO0Oo:I

    return-object p0

    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "maxStale < 0: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public OooO0o()Lz2/sw$OooO00o;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lz2/sw$OooO00o;->OooO00o:Z

    return-object p0
.end method

.method public OooO0o0(ILjava/util/concurrent/TimeUnit;)Lz2/sw$OooO00o;
    .locals 3

    if-ltz p1, :cond_1

    int-to-long v0, p1

    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide p1

    const-wide/32 v0, 0x7fffffff

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    const p1, 0x7fffffff

    goto :goto_0

    :cond_0
    long-to-int p1, p1

    :goto_0
    iput p1, p0, Lz2/sw$OooO00o;->OooO0o0:I

    return-object p0

    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "minFresh < 0: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public OooO0oO()Lz2/sw$OooO00o;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lz2/sw$OooO00o;->OooO0O0:Z

    return-object p0
.end method

.method public OooO0oo()Lz2/sw$OooO00o;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lz2/sw$OooO00o;->OooO0oO:Z

    return-object p0
.end method
