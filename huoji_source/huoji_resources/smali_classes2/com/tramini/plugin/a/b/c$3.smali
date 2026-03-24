.class public final Lcom/tramini/plugin/a/b/c$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tramini/plugin/a/b/c;->b(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Lcom/tramini/plugin/a/b/c;


# direct methods
.method public constructor <init>(Lcom/tramini/plugin/a/b/c;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/tramini/plugin/a/b/c$3;->b:Lcom/tramini/plugin/a/b/c;

    iput-object p2, p0, Lcom/tramini/plugin/a/b/c$3;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/tramini/plugin/a/b/c$3;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tramini/plugin/b/c;->a(Landroid/content/Context;)Lcom/tramini/plugin/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tramini/plugin/b/c;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tramini/plugin/a/b/c$3;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tramini/plugin/b/c;->a(Landroid/content/Context;)Lcom/tramini/plugin/b/c;

    move-result-object v0

    new-instance v1, Lcom/tramini/plugin/a/b/c$3$1;

    invoke-direct {v1, p0}, Lcom/tramini/plugin/a/b/c$3$1;-><init>(Lcom/tramini/plugin/a/b/c$3;)V

    invoke-virtual {v0, v1}, Lcom/tramini/plugin/b/c;->a(Lcom/tramini/plugin/a/e/c;)V

    :cond_0
    return-void
.end method
