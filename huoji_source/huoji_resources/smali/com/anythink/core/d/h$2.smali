.class public final Lcom/anythink/core/d/h$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/d/h;->a(Ljava/lang/Object;Lcom/anythink/core/common/f/am;Lcom/anythink/core/d/h$b;[ZLcom/anythink/core/d/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/core/d/f;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/anythink/core/common/f/am;

.field public final synthetic d:Lcom/anythink/core/d/h;


# direct methods
.method public constructor <init>(Lcom/anythink/core/d/h;Lcom/anythink/core/d/f;Ljava/lang/String;Lcom/anythink/core/common/f/am;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/core/d/h$2;->d:Lcom/anythink/core/d/h;

    iput-object p2, p0, Lcom/anythink/core/d/h$2;->a:Lcom/anythink/core/d/f;

    iput-object p3, p0, Lcom/anythink/core/d/h$2;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/anythink/core/d/h$2;->c:Lcom/anythink/core/common/f/am;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/anythink/core/d/h$2;->a:Lcom/anythink/core/d/f;

    invoke-virtual {v0}, Lcom/anythink/core/d/f;->Y()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/anythink/core/common/r;->a()Lcom/anythink/core/common/r;

    move-result-object v0

    iget-object v2, p0, Lcom/anythink/core/d/h$2;->d:Lcom/anythink/core/d/h;

    invoke-static {v2}, Lcom/anythink/core/d/h;->a(Lcom/anythink/core/d/h;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/anythink/core/d/h$2;->b:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/anythink/core/common/r;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/anythink/core/d/h$2;->a:Lcom/anythink/core/d/f;

    invoke-virtual {v0}, Lcom/anythink/core/d/f;->aK()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/anythink/core/d/h$2;->c:Lcom/anythink/core/common/f/am;

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/f/am;->a(I)V

    iget-object v0, p0, Lcom/anythink/core/d/h$2;->d:Lcom/anythink/core/d/h;

    iget-object v1, p0, Lcom/anythink/core/d/h$2;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/anythink/core/d/h;->d(Ljava/lang/String;)Lcom/anythink/core/d/f;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/anythink/core/d/h$2;->c:Lcom/anythink/core/common/f/am;

    invoke-virtual {v0}, Lcom/anythink/core/d/c;->av()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/anythink/core/common/f/am;->a(Ljava/util/Map;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/anythink/core/d/h$2;->c:Lcom/anythink/core/common/f/am;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/f/am;->a(Ljava/util/Map;)V

    :goto_0
    iget-object v0, p0, Lcom/anythink/core/d/h$2;->d:Lcom/anythink/core/d/h;

    invoke-static {v0}, Lcom/anythink/core/d/h;->b(Lcom/anythink/core/d/h;)Lcom/anythink/core/d/i;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/core/d/h$2;->d:Lcom/anythink/core/d/h;

    invoke-static {v1}, Lcom/anythink/core/d/h;->a(Lcom/anythink/core/d/h;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/core/d/h$2;->c:Lcom/anythink/core/common/f/am;

    invoke-virtual {v0, v1, v2}, Lcom/anythink/core/d/i;->a(Landroid/content/Context;Lcom/anythink/core/common/f/am;)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/anythink/core/d/h$2;->d:Lcom/anythink/core/d/h;

    invoke-static {v0}, Lcom/anythink/core/d/h;->c(Lcom/anythink/core/d/h;)Lcom/anythink/core/d/j;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/core/d/h$2;->c:Lcom/anythink/core/common/f/am;

    invoke-virtual {v1}, Lcom/anythink/core/common/f/am;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/core/d/h$2;->b:Ljava/lang/String;

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Lcom/anythink/core/d/j;->b(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method
