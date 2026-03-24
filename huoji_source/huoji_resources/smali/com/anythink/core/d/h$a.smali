.class public final Lcom/anythink/core/d/h$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/core/d/h$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/core/d/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lcom/anythink/core/d/h$b;

.field private volatile c:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/anythink/core/d/h$b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anythink/core/d/h$a;->c:Z

    iput-object p1, p0, Lcom/anythink/core/d/h$a;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/anythink/core/d/h$a;->b:Lcom/anythink/core/d/h$b;

    return-void
.end method

.method public static synthetic a(Lcom/anythink/core/d/h$a;Lcom/anythink/core/d/h$b;)Lcom/anythink/core/d/h$b;
    .locals 0

    iput-object p1, p0, Lcom/anythink/core/d/h$a;->b:Lcom/anythink/core/d/h$b;

    return-object p1
.end method


# virtual methods
.method public final a(Lcom/anythink/core/api/AdError;)V
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/d/h$a;->b:Lcom/anythink/core/d/h$b;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/anythink/core/d/h$a;->c:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/core/d/h$a;->c:Z

    iget-object v0, p0, Lcom/anythink/core/d/h$a;->b:Lcom/anythink/core/d/h$b;

    invoke-interface {v0, p1}, Lcom/anythink/core/d/h$b;->a(Lcom/anythink/core/api/AdError;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/anythink/core/d/f;)V
    .locals 3

    iget-object v0, p0, Lcom/anythink/core/d/h$a;->b:Lcom/anythink/core/d/h$b;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/anythink/core/d/h$a;->c:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/anythink/core/d/f;->aR()I

    move-result v0

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/anythink/core/d/h;->a(Landroid/content/Context;)Lcom/anythink/core/d/h;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/core/d/h$a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/anythink/core/d/h;->b(Ljava/lang/String;I)V

    sget-object v0, Lcom/anythink/core/d/h;->a:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/core/d/h$a;->c:Z

    iget-object v0, p0, Lcom/anythink/core/d/h$a;->b:Lcom/anythink/core/d/h$b;

    invoke-interface {v0, p1}, Lcom/anythink/core/d/h$b;->a(Lcom/anythink/core/d/f;)V

    :cond_0
    return-void
.end method

.method public final b(Lcom/anythink/core/d/f;)V
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/d/h$a;->b:Lcom/anythink/core/d/h$b;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/anythink/core/d/h$b;->b(Lcom/anythink/core/d/f;)V

    :cond_0
    return-void
.end method
