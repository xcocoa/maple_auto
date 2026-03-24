.class public final Lz2/fy;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz2/fy$OooO;,
        Lz2/fy$OooO0o;,
        Lz2/fy$OooOO0;
    }
.end annotation


# static fields
.field private static final o000000:Ljava/lang/String; = "READ"

.field public static final synthetic o000000O:Z = false

.field private static final o000OOo:Ljava/lang/String; = "REMOVE"

.field public static final o00oO0O:Ljava/lang/String; = "journal"

.field private static final o0O0O00:Ljava/lang/String; = "DIRTY"

.field public static final o0OO00O:Ljava/util/regex/Pattern;

.field public static final o0OOO0o:Ljava/lang/String; = "1"

.field public static final o0Oo0oo:J = -0x1L

.field public static final o0ooOO0:Ljava/lang/String; = "journal.tmp"

.field public static final o0ooOOo:Ljava/lang/String; = "journal.bkp"

.field public static final o0ooOoO:Ljava/lang/String; = "libcore.io.DiskLruCache"

.field private static final oo0o0Oo:Ljava/lang/String; = "CLEAN"


# instance fields
.field public final OoooOoO:Lz2/oz;

.field public final OoooOoo:Ljava/io/File;

.field private final Ooooo00:Ljava/io/File;

.field private final Ooooo0o:Ljava/io/File;

.field private final OooooO0:Ljava/io/File;

.field private final OooooOO:I

.field private OooooOo:J

.field private Oooooo:J

.field public final Oooooo0:I

.field public OoooooO:Lz2/k00;

.field public final Ooooooo:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lz2/fy$OooO;",
            ">;"
        }
    .end annotation
.end field

.field public o00O0O:Z

.field public o00Oo0:Z

.field public o00Ooo:Z

.field public o00o0O:Z

.field private final o00oO0o:Ljava/lang/Runnable;

.field private o00ooo:J

.field public o0OoOo0:I

.field private final oo000o:Ljava/util/concurrent/Executor;

