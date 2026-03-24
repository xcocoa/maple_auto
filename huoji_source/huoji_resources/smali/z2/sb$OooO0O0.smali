.class public Lz2/sb$OooO0O0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz2/sb;->OooOoOO()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OoooOoO:Lz2/sb;


# direct methods
.method public constructor <init>(Lz2/sb;)V
    .locals 0

    iput-object p1, p0, Lz2/sb$OooO0O0;->OoooOoO:Lz2/sb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    iget-object p2, p0, Lz2/sb$OooO0O0;->OoooOoO:Lz2/sb;

    invoke-static {p2}, Lz2/sb;->OooOo0O(Lz2/sb;)Landroid/widget/TextView;

    move-result-object p2

    iget-object p3, p0, Lz2/sb$OooO0O0;->OoooOoO:Lz2/sb;

    sget p4, Lcom/cyjh/feedback/libraryfeedbackinfo/R$string;->feedback_num_hint:I

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p3, p4, v0}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
