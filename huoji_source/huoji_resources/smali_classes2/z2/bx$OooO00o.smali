.class public final Lz2/bx$OooO00o;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/bx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OooO00o"
.end annotation


# instance fields
.field public OooO:Z

.field public OooO00o:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public OooO0O0:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public OooO0OO:J

.field public OooO0Oo:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public OooO0o:Z

.field public OooO0o0:Ljava/lang/String;

.field public OooO0oO:Z

.field public OooO0oo:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, 0xe677d21fdbffL

    iput-wide v0, p0, Lz2/bx$OooO00o;->OooO0OO:J

    const-string v0, "/"

    iput-object v0, p0, Lz2/bx$OooO00o;->OooO0o0:Ljava/lang/String;

    return-void
.end method

.method private OooO0OO(Ljava/lang/String;Z)Lz2/bx$OooO00o;
    .locals 2

    const-string v0, "domain == null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p1}, Lz2/zx;->OooO0Oo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iput-object v0, p0, Lz2/bx$OooO00o;->OooO0Oo:Ljava/lang/String;

    iput-boolean p2, p0, Lz2/bx$OooO00o;->OooO:Z

    return-object p0

    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unexpected domain: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public OooO()Lz2/bx$OooO00o;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lz2/bx$OooO00o;->OooO0o:Z

    return-object p0
.end method

.method public OooO00o()Lz2/bx;
    .locals 1

    new-instance v0, Lz2/bx;

    invoke-direct {v0, p0}, Lz2/bx;-><init>(Lz2/bx$OooO00o;)V

    return-object v0
.end method

.method public OooO0O0(Ljava/lang/String;)Lz2/bx$OooO00o;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lz2/bx$OooO00o;->OooO0OO(Ljava/lang/String;Z)Lz2/bx$OooO00o;

    move-result-object p1

    return-object p1
.end method

.method public OooO0Oo(J)Lz2/bx$OooO00o;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    const-wide/high16 p1, -0x8000000000000000L

    :cond_0
    const-wide v0, 0xe677d21fdbffL

    cmp-long v2, p1, v0

    if-lez v2, :cond_1

    move-wide p1, v0

    :cond_1
    iput-wide p1, p0, Lz2/bx$OooO00o;->OooO0OO:J

    const/4 p1, 0x1

    iput-boolean p1, p0, Lz2/bx$OooO00o;->OooO0oo:Z

    return-object p0
.end method

.method public OooO0o()Lz2/bx$OooO00o;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lz2/bx$OooO00o;->OooO0oO:Z

    return-object p0
.end method

.method public OooO0o0(Ljava/lang/String;)Lz2/bx$OooO00o;
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lz2/bx$OooO00o;->OooO0OO(Ljava/lang/String;Z)Lz2/bx$OooO00o;

    move-result-object p1

    return-object p1
.end method

.method public OooO0oO(Ljava/lang/String;)Lz2/bx$OooO00o;
    .locals 1

    const-string v0, "name == null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lz2/bx$OooO00o;->OooO00o:Ljava/lang/String;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "name is not trimmed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public OooO0oo(Ljava/lang/String;)Lz2/bx$OooO00o;
    .locals 1

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lz2/bx$OooO00o;->OooO0o0:Ljava/lang/String;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "path must start with \'/\'"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public OooOO0(Ljava/lang/String;)Lz2/bx$OooO00o;
    .locals 1

    const-string v0, "value == null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lz2/bx$OooO00o;->OooO0O0:Ljava/lang/String;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "value is not trimmed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
