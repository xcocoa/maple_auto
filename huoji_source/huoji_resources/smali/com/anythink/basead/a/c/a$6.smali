.class public final Lcom/anythink/basead/a/c/a$6;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/a/c/a;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/view/View;

.field public final synthetic b:Lcom/anythink/basead/a/c/a;


# direct methods
.method public constructor <init>(Lcom/anythink/basead/a/c/a;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/basead/a/c/a$6;->b:Lcom/anythink/basead/a/c/a;

    iput-object p2, p0, Lcom/anythink/basead/a/c/a$6;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/anythink/basead/a/c/a$6;->b:Lcom/anythink/basead/a/c/a;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, v0, Lcom/anythink/basead/a/c/a;->g:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/anythink/basead/a/c/a$6;->b:Lcom/anythink/basead/a/c/a;

    iget-object v0, v0, Lcom/anythink/basead/a/c/a;->g:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/anythink/basead/a/c/a$6;->b:Lcom/anythink/basead/a/c/a;

    iget-object v0, v0, Lcom/anythink/basead/a/c/a;->g:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/anythink/basead/a/c/a$6$1;

    invoke-direct {v1, p0}, Lcom/anythink/basead/a/c/a$6$1;-><init>(Lcom/anythink/basead/a/c/a$6;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/anythink/basead/a/c/a$6;->b:Lcom/anythink/basead/a/c/a;

    iget-object v0, v0, Lcom/anythink/basead/a/c/a;->g:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/anythink/basead/a/c/a$6;->b:Lcom/anythink/basead/a/c/a;

    iget-object v0, v0, Lcom/anythink/basead/a/c/a;->g:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x44340000    # 720.0f
    .end array-data
.end method
