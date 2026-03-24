.class public Lz2/af0;
.super Lz2/qe0;
.source ""


# static fields
.field private static final OooO0oO:Ljava/lang/String; = "PopupWindowProxy"


# direct methods
.method public constructor <init>(Landroid/view/View;IILrazerdp/basepopup/BasePopupHelper;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lz2/qe0;-><init>(Landroid/view/View;IILrazerdp/basepopup/BasePopupHelper;)V

    return-void
.end method


# virtual methods
.method public OooO0OO()Z
    .locals 1

    invoke-super {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public OooO0Oo(Landroid/view/View;III)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;III)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    :goto_0
    return-void
.end method

.method public OooO0o0(Landroid/view/View;III)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    return-void
.end method

.method public OooOOOo(Landroid/view/View;II)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lz2/af0;->OooOOo0(Landroid/view/View;III)V

    return-void
.end method

.method public OooOOo(Landroid/view/View;III)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lz2/se0;->OooO0o0(Lz2/qe0;Landroid/view/View;III)V

    return-void
.end method

.method public OooOOo0(Landroid/view/View;III)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lz2/se0;->OooO0Oo(Lz2/qe0;Landroid/view/View;III)V

    return-void
.end method
