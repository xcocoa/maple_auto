.class public Lz2/mf0;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final OooO00o:I = 0x0

.field private static final OooO0O0:I = 0x1

.field private static volatile OooO0OO:[Landroid/graphics/Point;

.field private static final OooO0Oo:Landroid/graphics/Point;

.field private static OooO0o:I

.field private static OooO0o0:Landroid/graphics/Rect;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/graphics/Point;

    sput-object v0, Lz2/mf0;->OooO0OO:[Landroid/graphics/Point;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    sput-object v0, Lz2/mf0;->OooO0Oo:Landroid/graphics/Point;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lz2/mf0;->OooO0o0:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static OooO(Landroid/content/Context;)I
    .locals 5

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x11

    if-ge v3, v4, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    if-ne v0, v1, :cond_1

    invoke-static {p0}, Lz2/mf0;->OooO0OO(Landroid/content/Context;)I

    move-result v2

    :cond_1
    add-int/2addr v3, v2

    return v3

    :cond_2
    sget-object v3, Lz2/mf0;->OooO0OO:[Landroid/graphics/Point;

    aget-object v3, v3, v0

    if-nez v3, :cond_5

    const-string v3, "window"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    if-nez v3, :cond_4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    if-ne v0, v1, :cond_3

    invoke-static {p0}, Lz2/mf0;->OooO0OO(Landroid/content/Context;)I

    move-result v2

    :cond_3
    add-int/2addr v3, v2

    return v3

    :cond_4
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v1, v3}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    sget-object v1, Lz2/mf0;->OooO0OO:[Landroid/graphics/Point;

    aput-object v3, v1, v0

    :cond_5
    invoke-static {p0}, Lz2/mf0;->OooO00o(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_6

    sget-object v1, Lz2/mf0;->OooO0o0:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    if-eqz v1, :cond_6

    invoke-static {p0}, Lz2/mf0;->OooO0o(Landroid/content/Context;)I

    move-result v2

    :cond_6
    sget-object p0, Lz2/mf0;->OooO0OO:[Landroid/graphics/Point;

    aget-object p0, p0, v0

    iget p0, p0, Landroid/graphics/Point;->x:I

    sub-int/2addr p0, v2

    return p0
.end method

.method public static OooO00o(Landroid/content/Context;)Z
    .locals 11
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    sget-object v0, Lz2/mf0;->OooO0o0:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    const/16 v0, 0xf

    invoke-static {p0, v0}, Lz2/nf0;->OooO0oo(Landroid/content/Context;I)Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-ge v2, v3, :cond_8

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {v0}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    sget-object v3, Lz2/mf0;->OooO0Oo:Landroid/graphics/Point;

    invoke-virtual {v2, v3}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    if-ne v4, p0, :cond_5

    const p0, 0x1020002

    invoke-virtual {v0, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    iget v2, v3, Landroid/graphics/Point;->x:I

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    if-eq v2, p0, :cond_2

    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    if-lez v0, :cond_3

    sget-object v0, Lz2/mf0;->OooO0o0:Landroid/graphics/Rect;

    invoke-virtual {v0, v5, v1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    :cond_3
    sget-object v0, Lz2/mf0;->OooO0o0:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v1, v5, v1}, Landroid/graphics/Rect;->set(IIII)V

    :cond_4
    :goto_1
    return p0

    :cond_5
    sget-object p0, Lz2/mf0;->OooO0o0:Landroid/graphics/Rect;

    invoke-virtual {v0, p0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    sget-object p0, Lz2/mf0;->OooO0o0:Landroid/graphics/Rect;

    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    iget v2, v3, Landroid/graphics/Point;->y:I

    if-eq v0, v2, :cond_6

    const/4 v0, 0x1

    goto :goto_2

    :cond_6
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {p0}, Landroid/graphics/Rect;->setEmpty()V

    if-eqz v0, :cond_7

    sget-object p0, Lz2/mf0;->OooO0o0:Landroid/graphics/Rect;

    invoke-virtual {p0, v1, v1, v1, v5}, Landroid/graphics/Rect;->set(IIII)V

    :cond_7
    return v0

    :cond_8
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v3, :cond_f

    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getId()I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_9

    goto :goto_6

    :cond_9
    :try_start_0
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v7}, Landroid/view/View;->getId()I

    move-result v10

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_e

    invoke-virtual {v7}, Landroid/view/View;->getId()I

    move-result v10

    if-eq v10, v9, :cond_e

    invoke-virtual {v7}, Landroid/view/View;->isShown()Z

    move-result v9

    if-eqz v9, :cond_e

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    const-string v10, "navigationbarbackground"

    invoke-static {v10, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_a

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    const-string v9, "immersion_navigation_bar_view"

    invoke-static {v9, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_e

    :cond_a
    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    if-ne p0, v4, :cond_d

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result p0

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v0

    if-le p0, v0, :cond_b

    goto :goto_4

    :cond_b
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result p0

    if-nez p0, :cond_c

    sget-object p0, Lz2/mf0;->OooO0o0:Landroid/graphics/Rect;

    invoke-virtual {p0, v5, v1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_5

    :cond_c
    sget-object p0, Lz2/mf0;->OooO0o0:Landroid/graphics/Rect;

    invoke-virtual {p0, v1, v1, v5, v1}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_5

    :cond_d
    :goto_4
    sget-object p0, Lz2/mf0;->OooO0o0:Landroid/graphics/Rect;

    invoke-virtual {p0, v1, v1, v1, v5}, Landroid/graphics/Rect;->set(IIII)V

    :goto_5
    return v5

    :catch_0
    :cond_e
    :goto_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_f
    return v1
.end method

.method private static OooO0O0(Landroid/content/Context;)V
    .locals 5

    sget v0, Lz2/mf0;->OooO0o:I

    if-nez v0, :cond_2

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "status_bar_height"

    const-string v3, "dimen"

    const-string v4, "android"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :cond_1
    sput v0, Lz2/mf0;->OooO0o:I

    :cond_2
    :goto_0
    return-void
.end method

.method private static OooO0OO(Landroid/content/Context;)I
    .locals 1

    invoke-static {p0}, Lz2/mf0;->OooO00o(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lz2/mf0;->OooO0o0:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    if-eqz v0, :cond_0

    invoke-static {p0}, Lz2/mf0;->OooO0o(Landroid/content/Context;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static OooO0Oo(Landroid/content/Context;)I
    .locals 1

    invoke-static {p0}, Lz2/mf0;->OooO00o(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lz2/mf0;->OooO0o0:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    if-eqz v0, :cond_0

    invoke-static {p0}, Lz2/mf0;->OooO0o(Landroid/content/Context;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static OooO0o(Landroid/content/Context;)I
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const-string v0, "navigation_bar_height"

    const-string v1, "dimen"

    const-string v2, "android"

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static OooO0o0(Landroid/content/Context;)I
    .locals 1

    invoke-static {p0}, Lz2/mf0;->OooO00o(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p0}, Lz2/mf0;->OooO0o(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public static OooO0oO(Landroid/content/Context;)I
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-ge v0, v3, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-nez v1, :cond_1

    invoke-static {p0}, Lz2/mf0;->OooO0Oo(Landroid/content/Context;)I

    move-result v2

    :cond_1
    add-int/2addr v0, v2

    return v0

    :cond_2
    sget-object v0, Lz2/mf0;->OooO0OO:[Landroid/graphics/Point;

    aget-object v0, v0, v1

    if-nez v0, :cond_5

    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    if-nez v0, :cond_4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-nez v1, :cond_3

    invoke-static {p0}, Lz2/mf0;->OooO0Oo(Landroid/content/Context;)I

    move-result v2

    :cond_3
    add-int/2addr v0, v2

    return v0

    :cond_4
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v0, v3}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    sget-object v0, Lz2/mf0;->OooO0OO:[Landroid/graphics/Point;

    aput-object v3, v0, v1

    :cond_5
    invoke-static {p0}, Lz2/mf0;->OooO00o(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lz2/mf0;->OooO0o0:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    if-eqz v0, :cond_6

    invoke-static {p0}, Lz2/mf0;->OooO0o(Landroid/content/Context;)I

    move-result v2

    :cond_6
    sget-object p0, Lz2/mf0;->OooO0OO:[Landroid/graphics/Point;

    aget-object p0, p0, v1

    iget p0, p0, Landroid/graphics/Point;->y:I

    sub-int/2addr p0, v2

    return p0
.end method

.method public static OooO0oo(Landroid/content/Context;)I
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    return p0
.end method

.method public static OooOO0(Landroid/content/Context;)I
    .locals 0

    invoke-static {p0}, Lz2/mf0;->OooO0O0(Landroid/content/Context;)V

    sget p0, Lz2/mf0;->OooO0o:I

    return p0
.end method
