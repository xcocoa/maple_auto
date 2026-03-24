.class public final Lz2/af;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static OooOo:I = 0x0

.field private static final OooOo0:Ljava/lang/String; = "first_row_tag"

.field private static final OooOo00:I = 0x1000

.field private static final OooOo0O:Ljava/lang/String; = "row_mark"

.field private static final OooOo0o:I = 0x100


# instance fields
.field private OooO:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private OooO00o:Landroid/view/WindowManager;

.field private OooO0O0:Landroid/view/WindowManager$LayoutParams;

.field private OooO0OO:Lcom/cyjh/mobileanjian/ipc/view/ExToast;

.field private OooO0Oo:Landroid/content/Context;

.field public OooO0o:Landroid/view/View$OnClickListener;

.field private OooO0o0:Landroid/widget/LinearLayout;

.field public OooO0oO:Landroid/view/View$OnClickListener;

.field private OooO0oo:Ljava/lang/String;

.field private OooOO0:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private OooOO0O:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private OooOO0o:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private OooOOO:Landroid/widget/LinearLayout;

.field private OooOOO0:Lz2/xe;

.field private OooOOOO:Landroid/widget/LinearLayout;

.field private OooOOOo:Landroid/widget/TextView;

.field private OooOOo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;",
            ">;"
        }
    .end annotation
.end field

.field public OooOOo0:Z

