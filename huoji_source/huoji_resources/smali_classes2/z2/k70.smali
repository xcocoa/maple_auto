.class public final Lz2/k70;
.super Lz2/z80;
.source ""


# instance fields
.field private final OooO00o:Lz2/z80;

.field private final OooO0O0:Lz2/c90;


# direct methods
.method public constructor <init>(Lz2/z80;Lz2/c90;)V
    .locals 0

    invoke-direct {p0}, Lz2/z80;-><init>()V

    iput-object p1, p0, Lz2/k70;->OooO00o:Lz2/z80;

    iput-object p2, p0, Lz2/k70;->OooO0O0:Lz2/c90;

    return-void
.end method


# virtual methods
.method public OooO0oo()Lz2/b90;
    .locals 6

    :try_start_0
    iget-object v0, p0, Lz2/k70;->OooO00o:Lz2/z80;

    invoke-virtual {v0}, Lz2/z80;->OooO0oo()Lz2/b90;

    move-result-object v0

    iget-object v1, p0, Lz2/k70;->OooO0O0:Lz2/c90;

    invoke-virtual {v1, v0}, Lz2/c90;->OooO00o(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/junit/runner/manipulation/NoTestsRemainException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    new-instance v0, Lz2/n70;

    const-class v1, Lz2/c90;

    new-instance v2, Ljava/lang/Exception;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lz2/k70;->OooO0O0:Lz2/c90;

    invoke-virtual {v5}, Lz2/c90;->OooO0O0()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lz2/k70;->OooO00o:Lz2/z80;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const-string v4, "No tests found matching %s from %s"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lz2/n70;-><init>(Ljava/lang/Class;Ljava/lang/Throwable;)V

    return-object v0
.end method
