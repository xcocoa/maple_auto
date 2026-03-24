.class public final Lcom/anythink/core/common/o$1;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/common/o;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/core/common/o;


# direct methods
.method public constructor <init>(Lcom/anythink/core/common/o;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/core/common/o$1;->a:Lcom/anythink/core/common/o;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;)Lcom/anythink/core/common/f/l;
    .locals 3

    iget-object v0, p0, Lcom/anythink/core/common/o$1;->a:Lcom/anythink/core/common/o;

    invoke-static {v0}, Lcom/anythink/core/common/o;->a(Lcom/anythink/core/common/o;)Lcom/anythink/core/common/f/l;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/core/common/o$1;->a:Lcom/anythink/core/common/o;

    invoke-static {v0}, Lcom/anythink/core/common/o;->a(Lcom/anythink/core/common/o;)Lcom/anythink/core/common/f/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/f/l;->F()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/anythink/core/common/o$1;->a:Lcom/anythink/core/common/o;

    invoke-static {p1}, Lcom/anythink/core/common/o;->a(Lcom/anythink/core/common/o;)Lcom/anythink/core/common/f/l;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/anythink/core/common/o$1;->a:Lcom/anythink/core/common/o;

    invoke-static {v0}, Lcom/anythink/core/common/o;->b(Lcom/anythink/core/common/o;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/anythink/core/common/o$1;->a:Lcom/anythink/core/common/o;

    invoke-static {v0}, Lcom/anythink/core/common/o;->b(Lcom/anythink/core/common/o;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/anythink/core/common/o$1;->a:Lcom/anythink/core/common/o;

    invoke-static {v0}, Lcom/anythink/core/common/o;->b(Lcom/anythink/core/common/o;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anythink/core/common/f/l;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/anythink/core/common/f/l;->F()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "Y29tLnhpYW9taS5tYXJrZXQuRE1fUEFHRV9PUEVORUQ="

    invoke-static {v0}, Lcom/anythink/core/common/o/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "Y29tLnhpYW9taS5tYXJrZXQuRE1fUEFHRV9DTE9TRUQ="

    invoke-static {v0}, Lcom/anythink/core/common/o/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "Y29tLnhpYW9taS5tYXJrZXQuRElSRUNUX01BSUxfU1RBVFVT"

    invoke-static {v0}, Lcom/anythink/core/common/o/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const-string p2, "code"

    const/4 v0, -0x1

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    const-string p2, "packageName"

    const-string v1, ""

    invoke-virtual {p1, p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eq v4, v0, :cond_8

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2

    goto/16 :goto_1

    :cond_2
    iget-object p2, p0, Lcom/anythink/core/common/o$1;->a:Lcom/anythink/core/common/o;

    invoke-static {p2}, Lcom/anythink/core/common/o;->a(Lcom/anythink/core/common/o;)Lcom/anythink/core/common/f/l;

    move-result-object p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/anythink/core/common/o$1;->a:Lcom/anythink/core/common/o;

    invoke-static {p2}, Lcom/anythink/core/common/o;->a(Lcom/anythink/core/common/o;)Lcom/anythink/core/common/f/l;

    move-result-object p2

    invoke-virtual {p2}, Lcom/anythink/core/common/f/l;->F()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p1, p0, Lcom/anythink/core/common/o$1;->a:Lcom/anythink/core/common/o;

    invoke-static {p1}, Lcom/anythink/core/common/o;->a(Lcom/anythink/core/common/o;)Lcom/anythink/core/common/f/l;

    move-result-object p1

    goto :goto_0

    :cond_3
    iget-object p2, p0, Lcom/anythink/core/common/o$1;->a:Lcom/anythink/core/common/o;

    invoke-static {p2}, Lcom/anythink/core/common/o;->b(Lcom/anythink/core/common/o;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p2

    if-eqz p2, :cond_5

    iget-object p2, p0, Lcom/anythink/core/common/o$1;->a:Lcom/anythink/core/common/o;

    invoke-static {p2}, Lcom/anythink/core/common/o;->b(Lcom/anythink/core/common/o;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result p2

    if-lez p2, :cond_5

    iget-object p2, p0, Lcom/anythink/core/common/o$1;->a:Lcom/anythink/core/common/o;

    invoke-static {p2}, Lcom/anythink/core/common/o;->b(Lcom/anythink/core/common/o;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/core/common/f/l;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/anythink/core/common/f/l;->F()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    move-object p1, v0

    goto :goto_0

    :cond_5
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_6

    return-void

    :cond_6
    const/4 p2, 0x4

    if-ne v4, p2, :cond_7

    iget-object p2, p0, Lcom/anythink/core/common/o$1;->a:Lcom/anythink/core/common/o;

    invoke-virtual {p2, p1}, Lcom/anythink/core/common/o;->b(Lcom/anythink/core/common/f/l;)V

    :cond_7
    invoke-virtual {p1}, Lcom/anythink/core/common/f/l;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/anythink/core/common/f/l;->t()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-string v3, ""

    const-string v5, ""

    invoke-static/range {v1 .. v9}, Lcom/anythink/core/common/n/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;JJ)V

    nop

    :cond_8
    :goto_1
    return-void
.end method
