.class public Lcom/bumptech/glide/load/engine/DecodeJob;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/o0OOo000$OooO00o;
.implements Ljava/lang/Runnable;
.implements Ljava/lang/Comparable;
.implements Lz2/v2$OooOO0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/engine/DecodeJob$Stage;,
        Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;,
        Lcom/bumptech/glide/load/engine/DecodeJob$OooO;,
        Lcom/bumptech/glide/load/engine/DecodeJob$OooO0O0;,
        Lcom/bumptech/glide/load/engine/DecodeJob$OooO0o;,
        Lcom/bumptech/glide/load/engine/DecodeJob$OooOO0;,
        Lcom/bumptech/glide/load/engine/DecodeJob$OooO0OO;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lz2/o0OOo000$OooO00o;",
        "Ljava/lang/Runnable;",
        "Ljava/lang/Comparable<",
        "Lcom/bumptech/glide/load/engine/DecodeJob<",
        "*>;>;",
        "Lz2/v2$OooOO0;"
    }
.end annotation


# static fields
.field private static final o000000O:Ljava/lang/String; = "DecodeJob"


# instance fields
.field private final OoooOoO:Lz2/o0o0000;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz2/o0o0000<",
            "TR;>;"
        }
    .end annotation
.end field

.field private final OoooOoo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field private final Ooooo00:Lz2/x2;

.field private final Ooooo0o:Lcom/bumptech/glide/load/engine/DecodeJob$OooO;

.field private final OooooO0:Landroidx/core/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Pools$Pool<",
            "Lcom/bumptech/glide/load/engine/DecodeJob<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final OooooOO:Lcom/bumptech/glide/load/engine/DecodeJob$OooO0o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/engine/DecodeJob$OooO0o<",
            "*>;"
        }
    .end annotation
.end field

.field private final OooooOo:Lcom/bumptech/glide/load/engine/DecodeJob$OooOO0;

.field private Oooooo:Lz2/o0O0O0Oo;

.field private Oooooo0:Lz2/o0O00o0;

.field private OoooooO:Lcom/bumptech/glide/Priority;

.field private Ooooooo:Lz2/oO00000o;

.field private volatile o000000:Z

.field private volatile o000OOo:Z

.field private o00O0O:Lz2/o0oo0000;

.field private o00Oo0:Lz2/o0O0OOO0;

.field private o00Ooo:Lcom/bumptech/glide/load/engine/DecodeJob$OooO0O0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/engine/DecodeJob$OooO0O0<",
            "TR;>;"
        }
    .end annotation
.end field

.field private o00o0O:I

.field private o00oO0O:Z

.field private o00oO0o:J

.field private o00ooo:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

.field private volatile o0O0O00:Lz2/o0OOo000;

.field private o0OO00O:Lcom/bumptech/glide/load/DataSource;

.field private o0OOO0o:Lz2/o0O0O0Oo;

.field private o0Oo0oo:Ljava/lang/Object;

.field private o0OoOo0:I

.field private o0ooOO0:Ljava/lang/Object;

.field private o0ooOOo:Ljava/lang/Thread;

.field private o0ooOoO:Lz2/o0O0O0Oo;

.field private oo000o:Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;

.field private oo0o0Oo:Lz2/o0O0oo00;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz2/o0O0oo00<",
            "*>;"
        }
    .end annotation
.end field

.field private ooOO:I


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/engine/DecodeJob$OooO;Landroidx/core/util/Pools$Pool;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/DecodeJob$OooO;",
            "Landroidx/core/util/Pools$Pool<",
            "Lcom/bumptech/glide/load/engine/DecodeJob<",
            "*>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lz2/o0o0000;

    invoke-direct {v0}, Lz2/o0o0000;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->OoooOoO:Lz2/o0o0000;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->OoooOoo:Ljava/util/List;

    invoke-static {}, Lz2/x2;->OooO00o()Lz2/x2;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->Ooooo00:Lz2/x2;

    new-instance v0, Lcom/bumptech/glide/load/engine/DecodeJob$OooO0o;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/DecodeJob$OooO0o;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->OooooOO:Lcom/bumptech/glide/load/engine/DecodeJob$OooO0o;

    new-instance v0, Lcom/bumptech/glide/load/engine/DecodeJob$OooOO0;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/DecodeJob$OooOO0;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->OooooOo:Lcom/bumptech/glide/load/engine/DecodeJob$OooOO0;

    iput-object p1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->Ooooo0o:Lcom/bumptech/glide/load/engine/DecodeJob$OooO;

    iput-object p2, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->OooooO0:Landroidx/core/util/Pools$Pool;

    return-void
.end method

