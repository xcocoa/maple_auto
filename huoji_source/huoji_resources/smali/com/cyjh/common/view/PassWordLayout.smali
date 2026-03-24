.class public Lcom/cyjh/common/view/PassWordLayout;
.super Landroid/widget/LinearLayout;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyjh/common/view/PassWordLayout$SavedState;,
        Lcom/cyjh/common/view/PassWordLayout$OooO0OO;,
        Lcom/cyjh/common/view/PassWordLayout$OooO0o;,
        Lcom/cyjh/common/view/PassWordLayout$OooO;
    }
.end annotation


# instance fields
.field private OoooOoO:I

.field private OoooOoo:I

.field private Ooooo00:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private Ooooo0o:Lcom/cyjh/common/view/PassWordLayout$OooO;

.field private OooooO0:Landroid/content/Context;

.field private OooooOO:Z

.field private OooooOo:I

.field private Oooooo:I

.field private Oooooo0:I

.field private OoooooO:I

.field private Ooooooo:I

.field private o00O0O:I

.field private o00Oo0:I

.field private o00Ooo:I

.field private o00o0O:I

.field private o0OoOo0:I

.field private ooOO:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/cyjh/common/view/PassWordLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/cyjh/common/view/PassWordLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x6

    iput p3, p0, Lcom/cyjh/common/view/PassWordLayout;->OoooOoO:I

    const/4 p3, 0x0

    iput p3, p0, Lcom/cyjh/common/view/PassWordLayout;->OoooOoo:I

    invoke-direct {p0, p1, p2}, Lcom/cyjh/common/view/PassWordLayout;->OooO0o(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static synthetic OooO00o(Lcom/cyjh/common/view/PassWordLayout;)I
    .locals 0

    iget p0, p0, Lcom/cyjh/common/view/PassWordLayout;->OoooOoo:I

    return p0
.end method

.method public static synthetic OooO0O0(Lcom/cyjh/common/view/PassWordLayout;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/cyjh/common/view/PassWordLayout;->OooooOO:Z

    return p0
.end method

.method public static synthetic OooO0OO(Lcom/cyjh/common/view/PassWordLayout;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/cyjh/common/view/PassWordLayout;->OooooO0:Landroid/content/Context;

    return-object p0
.end method

.method private OooO0Oo(Landroid/content/Context;)V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/cyjh/common/view/PassWordLayout;->OoooOoO:I

    if-ge v0, v1, :cond_1

    new-instance v1, Lcom/cyjh/common/view/PassWordView;

    invoke-direct {v1, p1}, Lcom/cyjh/common/view/PassWordView;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, p0, Lcom/cyjh/common/view/PassWordLayout;->ooOO:I

    iget v4, p0, Lcom/cyjh/common/view/PassWordLayout;->o00O0O:I

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    if-lez v0, :cond_0

    iget v3, p0, Lcom/cyjh/common/view/PassWordLayout;->o0OoOo0:I

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    :cond_0
    iget v3, p0, Lcom/cyjh/common/view/PassWordLayout;->OooooOo:I

    invoke-virtual {v1, v3}, Lcom/cyjh/common/view/PassWordView;->setInputStateColor(I)V

    iget v3, p0, Lcom/cyjh/common/view/PassWordLayout;->Oooooo0:I

    invoke-virtual {v1, v3}, Lcom/cyjh/common/view/PassWordView;->setNoinputColor(I)V

    iget v3, p0, Lcom/cyjh/common/view/PassWordLayout;->OoooooO:I

    invoke-virtual {v1, v3}, Lcom/cyjh/common/view/PassWordView;->setInputStateTextColor(I)V

    iget v3, p0, Lcom/cyjh/common/view/PassWordLayout;->Oooooo:I

    invoke-virtual {v1, v3}, Lcom/cyjh/common/view/PassWordView;->setRemindLineColor(I)V

    iget v3, p0, Lcom/cyjh/common/view/PassWordLayout;->Ooooooo:I

    invoke-virtual {v1, v3}, Lcom/cyjh/common/view/PassWordView;->setmBoxDrawType(I)V

    iget v3, p0, Lcom/cyjh/common/view/PassWordLayout;->o00Oo0:I

    invoke-virtual {v1, v3}, Lcom/cyjh/common/view/PassWordView;->setmShowPassType(I)V

    iget v3, p0, Lcom/cyjh/common/view/PassWordLayout;->o00Ooo:I

    invoke-virtual {v1, v3}, Lcom/cyjh/common/view/PassWordView;->setmDrawTxtSize(I)V

    iget v3, p0, Lcom/cyjh/common/view/PassWordLayout;->o00o0O:I

    invoke-virtual {v1, v3}, Lcom/cyjh/common/view/PassWordView;->setmDrawBoxLineSize(I)V

    iget-boolean v3, p0, Lcom/cyjh/common/view/PassWordLayout;->OooooOO:Z

    invoke-virtual {v1, v3}, Lcom/cyjh/common/view/PassWordView;->setmIsShowRemindLine(Z)V

    invoke-virtual {p0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private OooO0o(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    iput-object p1, p0, Lcom/cyjh/common/view/PassWordLayout;->OooooO0:Landroid/content/Context;

    sget-object v0, Lcom/cyjh/common/R$styleable;->PassWordLayoutStyle:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lcom/cyjh/common/R$styleable;->PassWordLayoutStyle_box_input_color:I

    sget v0, Lcom/cyjh/common/R$color;->pass_view_rect_input:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/cyjh/common/view/PassWordLayout;->OooooOo:I

    sget p2, Lcom/cyjh/common/R$styleable;->PassWordLayoutStyle_box_no_input_color:I

    sget v1, Lcom/cyjh/common/R$color;->regi_line_color:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/cyjh/common/view/PassWordLayout;->Oooooo0:I

    sget p2, Lcom/cyjh/common/R$styleable;->PassWordLayoutStyle_input_line_color:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/cyjh/common/view/PassWordLayout;->Oooooo:I

    sget p2, Lcom/cyjh/common/R$styleable;->PassWordLayoutStyle_text_input_color:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/cyjh/common/view/PassWordLayout;->OoooooO:I

    sget p2, Lcom/cyjh/common/R$styleable;->PassWordLayoutStyle_box_draw_type:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/cyjh/common/view/PassWordLayout;->Ooooooo:I

    sget p2, Lcom/cyjh/common/R$styleable;->PassWordLayoutStyle_interval_width:I

    const/4 v1, 0x4

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/cyjh/common/view/PassWordLayout;->o0OoOo0:I

    sget p2, Lcom/cyjh/common/R$styleable;->PassWordLayoutStyle_pass_leng:I

    const/4 v2, 0x6

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/cyjh/common/view/PassWordLayout;->OoooOoO:I

    sget p2, Lcom/cyjh/common/R$styleable;->PassWordLayoutStyle_item_width:I

    const/16 v2, 0x28

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/cyjh/common/view/PassWordLayout;->ooOO:I

    sget p2, Lcom/cyjh/common/R$styleable;->PassWordLayoutStyle_item_height:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/cyjh/common/view/PassWordLayout;->o00O0O:I

    sget p2, Lcom/cyjh/common/R$styleable;->PassWordLayoutStyle_pass_inputed_type:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/cyjh/common/view/PassWordLayout;->o00Oo0:I

    sget p2, Lcom/cyjh/common/R$styleable;->PassWordLayoutStyle_draw_txt_size:I

    const/16 v2, 0x12

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/cyjh/common/view/PassWordLayout;->o00Ooo:I

    sget p2, Lcom/cyjh/common/R$styleable;->PassWordLayoutStyle_draw_box_line_size:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/cyjh/common/view/PassWordLayout;->o00o0O:I

    sget p2, Lcom/cyjh/common/R$styleable;->PassWordLayoutStyle_is_show_input_line:I

    const/4 v1, 0x1

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/cyjh/common/view/PassWordLayout;->OooooOO:Z

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/cyjh/common/view/PassWordLayout;->Ooooo00:Ljava/util/List;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 p1, 0x11

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance p1, Lcom/cyjh/common/view/PassWordLayout$OooO00o;

    invoke-direct {p1, p0}, Lcom/cyjh/common/view/PassWordLayout$OooO00o;-><init>(Lcom/cyjh/common/view/PassWordLayout;)V

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p1, Lcom/cyjh/common/view/PassWordLayout$OooO0OO;

    invoke-direct {p1, p0}, Lcom/cyjh/common/view/PassWordLayout$OooO0OO;-><init>(Lcom/cyjh/common/view/PassWordLayout;)V

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    new-instance p1, Lcom/cyjh/common/view/PassWordLayout$OooO0O0;

    invoke-direct {p1, p0}, Lcom/cyjh/common/view/PassWordLayout$OooO0O0;-><init>(Lcom/cyjh/common/view/PassWordLayout;)V

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method

.method private OooOO0()V
    .locals 3

    iget v0, p0, Lcom/cyjh/common/view/PassWordLayout;->OoooOoo:I

    const-string v1, ""

    if-lez v0, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lcom/cyjh/common/view/PassWordLayout;->OooO(IZLjava/lang/String;)V

    iget v0, p0, Lcom/cyjh/common/view/PassWordLayout;->OoooOoo:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/cyjh/common/view/PassWordLayout;->OoooOoo:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cyjh/common/view/PassWordView;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cyjh/common/view/PassWordView;

    if-eqz v0, :cond_1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/cyjh/common/view/PassWordView;->setmPassText(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/cyjh/common/view/PassWordView;->OooO0oO()V

    :cond_1
    return-void
.end method

.method private setNextInput(Ljava/lang/String;)V
    .locals 2

    iget v0, p0, Lcom/cyjh/common/view/PassWordLayout;->OoooOoo:I

    iget v1, p0, Lcom/cyjh/common/view/PassWordLayout;->OoooOoO:I

    if-ge v0, v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, p1}, Lcom/cyjh/common/view/PassWordLayout;->OooO(IZLjava/lang/String;)V

    iget v0, p0, Lcom/cyjh/common/view/PassWordLayout;->OoooOoo:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/cyjh/common/view/PassWordLayout;->OoooOoo:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cyjh/common/view/PassWordView;

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/cyjh/common/view/PassWordView;->setmPassText(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/cyjh/common/view/PassWordView;->OooO0oO()V

    :cond_0
    return-void
.end method


# virtual methods
.method public OooO(IZLjava/lang/String;)V
    .locals 0

    if-gez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/cyjh/common/view/PassWordView;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p3}, Lcom/cyjh/common/view/PassWordView;->setmPassText(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/cyjh/common/view/PassWordView;->OooO0oo(Z)V

    :cond_1
    return-void
.end method

.method public OooO0o0(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/cyjh/common/view/PassWordLayout;->Ooooo00:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/cyjh/common/view/PassWordLayout;->OoooOoO:I

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/cyjh/common/view/PassWordLayout;->Ooooo00:Ljava/util/List;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, p1}, Lcom/cyjh/common/view/PassWordLayout;->setNextInput(Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lcom/cyjh/common/view/PassWordLayout;->Ooooo0o:Lcom/cyjh/common/view/PassWordLayout$OooO;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/cyjh/common/view/PassWordLayout;->Ooooo00:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget v0, p0, Lcom/cyjh/common/view/PassWordLayout;->OoooOoO:I

    if-ge p1, v0, :cond_1

    iget-object p1, p0, Lcom/cyjh/common/view/PassWordLayout;->Ooooo0o:Lcom/cyjh/common/view/PassWordLayout$OooO;

    invoke-virtual {p0}, Lcom/cyjh/common/view/PassWordLayout;->getPassString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/cyjh/common/view/PassWordLayout$OooO;->OooO0OO(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/cyjh/common/view/PassWordLayout;->Ooooo0o:Lcom/cyjh/common/view/PassWordLayout$OooO;

    invoke-virtual {p0}, Lcom/cyjh/common/view/PassWordLayout;->getPassString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/cyjh/common/view/PassWordLayout$OooO;->OooO0O0(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public OooO0oO()V
    .locals 3

    iget-object v0, p0, Lcom/cyjh/common/view/PassWordLayout;->Ooooo00:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    const/4 v1, 0x0

    if-ltz v0, :cond_2

    const-string v2, ""

    if-lez v0, :cond_0

    invoke-virtual {p0, v0, v1, v2}, Lcom/cyjh/common/view/PassWordLayout;->OooO(IZLjava/lang/String;)V

    goto :goto_1

    :cond_0
    if-nez v0, :cond_1

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/cyjh/common/view/PassWordView;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v2}, Lcom/cyjh/common/view/PassWordView;->setmPassText(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/cyjh/common/view/PassWordView;->OooO0oO()V

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/cyjh/common/view/PassWordLayout;->Ooooo00:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iput v1, p0, Lcom/cyjh/common/view/PassWordLayout;->OoooOoo:I

    :cond_3
    iget-object v0, p0, Lcom/cyjh/common/view/PassWordLayout;->Ooooo0o:Lcom/cyjh/common/view/PassWordLayout$OooO;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/cyjh/common/view/PassWordLayout$OooO;->OooO00o()V

    :cond_4
    return-void
.end method

.method public OooO0oo()V
    .locals 2

    iget-object v0, p0, Lcom/cyjh/common/view/PassWordLayout;->Ooooo00:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/cyjh/common/view/PassWordLayout;->Ooooo00:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/cyjh/common/view/PassWordLayout;->OooOO0()V

    :cond_0
    iget-object v0, p0, Lcom/cyjh/common/view/PassWordLayout;->Ooooo0o:Lcom/cyjh/common/view/PassWordLayout$OooO;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/cyjh/common/view/PassWordLayout;->Ooooo00:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/cyjh/common/view/PassWordLayout;->Ooooo0o:Lcom/cyjh/common/view/PassWordLayout$OooO;

    invoke-virtual {p0}, Lcom/cyjh/common/view/PassWordLayout;->getPassString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/cyjh/common/view/PassWordLayout$OooO;->OooO0OO(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/cyjh/common/view/PassWordLayout;->Ooooo0o:Lcom/cyjh/common/view/PassWordLayout$OooO;

    invoke-interface {v0}, Lcom/cyjh/common/view/PassWordLayout$OooO;->OooO00o()V

    :cond_2
    :goto_0
    return-void
.end method

.method public getPassString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lcom/cyjh/common/view/PassWordLayout;->Ooooo00:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 1

    const/4 v0, 0x2

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const/high16 v0, 0x10000000

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    new-instance p1, Lcom/cyjh/common/view/PassWordLayout$OooO0o;

    const/4 v0, 0x0

    invoke-direct {p1, p0, p0, v0}, Lcom/cyjh/common/view/PassWordLayout$OooO0o;-><init>(Lcom/cyjh/common/view/PassWordLayout;Landroid/view/View;Z)V

    return-object p1
.end method

.method public onMeasure(II)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p1

    if-nez p1, :cond_1

    iget p1, p0, Lcom/cyjh/common/view/PassWordLayout;->OoooOoO:I

    iget p2, p0, Lcom/cyjh/common/view/PassWordLayout;->ooOO:I

    mul-int p2, p2, p1

    add-int/lit8 p1, p1, -0x1

    iget v0, p0, Lcom/cyjh/common/view/PassWordLayout;->o0OoOo0:I

    mul-int p1, p1, v0

    add-int/2addr p2, p1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result p1

    if-le p2, p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result p1

    iget p2, p0, Lcom/cyjh/common/view/PassWordLayout;->OoooOoO:I

    add-int/lit8 v0, p2, -0x1

    iget v1, p0, Lcom/cyjh/common/view/PassWordLayout;->o0OoOo0:I

    mul-int v0, v0, v1

    sub-int/2addr p1, v0

    div-int/2addr p1, p2

    iput p1, p0, Lcom/cyjh/common/view/PassWordLayout;->ooOO:I

    iput p1, p0, Lcom/cyjh/common/view/PassWordLayout;->o00O0O:I

    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/cyjh/common/view/PassWordLayout;->OooO0Oo(Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4

    instance-of v0, p1, Lcom/cyjh/common/view/PassWordLayout$SavedState;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    :cond_0
    check-cast p1, Lcom/cyjh/common/view/PassWordLayout$SavedState;

    invoke-virtual {p1}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-object p1, p1, Lcom/cyjh/common/view/PassWordLayout$SavedState;->saveString:Ljava/util/List;

    iput-object p1, p0, Lcom/cyjh/common/view/PassWordLayout;->Ooooo00:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lcom/cyjh/common/view/PassWordLayout;->OoooOoo:I

    iget-object p1, p0, Lcom/cyjh/common/view/PassWordLayout;->Ooooo00:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    const/4 p1, 0x0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_4

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/cyjh/common/view/PassWordView;

    iget-object v2, p0, Lcom/cyjh/common/view/PassWordLayout;->Ooooo00:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-le v0, v2, :cond_2

    if-eqz v1, :cond_4

    invoke-virtual {v1, p1}, Lcom/cyjh/common/view/PassWordView;->setmIsShowRemindLine(Z)V

    invoke-virtual {v1, p1}, Lcom/cyjh/common/view/PassWordView;->OooO0oo(Z)V

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/cyjh/common/view/PassWordLayout;->Ooooo00:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/cyjh/common/view/PassWordView;->setmPassText(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/cyjh/common/view/PassWordView;->OooO0oo(Z)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Lcom/cyjh/common/view/PassWordLayout$SavedState;

    invoke-direct {v1, v0}, Lcom/cyjh/common/view/PassWordLayout$SavedState;-><init>(Landroid/os/Parcelable;)V

    iget-object v0, p0, Lcom/cyjh/common/view/PassWordLayout;->Ooooo00:Ljava/util/List;

    iput-object v0, v1, Lcom/cyjh/common/view/PassWordLayout$SavedState;->saveString:Ljava/util/List;

    return-object v1
.end method

.method public setPwdChangeListener(Lcom/cyjh/common/view/PassWordLayout$OooO;)V
    .locals 0

    iput-object p1, p0, Lcom/cyjh/common/view/PassWordLayout;->Ooooo0o:Lcom/cyjh/common/view/PassWordLayout$OooO;

    return-void
.end method
