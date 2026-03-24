.class public final Lz2/se;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz2/se$OooO0o;
    }
.end annotation


# static fields
.field public static final OooOO0o:I = 0x0

.field public static final OooOOO:I = 0x2

.field public static final OooOOO0:I = 0x1

.field public static final OooOOOO:I = 0x3

.field public static final OooOOOo:I = 0x0

.field public static final OooOOo:I = 0x2

.field public static final OooOOo0:I = 0x1

.field public static final OooOOoo:I = 0x3


# instance fields
.field private OooO:Landroid/widget/Button;

.field private OooO00o:Landroid/view/WindowManager;

.field private OooO0O0:Landroid/view/WindowManager$LayoutParams;

.field private OooO0OO:Landroid/view/View;

.field public OooO0Oo:Lz2/se$OooO0o;

.field private OooO0o:I

.field private OooO0o0:I

.field private OooO0oO:Landroid/widget/LinearLayout;

.field private OooO0oo:Landroid/widget/LinearLayout;

.field private OooOO0:Landroid/widget/Button;

.field private OooOO0O:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ILz2/se$OooO0o;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lz2/se;->OooO0Oo:Lz2/se$OooO0o;

    const-string p4, "window"

    invoke-virtual {p1, p4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/view/WindowManager;

    iput-object p4, p0, Lz2/se;->OooO00o:Landroid/view/WindowManager;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p4, Lcom/cyjh/mqsdk/R$layout;->dialog_alert:I

    const/4 v0, 0x0

    invoke-virtual {p1, p4, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lz2/se;->OooO0OO:Landroid/view/View;

    sget p4, Lcom/cyjh/mqsdk/R$id;->prompt:I

    invoke-virtual {p1, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance p1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object p1, p0, Lz2/se;->OooO0O0:Landroid/view/WindowManager$LayoutParams;

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p4, 0x1a

    if-lt p2, p4, :cond_0

    const/16 p2, 0x7f6

    :goto_0
    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    goto :goto_1

    :cond_0
    const/16 p4, 0x13

    if-lt p2, p4, :cond_1

    const/16 p4, 0x18

    if-ge p2, p4, :cond_1

    const/16 p2, 0x7d5

    goto :goto_0

    :cond_1
    const/16 p2, 0x7d2

    goto :goto_0

    :goto_1
    const/4 p2, 0x1

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->format:I

    const/16 p4, 0x10

    iput p4, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 p4, 0x0

    iput p4, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    iput p4, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    const/high16 p4, 0x3f800000    # 1.0f

    iput p4, p1, Landroid/view/WindowManager$LayoutParams;->alpha:F

    const/4 p4, -0x1

    iput p4, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    iput p4, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 p1, 0x8

    if-eq p3, p2, :cond_4

    const/4 p2, 0x2

    if-eq p3, p2, :cond_3

    const/4 p2, 0x3

    if-eq p3, p2, :cond_2

    iget-object p2, p0, Lz2/se;->OooO0OO:Landroid/view/View;

    sget p4, Lcom/cyjh/mqsdk/R$id;->layout_type2:I

    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lz2/se;->OooO0OO:Landroid/view/View;

    sget p4, Lcom/cyjh/mqsdk/R$id;->layout_type3:I

    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lz2/se;->OooO0OO:Landroid/view/View;

    sget p2, Lcom/cyjh/mqsdk/R$id;->single_ok_button:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lz2/se;->OooO:Landroid/widget/Button;

    goto/16 :goto_2

    :cond_2
    iget-object p2, p0, Lz2/se;->OooO0OO:Landroid/view/View;

    sget p4, Lcom/cyjh/mqsdk/R$id;->single_ok_button:I

    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lz2/se;->OooO0OO:Landroid/view/View;

    sget p4, Lcom/cyjh/mqsdk/R$id;->layout_type2:I

    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lz2/se;->OooO0OO:Landroid/view/View;

    sget p2, Lcom/cyjh/mqsdk/R$id;->yes_button:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lz2/se;->OooO:Landroid/widget/Button;

    iget-object p1, p0, Lz2/se;->OooO0OO:Landroid/view/View;

    sget p2, Lcom/cyjh/mqsdk/R$id;->no_button:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lz2/se;->OooOO0:Landroid/widget/Button;

    iget-object p1, p0, Lz2/se;->OooO0OO:Landroid/view/View;

    sget p2, Lcom/cyjh/mqsdk/R$id;->cancel_button:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lz2/se;->OooOO0O:Landroid/widget/Button;

    goto :goto_2

    :cond_3
    iget-object p2, p0, Lz2/se;->OooO0OO:Landroid/view/View;

    sget p4, Lcom/cyjh/mqsdk/R$id;->single_ok_button:I

    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lz2/se;->OooO0OO:Landroid/view/View;

    sget p4, Lcom/cyjh/mqsdk/R$id;->layout_type3:I

    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lz2/se;->OooO0OO:Landroid/view/View;

    sget p2, Lcom/cyjh/mqsdk/R$id;->positive_button:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lz2/se;->OooO:Landroid/widget/Button;

    iget-object p1, p0, Lz2/se;->OooO0OO:Landroid/view/View;

    sget p2, Lcom/cyjh/mqsdk/R$id;->negative_button:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lz2/se;->OooOO0:Landroid/widget/Button;

    iget-object p1, p0, Lz2/se;->OooO:Landroid/widget/Button;

    sget p2, Lcom/cyjh/mqsdk/R$string;->dialog_yes_button:I

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(I)V

    iget-object p1, p0, Lz2/se;->OooOO0:Landroid/widget/Button;

    sget p2, Lcom/cyjh/mqsdk/R$string;->dialog_no_button:I

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(I)V

    goto :goto_2

    :cond_4
    iget-object p2, p0, Lz2/se;->OooO0OO:Landroid/view/View;

    sget p4, Lcom/cyjh/mqsdk/R$id;->single_ok_button:I

    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lz2/se;->OooO0OO:Landroid/view/View;

    sget p4, Lcom/cyjh/mqsdk/R$id;->layout_type3:I

    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lz2/se;->OooO0OO:Landroid/view/View;

    sget p2, Lcom/cyjh/mqsdk/R$id;->positive_button:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lz2/se;->OooO:Landroid/widget/Button;

    iget-object p1, p0, Lz2/se;->OooO0OO:Landroid/view/View;

    sget p2, Lcom/cyjh/mqsdk/R$id;->negative_button:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lz2/se;->OooOO0:Landroid/widget/Button;

    :goto_2
    iget-object p1, p0, Lz2/se;->OooO:Landroid/widget/Button;

    if-eqz p1, :cond_5

    new-instance p2, Lz2/se$OooO00o;

    invoke-direct {p2, p0, p3}, Lz2/se$OooO00o;-><init>(Lz2/se;I)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    iget-object p1, p0, Lz2/se;->OooOO0:Landroid/widget/Button;

    if-eqz p1, :cond_6

    new-instance p2, Lz2/se$OooO0O0;

    invoke-direct {p2, p0, p3}, Lz2/se$OooO0O0;-><init>(Lz2/se;I)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_6
    iget-object p1, p0, Lz2/se;->OooOO0O:Landroid/widget/Button;

    if-eqz p1, :cond_7

    new-instance p2, Lz2/se$OooO0OO;

    invoke-direct {p2, p0}, Lz2/se$OooO0OO;-><init>(Lz2/se;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_7
    return-void
.end method

.method public static synthetic OooO0O0(Lz2/se;)V
    .locals 1

    iget-object v0, p0, Lz2/se;->OooO00o:Landroid/view/WindowManager;

    iget-object p0, p0, Lz2/se;->OooO0OO:Landroid/view/View;

    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    return-void
.end method

.method private static synthetic OooO0OO(Lz2/se;)Lz2/se$OooO0o;
    .locals 0

    iget-object p0, p0, Lz2/se;->OooO0Oo:Lz2/se$OooO0o;

    return-object p0
.end method

.method private OooO0Oo()V
    .locals 2

    iget-object v0, p0, Lz2/se;->OooO00o:Landroid/view/WindowManager;

    iget-object v1, p0, Lz2/se;->OooO0OO:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    return-void
.end method

.method private OooO0o0()V
    .locals 3

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lz2/se;->OooO0O0:Landroid/view/WindowManager$LayoutParams;

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

    const/16 v1, 0x10

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
.method public final OooO00o()V
    .locals 3

    iget-object v0, p0, Lz2/se;->OooO00o:Landroid/view/WindowManager;

    iget-object v1, p0, Lz2/se;->OooO0OO:Landroid/view/View;

    iget-object v2, p0, Lz2/se;->OooO0O0:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
