.class public final Lcom/anythink/basead/c$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/c;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/basead/c;


# direct methods
.method public constructor <init>(Lcom/anythink/basead/c;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/basead/c$3;->a:Lcom/anythink/basead/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lcom/anythink/basead/c$3;->a:Lcom/anythink/basead/c;

    invoke-static {p1}, Lcom/anythink/basead/c;->c(Lcom/anythink/basead/c;)Landroid/widget/EditText;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/anythink/basead/c$3;->a:Lcom/anythink/basead/c;

    invoke-static {p1}, Lcom/anythink/basead/c;->d(Lcom/anythink/basead/c;)Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/anythink/basead/c$3;->a:Lcom/anythink/basead/c;

    invoke-static {p1}, Lcom/anythink/basead/c;->c(Lcom/anythink/basead/c;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/anythink/basead/c$3;->a:Lcom/anythink/basead/c;

    invoke-static {p1}, Lcom/anythink/basead/c;->e(Lcom/anythink/basead/c;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/anythink/basead/c$3;->a:Lcom/anythink/basead/c;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/anythink/basead/c;->a(Lcom/anythink/basead/c;Z)Z

    iget-object p1, p0, Lcom/anythink/basead/c$3;->a:Lcom/anythink/basead/c;

    invoke-static {p1}, Lcom/anythink/basead/c;->c(Lcom/anythink/basead/c;)Landroid/widget/EditText;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setCursorVisible(Z)V

    iget-object p1, p0, Lcom/anythink/basead/c$3;->a:Lcom/anythink/basead/c;

    invoke-static {p1}, Lcom/anythink/basead/c;->c(Lcom/anythink/basead/c;)Landroid/widget/EditText;

    move-result-object p1

    iget-object v0, p0, Lcom/anythink/basead/c$3;->a:Lcom/anythink/basead/c;

    invoke-static {v0}, Lcom/anythink/basead/c;->d(Lcom/anythink/basead/c;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "myoffer_feedback_hint"

    const-string v2, "string"

    invoke-static {v0, v1, v2}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setHint(I)V

    iget-object p1, p0, Lcom/anythink/basead/c$3;->a:Lcom/anythink/basead/c;

    invoke-static {p1}, Lcom/anythink/basead/c;->c(Lcom/anythink/basead/c;)Landroid/widget/EditText;

    move-result-object p1

    const-string v0, "#999999"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setHintTextColor(I)V

    iget-object p1, p0, Lcom/anythink/basead/c$3;->a:Lcom/anythink/basead/c;

    invoke-static {p1}, Lcom/anythink/basead/c;->c(Lcom/anythink/basead/c;)Landroid/widget/EditText;

    move-result-object p1

    new-instance v0, Lcom/anythink/basead/c$3$1;

    invoke-direct {v0, p0}, Lcom/anythink/basead/c$3$1;-><init>(Lcom/anythink/basead/c$3;)V

    const-wide/16 v1, 0x5dc

    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/anythink/basead/c$3;->a:Lcom/anythink/basead/c;

    iget-object v1, v0, Lcom/anythink/basead/c;->a:Lcom/anythink/core/common/f/l;

    iget-object v0, v0, Lcom/anythink/basead/c;->b:Lcom/anythink/core/common/f/m;

    const-string v2, "0"

    invoke-static {v1, v0, v2, p1}, Lcom/anythink/core/common/n/e;->a(Lcom/anythink/core/common/f/l;Lcom/anythink/core/common/f/m;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/anythink/basead/c$3;->a:Lcom/anythink/basead/c;

    invoke-static {p1}, Lcom/anythink/basead/c;->b(Lcom/anythink/basead/c;)V

    iget-object p1, p0, Lcom/anythink/basead/c$3;->a:Lcom/anythink/basead/c;

    invoke-static {p1}, Lcom/anythink/basead/c;->a(Lcom/anythink/basead/c;)Lcom/anythink/basead/c$a;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/anythink/basead/c$3;->a:Lcom/anythink/basead/c;

    invoke-static {p1}, Lcom/anythink/basead/c;->a(Lcom/anythink/basead/c;)Lcom/anythink/basead/c$a;

    move-result-object p1

    invoke-interface {p1}, Lcom/anythink/basead/c$a;->a()V

    :cond_1
    return-void
.end method
