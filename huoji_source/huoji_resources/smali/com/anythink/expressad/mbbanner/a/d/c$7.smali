.class public final Lcom/anythink/expressad/mbbanner/a/d/c$7;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/expressad/mbbanner/a/d/c;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/expressad/mbbanner/a/d/c;


# direct methods
.method public constructor <init>(Lcom/anythink/expressad/mbbanner/a/d/c;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/mbbanner/a/d/c$7;->a:Lcom/anythink/expressad/mbbanner/a/d/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object p1, p0, Lcom/anythink/expressad/mbbanner/a/d/c$7;->a:Lcom/anythink/expressad/mbbanner/a/d/c;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-static {p1, v0}, Lcom/anythink/expressad/mbbanner/a/d/c;->a(Lcom/anythink/expressad/mbbanner/a/d/c;F)F

    iget-object p1, p0, Lcom/anythink/expressad/mbbanner/a/d/c$7;->a:Lcom/anythink/expressad/mbbanner/a/d/c;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    invoke-static {p1, p2}, Lcom/anythink/expressad/mbbanner/a/d/c;->b(Lcom/anythink/expressad/mbbanner/a/d/c;F)F

    invoke-static {}, Lcom/anythink/expressad/mbbanner/a/d/c;->c()Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/anythink/expressad/mbbanner/a/d/c$7;->a:Lcom/anythink/expressad/mbbanner/a/d/c;

    invoke-static {p2}, Lcom/anythink/expressad/mbbanner/a/d/c;->i(Lcom/anythink/expressad/mbbanner/a/d/c;)F

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, "  "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/anythink/expressad/mbbanner/a/d/c$7;->a:Lcom/anythink/expressad/mbbanner/a/d/c;

    invoke-static {p2}, Lcom/anythink/expressad/mbbanner/a/d/c;->j(Lcom/anythink/expressad/mbbanner/a/d/c;)F

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/4 p1, 0x0

    return p1
.end method
