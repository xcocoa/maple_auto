.class public final Lcom/anythink/expressad/foundation/g/f/m;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static c:Lcom/anythink/expressad/foundation/g/f/m;


# instance fields
.field private a:Lcom/anythink/expressad/foundation/g/f/j;

.field private b:Lcom/anythink/expressad/foundation/g/f/d/b;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/anythink/expressad/foundation/g/f/d/b;
    .locals 3

    sget-object v0, Lcom/anythink/expressad/foundation/g/f/m;->c:Lcom/anythink/expressad/foundation/g/f/m;

    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/anythink/expressad/foundation/g/f/m;->b:Lcom/anythink/expressad/foundation/g/f/d/b;

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    new-instance v1, Lcom/anythink/expressad/foundation/g/f/d/b;

    invoke-static {}, Lcom/anythink/expressad/foundation/g/f/m;->b()Lcom/anythink/expressad/foundation/g/f/j;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/anythink/expressad/foundation/g/f/d/b;-><init>(Lcom/anythink/expressad/foundation/g/f/j;)V

    :goto_0
    iput-object v1, v0, Lcom/anythink/expressad/foundation/g/f/m;->b:Lcom/anythink/expressad/foundation/g/f/d/b;

    :cond_1
    sget-object v0, Lcom/anythink/expressad/foundation/g/f/m;->c:Lcom/anythink/expressad/foundation/g/f/m;

    iget-object v0, v0, Lcom/anythink/expressad/foundation/g/f/m;->b:Lcom/anythink/expressad/foundation/g/f/d/b;

    return-object v0

    :cond_2
    new-instance v0, Lcom/anythink/expressad/foundation/g/f/m;

    invoke-direct {v0}, Lcom/anythink/expressad/foundation/g/f/m;-><init>()V

    sput-object v0, Lcom/anythink/expressad/foundation/g/f/m;->c:Lcom/anythink/expressad/foundation/g/f/m;

    iget-object v1, v0, Lcom/anythink/expressad/foundation/g/f/m;->b:Lcom/anythink/expressad/foundation/g/f/d/b;

    if-nez v1, :cond_1

    new-instance v1, Lcom/anythink/expressad/foundation/g/f/d/b;

    invoke-static {}, Lcom/anythink/expressad/foundation/g/f/m;->b()Lcom/anythink/expressad/foundation/g/f/j;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/anythink/expressad/foundation/g/f/d/b;-><init>(Lcom/anythink/expressad/foundation/g/f/j;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    sget-object v0, Lcom/anythink/expressad/foundation/g/f/m;->c:Lcom/anythink/expressad/foundation/g/f/m;

    if-nez v0, :cond_0

    new-instance v0, Lcom/anythink/expressad/foundation/g/f/m;

    invoke-direct {v0}, Lcom/anythink/expressad/foundation/g/f/m;-><init>()V

    sput-object v0, Lcom/anythink/expressad/foundation/g/f/m;->c:Lcom/anythink/expressad/foundation/g/f/m;

    new-instance v1, Lcom/anythink/expressad/foundation/g/f/j;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/anythink/expressad/foundation/g/f/j;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/anythink/expressad/foundation/g/f/m;->a:Lcom/anythink/expressad/foundation/g/f/j;

    sget-object p0, Lcom/anythink/expressad/foundation/g/f/m;->c:Lcom/anythink/expressad/foundation/g/f/m;

    new-instance v0, Lcom/anythink/expressad/foundation/g/f/d/b;

    invoke-static {}, Lcom/anythink/expressad/foundation/g/f/m;->b()Lcom/anythink/expressad/foundation/g/f/j;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/anythink/expressad/foundation/g/f/d/b;-><init>(Lcom/anythink/expressad/foundation/g/f/j;)V

    iput-object v0, p0, Lcom/anythink/expressad/foundation/g/f/m;->b:Lcom/anythink/expressad/foundation/g/f/d/b;

    :cond_0
    return-void
.end method

.method public static a(Lcom/anythink/expressad/foundation/g/f/i;)V
    .locals 1

    invoke-static {}, Lcom/anythink/expressad/foundation/g/f/m;->b()Lcom/anythink/expressad/foundation/g/f/j;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/anythink/expressad/foundation/g/f/j;->a(Lcom/anythink/expressad/foundation/g/f/i;)V

    return-void
.end method

.method private static b()Lcom/anythink/expressad/foundation/g/f/j;
    .locals 3

    sget-object v0, Lcom/anythink/expressad/foundation/g/f/m;->c:Lcom/anythink/expressad/foundation/g/f/m;

    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/anythink/expressad/foundation/g/f/m;->a:Lcom/anythink/expressad/foundation/g/f/j;

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    new-instance v1, Lcom/anythink/expressad/foundation/g/f/j;

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/anythink/expressad/foundation/g/f/j;-><init>(Landroid/content/Context;)V

    :goto_0
    iput-object v1, v0, Lcom/anythink/expressad/foundation/g/f/m;->a:Lcom/anythink/expressad/foundation/g/f/j;

    :cond_1
    sget-object v0, Lcom/anythink/expressad/foundation/g/f/m;->c:Lcom/anythink/expressad/foundation/g/f/m;

    iget-object v0, v0, Lcom/anythink/expressad/foundation/g/f/m;->a:Lcom/anythink/expressad/foundation/g/f/j;

    return-object v0

    :cond_2
    new-instance v0, Lcom/anythink/expressad/foundation/g/f/m;

    invoke-direct {v0}, Lcom/anythink/expressad/foundation/g/f/m;-><init>()V

    sput-object v0, Lcom/anythink/expressad/foundation/g/f/m;->c:Lcom/anythink/expressad/foundation/g/f/m;

    iget-object v1, v0, Lcom/anythink/expressad/foundation/g/f/m;->a:Lcom/anythink/expressad/foundation/g/f/j;

    if-nez v1, :cond_1

    new-instance v1, Lcom/anythink/expressad/foundation/g/f/j;

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/anythink/expressad/foundation/g/f/j;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private static c()V
    .locals 2

    sget-object v0, Lcom/anythink/expressad/foundation/g/f/m;->c:Lcom/anythink/expressad/foundation/g/f/m;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/anythink/expressad/foundation/g/f/m;->b:Lcom/anythink/expressad/foundation/g/f/d/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/g/f/d/b;->a()V

    sget-object v0, Lcom/anythink/expressad/foundation/g/f/m;->c:Lcom/anythink/expressad/foundation/g/f/m;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/anythink/expressad/foundation/g/f/m;->b:Lcom/anythink/expressad/foundation/g/f/d/b;

    :cond_0
    return-void
.end method
