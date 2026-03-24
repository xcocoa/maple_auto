.class public final Lcom/anythink/basead/a/b/b$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/basead/a/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/basead/a/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/anythink/basead/a/a/b<",
        "Ljava/lang/Void;",
        "Lcom/anythink/basead/c/e;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/basead/a/b/b;


# direct methods
.method private constructor <init>(Lcom/anythink/basead/a/b/b;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/basead/a/b/b$a;->a:Lcom/anythink/basead/a/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/anythink/basead/a/b/b;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/anythink/basead/a/b/b$a;-><init>(Lcom/anythink/basead/a/b/b;)V

    return-void
.end method

.method private a(Lcom/anythink/basead/c/e;)V
    .locals 2

    iget-object v0, p0, Lcom/anythink/basead/a/b/b$a;->a:Lcom/anythink/basead/a/b/b;

    invoke-static {v0}, Lcom/anythink/basead/a/b/b;->c(Lcom/anythink/basead/a/b/b;)Lcom/anythink/basead/a/b/b$b;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/anythink/basead/a/b/b;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Offer load failed, OfferId -> "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/anythink/basead/a/b/b$a;->a:Lcom/anythink/basead/a/b/b;

    invoke-static {v1}, Lcom/anythink/basead/a/b/b;->d(Lcom/anythink/basead/a/b/b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/anythink/basead/a/b/b$a;->a:Lcom/anythink/basead/a/b/b;

    invoke-static {v0}, Lcom/anythink/basead/a/b/b;->c(Lcom/anythink/basead/a/b/b;)Lcom/anythink/basead/a/b/b$b;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/anythink/basead/a/b/b$b;->a(Lcom/anythink/basead/c/e;)V

    :cond_0
    iget-object p1, p0, Lcom/anythink/basead/a/b/b$a;->a:Lcom/anythink/basead/a/b/b;

    invoke-static {p1}, Lcom/anythink/basead/a/b/b;->e(Lcom/anythink/basead/a/b/b;)V

    return-void
.end method

.method private b()V
    .locals 2

    iget-object v0, p0, Lcom/anythink/basead/a/b/b$a;->a:Lcom/anythink/basead/a/b/b;

    invoke-static {v0}, Lcom/anythink/basead/a/b/b;->c(Lcom/anythink/basead/a/b/b;)Lcom/anythink/basead/a/b/b$b;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/anythink/basead/a/b/b;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Offer load success, OfferId -> "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/anythink/basead/a/b/b$a;->a:Lcom/anythink/basead/a/b/b;

    invoke-static {v1}, Lcom/anythink/basead/a/b/b;->d(Lcom/anythink/basead/a/b/b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/anythink/basead/a/b/b$a;->a:Lcom/anythink/basead/a/b/b;

    invoke-static {v0}, Lcom/anythink/basead/a/b/b;->c(Lcom/anythink/basead/a/b/b;)Lcom/anythink/basead/a/b/b$b;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/basead/a/b/b$b;->a()V

    :cond_0
    iget-object v0, p0, Lcom/anythink/basead/a/b/b$a;->a:Lcom/anythink/basead/a/b/b;

    invoke-static {v0}, Lcom/anythink/basead/a/b/b;->e(Lcom/anythink/basead/a/b/b;)V

    return-void
.end method


# virtual methods
.method public final synthetic a()V
    .locals 2

    iget-object v0, p0, Lcom/anythink/basead/a/b/b$a;->a:Lcom/anythink/basead/a/b/b;

    invoke-static {v0}, Lcom/anythink/basead/a/b/b;->c(Lcom/anythink/basead/a/b/b;)Lcom/anythink/basead/a/b/b$b;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/anythink/basead/a/b/b;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Offer load success, OfferId -> "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/anythink/basead/a/b/b$a;->a:Lcom/anythink/basead/a/b/b;

    invoke-static {v1}, Lcom/anythink/basead/a/b/b;->d(Lcom/anythink/basead/a/b/b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/anythink/basead/a/b/b$a;->a:Lcom/anythink/basead/a/b/b;

    invoke-static {v0}, Lcom/anythink/basead/a/b/b;->c(Lcom/anythink/basead/a/b/b;)Lcom/anythink/basead/a/b/b$b;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/basead/a/b/b$b;->a()V

    :cond_0
    iget-object v0, p0, Lcom/anythink/basead/a/b/b$a;->a:Lcom/anythink/basead/a/b/b;

    invoke-static {v0}, Lcom/anythink/basead/a/b/b;->e(Lcom/anythink/basead/a/b/b;)V

    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lcom/anythink/basead/c/e;

    iget-object v0, p0, Lcom/anythink/basead/a/b/b$a;->a:Lcom/anythink/basead/a/b/b;

    invoke-static {v0}, Lcom/anythink/basead/a/b/b;->c(Lcom/anythink/basead/a/b/b;)Lcom/anythink/basead/a/b/b$b;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/anythink/basead/a/b/b;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Offer load failed, OfferId -> "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/anythink/basead/a/b/b$a;->a:Lcom/anythink/basead/a/b/b;

    invoke-static {v1}, Lcom/anythink/basead/a/b/b;->d(Lcom/anythink/basead/a/b/b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/anythink/basead/a/b/b$a;->a:Lcom/anythink/basead/a/b/b;

    invoke-static {v0}, Lcom/anythink/basead/a/b/b;->c(Lcom/anythink/basead/a/b/b;)Lcom/anythink/basead/a/b/b$b;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/anythink/basead/a/b/b$b;->a(Lcom/anythink/basead/c/e;)V

    :cond_0
    iget-object p1, p0, Lcom/anythink/basead/a/b/b$a;->a:Lcom/anythink/basead/a/b/b;

    invoke-static {p1}, Lcom/anythink/basead/a/b/b;->e(Lcom/anythink/basead/a/b/b;)V

    return-void
.end method
