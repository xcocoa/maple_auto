.class public Lcom/octopus/ad/utils/e;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static c:Lcom/octopus/ad/utils/e;


# instance fields
.field public a:Lcom/octopus/ad/utils/f;

.field private b:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "OnLineState"

    iput-object v0, p0, Lcom/octopus/ad/utils/e;->b:Ljava/lang/String;

    if-nez p1, :cond_0

    const-string p1, "OnLineState init failed,because context cann\'t be null "

    invoke-static {v0, p1}, Lcom/octopus/ad/utils/b/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Lcom/octopus/ad/utils/f;

    invoke-direct {v0}, Lcom/octopus/ad/utils/f;-><init>()V

    iput-object v0, p0, Lcom/octopus/ad/utils/e;->a:Lcom/octopus/ad/utils/f;

    invoke-virtual {v0, p1}, Lcom/octopus/ad/utils/f;->a(Landroid/content/Context;)V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/octopus/ad/utils/e;
    .locals 2

    sget-object v0, Lcom/octopus/ad/utils/e;->c:Lcom/octopus/ad/utils/e;

    if-nez v0, :cond_1

    const-class v0, Lcom/octopus/ad/utils/e;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/octopus/ad/utils/e;->c:Lcom/octopus/ad/utils/e;

    if-nez v1, :cond_0

    new-instance v1, Lcom/octopus/ad/utils/e;

    invoke-direct {v1, p0}, Lcom/octopus/ad/utils/e;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/octopus/ad/utils/e;->c:Lcom/octopus/ad/utils/e;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/octopus/ad/utils/e;->c:Lcom/octopus/ad/utils/e;

    return-object p0
.end method


# virtual methods
.method public a(Lcom/octopus/ad/utils/d;)V
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/utils/e;->a:Lcom/octopus/ad/utils/f;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/octopus/ad/utils/f;->a(Lcom/octopus/ad/utils/d;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/octopus/ad/utils/e;->b:Ljava/lang/String;

    const-string v0, "please init OnLineState first ,you can init it with \'OnLineState.init(context);\' in you BaseApplication "

    invoke-static {p1, v0}, Lcom/octopus/ad/utils/b/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
