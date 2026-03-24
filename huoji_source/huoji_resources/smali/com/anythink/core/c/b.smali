.class public Lcom/anythink/core/c/b;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static volatile a:Lcom/anythink/core/c/b;


# instance fields
.field private final b:Lcom/anythink/core/c/b/c;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/anythink/core/c/b/c;

    invoke-direct {v0}, Lcom/anythink/core/c/b/c;-><init>()V

    iput-object v0, p0, Lcom/anythink/core/c/b;->b:Lcom/anythink/core/c/b/c;

    return-void
.end method

.method public static a()Lcom/anythink/core/c/b;
    .locals 2

    sget-object v0, Lcom/anythink/core/c/b;->a:Lcom/anythink/core/c/b;

    if-nez v0, :cond_1

    const-class v0, Lcom/anythink/core/c/b;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/anythink/core/c/b;->a:Lcom/anythink/core/c/b;

    if-nez v1, :cond_0

    new-instance v1, Lcom/anythink/core/c/b;

    invoke-direct {v1}, Lcom/anythink/core/c/b;-><init>()V

    sput-object v1, Lcom/anythink/core/c/b;->a:Lcom/anythink/core/c/b;

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
    sget-object v0, Lcom/anythink/core/c/b;->a:Lcom/anythink/core/c/b;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/anythink/core/d/f;Lcom/anythink/core/d/d;)Lcom/anythink/core/c/a/d;
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/c/b;->b:Lcom/anythink/core/c/b/c;

    invoke-virtual {p2}, Lcom/anythink/core/d/f;->ao()I

    move-result p2

    invoke-virtual {v0, p1, p2, p3}, Lcom/anythink/core/c/b/c;->a(Ljava/lang/String;ILcom/anythink/core/d/d;)Lcom/anythink/core/c/a/d;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 2

    iget-object v0, p0, Lcom/anythink/core/c/b;->b:Lcom/anythink/core/c/b/c;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/anythink/core/c/b/c;->a(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;I)Lorg/json/JSONObject;
    .locals 2

    iget-object v0, p0, Lcom/anythink/core/c/b;->b:Lcom/anythink/core/c/b/c;

    const/4 v1, 0x4

    invoke-virtual {v0, p1, v1, p2}, Lcom/anythink/core/c/b/c;->a(Ljava/lang/String;II)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/anythink/core/common/f/au;Lcom/anythink/core/common/f/av;)V
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/c/b;->b:Lcom/anythink/core/c/b/c;

    invoke-virtual {v0, p1, p2}, Lcom/anythink/core/c/b/c;->a(Lcom/anythink/core/common/f/au;Lcom/anythink/core/common/f/av;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;ILcom/anythink/core/common/f/av;)V
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/c/b;->b:Lcom/anythink/core/c/b/c;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/anythink/core/c/b/c;->a(Ljava/lang/String;Ljava/lang/String;ILcom/anythink/core/common/f/av;)V

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/c/b;->b:Lcom/anythink/core/c/b/c;

    invoke-virtual {v0, p1}, Lcom/anythink/core/c/b/c;->b(Ljava/lang/String;)V

    return-void
.end method
