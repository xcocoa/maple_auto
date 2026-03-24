.class public final Lz2/o0O00;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz2/o0O00$OooO0O0;,
        Lz2/o0O00$OooO0o;,
        Lz2/o0O00$OooO0OO;,
        Lz2/o0O00$OooO;
    }
.end annotation


# static fields
.field public static final o00Oo0:Ljava/lang/String; = "journal"

.field public static final o00Ooo:Ljava/lang/String; = "journal.tmp"

.field public static final o00o0O:Ljava/lang/String; = "journal.bkp"

.field private static final o00oO0O:Ljava/lang/String; = "CLEAN"

.field public static final o00oO0o:J = -0x1L

.field public static final o00ooo:Ljava/lang/String; = "libcore.io.DiskLruCache"

.field private static final o0ooOO0:Ljava/lang/String; = "DIRTY"

.field private static final o0ooOOo:Ljava/lang/String; = "REMOVE"

.field private static final o0ooOoO:Ljava/lang/String; = "READ"

.field public static final oo000o:Ljava/lang/String; = "1"


# instance fields
.field private final OoooOoO:Ljava/io/File;

.field private final OoooOoo:Ljava/io/File;

.field private final Ooooo00:Ljava/io/File;

.field private final Ooooo0o:Ljava/io/File;

.field private final OooooO0:I

.field private OooooOO:J

.field private final OooooOo:I

.field private Oooooo:Ljava/io/Writer;

.field private Oooooo0:J

.field private final OoooooO:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lz2/o0O00$OooO0o;",
            ">;"
        }
    .end annotation
.end field

.field private Ooooooo:I

.field private final o00O0O:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private o0OoOo0:J

.field public final ooOO:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method private constructor <init>(Ljava/io/File;IIJ)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lz2/o0O00;->Oooooo0:J

    new-instance v4, Ljava/util/LinkedHashMap;

    const/4 v5, 0x0

    const/high16 v6, 0x3f400000    # 0.75f

    const/4 v7, 0x1

    invoke-direct {v4, v5, v6, v7}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v4, v0, Lz2/o0O00;->OoooooO:Ljava/util/LinkedHashMap;

    iput-wide v2, v0, Lz2/o0O00;->o0OoOo0:J

    new-instance v2, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v13, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v14, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v14}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v15, Lz2/o0O00$OooO0O0;

    const/4 v3, 0x0

    invoke-direct {v15, v3}, Lz2/o0O00$OooO0O0;-><init>(Lz2/o0O00$OooO00o;)V

    const/4 v9, 0x0

    const/4 v10, 0x1

    const-wide/16 v11, 0x3c

    move-object v8, v2

    invoke-direct/range {v8 .. v15}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v2, v0, Lz2/o0O00;->ooOO:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v2, Lz2/o0O00$OooO00o;

    invoke-direct {v2, v0}, Lz2/o0O00$OooO00o;-><init>(Lz2/o0O00;)V

    iput-object v2, v0, Lz2/o0O00;->o00O0O:Ljava/util/concurrent/Callable;

    iput-object v1, v0, Lz2/o0O00;->OoooOoO:Ljava/io/File;

    move/from16 v2, p2

    iput v2, v0, Lz2/o0O00;->OooooO0:I

    new-instance v2, Ljava/io/File;

    const-string v3, "journal"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, v0, Lz2/o0O00;->OoooOoo:Ljava/io/File;

    new-instance v2, Ljava/io/File;

    const-string v3, "journal.tmp"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, v0, Lz2/o0O00;->Ooooo00:Ljava/io/File;

    new-instance v2, Ljava/io/File;

    const-string v3, "journal.bkp"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, v0, Lz2/o0O00;->Ooooo0o:Ljava/io/File;

    move/from16 v1, p3

    iput v1, v0, Lz2/o0O00;->OooooOo:I

    move-wide/from16 v1, p4

    iput-wide v1, v0, Lz2/o0O00;->OooooOO:J

    return-void
.end method

