.class public Lcom/octopus/ad/internal/view/AdViewImpl$12$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/internal/view/AdViewImpl$12;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/octopus/ad/internal/view/AdViewImpl$12;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/internal/view/AdViewImpl$12;)V
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/internal/view/AdViewImpl$12$1;->a:Lcom/octopus/ad/internal/view/AdViewImpl$12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl$12$1;->a:Lcom/octopus/ad/internal/view/AdViewImpl$12;

    iget-object v0, v0, Lcom/octopus/ad/internal/view/AdViewImpl$12;->a:Lcom/octopus/ad/internal/view/AdViewImpl;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-static {v0, v1}, Lcom/octopus/ad/internal/view/AdViewImpl;->a(Lcom/octopus/ad/internal/view/AdViewImpl;F)F

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl$12$1;->a:Lcom/octopus/ad/internal/view/AdViewImpl$12;

    iget-object v0, v0, Lcom/octopus/ad/internal/view/AdViewImpl$12;->a:Lcom/octopus/ad/internal/view/AdViewImpl;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-static {v0, v1}, Lcom/octopus/ad/internal/view/AdViewImpl;->b(Lcom/octopus/ad/internal/view/AdViewImpl;F)F

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl$12$1;->a:Lcom/octopus/ad/internal/view/AdViewImpl$12;

    iget-object v0, v0, Lcom/octopus/ad/internal/view/AdViewImpl$12;->a:Lcom/octopus/ad/internal/view/AdViewImpl;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-static {v0, v1}, Lcom/octopus/ad/internal/view/AdViewImpl;->c(Lcom/octopus/ad/internal/view/AdViewImpl;F)F

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl$12$1;->a:Lcom/octopus/ad/internal/view/AdViewImpl$12;

    iget-object v0, v0, Lcom/octopus/ad/internal/view/AdViewImpl$12;->a:Lcom/octopus/ad/internal/view/AdViewImpl;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    invoke-static {v0, p1}, Lcom/octopus/ad/internal/view/AdViewImpl;->d(Lcom/octopus/ad/internal/view/AdViewImpl;F)F

    iget-object p1, p0, Lcom/octopus/ad/internal/view/AdViewImpl$12$1;->a:Lcom/octopus/ad/internal/view/AdViewImpl$12;

    iget-object p1, p1, Lcom/octopus/ad/internal/view/AdViewImpl$12;->a:Lcom/octopus/ad/internal/view/AdViewImpl;

    iget v0, p1, Lcom/octopus/ad/internal/view/AdViewImpl;->clickCount:I

    iget p1, p1, Lcom/octopus/ad/internal/view/AdViewImpl;->loadCount:I

    const/4 v1, 0x1

    return v1
.end method
