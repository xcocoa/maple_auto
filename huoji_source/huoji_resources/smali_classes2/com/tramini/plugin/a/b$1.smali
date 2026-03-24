.class public final Lcom/tramini/plugin/a/b$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/tramini/plugin/a/h/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tramini/plugin/a/b;->a(Landroid/content/Intent;Lcom/tramini/plugin/b/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/tramini/plugin/b/b;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Lcom/tramini/plugin/a/b;


# direct methods
.method public constructor <init>(Lcom/tramini/plugin/a/b;ILjava/lang/String;Lcom/tramini/plugin/b/b;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tramini/plugin/a/b$1;->f:Lcom/tramini/plugin/a/b;

    iput p2, p0, Lcom/tramini/plugin/a/b$1;->a:I

    iput-object p3, p0, Lcom/tramini/plugin/a/b$1;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/tramini/plugin/a/b$1;->c:Lcom/tramini/plugin/b/b;

    iput-object p5, p0, Lcom/tramini/plugin/a/b$1;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/tramini/plugin/a/b$1;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/tramini/plugin/a/d/a;)V
    .locals 2

    if-nez p1, :cond_0

    iget v0, p0, Lcom/tramini/plugin/a/b$1;->a:I

    const/16 v1, 0x12

    if-eq v0, v1, :cond_0

    const/16 v1, 0x13

    if-eq v0, v1, :cond_0

    const/16 v1, 0x14

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/tramini/plugin/a/b/c;->a()Lcom/tramini/plugin/a/b/c;

    new-instance v0, Lcom/tramini/plugin/a/b$1$1;

    invoke-direct {v0, p0, p1}, Lcom/tramini/plugin/a/b$1$1;-><init>(Lcom/tramini/plugin/a/b$1;Lcom/tramini/plugin/a/d/a;)V

    invoke-static {v0}, Lcom/tramini/plugin/a/b/c;->a(Ljava/lang/Runnable;)V

    return-void
.end method
