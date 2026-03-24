.class public final Lcom/cyjh/mobileanjian/ipc/uip/d;
.super Landroid/widget/EditText;
.source ""


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setLongClickable(Z)V

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setTextIsSelectable(Z)V

    new-instance p1, Lcom/cyjh/mobileanjian/ipc/uip/d$OooO00o;

    invoke-direct {p1, p0}, Lcom/cyjh/mobileanjian/ipc/uip/d$OooO00o;-><init>(Lcom/cyjh/mobileanjian/ipc/uip/d;)V

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    return-void
.end method


# virtual methods
.method public final onTextContextMenuItem(I)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
