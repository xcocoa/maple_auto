.class public Lcom/cyjh/common/view/SlCustomInputLayout$OooO0O0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/common/view/SlCustomInputLayout;->OooO0o(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OoooOoO:Lcom/cyjh/common/view/SlCustomInputLayout;


# direct methods
.method public constructor <init>(Lcom/cyjh/common/view/SlCustomInputLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/cyjh/common/view/SlCustomInputLayout$OooO0O0;->OoooOoO:Lcom/cyjh/common/view/SlCustomInputLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0

    iget-object p1, p0, Lcom/cyjh/common/view/SlCustomInputLayout$OooO0O0;->OoooOoO:Lcom/cyjh/common/view/SlCustomInputLayout;

    if-eqz p2, :cond_0

    invoke-static {p1}, Lcom/cyjh/common/view/SlCustomInputLayout;->OooO00o(Lcom/cyjh/common/view/SlCustomInputLayout;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/cyjh/common/view/PassWordView;

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/cyjh/common/view/SlCustomInputLayout$OooO0O0;->OoooOoO:Lcom/cyjh/common/view/SlCustomInputLayout;

    invoke-static {p2}, Lcom/cyjh/common/view/SlCustomInputLayout;->OooO0O0(Lcom/cyjh/common/view/SlCustomInputLayout;)Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/cyjh/common/view/PassWordView;->setmIsShowRemindLine(Z)V

    invoke-virtual {p1}, Lcom/cyjh/common/view/PassWordView;->OooO0oO()V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/cyjh/common/view/SlCustomInputLayout;->OooO00o(Lcom/cyjh/common/view/SlCustomInputLayout;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/cyjh/common/view/PassWordView;

    if-eqz p1, :cond_1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/cyjh/common/view/PassWordView;->setmIsShowRemindLine(Z)V

    invoke-virtual {p1, p2}, Lcom/cyjh/common/view/PassWordView;->OooO0oo(Z)V

    :cond_1
    :goto_0
    return-void
.end method
