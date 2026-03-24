.class public Lcom/anythink/core/basead/b;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static volatile a:Lcom/anythink/core/basead/b;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/anythink/core/basead/b;
    .locals 2

    sget-object v0, Lcom/anythink/core/basead/b;->a:Lcom/anythink/core/basead/b;

    if-nez v0, :cond_1

    const-class v0, Lcom/anythink/core/basead/b;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/anythink/core/basead/b;->a:Lcom/anythink/core/basead/b;

    if-nez v1, :cond_0

    new-instance v1, Lcom/anythink/core/basead/b;

    invoke-direct {v1}, Lcom/anythink/core/basead/b;-><init>()V

    sput-object v1, Lcom/anythink/core/basead/b;->a:Lcom/anythink/core/basead/b;

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
    sget-object v0, Lcom/anythink/core/basead/b;->a:Lcom/anythink/core/basead/b;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "anythink_onlineapi_file"

    const-string v1, ""

    invoke-static {p0, v0, p1, v1}, Lcom/anythink/core/common/o/s;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/anythink/core/common/f/m;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/anythink/core/common/f/m;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/anythink/core/common/f/m;->c:Ljava/lang/String;

    iget p0, p0, Lcom/anythink/core/common/f/m;->f:I

    invoke-static {v0, v1, p0}, Lcom/anythink/core/basead/b;->a(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "anythink_onlineapi_file"

    invoke-static {p0, v0, p1, p2}, Lcom/anythink/core/common/o/s;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "anythink_onlineapi_file"

    invoke-static {p0, v0, p1}, Lcom/anythink/core/common/o/s;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
