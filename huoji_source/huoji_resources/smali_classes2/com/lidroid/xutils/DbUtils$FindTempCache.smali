.class public Lcom/lidroid/xutils/DbUtils$FindTempCache;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lidroid/xutils/DbUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FindTempCache"
.end annotation


# instance fields
.field private final cache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private seq:J

.field public final synthetic this$0:Lcom/lidroid/xutils/DbUtils;


# direct methods
.method private constructor <init>(Lcom/lidroid/xutils/DbUtils;)V
    .locals 2

    iput-object p1, p0, Lcom/lidroid/xutils/DbUtils$FindTempCache;->this$0:Lcom/lidroid/xutils/DbUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/lidroid/xutils/DbUtils$FindTempCache;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lidroid/xutils/DbUtils$FindTempCache;->seq:J

    return-void
.end method

.method public synthetic constructor <init>(Lcom/lidroid/xutils/DbUtils;Lcom/lidroid/xutils/DbUtils$FindTempCache;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/lidroid/xutils/DbUtils$FindTempCache;-><init>(Lcom/lidroid/xutils/DbUtils;)V

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/lidroid/xutils/DbUtils$FindTempCache;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/lidroid/xutils/DbUtils$FindTempCache;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public setSeq(J)V
    .locals 3

    iget-wide v0, p0, Lcom/lidroid/xutils/DbUtils$FindTempCache;->seq:J

    cmp-long v2, v0, p1

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/lidroid/xutils/DbUtils$FindTempCache;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    iput-wide p1, p0, Lcom/lidroid/xutils/DbUtils$FindTempCache;->seq:J

    :cond_0
    return-void
.end method
