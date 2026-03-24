.class public final Lcom/anythink/expressad/splash/d/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/expressad/splash/b/c;


# instance fields
.field private a:Lcom/anythink/expressad/out/d;

.field private b:Lcom/anythink/expressad/splash/d/c;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/anythink/expressad/splash/d/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/anythink/expressad/splash/d/b;->b:Lcom/anythink/expressad/splash/d/c;

    return-void
.end method

.method private a()V
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/splash/d/b;->a:Lcom/anythink/expressad/out/d;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anythink/expressad/splash/d/b;->a:Lcom/anythink/expressad/out/d;

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lcom/anythink/expressad/foundation/d/c;I)V
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/splash/d/b;->b:Lcom/anythink/expressad/splash/d/c;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/anythink/expressad/splash/d/c;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/anythink/expressad/splash/d/b;->a:Lcom/anythink/expressad/out/d;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/anythink/expressad/out/d;->a()V

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->t()I

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/splash/d/b;->b:Lcom/anythink/expressad/splash/d/c;

    invoke-virtual {v0}, Lcom/anythink/expressad/splash/d/c;->b()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    iget-object p2, p0, Lcom/anythink/expressad/splash/d/b;->b:Lcom/anythink/expressad/splash/d/c;

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Lcom/anythink/expressad/splash/d/c;->a(Lcom/anythink/expressad/foundation/d/c;Z)V

    :cond_1
    return-void
.end method

.method public final a(Lcom/anythink/expressad/out/d;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/splash/d/b;->a:Lcom/anythink/expressad/out/d;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/splash/d/b;->b:Lcom/anythink/expressad/splash/d/c;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/anythink/expressad/splash/d/c;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/anythink/expressad/splash/d/b;->a:Lcom/anythink/expressad/out/d;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/anythink/expressad/out/d;->a(Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lcom/anythink/expressad/splash/d/b;->b:Lcom/anythink/expressad/splash/d/c;

    invoke-virtual {p1}, Lcom/anythink/expressad/splash/d/c;->b()V

    :cond_1
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/splash/d/b;->d:Ljava/lang/String;

    return-void
.end method
