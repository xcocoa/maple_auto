.class public Lz2/q6;
.super Lz2/w9;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz2/q6$OooO00o;,
        Lz2/q6$OooO0O0;
    }
.end annotation


# instance fields
.field private Ooooo0o:Landroid/widget/Button;

.field private OooooO0:Landroid/widget/Button;

.field private OooooOO:Lz2/q6$OooO0O0;

.field private OooooOo:Lz2/q6$OooO00o;


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

    const/16 v0, 0x7d5

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x7d2

    goto :goto_0

    :goto_1
    return-void
.end method

.method private OooO0o0()V
    .locals 1

    const v0, 0x7f0902bd

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lz2/q6;->Ooooo0o:Landroid/widget/Button;

    const v0, 0x7f0902bc

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lz2/q6;->OooooO0:Landroid/widget/Button;

    iget-object v0, p0, Lz2/q6;->Ooooo0o:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lz2/q6;->OooooO0:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public OooO0o(Lz2/q6$OooO00o;)V
    .locals 0

    iput-object p1, p0, Lz2/q6;->OooooOo:Lz2/q6$OooO00o;

    return-void
.end method

.method public OooO0oO(Lz2/q6$OooO0O0;)V
    .locals 0

    iput-object p1, p0, Lz2/q6;->OooooOO:Lz2/q6$OooO0O0;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lz2/q6;->OooooOO:Lz2/q6$OooO0O0;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lz2/q6$OooO0O0;->onClick(Landroid/view/View;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lz2/q6;->OooooOo:Lz2/q6$OooO00o;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lz2/q6$OooO00o;->onClick(Landroid/view/View;)V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f0902bc
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lz2/w9;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c00db

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(I)V

    const p1, 0x3dcccccd    # 0.1f

    invoke-virtual {p0, p1}, Lz2/w9;->OooO0O0(F)V

    const p1, 0x3f4ccccd    # 0.8f

    const v0, 0x3e99999a    # 0.3f

    invoke-virtual {p0, p1, v0}, Lz2/w9;->OooO0Oo(FF)V

    invoke-direct {p0}, Lz2/q6;->OooO0o0()V

    return-void
.end method
