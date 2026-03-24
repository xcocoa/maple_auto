.class public Lz2/j10;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final OoooOoO:Lz2/q10;

.field private final OoooOoo:Lz2/l10;


# direct methods
.method public constructor <init>(Lz2/l10;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz2/j10;->OoooOoo:Lz2/l10;

    new-instance p1, Lz2/q10;

    invoke-direct {p1}, Lz2/q10;-><init>()V

    iput-object p1, p0, Lz2/j10;->OoooOoO:Lz2/q10;

    return-void
.end method


# virtual methods
.method public OooO00o(Lz2/v10;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p1, p2}, Lz2/p10;->OooO00o(Lz2/v10;Ljava/lang/Object;)Lz2/p10;

    move-result-object p1

    iget-object p2, p0, Lz2/j10;->OoooOoO:Lz2/q10;

    invoke-virtual {p2, p1}, Lz2/q10;->OooO00o(Lz2/p10;)V

    iget-object p1, p0, Lz2/j10;->OoooOoo:Lz2/l10;

    invoke-virtual {p1}, Lz2/l10;->OooO0oO()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public run()V
    .locals 2

    iget-object v0, p0, Lz2/j10;->OoooOoO:Lz2/q10;

    invoke-virtual {v0}, Lz2/q10;->OooO0O0()Lz2/p10;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lz2/j10;->OoooOoo:Lz2/l10;

    invoke-virtual {v1, v0}, Lz2/l10;->OooOO0O(Lz2/p10;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No pending post available"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
