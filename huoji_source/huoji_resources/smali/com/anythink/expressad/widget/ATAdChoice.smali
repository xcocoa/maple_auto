.class public Lcom/anythink/expressad/widget/ATAdChoice;
.super Lcom/anythink/expressad/widget/ATImageView;
.source ""


# static fields
.field private static a:Ljava/lang/String; = "ATAdChoice"


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Landroid/content/Context;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/anythink/expressad/widget/ATImageView;-><init>(Landroid/content/Context;)V

    const-string v0, ""

    iput-object v0, p0, Lcom/anythink/expressad/widget/ATAdChoice;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/anythink/expressad/widget/ATAdChoice;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/anythink/expressad/widget/ATAdChoice;->d:Ljava/lang/String;

    iput-object p1, p0, Lcom/anythink/expressad/widget/ATAdChoice;->e:Landroid/content/Context;

    invoke-direct {p0}, Lcom/anythink/expressad/widget/ATAdChoice;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/anythink/expressad/widget/ATImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p2, ""

    iput-object p2, p0, Lcom/anythink/expressad/widget/ATAdChoice;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/anythink/expressad/widget/ATAdChoice;->c:Ljava/lang/String;

    iput-object p2, p0, Lcom/anythink/expressad/widget/ATAdChoice;->d:Ljava/lang/String;

    iput-object p1, p0, Lcom/anythink/expressad/widget/ATAdChoice;->e:Landroid/content/Context;

    invoke-direct {p0}, Lcom/anythink/expressad/widget/ATAdChoice;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/anythink/expressad/widget/ATImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p2, ""

    iput-object p2, p0, Lcom/anythink/expressad/widget/ATAdChoice;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/anythink/expressad/widget/ATAdChoice;->c:Ljava/lang/String;

    iput-object p2, p0, Lcom/anythink/expressad/widget/ATAdChoice;->d:Ljava/lang/String;

    iput-object p1, p0, Lcom/anythink/expressad/widget/ATAdChoice;->e:Landroid/content/Context;

    invoke-direct {p0}, Lcom/anythink/expressad/widget/ATAdChoice;->a()V

    return-void
.end method

.method private a()V
    .locals 1

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setClickable(Z)V

    return-void
.end method

.method private a(Lcom/anythink/expressad/foundation/d/c;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->v()Lcom/anythink/expressad/foundation/d/c$a;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->v()Lcom/anythink/expressad/foundation/d/c$a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/expressad/foundation/d/c$a;->c()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/anythink/expressad/widget/ATAdChoice;->b:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->v()Lcom/anythink/expressad/foundation/d/c$a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/expressad/foundation/d/c$a;->b()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/anythink/expressad/widget/ATAdChoice;->d:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->v()Lcom/anythink/expressad/foundation/d/c$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c$a;->d()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_2

    invoke-static {}, Lcom/anythink/expressad/d/b;->a()Lcom/anythink/expressad/d/b;

    invoke-static {}, Lcom/anythink/expressad/foundation/b/a;->c()Lcom/anythink/expressad/foundation/b/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/b/a;->f()Ljava/lang/String;

    invoke-static {}, Lcom/anythink/expressad/d/b;->b()Lcom/anythink/expressad/d/a;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/anythink/expressad/d/a;->H()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/anythink/expressad/widget/ATAdChoice;->b:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1}, Lcom/anythink/expressad/d/a;->J()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/anythink/expressad/widget/ATAdChoice;->d:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1}, Lcom/anythink/expressad/d/a;->I()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    move p1, v0

    :cond_2
    iget-object v0, p0, Lcom/anythink/expressad/widget/ATAdChoice;->b:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/anythink/expressad/widget/ATImageView;->setImageUrl(Ljava/lang/String;)V

    return p1
.end method

