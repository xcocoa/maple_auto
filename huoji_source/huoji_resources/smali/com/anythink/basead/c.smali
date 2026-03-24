.class public final Lcom/anythink/basead/c;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/basead/c$a;
    }
.end annotation


# instance fields
.field public a:Lcom/anythink/core/common/f/l;

.field public b:Lcom/anythink/core/common/f/m;

.field private c:Landroid/content/Context;

.field private d:Landroid/app/Dialog;

.field private e:Landroid/view/View;

.field private f:Landroid/widget/EditText;

.field private g:Landroid/widget/ImageView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/TextView;

.field private p:Landroid/widget/TextView;

.field private q:Landroid/widget/TextView;

.field private r:Z

.field private s:Lcom/anythink/basead/c$a;

.field private t:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/anythink/basead/c$5;

    invoke-direct {v0, p0}, Lcom/anythink/basead/c$5;-><init>(Lcom/anythink/basead/c;)V

    iput-object v0, p0, Lcom/anythink/basead/c;->t:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public static synthetic a(Lcom/anythink/basead/c;)Lcom/anythink/basead/c$a;
    .locals 0

    iget-object p0, p0, Lcom/anythink/basead/c;->s:Lcom/anythink/basead/c$a;

    return-object p0
.end method

.method private a(II)V
    .locals 4

    new-instance v0, Landroid/app/Dialog;

    iget-object v1, p0, Lcom/anythink/basead/c;->c:Landroid/content/Context;

    const-string v2, "myoffer_feedback_dialog"

    const-string v3, "style"

    invoke-static {v1, v2, v3}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/anythink/basead/c;->d:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/anythink/basead/c;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/anythink/basead/c;->d:Landroid/app/Dialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/anythink/basead/c;->d:Landroid/app/Dialog;

    new-instance v1, Lcom/anythink/basead/c$1;

    invoke-direct {v1, p0}, Lcom/anythink/basead/c$1;-><init>(Lcom/anythink/basead/c;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object v0, p0, Lcom/anythink/basead/c;->d:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_1

    if-le p1, p2, :cond_0

    iget-object p1, p0, Lcom/anythink/basead/c;->c:Landroid/content/Context;

    const/high16 p2, 0x438c0000    # 280.0f

    invoke-static {p1, p2}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result p1

    iget-object p2, p0, Lcom/anythink/basead/c;->c:Landroid/content/Context;

    const/high16 v1, 0x43a00000    # 320.0f

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/anythink/basead/c;->c:Landroid/content/Context;

    const/high16 p2, 0x43960000    # 300.0f

    invoke-static {p1, p2}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result p1

    iget-object p2, p0, Lcom/anythink/basead/c;->c:Landroid/content/Context;

    const/high16 v1, 0x43d50000    # 426.0f

    :goto_0
    invoke-static {p2, v1}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result p2

    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->setLayout(II)V

    :cond_1
    iget-object p1, p0, Lcom/anythink/basead/c;->d:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public static synthetic a(Lcom/anythink/basead/c;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/anythink/basead/c;->r:Z

    return p1
.end method

.method public static synthetic b(Lcom/anythink/basead/c;)V
    .locals 4

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/anythink/basead/c$4;

    invoke-direct {v1, p0}, Lcom/anythink/basead/c$4;-><init>(Lcom/anythink/basead/c;)V

    const-wide/16 v2, 0x1e

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static synthetic c(Lcom/anythink/basead/c;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/anythink/basead/c;->f:Landroid/widget/EditText;

    return-object p0
.end method

.method private c()V
    .locals 4

    iget-object v0, p0, Lcom/anythink/basead/c;->e:Landroid/view/View;

    iget-object v1, p0, Lcom/anythink/basead/c;->c:Landroid/content/Context;

    const-string v2, "myoffer_feedback_iv_close"

    const-string v3, "id"

    invoke-static {v1, v2, v3}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/anythink/basead/c;->g:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/anythink/basead/c;->e:Landroid/view/View;

    iget-object v1, p0, Lcom/anythink/basead/c;->c:Landroid/content/Context;

    const-string v2, "myoffer_feedback_et"

    invoke-static {v1, v2, v3}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/anythink/basead/c;->f:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/anythink/basead/c;->e:Landroid/view/View;

    iget-object v1, p0, Lcom/anythink/basead/c;->c:Landroid/content/Context;

    const-string v2, "myoffer_feedback_tv_commit"

    invoke-static {v1, v2, v3}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/anythink/basead/c;->h:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/anythink/basead/c;->e:Landroid/view/View;

    iget-object v1, p0, Lcom/anythink/basead/c;->c:Landroid/content/Context;

    const-string v2, "myoffer_feedback_tv_1"

    invoke-static {v1, v2, v3}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/anythink/basead/c;->i:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/anythink/basead/c;->e:Landroid/view/View;

    iget-object v1, p0, Lcom/anythink/basead/c;->c:Landroid/content/Context;

    const-string v2, "myoffer_feedback_tv_2"

    invoke-static {v1, v2, v3}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/anythink/basead/c;->j:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/anythink/basead/c;->e:Landroid/view/View;

    iget-object v1, p0, Lcom/anythink/basead/c;->c:Landroid/content/Context;

    const-string v2, "myoffer_feedback_tv_3"

    invoke-static {v1, v2, v3}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/anythink/basead/c;->k:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/anythink/basead/c;->e:Landroid/view/View;

    iget-object v1, p0, Lcom/anythink/basead/c;->c:Landroid/content/Context;

    const-string v2, "myoffer_feedback_tv_4"

    invoke-static {v1, v2, v3}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/anythink/basead/c;->l:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/anythink/basead/c;->e:Landroid/view/View;

    iget-object v1, p0, Lcom/anythink/basead/c;->c:Landroid/content/Context;

    const-string v2, "myoffer_feedback_tv_5"

    invoke-static {v1, v2, v3}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/anythink/basead/c;->m:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/anythink/basead/c;->e:Landroid/view/View;

    iget-object v1, p0, Lcom/anythink/basead/c;->c:Landroid/content/Context;

    const-string v2, "myoffer_feedback_tv_6"

    invoke-static {v1, v2, v3}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/anythink/basead/c;->n:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/anythink/basead/c;->e:Landroid/view/View;

    iget-object v1, p0, Lcom/anythink/basead/c;->c:Landroid/content/Context;

    const-string v2, "myoffer_feedback_tv_7"

    invoke-static {v1, v2, v3}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/anythink/basead/c;->o:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/anythink/basead/c;->e:Landroid/view/View;

    iget-object v1, p0, Lcom/anythink/basead/c;->c:Landroid/content/Context;

    const-string v2, "myoffer_feedback_tv_8"

    invoke-static {v1, v2, v3}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/anythink/basead/c;->p:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/anythink/basead/c;->e:Landroid/view/View;

    iget-object v1, p0, Lcom/anythink/basead/c;->c:Landroid/content/Context;

    const-string v2, "myoffer_feedback_tv_9"

    invoke-static {v1, v2, v3}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/anythink/basead/c;->q:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/anythink/basead/c;->g:Landroid/widget/ImageView;

    new-instance v1, Lcom/anythink/basead/c$2;

    invoke-direct {v1, p0}, Lcom/anythink/basead/c$2;-><init>(Lcom/anythink/basead/c;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/anythink/basead/c;->i:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/anythink/basead/c;->t:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/anythink/basead/c;->j:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/anythink/basead/c;->t:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/anythink/basead/c;->k:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/anythink/basead/c;->t:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/anythink/basead/c;->l:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/anythink/basead/c;->t:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/anythink/basead/c;->m:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/anythink/basead/c;->t:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/anythink/basead/c;->n:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/anythink/basead/c;->t:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/anythink/basead/c;->o:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/anythink/basead/c;->t:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/anythink/basead/c;->p:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/anythink/basead/c;->t:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/anythink/basead/c;->q:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/anythink/basead/c;->t:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/anythink/basead/c;->h:Landroid/widget/TextView;

    new-instance v1, Lcom/anythink/basead/c$3;

    invoke-direct {v1, p0}, Lcom/anythink/basead/c$3;-><init>(Lcom/anythink/basead/c;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static synthetic d(Lcom/anythink/basead/c;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/anythink/basead/c;->c:Landroid/content/Context;

    return-object p0
.end method

.method private d()V
    .locals 2

    iget-object v0, p0, Lcom/anythink/basead/c;->g:Landroid/widget/ImageView;

    new-instance v1, Lcom/anythink/basead/c$2;

    invoke-direct {v1, p0}, Lcom/anythink/basead/c$2;-><init>(Lcom/anythink/basead/c;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/anythink/basead/c;->i:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/anythink/basead/c;->t:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/anythink/basead/c;->j:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/anythink/basead/c;->t:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/anythink/basead/c;->k:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/anythink/basead/c;->t:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/anythink/basead/c;->l:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/anythink/basead/c;->t:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/anythink/basead/c;->m:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/anythink/basead/c;->t:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/anythink/basead/c;->n:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/anythink/basead/c;->t:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/anythink/basead/c;->o:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/anythink/basead/c;->t:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/anythink/basead/c;->p:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/anythink/basead/c;->t:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/anythink/basead/c;->q:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/anythink/basead/c;->t:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/anythink/basead/c;->h:Landroid/widget/TextView;

    new-instance v1, Lcom/anythink/basead/c$3;

    invoke-direct {v1, p0}, Lcom/anythink/basead/c$3;-><init>(Lcom/anythink/basead/c;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private e()V
    .locals 4

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/anythink/basead/c$4;

    invoke-direct {v1, p0}, Lcom/anythink/basead/c$4;-><init>(Lcom/anythink/basead/c;)V

    const-wide/16 v2, 0x1e

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static synthetic e(Lcom/anythink/basead/c;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/anythink/basead/c;->r:Z

    return p0
.end method

.method public static synthetic f(Lcom/anythink/basead/c;)Landroid/app/Dialog;
    .locals 0

    iget-object p0, p0, Lcom/anythink/basead/c;->d:Landroid/app/Dialog;

    return-object p0
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/anythink/core/common/f/l;Lcom/anythink/core/common/f/m;Lcom/anythink/basead/c$a;)V
    .locals 5

    const-string v0, "id"

    :try_start_0
    iput-object p1, p0, Lcom/anythink/basead/c;->c:Landroid/content/Context;

    iput-object p2, p0, Lcom/anythink/basead/c;->a:Lcom/anythink/core/common/f/l;

    iput-object p3, p0, Lcom/anythink/basead/c;->b:Lcom/anythink/core/common/f/m;

    iput-object p4, p0, Lcom/anythink/basead/c;->s:Lcom/anythink/basead/c$a;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    iget p3, p3, Landroid/util/DisplayMetrics;->heightPixels:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p4, 0x0

    const/4 v1, 0x0

    const-string v2, "layout"

    if-le p2, p3, :cond_0

    :try_start_1
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const-string v4, "myoffer_feedback_land"

    invoke-static {p1, v4, v2}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v3, p1, v1, p4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/anythink/basead/c;->e:Landroid/view/View;

    goto :goto_1

    :cond_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const-string v4, "myoffer_feedback"

    invoke-static {p1, v4, v2}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v3, p1, v1, p4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :goto_1
    iget-object p1, p0, Lcom/anythink/basead/c;->e:Landroid/view/View;

    iget-object p4, p0, Lcom/anythink/basead/c;->c:Landroid/content/Context;

    const-string v1, "myoffer_feedback_iv_close"

    invoke-static {p4, v1, v0}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p4

    invoke-virtual {p1, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/anythink/basead/c;->g:Landroid/widget/ImageView;

    iget-object p1, p0, Lcom/anythink/basead/c;->e:Landroid/view/View;

    iget-object p4, p0, Lcom/anythink/basead/c;->c:Landroid/content/Context;

    const-string v1, "myoffer_feedback_et"

    invoke-static {p4, v1, v0}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p4

    invoke-virtual {p1, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/anythink/basead/c;->f:Landroid/widget/EditText;

    iget-object p1, p0, Lcom/anythink/basead/c;->e:Landroid/view/View;

    iget-object p4, p0, Lcom/anythink/basead/c;->c:Landroid/content/Context;

    const-string v1, "myoffer_feedback_tv_commit"

    invoke-static {p4, v1, v0}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p4

    invoke-virtual {p1, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/anythink/basead/c;->h:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/anythink/basead/c;->e:Landroid/view/View;

    iget-object p4, p0, Lcom/anythink/basead/c;->c:Landroid/content/Context;

    const-string v1, "myoffer_feedback_tv_1"

    invoke-static {p4, v1, v0}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p4

    invoke-virtual {p1, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/anythink/basead/c;->i:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/anythink/basead/c;->e:Landroid/view/View;

    iget-object p4, p0, Lcom/anythink/basead/c;->c:Landroid/content/Context;

    const-string v1, "myoffer_feedback_tv_2"

    invoke-static {p4, v1, v0}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p4

    invoke-virtual {p1, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/anythink/basead/c;->j:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/anythink/basead/c;->e:Landroid/view/View;

    iget-object p4, p0, Lcom/anythink/basead/c;->c:Landroid/content/Context;

    const-string v1, "myoffer_feedback_tv_3"

    invoke-static {p4, v1, v0}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p4

    invoke-virtual {p1, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/anythink/basead/c;->k:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/anythink/basead/c;->e:Landroid/view/View;

    iget-object p4, p0, Lcom/anythink/basead/c;->c:Landroid/content/Context;

    const-string v1, "myoffer_feedback_tv_4"

    invoke-static {p4, v1, v0}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p4

    invoke-virtual {p1, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/anythink/basead/c;->l:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/anythink/basead/c;->e:Landroid/view/View;

    iget-object p4, p0, Lcom/anythink/basead/c;->c:Landroid/content/Context;

    const-string v1, "myoffer_feedback_tv_5"

    invoke-static {p4, v1, v0}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p4

    invoke-virtual {p1, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/anythink/basead/c;->m:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/anythink/basead/c;->e:Landroid/view/View;

    iget-object p4, p0, Lcom/anythink/basead/c;->c:Landroid/content/Context;

    const-string v1, "myoffer_feedback_tv_6"

    invoke-static {p4, v1, v0}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p4

    invoke-virtual {p1, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/anythink/basead/c;->n:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/anythink/basead/c;->e:Landroid/view/View;

    iget-object p4, p0, Lcom/anythink/basead/c;->c:Landroid/content/Context;

    const-string v1, "myoffer_feedback_tv_7"

    invoke-static {p4, v1, v0}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p4

    invoke-virtual {p1, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/anythink/basead/c;->o:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/anythink/basead/c;->e:Landroid/view/View;

    iget-object p4, p0, Lcom/anythink/basead/c;->c:Landroid/content/Context;

    const-string v1, "myoffer_feedback_tv_8"

    invoke-static {p4, v1, v0}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p4

    invoke-virtual {p1, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/anythink/basead/c;->p:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/anythink/basead/c;->e:Landroid/view/View;

    iget-object p4, p0, Lcom/anythink/basead/c;->c:Landroid/content/Context;

    const-string v1, "myoffer_feedback_tv_9"

    invoke-static {p4, v1, v0}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p4

    invoke-virtual {p1, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/anythink/basead/c;->q:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/anythink/basead/c;->g:Landroid/widget/ImageView;

    new-instance p4, Lcom/anythink/basead/c$2;

    invoke-direct {p4, p0}, Lcom/anythink/basead/c$2;-><init>(Lcom/anythink/basead/c;)V

    invoke-virtual {p1, p4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/anythink/basead/c;->i:Landroid/widget/TextView;

    iget-object p4, p0, Lcom/anythink/basead/c;->t:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/anythink/basead/c;->j:Landroid/widget/TextView;

    iget-object p4, p0, Lcom/anythink/basead/c;->t:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/anythink/basead/c;->k:Landroid/widget/TextView;

    iget-object p4, p0, Lcom/anythink/basead/c;->t:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/anythink/basead/c;->l:Landroid/widget/TextView;

    iget-object p4, p0, Lcom/anythink/basead/c;->t:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/anythink/basead/c;->m:Landroid/widget/TextView;

    iget-object p4, p0, Lcom/anythink/basead/c;->t:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/anythink/basead/c;->n:Landroid/widget/TextView;

    iget-object p4, p0, Lcom/anythink/basead/c;->t:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/anythink/basead/c;->o:Landroid/widget/TextView;

    iget-object p4, p0, Lcom/anythink/basead/c;->t:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/anythink/basead/c;->p:Landroid/widget/TextView;

    iget-object p4, p0, Lcom/anythink/basead/c;->t:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/anythink/basead/c;->q:Landroid/widget/TextView;

    iget-object p4, p0, Lcom/anythink/basead/c;->t:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/anythink/basead/c;->h:Landroid/widget/TextView;

    new-instance p4, Lcom/anythink/basead/c$3;

    invoke-direct {p4, p0}, Lcom/anythink/basead/c$3;-><init>(Lcom/anythink/basead/c;)V

    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p1, Landroid/app/Dialog;

    iget-object p4, p0, Lcom/anythink/basead/c;->c:Landroid/content/Context;

    const-string v0, "myoffer_feedback_dialog"

    const-string v1, "style"

    invoke-static {p4, v0, v1}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-direct {p1, p4, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/anythink/basead/c;->d:Landroid/app/Dialog;

    iget-object p4, p0, Lcom/anythink/basead/c;->e:Landroid/view/View;

    invoke-virtual {p1, p4}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/anythink/basead/c;->d:Landroid/app/Dialog;

    const/4 p4, 0x1

    invoke-virtual {p1, p4}, Landroid/app/Dialog;->setCancelable(Z)V

    iget-object p1, p0, Lcom/anythink/basead/c;->d:Landroid/app/Dialog;

    new-instance p4, Lcom/anythink/basead/c$1;

    invoke-direct {p4, p0}, Lcom/anythink/basead/c$1;-><init>(Lcom/anythink/basead/c;)V

    invoke-virtual {p1, p4}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object p1, p0, Lcom/anythink/basead/c;->d:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_2

    if-le p2, p3, :cond_1

    iget-object p2, p0, Lcom/anythink/basead/c;->c:Landroid/content/Context;

    const/high16 p3, 0x438c0000    # 280.0f

    invoke-static {p2, p3}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result p2

    iget-object p3, p0, Lcom/anythink/basead/c;->c:Landroid/content/Context;

    const/high16 p4, 0x43a00000    # 320.0f

    invoke-static {p3, p4}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result p3

    :goto_2
    invoke-virtual {p1, p2, p3}, Landroid/view/Window;->setLayout(II)V

    goto :goto_3

    :cond_1
    iget-object p2, p0, Lcom/anythink/basead/c;->c:Landroid/content/Context;

    const/high16 p3, 0x43960000    # 300.0f

    invoke-static {p2, p3}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result p2

    iget-object p3, p0, Lcom/anythink/basead/c;->c:Landroid/content/Context;

    const/high16 p4, 0x43d50000    # 426.0f

    invoke-static {p3, p4}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result p3

    goto :goto_2

    :cond_2
    :goto_3
    iget-object p1, p0, Lcom/anythink/basead/c;->d:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final a()Z
    .locals 1

    iget-object v0, p0, Lcom/anythink/basead/c;->d:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anythink/basead/c;->c:Landroid/content/Context;

    iput-object v0, p0, Lcom/anythink/basead/c;->a:Lcom/anythink/core/common/f/l;

    iput-object v0, p0, Lcom/anythink/basead/c;->b:Lcom/anythink/core/common/f/m;

    iput-object v0, p0, Lcom/anythink/basead/c;->s:Lcom/anythink/basead/c$a;

    return-void
.end method
