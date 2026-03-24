.class public final Lcom/anythink/expressad/e/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/expressad/b;


# static fields
.field public static a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:Landroid/content/Context;

.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anythink/expressad/e/a;->c:Z

    return-void
.end method

.method private a()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anythink/expressad/e/a;->c:Z

    :try_start_0
    iget-object v0, p0, Lcom/anythink/expressad/e/a;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/anythink/expressad/foundation/g/f/m;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/anythink/expressad/foundation/b/b;->a()Lcom/anythink/expressad/foundation/b/b;

    move-result-object v0

    sget-object v1, Lcom/anythink/expressad/e/a;->a:Ljava/util/Map;

    iget-object v2, p0, Lcom/anythink/expressad/e/a;->b:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lcom/anythink/expressad/foundation/b/b;->a(Ljava/util/Map;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Map;Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/anythink/expressad/e/a;->b:Landroid/content/Context;

    sput-object p1, Lcom/anythink/expressad/e/a;->a:Ljava/util/Map;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/anythink/expressad/e/a;->c:Z

    :try_start_0
    invoke-static {p2}, Lcom/anythink/expressad/foundation/g/f/m;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/anythink/expressad/foundation/b/b;->a()Lcom/anythink/expressad/foundation/b/b;

    move-result-object p1

    sget-object p2, Lcom/anythink/expressad/e/a;->a:Ljava/util/Map;

    iget-object v0, p0, Lcom/anythink/expressad/e/a;->b:Landroid/content/Context;

    invoke-virtual {p1, p2, v0}, Lcom/anythink/expressad/foundation/b/b;->a(Ljava/util/Map;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method
