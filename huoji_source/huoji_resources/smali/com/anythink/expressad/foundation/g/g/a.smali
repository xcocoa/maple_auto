.class public abstract Lcom/anythink/expressad/foundation/g/g/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/expressad/foundation/g/g/a$b;,
        Lcom/anythink/expressad/foundation/g/g/a$a;
    }
.end annotation


# static fields
.field public static b:J


# instance fields
.field public c:Lcom/anythink/expressad/foundation/g/g/a$a;

.field public d:Lcom/anythink/expressad/foundation/g/g/a$b;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/anythink/expressad/foundation/g/g/a$a;->a:Lcom/anythink/expressad/foundation/g/g/a$a;

    iput-object v0, p0, Lcom/anythink/expressad/foundation/g/g/a;->c:Lcom/anythink/expressad/foundation/g/g/a$a;

    sget-wide v0, Lcom/anythink/expressad/foundation/g/g/a;->b:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    sput-wide v0, Lcom/anythink/expressad/foundation/g/g/a;->b:J

    return-void
.end method

.method private a(Lcom/anythink/expressad/foundation/g/g/a$a;)V
    .locals 1

    iput-object p1, p0, Lcom/anythink/expressad/foundation/g/g/a;->c:Lcom/anythink/expressad/foundation/g/g/a$a;

    iget-object v0, p0, Lcom/anythink/expressad/foundation/g/g/a;->d:Lcom/anythink/expressad/foundation/g/g/a$b;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/anythink/expressad/foundation/g/g/a$b;->a(Lcom/anythink/expressad/foundation/g/g/a$a;)V

    :cond_0
    return-void
.end method

.method private a(Lcom/anythink/expressad/foundation/g/g/a$b;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/foundation/g/g/a;->d:Lcom/anythink/expressad/foundation/g/g/a$b;

    return-void
.end method

.method private d()Lcom/anythink/expressad/foundation/g/g/a$a;
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/foundation/g/g/a;->c:Lcom/anythink/expressad/foundation/g/g/a$a;

    return-object v0
.end method

.method public static e()J
    .locals 2

    sget-wide v0, Lcom/anythink/expressad/foundation/g/g/a;->b:J

    return-wide v0
.end method


# virtual methods
.method public abstract a()V
.end method

.method public abstract b()V
.end method

.method public abstract c()V
.end method

.method public final f()V
    .locals 2

    iget-object v0, p0, Lcom/anythink/expressad/foundation/g/g/a;->c:Lcom/anythink/expressad/foundation/g/g/a$a;

    sget-object v1, Lcom/anythink/expressad/foundation/g/g/a$a;->d:Lcom/anythink/expressad/foundation/g/g/a$a;

    if-eq v0, v1, :cond_0

    invoke-direct {p0, v1}, Lcom/anythink/expressad/foundation/g/g/a;->a(Lcom/anythink/expressad/foundation/g/g/a$a;)V

    :cond_0
    return-void
.end method

.method public final g()V
    .locals 2

    iget-object v0, p0, Lcom/anythink/expressad/foundation/g/g/a;->c:Lcom/anythink/expressad/foundation/g/g/a$a;

    sget-object v1, Lcom/anythink/expressad/foundation/g/g/a$a;->c:Lcom/anythink/expressad/foundation/g/g/a$a;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/anythink/expressad/foundation/g/g/a$a;->d:Lcom/anythink/expressad/foundation/g/g/a$a;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/anythink/expressad/foundation/g/g/a$a;->e:Lcom/anythink/expressad/foundation/g/g/a$a;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/anythink/expressad/foundation/g/g/a$a;->b:Lcom/anythink/expressad/foundation/g/g/a$a;

    invoke-direct {p0, v0}, Lcom/anythink/expressad/foundation/g/g/a;->a(Lcom/anythink/expressad/foundation/g/g/a$a;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/anythink/expressad/foundation/g/g/a;->c:Lcom/anythink/expressad/foundation/g/g/a$a;

    sget-object v1, Lcom/anythink/expressad/foundation/g/g/a$a;->a:Lcom/anythink/expressad/foundation/g/g/a$a;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/anythink/expressad/foundation/g/g/a$a;->b:Lcom/anythink/expressad/foundation/g/g/a$a;

    invoke-direct {p0, v0}, Lcom/anythink/expressad/foundation/g/g/a;->a(Lcom/anythink/expressad/foundation/g/g/a$a;)V

    invoke-virtual {p0}, Lcom/anythink/expressad/foundation/g/g/a;->a()V

    sget-object v0, Lcom/anythink/expressad/foundation/g/g/a$a;->e:Lcom/anythink/expressad/foundation/g/g/a$a;

    invoke-direct {p0, v0}, Lcom/anythink/expressad/foundation/g/g/a;->a(Lcom/anythink/expressad/foundation/g/g/a$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