.method private OooO()V
    .locals 4

    const-string v0, "DecodeJob"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->o00oO0o:J

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "data: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->o0Oo0oo:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", cache key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->o0ooOoO:Lz2/o0O0O0Oo;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", fetcher: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->oo0o0Oo:Lz2/o0O0oo00;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Retrieved data"

    invoke-direct {p0, v3, v0, v1, v2}, Lcom/bumptech/glide/load/engine/DecodeJob;->OooOOOo(Ljava/lang/String;JLjava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->oo0o0Oo:Lz2/o0O0oo00;

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->o0Oo0oo:Ljava/lang/Object;

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->o0OO00O:Lcom/bumptech/glide/load/DataSource;

    invoke-direct {p0, v1, v2, v3}, Lcom/bumptech/glide/load/engine/DecodeJob;->OooO0o(Lz2/o0O0oo00;Ljava/lang/Object;Lcom/bumptech/glide/load/DataSource;)Lz2/oO0Ooooo;

    move-result-object v0
    :try_end_0
    .catch Lcom/bumptech/glide/load/engine/GlideException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->o0OOO0o:Lz2/o0O0O0Oo;

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->o0OO00O:Lcom/bumptech/glide/load/DataSource;

    invoke-virtual {v1, v2, v3}, Lcom/bumptech/glide/load/engine/GlideException;->setLoggingDetails(Lz2/o0O0O0Oo;Lcom/bumptech/glide/load/DataSource;)V

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->OoooOoo:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->o0OO00O:Lcom/bumptech/glide/load/DataSource;

    invoke-direct {p0, v0, v1}, Lcom/bumptech/glide/load/engine/DecodeJob;->OooOOo(Lz2/oO0Ooooo;Lcom/bumptech/glide/load/DataSource;)V

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/DecodeJob;->OooOoO0()V

    :goto_1
    return-void
.end method

.method private OooO0o(Lz2/o0O0oo00;Ljava/lang/Object;Lcom/bumptech/glide/load/DataSource;)Lz2/oO0Ooooo;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            ">(",
            "Lz2/o0O0oo00<",
            "*>;TData;",
            "Lcom/bumptech/glide/load/DataSource;",
            ")",
            "Lz2/oO0Ooooo<",
            "TR;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bumptech/glide/load/engine/GlideException;
        }
    .end annotation

    if-nez p2, :cond_0

    const/4 p2, 0x0

    invoke-interface {p1}, Lz2/o0O0oo00;->OooO0O0()V

    return-object p2

    :cond_0
    :try_start_0
    invoke-static {}, Lz2/n2;->OooO0O0()J

    move-result-wide v0

    invoke-direct {p0, p2, p3}, Lcom/bumptech/glide/load/engine/DecodeJob;->OooO0oo(Ljava/lang/Object;Lcom/bumptech/glide/load/DataSource;)Lz2/oO0Ooooo;

    move-result-object p2

    const-string p3, "DecodeJob"

    const/4 v2, 0x2

    invoke-static {p3, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p3

    if-eqz p3, :cond_1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Decoded result "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p3, v0, v1}, Lcom/bumptech/glide/load/engine/DecodeJob;->OooOOOO(Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    invoke-interface {p1}, Lz2/o0O0oo00;->OooO0O0()V

    return-object p2

    :catchall_0
    move-exception p2

    invoke-interface {p1}, Lz2/o0O0oo00;->OooO0O0()V

    throw p2
.end method

.method private OooO0oo(Ljava/lang/Object;Lcom/bumptech/glide/load/DataSource;)Lz2/oO0Ooooo;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            ">(TData;",
            "Lcom/bumptech/glide/load/DataSource;",
            ")",
            "Lz2/oO0Ooooo<",
            "TR;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bumptech/glide/load/engine/GlideException;
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->OoooOoO:Lz2/o0o0000;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lz2/o0o0000;->OooO0oo(Ljava/lang/Class;)Lz2/oO000O0;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/bumptech/glide/load/engine/DecodeJob;->OooOoO(Ljava/lang/Object;Lcom/bumptech/glide/load/DataSource;Lz2/oO000O0;)Lz2/oO0Ooooo;

    move-result-object p1

    return-object p1
.end method

.method private OooOO0()Lz2/o0OOo000;
    .locals 3

    sget-object v0, Lcom/bumptech/glide/load/engine/DecodeJob$OooO00o;->OooO0O0:[I

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->o00ooo:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized stage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->o00ooo:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lz2/oO000OOo;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->OoooOoO:Lz2/o0o0000;

    invoke-direct {v0, v1, p0}, Lz2/oO000OOo;-><init>(Lz2/o0o0000;Lz2/o0OOo000$OooO00o;)V

    return-object v0

    :cond_2
    new-instance v0, Lz2/o0OOO0OO;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->OoooOoO:Lz2/o0o0000;

    invoke-direct {v0, v1, p0}, Lz2/o0OOO0OO;-><init>(Lz2/o0o0000;Lz2/o0OOo000$OooO00o;)V

    return-object v0

    :cond_3
    new-instance v0, Lz2/oO0o0o;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->OoooOoO:Lz2/o0o0000;

    invoke-direct {v0, v1, p0}, Lz2/oO0o0o;-><init>(Lz2/o0o0000;Lz2/o0OOo000$OooO00o;)V

    return-object v0
.end method

.method private OooOO0O(Lcom/bumptech/glide/load/engine/DecodeJob$Stage;)Lcom/bumptech/glide/load/engine/DecodeJob$Stage;
    .locals 3

    sget-object v0, Lcom/bumptech/glide/load/engine/DecodeJob$OooO00o;->OooO0O0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    iget-object p1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->o00O0O:Lz2/o0oo0000;

    invoke-virtual {p1}, Lz2/o0oo0000;->OooO0O0()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;->RESOURCE_CACHE:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;->RESOURCE_CACHE:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    invoke-direct {p0, p1}, Lcom/bumptech/glide/load/engine/DecodeJob;->OooOO0O(Lcom/bumptech/glide/load/engine/DecodeJob$Stage;)Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    move-result-object p1

    :goto_0
    return-object p1

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized stage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    sget-object p1, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;->FINISHED:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    return-object p1

    :cond_3
    iget-boolean p1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->o00oO0O:Z

    if-eqz p1, :cond_4

    sget-object p1, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;->FINISHED:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    goto :goto_1

    :cond_4
    sget-object p1, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;->SOURCE:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    :goto_1
    return-object p1

    :cond_5
    iget-object p1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->o00O0O:Lz2/o0oo0000;

    invoke-virtual {p1}, Lz2/o0oo0000;->OooO00o()Z

    move-result p1

    if-eqz p1, :cond_6

    sget-object p1, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;->DATA_CACHE:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    goto :goto_2

    :cond_6
    sget-object p1, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;->DATA_CACHE:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    invoke-direct {p0, p1}, Lcom/bumptech/glide/load/engine/DecodeJob;->OooOO0O(Lcom/bumptech/glide/load/engine/DecodeJob$Stage;)Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    move-result-object p1

    :goto_2
    return-object p1
.end method

.method private OooOO0o(Lcom/bumptech/glide/load/DataSource;)Lz2/o0O0OOO0;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->o00Oo0:Lz2/o0O0OOO0;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-ge v1, v2, :cond_0

    return-object v0

    :cond_0
    sget-object v1, Lcom/bumptech/glide/load/DataSource;->RESOURCE_DISK_CACHE:Lcom/bumptech/glide/load/DataSource;

    if-eq p1, v1, :cond_2

    iget-object p1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->OoooOoO:Lz2/o0o0000;

    invoke-virtual {p1}, Lz2/o0o0000;->OooOo0o()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    :goto_1
    sget-object v1, Lz2/oOOOoo00;->OooOO0:Lz2/o0O0OO0;

    invoke-virtual {v0, v1}, Lz2/o0O0OOO0;->OooO0OO(Lz2/o0O0OO0;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz p1, :cond_4

    :cond_3
    return-object v0

    :cond_4
    new-instance v0, Lz2/o0O0OOO0;

    invoke-direct {v0}, Lz2/o0O0OOO0;-><init>()V

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->o00Oo0:Lz2/o0O0OOO0;

    invoke-virtual {v0, v2}, Lz2/o0O0OOO0;->OooO0Oo(Lz2/o0O0OOO0;)V

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lz2/o0O0OOO0;->OooO0o0(Lz2/o0O0OO0;Ljava/lang/Object;)Lz2/o0O0OOO0;

    return-object v0
.end method

.method private OooOOO0()I
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->OoooooO:Lcom/bumptech/glide/Priority;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    return v0
.end method

.method private OooOOOO(Ljava/lang/String;J)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/bumptech/glide/load/engine/DecodeJob;->OooOOOo(Ljava/lang/String;JLjava/lang/String;)V

    return-void
.end method

.method private OooOOOo(Ljava/lang/String;JLjava/lang/String;)V
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " in "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2, p3}, Lz2/n2;->OooO00o(J)D

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p1, ", load key: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->Ooooooo:Lz2/oO00000o;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, ", "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", thread: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DecodeJob"

    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private OooOOo(Lz2/oO0Ooooo;Lcom/bumptech/glide/load/DataSource;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/oO0Ooooo<",
            "TR;>;",
            "Lcom/bumptech/glide/load/DataSource;",
            ")V"
        }
    .end annotation

    instance-of v0, p1, Lz2/oO0000o0;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lz2/oO0000o0;

    invoke-interface {v0}, Lz2/oO0000o0;->OooO00o()V

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->OooooOO:Lcom/bumptech/glide/load/engine/DecodeJob$OooO0o;

    invoke-virtual {v1}, Lcom/bumptech/glide/load/engine/DecodeJob$OooO0o;->OooO0OO()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p1}, Lz2/oO000O0O;->OooO0OO(Lz2/oO0Ooooo;)Lz2/oO000O0O;

    move-result-object p1

    move-object v0, p1

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/bumptech/glide/load/engine/DecodeJob;->OooOOo0(Lz2/oO0Ooooo;Lcom/bumptech/glide/load/DataSource;)V

    sget-object p1, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;->ENCODE:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    iput-object p1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->o00ooo:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    :try_start_0
    iget-object p1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->OooooOO:Lcom/bumptech/glide/load/engine/DecodeJob$OooO0o;

    invoke-virtual {p1}, Lcom/bumptech/glide/load/engine/DecodeJob$OooO0o;->OooO0OO()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->OooooOO:Lcom/bumptech/glide/load/engine/DecodeJob$OooO0o;

    iget-object p2, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->Ooooo0o:Lcom/bumptech/glide/load/engine/DecodeJob$OooO;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->o00Oo0:Lz2/o0O0OOO0;

    invoke-virtual {p1, p2, v1}, Lcom/bumptech/glide/load/engine/DecodeJob$OooO0o;->OooO0O0(Lcom/bumptech/glide/load/engine/DecodeJob$OooO;Lz2/o0O0OOO0;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lz2/oO000O0O;->OooO0o0()V

    :cond_3
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/DecodeJob;->OooOo00()V

    return-void

    :catchall_0
    move-exception p1

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lz2/oO000O0O;->OooO0o0()V

    :cond_4
    throw p1
.end method

.method private OooOOo0(Lz2/oO0Ooooo;Lcom/bumptech/glide/load/DataSource;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/oO0Ooooo<",
            "TR;>;",
            "Lcom/bumptech/glide/load/DataSource;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/DecodeJob;->OooOoo0()V

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->o00Ooo:Lcom/bumptech/glide/load/engine/DecodeJob$OooO0O0;

    invoke-interface {v0, p1, p2}, Lcom/bumptech/glide/load/engine/DecodeJob$OooO0O0;->OooO0O0(Lz2/oO0Ooooo;Lcom/bumptech/glide/load/DataSource;)V

    return-void
.end method

.method private OooOOoo()V
    .locals 3

    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/DecodeJob;->OooOoo0()V

    new-instance v0, Lcom/bumptech/glide/load/engine/GlideException;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->OoooOoo:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v2, "Failed to load resource"

    invoke-direct {v0, v2, v1}, Lcom/bumptech/glide/load/engine/GlideException;-><init>(Ljava/lang/String;Ljava/util/List;)V

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->o00Ooo:Lcom/bumptech/glide/load/engine/DecodeJob$OooO0O0;

    invoke-interface {v1, v0}, Lcom/bumptech/glide/load/engine/DecodeJob$OooO0O0;->OooO00o(Lcom/bumptech/glide/load/engine/GlideException;)V

    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/DecodeJob;->OooOo0()V

    return-void
.end method

.method private OooOo()V
    .locals 4

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->OooooOo:Lcom/bumptech/glide/load/engine/DecodeJob$OooOO0;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/DecodeJob$OooOO0;->OooO0o0()V

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->OooooOO:Lcom/bumptech/glide/load/engine/DecodeJob$OooO0o;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/DecodeJob$OooO0o;->OooO00o()V

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->OoooOoO:Lz2/o0o0000;

    invoke-virtual {v0}, Lz2/o0o0000;->OooO00o()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->o000OOo:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->Oooooo0:Lz2/o0O00o0;

    iput-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->Oooooo:Lz2/o0O0O0Oo;

    iput-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->o00Oo0:Lz2/o0O0OOO0;

    iput-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->OoooooO:Lcom/bumptech/glide/Priority;

    iput-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->Ooooooo:Lz2/oO00000o;

    iput-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->o00Ooo:Lcom/bumptech/glide/load/engine/DecodeJob$OooO0O0;

    iput-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->o00ooo:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    iput-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->o0O0O00:Lz2/o0OOo000;

    iput-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->o0ooOOo:Ljava/lang/Thread;

    iput-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->o0ooOoO:Lz2/o0O0O0Oo;

    iput-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->o0Oo0oo:Ljava/lang/Object;

    iput-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->o0OO00O:Lcom/bumptech/glide/load/DataSource;

    iput-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->oo0o0Oo:Lz2/o0O0oo00;

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->o00oO0o:J

    iput-boolean v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->o000000:Z

    iput-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->o0ooOO0:Ljava/lang/Object;

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->OoooOoo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->OooooO0:Landroidx/core/util/Pools$Pool;

    invoke-interface {v0, p0}, Landroidx/core/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    return-void
.end method

.method private OooOo0()V
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->OooooOo:Lcom/bumptech/glide/load/engine/DecodeJob$OooOO0;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/DecodeJob$OooOO0;->OooO0OO()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/DecodeJob;->OooOo()V

    :cond_0
    return-void
.end method

.method private OooOo00()V
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->OooooOo:Lcom/bumptech/glide/load/engine/DecodeJob$OooOO0;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/DecodeJob$OooOO0;->OooO0O0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/DecodeJob;->OooOo()V

    :cond_0
    return-void
.end method

.method private OooOoO(Ljava/lang/Object;Lcom/bumptech/glide/load/DataSource;Lz2/oO000O0;)Lz2/oO0Ooooo;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            "ResourceType:",
            "Ljava/lang/Object;",
            ">(TData;",
            "Lcom/bumptech/glide/load/DataSource;",
            "Lz2/oO000O0<",
            "TData;TResourceType;TR;>;)",
            "Lz2/oO0Ooooo<",
            "TR;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bumptech/glide/load/engine/GlideException;
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/bumptech/glide/load/engine/DecodeJob;->OooOO0o(Lcom/bumptech/glide/load/DataSource;)Lz2/o0O0OOO0;

    move-result-object v2

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->Oooooo0:Lz2/o0O00o0;

    invoke-virtual {v0}, Lz2/o0O00o0;->OooO0oo()Lcom/bumptech/glide/Registry;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/Registry;->OooOO0o(Ljava/lang/Object;)Lz2/o0O;

    move-result-object p1

    :try_start_0
    iget v3, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->o0OoOo0:I

    iget v4, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->ooOO:I

    new-instance v5, Lcom/bumptech/glide/load/engine/DecodeJob$OooO0OO;

    invoke-direct {v5, p0, p2}, Lcom/bumptech/glide/load/engine/DecodeJob$OooO0OO;-><init>(Lcom/bumptech/glide/load/engine/DecodeJob;Lcom/bumptech/glide/load/DataSource;)V

    move-object v0, p3

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lz2/oO000O0;->OooO0O0(Lz2/o0O;Lz2/o0O0OOO0;IILz2/oO0Oo$OooO00o;)Lz2/oO0Ooooo;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p1}, Lz2/o0O;->OooO0O0()V

    return-object p2

    :catchall_0
    move-exception p2

    invoke-interface {p1}, Lz2/o0O;->OooO0O0()V

    throw p2
.end method

.method private OooOoO0()V
    .locals 3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->o0ooOOo:Ljava/lang/Thread;

    invoke-static {}, Lz2/n2;->OooO0O0()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->o00oO0o:J

    const/4 v0, 0x0

    :cond_0
    iget-boolean v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->o000000:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->o0O0O00:Lz2/o0OOo000;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->o0O0O00:Lz2/o0OOo000;

    invoke-interface {v0}, Lz2/o0OOo000;->OooO0O0()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->o00ooo:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    invoke-direct {p0, v1}, Lcom/bumptech/glide/load/engine/DecodeJob;->OooOO0O(Lcom/bumptech/glide/load/engine/DecodeJob$Stage;)Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    move-result-object v1

    iput-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->o00ooo:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/DecodeJob;->OooOO0()Lz2/o0OOo000;

    move-result-object v1

    iput-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->o0O0O00:Lz2/o0OOo000;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->o00ooo:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    sget-object v2, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;->SOURCE:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/DecodeJob;->OooO0Oo()V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->o00ooo:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    sget-object v2, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;->FINISHED:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    if-eq v1, v2, :cond_2

    iget-boolean v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->o000000:Z

    if-eqz v1, :cond_3

    :cond_2
    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/DecodeJob;->OooOOoo()V

    :cond_3
    return-void
.end method

.method private OooOoOO()V
    .locals 3

    sget-object v0, Lcom/bumptech/glide/load/engine/DecodeJob$OooO00o;->OooO00o:[I

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->oo000o:Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/DecodeJob;->OooO()V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized run reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->oo000o:Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sget-object v0, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;->INITIALIZE:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/engine/DecodeJob;->OooOO0O(Lcom/bumptech/glide/load/engine/DecodeJob$Stage;)Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->o00ooo:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/DecodeJob;->OooOO0()Lz2/o0OOo000;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->o0O0O00:Lz2/o0OOo000;

    :cond_2
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/DecodeJob;->OooOoO0()V

    :goto_0
    return-void
.end method

.method private OooOoo0()V
    .locals 3

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->Ooooo00:Lz2/x2;

    invoke-virtual {v0}, Lz2/x2;->OooO0OO()V

    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->o000OOo:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->OoooOoo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->OoooOoo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    :goto_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Already notified"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    iput-boolean v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->o000OOo:Z

    return-void
.end method


# virtual methods
.method public OooO00o(Lz2/o0O0O0Oo;Ljava/lang/Exception;Lz2/o0O0oo00;Lcom/bumptech/glide/load/DataSource;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/o0O0O0Oo;",
            "Ljava/lang/Exception;",
            "Lz2/o0O0oo00<",
            "*>;",
            "Lcom/bumptech/glide/load/DataSource;",
            ")V"
        }
    .end annotation

    invoke-interface {p3}, Lz2/o0O0oo00;->OooO0O0()V

    new-instance v0, Lcom/bumptech/glide/load/engine/GlideException;

    const-string v1, "Fetching data failed"

    invoke-direct {v0, v1, p2}, Lcom/bumptech/glide/load/engine/GlideException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {p3}, Lz2/o0O0oo00;->OooO00o()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {v0, p1, p4, p2}, Lcom/bumptech/glide/load/engine/GlideException;->setLoggingDetails(Lz2/o0O0O0Oo;Lcom/bumptech/glide/load/DataSource;Ljava/lang/Class;)V

    iget-object p1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->OoooOoo:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    iget-object p2, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->o0ooOOo:Ljava/lang/Thread;

    if-eq p1, p2, :cond_0

    sget-object p1, Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;->SWITCH_TO_SOURCE_SERVICE:Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;

    iput-object p1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->oo000o:Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;

    iget-object p1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->o00Ooo:Lcom/bumptech/glide/load/engine/DecodeJob$OooO0O0;

    invoke-interface {p1, p0}, Lcom/bumptech/glide/load/engine/DecodeJob$OooO0O0;->OooO0OO(Lcom/bumptech/glide/load/engine/DecodeJob;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/DecodeJob;->OooOoO0()V

    :goto_0
    return-void
.end method

.method public OooO0O0()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->o000000:Z

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->o0O0O00:Lz2/o0OOo000;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lz2/o0OOo000;->cancel()V

    :cond_0
    return-void
.end method

.method public OooO0OO(Lcom/bumptech/glide/load/engine/DecodeJob;)I
    .locals 2
    .param p1    # Lcom/bumptech/glide/load/engine/DecodeJob;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/DecodeJob<",
            "*>;)I"
        }
    .end annotation

    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/DecodeJob;->OooOOO0()I

    move-result v0

    invoke-direct {p1}, Lcom/bumptech/glide/load/engine/DecodeJob;->OooOOO0()I

    move-result v1

    sub-int/2addr v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->o00o0O:I

    iget p1, p1, Lcom/bumptech/glide/load/engine/DecodeJob;->o00o0O:I

    sub-int/2addr v0, p1

    :cond_0
    return v0
.end method

.method public OooO0Oo()V
    .locals 1

    sget-object v0, Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;->SWITCH_TO_SOURCE_SERVICE:Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->oo000o:Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->o00Ooo:Lcom/bumptech/glide/load/engine/DecodeJob$OooO0O0;

    invoke-interface {v0, p0}, Lcom/bumptech/glide/load/engine/DecodeJob$OooO0O0;->OooO0OO(Lcom/bumptech/glide/load/engine/DecodeJob;)V

    return-void
.end method

.method public OooO0o0(Lz2/o0O0O0Oo;Ljava/lang/Object;Lz2/o0O0oo00;Lcom/bumptech/glide/load/DataSource;Lz2/o0O0O0Oo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/o0O0O0Oo;",
            "Ljava/lang/Object;",
            "Lz2/o0O0oo00<",
            "*>;",
            "Lcom/bumptech/glide/load/DataSource;",
            "Lz2/o0O0O0Oo;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->o0ooOoO:Lz2/o0O0O0Oo;

    iput-object p2, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->o0Oo0oo:Ljava/lang/Object;

    iput-object p3, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->oo0o0Oo:Lz2/o0O0oo00;

    iput-object p4, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->o0OO00O:Lcom/bumptech/glide/load/DataSource;

    iput-object p5, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->o0OOO0o:Lz2/o0O0O0Oo;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    iget-object p2, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->o0ooOOo:Ljava/lang/Thread;

    if-eq p1, p2, :cond_0

    sget-object p1, Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;->DECODE_DATA:Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;

    iput-object p1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->oo000o:Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;

    iget-object p1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->o00Ooo:Lcom/bumptech/glide/load/engine/DecodeJob$OooO0O0;

    invoke-interface {p1, p0}, Lcom/bumptech/glide/load/engine/DecodeJob$OooO0O0;->OooO0OO(Lcom/bumptech/glide/load/engine/DecodeJob;)V

    goto :goto_0

    :cond_0
    const-string p1, "DecodeJob.decodeFromRetrievedData"

    invoke-static {p1}, Lz2/w2;->OooO00o(Ljava/lang/String;)V

    :try_start_0
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/DecodeJob;->OooO()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lz2/w2;->OooO0o0()V

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    invoke-static {}, Lz2/w2;->OooO0o0()V

    throw p1
.end method

.method public OooO0oO()Lz2/x2;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->Ooooo00:Lz2/x2;

    return-object v0
.end method

.method public OooOOO(Lz2/o0O00o0;Ljava/lang/Object;Lz2/oO00000o;Lz2/o0O0O0Oo;IILjava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/Priority;Lz2/o0oo0000;Ljava/util/Map;ZZZLz2/o0O0OOO0;Lcom/bumptech/glide/load/engine/DecodeJob$OooO0O0;I)Lcom/bumptech/glide/load/engine/DecodeJob;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/o0O00o0;",
            "Ljava/lang/Object;",
            "Lz2/oO00000o;",
            "Lz2/o0O0O0Oo;",
            "II",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "TR;>;",
            "Lcom/bumptech/glide/Priority;",
            "Lz2/o0oo0000;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lz2/o0O0o000<",
            "*>;>;ZZZ",
            "Lz2/o0O0OOO0;",
            "Lcom/bumptech/glide/load/engine/DecodeJob$OooO0O0<",
            "TR;>;I)",
            "Lcom/bumptech/glide/load/engine/DecodeJob<",
            "TR;>;"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/bumptech/glide/load/engine/DecodeJob;->OoooOoO:Lz2/o0o0000;

    iget-object v15, v0, Lcom/bumptech/glide/load/engine/DecodeJob;->Ooooo0o:Lcom/bumptech/glide/load/engine/DecodeJob$OooO;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p10

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p15

    move-object/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p13

    invoke-virtual/range {v1 .. v15}, Lz2/o0o0000;->OooOo0(Lz2/o0O00o0;Ljava/lang/Object;Lz2/o0O0O0Oo;IILz2/o0oo0000;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/Priority;Lz2/o0O0OOO0;Ljava/util/Map;ZZLcom/bumptech/glide/load/engine/DecodeJob$OooO;)V

    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/bumptech/glide/load/engine/DecodeJob;->Oooooo0:Lz2/o0O00o0;

    move-object/from16 v1, p4

    iput-object v1, v0, Lcom/bumptech/glide/load/engine/DecodeJob;->Oooooo:Lz2/o0O0O0Oo;

    move-object/from16 v1, p9

    iput-object v1, v0, Lcom/bumptech/glide/load/engine/DecodeJob;->OoooooO:Lcom/bumptech/glide/Priority;

    move-object/from16 v1, p3

    iput-object v1, v0, Lcom/bumptech/glide/load/engine/DecodeJob;->Ooooooo:Lz2/oO00000o;

    move/from16 v1, p5

    iput v1, v0, Lcom/bumptech/glide/load/engine/DecodeJob;->o0OoOo0:I

    move/from16 v1, p6

    iput v1, v0, Lcom/bumptech/glide/load/engine/DecodeJob;->ooOO:I

    move-object/from16 v1, p10

    iput-object v1, v0, Lcom/bumptech/glide/load/engine/DecodeJob;->o00O0O:Lz2/o0oo0000;

    move/from16 v1, p14

    iput-boolean v1, v0, Lcom/bumptech/glide/load/engine/DecodeJob;->o00oO0O:Z

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/bumptech/glide/load/engine/DecodeJob;->o00Oo0:Lz2/o0O0OOO0;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/bumptech/glide/load/engine/DecodeJob;->o00Ooo:Lcom/bumptech/glide/load/engine/DecodeJob$OooO0O0;

    move/from16 v1, p17

    iput v1, v0, Lcom/bumptech/glide/load/engine/DecodeJob;->o00o0O:I

    sget-object v1, Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;->INITIALIZE:Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;

    iput-object v1, v0, Lcom/bumptech/glide/load/engine/DecodeJob;->oo000o:Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;

    move-object/from16 v1, p2

    iput-object v1, v0, Lcom/bumptech/glide/load/engine/DecodeJob;->o0ooOO0:Ljava/lang/Object;

    return-object v0
.end method

.method public OooOo0O(Lcom/bumptech/glide/load/DataSource;Lz2/oO0Ooooo;)Lz2/oO0Ooooo;
    .locals 11
    .param p2    # Lz2/oO0Ooooo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Z:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/DataSource;",
            "Lz2/oO0Ooooo<",
            "TZ;>;)",
            "Lz2/oO0Ooooo<",
            "TZ;>;"
        }
    .end annotation

    invoke-interface {p2}, Lz2/oO0Ooooo;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    sget-object v0, Lcom/bumptech/glide/load/DataSource;->RESOURCE_DISK_CACHE:Lcom/bumptech/glide/load/DataSource;

    const/4 v1, 0x0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->OoooOoO:Lz2/o0o0000;

    invoke-virtual {v0, v8}, Lz2/o0o0000;->OooOOo(Ljava/lang/Class;)Lz2/o0O0o000;

    move-result-object v0

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->Oooooo0:Lz2/o0O00o0;

    iget v3, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->o0OoOo0:I

    iget v4, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->ooOO:I

    invoke-interface {v0, v2, p2, v3, v4}, Lz2/o0O0o000;->OooO0O0(Landroid/content/Context;Lz2/oO0Ooooo;II)Lz2/oO0Ooooo;

    move-result-object v2

    move-object v7, v0

    move-object v0, v2

    goto :goto_0

    :cond_0
    move-object v0, p2

    move-object v7, v1

    :goto_0
    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {p2}, Lz2/oO0Ooooo;->recycle()V

    :cond_1
    iget-object p2, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->OoooOoO:Lz2/o0o0000;

    invoke-virtual {p2, v0}, Lz2/o0o0000;->OooOo0O(Lz2/oO0Ooooo;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->OoooOoO:Lz2/o0o0000;

    invoke-virtual {p2, v0}, Lz2/o0o0000;->OooOOO(Lz2/oO0Ooooo;)Lz2/oo0OOoo;

    move-result-object v1

    iget-object p2, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->o00Oo0:Lz2/o0O0OOO0;

    invoke-interface {v1, p2}, Lz2/oo0OOoo;->OooO0O0(Lz2/o0O0OOO0;)Lcom/bumptech/glide/load/EncodeStrategy;

    move-result-object p2

    goto :goto_1

    :cond_2
    sget-object p2, Lcom/bumptech/glide/load/EncodeStrategy;->NONE:Lcom/bumptech/glide/load/EncodeStrategy;

    :goto_1
    move-object v10, v1

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->OoooOoO:Lz2/o0o0000;

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->o0ooOoO:Lz2/o0O0O0Oo;

    invoke-virtual {v1, v2}, Lz2/o0o0000;->OooOo(Lz2/o0O0O0Oo;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->o00O0O:Lz2/o0oo0000;

    invoke-virtual {v3, v1, p1, p2}, Lz2/o0oo0000;->OooO0Oo(ZLcom/bumptech/glide/load/DataSource;Lcom/bumptech/glide/load/EncodeStrategy;)Z

    move-result p1

    if-eqz p1, :cond_6

    if-eqz v10, :cond_5

    sget-object p1, Lcom/bumptech/glide/load/engine/DecodeJob$OooO00o;->OooO0OO:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget p1, p1, v1

    if-eq p1, v2, :cond_4

    const/4 v1, 0x2

    if-ne p1, v1, :cond_3

    new-instance p1, Lz2/oO0OoOO0;

    iget-object p2, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->OoooOoO:Lz2/o0o0000;

    invoke-virtual {p2}, Lz2/o0o0000;->OooO0O0()Lz2/oO0OOo0o;

    move-result-object v2

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->o0ooOoO:Lz2/o0O0O0Oo;

    iget-object v4, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->Oooooo:Lz2/o0O0O0Oo;

    iget v5, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->o0OoOo0:I

    iget v6, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->ooOO:I

    iget-object v9, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->o00Oo0:Lz2/o0O0OOO0;

    move-object v1, p1

    invoke-direct/range {v1 .. v9}, Lz2/oO0OoOO0;-><init>(Lz2/oO0OOo0o;Lz2/o0O0O0Oo;Lz2/o0O0O0Oo;IILz2/o0O0o000;Ljava/lang/Class;Lz2/o0O0OOO0;)V

    goto :goto_2

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown strategy: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Lz2/o0OOOO00;

    iget-object p2, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->o0ooOoO:Lz2/o0O0O0Oo;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->Oooooo:Lz2/o0O0O0Oo;

    invoke-direct {p1, p2, v1}, Lz2/o0OOOO00;-><init>(Lz2/o0O0O0Oo;Lz2/o0O0O0Oo;)V

    :goto_2
    invoke-static {v0}, Lz2/oO000O0O;->OooO0OO(Lz2/oO0Ooooo;)Lz2/oO000O0O;

    move-result-object v0

    iget-object p2, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->OooooOO:Lcom/bumptech/glide/load/engine/DecodeJob$OooO0o;

    invoke-virtual {p2, p1, v10, v0}, Lcom/bumptech/glide/load/engine/DecodeJob$OooO0o;->OooO0Oo(Lz2/o0O0O0Oo;Lz2/oo0OOoo;Lz2/oO000O0O;)V

    goto :goto_3

    :cond_5
    new-instance p1, Lcom/bumptech/glide/Registry$NoResultEncoderAvailableException;

    invoke-interface {v0}, Lz2/oO0Ooooo;->get()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/bumptech/glide/Registry$NoResultEncoderAvailableException;-><init>(Ljava/lang/Class;)V

    throw p1

    :cond_6
    :goto_3
    return-object v0
.end method

.method public OooOo0o(Z)V
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->OooooOo:Lcom/bumptech/glide/load/engine/DecodeJob$OooOO0;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/engine/DecodeJob$OooOO0;->OooO0Oo(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/DecodeJob;->OooOo()V

    :cond_0
    return-void
.end method

.method public OooOoo()Z
    .locals 2

    sget-object v0, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;->INITIALIZE:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/engine/DecodeJob;->OooOO0O(Lcom/bumptech/glide/load/engine/DecodeJob$Stage;)Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;->RESOURCE_CACHE:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;->DATA_CACHE:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    if-ne v0, v1, :cond_0

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

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/bumptech/glide/load/engine/DecodeJob;

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/load/engine/DecodeJob;->OooO0OO(Lcom/bumptech/glide/load/engine/DecodeJob;)I

    move-result p1

    return p1
.end method

.method public run()V
    .locals 5

    const-string v0, "DecodeJob"

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->o0ooOO0:Ljava/lang/Object;

    const-string v2, "DecodeJob#run(model=%s)"

    invoke-static {v2, v1}, Lz2/w2;->OooO0O0(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->oo0o0Oo:Lz2/o0O0oo00;

    :try_start_0
    iget-boolean v2, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->o000000:Z

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/DecodeJob;->OooOOoo()V
    :try_end_0
    .catch Lcom/bumptech/glide/load/engine/CallbackException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lz2/o0O0oo00;->OooO0O0()V

    :cond_0
    invoke-static {}, Lz2/w2;->OooO0o0()V

    return-void

    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/DecodeJob;->OooOoOO()V
    :try_end_1
    .catch Lcom/bumptech/glide/load/engine/CallbackException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lz2/o0O0oo00;->OooO0O0()V

    :cond_2
    invoke-static {}, Lz2/w2;->OooO0o0()V

    return-void

    :catchall_0
    move-exception v2

    const/4 v3, 0x3

    :try_start_2
    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DecodeJob threw unexpectedly, isCancelled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->o000000:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", stage: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->o00ooo:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->o00ooo:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    sget-object v3, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;->ENCODE:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    if-eq v0, v3, :cond_4

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->OoooOoo:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/DecodeJob;->OooOOoo()V

    :cond_4
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->o000000:Z

    if-nez v0, :cond_5

    throw v2

    :cond_5
    throw v2

    :catch_0
    move-exception v0

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    if-eqz v1, :cond_6

    invoke-interface {v1}, Lz2/o0O0oo00;->OooO0O0()V

    :cond_6
    invoke-static {}, Lz2/w2;->OooO0o0()V

    throw v0
.end method
