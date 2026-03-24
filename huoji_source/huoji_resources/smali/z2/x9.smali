.class public Lz2/x9;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static OooO0O0:Lz2/x9;


# instance fields
.field private OooO00o:Landroid/app/ProgressDialog;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static OooO0O0()Lz2/x9;
    .locals 1

    sget-object v0, Lz2/x9;->OooO0O0:Lz2/x9;

    if-nez v0, :cond_0

    new-instance v0, Lz2/x9;

    invoke-direct {v0}, Lz2/x9;-><init>()V

    sput-object v0, Lz2/x9;->OooO0O0:Lz2/x9;

    :cond_0
    sget-object v0, Lz2/x9;->OooO0O0:Lz2/x9;

    return-object v0
.end method

.method private OooO0Oo(Landroid/app/AlertDialog;)V
    .locals 2

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const v1, 0x3f19999a    # 0.6f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    return-void
.end method

.method private OooO0oO(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lz2/x9;->OooO00o:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lz2/x9;->OooO00o:Landroid/app/ProgressDialog;

    :cond_0
    iget-object p1, p0, Lz2/x9;->OooO00o:Landroid/app/ProgressDialog;

    invoke-virtual {p1, p2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lz2/x9;->OooO00o:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method


# virtual methods
.method public OooO00o(ILjava/lang/String;Landroid/content/Context;Lz2/ka;)V
    .locals 3

    const v0, 0x7f0c00e8

    const v1, 0x7f110191

    invoke-virtual {p0, p3, v0, v1}, Lz2/x9;->OooO0o0(Landroid/content/Context;II)Landroid/app/AlertDialog;

    move-result-object p3

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/app/AlertDialog;->setCancelable(Z)V

    invoke-virtual {p3}, Landroid/app/AlertDialog;->show()V

    const v0, 0x7f090301

    invoke-virtual {p3, v0}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x7f090300

    invoke-virtual {p3, p2}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {p4, p3}, Lz2/ka;->OooO0OO(Landroid/app/AlertDialog;)V

    invoke-virtual {p4, p1}, Lz2/ka;->OooO0Oo(I)V

    invoke-virtual {p2, p4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public OooO0OO()V
    .locals 1

    iget-object v0, p0, Lz2/x9;->OooO00o:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lz2/x9;->OooO00o:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lz2/x9;->OooO00o:Landroid/app/ProgressDialog;

    :cond_0
    return-void
.end method

.method public OooO0o(Landroid/content/Context;I)V
    .locals 0

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lz2/x9;->OooO0oO(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public OooO0o0(Landroid/content/Context;II)Landroid/app/AlertDialog;
    .locals 1

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1, p3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-direct {p0, p1}, Lz2/x9;->OooO0Oo(Landroid/app/AlertDialog;)V

    return-object p1
.end method
