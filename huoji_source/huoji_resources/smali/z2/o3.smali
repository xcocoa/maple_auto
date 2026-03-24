.class public Lz2/o3;
.super Lz2/n3;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final OooooOO:Ljava/lang/String;

.field private static final OooooOo:I = 0x13

.field private static final Oooooo0:I = 0x18


# instance fields
.field public Ooooo0o:Landroid/content/Context;

.field private OooooO0:Lcom/cyjh/common/view/SlLoadingView;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lz2/o3;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lz2/o3;->OooooOO:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    sget v0, Lcom/cyjh/common/R$style;->Theme_Dialog:I

    invoke-direct {p0, p1, v0}, Lz2/n3;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lz2/o3;->Ooooo0o:Landroid/content/Context;

    if-eqz p2, :cond_2

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x1a

    if-lt p1, p2, :cond_0

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 p2, 0x7f6

    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/Window;->setType(I)V

    goto :goto_1

    :cond_0
    const/16 p2, 0x13

    if-lt p1, p2, :cond_1

    const/16 p2, 0x18

    if-ge p1, p2, :cond_1

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 p2, 0x7d5

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 p2, 0x7d2

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private OooO0o0()V
    .locals 1

    sget v0, Lcom/cyjh/common/R$id;->slLoadingView:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cyjh/common/view/SlLoadingView;

    iput-object v0, p0, Lz2/o3;->OooooO0:Lcom/cyjh/common/view/SlLoadingView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 0

    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lz2/n3;->onCreate(Landroid/os/Bundle;)V

    sget p1, Lcom/cyjh/common/R$layout;->dialog_library_ui_loading:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(I)V

    const p1, 0x3e4ccccd    # 0.2f

    invoke-virtual {p0, p1}, Lz2/n3;->OooO0O0(F)V

    const p1, 0x3f4ccccd    # 0.8f

    const v0, 0x3f19999a    # 0.6f

    invoke-virtual {p0, p1, v0}, Lz2/n3;->OooO0Oo(FF)V

    invoke-direct {p0}, Lz2/o3;->OooO0o0()V

    return-void
.end method
