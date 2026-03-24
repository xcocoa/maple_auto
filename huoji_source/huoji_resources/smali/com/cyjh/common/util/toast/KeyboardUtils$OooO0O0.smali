.class public Lcom/cyjh/common/util/toast/KeyboardUtils$OooO0O0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/common/util/toast/KeyboardUtils;->OooO0o0(Landroid/view/Window;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OoooOoO:Landroid/view/Window;

.field public final synthetic OoooOoo:[I

.field public final synthetic Ooooo00:Landroid/view/View;

.field public final synthetic Ooooo0o:I


# direct methods
.method public constructor <init>(Landroid/view/Window;[ILandroid/view/View;I)V
    .locals 0

    iput-object p1, p0, Lcom/cyjh/common/util/toast/KeyboardUtils$OooO0O0;->OoooOoO:Landroid/view/Window;

    iput-object p2, p0, Lcom/cyjh/common/util/toast/KeyboardUtils$OooO0O0;->OoooOoo:[I

    iput-object p3, p0, Lcom/cyjh/common/util/toast/KeyboardUtils$OooO0O0;->Ooooo00:Landroid/view/View;

    iput p4, p0, Lcom/cyjh/common/util/toast/KeyboardUtils$OooO0O0;->Ooooo0o:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 8

    iget-object v0, p0, Lcom/cyjh/common/util/toast/KeyboardUtils$OooO0O0;->OoooOoO:Landroid/view/Window;

    invoke-static {v0}, Lcom/cyjh/common/util/toast/KeyboardUtils;->OooO0O0(Landroid/view/Window;)I

    move-result v0

    iget-object v1, p0, Lcom/cyjh/common/util/toast/KeyboardUtils$OooO0O0;->OoooOoo:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/cyjh/common/util/toast/KeyboardUtils$OooO0O0;->Ooooo00:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    iget-object v4, p0, Lcom/cyjh/common/util/toast/KeyboardUtils$OooO0O0;->Ooooo00:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    iget-object v5, p0, Lcom/cyjh/common/util/toast/KeyboardUtils$OooO0O0;->Ooooo00:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    iget v6, p0, Lcom/cyjh/common/util/toast/KeyboardUtils$OooO0O0;->Ooooo0o:I

    iget-object v7, p0, Lcom/cyjh/common/util/toast/KeyboardUtils$OooO0O0;->OoooOoO:Landroid/view/Window;

    invoke-static {v7}, Lcom/cyjh/common/util/toast/KeyboardUtils;->OooO00o(Landroid/view/Window;)I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/view/View;->setPadding(IIII)V

    iget-object v1, p0, Lcom/cyjh/common/util/toast/KeyboardUtils$OooO0O0;->OoooOoo:[I

    aput v0, v1, v2

    :cond_0
    return-void
.end method
