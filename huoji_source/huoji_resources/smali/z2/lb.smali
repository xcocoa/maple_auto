.class public Lz2/lb;
.super Lz2/hb;
.source ""


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    sget v0, Lcom/cyjh/feedback/libraryfeedbackinfo/R$style;->Theme_Dialog:I

    invoke-direct {p0, p1, v0}, Lz2/hb;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lz2/hb;->onCreate(Landroid/os/Bundle;)V

    sget p1, Lcom/cyjh/feedback/libraryfeedbackinfo/R$layout;->dialog_loading:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(I)V

    const p1, 0x3e99999a    # 0.3f

    invoke-virtual {p0, p1}, Lz2/hb;->OooOo00(F)V

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1, p1}, Lz2/hb;->OooOo0O(FF)V

    return-void
.end method
