.class public final Lz2/oO00O0oO;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/oO0OOo0o;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz2/oO00O0oO$OooO00o;,
        Lz2/oO00O0oO$OooO0O0;
    }
.end annotation


# static fields
.field public static final OooO:I = 0x8
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final OooO0oo:I = 0x400000

.field private static final OooOO0:I = 0x2


# instance fields
.field private final OooO0O0:Lz2/oO00O0o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz2/oO00O0o<",
            "Lz2/oO00O0oO$OooO00o;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final OooO0OO:Lz2/oO00O0oO$OooO0O0;

.field private final OooO0Oo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/NavigableMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final OooO0o:I

.field private final OooO0o0:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lz2/ooOOOOoo<",
            "*>;>;"
        }
    .end annotation
.end field

.field private OooO0oO:I


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lz2/oO00O0o;

    invoke-direct {v0}, Lz2/oO00O0o;-><init>()V

    iput-object v0, p0, Lz2/oO00O0oO;->OooO0O0:Lz2/oO00O0o;

    new-instance v0, Lz2/oO00O0oO$OooO0O0;

    invoke-direct {v0}, Lz2/oO00O0oO$OooO0O0;-><init>()V

    iput-object v0, p0, Lz2/oO00O0oO;->OooO0OO:Lz2/oO00O0oO$OooO0O0;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lz2/oO00O0oO;->OooO0Oo:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lz2/oO00O0oO;->OooO0o0:Ljava/util/Map;

    const/high16 v0, 0x400000

    iput v0, p0, Lz2/oO00O0oO;->OooO0o:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lz2/oO00O0o;

    invoke-direct {v0}, Lz2/oO00O0o;-><init>()V

    iput-object v0, p0, Lz2/oO00O0oO;->OooO0O0:Lz2/oO00O0o;

    new-instance v0, Lz2/oO00O0oO$OooO0O0;

    invoke-direct {v0}, Lz2/oO00O0oO$OooO0O0;-><init>()V

    iput-object v0, p0, Lz2/oO00O0oO;->OooO0OO:Lz2/oO00O0oO$OooO0O0;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lz2/oO00O0oO;->OooO0Oo:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lz2/oO00O0oO;->OooO0o0:Ljava/util/Map;

    iput p1, p0, Lz2/oO00O0oO;->OooO0o:I

    return-void
.end method

.method private OooO(Ljava/lang/Object;)Lz2/ooOOOOoo;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lz2/ooOOOOoo<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-direct {p0, p1}, Lz2/oO00O0oO;->OooOO0(Ljava/lang/Class;)Lz2/ooOOOOoo;

    move-result-object p1

    return-object p1
.end method

.method private OooO0o(ILjava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0, p2}, Lz2/oO00O0oO;->OooOOO(Ljava/lang/Class;)Ljava/util/NavigableMap;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/NavigableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    if-ne v1, v2, :cond_0

    invoke-interface {p2, p1}, Ljava/util/NavigableMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Ljava/util/NavigableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    :cond_1
    new-instance p2, Ljava/lang/NullPointerException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Tried to decrement empty size, size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", this: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private OooO0oO()V
    .locals 1

    iget v0, p0, Lz2/oO00O0oO;->OooO0o:I

    invoke-direct {p0, v0}, Lz2/oO00O0oO;->OooO0oo(I)V

    return-void
.end method

