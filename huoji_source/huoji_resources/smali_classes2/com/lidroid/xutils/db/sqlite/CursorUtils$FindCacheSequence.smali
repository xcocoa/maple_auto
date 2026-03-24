.class public Lcom/lidroid/xutils/db/sqlite/CursorUtils$FindCacheSequence;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lidroid/xutils/db/sqlite/CursorUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FindCacheSequence"
.end annotation


# static fields
.field private static final FINDER_LAZY_LOADER_CLASS_NAME:Ljava/lang/String;

.field private static final FOREIGN_LAZY_LOADER_CLASS_NAME:Ljava/lang/String;

.field private static seq:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/lidroid/xutils/db/sqlite/ForeignLazyLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lidroid/xutils/db/sqlite/CursorUtils$FindCacheSequence;->FOREIGN_LAZY_LOADER_CLASS_NAME:Ljava/lang/String;

    const-class v0, Lcom/lidroid/xutils/db/sqlite/FinderLazyLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lidroid/xutils/db/sqlite/CursorUtils$FindCacheSequence;->FINDER_LAZY_LOADER_CLASS_NAME:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSeq()J
    .locals 4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x4

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/lidroid/xutils/db/sqlite/CursorUtils$FindCacheSequence;->FOREIGN_LAZY_LOADER_CLASS_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/lidroid/xutils/db/sqlite/CursorUtils$FindCacheSequence;->FINDER_LAZY_LOADER_CLASS_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-wide v0, Lcom/lidroid/xutils/db/sqlite/CursorUtils$FindCacheSequence;->seq:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    sput-wide v0, Lcom/lidroid/xutils/db/sqlite/CursorUtils$FindCacheSequence;->seq:J

    :cond_0
    sget-wide v0, Lcom/lidroid/xutils/db/sqlite/CursorUtils$FindCacheSequence;->seq:J

    return-wide v0
.end method
