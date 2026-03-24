.class public final Lcom/anythink/expressad/advanced/d/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/expressad/advanced/b/a;


# instance fields
.field private a:Lcom/anythink/expressad/out/o;

.field private b:Lcom/anythink/expressad/advanced/d/c;


# direct methods
.method public constructor <init>(Lcom/anythink/expressad/advanced/d/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/anythink/expressad/advanced/d/b;->b:Lcom/anythink/expressad/advanced/d/c;

    return-void
.end method

.method private static a()V
    .locals 0

    return-void
.end method

.method private b()V
    .locals 2

    iget-object v0, p0, Lcom/anythink/expressad/advanced/d/b;->a:Lcom/anythink/expressad/out/o;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/anythink/expressad/advanced/d/b;->a:Lcom/anythink/expressad/out/o;

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/advanced/d/b;->b:Lcom/anythink/expressad/advanced/d/c;

    if-eqz v0, :cond_1

    iput-object v1, p0, Lcom/anythink/expressad/advanced/d/b;->b:Lcom/anythink/expressad/advanced/d/c;

    :cond_1
    return-void
.end method


# virtual methods
.method public final a(Lcom/anythink/expressad/foundation/d/c;I)V
    .locals 2

    iget-object v0, p0, Lcom/anythink/expressad/advanced/d/b;->b:Lcom/anythink/expressad/advanced/d/c;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/anythink/expressad/advanced/d/c;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/anythink/expressad/advanced/d/b;->a:Lcom/anythink/expressad/out/o;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/anythink/expressad/advanced/d/b;->b:Lcom/anythink/expressad/advanced/d/c;

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lcom/anythink/expressad/out/o;->a()V

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/advanced/d/b;->b:Lcom/anythink/expressad/advanced/d/c;

    invoke-virtual {v0}, Lcom/anythink/expressad/advanced/d/c;->b()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    iget-object p2, p0, Lcom/anythink/expressad/advanced/d/b;->b:Lcom/anythink/expressad/advanced/d/c;

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Lcom/anythink/expressad/advanced/d/c;->a(Lcom/anythink/expressad/foundation/d/c;Z)V

    :cond_1
    return-void
.end method

.method public final a(Lcom/anythink/expressad/out/o;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/advanced/d/b;->a:Lcom/anythink/expressad/out/o;

    return-void
.end method

.method public final a(Ljava/lang/String;I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onLoadFailed: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/anythink/expressad/advanced/d/b;->b:Lcom/anythink/expressad/advanced/d/c;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/anythink/expressad/advanced/d/c;->a()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/anythink/expressad/advanced/d/b;->a:Lcom/anythink/expressad/out/o;

    if-eqz p2, :cond_0

    invoke-interface {p2, p1}, Lcom/anythink/expressad/out/o;->a(Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lcom/anythink/expressad/advanced/d/b;->b:Lcom/anythink/expressad/advanced/d/c;

    invoke-virtual {p1}, Lcom/anythink/expressad/advanced/d/c;->b()V

    :cond_1
    return-void
.end method
