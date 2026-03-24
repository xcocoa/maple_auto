.class public Lz2/ooo0Oo0$OooO0O0;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/ooo0Oo0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OooO0O0"
.end annotation


# instance fields
.field public final OooO00o:Lz2/oO0;

.field public final OooO0O0:Lz2/oO0;

.field public final OooO0OO:Lz2/oO0;

.field public final OooO0Oo:Lz2/oO0;

.field public final OooO0o:Landroidx/core/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Pools$Pool<",
            "Lz2/o<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final OooO0o0:Lz2/oO00000;


# direct methods
.method public constructor <init>(Lz2/oO0;Lz2/oO0;Lz2/oO0;Lz2/oO0;Lz2/oO00000;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lz2/ooo0Oo0$OooO0O0$OooO00o;

    invoke-direct {v0, p0}, Lz2/ooo0Oo0$OooO0O0$OooO00o;-><init>(Lz2/ooo0Oo0$OooO0O0;)V

    const/16 v1, 0x96

    invoke-static {v1, v0}, Lz2/v2;->OooO0o0(ILz2/v2$OooO0o;)Landroidx/core/util/Pools$Pool;

    move-result-object v0

    iput-object v0, p0, Lz2/ooo0Oo0$OooO0O0;->OooO0o:Landroidx/core/util/Pools$Pool;

    iput-object p1, p0, Lz2/ooo0Oo0$OooO0O0;->OooO00o:Lz2/oO0;

    iput-object p2, p0, Lz2/ooo0Oo0$OooO0O0;->OooO0O0:Lz2/oO0;

    iput-object p3, p0, Lz2/ooo0Oo0$OooO0O0;->OooO0OO:Lz2/oO0;

    iput-object p4, p0, Lz2/ooo0Oo0$OooO0O0;->OooO0Oo:Lz2/oO0;

    iput-object p5, p0, Lz2/ooo0Oo0$OooO0O0;->OooO0o0:Lz2/oO00000;

    return-void
.end method


# virtual methods
.method public OooO00o(Lz2/o0O0O0Oo;ZZZZ)Lz2/o;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lz2/o0O0O0Oo;",
            "ZZZZ)",
            "Lz2/o<",
            "TR;>;"
        }
    .end annotation

    iget-object v0, p0, Lz2/ooo0Oo0$OooO0O0;->OooO0o:Landroidx/core/util/Pools$Pool;

    invoke-interface {v0}, Landroidx/core/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz2/o;

    invoke-static {v0}, Lz2/r2;->OooO0Oo(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lz2/o;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lz2/o;->OooOO0o(Lz2/o0O0O0Oo;ZZZZ)Lz2/o;

    move-result-object p1

    return-object p1
.end method

.method public OooO0O0()V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lz2/ooo0Oo0$OooO0O0;->OooO00o:Lz2/oO0;

    invoke-static {v0}, Lz2/l2;->OooO0OO(Ljava/util/concurrent/ExecutorService;)V

    iget-object v0, p0, Lz2/ooo0Oo0$OooO0O0;->OooO0O0:Lz2/oO0;

    invoke-static {v0}, Lz2/l2;->OooO0OO(Ljava/util/concurrent/ExecutorService;)V

    iget-object v0, p0, Lz2/ooo0Oo0$OooO0O0;->OooO0OO:Lz2/oO0;

    invoke-static {v0}, Lz2/l2;->OooO0OO(Ljava/util/concurrent/ExecutorService;)V

    iget-object v0, p0, Lz2/ooo0Oo0$OooO0O0;->OooO0Oo:Lz2/oO0;

    invoke-static {v0}, Lz2/l2;->OooO0OO(Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method