.method private OooO0oo(I)V
    .locals 5

    :cond_0
    :goto_0
    iget v0, p0, Lz2/oO00O0oO;->OooO0oO:I

    if-le v0, p1, :cond_1

    iget-object v0, p0, Lz2/oO00O0oO;->OooO0O0:Lz2/oO00O0o;

    invoke-virtual {v0}, Lz2/oO00O0o;->OooO0o()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lz2/r2;->OooO0Oo(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v0}, Lz2/oO00O0oO;->OooO(Ljava/lang/Object;)Lz2/ooOOOOoo;

    move-result-object v1

    iget v2, p0, Lz2/oO00O0oO;->OooO0oO:I

    invoke-interface {v1, v0}, Lz2/ooOOOOoo;->OooO0O0(Ljava/lang/Object;)I

    move-result v3

    invoke-interface {v1}, Lz2/ooOOOOoo;->OooO00o()I

    move-result v4

    mul-int v3, v3, v4

    sub-int/2addr v2, v3

    iput v2, p0, Lz2/oO00O0oO;->OooO0oO:I

    invoke-interface {v1, v0}, Lz2/ooOOOOoo;->OooO0O0(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lz2/oO00O0oO;->OooO0o(ILjava/lang/Class;)V

    invoke-interface {v1}, Lz2/ooOOOOoo;->getTag()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Lz2/ooOOOOoo;->getTag()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "evicted: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1, v0}, Lz2/ooOOOOoo;->OooO0O0(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    return-void
.end method

.method private OooOO0(Ljava/lang/Class;)Lz2/ooOOOOoo;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lz2/ooOOOOoo<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lz2/oO00O0oO;->OooO0o0:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz2/ooOOOOoo;

    if-nez v0, :cond_2

    const-class v0, [I

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lz2/oOo00OO0;

    invoke-direct {v0}, Lz2/oOo00OO0;-><init>()V

    goto :goto_0

    :cond_0
    const-class v0, [B

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lz2/oO00O0o0;

    invoke-direct {v0}, Lz2/oO00O0o0;-><init>()V

    :goto_0
    iget-object v1, p0, Lz2/oO00O0oO;->OooO0o0:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No array pool found for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_1
    return-object v0
.end method

.method private OooOO0O(Lz2/oO00O0oO$OooO00o;)Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lz2/oO00O0oO$OooO00o;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lz2/oO00O0oO;->OooO0O0:Lz2/oO00O0o;

    invoke-virtual {v0, p1}, Lz2/oO00O0o;->OooO00o(Lz2/oO00OOOo;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private OooOOO(Ljava/lang/Class;)Ljava/util/NavigableMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/NavigableMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lz2/oO00O0oO;->OooO0Oo:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/NavigableMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iget-object v1, p0, Lz2/oO00O0oO;->OooO0Oo:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method private OooOOO0(Lz2/oO00O0oO$OooO00o;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lz2/oO00O0oO$OooO00o;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    invoke-direct {p0, p2}, Lz2/oO00O0oO;->OooOO0(Ljava/lang/Class;)Lz2/ooOOOOoo;

    move-result-object v0

    invoke-direct {p0, p1}, Lz2/oO00O0oO;->OooOO0O(Lz2/oO00O0oO$OooO00o;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    iget v2, p0, Lz2/oO00O0oO;->OooO0oO:I

    invoke-interface {v0, v1}, Lz2/ooOOOOoo;->OooO0O0(Ljava/lang/Object;)I

    move-result v3

    invoke-interface {v0}, Lz2/ooOOOOoo;->OooO00o()I

    move-result v4

    mul-int v3, v3, v4

    sub-int/2addr v2, v3

    iput v2, p0, Lz2/oO00O0oO;->OooO0oO:I

    invoke-interface {v0, v1}, Lz2/ooOOOOoo;->OooO0O0(Ljava/lang/Object;)I

    move-result v2

    invoke-direct {p0, v2, p2}, Lz2/oO00O0oO;->OooO0o(ILjava/lang/Class;)V

    :cond_0
    if-nez v1, :cond_2

    invoke-interface {v0}, Lz2/ooOOOOoo;->getTag()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x2

    invoke-static {p2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {v0}, Lz2/ooOOOOoo;->getTag()Ljava/lang/String;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Allocated "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lz2/oO00O0oO$OooO00o;->OooO0O0:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " bytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget p1, p1, Lz2/oO00O0oO$OooO00o;->OooO0O0:I

    invoke-interface {v0, p1}, Lz2/ooOOOOoo;->newArray(I)Ljava/lang/Object;

    move-result-object v1

    :cond_2
    return-object v1
.end method

.method private OooOOOO()Z
    .locals 2

    iget v0, p0, Lz2/oO00O0oO;->OooO0oO:I

    if-eqz v0, :cond_1

    iget v1, p0, Lz2/oO00O0oO;->OooO0o:I

    div-int/2addr v1, v0

    const/4 v0, 0x2

    if-lt v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private OooOOOo(I)Z
    .locals 1

    iget v0, p0, Lz2/oO00O0oO;->OooO0o:I

    div-int/lit8 v0, v0, 0x2

    if-gt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private OooOOo0(ILjava/lang/Integer;)Z
    .locals 1

    if-eqz p2, :cond_1

    invoke-direct {p0}, Lz2/oO00O0oO;->OooOOOO()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    mul-int/lit8 p1, p1, 0x8

    if-gt p2, p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public declared-synchronized OooO00o(I)V
    .locals 1

    monitor-enter p0

    const/16 v0, 0x28

    if-lt p1, v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lz2/oO00O0oO;->OooO0O0()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/16 v0, 0x14

    if-ge p1, v0, :cond_1

    const/16 v0, 0xf

    if-ne p1, v0, :cond_2

    :cond_1
    iget p1, p0, Lz2/oO00O0oO;->OooO0o:I

    div-int/lit8 p1, p1, 0x2

    invoke-direct {p0, p1}, Lz2/oO00O0oO;->OooO0oo(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized OooO0O0()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, v0}, Lz2/oO00O0oO;->OooO0oo(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized OooO0OO(ILjava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lz2/oO00O0oO;->OooO0OO:Lz2/oO00O0oO$OooO0O0;

    invoke-virtual {v0, p1, p2}, Lz2/oO00O0oO$OooO0O0;->OooO0o0(ILjava/lang/Class;)Lz2/oO00O0oO$OooO00o;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lz2/oO00O0oO;->OooOOO0(Lz2/oO00O0oO$OooO00o;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public OooO0Oo(Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lz2/oO00O0oO;->put(Ljava/lang/Object;)V

    return-void
.end method

.method public declared-synchronized OooO0o0(ILjava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p2}, Lz2/oO00O0oO;->OooOOO(Ljava/lang/Class;)Ljava/util/NavigableMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/NavigableMap;->ceilingKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-direct {p0, p1, v0}, Lz2/oO00O0oO;->OooOOo0(ILjava/lang/Integer;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p1, p0, Lz2/oO00O0oO;->OooO0OO:Lz2/oO00O0oO$OooO0O0;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0, p2}, Lz2/oO00O0oO$OooO0O0;->OooO0o0(ILjava/lang/Class;)Lz2/oO00O0oO$OooO00o;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lz2/oO00O0oO;->OooO0OO:Lz2/oO00O0oO$OooO0O0;

    invoke-virtual {v0, p1, p2}, Lz2/oO00O0oO$OooO0O0;->OooO0o0(ILjava/lang/Class;)Lz2/oO00O0oO$OooO00o;

    move-result-object p1

    :goto_0
    invoke-direct {p0, p1, p2}, Lz2/oO00O0oO;->OooOOO0(Lz2/oO00O0oO$OooO00o;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public OooOO0o()I
    .locals 8

    iget-object v0, p0, Lz2/oO00O0oO;->OooO0Oo:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    iget-object v3, p0, Lz2/oO00O0oO;->OooO0Oo:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/NavigableMap;

    invoke-interface {v3}, Ljava/util/NavigableMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-direct {p0, v2}, Lz2/oO00O0oO;->OooOO0(Ljava/lang/Class;)Lz2/ooOOOOoo;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v7, p0, Lz2/oO00O0oO;->OooO0Oo:Ljava/util/Map;

    invoke-interface {v7, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/NavigableMap;

    invoke-interface {v7, v4}, Ljava/util/NavigableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    mul-int v6, v6, v4

    invoke-interface {v5}, Lz2/ooOOOOoo;->OooO00o()I

    move-result v4

    mul-int v6, v6, v4

    add-int/2addr v1, v6

    goto :goto_0

    :cond_1
    return v1
.end method

.method public declared-synchronized put(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lz2/oO00O0oO;->OooOO0(Ljava/lang/Class;)Lz2/ooOOOOoo;

    move-result-object v1

    invoke-interface {v1, p1}, Lz2/ooOOOOoo;->OooO0O0(Ljava/lang/Object;)I

    move-result v2

    invoke-interface {v1}, Lz2/ooOOOOoo;->OooO00o()I

    move-result v1

    mul-int v1, v1, v2

    invoke-direct {p0, v1}, Lz2/oO00O0oO;->OooOOOo(I)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v3, p0, Lz2/oO00O0oO;->OooO0OO:Lz2/oO00O0oO$OooO0O0;

    invoke-virtual {v3, v2, v0}, Lz2/oO00O0oO$OooO0O0;->OooO0o0(ILjava/lang/Class;)Lz2/oO00O0oO$OooO00o;

    move-result-object v2

    iget-object v3, p0, Lz2/oO00O0oO;->OooO0O0:Lz2/oO00O0o;

    invoke-virtual {v3, v2, p1}, Lz2/oO00O0o;->OooO0Oo(Lz2/oO00OOOo;Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lz2/oO00O0oO;->OooOOO(Ljava/lang/Class;)Ljava/util/NavigableMap;

    move-result-object p1

    iget v0, v2, Lz2/oO00O0oO$OooO00o;->OooO0O0:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/NavigableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget v2, v2, Lz2/oO00O0oO$OooO00o;->OooO0O0:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v3, v0

    :goto_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v2, v0}, Ljava/util/NavigableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget p1, p0, Lz2/oO00O0oO;->OooO0oO:I

    add-int/2addr p1, v1

    iput p1, p0, Lz2/oO00O0oO;->OooO0oO:I

    invoke-direct {p0}, Lz2/oO00O0oO;->OooO0oO()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
