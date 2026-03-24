.class public Lcom/cyjh/common/view/SLEditTextView;
.super Landroidx/appcompat/widget/AppCompatEditText;
.source ""

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;
.implements Landroid/text/TextWatcher;


# static fields
.field private static final OooooOo:I = 0x0

.field private static final Oooooo:I = 0x2

.field private static final Oooooo0:I = 0x1

.field private static final OoooooO:I = 0x3


# instance fields
.field private OoooOoO:Landroid/content/Context;

.field private OoooOoo:Landroid/graphics/Paint;

.field private Ooooo00:I

.field private Ooooo0o:Landroid/graphics/drawable/Drawable;

.field private OooooO0:Landroid/graphics/drawable/Drawable;

.field private OooooOO:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatEditText;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/cyjh/common/view/SLEditTextView;->OooO0Oo(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1}, Lcom/cyjh/common/view/SLEditTextView;->OooO0Oo(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, p1}, Lcom/cyjh/common/view/SLEditTextView;->OooO0Oo(Landroid/content/Context;)V

    return-void
.end method

.method public static OooO0O0(Landroid/content/Context;F)I
    .locals 0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method private OooO0OO()V
    .locals 2

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/cyjh/common/view/SLEditTextView;->OoooOoo:Landroid/graphics/Paint;

    const/high16 v1, 0x40400000    # 3.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const-string v0, "#a9b7b7"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyjh/common/view/SLEditTextView;->Ooooo00:I

    return-void
.end method

.method private OooO0Oo(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/cyjh/common/view/SLEditTextView;->OoooOoO:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/cyjh/common/view/SLEditTextView;->setDrawable(Landroid/content/Context;)V

    invoke-virtual {p0, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    invoke-virtual {p0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/cyjh/common/view/SLEditTextView;->OooO0o0(Z)V

    return-void
.end method

.method private OooO0o0(Z)V
    .locals 4

    invoke-virtual {p0}, Landroid/widget/EditText;->length()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-lez v0, :cond_0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/cyjh/common/view/SLEditTextView;->OooooO0:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/EditText;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aget-object v0, v0, v2

    iget-object v2, p0, Lcom/cyjh/common/view/SLEditTextView;->Ooooo0o:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/EditText;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aget-object v1, v3, v1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/cyjh/common/view/SLEditTextView;->OooooO0:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/EditText;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aget-object v0, v0, v2

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/widget/EditText;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aget-object v1, v3, v1

    :goto_0
    invoke-virtual {p0, p1, v0, v2, v1}, Landroid/widget/EditText;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public OooO00o()V
    .locals 4

    iget-object v0, p0, Lcom/cyjh/common/view/SLEditTextView;->OooooO0:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/EditText;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {p0}, Landroid/widget/EditText;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x3

    aget-object v2, v2, v3

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v3, v2}, Landroid/widget/EditText;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/cyjh/common/view/SLEditTextView;->OooO0o0(Z)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cyjh/common/view/SLEditTextView;->Ooooo0o:Landroid/graphics/drawable/Drawable;

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/EditText;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0

    iput-boolean p2, p0, Lcom/cyjh/common/view/SLEditTextView;->OooooOO:Z

    invoke-direct {p0, p2}, Lcom/cyjh/common/view/SLEditTextView;->OooO0o0(Z)V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/EditText;->onTextChanged(Ljava/lang/CharSequence;III)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/widget/EditText;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/EditText;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/EditText;->getCompoundPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/EditText;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/EditText;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const-string v0, ""

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/EditText;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setDrawable(Landroid/content/Context;)V
    .locals 4

    invoke-virtual {p0}, Landroid/widget/EditText;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/cyjh/common/view/SLEditTextView;->Ooooo0o:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/EditText;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/cyjh/common/R$drawable;->icon_clear_edit:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/common/view/SLEditTextView;->Ooooo0o:Landroid/graphics/drawable/Drawable;

    :cond_0
    iget-object v0, p0, Lcom/cyjh/common/view/SLEditTextView;->Ooooo0o:Landroid/graphics/drawable/Drawable;

    const/high16 v1, 0x41c80000    # 25.0f

    invoke-static {p1, v1}, Lcom/cyjh/common/view/SLEditTextView;->OooO0O0(Landroid/content/Context;F)I

    move-result v2

    invoke-static {p1, v1}, Lcom/cyjh/common/view/SLEditTextView;->OooO0O0(Landroid/content/Context;F)I

    move-result v1

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v2, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0}, Landroid/widget/EditText;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aget-object v0, v0, v3

    iput-object v0, p0, Lcom/cyjh/common/view/SLEditTextView;->OooooO0:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    const/high16 v1, 0x41e00000    # 28.0f

    invoke-static {p1, v1}, Lcom/cyjh/common/view/SLEditTextView;->OooO0O0(Landroid/content/Context;F)I

    move-result v2

    invoke-static {p1, v1}, Lcom/cyjh/common/view/SLEditTextView;->OooO0O0(Landroid/content/Context;F)I

    move-result p1

    invoke-virtual {v0, v3, v3, v2, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_1
    return-void
.end method
