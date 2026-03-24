.class public final Lz2/se0;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz2/se0$OooO0O0;,
        Lz2/se0$OooO00o;,
        Lz2/se0$OooO0OO;
    }
.end annotation


# static fields
.field private static final OooO00o:Ljava/lang/String; = "PopupCompatManager"

.field private static final OooO0O0:I = 0x1706

.field private static final OooO0OO:Lz2/se0$OooO0OO;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lz2/se0$OooO0O0;

    invoke-direct {v0}, Lz2/se0$OooO0O0;-><init>()V

    sput-object v0, Lz2/se0;->OooO0OO:Lz2/se0$OooO0OO;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic OooO00o(Landroid/app/Activity;)Z
    .locals 0

    invoke-static {p0}, Lz2/se0;->OooO0OO(Landroid/app/Activity;)Z

    move-result p0

    return p0
.end method

.method public static OooO0O0(Lz2/qe0;)V
    .locals 1

    sget-object v0, Lz2/se0;->OooO0OO:Lz2/se0$OooO0OO;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lz2/se0$OooO0OO;->OooO00o(Lz2/qe0;)V

    :cond_0
    return-void
.end method

.method private static OooO0OO(Landroid/app/Activity;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {v1}, Landroid/view/View;->getWindowSystemUiVisibility()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 p0, p0, 0x400

    if-eqz p0, :cond_2

    and-int/lit8 p0, v1, 0x2

    if-nez p0, :cond_1

    and-int/lit16 p0, v1, 0x200

    if-eqz p0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :catch_0
    :cond_2
    return v0
.end method

.method public static OooO0Oo(Lz2/qe0;Landroid/view/View;III)V
    .locals 6

    sget-object v0, Lz2/se0;->OooO0OO:Lz2/se0$OooO0OO;

    if-eqz v0, :cond_0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lz2/se0$OooO0OO;->OooO0OO(Lz2/qe0;Landroid/view/View;III)V

    :cond_0
    return-void
.end method

.method public static OooO0o0(Lz2/qe0;Landroid/view/View;III)V
    .locals 6

    sget-object v0, Lz2/se0;->OooO0OO:Lz2/se0$OooO0OO;

    if-eqz v0, :cond_0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lz2/se0$OooO0OO;->OooO0O0(Lz2/qe0;Landroid/view/View;III)V

    :cond_0
    return-void
.end method
