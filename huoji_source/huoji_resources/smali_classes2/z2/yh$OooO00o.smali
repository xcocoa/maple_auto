.class public Lz2/yh$OooO00o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz2/yh;->OooO00o(Landroid/content/Context;Lcom/anythink/nativead/api/ATNativeMaterial;Landroid/view/View;Lcom/anythink/nativead/api/ATNativePrepareInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OoooOoO:Landroid/view/View;

.field public final synthetic OoooOoo:Landroid/content/Context;

.field public final synthetic Ooooo00:I

.field public final synthetic Ooooo0o:I

.field public final synthetic OooooO0:Landroid/widget/FrameLayout$LayoutParams;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/content/Context;IILandroid/widget/FrameLayout$LayoutParams;)V
    .locals 0

    iput-object p1, p0, Lz2/yh$OooO00o;->OoooOoO:Landroid/view/View;

    iput-object p2, p0, Lz2/yh$OooO00o;->OoooOoo:Landroid/content/Context;

    iput p3, p0, Lz2/yh$OooO00o;->Ooooo00:I

    iput p4, p0, Lz2/yh$OooO00o;->Ooooo0o:I

    iput-object p5, p0, Lz2/yh$OooO00o;->OooooO0:Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    iget-object v0, p0, Lz2/yh$OooO00o;->OoooOoO:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v0, p0, Lz2/yh$OooO00o;->OoooOoO:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v1, p0, Lz2/yh$OooO00o;->OoooOoo:Landroid/content/Context;

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v1, v2}, Lz2/yh;->OooO0O0(Landroid/content/Context;F)I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lz2/yh$OooO00o;->Ooooo00:I

    if-lez v1, :cond_0

    iget v2, p0, Lz2/yh$OooO00o;->Ooooo0o:I

    if-lez v2, :cond_0

    if-le v1, v2, :cond_0

    mul-int v2, v2, v0

    div-int/2addr v2, v1

    iget-object v1, p0, Lz2/yh$OooO00o;->OooooO0:Landroid/widget/FrameLayout$LayoutParams;

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lz2/yh$OooO00o;->OooooO0:Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    mul-int/lit16 v0, v0, 0x258

    div-int/lit16 v0, v0, 0x400

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    :goto_0
    return-void
.end method
