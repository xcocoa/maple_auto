.class public final Lz2/t5$OooO0o;
.super Lz2/t5$OooO0OO;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/t5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OooO0o"
.end annotation


# static fields
.field private static OooO0o:I


# instance fields
.field private OooO0Oo:Lz2/u5$OooO00o;

.field private OooO0o0:Lz2/t5$OooO;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lz2/t5;)V
    .locals 0

    invoke-direct {p0, p1}, Lz2/t5$OooO0OO;-><init>(Lz2/t5;)V

    return-void
.end method

.method private OooO()Z
    .locals 1

    iget-object v0, p0, Lz2/t5$OooO0o;->OooO0Oo:Lz2/u5$OooO00o;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static synthetic OooO0oO(Lz2/t5$OooO0o;)Z
    .locals 0

    invoke-direct {p0}, Lz2/t5$OooO0o;->OooO()Z

    move-result p0

    return p0
.end method

.method public static synthetic OooO0oo(Lz2/t5$OooO0o;Landroid/app/Activity;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lz2/t5$OooO0o;->OooOO0o(Landroid/app/Activity;IZ)V

    return-void
.end method

.method private OooOO0()V
    .locals 2

    sget v0, Lz2/t5$OooO0o;->OooO0o:I

    new-instance v1, Lz2/t5$OooO0o$OooO0O0;

    invoke-direct {v1, p0, v0}, Lz2/t5$OooO0o$OooO0O0;-><init>(Lz2/t5$OooO0o;I)V

    iput-object v1, p0, Lz2/t5$OooO0o;->OooO0Oo:Lz2/u5$OooO00o;

    invoke-static {v1}, Lz2/w5;->OooO0O0(Lz2/u5$OooO00o;)V

    return-void
.end method

.method private OooOO0O(I)Lz2/t5$OooO;
    .locals 2

    new-instance v0, Lz2/t5$OooOO0O;

    iget-object v1, p0, Lz2/t5$OooO0OO;->OooO0O0:Lz2/t5;

    invoke-direct {v0, v1}, Lz2/t5$OooOO0O;-><init>(Lz2/t5;)V

    iget-object v1, p0, Lz2/t5$OooO0OO;->OooO00o:Landroid/widget/Toast;

    iput-object v1, v0, Lz2/t5$OooO0OO;->OooO00o:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Lz2/t5$OooOO0O;->OooO00o(I)V

    return-object v0
.end method

.method private OooOO0o(Landroid/app/Activity;IZ)V
    .locals 3

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lz2/t5$OooO0OO;->OooO00o:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->getGravity()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v1, p0, Lz2/t5$OooO0OO;->OooO00o:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->getYOffset()I

    move-result v1

    invoke-static {}, Lz2/w5;->OooOOo0()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iget-object v1, p0, Lz2/t5$OooO0OO;->OooO00o:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->getYOffset()I

    move-result v1

    invoke-static {}, Lz2/w5;->OooOOoo()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v1, p0, Lz2/t5$OooO0OO;->OooO00o:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->getXOffset()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    invoke-virtual {p0, p2}, Lz2/t5$OooO0OO;->OooO0Oo(I)Landroid/view/View;

    move-result-object p2

    if-eqz p3, :cond_0

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p3

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p3, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p3

    const-wide/16 v1, 0xc8

    invoke-virtual {p3, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_0
    invoke-virtual {p1, p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method private OooOOO()V
    .locals 1

    iget-object v0, p0, Lz2/t5$OooO0o;->OooO0Oo:Lz2/u5$OooO00o;

    invoke-static {v0}, Lz2/w5;->Oooo0(Lz2/u5$OooO00o;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lz2/t5$OooO0o;->OooO0Oo:Lz2/u5$OooO00o;

    return-void
.end method

.method private OooOOO0(Landroid/app/Activity;I)Lz2/t5$OooO;
    .locals 3

    new-instance v0, Lz2/t5$OooOOO0;

    iget-object v1, p0, Lz2/t5$OooO0OO;->OooO0O0:Lz2/t5;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    const/16 v2, 0x63

    invoke-direct {v0, v1, p1, v2}, Lz2/t5$OooOOO0;-><init>(Lz2/t5;Landroid/view/WindowManager;I)V

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Lz2/t5$OooO0OO;->OooO0Oo(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, v0, Lz2/t5$OooO0OO;->OooO0OO:Landroid/view/View;

    iget-object p1, p0, Lz2/t5$OooO0OO;->OooO00o:Landroid/widget/Toast;

    iput-object p1, v0, Lz2/t5$OooO0OO;->OooO00o:Landroid/widget/Toast;

    invoke-virtual {v0, p2}, Lz2/t5$OooOOO0;->OooO00o(I)V

    return-object v0
.end method


# virtual methods
.method public OooO00o(I)V
    .locals 5

    iget-object v0, p0, Lz2/t5$OooO0OO;->OooO00o:Landroid/widget/Toast;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lz2/w5;->OooOoO0()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lz2/t5$OooO0o;->OooOO0O(I)Lz2/t5$OooO;

    move-result-object p1

    iput-object p1, p0, Lz2/t5$OooO0o;->OooO0o0:Lz2/t5$OooO;

    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-static {}, Lz2/w5;->OooO()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-static {v2}, Lz2/w5;->OooOo(Landroid/app/Activity;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_0

    :cond_2
    if-nez v0, :cond_3

    invoke-direct {p0, v2, p1}, Lz2/t5$OooO0o;->OooOOO0(Landroid/app/Activity;I)Lz2/t5$OooO;

    move-result-object v0

    iput-object v0, p0, Lz2/t5$OooO0o;->OooO0o0:Lz2/t5$OooO;

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    sget v4, Lz2/t5$OooO0o;->OooO0o:I

    invoke-direct {p0, v2, v4, v3}, Lz2/t5$OooO0o;->OooOO0o(Landroid/app/Activity;IZ)V

    goto :goto_0

    :cond_4
    if-eqz v0, :cond_6

    invoke-direct {p0}, Lz2/t5$OooO0o;->OooOO0()V

    new-instance v0, Lz2/t5$OooO0o$OooO00o;

    invoke-direct {v0, p0}, Lz2/t5$OooO0o$OooO00o;-><init>(Lz2/t5$OooO0o;)V

    if-nez p1, :cond_5

    const-wide/16 v1, 0x7d0

    goto :goto_1

    :cond_5
    const-wide/16 v1, 0xdac

    :goto_1
    invoke-static {v0, v1, v2}, Lz2/w5;->Oooo0o0(Ljava/lang/Runnable;J)V

    sget p1, Lz2/t5$OooO0o;->OooO0o:I

    add-int/2addr p1, v3

    sput p1, Lz2/t5$OooO0o;->OooO0o:I

    goto :goto_2

    :cond_6
    invoke-direct {p0, p1}, Lz2/t5$OooO0o;->OooOO0O(I)Lz2/t5$OooO;

    move-result-object p1

    iput-object p1, p0, Lz2/t5$OooO0o;->OooO0o0:Lz2/t5$OooO;

    :goto_2
    return-void
.end method

.method public cancel()V
    .locals 4

    invoke-direct {p0}, Lz2/t5$OooO0o;->OooO()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lz2/t5$OooO0o;->OooOOO()V

    invoke-static {}, Lz2/w5;->OooO()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-static {v1}, Lz2/w5;->OooOo(Landroid/app/Activity;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TAG_TOAST"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lz2/t5$OooO0o;->OooO0o:I

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    :try_start_0
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lz2/t5$OooO0o;->OooO0o0:Lz2/t5$OooO;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lz2/t5$OooO;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lz2/t5$OooO0o;->OooO0o0:Lz2/t5$OooO;

    :cond_3
    invoke-super {p0}, Lz2/t5$OooO0OO;->cancel()V

    return-void
.end method
