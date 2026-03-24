.class public final Lcom/anythink/basead/ui/d/b$1$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/ui/d/b$1;->onGlobalLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:[I

.field public final synthetic b:[Z

.field public final synthetic c:I

.field public final synthetic d:I

.field public final synthetic e:Lcom/anythink/basead/ui/d/b$1;


# direct methods
.method public constructor <init>(Lcom/anythink/basead/ui/d/b$1;[I[ZII)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/basead/ui/d/b$1$1;->e:Lcom/anythink/basead/ui/d/b$1;

    iput-object p2, p0, Lcom/anythink/basead/ui/d/b$1$1;->a:[I

    iput-object p3, p0, Lcom/anythink/basead/ui/d/b$1$1;->b:[Z

    iput p4, p0, Lcom/anythink/basead/ui/d/b$1$1;->c:I

    iput p5, p0, Lcom/anythink/basead/ui/d/b$1$1;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lcom/anythink/basead/ui/d/b$1$1;->a:[I

    const/4 v2, 0x0

    aget v3, v1, v2

    const/4 v4, 0x1

    aget v1, v1, v4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    if-eqz p2, :cond_2

    if-eq p2, v4, :cond_1

    const/4 v5, 0x2

    if-eq p2, v5, :cond_0

    goto :goto_0

    :cond_0
    if-le p1, v3, :cond_3

    iget p2, p0, Lcom/anythink/basead/ui/d/b$1$1;->c:I

    add-int/2addr v3, p2

    if-ge p1, v3, :cond_3

    if-le v0, v1, :cond_3

    iget p1, p0, Lcom/anythink/basead/ui/d/b$1$1;->d:I

    add-int/2addr v1, p1

    if-ge v0, v1, :cond_3

    iget-object p1, p0, Lcom/anythink/basead/ui/d/b$1$1;->b:[Z

    aput-boolean v4, p1, v2

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/anythink/basead/ui/d/b$1$1;->b:[Z

    aget-boolean p1, p1, v2

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/anythink/basead/ui/d/b$1$1;->e:Lcom/anythink/basead/ui/d/b$1;

    iget-object p1, p1, Lcom/anythink/basead/ui/d/b$1;->b:Lcom/anythink/basead/ui/d/b;

    invoke-static {p1}, Lcom/anythink/basead/ui/d/b;->a(Lcom/anythink/basead/ui/d/b;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/anythink/basead/ui/d/b$1$1;->b:[Z

    aput-boolean v2, p1, v2

    :cond_3
    :goto_0
    return v2
.end method
