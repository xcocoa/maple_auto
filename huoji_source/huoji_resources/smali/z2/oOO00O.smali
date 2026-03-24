.class public Lz2/oOO00O;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private OoooOoO:Landroid/widget/ProgressBar;

.field private OoooOoo:Landroid/app/ProgressDialog;

.field private Ooooo00:Landroid/app/Activity;

.field private Ooooo0o:Landroid/view/View;

.field private OooooO0:Z

.field private OooooOO:I

.field private OooooOo:I

.field private Oooooo0:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    instance-of v0, p1, Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lz2/oOO00O;->OoooOoO:Landroid/widget/ProgressBar;

    goto :goto_0

    :cond_0
    instance-of v0, p1, Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    check-cast p1, Landroid/app/ProgressDialog;

    iput-object p1, p0, Lz2/oOO00O;->OoooOoo:Landroid/app/ProgressDialog;

    goto :goto_0

    :cond_1
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_2

    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lz2/oOO00O;->Ooooo00:Landroid/app/Activity;

    goto :goto_0

    :cond_2
    instance-of v0, p1, Landroid/view/View;

    if-eqz v0, :cond_3

    check-cast p1, Landroid/view/View;

    iput-object p1, p0, Lz2/oOO00O;->Ooooo0o:Landroid/view/View;

    :cond_3
    :goto_0
    return-void
.end method

