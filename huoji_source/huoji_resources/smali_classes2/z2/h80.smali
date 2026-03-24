.class public Lz2/h80;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/q80;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz2/h80$OooO00o;
    }
.end annotation


# instance fields
.field private final OooO00o:Lz2/i80;

.field private OooO0O0:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lz2/i80;

    invoke-direct {v0}, Lz2/i80;-><init>()V

    iput-object v0, p0, Lz2/h80;->OooO00o:Lz2/i80;

    const-string v0, "Expected test to throw %s"

    iput-object v0, p0, Lz2/h80;->OooO0O0:Ljava/lang/String;

    return-void
.end method

.method public static synthetic OooO0O0(Lz2/h80;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-direct {p0, p1}, Lz2/h80;->OooOOO0(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic OooO0OO(Lz2/h80;)Z
    .locals 0

    invoke-direct {p0}, Lz2/h80;->OooOOO()Z

    move-result p0

    return p0
.end method

.method public static synthetic OooO0Oo(Lz2/h80;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/AssertionError;
        }
    .end annotation

    invoke-direct {p0}, Lz2/h80;->OooOO0()V

    return-void
.end method

.method private OooOO0()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/AssertionError;
        }
    .end annotation

    invoke-direct {p0}, Lz2/h80;->OooOOOO()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lz2/f50;->OooooO0(Ljava/lang/String;)V

    return-void
.end method

.method private OooOOO()Z
    .locals 1

    iget-object v0, p0, Lz2/h80;->OooO00o:Lz2/i80;

    invoke-virtual {v0}, Lz2/i80;->OooO0o()Z

    move-result v0

    return v0
.end method

.method private OooOOO0(Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-direct {p0}, Lz2/h80;->OooOOO()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lz2/h80;->OooO00o:Lz2/i80;

    invoke-virtual {v0}, Lz2/i80;->OooO0OO()Lz2/r20;

    move-result-object v0

    invoke-static {p1, v0}, Lz2/f50;->OoooOOO(Ljava/lang/Object;Lz2/r20;)V

    return-void

    :cond_0
    throw p1
.end method

.method private OooOOOO()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lz2/h80;->OooO00o:Lz2/i80;

    invoke-virtual {v0}, Lz2/i80;->OooO0OO()Lz2/r20;

    move-result-object v0

    invoke-static {v0}, Lz2/u20;->OooOOOO(Lz2/t20;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lz2/h80;->OooO0O0:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static OooOOOo()Lz2/h80;
    .locals 1

    new-instance v0, Lz2/h80;

    invoke-direct {v0}, Lz2/h80;-><init>()V

    return-object v0
.end method


# virtual methods
.method public OooO(Lz2/r20;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/r20<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Lz2/h70;->OooO0oO(Lz2/r20;)Lz2/r20;

    move-result-object p1

    invoke-virtual {p0, p1}, Lz2/h80;->OooO0o(Lz2/r20;)V

    return-void
.end method

.method public OooO00o(Lz2/w90;Lorg/junit/runner/Description;)Lz2/w90;
    .locals 0

    new-instance p2, Lz2/h80$OooO00o;

    invoke-direct {p2, p0, p1}, Lz2/h80$OooO00o;-><init>(Lz2/h80;Lz2/w90;)V

    return-object p2
.end method

.method public OooO0o(Lz2/r20;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/r20<",
            "*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lz2/h80;->OooO00o:Lz2/i80;

    invoke-virtual {v0, p1}, Lz2/i80;->OooO00o(Lz2/r20;)V

    return-void
.end method

.method public OooO0o0(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Lz2/k20;->OooOoo(Ljava/lang/Class;)Lz2/r20;

    move-result-object p1

    invoke-virtual {p0, p1}, Lz2/h80;->OooO0o(Lz2/r20;)V

    return-void
.end method

.method public OooO0oO(Lz2/r20;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/r20<",
            "+",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Lz2/g70;->OooO0oO(Lz2/r20;)Lz2/r20;

    move-result-object p1

    invoke-virtual {p0, p1}, Lz2/h80;->OooO0o(Lz2/r20;)V

    return-void
.end method

.method public OooO0oo(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lz2/k20;->OooOOoo(Ljava/lang/String;)Lz2/r20;

    move-result-object p1

    invoke-virtual {p0, p1}, Lz2/h80;->OooO(Lz2/r20;)V

    return-void
.end method

.method public OooOO0O()Lz2/h80;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-object p0
.end method

.method public OooOO0o()Lz2/h80;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-object p0
.end method

.method public OooOOo0(Ljava/lang/String;)Lz2/h80;
    .locals 0

    iput-object p1, p0, Lz2/h80;->OooO0O0:Ljava/lang/String;

    return-object p0
.end method