.method public static synthetic OooOO0(Lz2/o0O00;)Ljava/io/Writer;
    .locals 0

    iget-object p0, p0, Lz2/o0O00;->Oooooo:Ljava/io/Writer;

    return-object p0
.end method

.method public static synthetic OooooOo(Lz2/o0O00;Ljava/lang/String;J)Lz2/o0O00$OooO0OO;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lz2/o0O00;->o00oO0O(Ljava/lang/String;J)Lz2/o0O00$OooO0OO;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic Oooooo(Lz2/o0O00;)I
    .locals 0

    iget p0, p0, Lz2/o0O00;->OooooOo:I

    return p0
.end method

.method public static synthetic Oooooo0(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lz2/o0O00;->o0OOO0o(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic OoooooO(Lz2/o0O00;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lz2/o0O00;->o00000OO()V

    return-void
.end method

.method public static synthetic Ooooooo(Lz2/o0O00;)Ljava/io/File;
    .locals 0

    iget-object p0, p0, Lz2/o0O00;->OoooOoO:Ljava/io/File;

    return-object p0
.end method

.method private static o00000(Ljava/io/File;Ljava/io/File;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_0

    invoke-static {p1}, Lz2/o0O00;->oo000o(Ljava/io/File;)V

    :cond_0
    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p0

    if-eqz p0, :cond_1

    return-void

    :cond_1
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    throw p0
.end method

.method private o000000(Ljava/lang/String;)V
    .locals 8
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

    iget-object p1, p0, Lz2/o0O00;->OoooooO:Ljava/util/LinkedHashMap;

    invoke-virtual {p1, v4}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    :cond_1
    iget-object v5, p0, Lz2/o0O00;->OoooooO:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lz2/o0O00$OooO0o;

    const/4 v6, 0x0

    if-nez v5, :cond_2

    new-instance v5, Lz2/o0O00$OooO0o;

    invoke-direct {v5, p0, v4, v6}, Lz2/o0O00$OooO0o;-><init>(Lz2/o0O00;Ljava/lang/String;Lz2/o0O00$OooO00o;)V

    iget-object v7, p0, Lz2/o0O00;->OoooooO:Ljava/util/LinkedHashMap;

    invoke-virtual {v7, v4, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const/4 v4, 0x5

    if-eq v0, v3, :cond_3

    if-ne v1, v4, :cond_3

    const-string v7, "CLEAN"

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, v1}, Lz2/o0O00$OooO0o;->OooO0o(Lz2/o0O00$OooO0o;Z)Z

    invoke-static {v5, v6}, Lz2/o0O00$OooO0o;->OooO0oo(Lz2/o0O00$OooO0o;Lz2/o0O00$OooO0OO;)Lz2/o0O00$OooO0OO;

    invoke-static {v5, p1}, Lz2/o0O00$OooO0o;->OooO(Lz2/o0O00$OooO0o;[Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    if-ne v0, v3, :cond_4

    if-ne v1, v4, :cond_4

    const-string v4, "DIRTY"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    new-instance p1, Lz2/o0O00$OooO0OO;

    invoke-direct {p1, p0, v5, v6}, Lz2/o0O00$OooO0OO;-><init>(Lz2/o0O00;Lz2/o0O00$OooO0o;Lz2/o0O00$OooO00o;)V

    invoke-static {v5, p1}, Lz2/o0O00$OooO0o;->OooO0oo(Lz2/o0O00$OooO0o;Lz2/o0O00$OooO0OO;)Lz2/o0O00$OooO0OO;

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

.method private declared-synchronized o000000O()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lz2/o0O00;->Oooooo:Ljava/io/Writer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    :cond_0
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lz2/o0O00;->Ooooo00:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object v3, Lz2/o0O00O0o;->OooO00o:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v1, "libcore.io.DiskLruCache"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget v1, p0, Lz2/o0O00;->OooooO0:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget v1, p0, Lz2/o0O00;->OooooOo:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v1, p0, Lz2/o0O00;->OoooooO:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lz2/o0O00$OooO0o;

    invoke-static {v2}, Lz2/o0O00$OooO0o;->OooO0oO(Lz2/o0O00$OooO0o;)Lz2/o0O00$OooO0OO;

    move-result-object v3

    const/16 v4, 0xa

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DIRTY "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lz2/o0O00$OooO0o;->OooO0O0(Lz2/o0O00$OooO0o;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v0, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CLEAN "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lz2/o0O00$OooO0o;->OooO0O0(Lz2/o0O00$OooO0o;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lz2/o0O00$OooO0o;->OooOO0o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_2
    :try_start_2
    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    iget-object v0, p0, Lz2/o0O00;->OoooOoo:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lz2/o0O00;->OoooOoo:Ljava/io/File;

    iget-object v2, p0, Lz2/o0O00;->Ooooo0o:Ljava/io/File;

    invoke-static {v0, v2, v1}, Lz2/o0O00;->o00000(Ljava/io/File;Ljava/io/File;Z)V

    :cond_3
    iget-object v0, p0, Lz2/o0O00;->Ooooo00:Ljava/io/File;

    iget-object v2, p0, Lz2/o0O00;->OoooOoo:Ljava/io/File;

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lz2/o0O00;->o00000(Ljava/io/File;Ljava/io/File;Z)V

    iget-object v0, p0, Lz2/o0O00;->Ooooo0o:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, p0, Lz2/o0O00;->OoooOoo:Ljava/io/File;

    invoke-direct {v3, v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    sget-object v1, Lz2/o0O00O0o;->OooO00o:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Lz2/o0O00;->Oooooo:Ljava/io/Writer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    :try_start_3
    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private o00000OO()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    iget-wide v0, p0, Lz2/o0O00;->Oooooo0:J

    iget-wide v2, p0, Lz2/o0O00;->OooooOO:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    iget-object v0, p0, Lz2/o0O00;->OoooooO:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lz2/o0O00;->o000000o(Ljava/lang/String;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method private o000OOo()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, ", "

    new-instance v1, Lz2/o0OoO00O;

    new-instance v2, Ljava/io/FileInputStream;

    iget-object v3, p0, Lz2/o0O00;->OoooOoo:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    sget-object v3, Lz2/o0O00O0o;->OooO00o:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Lz2/o0OoO00O;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    :try_start_0
    invoke-virtual {v1}, Lz2/o0OoO00O;->Oooooo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lz2/o0OoO00O;->Oooooo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lz2/o0OoO00O;->Oooooo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lz2/o0OoO00O;->Oooooo()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lz2/o0OoO00O;->Oooooo()Ljava/lang/String;

    move-result-object v6

    const-string v7, "libcore.io.DiskLruCache"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "1"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    iget v7, p0, Lz2/o0O00;->OooooO0:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget v4, p0, Lz2/o0O00;->OooooOo:I

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
    invoke-virtual {v1}, Lz2/o0OoO00O;->Oooooo()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lz2/o0O00;->o000000(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    :try_start_2
    iget-object v2, p0, Lz2/o0O00;->OoooooO:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    sub-int/2addr v0, v2

    iput v0, p0, Lz2/o0O00;->Ooooooo:I

    invoke-virtual {v1}, Lz2/o0OoO00O;->Oooooo0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lz2/o0O00;->o000000O()V

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, p0, Lz2/o0O00;->OoooOoo:Ljava/io/File;

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    sget-object v4, Lz2/o0O00O0o;->OooO00o:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Lz2/o0O00;->Oooooo:Ljava/io/Writer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    invoke-static {v1}, Lz2/o0O00O0o;->OooO00o(Ljava/io/Closeable;)V

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

    invoke-static {v1}, Lz2/o0O00O0o;->OooO00o(Ljava/io/Closeable;)V

    throw v0
.end method

.method public static synthetic o00O0O(Lz2/o0O00;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lz2/o0O00;->o000000O()V

    return-void
.end method

.method public static synthetic o00Oo0(Lz2/o0O00;I)I
    .locals 0

    iput p1, p0, Lz2/o0O00;->Ooooooo:I

    return p1
.end method

.method private o00Ooo()V
    .locals 2

    iget-object v0, p0, Lz2/o0O00;->Oooooo:Ljava/io/Writer;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cache is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private declared-synchronized o00o0O(Lz2/o0O00$OooO0OO;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lz2/o0O00$OooO0OO;->OooO0OO(Lz2/o0O00$OooO0OO;)Lz2/o0O00$OooO0o;

    move-result-object v0

    invoke-static {v0}, Lz2/o0O00$OooO0o;->OooO0oO(Lz2/o0O00$OooO0o;)Lz2/o0O00$OooO0OO;

    move-result-object v1

    if-ne v1, p1, :cond_a

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    invoke-static {v0}, Lz2/o0O00$OooO0o;->OooO0o0(Lz2/o0O00$OooO0o;)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x0

    :goto_0
    iget v3, p0, Lz2/o0O00;->OooooOo:I

    if-ge v2, v3, :cond_2

    invoke-static {p1}, Lz2/o0O00$OooO0OO;->OooO0Oo(Lz2/o0O00$OooO0OO;)[Z

    move-result-object v3

    aget-boolean v3, v3, v2

    if-eqz v3, :cond_1

    invoke-virtual {v0, v2}, Lz2/o0O00$OooO0o;->OooOO0O(I)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p1}, Lz2/o0O00$OooO0OO;->OooO00o()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lz2/o0O00$OooO0OO;->OooO00o()V

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
    iget p1, p0, Lz2/o0O00;->OooooOo:I

    if-ge v1, p1, :cond_5

    invoke-virtual {v0, v1}, Lz2/o0O00$OooO0o;->OooOO0O(I)Ljava/io/File;

    move-result-object p1

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v0, v1}, Lz2/o0O00$OooO0o;->OooOO0(I)Ljava/io/File;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    invoke-static {v0}, Lz2/o0O00$OooO0o;->OooO00o(Lz2/o0O00$OooO0o;)[J

    move-result-object p1

    aget-wide v3, p1, v1

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v5

    invoke-static {v0}, Lz2/o0O00$OooO0o;->OooO00o(Lz2/o0O00$OooO0o;)[J

    move-result-object p1

    aput-wide v5, p1, v1

    iget-wide v7, p0, Lz2/o0O00;->Oooooo0:J

    sub-long/2addr v7, v3

    add-long/2addr v7, v5

    iput-wide v7, p0, Lz2/o0O00;->Oooooo0:J

    goto :goto_2

    :cond_3
    invoke-static {p1}, Lz2/o0O00;->oo000o(Ljava/io/File;)V

    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    iget p1, p0, Lz2/o0O00;->Ooooooo:I

    const/4 v1, 0x1

    add-int/2addr p1, v1

    iput p1, p0, Lz2/o0O00;->Ooooooo:I

    const/4 p1, 0x0

    invoke-static {v0, p1}, Lz2/o0O00$OooO0o;->OooO0oo(Lz2/o0O00$OooO0o;Lz2/o0O00$OooO0OO;)Lz2/o0O00$OooO0OO;

    invoke-static {v0}, Lz2/o0O00$OooO0o;->OooO0o0(Lz2/o0O00$OooO0o;)Z

    move-result p1

    or-int/2addr p1, p2

    const/16 v2, 0xa

    const/16 v3, 0x20

    if-eqz p1, :cond_6

    invoke-static {v0, v1}, Lz2/o0O00$OooO0o;->OooO0o(Lz2/o0O00$OooO0o;Z)Z

    iget-object p1, p0, Lz2/o0O00;->Oooooo:Ljava/io/Writer;

    const-string v1, "CLEAN"

    invoke-virtual {p1, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    iget-object p1, p0, Lz2/o0O00;->Oooooo:Ljava/io/Writer;

    invoke-virtual {p1, v3}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    iget-object p1, p0, Lz2/o0O00;->Oooooo:Ljava/io/Writer;

    invoke-static {v0}, Lz2/o0O00$OooO0o;->OooO0O0(Lz2/o0O00$OooO0o;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    iget-object p1, p0, Lz2/o0O00;->Oooooo:Ljava/io/Writer;

    invoke-virtual {v0}, Lz2/o0O00$OooO0o;->OooOO0o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    iget-object p1, p0, Lz2/o0O00;->Oooooo:Ljava/io/Writer;

    invoke-virtual {p1, v2}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    if-eqz p2, :cond_7

    iget-wide p1, p0, Lz2/o0O00;->o0OoOo0:J

    const-wide/16 v1, 0x1

    add-long/2addr v1, p1

    iput-wide v1, p0, Lz2/o0O00;->o0OoOo0:J

    invoke-static {v0, p1, p2}, Lz2/o0O00$OooO0o;->OooO0Oo(Lz2/o0O00$OooO0o;J)J

    goto :goto_3

    :cond_6
    iget-object p1, p0, Lz2/o0O00;->OoooooO:Ljava/util/LinkedHashMap;

    invoke-static {v0}, Lz2/o0O00$OooO0o;->OooO0O0(Lz2/o0O00$OooO0o;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lz2/o0O00;->Oooooo:Ljava/io/Writer;

    const-string p2, "REMOVE"

    invoke-virtual {p1, p2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    iget-object p1, p0, Lz2/o0O00;->Oooooo:Ljava/io/Writer;

    invoke-virtual {p1, v3}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    iget-object p1, p0, Lz2/o0O00;->Oooooo:Ljava/io/Writer;

    invoke-static {v0}, Lz2/o0O00$OooO0o;->OooO0O0(Lz2/o0O00$OooO0o;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    iget-object p1, p0, Lz2/o0O00;->Oooooo:Ljava/io/Writer;

    invoke-virtual {p1, v2}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    :cond_7
    :goto_3
    iget-object p1, p0, Lz2/o0O00;->Oooooo:Ljava/io/Writer;

    invoke-virtual {p1}, Ljava/io/Writer;->flush()V

    iget-wide p1, p0, Lz2/o0O00;->Oooooo0:J

    iget-wide v0, p0, Lz2/o0O00;->OooooOO:J

    cmp-long v2, p1, v0

    if-gtz v2, :cond_8

    invoke-direct {p0}, Lz2/o0O00;->o0OO00O()Z

    move-result p1

    if-eqz p1, :cond_9

    :cond_8
    iget-object p1, p0, Lz2/o0O00;->ooOO:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object p2, p0, Lz2/o0O00;->o00O0O:Ljava/util/concurrent/Callable;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
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

.method private declared-synchronized o00oO0O(Ljava/lang/String;J)Lz2/o0O00$OooO0OO;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lz2/o0O00;->o00Ooo()V

    iget-object v0, p0, Lz2/o0O00;->OoooooO:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz2/o0O00$OooO0o;

    const-wide/16 v1, -0x1

    const/4 v3, 0x0

    cmp-long v4, p2, v1

    if-eqz v4, :cond_1

    if-eqz v0, :cond_0

    invoke-static {v0}, Lz2/o0O00$OooO0o;->OooO0OO(Lz2/o0O00$OooO0o;)J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v4, v1, p2

    if-eqz v4, :cond_1

    :cond_0
    monitor-exit p0

    return-object v3

    :cond_1
    if-nez v0, :cond_2

    :try_start_1
    new-instance v0, Lz2/o0O00$OooO0o;

    invoke-direct {v0, p0, p1, v3}, Lz2/o0O00$OooO0o;-><init>(Lz2/o0O00;Ljava/lang/String;Lz2/o0O00$OooO00o;)V

    iget-object p2, p0, Lz2/o0O00;->OoooooO:Ljava/util/LinkedHashMap;

    invoke-virtual {p2, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lz2/o0O00$OooO0o;->OooO0oO(Lz2/o0O00$OooO0o;)Lz2/o0O00$OooO0OO;

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p2, :cond_3

    monitor-exit p0

    return-object v3

    :cond_3
    :goto_0
    :try_start_2
    new-instance p2, Lz2/o0O00$OooO0OO;

    invoke-direct {p2, p0, v0, v3}, Lz2/o0O00$OooO0OO;-><init>(Lz2/o0O00;Lz2/o0O00$OooO0o;Lz2/o0O00$OooO00o;)V

    invoke-static {v0, p2}, Lz2/o0O00$OooO0o;->OooO0oo(Lz2/o0O00$OooO0o;Lz2/o0O00$OooO0OO;)Lz2/o0O00$OooO0OO;

    iget-object p3, p0, Lz2/o0O00;->Oooooo:Ljava/io/Writer;

    const-string v0, "DIRTY"

    invoke-virtual {p3, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    iget-object p3, p0, Lz2/o0O00;->Oooooo:Ljava/io/Writer;

    const/16 v0, 0x20

    invoke-virtual {p3, v0}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    iget-object p3, p0, Lz2/o0O00;->Oooooo:Ljava/io/Writer;

    invoke-virtual {p3, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    iget-object p1, p0, Lz2/o0O00;->Oooooo:Ljava/io/Writer;

    const/16 p3, 0xa

    invoke-virtual {p1, p3}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    iget-object p1, p0, Lz2/o0O00;->Oooooo:Ljava/io/Writer;

    invoke-virtual {p1}, Ljava/io/Writer;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private o0O0O00()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lz2/o0O00;->Ooooo00:Ljava/io/File;

    invoke-static {v0}, Lz2/o0O00;->oo000o(Ljava/io/File;)V

    iget-object v0, p0, Lz2/o0O00;->OoooooO:Ljava/util/LinkedHashMap;

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

    check-cast v1, Lz2/o0O00$OooO0o;

    invoke-static {v1}, Lz2/o0O00$OooO0o;->OooO0oO(Lz2/o0O00$OooO0o;)Lz2/o0O00$OooO0OO;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    :goto_1
    iget v2, p0, Lz2/o0O00;->OooooOo:I

    if-ge v3, v2, :cond_0

    iget-wide v4, p0, Lz2/o0O00;->Oooooo0:J

    invoke-static {v1}, Lz2/o0O00$OooO0o;->OooO00o(Lz2/o0O00$OooO0o;)[J

    move-result-object v2

    aget-wide v6, v2, v3

    add-long/2addr v4, v6

    iput-wide v4, p0, Lz2/o0O00;->Oooooo0:J

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lz2/o0O00$OooO0o;->OooO0oo(Lz2/o0O00$OooO0o;Lz2/o0O00$OooO0OO;)Lz2/o0O00$OooO0OO;

    :goto_2
    iget v2, p0, Lz2/o0O00;->OooooOo:I

    if-ge v3, v2, :cond_2

    invoke-virtual {v1, v3}, Lz2/o0O00$OooO0o;->OooOO0(I)Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Lz2/o0O00;->oo000o(Ljava/io/File;)V

    invoke-virtual {v1, v3}, Lz2/o0O00$OooO0o;->OooOO0O(I)Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Lz2/o0O00;->oo000o(Ljava/io/File;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_3
    return-void
.end method

.method private o0OO00O()Z
    .locals 2

    iget v0, p0, Lz2/o0O00;->Ooooooo:I

    const/16 v1, 0x7d0

    if-lt v0, v1, :cond_0

    iget-object v1, p0, Lz2/o0O00;->OoooooO:Ljava/util/LinkedHashMap;

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

.method private static o0OOO0o(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/InputStreamReader;

    sget-object v1, Lz2/o0O00O0o;->OooO0O0:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-static {v0}, Lz2/o0O00O0o;->OooO0OO(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic o0OoOo0(Lz2/o0O00;Lz2/o0O00$OooO0OO;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lz2/o0O00;->o00o0O(Lz2/o0O00$OooO0OO;Z)V

    return-void
.end method

.method private static oo000o(Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public static oo0o0Oo(Ljava/io/File;IIJ)Lz2/o0O00;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p3, v0

    if-lez v2, :cond_4

    if-lez p2, :cond_3

    new-instance v0, Ljava/io/File;

    const-string v1, "journal.bkp"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/io/File;

    const-string v2, "journal"

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lz2/o0O00;->o00000(Ljava/io/File;Ljava/io/File;Z)V

    :cond_1
    :goto_0
    new-instance v0, Lz2/o0O00;

    move-object v3, v0

    move-object v4, p0

    move v5, p1

    move v6, p2

    move-wide v7, p3

    invoke-direct/range {v3 .. v8}, Lz2/o0O00;-><init>(Ljava/io/File;IIJ)V

    iget-object v1, v0, Lz2/o0O00;->OoooOoo:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    :try_start_0
    invoke-direct {v0}, Lz2/o0O00;->o000OOo()V

    invoke-direct {v0}, Lz2/o0O00;->o0O0O00()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DiskLruCache "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " is corrupt: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", removing"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Lz2/o0O00;->o00ooo()V

    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    new-instance v0, Lz2/o0O00;

    move-object v3, v0

    move-object v4, p0

    move v5, p1

    move v6, p2

    move-wide v7, p3

    invoke-direct/range {v3 .. v8}, Lz2/o0O00;-><init>(Ljava/io/File;IIJ)V

    invoke-direct {v0}, Lz2/o0O00;->o000000O()V

    return-object v0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "valueCount <= 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "maxSize <= 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic ooOO(Lz2/o0O00;)Z
    .locals 0

    invoke-direct {p0}, Lz2/o0O00;->o0OO00O()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lz2/o0O00;->Oooooo:Ljava/io/Writer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lz2/o0O00;->OoooooO:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lz2/o0O00$OooO0o;

    invoke-static {v1}, Lz2/o0O00$OooO0o;->OooO0oO(Lz2/o0O00$OooO0o;)Lz2/o0O00$OooO0OO;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {v1}, Lz2/o0O00$OooO0o;->OooO0oO(Lz2/o0O00$OooO0o;)Lz2/o0O00$OooO0OO;

    move-result-object v1

    invoke-virtual {v1}, Lz2/o0O00$OooO0OO;->OooO00o()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lz2/o0O00;->o00000OO()V

    iget-object v0, p0, Lz2/o0O00;->Oooooo:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lz2/o0O00;->Oooooo:Ljava/io/Writer;
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
    invoke-direct {p0}, Lz2/o0O00;->o00Ooo()V

    invoke-direct {p0}, Lz2/o0O00;->o00000OO()V

    iget-object v0, p0, Lz2/o0O00;->Oooooo:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized o000000o(Ljava/lang/String;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lz2/o0O00;->o00Ooo()V

    iget-object v0, p0, Lz2/o0O00;->OoooooO:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz2/o0O00$OooO0o;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-static {v0}, Lz2/o0O00$OooO0o;->OooO0oO(Lz2/o0O00$OooO0o;)Lz2/o0O00$OooO0OO;

    move-result-object v2

    if-eqz v2, :cond_0

    goto/16 :goto_2

    :cond_0
    :goto_0
    iget v2, p0, Lz2/o0O00;->OooooOo:I

    if-ge v1, v2, :cond_3

    invoke-virtual {v0, v1}, Lz2/o0O00$OooO0o;->OooOO0(I)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "failed to delete "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_1
    iget-wide v2, p0, Lz2/o0O00;->Oooooo0:J

    invoke-static {v0}, Lz2/o0O00$OooO0o;->OooO00o(Lz2/o0O00$OooO0o;)[J

    move-result-object v4

    aget-wide v5, v4, v1

    sub-long/2addr v2, v5

    iput-wide v2, p0, Lz2/o0O00;->Oooooo0:J

    invoke-static {v0}, Lz2/o0O00$OooO0o;->OooO00o(Lz2/o0O00$OooO0o;)[J

    move-result-object v2

    const-wide/16 v3, 0x0

    aput-wide v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    iget v0, p0, Lz2/o0O00;->Ooooooo:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lz2/o0O00;->Ooooooo:I

    iget-object v0, p0, Lz2/o0O00;->Oooooo:Ljava/io/Writer;

    const-string v2, "REMOVE"

    invoke-virtual {v0, v2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    iget-object v0, p0, Lz2/o0O00;->Oooooo:Ljava/io/Writer;

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    iget-object v0, p0, Lz2/o0O00;->Oooooo:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    iget-object v0, p0, Lz2/o0O00;->Oooooo:Ljava/io/Writer;

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    iget-object v0, p0, Lz2/o0O00;->OoooooO:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lz2/o0O00;->o0OO00O()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lz2/o0O00;->ooOO:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v0, p0, Lz2/o0O00;->o00O0O:Ljava/util/concurrent/Callable;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    monitor-exit p0

    return v1

    :cond_5
    :goto_2
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized o00000O()J
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lz2/o0O00;->Oooooo0:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized o00000O0(J)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-wide p1, p0, Lz2/o0O00;->OooooOO:J

    iget-object p1, p0, Lz2/o0O00;->ooOO:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object p2, p0, Lz2/o0O00;->o00O0O:Ljava/util/concurrent/Callable;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public o00oO0o(Ljava/lang/String;)Lz2/o0O00$OooO0OO;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, v0, v1}, Lz2/o0O00;->o00oO0O(Ljava/lang/String;J)Lz2/o0O00$OooO0OO;

    move-result-object p1

    return-object p1
.end method

.method public o00ooo()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lz2/o0O00;->close()V

    iget-object v0, p0, Lz2/o0O00;->OoooOoO:Ljava/io/File;

    invoke-static {v0}, Lz2/o0O00O0o;->OooO0O0(Ljava/io/File;)V

    return-void
.end method

.method public declared-synchronized o0Oo0oo()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lz2/o0O00;->Oooooo:Ljava/io/Writer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized o0ooOO0(Ljava/lang/String;)Lz2/o0O00$OooO;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lz2/o0O00;->o00Ooo()V

    iget-object v0, p0, Lz2/o0O00;->OoooooO:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz2/o0O00$OooO0o;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    monitor-exit p0

    return-object v1

    :cond_0
    :try_start_1
    invoke-static {v0}, Lz2/o0O00$OooO0o;->OooO0o0(Lz2/o0O00$OooO0o;)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_1

    monitor-exit p0

    return-object v1

    :cond_1
    :try_start_2
    iget-object v2, v0, Lz2/o0O00$OooO0o;->OooO0OO:[Ljava/io/File;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, v2, v4

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v5, :cond_2

    monitor-exit p0

    return-object v1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    :try_start_3
    iget v1, p0, Lz2/o0O00;->Ooooooo:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lz2/o0O00;->Ooooooo:I

    iget-object v1, p0, Lz2/o0O00;->Oooooo:Ljava/io/Writer;

    const-string v2, "READ"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    iget-object v1, p0, Lz2/o0O00;->Oooooo:Ljava/io/Writer;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    iget-object v1, p0, Lz2/o0O00;->Oooooo:Ljava/io/Writer;

    invoke-virtual {v1, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    iget-object v1, p0, Lz2/o0O00;->Oooooo:Ljava/io/Writer;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    invoke-direct {p0}, Lz2/o0O00;->o0OO00O()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lz2/o0O00;->ooOO:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v2, p0, Lz2/o0O00;->o00O0O:Ljava/util/concurrent/Callable;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    :cond_4
    new-instance v8, Lz2/o0O00$OooO;

    invoke-static {v0}, Lz2/o0O00$OooO0o;->OooO0OO(Lz2/o0O00$OooO0o;)J

    move-result-wide v3

    iget-object v5, v0, Lz2/o0O00$OooO0o;->OooO0OO:[Ljava/io/File;

    invoke-static {v0}, Lz2/o0O00$OooO0o;->OooO00o(Lz2/o0O00$OooO0o;)[J

    move-result-object v6

    const/4 v7, 0x0

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lz2/o0O00$OooO;-><init>(Lz2/o0O00;Ljava/lang/String;J[Ljava/io/File;[JLz2/o0O00$OooO00o;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v8

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public o0ooOOo()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lz2/o0O00;->OoooOoO:Ljava/io/File;

    return-object v0
.end method

.method public declared-synchronized o0ooOoO()J
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lz2/o0O00;->OooooOO:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
