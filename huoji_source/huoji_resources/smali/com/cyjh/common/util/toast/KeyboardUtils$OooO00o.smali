.class public Lcom/cyjh/common/util/toast/KeyboardUtils$OooO00o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/common/util/toast/KeyboardUtils;->OooOOOo(Landroid/view/Window;Lcom/cyjh/common/util/toast/KeyboardUtils$OooO0OO;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OoooOoO:Landroid/view/Window;

.field public final synthetic OoooOoo:[I

.field public final synthetic Ooooo00:Lcom/cyjh/common/util/toast/KeyboardUtils$OooO0OO;


# direct methods
.method public constructor <init>(Landroid/view/Window;[ILcom/cyjh/common/util/toast/KeyboardUtils$OooO0OO;)V
    .locals 0

    iput-object p1, p0, Lcom/cyjh/common/util/toast/KeyboardUtils$OooO00o;->OoooOoO:Landroid/view/Window;

    iput-object p2, p0, Lcom/cyjh/common/util/toast/KeyboardUtils$OooO00o;->OoooOoo:[I

    iput-object p3, p0, Lcom/cyjh/common/util/toast/KeyboardUtils$OooO00o;->Ooooo00:Lcom/cyjh/common/util/toast/KeyboardUtils$OooO0OO;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    iget-object v0, p0, Lcom/cyjh/common/util/toast/KeyboardUtils$OooO00o;->OoooOoO:Landroid/view/Window;

    invoke-static {v0}, Lcom/cyjh/common/util/toast/KeyboardUtils;->OooO00o(Landroid/view/Window;)I

    move-result v0

    iget-object v1, p0, Lcom/cyjh/common/util/toast/KeyboardUtils$OooO00o;->OoooOoo:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/cyjh/common/util/toast/KeyboardUtils$OooO00o;->Ooooo00:Lcom/cyjh/common/util/toast/KeyboardUtils$OooO0OO;

    invoke-interface {v1, v0}, Lcom/cyjh/common/util/toast/KeyboardUtils$OooO0OO;->OooO00o(I)V

    iget-object v1, p0, Lcom/cyjh/common/util/toast/KeyboardUtils$OooO00o;->OoooOoo:[I

    aput v0, v1, v2

    :cond_0
    return-void
.end method
