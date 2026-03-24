.class public final Lcom/anythink/china/common/a/a/a;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:I = 0x1

.field public static final b:I = 0x2

.field private static c:Lcom/anythink/china/common/a/a/a;


# instance fields
.field private d:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anythink/china/common/a/a/a;->d:Ljava/util/concurrent/ExecutorService;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/china/common/a/a/a;->d:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static a()Lcom/anythink/china/common/a/a/a;
    .locals 1

    sget-object v0, Lcom/anythink/china/common/a/a/a;->c:Lcom/anythink/china/common/a/a/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/anythink/china/common/a/a/a;

    invoke-direct {v0}, Lcom/anythink/china/common/a/a/a;-><init>()V

    sput-object v0, Lcom/anythink/china/common/a/a/a;->c:Lcom/anythink/china/common/a/a/a;

    :cond_0
    sget-object v0, Lcom/anythink/china/common/a/a/a;->c:Lcom/anythink/china/common/a/a/a;

    return-object v0
.end method

.method private static a(Lcom/anythink/china/common/a/a/a;)V
    .locals 0

    sput-object p0, Lcom/anythink/china/common/a/a/a;->c:Lcom/anythink/china/common/a/a/a;

    return-void
.end method

.method private a(Ljava/lang/Runnable;)V
    .locals 5

    if-eqz p1, :cond_0

    new-instance v0, Lcom/anythink/china/common/a/a/a$1;

    invoke-direct {v0, p0, p1}, Lcom/anythink/china/common/a/a/a$1;-><init>(Lcom/anythink/china/common/a/a/a;Ljava/lang/Runnable;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->intValue()I

    move-result p1

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/anythink/core/common/o/b/d;->a(J)V

    invoke-virtual {p0, v0}, Lcom/anythink/china/common/a/a/a;->a(Lcom/anythink/core/common/o/b/d;)V

    :cond_0
    return-void
.end method

.method private b()V
    .locals 1

    iget-object v0, p0, Lcom/anythink/china/common/a/a/a;->d:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void
.end method

.method private b(Lcom/anythink/core/common/o/b/d;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/anythink/china/common/a/a/a;->a(Lcom/anythink/core/common/o/b/d;)V

    return-void
.end method

.method private b(Ljava/lang/Runnable;)V
    .locals 5

    if-eqz p1, :cond_0

    new-instance v0, Lcom/anythink/china/common/a/a/a$1;

    invoke-direct {v0, p0, p1}, Lcom/anythink/china/common/a/a/a$1;-><init>(Lcom/anythink/china/common/a/a/a;Ljava/lang/Runnable;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->intValue()I

    move-result p1

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/anythink/core/common/o/b/d;->a(J)V

    invoke-virtual {p0, v0}, Lcom/anythink/china/common/a/a/a;->a(Lcom/anythink/core/common/o/b/d;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lcom/anythink/core/common/o/b/d;)V
    .locals 1

    iget-object v0, p0, Lcom/anythink/china/common/a/a/a;->d:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
