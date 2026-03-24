.class public final Lcom/anythink/expressad/advanced/c/b$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/expressad/advanced/d/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/expressad/advanced/c/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/expressad/advanced/c/b;


# direct methods
.method public constructor <init>(Lcom/anythink/expressad/advanced/c/b;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/advanced/c/b$3;->a:Lcom/anythink/expressad/advanced/c/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/anythink/expressad/advanced/c/b$3;->a:Lcom/anythink/expressad/advanced/c/b;

    invoke-static {v0}, Lcom/anythink/expressad/advanced/c/b;->d(Lcom/anythink/expressad/advanced/c/b;)Lcom/anythink/expressad/advanced/view/ATNativeAdvancedView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/advanced/c/b$3;->a:Lcom/anythink/expressad/advanced/c/b;

    invoke-static {v0}, Lcom/anythink/expressad/advanced/c/b;->d(Lcom/anythink/expressad/advanced/c/b;)Lcom/anythink/expressad/advanced/view/ATNativeAdvancedView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/advanced/c/b$3;->a:Lcom/anythink/expressad/advanced/c/b;

    invoke-static {v0}, Lcom/anythink/expressad/advanced/c/b;->b(Lcom/anythink/expressad/advanced/c/b;)V

    return-void
.end method

.method public final a(I)V
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/advanced/c/b$3;->a:Lcom/anythink/expressad/advanced/c/b;

    invoke-static {v0, p1}, Lcom/anythink/expressad/advanced/c/b;->a(Lcom/anythink/expressad/advanced/c/b;I)I

    iget-object v0, p0, Lcom/anythink/expressad/advanced/c/b$3;->a:Lcom/anythink/expressad/advanced/c/b;

    invoke-static {v0}, Lcom/anythink/expressad/advanced/c/b;->d(Lcom/anythink/expressad/advanced/c/b;)Lcom/anythink/expressad/advanced/view/ATNativeAdvancedView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/advanced/c/b$3;->a:Lcom/anythink/expressad/advanced/c/b;

    invoke-static {v0}, Lcom/anythink/expressad/advanced/c/b;->d(Lcom/anythink/expressad/advanced/c/b;)Lcom/anythink/expressad/advanced/view/ATNativeAdvancedView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/anythink/expressad/advanced/view/ATNativeAdvancedView;->changeCloseBtnState(I)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/anythink/expressad/foundation/d/c;)V
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/advanced/c/b$3;->a:Lcom/anythink/expressad/advanced/c/b;

    invoke-virtual {v0, p1}, Lcom/anythink/expressad/advanced/c/b;->a(Lcom/anythink/expressad/foundation/d/c;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/anythink/expressad/advanced/c/b$3;->a:Lcom/anythink/expressad/advanced/c/b;

    invoke-static {v0}, Lcom/anythink/expressad/advanced/c/b;->f(Lcom/anythink/expressad/advanced/c/b;)Lcom/anythink/expressad/advanced/d/d;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/anythink/expressad/advanced/c/b$3;->a:Lcom/anythink/expressad/advanced/c/b;

    invoke-static {p1}, Lcom/anythink/expressad/advanced/c/b;->f(Lcom/anythink/expressad/advanced/c/b;)Lcom/anythink/expressad/advanced/d/d;

    move-result-object p1

    iget-object v0, p0, Lcom/anythink/expressad/advanced/c/b$3;->a:Lcom/anythink/expressad/advanced/c/b;

    invoke-static {v0}, Lcom/anythink/expressad/advanced/c/b;->c(Lcom/anythink/expressad/advanced/c/b;)Lcom/anythink/expressad/foundation/d/c;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/anythink/expressad/advanced/d/d;->a(Lcom/anythink/expressad/foundation/d/c;)V

    iget-object p1, p0, Lcom/anythink/expressad/advanced/c/b$3;->a:Lcom/anythink/expressad/advanced/c/b;

    invoke-static {p1}, Lcom/anythink/expressad/advanced/c/b;->f(Lcom/anythink/expressad/advanced/c/b;)Lcom/anythink/expressad/advanced/d/d;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/advanced/c/b$3;->a:Lcom/anythink/expressad/advanced/c/b;

    invoke-static {v0}, Lcom/anythink/expressad/advanced/c/b;->c(Lcom/anythink/expressad/advanced/c/b;)Lcom/anythink/expressad/foundation/d/c;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/expressad/foundation/d/c;->a(Lcom/anythink/expressad/foundation/d/c;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/expressad/foundation/d/c;->b(Lorg/json/JSONObject;)Lcom/anythink/expressad/foundation/d/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/anythink/expressad/foundation/d/c;->p(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/anythink/expressad/advanced/c/b$3;->a:Lcom/anythink/expressad/advanced/c/b;

    invoke-virtual {p1, v0}, Lcom/anythink/expressad/advanced/c/b;->a(Lcom/anythink/expressad/foundation/d/c;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    iget-object v0, p0, Lcom/anythink/expressad/advanced/c/b$3;->a:Lcom/anythink/expressad/advanced/c/b;

    invoke-static {v0}, Lcom/anythink/expressad/advanced/c/b;->e(Lcom/anythink/expressad/advanced/c/b;)Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    return-void
.end method

.method public final a(Z)V
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/advanced/c/b$3;->a:Lcom/anythink/expressad/advanced/c/b;

    invoke-static {v0}, Lcom/anythink/expressad/advanced/c/b;->f(Lcom/anythink/expressad/advanced/c/b;)Lcom/anythink/expressad/advanced/d/d;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/anythink/expressad/advanced/c/b$3;->a:Lcom/anythink/expressad/advanced/c/b;

    invoke-static {v0, p1}, Lcom/anythink/expressad/advanced/c/b;->a(Lcom/anythink/expressad/advanced/c/b;Z)Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/anythink/expressad/advanced/c/b$3;->a:Lcom/anythink/expressad/advanced/c/b;

    invoke-static {p1}, Lcom/anythink/expressad/advanced/c/b;->f(Lcom/anythink/expressad/advanced/c/b;)Lcom/anythink/expressad/advanced/d/d;

    return-void

    :cond_0
    iget-object p1, p0, Lcom/anythink/expressad/advanced/c/b$3;->a:Lcom/anythink/expressad/advanced/c/b;

    invoke-static {p1}, Lcom/anythink/expressad/advanced/c/b;->f(Lcom/anythink/expressad/advanced/c/b;)Lcom/anythink/expressad/advanced/d/d;

    :cond_1
    return-void
.end method

.method public final b()V
    .locals 0

    return-void
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/advanced/c/b$3;->a:Lcom/anythink/expressad/advanced/c/b;

    invoke-static {v0}, Lcom/anythink/expressad/advanced/c/b;->e(Lcom/anythink/expressad/advanced/c/b;)Ljava/lang/String;

    return-void
.end method

.method public final d()V
    .locals 0

    return-void
.end method

.method public final e()V
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/advanced/c/b$3;->a:Lcom/anythink/expressad/advanced/c/b;

    invoke-static {v0}, Lcom/anythink/expressad/advanced/c/b;->b(Lcom/anythink/expressad/advanced/c/b;)V

    return-void
.end method