.field public ooOO:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lz2/fy;

    const-string v0, "[a-z0-9_-]{1,120}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lz2/fy;->o0OO00O:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Lz2/oz;Ljava/io/File;IIJLjava/util/concurrent/Executor;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lz2/fy;->Oooooo:J

    new-instance v2, Ljava/util/LinkedHashMap;

    const/4 v3, 0x0

    const/high16 v4, 0x3f400000    # 0.75f

    const/4 v5, 0x1

    invoke-direct {v2, v3, v4, v5}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v2, p0, Lz2/fy;->Ooooooo:Ljava/util/LinkedHashMap;

    iput-wide v0, p0, Lz2/fy;->o00ooo:J

    new-instance v0, Lz2/fy$OooO00o;

    invoke-direct {v0, p0}, Lz2/fy$OooO00o;-><init>(Lz2/fy;)V

    iput-object v0, p0, Lz2/fy;->o00oO0o:Ljava/lang/Runnable;

    iput-object p1, p0, Lz2/fy;->OoooOoO:Lz2/oz;

    iput-object p2, p0, Lz2/fy;->OoooOoo:Ljava/io/File;

    iput p3, p0, Lz2/fy;->OooooOO:I

    new-instance p1, Ljava/io/File;

    const-string p3, "journal"

    invoke-direct {p1, p2, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lz2/fy;->Ooooo00:Ljava/io/File;

    new-instance p1, Ljava/io/File;

    const-string p3, "journal.tmp"

    invoke-direct {p1, p2, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lz2/fy;->Ooooo0o:Ljava/io/File;

    new-instance p1, Ljava/io/File;

    const-string p3, "journal.bkp"

    invoke-direct {p1, p2, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lz2/fy;->OooooO0:Ljava/io/File;

    iput p4, p0, Lz2/fy;->Oooooo0:I

    iput-wide p5, p0, Lz2/fy;->OooooOo:J

    iput-object p7, p0, Lz2/fy;->oo000o:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private declared-synchronized OooOO0()V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lz2/fy;->o00o0O()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cache is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static Oooooo0(Lz2/oz;Ljava/io/File;IIJ)Lz2/fy;
    .locals 10

    const-wide/16 v0, 0x0

    cmp-long v2, p4, v0

    if-lez v2, :cond_1

    if-lez p3, :cond_0

    new-instance v9, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-wide/16 v3, 0x3c

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/4 v0, 0x1

    const-string v7, "OkHttp DiskLruCache"

    invoke-static {v7, v0}, Lz2/zx;->Oooo00o(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v7

    move-object v0, v9

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    new-instance v0, Lz2/fy;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    move-wide v7, p4

    invoke-direct/range {v2 .. v9}, Lz2/fy;-><init>(Lz2/oz;Ljava/io/File;IIJLjava/util/concurrent/Executor;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "valueCount <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "maxSize <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private o000OOo(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lz2/fy;->o0OO00O:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "keys must match regex [a-z0-9_-]{1,120}: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private o00oO0O()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, ", "

    iget-object v1, p0, Lz2/fy;->OoooOoO:Lz2/oz;

    iget-object v2, p0, Lz2/fy;->Ooooo00:Ljava/io/File;

    invoke-interface {v1, v2}, Lz2/oz;->OooO00o(Ljava/io/File;)Lz2/e10;

    move-result-object v1

    invoke-static {v1}, Lz2/w00;->OooO0Oo(Lz2/e10;)Lz2/l00;

    move-result-object v1

    :try_start_0
    invoke-interface {v1}, Lz2/l00;->Oooo0OO()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Lz2/l00;->Oooo0OO()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1}, Lz2/l00;->Oooo0OO()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1}, Lz2/l00;->Oooo0OO()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1}, Lz2/l00;->Oooo0OO()Ljava/lang/String;

    move-result-object v6

    const-string v7, "libcore.io.DiskLruCache"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "1"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    iget v7, p0, Lz2/fy;->OooooOO:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget v4, p0, Lz2/fy;->Oooooo0:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, ""

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_1

    const/4 v0, 0x0

    :goto_0
    :try_start_1
    invoke-interface {v1}, Lz2/l00;->Oooo0OO()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lz2/fy;->o0ooOO0(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    :try_start_2
    iget-object v2, p0, Lz2/fy;->Ooooooo:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    sub-int/2addr v0, v2

    iput v0, p0, Lz2/fy;->o0OoOo0:I

    invoke-interface {v1}, Lz2/l00;->OooOOO()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lz2/fy;->o0ooOOo()V

    goto :goto_1

    :cond_0
    invoke-direct {p0}, Lz2/fy;->oo000o()Lz2/k00;

    move-result-object v0

    iput-object v0, p0, Lz2/fy;->OoooooO:Lz2/k00;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    invoke-static {v1}, Lz2/zx;->OooO0oO(Ljava/io/Closeable;)V

    return-void

    :cond_1
    :try_start_3
    new-instance v4, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "unexpected journal header: ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    invoke-static {v1}, Lz2/zx;->OooO0oO(Ljava/io/Closeable;)V

    throw v0
.end method

.method private o00oO0o()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lz2/fy;->OoooOoO:Lz2/oz;

    iget-object v1, p0, Lz2/fy;->Ooooo0o:Ljava/io/File;

    invoke-interface {v0, v1}, Lz2/oz;->OooO0o(Ljava/io/File;)V

    iget-object v0, p0, Lz2/fy;->Ooooooo:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lz2/fy$OooO;

    iget-object v2, v1, Lz2/fy$OooO;->OooO0o:Lz2/fy$OooO0o;

    const/4 v3, 0x0

    if-nez v2, :cond_1

    :goto_1
    iget v2, p0, Lz2/fy;->Oooooo0:I

    if-ge v3, v2, :cond_0

    iget-wide v4, p0, Lz2/fy;->Oooooo:J

    iget-object v2, v1, Lz2/fy$OooO;->OooO0O0:[J

    aget-wide v6, v2, v3

    add-long/2addr v4, v6

    iput-wide v4, p0, Lz2/fy;->Oooooo:J

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    iput-object v2, v1, Lz2/fy$OooO;->OooO0o:Lz2/fy$OooO0o;

    :goto_2
    iget v2, p0, Lz2/fy;->Oooooo0:I

    if-ge v3, v2, :cond_2

    iget-object v2, p0, Lz2/fy;->OoooOoO:Lz2/oz;

    iget-object v4, v1, Lz2/fy$OooO;->OooO0OO:[Ljava/io/File;

    aget-object v4, v4, v3

    invoke-interface {v2, v4}, Lz2/oz;->OooO0o(Ljava/io/File;)V

    iget-object v2, p0, Lz2/fy;->OoooOoO:Lz2/oz;

    iget-object v4, v1, Lz2/fy$OooO;->OooO0Oo:[Ljava/io/File;

    aget-object v4, v4, v3

    invoke-interface {v2, v4}, Lz2/oz;->OooO0o(Ljava/io/File;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_3
    return-void
.end method

.method private o0ooOO0(Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const-string v2, "unexpected journal line: "

    const/4 v3, -0x1

    if-eq v1, v3, :cond_6

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p1, v0, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-ne v0, v3, :cond_0

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x6

    if-ne v1, v5, :cond_1

    const-string v5, "REMOVE"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object p1, p0, Lz2/fy;->Ooooooo:Ljava/util/LinkedHashMap;

    invoke-virtual {p1, v4}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    :cond_1
    iget-object v5, p0, Lz2/fy;->Ooooooo:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lz2/fy$OooO;

    if-nez v5, :cond_2

    new-instance v5, Lz2/fy$OooO;

    invoke-direct {v5, p0, v4}, Lz2/fy$OooO;-><init>(Lz2/fy;Ljava/lang/String;)V

    iget-object v6, p0, Lz2/fy;->Ooooooo:Ljava/util/LinkedHashMap;

    invoke-virtual {v6, v4, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const/4 v4, 0x5

    if-eq v0, v3, :cond_3

    if-ne v1, v4, :cond_3

    const-string v6, "CLEAN"

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-boolean v1, v5, Lz2/fy$OooO;->OooO0o0:Z

    const/4 v0, 0x0

    iput-object v0, v5, Lz2/fy$OooO;->OooO0o:Lz2/fy$OooO0o;

    invoke-virtual {v5, p1}, Lz2/fy$OooO;->OooO0O0([Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    if-ne v0, v3, :cond_4

    if-ne v1, v4, :cond_4

    const-string v4, "DIRTY"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    new-instance p1, Lz2/fy$OooO0o;

    invoke-direct {p1, p0, v5}, Lz2/fy$OooO0o;-><init>(Lz2/fy;Lz2/fy$OooO;)V

    iput-object p1, v5, Lz2/fy$OooO;->OooO0o:Lz2/fy$OooO0o;

    goto :goto_0

    :cond_4
    if-ne v0, v3, :cond_5

    const/4 v0, 0x4

    if-ne v1, v0, :cond_5

    const-string v0, "READ"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    :goto_0
    return-void

    :cond_5
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private oo000o()Lz2/k00;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    iget-object v0, p0, Lz2/fy;->OoooOoO:Lz2/oz;

    iget-object v1, p0, Lz2/fy;->Ooooo00:Ljava/io/File;

    invoke-interface {v0, v1}, Lz2/oz;->OooO0oO(Ljava/io/File;)Lz2/d10;

    move-result-object v0

    new-instance v1, Lz2/fy$OooO0O0;

    invoke-direct {v1, p0, v0}, Lz2/fy$OooO0O0;-><init>(Lz2/fy;Lz2/d10;)V

    invoke-static {v1}, Lz2/w00;->OooO0OO(Lz2/d10;)Lz2/k00;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public declared-synchronized OooooOo(Lz2/fy$OooO0o;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p1, Lz2/fy$OooO0o;->OooO00o:Lz2/fy$OooO;

    iget-object v1, v0, Lz2/fy$OooO;->OooO0o:Lz2/fy$OooO0o;

    if-ne v1, p1, :cond_a

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    iget-boolean v2, v0, Lz2/fy$OooO;->OooO0o0:Z

    if-nez v2, :cond_2

    const/4 v2, 0x0

    :goto_0
    iget v3, p0, Lz2/fy;->Oooooo0:I

    if-ge v2, v3, :cond_2

    iget-object v3, p1, Lz2/fy$OooO0o;->OooO0O0:[Z

    aget-boolean v3, v3, v2

    if-eqz v3, :cond_1

    iget-object v3, p0, Lz2/fy;->OoooOoO:Lz2/oz;

    iget-object v4, v0, Lz2/fy$OooO;->OooO0Oo:[Ljava/io/File;

    aget-object v4, v4, v2

    invoke-interface {v3, v4}, Lz2/oz;->OooO0Oo(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p1}, Lz2/fy$OooO0o;->OooO00o()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lz2/fy$OooO0o;->OooO00o()V

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Newly created entry didn\'t create value for index "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_1
    iget p1, p0, Lz2/fy;->Oooooo0:I

    if-ge v1, p1, :cond_5

    iget-object p1, v0, Lz2/fy$OooO;->OooO0Oo:[Ljava/io/File;

    aget-object p1, p1, v1

    if-eqz p2, :cond_3

    iget-object v2, p0, Lz2/fy;->OoooOoO:Lz2/oz;

    invoke-interface {v2, p1}, Lz2/oz;->OooO0Oo(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, v0, Lz2/fy$OooO;->OooO0OO:[Ljava/io/File;

    aget-object v2, v2, v1

    iget-object v3, p0, Lz2/fy;->OoooOoO:Lz2/oz;

    invoke-interface {v3, p1, v2}, Lz2/oz;->OooO0o0(Ljava/io/File;Ljava/io/File;)V

    iget-object p1, v0, Lz2/fy$OooO;->OooO0O0:[J

    aget-wide v3, p1, v1

    iget-object p1, p0, Lz2/fy;->OoooOoO:Lz2/oz;

    invoke-interface {p1, v2}, Lz2/oz;->OooO0oo(Ljava/io/File;)J

    move-result-wide v5

    iget-object p1, v0, Lz2/fy$OooO;->OooO0O0:[J

    aput-wide v5, p1, v1

    iget-wide v7, p0, Lz2/fy;->Oooooo:J

    sub-long/2addr v7, v3

    add-long/2addr v7, v5

    iput-wide v7, p0, Lz2/fy;->Oooooo:J

    goto :goto_2

    :cond_3
    iget-object v2, p0, Lz2/fy;->OoooOoO:Lz2/oz;

    invoke-interface {v2, p1}, Lz2/oz;->OooO0o(Ljava/io/File;)V

    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    iget p1, p0, Lz2/fy;->o0OoOo0:I

    const/4 v1, 0x1

    add-int/2addr p1, v1

    iput p1, p0, Lz2/fy;->o0OoOo0:I

    const/4 p1, 0x0

    iput-object p1, v0, Lz2/fy$OooO;->OooO0o:Lz2/fy$OooO0o;

    iget-boolean p1, v0, Lz2/fy$OooO;->OooO0o0:Z

    or-int/2addr p1, p2

    const/16 v2, 0xa

    const/16 v3, 0x20

    if-eqz p1, :cond_6

    iput-boolean v1, v0, Lz2/fy$OooO;->OooO0o0:Z

    iget-object p1, p0, Lz2/fy;->OoooooO:Lz2/k00;

    const-string v1, "CLEAN"

    invoke-interface {p1, v1}, Lz2/k00;->OooOoO0(Ljava/lang/String;)Lz2/k00;

    move-result-object p1

    invoke-interface {p1, v3}, Lz2/k00;->OooOOOO(I)Lz2/k00;

    iget-object p1, p0, Lz2/fy;->OoooooO:Lz2/k00;

    iget-object v1, v0, Lz2/fy$OooO;->OooO00o:Ljava/lang/String;

    invoke-interface {p1, v1}, Lz2/k00;->OooOoO0(Ljava/lang/String;)Lz2/k00;

    iget-object p1, p0, Lz2/fy;->OoooooO:Lz2/k00;

    invoke-virtual {v0, p1}, Lz2/fy$OooO;->OooO0Oo(Lz2/k00;)V

    iget-object p1, p0, Lz2/fy;->OoooooO:Lz2/k00;

    invoke-interface {p1, v2}, Lz2/k00;->OooOOOO(I)Lz2/k00;

    if-eqz p2, :cond_7

    iget-wide p1, p0, Lz2/fy;->o00ooo:J

    const-wide/16 v1, 0x1

    add-long/2addr v1, p1

    iput-wide v1, p0, Lz2/fy;->o00ooo:J

    iput-wide p1, v0, Lz2/fy$OooO;->OooO0oO:J

    goto :goto_3

    :cond_6
    iget-object p1, p0, Lz2/fy;->Ooooooo:Ljava/util/LinkedHashMap;

    iget-object p2, v0, Lz2/fy$OooO;->OooO00o:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lz2/fy;->OoooooO:Lz2/k00;

    const-string p2, "REMOVE"

    invoke-interface {p1, p2}, Lz2/k00;->OooOoO0(Ljava/lang/String;)Lz2/k00;

    move-result-object p1

    invoke-interface {p1, v3}, Lz2/k00;->OooOOOO(I)Lz2/k00;

    iget-object p1, p0, Lz2/fy;->OoooooO:Lz2/k00;

    iget-object p2, v0, Lz2/fy$OooO;->OooO00o:Ljava/lang/String;

    invoke-interface {p1, p2}, Lz2/k00;->OooOoO0(Ljava/lang/String;)Lz2/k00;

    iget-object p1, p0, Lz2/fy;->OoooooO:Lz2/k00;

    invoke-interface {p1, v2}, Lz2/k00;->OooOOOO(I)Lz2/k00;

    :cond_7
    :goto_3
    iget-object p1, p0, Lz2/fy;->OoooooO:Lz2/k00;

    invoke-interface {p1}, Lz2/k00;->flush()V

    iget-wide p1, p0, Lz2/fy;->Oooooo:J

    iget-wide v0, p0, Lz2/fy;->OooooOo:J

    cmp-long v2, p1, v0

    if-gtz v2, :cond_8

    invoke-virtual {p0}, Lz2/fy;->o00ooo()Z

    move-result p1

    if-eqz p1, :cond_9

    :cond_8
    iget-object p1, p0, Lz2/fy;->oo000o:Ljava/util/concurrent/Executor;

    iget-object p2, p0, Lz2/fy;->o00oO0o:Ljava/lang/Runnable;

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_9
    monitor-exit p0

    return-void

    :cond_a
    :try_start_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public Oooooo()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lz2/fy;->close()V

    iget-object v0, p0, Lz2/fy;->OoooOoO:Lz2/oz;

    iget-object v1, p0, Lz2/fy;->OoooOoo:Ljava/io/File;

    invoke-interface {v0, v1}, Lz2/oz;->OooO0OO(Ljava/io/File;)V

    return-void
.end method

.method public OoooooO(Ljava/lang/String;)Lz2/fy$OooO0o;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    const-wide/16 v0, -0x1

    invoke-virtual {p0, p1, v0, v1}, Lz2/fy;->Ooooooo(Ljava/lang/String;J)Lz2/fy$OooO0o;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized Ooooooo(Ljava/lang/String;J)Lz2/fy$OooO0o;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lz2/fy;->o00Ooo()V

    invoke-direct {p0}, Lz2/fy;->OooOO0()V

    invoke-direct {p0, p1}, Lz2/fy;->o000OOo(Ljava/lang/String;)V

    iget-object v0, p0, Lz2/fy;->Ooooooo:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz2/fy$OooO;

    const-wide/16 v1, -0x1

    const/4 v3, 0x0

    cmp-long v4, p2, v1

    if-eqz v4, :cond_1

    if-eqz v0, :cond_0

    iget-wide v1, v0, Lz2/fy$OooO;->OooO0oO:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v4, v1, p2

    if-eqz v4, :cond_1

    :cond_0
    monitor-exit p0

    return-object v3

    :cond_1
    if-eqz v0, :cond_2

    :try_start_1
    iget-object p2, v0, Lz2/fy$OooO;->OooO0o:Lz2/fy$OooO0o;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p2, :cond_2

    monitor-exit p0

    return-object v3

    :cond_2
    :try_start_2
    iget-boolean p2, p0, Lz2/fy;->o00Ooo:Z

    if-nez p2, :cond_6

    iget-boolean p2, p0, Lz2/fy;->o00o0O:Z

    if-eqz p2, :cond_3

    goto :goto_0

    :cond_3
    iget-object p2, p0, Lz2/fy;->OoooooO:Lz2/k00;

    const-string p3, "DIRTY"

    invoke-interface {p2, p3}, Lz2/k00;->OooOoO0(Ljava/lang/String;)Lz2/k00;

    move-result-object p2

    const/16 p3, 0x20

    invoke-interface {p2, p3}, Lz2/k00;->OooOOOO(I)Lz2/k00;

    move-result-object p2

    invoke-interface {p2, p1}, Lz2/k00;->OooOoO0(Ljava/lang/String;)Lz2/k00;

    move-result-object p2

    const/16 p3, 0xa

    invoke-interface {p2, p3}, Lz2/k00;->OooOOOO(I)Lz2/k00;

    iget-object p2, p0, Lz2/fy;->OoooooO:Lz2/k00;

    invoke-interface {p2}, Lz2/k00;->flush()V

    iget-boolean p2, p0, Lz2/fy;->ooOO:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p2, :cond_4

    monitor-exit p0

    return-object v3

    :cond_4
    if-nez v0, :cond_5

    :try_start_3
    new-instance v0, Lz2/fy$OooO;

    invoke-direct {v0, p0, p1}, Lz2/fy$OooO;-><init>(Lz2/fy;Ljava/lang/String;)V

    iget-object p2, p0, Lz2/fy;->Ooooooo:Ljava/util/LinkedHashMap;

    invoke-virtual {p2, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    new-instance p1, Lz2/fy$OooO0o;

    invoke-direct {p1, p0, v0}, Lz2/fy$OooO0o;-><init>(Lz2/fy;Lz2/fy$OooO;)V

    iput-object p1, v0, Lz2/fy$OooO;->OooO0o:Lz2/fy$OooO0o;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_6
    :goto_0
    :try_start_4
    iget-object p1, p0, Lz2/fy;->oo000o:Ljava/util/concurrent/Executor;

    iget-object p2, p0, Lz2/fy;->o00oO0o:Ljava/lang/Runnable;

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-object v3

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized close()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lz2/fy;->o00O0O:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lz2/fy;->o00Oo0:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lz2/fy;->Ooooooo:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v2, p0, Lz2/fy;->Ooooooo:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    new-array v2, v2, [Lz2/fy$OooO;

    invoke-interface {v0, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lz2/fy$OooO;

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    iget-object v4, v4, Lz2/fy$OooO;->OooO0o:Lz2/fy$OooO0o;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lz2/fy$OooO0o;->OooO00o()V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lz2/fy;->o0O0O00()V

    iget-object v0, p0, Lz2/fy;->OoooooO:Lz2/k00;

    invoke-interface {v0}, Lz2/d10;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lz2/fy;->OoooooO:Lz2/k00;

    iput-boolean v1, p0, Lz2/fy;->o00Oo0:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_3
    :goto_1
    :try_start_1
    iput-boolean v1, p0, Lz2/fy;->o00Oo0:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lz2/fy;->o00O0O:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-direct {p0}, Lz2/fy;->OooOO0()V

    invoke-virtual {p0}, Lz2/fy;->o0O0O00()V

    iget-object v0, p0, Lz2/fy;->OoooooO:Lz2/k00;

    invoke-interface {v0}, Lz2/k00;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public o00O0O()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lz2/fy;->OoooOoo:Ljava/io/File;

    return-object v0
.end method

.method public declared-synchronized o00Oo0()J
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lz2/fy;->OooooOo:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized o00Ooo()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lz2/fy;->o00O0O:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lz2/fy;->OoooOoO:Lz2/oz;

    iget-object v1, p0, Lz2/fy;->OooooO0:Ljava/io/File;

    invoke-interface {v0, v1}, Lz2/oz;->OooO0Oo(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lz2/fy;->OoooOoO:Lz2/oz;

    iget-object v1, p0, Lz2/fy;->Ooooo00:Ljava/io/File;

    invoke-interface {v0, v1}, Lz2/oz;->OooO0Oo(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lz2/fy;->OoooOoO:Lz2/oz;

    iget-object v1, p0, Lz2/fy;->OooooO0:Ljava/io/File;

    invoke-interface {v0, v1}, Lz2/oz;->OooO0o(Ljava/io/File;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lz2/fy;->OoooOoO:Lz2/oz;

    iget-object v1, p0, Lz2/fy;->OooooO0:Ljava/io/File;

    iget-object v2, p0, Lz2/fy;->Ooooo00:Ljava/io/File;

    invoke-interface {v0, v1, v2}, Lz2/oz;->OooO0o0(Ljava/io/File;Ljava/io/File;)V

    :cond_2
    :goto_0
    iget-object v0, p0, Lz2/fy;->OoooOoO:Lz2/oz;

    iget-object v1, p0, Lz2/fy;->Ooooo00:Ljava/io/File;

    invoke-interface {v0, v1}, Lz2/oz;->OooO0Oo(Ljava/io/File;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    :try_start_2
    invoke-direct {p0}, Lz2/fy;->o00oO0O()V

    invoke-direct {p0}, Lz2/fy;->o00oO0o()V

    iput-boolean v1, p0, Lz2/fy;->o00O0O:Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_3
    invoke-static {}, Lz2/uz;->OooOO0O()Lz2/uz;

    move-result-object v2

    const/4 v3, 0x5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DiskLruCache "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lz2/fy;->OoooOoo:Ljava/io/File;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " is corrupt: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", removing"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v0}, Lz2/uz;->OooOOo(ILjava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/4 v0, 0x0

    :try_start_4
    invoke-virtual {p0}, Lz2/fy;->Oooooo()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    iput-boolean v0, p0, Lz2/fy;->o00Oo0:Z

    goto :goto_1

    :catchall_0
    move-exception v1

    iput-boolean v0, p0, Lz2/fy;->o00Oo0:Z

    throw v1

    :cond_3
    :goto_1
    invoke-virtual {p0}, Lz2/fy;->o0ooOOo()V

    iput-boolean v1, p0, Lz2/fy;->o00O0O:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized o00o0O()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lz2/fy;->o00Oo0:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public o00ooo()Z
    .locals 2

    iget v0, p0, Lz2/fy;->o0OoOo0:I

    const/16 v1, 0x7d0

    if-lt v0, v1, :cond_0

    iget-object v1, p0, Lz2/fy;->Ooooooo:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public o0O0O00()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    iget-wide v0, p0, Lz2/fy;->Oooooo:J

    iget-wide v2, p0, Lz2/fy;->OooooOo:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    iget-object v0, p0, Lz2/fy;->Ooooooo:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz2/fy$OooO;

    invoke-virtual {p0, v0}, Lz2/fy;->o0OOO0o(Lz2/fy$OooO;)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lz2/fy;->o00Ooo:Z

    return-void
.end method

.method public declared-synchronized o0OO00O()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lz2/fy;->o00Ooo()V

    iget-wide v0, p0, Lz2/fy;->Oooooo:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public o0OOO0o(Lz2/fy$OooO;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p1, Lz2/fy$OooO;->OooO0o:Lz2/fy$OooO0o;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lz2/fy$OooO0o;->OooO0Oo()V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lz2/fy;->Oooooo0:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lz2/fy;->OoooOoO:Lz2/oz;

    iget-object v2, p1, Lz2/fy$OooO;->OooO0OO:[Ljava/io/File;

    aget-object v2, v2, v0

    invoke-interface {v1, v2}, Lz2/oz;->OooO0o(Ljava/io/File;)V

    iget-wide v1, p0, Lz2/fy;->Oooooo:J

    iget-object v3, p1, Lz2/fy$OooO;->OooO0O0:[J

    aget-wide v4, v3, v0

    sub-long/2addr v1, v4

    iput-wide v1, p0, Lz2/fy;->Oooooo:J

    const-wide/16 v1, 0x0

    aput-wide v1, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget v0, p0, Lz2/fy;->o0OoOo0:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lz2/fy;->o0OoOo0:I

    iget-object v0, p0, Lz2/fy;->OoooooO:Lz2/k00;

    const-string v2, "REMOVE"

    invoke-interface {v0, v2}, Lz2/k00;->OooOoO0(Ljava/lang/String;)Lz2/k00;

    move-result-object v0

    const/16 v2, 0x20

    invoke-interface {v0, v2}, Lz2/k00;->OooOOOO(I)Lz2/k00;

    move-result-object v0

    iget-object v2, p1, Lz2/fy$OooO;->OooO00o:Ljava/lang/String;

    invoke-interface {v0, v2}, Lz2/k00;->OooOoO0(Ljava/lang/String;)Lz2/k00;

    move-result-object v0

    const/16 v2, 0xa

    invoke-interface {v0, v2}, Lz2/k00;->OooOOOO(I)Lz2/k00;

    iget-object v0, p0, Lz2/fy;->Ooooooo:Ljava/util/LinkedHashMap;

    iget-object p1, p1, Lz2/fy$OooO;->OooO00o:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lz2/fy;->o00ooo()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lz2/fy;->oo000o:Ljava/util/concurrent/Executor;

    iget-object v0, p0, Lz2/fy;->o00oO0o:Ljava/lang/Runnable;

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_2
    return v1
.end method

.method public declared-synchronized o0Oo0oo(J)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-wide p1, p0, Lz2/fy;->OooooOo:J

    iget-boolean p1, p0, Lz2/fy;->o00O0O:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lz2/fy;->oo000o:Ljava/util/concurrent/Executor;

    iget-object p2, p0, Lz2/fy;->o00oO0o:Ljava/lang/Runnable;

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized o0OoOo0()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lz2/fy;->o00Ooo()V

    iget-object v0, p0, Lz2/fy;->Ooooooo:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lz2/fy;->Ooooooo:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    new-array v1, v1, [Lz2/fy$OooO;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lz2/fy$OooO;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    invoke-virtual {p0, v4}, Lz2/fy;->o0OOO0o(Lz2/fy$OooO;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iput-boolean v2, p0, Lz2/fy;->o00Ooo:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized o0ooOOo()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lz2/fy;->OoooooO:Lz2/k00;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lz2/d10;->close()V

    :cond_0
    iget-object v0, p0, Lz2/fy;->OoooOoO:Lz2/oz;

    iget-object v1, p0, Lz2/fy;->Ooooo0o:Ljava/io/File;

    invoke-interface {v0, v1}, Lz2/oz;->OooO0O0(Ljava/io/File;)Lz2/d10;

    move-result-object v0

    invoke-static {v0}, Lz2/w00;->OooO0OO(Lz2/d10;)Lz2/k00;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v1, "libcore.io.DiskLruCache"

    invoke-interface {v0, v1}, Lz2/k00;->OooOoO0(Ljava/lang/String;)Lz2/k00;

    move-result-object v1

    const/16 v2, 0xa

    invoke-interface {v1, v2}, Lz2/k00;->OooOOOO(I)Lz2/k00;

    const-string v1, "1"

    invoke-interface {v0, v1}, Lz2/k00;->OooOoO0(Ljava/lang/String;)Lz2/k00;

    move-result-object v1

    invoke-interface {v1, v2}, Lz2/k00;->OooOOOO(I)Lz2/k00;

    iget v1, p0, Lz2/fy;->OooooOO:I

    int-to-long v3, v1

    invoke-interface {v0, v3, v4}, Lz2/k00;->OoooOoO(J)Lz2/k00;

    move-result-object v1

    invoke-interface {v1, v2}, Lz2/k00;->OooOOOO(I)Lz2/k00;

    iget v1, p0, Lz2/fy;->Oooooo0:I

    int-to-long v3, v1

    invoke-interface {v0, v3, v4}, Lz2/k00;->OoooOoO(J)Lz2/k00;

    move-result-object v1

    invoke-interface {v1, v2}, Lz2/k00;->OooOOOO(I)Lz2/k00;

    invoke-interface {v0, v2}, Lz2/k00;->OooOOOO(I)Lz2/k00;

    iget-object v1, p0, Lz2/fy;->Ooooooo:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lz2/fy$OooO;

    iget-object v4, v3, Lz2/fy$OooO;->OooO0o:Lz2/fy$OooO0o;

    const/16 v5, 0x20

    if-eqz v4, :cond_1

    const-string v4, "DIRTY"

    invoke-interface {v0, v4}, Lz2/k00;->OooOoO0(Ljava/lang/String;)Lz2/k00;

    move-result-object v4

    invoke-interface {v4, v5}, Lz2/k00;->OooOOOO(I)Lz2/k00;

    iget-object v3, v3, Lz2/fy$OooO;->OooO00o:Ljava/lang/String;

    invoke-interface {v0, v3}, Lz2/k00;->OooOoO0(Ljava/lang/String;)Lz2/k00;

    :goto_1
    invoke-interface {v0, v2}, Lz2/k00;->OooOOOO(I)Lz2/k00;

    goto :goto_0

    :cond_1
    const-string v4, "CLEAN"

    invoke-interface {v0, v4}, Lz2/k00;->OooOoO0(Ljava/lang/String;)Lz2/k00;

    move-result-object v4

    invoke-interface {v4, v5}, Lz2/k00;->OooOOOO(I)Lz2/k00;

    iget-object v4, v3, Lz2/fy$OooO;->OooO00o:Ljava/lang/String;

    invoke-interface {v0, v4}, Lz2/k00;->OooOoO0(Ljava/lang/String;)Lz2/k00;

    invoke-virtual {v3, v0}, Lz2/fy$OooO;->OooO0Oo(Lz2/k00;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_2
    :try_start_2
    invoke-interface {v0}, Lz2/d10;->close()V

    iget-object v0, p0, Lz2/fy;->OoooOoO:Lz2/oz;

    iget-object v1, p0, Lz2/fy;->Ooooo00:Ljava/io/File;

    invoke-interface {v0, v1}, Lz2/oz;->OooO0Oo(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lz2/fy;->OoooOoO:Lz2/oz;

    iget-object v1, p0, Lz2/fy;->Ooooo00:Ljava/io/File;

    iget-object v2, p0, Lz2/fy;->OooooO0:Ljava/io/File;

    invoke-interface {v0, v1, v2}, Lz2/oz;->OooO0o0(Ljava/io/File;Ljava/io/File;)V

    :cond_3
    iget-object v0, p0, Lz2/fy;->OoooOoO:Lz2/oz;

    iget-object v1, p0, Lz2/fy;->Ooooo0o:Ljava/io/File;

    iget-object v2, p0, Lz2/fy;->Ooooo00:Ljava/io/File;

    invoke-interface {v0, v1, v2}, Lz2/oz;->OooO0o0(Ljava/io/File;Ljava/io/File;)V

    iget-object v0, p0, Lz2/fy;->OoooOoO:Lz2/oz;

    iget-object v1, p0, Lz2/fy;->OooooO0:Ljava/io/File;

    invoke-interface {v0, v1}, Lz2/oz;->OooO0o(Ljava/io/File;)V

    invoke-direct {p0}, Lz2/fy;->oo000o()Lz2/k00;

    move-result-object v0

    iput-object v0, p0, Lz2/fy;->OoooooO:Lz2/k00;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lz2/fy;->ooOO:Z

    iput-boolean v0, p0, Lz2/fy;->o00o0O:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    :try_start_3
    invoke-interface {v0}, Lz2/d10;->close()V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized o0ooOoO(Ljava/lang/String;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lz2/fy;->o00Ooo()V

    invoke-direct {p0}, Lz2/fy;->OooOO0()V

    invoke-direct {p0, p1}, Lz2/fy;->o000OOo(Ljava/lang/String;)V

    iget-object v0, p0, Lz2/fy;->Ooooooo:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lz2/fy$OooO;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    if-nez p1, :cond_0

    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lz2/fy;->o0OOO0o(Lz2/fy$OooO;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-wide v1, p0, Lz2/fy;->Oooooo:J

    iget-wide v3, p0, Lz2/fy;->OooooOo:J

    cmp-long v5, v1, v3

    if-gtz v5, :cond_1

    iput-boolean v0, p0, Lz2/fy;->o00Ooo:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized oo0o0Oo()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lz2/fy$OooOO0;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lz2/fy;->o00Ooo()V

    new-instance v0, Lz2/fy$OooO0OO;

    invoke-direct {v0, p0}, Lz2/fy$OooO0OO;-><init>(Lz2/fy;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized ooOO(Ljava/lang/String;)Lz2/fy$OooOO0;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lz2/fy;->o00Ooo()V

    invoke-direct {p0}, Lz2/fy;->OooOO0()V

    invoke-direct {p0, p1}, Lz2/fy;->o000OOo(Ljava/lang/String;)V

    iget-object v0, p0, Lz2/fy;->Ooooooo:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz2/fy$OooO;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-boolean v2, v0, Lz2/fy$OooO;->OooO0o0:Z

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lz2/fy$OooO;->OooO0OO()Lz2/fy$OooOO0;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    monitor-exit p0

    return-object v1

    :cond_1
    :try_start_1
    iget v1, p0, Lz2/fy;->o0OoOo0:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lz2/fy;->o0OoOo0:I

    iget-object v1, p0, Lz2/fy;->OoooooO:Lz2/k00;

    const-string v2, "READ"

    invoke-interface {v1, v2}, Lz2/k00;->OooOoO0(Ljava/lang/String;)Lz2/k00;

    move-result-object v1

    const/16 v2, 0x20

    invoke-interface {v1, v2}, Lz2/k00;->OooOOOO(I)Lz2/k00;

    move-result-object v1

    invoke-interface {v1, p1}, Lz2/k00;->OooOoO0(Ljava/lang/String;)Lz2/k00;

    move-result-object p1

    const/16 v1, 0xa

    invoke-interface {p1, v1}, Lz2/k00;->OooOOOO(I)Lz2/k00;

    invoke-virtual {p0}, Lz2/fy;->o00ooo()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lz2/fy;->oo000o:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lz2/fy;->o00oO0o:Ljava/lang/Runnable;

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    monitor-exit p0

    return-object v0

    :cond_3
    :goto_0
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
