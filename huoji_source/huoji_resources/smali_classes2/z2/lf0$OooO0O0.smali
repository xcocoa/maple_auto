.class public final Lz2/lf0$OooO0O0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz2/lf0;->OooO0OO(Landroid/view/View;Lz2/lf0$OooO0OO;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public OoooOoO:I

.field public OoooOoo:Landroid/graphics/Rect;

.field public Ooooo00:Z

.field public final synthetic Ooooo0o:Landroid/view/View;

.field public final synthetic OooooO0:Lz2/lf0$OooO0OO;


# direct methods
.method public constructor <init>(Landroid/view/View;Lz2/lf0$OooO0OO;)V
    .locals 0

    iput-object p1, p0, Lz2/lf0$OooO0O0;->Ooooo0o:Landroid/view/View;

    iput-object p2, p0, Lz2/lf0$OooO0O0;->OooooO0:Lz2/lf0$OooO0OO;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    iput p1, p0, Lz2/lf0$OooO0O0;->OoooOoO:I

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lz2/lf0$OooO0O0;->OoooOoo:Landroid/graphics/Rect;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lz2/lf0$OooO0O0;->Ooooo00:Z

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 4

    iget-object v0, p0, Lz2/lf0$OooO0O0;->OoooOoo:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    iget-object v0, p0, Lz2/lf0$OooO0O0;->Ooooo0o:Landroid/view/View;

    iget-object v1, p0, Lz2/lf0$OooO0O0;->OoooOoo:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lz2/lf0$OooO0O0;->OoooOoo:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget-object v1, p0, Lz2/lf0$OooO0O0;->Ooooo0o:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    sub-int v2, v1, v0

    iget v3, p0, Lz2/lf0$OooO0O0;->OoooOoO:I

    if-eq v3, v2, :cond_1

    int-to-float v0, v0

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float v0, v0, v3

    int-to-float v1, v1

    div-float/2addr v0, v1

    mul-float v0, v0, v3

    const/high16 v1, 0x3f400000    # 0.75f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-boolean v1, p0, Lz2/lf0$OooO0O0;->Ooooo00:Z

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lz2/lf0$OooO0O0;->OooooO0:Lz2/lf0$OooO0OO;

    invoke-interface {v1, v2, v0}, Lz2/lf0$OooO0OO;->OooO00o(IZ)V

    iput-boolean v0, p0, Lz2/lf0$OooO0O0;->Ooooo00:Z

    :cond_1
    iput v2, p0, Lz2/lf0$OooO0O0;->OoooOoO:I

    return-void
.end method
