.class public final Lcom/anythink/basead/c$3$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/c$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/basead/c$3;


# direct methods
.method public constructor <init>(Lcom/anythink/basead/c$3;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/basead/c$3$1;->a:Lcom/anythink/basead/c$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/anythink/basead/c$3$1;->a:Lcom/anythink/basead/c$3;

    iget-object v0, v0, Lcom/anythink/basead/c$3;->a:Lcom/anythink/basead/c;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/anythink/basead/c;->a(Lcom/anythink/basead/c;Z)Z

    iget-object v0, p0, Lcom/anythink/basead/c$3$1;->a:Lcom/anythink/basead/c$3;

    iget-object v0, v0, Lcom/anythink/basead/c$3;->a:Lcom/anythink/basead/c;

    invoke-static {v0}, Lcom/anythink/basead/c;->c(Lcom/anythink/basead/c;)Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setCursorVisible(Z)V

    iget-object v0, p0, Lcom/anythink/basead/c$3$1;->a:Lcom/anythink/basead/c$3;

    iget-object v0, v0, Lcom/anythink/basead/c$3;->a:Lcom/anythink/basead/c;

    invoke-static {v0}, Lcom/anythink/basead/c;->c(Lcom/anythink/basead/c;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    return-void
.end method
