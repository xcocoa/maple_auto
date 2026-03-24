.class public Lcom/anythink/core/common/d/c;
.super Lcom/anythink/core/common/d/a;
.source ""


# static fields
.field private static volatile c:Lcom/anythink/core/common/d/c;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/anythink/core/common/d/a;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    iput p1, p0, Lcom/anythink/core/common/d/a;->b:I

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/anythink/core/common/d/c;
    .locals 2

    sget-object v0, Lcom/anythink/core/common/d/c;->c:Lcom/anythink/core/common/d/c;

    if-nez v0, :cond_1

    const-class v0, Lcom/anythink/core/common/d/c;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/anythink/core/common/d/c;->c:Lcom/anythink/core/common/d/c;

    if-nez v1, :cond_0

    new-instance v1, Lcom/anythink/core/common/d/c;

    invoke-direct {v1, p0}, Lcom/anythink/core/common/d/c;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/anythink/core/common/d/c;->c:Lcom/anythink/core/common/d/c;

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/anythink/core/common/d/c;->c:Lcom/anythink/core/common/d/c;

    return-object p0
.end method
