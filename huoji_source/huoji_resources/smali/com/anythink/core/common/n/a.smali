.class public Lcom/anythink/core/common/n/a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/core/common/n/a$a;
    }
.end annotation


# static fields
.field private static volatile a:Lcom/anythink/core/common/n/a;


# instance fields
.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/anythink/core/common/n/a$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/anythink/core/common/n/a;->b:Ljava/util/Map;

    return-void
.end method

.method public static a()Lcom/anythink/core/common/n/a;
    .locals 2

    sget-object v0, Lcom/anythink/core/common/n/a;->a:Lcom/anythink/core/common/n/a;

    if-nez v0, :cond_1

    const-class v0, Lcom/anythink/core/common/n/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/anythink/core/common/n/a;->a:Lcom/anythink/core/common/n/a;

    if-nez v1, :cond_0

    new-instance v1, Lcom/anythink/core/common/n/a;

    invoke-direct {v1}, Lcom/anythink/core/common/n/a;-><init>()V

    sput-object v1, Lcom/anythink/core/common/n/a;->a:Lcom/anythink/core/common/n/a;

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/anythink/core/common/n/a;->a:Lcom/anythink/core/common/n/a;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/anythink/core/common/n/a;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/core/common/n/a$a;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/anythink/core/common/n/a$a;->a(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/anythink/core/common/n/a$a;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/anythink/core/common/n/a;->b:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
