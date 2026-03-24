.class public final Lcom/anythink/basead/c/g;
.super Lcom/anythink/core/common/f/af;
.source ""


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/anythink/core/common/f/l;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/anythink/core/common/f/af;-><init>()V

    iput-object p2, p0, Lcom/anythink/basead/c/g;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/anythink/basead/c/g;->b:Ljava/lang/String;

    iput-object p1, p0, Lcom/anythink/core/common/f/af;->c:Lcom/anythink/core/common/f/l;

    return-void
.end method

.method public static synthetic a(Lcom/anythink/basead/c/g;)Lcom/anythink/core/common/f/l;
    .locals 0

    iget-object p0, p0, Lcom/anythink/core/common/f/af;->c:Lcom/anythink/core/common/f/l;

    return-object p0
.end method

.method public static synthetic b(Lcom/anythink/basead/c/g;)Lcom/anythink/core/common/f/l;
    .locals 0

    iget-object p0, p0, Lcom/anythink/core/common/f/af;->c:Lcom/anythink/core/common/f/l;

    return-object p0
.end method

.method public static synthetic c(Lcom/anythink/basead/c/g;)Lcom/anythink/core/common/f/l;
    .locals 0

    iget-object p0, p0, Lcom/anythink/core/common/f/af;->c:Lcom/anythink/core/common/f/l;

    return-object p0
.end method

.method public static synthetic d(Lcom/anythink/basead/c/g;)Lcom/anythink/core/common/f/l;
    .locals 0

    iget-object p0, p0, Lcom/anythink/core/common/f/af;->c:Lcom/anythink/core/common/f/l;

    return-object p0
.end method


# virtual methods
.method public final a(Landroid/app/Activity;)V
    .locals 12

    const-string v0, "myoffer_confirm_msg"

    const-string v1, "string"

    const-string v2, "id"

    :try_start_0
    const-string v3, ""

    iget-object v4, p0, Lcom/anythink/core/common/f/af;->c:Lcom/anythink/core/common/f/l;

    instance-of v5, v4, Lcom/anythink/core/common/f/aj;

    if-eqz v5, :cond_0

    check-cast v4, Lcom/anythink/core/common/f/aj;

    invoke-virtual {v4}, Lcom/anythink/core/common/f/aj;->ak()Ljava/lang/String;

    move-result-object v3

    :cond_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v3, p0, Lcom/anythink/core/common/f/af;->c:Lcom/anythink/core/common/f/l;

    invoke-virtual {v3}, Lcom/anythink/core/common/f/l;->v()Ljava/lang/String;

    move-result-object v3

    :cond_1
    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v4

    invoke-virtual {v4}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object v4

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const-string v6, "myoffer_confirm_dialog"

    const-string v7, "layout"

    invoke-static {v4, v6, v7}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    invoke-static {v4, v0, v2}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const-string v7, "myoffer_confirm_give_up"

    invoke-static {v4, v7, v2}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const-string v9, "myoffer_confirm_continue"

    invoke-static {v4, v9, v2}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v9

    invoke-virtual {v9}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9, v0, v1}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v9

    invoke-virtual {v9}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object v9

    const-string v10, "myoffer_give_up"

    invoke-static {v9, v10, v1}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v4, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v10

    invoke-virtual {v10}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object v10

    const-string v11, "myoffer_continue"

    invoke-static {v10, v11, v1}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v4, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\""

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\"?"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Landroid/app/Dialog;

    const-string v1, "style_full_screen_translucent_dialog"

    const-string v3, "style"

    invoke-static {v4, v1, v3}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, p1, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v5}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    invoke-virtual {v0, v8}, Landroid/app/Dialog;->setCancelable(Z)V

    new-instance p1, Lcom/anythink/basead/c/g$1;

    invoke-direct {p1, p0, v0}, Lcom/anythink/basead/c/g$1;-><init>(Lcom/anythink/basead/c/g;Landroid/app/Dialog;)V

    invoke-virtual {v7, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p1, Lcom/anythink/basead/c/g$2;

    invoke-direct {p1, p0, v4, v0}, Lcom/anythink/basead/c/g$2;-><init>(Lcom/anythink/basead/c/g;Landroid/content/Context;Landroid/app/Dialog;)V

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method