.field private OooOOoo:Landroid/os/Handler;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;II)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lz2/af;->OooO0oo:Ljava/lang/String;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lz2/af;->OooO:Ljava/util/Set;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lz2/af;->OooOO0:Ljava/util/Set;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lz2/af;->OooOO0O:Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lz2/af;->OooOO0o:Ljava/util/HashMap;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lz2/af;->OooOOo0:Z

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lz2/af;->OooOOo:Ljava/util/ArrayList;

    new-instance v2, Lz2/af$OooO0OO;

    invoke-direct {v2, p0}, Lz2/af$OooO0OO;-><init>(Lz2/af;)V

    iput-object v2, p0, Lz2/af;->OooOOoo:Landroid/os/Handler;

    iput-object p1, p0, Lz2/af;->OooO0Oo:Landroid/content/Context;

    invoke-static {p1}, Lz2/xe;->OooOO0o(Landroid/content/Context;)Lz2/xe;

    move-result-object p1

    iput-object p1, p0, Lz2/af;->OooOOO0:Lz2/xe;

    iget-object p1, p0, Lz2/af;->OooO0Oo:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lz2/af;->OooO00o:Landroid/view/WindowManager;

    new-instance p1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object p1, p0, Lz2/af;->OooO0O0:Landroid/view/WindowManager$LayoutParams;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_0

    const/16 v2, 0x7f6

    :goto_0
    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    goto :goto_1

    :cond_0
    const/16 v3, 0x13

    if-lt v2, v3, :cond_1

    const/16 v3, 0x18

    if-ge v2, v3, :cond_1

    const/16 v2, 0x7d5

    goto :goto_0

    :cond_1
    const/16 v2, 0x7d2

    goto :goto_0

    :goto_1
    const/4 v2, 0x1

    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->format:I

    const/16 v2, 0x10

    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->alpha:F

    const/4 v1, -0x1

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object p1, p0, Lz2/af;->OooO0Oo:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/16 v2, 0x28

    invoke-direct {p0, v2}, Lz2/af;->OooOOo0(I)I

    move-result v3

    add-int/2addr v3, p3

    iget v4, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    const/16 v5, 0xc8

    const/4 v6, -0x2

    if-lt v3, v4, :cond_2

    const/4 p3, -0x1

    goto :goto_2

    :cond_2
    if-lt p3, v6, :cond_3

    if-ltz p3, :cond_4

    invoke-direct {p0, v5}, Lz2/af;->OooOOo0(I)I

    move-result v3

    if-ge p3, v3, :cond_4

    :cond_3
    invoke-direct {p0, v5}, Lz2/af;->OooOOo0(I)I

    move-result p3

    :cond_4
    :goto_2
    invoke-direct {p0, v2}, Lz2/af;->OooOOo0(I)I

    move-result v2

    add-int/2addr v2, p4

    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-lt v2, p1, :cond_5

    const/4 p4, -0x2

    goto :goto_3

    :cond_5
    if-lt p4, v6, :cond_6

    if-ltz p4, :cond_7

    invoke-direct {p0, v5}, Lz2/af;->OooOOo0(I)I

    move-result p1

    if-ge p4, p1, :cond_7

    :cond_6
    invoke-direct {p0, v5}, Lz2/af;->OooOOo0(I)I

    move-result p4

    :cond_7
    :goto_3
    iget-object p1, p0, Lz2/af;->OooO0Oo:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v2, Lcom/cyjh/mqsdk/R$layout;->layout_ui_show:I

    invoke-virtual {p1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lz2/af;->OooOOOO:Landroid/widget/LinearLayout;

    sget v2, Lcom/cyjh/mqsdk/R$layout;->layout_display:I

    invoke-virtual {p1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, p3, p4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p3, p0, Lz2/af;->OooOOOO:Landroid/widget/LinearLayout;

    const/16 p4, 0x11

    invoke-virtual {p3, p4}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object p3, p0, Lz2/af;->OooOOOO:Landroid/widget/LinearLayout;

    invoke-virtual {p3, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lz2/af;->OooOOOO:Landroid/widget/LinearLayout;

    sget p3, Lcom/cyjh/mqsdk/R$id;->title:I

    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lz2/af;->OooOOOo:Landroid/widget/TextView;

    iget-object p1, p0, Lz2/af;->OooOOOO:Landroid/widget/LinearLayout;

    sget p3, Lcom/cyjh/mqsdk/R$id;->layout_user:I

    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lz2/af;->OooO0o0:Landroid/widget/LinearLayout;

    iget-object p1, p0, Lz2/af;->OooOOOO:Landroid/widget/LinearLayout;

    sget p3, Lcom/cyjh/mqsdk/R$id;->exit:I

    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance p3, Lz2/af$OooO00o;

    invoke-direct {p3, p0}, Lz2/af$OooO00o;-><init>(Lz2/af;)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lz2/af;->OooOOOO:Landroid/widget/LinearLayout;

    sget p3, Lcom/cyjh/mqsdk/R$id;->next:I

    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance p3, Lz2/af$OooO0O0;

    invoke-direct {p3, p0}, Lz2/af$OooO0O0;-><init>(Lz2/af;)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object p2, p0, Lz2/af;->OooO0oo:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lz2/af;->OooO0oo(Ljava/lang/String;)V

    const-string p1, "row_mark"

    invoke-virtual {p0, p1, p2, v1, v6}, Lz2/af;->OooOO0(Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method public static synthetic OooO00o(Lz2/af;)Landroid/view/View$OnClickListener;
    .locals 0

    iget-object p0, p0, Lz2/af;->OooO0o:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method private OooO0Oo(II)V
    .locals 6

    iget-object v0, p0, Lz2/af;->OooO0Oo:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/16 v1, 0x28

    invoke-direct {p0, v1}, Lz2/af;->OooOOo0(I)I

    move-result v2

    add-int/2addr v2, p1

    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    const/4 v4, -0x2

    const/16 v5, 0xc8

    if-lt v2, v3, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    if-lt p1, v4, :cond_1

    if-ltz p1, :cond_2

    invoke-direct {p0, v5}, Lz2/af;->OooOOo0(I)I

    move-result v2

    if-ge p1, v2, :cond_2

    :cond_1
    invoke-direct {p0, v5}, Lz2/af;->OooOOo0(I)I

    move-result p1

    :cond_2
    :goto_0
    invoke-direct {p0, v1}, Lz2/af;->OooOOo0(I)I

    move-result v1

    add-int/2addr v1, p2

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-lt v1, v0, :cond_3

    const/4 p2, -0x2

    goto :goto_1

    :cond_3
    if-lt p2, v4, :cond_4

    if-ltz p2, :cond_5

    invoke-direct {p0, v5}, Lz2/af;->OooOOo0(I)I

    move-result v0

    if-ge p2, v0, :cond_5

    :cond_4
    invoke-direct {p0, v5}, Lz2/af;->OooOOo0(I)I

    move-result p2

    :cond_5
    :goto_1
    iget-object v0, p0, Lz2/af;->OooO0Oo:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/cyjh/mqsdk/R$layout;->layout_ui_show:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lz2/af;->OooOOOO:Landroid/widget/LinearLayout;

    sget v1, Lcom/cyjh/mqsdk/R$layout;->layout_display:I

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, p1, p2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lz2/af;->OooOOOO:Landroid/widget/LinearLayout;

    const/16 p2, 0x11

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object p1, p0, Lz2/af;->OooOOOO:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lz2/af;->OooOOOO:Landroid/widget/LinearLayout;

    sget p2, Lcom/cyjh/mqsdk/R$id;->title:I

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lz2/af;->OooOOOo:Landroid/widget/TextView;

    iget-object p1, p0, Lz2/af;->OooOOOO:Landroid/widget/LinearLayout;

    sget p2, Lcom/cyjh/mqsdk/R$id;->layout_user:I

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lz2/af;->OooO0o0:Landroid/widget/LinearLayout;

    iget-object p1, p0, Lz2/af;->OooOOOO:Landroid/widget/LinearLayout;

    sget p2, Lcom/cyjh/mqsdk/R$id;->exit:I

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lz2/af$OooO00o;

    invoke-direct {p2, p0}, Lz2/af$OooO00o;-><init>(Lz2/af;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lz2/af;->OooOOOO:Landroid/widget/LinearLayout;

    sget p2, Lcom/cyjh/mqsdk/R$id;->next:I

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lz2/af$OooO0O0;

    invoke-direct {p2, p0}, Lz2/af$OooO0O0;-><init>(Lz2/af;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private OooO0o(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lz2/af;->OooO0o:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public static synthetic OooOO0o(Lz2/af;)Landroid/view/View$OnClickListener;
    .locals 0

    iget-object p0, p0, Lz2/af;->OooO0oO:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method private OooOOOo(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lz2/af;->OooO0oO:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public static synthetic OooOOo(Lz2/af;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lz2/af;->OooO0o0:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method private OooOOo0(I)I
    .locals 2

    iget-object v0, p0, Lz2/af;->OooO0Oo:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    int-to-float p1, p1

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v0, v0

    const/high16 v1, 0x43200000    # 160.0f

    div-float/2addr v0, v1

    mul-float p1, p1, v0

    float-to-int p1, p1

    return p1
.end method

.method private OooOo()Z
    .locals 1

    iget-boolean v0, p0, Lz2/af;->OooOOo0:Z

    return v0
.end method

.method private OooOo00(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lz2/af;->OooO0oo:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lz2/af;->OooO0oo(Ljava/lang/String;)V

    return-void
.end method

.method private OooOo0O()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lz2/af;->OooO0oo:Ljava/lang/String;

    return-object v0
.end method

.method private OooOo0o()V
    .locals 3

    iget-object v0, p0, Lz2/af;->OooO0Oo:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lz2/af;->OooO00o:Landroid/view/WindowManager;

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lz2/af;->OooO0O0:Landroid/view/WindowManager$LayoutParams;

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

.method private static OooOoO0()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "first_row_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lz2/af;->OooOo:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Lz2/af;->OooOo:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final OooO(Ljava/lang/String;I)V
    .locals 4

    iget-object v0, p0, Lz2/af;->OooOO0:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lz2/af;->OooO0Oo:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/cyjh/mqsdk/R$layout;->ui_show_sliding_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    sget v1, Lcom/cyjh/mqsdk/R$id;->slidingTabLayout:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;

    invoke-virtual {v1, p1}, Landroid/widget/HorizontalScrollView;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x1

    invoke-virtual {v1, p1}, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->setDistributeEvenly(Z)V

    new-array p1, p1, [I

    iget-object v2, p0, Lz2/af;->OooO0Oo:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/cyjh/mqsdk/R$color;->ui_show_blue:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    const/4 v3, 0x0

    aput v2, p1, v3

    invoke-virtual {v1, p1}, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->setSelectedIndicatorColors([I)V

    sget p1, Lcom/cyjh/mqsdk/R$drawable;->bg_tab_host:I

    invoke-virtual {v1, p1}, Landroid/widget/HorizontalScrollView;->setBackgroundResource(I)V

    new-instance p1, Lz2/af$OooO0o;

    invoke-direct {p1, p0, v1}, Lz2/af$OooO0o;-><init>(Lz2/af;Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;)V

    invoke-virtual {v1, p1}, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    const/4 p1, -0x2

    if-ne p2, p1, :cond_0

    const/16 p1, 0xc8

    invoke-direct {p0, p1}, Lz2/af;->OooOOo0(I)I

    move-result p2

    :cond_0
    sget p1, Lcom/cyjh/mqsdk/R$id;->viewPager:I

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/viewpager/widget/ViewPager;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p2, Lz2/bf;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p2, v2, v3}, Lz2/bf;-><init>(Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {p1, p2}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    invoke-virtual {v1, p1}, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->setViewPager(Landroidx/viewpager/widget/ViewPager;)V

    iget-object p1, p0, Lz2/af;->OooO0o0:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lz2/af;->OooOOo:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final OooO0O0()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lz2/af;->OooOOOo:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final OooO0OO(I)V
    .locals 1

    iget-object v0, p0, Lz2/af;->OooOOOo:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public final OooO0o0(Landroid/graphics/Typeface;I)V
    .locals 1

    iget-object v0, p0, Lz2/af;->OooOOOo:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object p1, p0, Lz2/af;->OooOOOo:Landroid/widget/TextView;

    int-to-float p2, p2

    const/4 v0, 0x2

    invoke-virtual {p1, v0, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method

.method public final OooO0oO(Landroid/view/View;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "row tag: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lz2/af;->OooOO0O:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lz2/af;->OooO0oo:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p2, p0, Lz2/af;->OooOOO:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void

    :cond_0
    iget-object v0, p0, Lz2/af;->OooO:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lz2/af;->OooO0o0:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lz2/af;->OooOO0o:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;

    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->getViewPager()Landroidx/viewpager/widget/ViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    check-cast v0, Lz2/bf;

    iget-object v1, p0, Lz2/af;->OooOO0O:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, p1, p2, v1}, Lz2/bf;->OooO0OO(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final OooO0oo(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lz2/af;->OooOOOo:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final OooOO0(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 2

    iget-object v0, p0, Lz2/af;->OooO0oo:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lz2/af;->OooOOO0:Lz2/xe;

    const-string v1, "row_mark"

    invoke-virtual {v0, v1, p3, p4}, Lz2/xe;->OooOo0o(Ljava/lang/String;II)Landroid/widget/LinearLayout;

    move-result-object p3

    iput-object p3, p0, Lz2/af;->OooOOO:Landroid/widget/LinearLayout;

    iget-object p4, p0, Lz2/af;->OooO0o0:Landroid/widget/LinearLayout;

    invoke-virtual {p4, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object p3, p0, Lz2/af;->OooOO0O:Ljava/util/HashMap;

    invoke-virtual {p3, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    iget-object v0, p0, Lz2/af;->OooO:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lz2/af;->OooO0o0:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lz2/af;->OooOO0o:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;

    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->getViewPager()Landroidx/viewpager/widget/ViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    check-cast v0, Lz2/bf;

    invoke-virtual {v0, p1, p2, p3, p4}, Lz2/bf;->OooO0o0(Ljava/lang/String;Ljava/lang/String;II)V

    iget-object p3, p0, Lz2/af;->OooOO0O:Ljava/util/HashMap;

    invoke-virtual {p3, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public final OooOO0O(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lz2/af;->OooOO0:Ljava/util/Set;

    invoke-interface {v0, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-static {}, Lz2/af;->OooOoO0()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lz2/af;->OooO:Ljava/util/Set;

    invoke-interface {v1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lz2/af;->OooOO0O:Ljava/util/HashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lz2/af;->OooOO0o:Ljava/util/HashMap;

    invoke-virtual {v1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lz2/af;->OooO0o0:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p3}, Landroid/widget/LinearLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;

    iget-object v1, p0, Lz2/af;->OooOOO0:Lz2/xe;

    invoke-virtual {v1, p1, p2}, Lz2/xe;->OooO0oO(ILjava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->setId(I)V

    iget-object p1, p0, Lz2/af;->OooOOO0:Lz2/xe;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-virtual {p1, v0, v1, v2}, Lz2/xe;->OooOo0o(Ljava/lang/String;II)Landroid/widget/LinearLayout;

    move-result-object p1

    iput-object p1, p0, Lz2/af;->OooOOO:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p3, p2, p4}, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->OooO0o(Landroid/widget/LinearLayout;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public final OooOOO()V
    .locals 4

    iget-object v0, p0, Lz2/af;->OooOOoo:Landroid/os/Handler;

    const/16 v1, 0x100

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public final OooOOO0(Ljava/lang/String;)Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lz2/af;->OooO0o0:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v1, p0, Lz2/af;->OooOOo:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;

    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->getViewPager()Landroidx/viewpager/widget/ViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    check-cast v0, Lz2/bf;

    invoke-virtual {v0, p1}, Lz2/bf;->OooO0O0(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    :cond_1
    return-object v0
.end method

.method public final OooOOOO(I)V
    .locals 4

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/16 p1, 0x8

    new-array p1, p1, [F

    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lz2/af;->OooOOo0(I)I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    aput v2, p1, v3

    invoke-direct {p0, v1}, Lz2/af;->OooOOo0(I)I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x1

    aput v2, p1, v3

    invoke-direct {p0, v1}, Lz2/af;->OooOOo0(I)I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x2

    aput v2, p1, v3

    invoke-direct {p0, v1}, Lz2/af;->OooOOo0(I)I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x3

    aput v2, p1, v3

    const/4 v2, 0x0

    aput v2, p1, v1

    const/4 v1, 0x5

    aput v2, p1, v1

    const/4 v1, 0x6

    aput v2, p1, v1

    const/4 v1, 0x7

    aput v2, p1, v1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    iget-object p1, p0, Lz2/af;->OooOOOo:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final OooOOoo()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lz2/af;->OooOOo0:Z

    iget-object v0, p0, Lz2/af;->OooO00o:Landroid/view/WindowManager;

    iget-object v1, p0, Lz2/af;->OooOOOO:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lz2/af;->OooO0O0:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final OooOo0()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lz2/af;->OooOOo0:Z

    iget-object v0, p0, Lz2/af;->OooO00o:Landroid/view/WindowManager;

    iget-object v1, p0, Lz2/af;->OooOOOO:Landroid/widget/LinearLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    return-void
.end method
