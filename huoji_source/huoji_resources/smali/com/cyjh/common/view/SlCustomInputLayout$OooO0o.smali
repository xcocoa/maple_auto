.class public Lcom/cyjh/common/view/SlCustomInputLayout$OooO0o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/common/view/SlCustomInputLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OooO0o"
.end annotation


# instance fields
.field public final synthetic OoooOoO:Lcom/cyjh/common/view/SlCustomInputLayout;


# direct methods
.method public constructor <init>(Lcom/cyjh/common/view/SlCustomInputLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/cyjh/common/view/SlCustomInputLayout$OooO0o;->OoooOoO:Lcom/cyjh/common/view/SlCustomInputLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_5

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "keyCode="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result p1

    if-eqz p1, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x7

    const-string p3, ""

    const/4 v0, 0x1

    if-lt p2, p1, :cond_1

    const/16 v1, 0x10

    if-gt p2, v1, :cond_1

    iget-object v1, p0, Lcom/cyjh/common/view/SlCustomInputLayout$OooO0o;->OoooOoO:Lcom/cyjh/common/view/SlCustomInputLayout;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sub-int/2addr p2, p1

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/cyjh/common/view/SlCustomInputLayout;->OooO0o0(Ljava/lang/String;)V

    return v0

    :cond_1
    const/16 p1, 0x1d

    const-string v1, " \u5c0f\u5199\u5b57\u6bcd keyCode="

    const/16 v2, 0x36

    if-lt p2, p1, :cond_2

    if-gt p2, v2, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object p1, p0, Lcom/cyjh/common/view/SlCustomInputLayout$OooO0o;->OoooOoO:Lcom/cyjh/common/view/SlCustomInputLayout;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/cyjh/common/view/SlCustomInputLayout;->OooO0o0(Ljava/lang/String;)V

    return v0

    :cond_2
    const/16 p1, 0x9f

    if-lt p2, p1, :cond_3

    if-gt p2, v2, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object p1, p0, Lcom/cyjh/common/view/SlCustomInputLayout$OooO0o;->OoooOoO:Lcom/cyjh/common/view/SlCustomInputLayout;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/cyjh/common/view/SlCustomInputLayout;->OooO0o0(Ljava/lang/String;)V

    return v0

    :cond_3
    const/16 p1, 0x43

    if-ne p2, p1, :cond_4

    iget-object p1, p0, Lcom/cyjh/common/view/SlCustomInputLayout$OooO0o;->OoooOoO:Lcom/cyjh/common/view/SlCustomInputLayout;

    invoke-virtual {p1}, Lcom/cyjh/common/view/SlCustomInputLayout;->OooO0oo()V

    return v0

    :cond_4
    iget-object p1, p0, Lcom/cyjh/common/view/SlCustomInputLayout$OooO0o;->OoooOoO:Lcom/cyjh/common/view/SlCustomInputLayout;

    invoke-static {p1}, Lcom/cyjh/common/view/SlCustomInputLayout;->OooO0OO(Lcom/cyjh/common/view/SlCustomInputLayout;)Landroid/content/Context;

    move-result-object p1

    const-string p2, "input_method"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    iget-object p2, p0, Lcom/cyjh/common/view/SlCustomInputLayout$OooO0o;->OoooOoO:Lcom/cyjh/common/view/SlCustomInputLayout;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object p2

    const/4 p3, 0x2

    invoke-virtual {p1, p2, p3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_5
    return v0
.end method
