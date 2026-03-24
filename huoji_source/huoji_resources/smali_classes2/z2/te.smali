.class public final Lz2/te;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz2/te$OooO0O0;
    }
.end annotation


# instance fields
.field public OooO00o:Landroid/view/View;

.field public OooO0O0:Landroid/widget/EditText;

.field public OooO0OO:Lz2/te$OooO0O0;

.field public OooO0Oo:Landroid/view/WindowManager;

.field private OooO0o0:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lz2/te$OooO0O0;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lz2/te;->OooO0OO:Lz2/te$OooO0O0;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    sget v0, Lcom/cyjh/mqsdk/R$layout;->dialog_input:I

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lz2/te;->OooO00o:Landroid/view/View;

    sget v0, Lcom/cyjh/mqsdk/R$id;->prompt:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lz2/te;->OooO00o:Landroid/view/View;

    sget p3, Lcom/cyjh/mqsdk/R$id;->et_input:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lz2/te;->OooO0O0:Landroid/widget/EditText;

    iget-object p2, p0, Lz2/te;->OooO00o:Landroid/view/View;

    sget p3, Lcom/cyjh/mqsdk/R$id;->single_ok_button:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    new-instance p3, Lz2/te$OooO00o;

    invoke-direct {p3, p0}, Lz2/te$OooO00o;-><init>(Lz2/te;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string p2, "window"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lz2/te;->OooO0Oo:Landroid/view/WindowManager;

    new-instance p1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object p1, p0, Lz2/te;->OooO0o0:Landroid/view/WindowManager$LayoutParams;

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x1a

    if-lt p2, p3, :cond_0

    const/16 p2, 0x7f6

    :goto_0
    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    goto :goto_1

    :cond_0
    const/16 p3, 0x13

    if-lt p2, p3, :cond_1

    const/16 p3, 0x18

    if-ge p2, p3, :cond_1

    const/16 p2, 0x7d5

    goto :goto_0

    :cond_1
    const/16 p2, 0x7d2

    goto :goto_0

    :goto_1
    const/4 p2, 0x1

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->format:I

    const/16 p2, 0x11

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 p2, 0x0

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    const/high16 p2, 0x3f800000    # 1.0f

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->alpha:F

    const/4 p2, -0x1

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    return-void
.end method

.method private static synthetic OooO00o(Lz2/te;)Lz2/te$OooO0O0;
    .locals 0

    iget-object p0, p0, Lz2/te;->OooO0OO:Lz2/te$OooO0O0;

    return-object p0
.end method

.method private static synthetic OooO0OO(Lz2/te;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lz2/te;->OooO0O0:Landroid/widget/EditText;

    return-object p0
.end method

.method private OooO0Oo()V
    .locals 2

    iget-object v0, p0, Lz2/te;->OooO0Oo:Landroid/view/WindowManager;

    iget-object v1, p0, Lz2/te;->OooO00o:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    return-void
.end method

.method private static synthetic OooO0o(Lz2/te;)V
    .locals 1

    iget-object v0, p0, Lz2/te;->OooO0Oo:Landroid/view/WindowManager;

    iget-object p0, p0, Lz2/te;->OooO00o:Landroid/view/View;

    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    return-void
.end method

.method private OooO0o0()V
    .locals 3

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lz2/te;->OooO0o0:Landroid/view/WindowManager$LayoutParams;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    const/16 v1, 0x7f6

    :goto_0
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    goto :goto_1

    :cond_0
    const/16 v2, 0x13

    if-lt v1, v2, :cond_1

    const/16 v2, 0x18

    if-ge v1, v2, :cond_1

    const/16 v1, 0x7d5

    goto :goto_0

    :cond_1
    const/16 v1, 0x7d2

    goto :goto_0

    :goto_1
    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    const/16 v1, 0x11

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    const/4 v1, -0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    return-void
.end method


# virtual methods
.method public final OooO0O0()V
    .locals 3

    iget-object v0, p0, Lz2/te;->OooO0Oo:Landroid/view/WindowManager;

    iget-object v1, p0, Lz2/te;->OooO00o:Landroid/view/View;

    iget-object v2, p0, Lz2/te;->OooO0o0:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
