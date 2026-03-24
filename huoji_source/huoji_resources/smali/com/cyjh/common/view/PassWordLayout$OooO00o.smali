.class public Lcom/cyjh/common/view/PassWordLayout$OooO00o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/common/view/PassWordLayout;->OooO0o(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OoooOoO:Lcom/cyjh/common/view/PassWordLayout;


# direct methods
.method public constructor <init>(Lcom/cyjh/common/view/PassWordLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/cyjh/common/view/PassWordLayout$OooO00o;->OoooOoO:Lcom/cyjh/common/view/PassWordLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/cyjh/common/view/PassWordLayout$OooO00o;->OoooOoO:Lcom/cyjh/common/view/PassWordLayout;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    iget-object p1, p0, Lcom/cyjh/common/view/PassWordLayout$OooO00o;->OoooOoO:Lcom/cyjh/common/view/PassWordLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setFocusableInTouchMode(Z)V

    iget-object p1, p0, Lcom/cyjh/common/view/PassWordLayout$OooO00o;->OoooOoO:Lcom/cyjh/common/view/PassWordLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->requestFocus()Z

    iget-object p1, p0, Lcom/cyjh/common/view/PassWordLayout$OooO00o;->OoooOoO:Lcom/cyjh/common/view/PassWordLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "input_method"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/cyjh/common/view/PassWordLayout$OooO00o;->OoooOoO:Lcom/cyjh/common/view/PassWordLayout;

    invoke-virtual {p1, v1, v0}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method
