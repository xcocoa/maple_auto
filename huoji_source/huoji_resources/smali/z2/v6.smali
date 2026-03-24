.class public Lz2/v6;
.super Lz2/w9;
.source ""


# instance fields
.field private Ooooo0o:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const v0, 0x7f110191

    invoke-direct {p0, p1, v0}, Lz2/w9;-><init>(Landroid/content/Context;I)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-lt p1, v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x7f6

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/Window;->setType(I)V

    goto :goto_1

    :cond_0
    const/16 v0, 0x13

    if-lt p1, v0, :cond_1

    const/16 v0, 0x18

    if-ge p1, v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x7d5

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x7d2

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private synthetic OooO0o(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method private OooO0o0()V
    .locals 2

    const v0, 0x7f09045c

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lz2/v6;->Ooooo0o:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/ScrollingMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    const v0, 0x7f09045b

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lz2/o6;

    invoke-direct {v1, p0}, Lz2/o6;-><init>(Lz2/v6;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public synthetic OooO0oO(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lz2/v6;->OooO0o(Landroid/view/View;)V

    return-void
.end method

.method public OooO0oo(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lz2/v6;->Ooooo0o:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lz2/w9;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c00e7

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(I)V

    const p1, 0x3f19999a    # 0.6f

    invoke-virtual {p0, p1}, Lz2/w9;->OooO0O0(F)V

    invoke-direct {p0}, Lz2/v6;->OooO0o0()V

    return-void
.end method
