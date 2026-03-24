.class public final Lz2/v2;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz2/v2$OooO;,
        Lz2/v2$OooOO0;,
        Lz2/v2$OooOO0O;,
        Lz2/v2$OooO0o;
    }
.end annotation


# static fields
.field private static final OooO00o:Ljava/lang/String; = "FactoryPools"

.field private static final OooO0O0:I = 0x14

.field private static final OooO0OO:Lz2/v2$OooOO0O;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz2/v2$OooOO0O<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lz2/v2$OooO00o;

    invoke-direct {v0}, Lz2/v2$OooO00o;-><init>()V

    sput-object v0, Lz2/v2;->OooO0OO:Lz2/v2$OooOO0O;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static OooO00o(Landroidx/core/util/Pools$Pool;Lz2/v2$OooO0o;)Landroidx/core/util/Pools$Pool;
    .locals 1
    .param p0    # Landroidx/core/util/Pools$Pool;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lz2/v2$OooO0o;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lz2/v2$OooOO0;",
            ">(",
            "Landroidx/core/util/Pools$Pool<",
            "TT;>;",
            "Lz2/v2$OooO0o<",
            "TT;>;)",
            "Landroidx/core/util/Pools$Pool<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, Lz2/v2;->OooO0OO()Lz2/v2$OooOO0O;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lz2/v2;->OooO0O0(Landroidx/core/util/Pools$Pool;Lz2/v2$OooO0o;Lz2/v2$OooOO0O;)Landroidx/core/util/Pools$Pool;

    move-result-object p0

    return-object p0
.end method

.method private static OooO0O0(Landroidx/core/util/Pools$Pool;Lz2/v2$OooO0o;Lz2/v2$OooOO0O;)Landroidx/core/util/Pools$Pool;
    .locals 1
    .param p0    # Landroidx/core/util/Pools$Pool;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lz2/v2$OooO0o;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lz2/v2$OooOO0O;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/core/util/Pools$Pool<",
            "TT;>;",
            "Lz2/v2$OooO0o<",
            "TT;>;",
            "Lz2/v2$OooOO0O<",
            "TT;>;)",
            "Landroidx/core/util/Pools$Pool<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lz2/v2$OooO;

    invoke-direct {v0, p0, p1, p2}, Lz2/v2$OooO;-><init>(Landroidx/core/util/Pools$Pool;Lz2/v2$OooO0o;Lz2/v2$OooOO0O;)V

    return-object v0
.end method

.method private static OooO0OO()Lz2/v2$OooOO0O;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lz2/v2$OooOO0O<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Lz2/v2;->OooO0OO:Lz2/v2$OooOO0O;

    return-object v0
.end method

.method public static OooO0Oo(ILz2/v2$OooO0o;)Landroidx/core/util/Pools$Pool;
    .locals 1
    .param p1    # Lz2/v2$OooO0o;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lz2/v2$OooOO0;",
            ">(I",
            "Lz2/v2$OooO0o<",
            "TT;>;)",
            "Landroidx/core/util/Pools$Pool<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Landroidx/core/util/Pools$SimplePool;

    invoke-direct {v0, p0}, Landroidx/core/util/Pools$SimplePool;-><init>(I)V

    invoke-static {v0, p1}, Lz2/v2;->OooO00o(Landroidx/core/util/Pools$Pool;Lz2/v2$OooO0o;)Landroidx/core/util/Pools$Pool;

    move-result-object p0

    return-object p0
.end method

.method public static OooO0o()Landroidx/core/util/Pools$Pool;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Landroidx/core/util/Pools$Pool<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    const/16 v0, 0x14

    invoke-static {v0}, Lz2/v2;->OooO0oO(I)Landroidx/core/util/Pools$Pool;

    move-result-object v0

    return-object v0
.end method

.method public static OooO0o0(ILz2/v2$OooO0o;)Landroidx/core/util/Pools$Pool;
    .locals 1
    .param p1    # Lz2/v2$OooO0o;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lz2/v2$OooOO0;",
            ">(I",
            "Lz2/v2$OooO0o<",
            "TT;>;)",
            "Landroidx/core/util/Pools$Pool<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Landroidx/core/util/Pools$SynchronizedPool;

    invoke-direct {v0, p0}, Landroidx/core/util/Pools$SynchronizedPool;-><init>(I)V

    invoke-static {v0, p1}, Lz2/v2;->OooO00o(Landroidx/core/util/Pools$Pool;Lz2/v2$OooO0o;)Landroidx/core/util/Pools$Pool;

    move-result-object p0

    return-object p0
.end method

.method public static OooO0oO(I)Landroidx/core/util/Pools$Pool;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)",
            "Landroidx/core/util/Pools$Pool<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    new-instance v0, Landroidx/core/util/Pools$SynchronizedPool;

    invoke-direct {v0, p0}, Landroidx/core/util/Pools$SynchronizedPool;-><init>(I)V

    new-instance p0, Lz2/v2$OooO0O0;

    invoke-direct {p0}, Lz2/v2$OooO0O0;-><init>()V

    new-instance v1, Lz2/v2$OooO0OO;

    invoke-direct {v1}, Lz2/v2$OooO0OO;-><init>()V

    invoke-static {v0, p0, v1}, Lz2/v2;->OooO0O0(Landroidx/core/util/Pools$Pool;Lz2/v2$OooO0o;Lz2/v2$OooOO0O;)Landroidx/core/util/Pools$Pool;

    move-result-object p0

    return-object p0
.end method
