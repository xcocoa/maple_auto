.class public Lz2/y9;
.super Lz2/w9;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz2/y9$OooO00o;
    }
.end annotation


# instance fields
.field private Ooooo0o:Landroid/widget/Button;

.field private OooooO0:Lz2/y9$OooO00o;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const v0, 0x7f110191

    invoke-direct {p0, p1, v0}, Lz2/w9;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method private OooO0o0()V
    .locals 1

    const v0, 0x7f090277

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lz2/y9;->Ooooo0o:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public OooO0o(Lz2/y9$OooO00o;)V
    .locals 0

    iput-object p1, p0, Lz2/y9;->OooooO0:Lz2/y9$OooO00o;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090277

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lz2/y9;->OooooO0:Lz2/y9$OooO00o;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lz2/y9$OooO00o;->OooO00o(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lz2/w9;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c00da

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(I)V

    const p1, 0x3f4ccccd    # 0.8f

    const v0, 0x3ecccccd    # 0.4f

    invoke-virtual {p0, p1, v0}, Lz2/w9;->OooO0Oo(FF)V

    invoke-direct {p0}, Lz2/y9;->OooO0o0()V

    return-void
.end method