.method private OooO00o(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lz2/oOO00O;->OoooOoo:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    new-instance v0, Lz2/o000;

    iget-object v1, p0, Lz2/oOO00O;->OoooOoo:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lz2/o000;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lz2/oOO00O;->OoooOoo:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Lz2/o000O000;->OooOooO(Landroid/app/Dialog;)Lz2/o000O000;

    :cond_0
    iget-object v0, p0, Lz2/oOO00O;->Ooooo00:Landroid/app/Activity;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setProgressBarIndeterminateVisibility(Z)V

    iget-object v0, p0, Lz2/oOO00O;->Ooooo00:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setProgressBarVisibility(Z)V

    :cond_1
    iget-object v0, p0, Lz2/oOO00O;->OoooOoO:Landroid/widget/ProgressBar;

    const v2, 0x40ff0001

    if-eqz v0, :cond_2

    invoke-virtual {v0, v2, p1}, Landroid/widget/ProgressBar;->setTag(ILjava/lang/Object;)V

    iget-object v0, p0, Lz2/oOO00O;->OoooOoO:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lz2/oOO00O;->OoooOoO:Landroid/widget/ProgressBar;

    if-nez v0, :cond_3

    iget-object v0, p0, Lz2/oOO00O;->Ooooo0o:Landroid/view/View;

    :cond_3
    if-eqz v0, :cond_5

    invoke-virtual {v0, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    :cond_4
    const/4 p1, 0x0

    invoke-virtual {v0, v2, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    iget-object p1, p0, Lz2/oOO00O;->OoooOoO:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    move-result p1

    if-eqz p1, :cond_5

    const/16 p1, 0x8

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    return-void
.end method

.method private OooO0oo(Ljava/lang/Object;Ljava/lang/String;Z)V
    .locals 4

    if-eqz p1, :cond_6

    instance-of v0, p1, Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Landroid/view/View;

    instance-of v2, p1, Landroid/widget/ProgressBar;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    check-cast p1, Landroid/widget/ProgressBar;

    goto :goto_0

    :cond_0
    move-object p1, v3

    :goto_0
    const v2, 0x40ff0001

    if-eqz p3, :cond_1

    invoke-virtual {v0, v2, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    if-eqz p1, :cond_6

    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    const/16 p2, 0x64

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setMax(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_2

    invoke-virtual {p3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    :cond_2
    invoke-virtual {v0, v2, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    move-result p1

    if-eqz p1, :cond_6

    const/16 p1, 0x8

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_3
    instance-of p2, p1, Landroid/app/Dialog;

    if-eqz p2, :cond_5

    check-cast p1, Landroid/app/Dialog;

    new-instance p2, Lz2/o000;

    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Lz2/o000;-><init>(Landroid/content/Context;)V

    if-eqz p3, :cond_4

    invoke-virtual {p2, p1}, Lz2/o000O000;->o000O0oo(Landroid/app/Dialog;)Lz2/o000O000;

    goto :goto_1

    :cond_4
    invoke-virtual {p2, p1}, Lz2/o000O000;->OooOooO(Landroid/app/Dialog;)Lz2/o000O000;

    goto :goto_1

    :cond_5
    instance-of p2, p1, Landroid/app/Activity;

    if-eqz p2, :cond_6

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1, p3}, Landroid/app/Activity;->setProgressBarIndeterminateVisibility(Z)V

    invoke-virtual {p1, p3}, Landroid/app/Activity;->setProgressBarVisibility(Z)V

    if-eqz p3, :cond_6

    invoke-virtual {p1, v1}, Landroid/app/Activity;->setProgress(I)V

    :cond_6
    :goto_1
    return-void
.end method


# virtual methods
.method public OooO0O0()V
    .locals 2

    iget-object v0, p0, Lz2/oOO00O;->OoooOoO:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_0
    iget-object v0, p0, Lz2/oOO00O;->OoooOoo:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getMax()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    :cond_1
    iget-object v0, p0, Lz2/oOO00O;->Ooooo00:Landroid/app/Activity;

    if-eqz v0, :cond_2

    const/16 v1, 0x270f

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setProgress(I)V

    :cond_2
    return-void
.end method

.method public OooO0OO(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lz2/o00O000;->Oooo00O()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lz2/oOO00O;->OooO00o(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lz2/oOO00O;->Oooooo0:Ljava/lang/String;

    invoke-static {p0}, Lz2/o00O000;->Oooo0o(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public OooO0Oo(I)V
    .locals 3

    iget-object v0, p0, Lz2/oOO00O;->OoooOoO:Landroid/widget/ProgressBar;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-boolean v2, p0, Lz2/oOO00O;->OooooO0:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, p1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->incrementProgressBy(I)V

    :cond_1
    iget-object v0, p0, Lz2/oOO00O;->OoooOoo:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_3

    iget-boolean v2, p0, Lz2/oOO00O;->OooooO0:Z

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    move v1, p1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->incrementProgressBy(I)V

    :cond_3
    iget-object v0, p0, Lz2/oOO00O;->Ooooo00:Landroid/app/Activity;

    if-eqz v0, :cond_6

    iget-boolean v1, p0, Lz2/oOO00O;->OooooO0:Z

    if-eqz v1, :cond_4

    iget p1, p0, Lz2/oOO00O;->OooooOo:I

    add-int/lit8 v1, p1, 0x1

    iput v1, p0, Lz2/oOO00O;->OooooOo:I

    goto :goto_2

    :cond_4
    iget v1, p0, Lz2/oOO00O;->OooooOo:I

    add-int/2addr v1, p1

    iput v1, p0, Lz2/oOO00O;->OooooOo:I

    mul-int/lit16 v1, v1, 0x2710

    iget p1, p0, Lz2/oOO00O;->OooooOO:I

    div-int p1, v1, p1

    :goto_2
    const/16 v1, 0x270f

    if-le p1, v1, :cond_5

    const/16 p1, 0x270f

    :cond_5
    invoke-virtual {v0, p1}, Landroid/app/Activity;->setProgress(I)V

    :cond_6
    return-void
.end method

.method public OooO0o(I)V
    .locals 2

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lz2/oOO00O;->OooooO0:Z

    const/16 p1, 0x2710

    :cond_0
    iput p1, p0, Lz2/oOO00O;->OooooOO:I

    iget-object v0, p0, Lz2/oOO00O;->OoooOoO:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v0, p0, Lz2/oOO00O;->OoooOoO:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    :cond_1
    iget-object v0, p0, Lz2/oOO00O;->OoooOoo:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    iget-object v0, p0, Lz2/oOO00O;->OoooOoo:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setMax(I)V

    :cond_2
    return-void
.end method

.method public OooO0o0()V
    .locals 3

    iget-object v0, p0, Lz2/oOO00O;->OoooOoO:Landroid/widget/ProgressBar;

    const/16 v1, 0x2710

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v0, p0, Lz2/oOO00O;->OoooOoO:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    :cond_0
    iget-object v0, p0, Lz2/oOO00O;->OoooOoo:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgress(I)V

    iget-object v0, p0, Lz2/oOO00O;->OoooOoo:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMax(I)V

    :cond_1
    iget-object v0, p0, Lz2/oOO00O;->Ooooo00:Landroid/app/Activity;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v2}, Landroid/app/Activity;->setProgress(I)V

    :cond_2
    iput-boolean v2, p0, Lz2/oOO00O;->OooooO0:Z

    iput v2, p0, Lz2/oOO00O;->OooooOo:I

    iput v1, p0, Lz2/oOO00O;->OooooOO:I

    return-void
.end method

.method public OooO0oO(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lz2/oOO00O;->OooO0o0()V

    iget-object v0, p0, Lz2/oOO00O;->OoooOoo:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    new-instance v0, Lz2/o000;

    iget-object v1, p0, Lz2/oOO00O;->OoooOoo:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lz2/o000;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lz2/oOO00O;->OoooOoo:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Lz2/o000O000;->o000O0oo(Landroid/app/Dialog;)Lz2/o000O000;

    :cond_0
    iget-object v0, p0, Lz2/oOO00O;->Ooooo00:Landroid/app/Activity;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setProgressBarIndeterminateVisibility(Z)V

    iget-object v0, p0, Lz2/oOO00O;->Ooooo00:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setProgressBarVisibility(Z)V

    :cond_1
    iget-object v0, p0, Lz2/oOO00O;->OoooOoO:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    const v2, 0x40ff0001

    if-eqz v0, :cond_2

    invoke-virtual {v0, v2, p1}, Landroid/widget/ProgressBar;->setTag(ILjava/lang/Object;)V

    iget-object v0, p0, Lz2/oOO00O;->OoooOoO:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lz2/oOO00O;->Ooooo0o:Landroid/view/View;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v2, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    iget-object p1, p0, Lz2/oOO00O;->Ooooo0o:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method public run()V
    .locals 1

    iget-object v0, p0, Lz2/oOO00O;->Oooooo0:Ljava/lang/String;

    invoke-direct {p0, v0}, Lz2/oOO00O;->OooO00o(Ljava/lang/String;)V

    return-void
.end method
