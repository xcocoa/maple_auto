.class public abstract Lcom/cyjh/common/view/ProcessButton;
.super Lcom/cyjh/common/view/FlatButton;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyjh/common/view/ProcessButton$SavedState;
    }
.end annotation


# instance fields
.field private Ooooo0o:I

.field private OooooO0:I

.field private OooooOO:I

.field private OooooOo:Landroid/graphics/drawable/GradientDrawable;

.field private Oooooo:Landroid/graphics/drawable/GradientDrawable;

.field private Oooooo0:Landroid/graphics/drawable/GradientDrawable;

.field private OoooooO:Ljava/lang/CharSequence;

.field private Ooooooo:Ljava/lang/CharSequence;

.field private o0OoOo0:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/cyjh/common/view/FlatButton;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/cyjh/common/view/ProcessButton;->OooO0oO(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/cyjh/common/view/FlatButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1, p2}, Lcom/cyjh/common/view/ProcessButton;->OooO0oO(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/cyjh/common/view/FlatButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, p1, p2}, Lcom/cyjh/common/view/ProcessButton;->OooO0oO(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private OooO0oO(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/cyjh/common/view/ProcessButton;->OooooOO:I

    const/16 v0, 0x64

    iput v0, p0, Lcom/cyjh/common/view/ProcessButton;->OooooO0:I

    sget v0, Lcom/cyjh/common/R$drawable;->rect_progress:I

    invoke-virtual {p0, v0}, Lcom/cyjh/common/view/FlatButton;->OooO0o0(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    iput-object v0, p0, Lcom/cyjh/common/view/ProcessButton;->OooooOo:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0}, Lcom/cyjh/common/view/FlatButton;->getCornerRadius()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    sget v0, Lcom/cyjh/common/R$drawable;->rect_complete:I

    invoke-virtual {p0, v0}, Lcom/cyjh/common/view/FlatButton;->OooO0o0(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    iput-object v0, p0, Lcom/cyjh/common/view/ProcessButton;->Oooooo0:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0}, Lcom/cyjh/common/view/FlatButton;->getCornerRadius()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    sget v0, Lcom/cyjh/common/R$drawable;->rect_error:I

    invoke-virtual {p0, v0}, Lcom/cyjh/common/view/FlatButton;->OooO0o0(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    iput-object v0, p0, Lcom/cyjh/common/view/ProcessButton;->Oooooo:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0}, Lcom/cyjh/common/view/FlatButton;->getCornerRadius()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    if-eqz p2, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/cyjh/common/view/ProcessButton;->OooO0oo(Landroid/content/Context;Landroid/util/AttributeSet;)V

    :cond_0
    return-void
.end method

.method private OooO0oo(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    sget-object v0, Lcom/cyjh/common/R$styleable;->ProcessButton:[I

    invoke-virtual {p0, p1, p2, v0}, Lcom/cyjh/common/view/FlatButton;->OooO0o(Landroid/content/Context;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    sget p2, Lcom/cyjh/common/R$styleable;->ProcessButton_pb_textProgress:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/cyjh/common/view/ProcessButton;->OoooooO:Ljava/lang/CharSequence;

    sget p2, Lcom/cyjh/common/R$styleable;->ProcessButton_pb_textComplete:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/cyjh/common/view/ProcessButton;->Ooooooo:Ljava/lang/CharSequence;

    sget p2, Lcom/cyjh/common/R$styleable;->ProcessButton_pb_textError:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/cyjh/common/view/ProcessButton;->o0OoOo0:Ljava/lang/CharSequence;

    sget p2, Lcom/cyjh/common/R$color;->purple_progress:I

    invoke-virtual {p0, p2}, Lcom/cyjh/common/view/FlatButton;->OooO0OO(I)I

    move-result p2

    sget v0, Lcom/cyjh/common/R$styleable;->ProcessButton_pb_colorProgress:I

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iget-object v0, p0, Lcom/cyjh/common/view/ProcessButton;->OooooOo:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    sget p2, Lcom/cyjh/common/R$color;->green_complete:I

    invoke-virtual {p0, p2}, Lcom/cyjh/common/view/FlatButton;->OooO0OO(I)I

    move-result p2

    sget v0, Lcom/cyjh/common/R$styleable;->ProcessButton_pb_colorComplete:I

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iget-object v0, p0, Lcom/cyjh/common/view/ProcessButton;->Oooooo0:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    sget p2, Lcom/cyjh/common/R$color;->red_error:I

    invoke-virtual {p0, p2}, Lcom/cyjh/common/view/FlatButton;->OooO0OO(I)I

    move-result p2

    sget v0, Lcom/cyjh/common/R$styleable;->ProcessButton_pb_colorError:I

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iget-object v0, p0, Lcom/cyjh/common/view/ProcessButton;->Oooooo:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p2
.end method


# virtual methods
.method public abstract OooO(Landroid/graphics/Canvas;)V
.end method

.method public OooOO0()V
    .locals 1

    invoke-virtual {p0}, Lcom/cyjh/common/view/ProcessButton;->getCompleteText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/cyjh/common/view/ProcessButton;->getCompleteText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-virtual {p0}, Lcom/cyjh/common/view/ProcessButton;->getCompleteDrawable()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cyjh/common/view/FlatButton;->setBackgroundCompat(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public OooOO0O()V
    .locals 1

    invoke-virtual {p0}, Lcom/cyjh/common/view/ProcessButton;->getErrorText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/cyjh/common/view/ProcessButton;->getErrorText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-virtual {p0}, Lcom/cyjh/common/view/ProcessButton;->getErrorDrawable()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cyjh/common/view/FlatButton;->setBackgroundCompat(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public OooOO0o()V
    .locals 1

    invoke-virtual {p0}, Lcom/cyjh/common/view/FlatButton;->getNormalText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/cyjh/common/view/FlatButton;->getNormalText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-virtual {p0}, Lcom/cyjh/common/view/FlatButton;->getNormalDrawable()Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cyjh/common/view/FlatButton;->setBackgroundCompat(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public OooOOO0()V
    .locals 1

    invoke-virtual {p0}, Lcom/cyjh/common/view/ProcessButton;->getLoadingText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/cyjh/common/view/ProcessButton;->getLoadingText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-virtual {p0}, Lcom/cyjh/common/view/FlatButton;->getNormalDrawable()Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cyjh/common/view/FlatButton;->setBackgroundCompat(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public getCompleteDrawable()Landroid/graphics/drawable/GradientDrawable;
    .locals 1

    iget-object v0, p0, Lcom/cyjh/common/view/ProcessButton;->Oooooo0:Landroid/graphics/drawable/GradientDrawable;

    return-object v0
.end method

.method public getCompleteText()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/cyjh/common/view/ProcessButton;->Ooooooo:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getErrorDrawable()Landroid/graphics/drawable/GradientDrawable;
    .locals 1

    iget-object v0, p0, Lcom/cyjh/common/view/ProcessButton;->Oooooo:Landroid/graphics/drawable/GradientDrawable;

    return-object v0
.end method

.method public getErrorText()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/cyjh/common/view/ProcessButton;->o0OoOo0:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getLoadingText()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/cyjh/common/view/ProcessButton;->OoooooO:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getMaxProgress()I
    .locals 1

    iget v0, p0, Lcom/cyjh/common/view/ProcessButton;->OooooO0:I

    return v0
.end method

.method public getMinProgress()I
    .locals 1

    iget v0, p0, Lcom/cyjh/common/view/ProcessButton;->OooooOO:I

    return v0
.end method

.method public getProgress()I
    .locals 1

    iget v0, p0, Lcom/cyjh/common/view/ProcessButton;->Ooooo0o:I

    return v0
.end method

.method public getProgressDrawable()Landroid/graphics/drawable/GradientDrawable;
    .locals 1

    iget-object v0, p0, Lcom/cyjh/common/view/ProcessButton;->OooooOo:Landroid/graphics/drawable/GradientDrawable;

    return-object v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    iget v0, p0, Lcom/cyjh/common/view/ProcessButton;->Ooooo0o:I

    iget v1, p0, Lcom/cyjh/common/view/ProcessButton;->OooooOO:I

    if-le v0, v1, :cond_0

    iget v1, p0, Lcom/cyjh/common/view/ProcessButton;->OooooO0:I

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/cyjh/common/view/ProcessButton;->OooO(Landroid/graphics/Canvas;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/Button;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    instance-of v0, p1, Lcom/cyjh/common/view/ProcessButton$SavedState;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/cyjh/common/view/ProcessButton$SavedState;

    invoke-static {p1}, Lcom/cyjh/common/view/ProcessButton$SavedState;->access$000(Lcom/cyjh/common/view/ProcessButton$SavedState;)I

    move-result v0

    iput v0, p0, Lcom/cyjh/common/view/ProcessButton;->Ooooo0o:I

    invoke-virtual {p1}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/widget/Button;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget p1, p0, Lcom/cyjh/common/view/ProcessButton;->Ooooo0o:I

    invoke-virtual {p0, p1}, Lcom/cyjh/common/view/ProcessButton;->setProgress(I)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/Button;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :goto_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    invoke-super {p0}, Landroid/widget/Button;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Lcom/cyjh/common/view/ProcessButton$SavedState;

    invoke-direct {v1, v0}, Lcom/cyjh/common/view/ProcessButton$SavedState;-><init>(Landroid/os/Parcelable;)V

    iget v0, p0, Lcom/cyjh/common/view/ProcessButton;->Ooooo0o:I

    invoke-static {v1, v0}, Lcom/cyjh/common/view/ProcessButton$SavedState;->access$002(Lcom/cyjh/common/view/ProcessButton$SavedState;I)I

    return-object v1
.end method

.method public setCompleteDrawable(Landroid/graphics/drawable/GradientDrawable;)V
    .locals 0

    iput-object p1, p0, Lcom/cyjh/common/view/ProcessButton;->Oooooo0:Landroid/graphics/drawable/GradientDrawable;

    return-void
.end method

.method public setCompleteText(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/cyjh/common/view/ProcessButton;->Ooooooo:Ljava/lang/CharSequence;

    return-void
.end method

.method public setErrorDrawable(Landroid/graphics/drawable/GradientDrawable;)V
    .locals 0

    iput-object p1, p0, Lcom/cyjh/common/view/ProcessButton;->Oooooo:Landroid/graphics/drawable/GradientDrawable;

    return-void
.end method

.method public setErrorText(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/cyjh/common/view/ProcessButton;->o0OoOo0:Ljava/lang/CharSequence;

    return-void
.end method

.method public setLoadingText(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/cyjh/common/view/ProcessButton;->OoooooO:Ljava/lang/CharSequence;

    return-void
.end method

.method public setProgress(I)V
    .locals 2

    iput p1, p0, Lcom/cyjh/common/view/ProcessButton;->Ooooo0o:I

    iget v0, p0, Lcom/cyjh/common/view/ProcessButton;->OooooOO:I

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/cyjh/common/view/ProcessButton;->OooOO0o()V

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/cyjh/common/view/ProcessButton;->OooooO0:I

    if-ne p1, v1, :cond_1

    invoke-virtual {p0}, Lcom/cyjh/common/view/ProcessButton;->OooOO0()V

    goto :goto_0

    :cond_1
    if-ge p1, v0, :cond_2

    invoke-virtual {p0}, Lcom/cyjh/common/view/ProcessButton;->OooOO0O()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/cyjh/common/view/ProcessButton;->OooOOO0()V

    :goto_0
    invoke-virtual {p0}, Landroid/widget/Button;->invalidate()V

    return-void
.end method

.method public setProgressDrawable(Landroid/graphics/drawable/GradientDrawable;)V
    .locals 0

    iput-object p1, p0, Lcom/cyjh/common/view/ProcessButton;->OooooOo:Landroid/graphics/drawable/GradientDrawable;

    return-void
.end method
