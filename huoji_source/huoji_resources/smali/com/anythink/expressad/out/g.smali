.class public Lcom/anythink/expressad/out/g;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static a:Lcom/anythink/expressad/e/a;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/anythink/expressad/e/a;
    .locals 2

    sget-object v0, Lcom/anythink/expressad/out/g;->a:Lcom/anythink/expressad/e/a;

    if-nez v0, :cond_1

    const-class v0, Lcom/anythink/expressad/out/g;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/anythink/expressad/out/g;->a:Lcom/anythink/expressad/e/a;

    if-nez v1, :cond_0

    new-instance v1, Lcom/anythink/expressad/e/a;

    invoke-direct {v1}, Lcom/anythink/expressad/e/a;-><init>()V

    sput-object v1, Lcom/anythink/expressad/out/g;->a:Lcom/anythink/expressad/e/a;

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
    sget-object v0, Lcom/anythink/expressad/out/g;->a:Lcom/anythink/expressad/e/a;

    return-object v0
.end method
