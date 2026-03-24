.class public Lz2/a80$OooO0O0;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/a80;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OooO0O0"
.end annotation


# instance fields
.field private OooO00o:Z

.field private OooO0O0:J

.field private OooO0OO:Ljava/util/concurrent/TimeUnit;


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lz2/a80$OooO0O0;->OooO00o:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lz2/a80$OooO0O0;->OooO0O0:J

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iput-object v0, p0, Lz2/a80$OooO0O0;->OooO0OO:Ljava/util/concurrent/TimeUnit;

    return-void
.end method

.method public synthetic constructor <init>(Lz2/a80$OooO00o;)V
    .locals 0

    invoke-direct {p0}, Lz2/a80$OooO0O0;-><init>()V

    return-void
.end method

.method public static synthetic OooO00o(Lz2/a80$OooO0O0;)J
    .locals 2

    iget-wide v0, p0, Lz2/a80$OooO0O0;->OooO0O0:J

    return-wide v0
.end method

.method public static synthetic OooO0O0(Lz2/a80$OooO0O0;)Ljava/util/concurrent/TimeUnit;
    .locals 0

    iget-object p0, p0, Lz2/a80$OooO0O0;->OooO0OO:Ljava/util/concurrent/TimeUnit;

    return-object p0
.end method

.method public static synthetic OooO0OO(Lz2/a80$OooO0O0;)Z
    .locals 0

    iget-boolean p0, p0, Lz2/a80$OooO0O0;->OooO00o:Z

    return p0
.end method


# virtual methods
.method public OooO0Oo(Lz2/w90;)Lz2/a80;
    .locals 2

    const-string v0, "statement cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lz2/a80;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lz2/a80;-><init>(Lz2/a80$OooO0O0;Lz2/w90;Lz2/a80$OooO00o;)V

    return-object v0
.end method

.method public OooO0o(JLjava/util/concurrent/TimeUnit;)Lz2/a80$OooO0O0;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    const-string v0, "TimeUnit cannot be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-wide p1, p0, Lz2/a80$OooO0O0;->OooO0O0:J

    iput-object p3, p0, Lz2/a80$OooO0O0;->OooO0OO:Ljava/util/concurrent/TimeUnit;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "timeout must be non-negative"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public OooO0o0(Z)Lz2/a80$OooO0O0;
    .locals 0

    iput-boolean p1, p0, Lz2/a80$OooO0O0;->OooO00o:Z

    return-object p0
.end method
