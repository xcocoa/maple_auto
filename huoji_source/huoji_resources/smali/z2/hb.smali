.class public Lz2/hb;
.super Landroid/app/Dialog;
.source ""


# static fields
.field public static final Ooooo0o:Ljava/lang/String; = "BaseDialog"


# instance fields
.field private OoooOoO:F

.field private OoooOoo:F

.field public Ooooo00:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const p2, 0x3f4ccccd    # 0.8f

    iput p2, p0, Lz2/hb;->OoooOoO:F

    iput p2, p0, Lz2/hb;->OoooOoo:F

    iput-object p1, p0, Lz2/hb;->Ooooo00:Landroid/content/Context;

    return-void
.end method

.method private OooOo0()V
    .locals 4

    iget-object v0, p0, Lz2/hb;->Ooooo00:Landroid/content/Context;

    invoke-static {v0}, Lz2/ub;->OooO0o(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v2, v0, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget v3, p0, Lz2/hb;->OoooOoO:F

    mul-float v2, v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    iget v2, p0, Lz2/hb;->OoooOoo:F

    mul-float v0, v0, v2

    float-to-int v0, v0

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public OooOo00(F)V
    .locals 2

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const/4 p1, 0x2

    invoke-virtual {v0, p1}, Landroid/view/Window;->addFlags(I)V

    return-void
.end method

.method public OooOo0O(FF)V
    .locals 0

    iput p1, p0, Lz2/hb;->OoooOoO:F

    iput p2, p0, Lz2/hb;->OoooOoo:F

    invoke-direct {p0}, Lz2/hb;->OooOo0()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method