.method private b()V
    .locals 3

    iget-object v0, p0, Lcom/anythink/expressad/widget/ATAdChoice;->e:Landroid/content/Context;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/anythink/expressad/foundation/g/d/b;->a(Landroid/content/Context;)Lcom/anythink/expressad/foundation/g/d/b;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/expressad/widget/ATAdChoice;->b:Ljava/lang/String;

    new-instance v2, Lcom/anythink/expressad/widget/ATAdChoice$1;

    invoke-direct {v2, p0}, Lcom/anythink/expressad/widget/ATAdChoice$1;-><init>(Lcom/anythink/expressad/widget/ATAdChoice;)V

    invoke-virtual {v0, v1, v2}, Lcom/anythink/expressad/foundation/g/d/b;->a(Ljava/lang/String;Lcom/anythink/expressad/foundation/g/d/c;)V

    :cond_0
    return-void
.end method

.method private c()V
    .locals 3

    iget-object v0, p0, Lcom/anythink/expressad/widget/ATAdChoice;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/widget/ATAdChoice;->e:Landroid/content/Context;

    iget-object v1, p0, Lcom/anythink/expressad/widget/ATAdChoice;->d:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/anythink/expressad/foundation/h/s;->a(Landroid/content/Context;Ljava/lang/String;Lcom/anythink/expressad/out/p$c;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public performClick()Z
    .locals 3

    iget-object v0, p0, Lcom/anythink/expressad/widget/ATAdChoice;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/widget/ATAdChoice;->e:Landroid/content/Context;

    iget-object v1, p0, Lcom/anythink/expressad/widget/ATAdChoice;->d:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/anythink/expressad/foundation/h/s;->a(Landroid/content/Context;Ljava/lang/String;Lcom/anythink/expressad/out/p$c;)V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public setCampaign(Lcom/anythink/expressad/out/j;)V
    .locals 3

    instance-of v0, p1, Lcom/anythink/expressad/foundation/d/c;

    if-eqz v0, :cond_3

    check-cast p1, Lcom/anythink/expressad/foundation/d/c;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->v()Lcom/anythink/expressad/foundation/d/c$a;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->v()Lcom/anythink/expressad/foundation/d/c$a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/expressad/foundation/d/c$a;->c()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/anythink/expressad/widget/ATAdChoice;->b:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->v()Lcom/anythink/expressad/foundation/d/c$a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/expressad/foundation/d/c$a;->b()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/anythink/expressad/widget/ATAdChoice;->d:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->v()Lcom/anythink/expressad/foundation/d/c$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c$a;->d()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_2

    invoke-static {}, Lcom/anythink/expressad/d/b;->a()Lcom/anythink/expressad/d/b;

    invoke-static {}, Lcom/anythink/expressad/foundation/b/a;->c()Lcom/anythink/expressad/foundation/b/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/b/a;->f()Ljava/lang/String;

    invoke-static {}, Lcom/anythink/expressad/d/b;->b()Lcom/anythink/expressad/d/a;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/anythink/expressad/d/a;->H()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/anythink/expressad/widget/ATAdChoice;->b:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1}, Lcom/anythink/expressad/d/a;->J()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/anythink/expressad/widget/ATAdChoice;->d:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1}, Lcom/anythink/expressad/d/a;->I()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    move p1, v0

    :cond_2
    iget-object v0, p0, Lcom/anythink/expressad/widget/ATAdChoice;->b:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/anythink/expressad/widget/ATImageView;->setImageUrl(Ljava/lang/String;)V

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/anythink/expressad/widget/ATAdChoice;->e:Landroid/content/Context;

    if-eqz p1, :cond_3

    invoke-static {p1}, Lcom/anythink/expressad/foundation/g/d/b;->a(Landroid/content/Context;)Lcom/anythink/expressad/foundation/g/d/b;

    move-result-object p1

    iget-object v0, p0, Lcom/anythink/expressad/widget/ATAdChoice;->b:Ljava/lang/String;

    new-instance v1, Lcom/anythink/expressad/widget/ATAdChoice$1;

    invoke-direct {v1, p0}, Lcom/anythink/expressad/widget/ATAdChoice$1;-><init>(Lcom/anythink/expressad/widget/ATAdChoice;)V

    invoke-virtual {p1, v0, v1}, Lcom/anythink/expressad/foundation/g/d/b;->a(Ljava/lang/String;Lcom/anythink/expressad/foundation/g/d/c;)V

    :cond_3
    return-void
.end method
