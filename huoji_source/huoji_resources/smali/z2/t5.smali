.class public final Lz2/t5;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz2/t5$OooO;,
        Lz2/t5$OooO0OO;,
        Lz2/t5$OooO0o;,
        Lz2/t5$OooOOO0;,
        Lz2/t5$OooOO0O;,
        Lz2/t5$OooOO0;
    }
.end annotation


# static fields
.field private static final OooOO0o:Ljava/lang/String; = "TAG_TOAST"

.field private static final OooOOO:Ljava/lang/String; = "toast null"

.field private static final OooOOO0:I = -0x1000001

.field private static final OooOOOO:Ljava/lang/String; = "toast nothing"

.field private static final OooOOOo:Lz2/t5;

.field private static OooOOo0:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lz2/t5$OooO;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private OooO:Z

.field private OooO00o:Ljava/lang/String;

.field private OooO0O0:I

.field private OooO0OO:I

.field private OooO0Oo:I

.field private OooO0o:I

.field private OooO0o0:I

.field private OooO0oO:I

.field private OooO0oo:I

.field private OooOO0:[Landroid/graphics/drawable/Drawable;

.field private OooOO0O:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lz2/t5;->OooOOOo()Lz2/t5;

    move-result-object v0

    sput-object v0, Lz2/t5;->OooOOOo:Lz2/t5;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lz2/t5;->OooO0O0:I

    iput v0, p0, Lz2/t5;->OooO0OO:I

    iput v0, p0, Lz2/t5;->OooO0Oo:I

    const v1, -0x1000001

    iput v1, p0, Lz2/t5;->OooO0o0:I

    iput v0, p0, Lz2/t5;->OooO0o:I

    iput v1, p0, Lz2/t5;->OooO0oO:I

    iput v0, p0, Lz2/t5;->OooO0oo:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lz2/t5;->OooO:Z

    const/4 v1, 0x4

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lz2/t5;->OooOO0:[Landroid/graphics/drawable/Drawable;

    iput-boolean v0, p0, Lz2/t5;->OooOO0O:Z

    return-void
.end method

.method public static synthetic OooO(Lz2/t5;Ljava/lang/CharSequence;)Landroid/view/View;
    .locals 0

    invoke-direct {p0, p1}, Lz2/t5;->OoooOOo(Ljava/lang/CharSequence;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic OooO00o()Ljava/lang/ref/WeakReference;
    .locals 1

    sget-object v0, Lz2/t5;->OooOOo0:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method public static synthetic OooO0O0(Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    .locals 0

    sput-object p0, Lz2/t5;->OooOOo0:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public static synthetic OooO0OO(Lz2/t5;)Lz2/t5$OooO;
    .locals 0

    invoke-static {p0}, Lz2/t5;->OooOOo0(Lz2/t5;)Lz2/t5$OooO;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic OooO0Oo(Lz2/t5;)I
    .locals 0

    iget p0, p0, Lz2/t5;->OooO0o:I

    return p0
.end method

.method public static synthetic OooO0o(Lz2/t5;)I
    .locals 0

    iget p0, p0, Lz2/t5;->OooO0O0:I

    return p0
.end method

.method public static synthetic OooO0o0(Lz2/t5;)I
    .locals 0

    iget p0, p0, Lz2/t5;->OooO0o0:I

    return p0
.end method

.method public static synthetic OooO0oO(Lz2/t5;)I
    .locals 0

    iget p0, p0, Lz2/t5;->OooO0OO:I

    return p0
.end method

.method public static synthetic OooO0oo(Lz2/t5;)I
    .locals 0

    iget p0, p0, Lz2/t5;->OooO0Oo:I

    return p0
.end method

.method public static synthetic OooOO0(Lz2/t5;)I
    .locals 0

    iget p0, p0, Lz2/t5;->OooO0oO:I

    return p0
.end method

.method public static synthetic OooOO0O(Lz2/t5;)I
    .locals 0

    iget p0, p0, Lz2/t5;->OooO0oo:I

    return p0
.end method

.method public static OooOO0o()V
    .locals 1

    new-instance v0, Lz2/t5$OooO00o;

    invoke-direct {v0}, Lz2/t5$OooO00o;-><init>()V

    invoke-static {v0}, Lz2/w5;->Oooo0OO(Ljava/lang/Runnable;)V

    return-void
.end method

.method private OooOOO()I
    .locals 1

    iget-boolean v0, p0, Lz2/t5;->OooO:Z

    return v0
.end method

.method public static OooOOO0()Lz2/t5;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object v0, Lz2/t5;->OooOOOo:Lz2/t5;

    return-object v0
.end method

.method private static OooOOOO(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1

    if-nez p0, :cond_0

    const-string p0, "toast null"

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    const-string p0, "toast nothing"

    :cond_1
    :goto_0
    return-object p0
.end method

.method public static OooOOOo()Lz2/t5;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lz2/t5;

    invoke-direct {v0}, Lz2/t5;-><init>()V

    return-object v0
.end method

.method private static OooOOo0(Lz2/t5;)Lz2/t5$OooO;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-boolean v1, p0, Lz2/t5;->OooOO0O:Z

    if-nez v1, :cond_1

    invoke-static {}, Lz2/u5;->OooO00o()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/core/app/NotificationManagerCompat;->areNotificationsEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    new-instance v0, Lz2/t5$OooOO0O;

    invoke-direct {v0, p0}, Lz2/t5$OooOO0O;-><init>(Lz2/t5;)V

    return-object v0

    :cond_0
    invoke-static {}, Lz2/w5;->OooOoO()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v0, Lz2/t5$OooOO0O;

    invoke-direct {v0, p0}, Lz2/t5$OooOO0O;-><init>(Lz2/t5;)V

    return-object v0

    :cond_1
    const/16 v1, 0x19

    if-ge v0, v1, :cond_2

    new-instance v0, Lz2/t5$OooOOO0;

    const/16 v1, 0x7d5

    invoke-direct {v0, p0, v1}, Lz2/t5$OooOOO0;-><init>(Lz2/t5;I)V

    return-object v0

    :cond_2
    invoke-static {}, Lz2/w5;->OooOoO()Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_3

    new-instance v0, Lz2/t5$OooOOO0;

    const/16 v1, 0x7f6

    invoke-direct {v0, p0, v1}, Lz2/t5$OooOOO0;-><init>(Lz2/t5;I)V

    return-object v0

    :cond_3
    new-instance v0, Lz2/t5$OooOOO0;

    const/16 v1, 0x7d2

    invoke-direct {v0, p0, v1}, Lz2/t5$OooOOO0;-><init>(Lz2/t5;I)V

    return-object v0

    :cond_4
    new-instance v0, Lz2/t5$OooO0o;

    invoke-direct {v0, p0}, Lz2/t5$OooO0o;-><init>(Lz2/t5;)V

    return-object v0
.end method

.method public static Oooo(I)V
    .locals 2
    .param p0    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    invoke-static {p0}, Lz2/w5;->OooOo00(I)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lz2/t5;->OooOOOo:Lz2/t5;

    const/4 v1, 0x1

    invoke-static {p0, v1, v0}, Lz2/t5;->Oooo0oO(Ljava/lang/CharSequence;ILz2/t5;)V

    return-void
.end method

.method private static Oooo0OO(Landroid/view/View;ILz2/t5;)V
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2}, Lz2/t5;->Oooo0o0(Landroid/view/View;Ljava/lang/CharSequence;ILz2/t5;)V

    return-void
.end method

.method private static Oooo0o0(Landroid/view/View;Ljava/lang/CharSequence;ILz2/t5;)V
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lz2/t5;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lz2/t5$OooO0O0;

    invoke-direct {v0, p3, p0, p1, p2}, Lz2/t5$OooO0O0;-><init>(Lz2/t5;Landroid/view/View;Ljava/lang/CharSequence;I)V

    invoke-static {v0}, Lz2/w5;->Oooo0OO(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static Oooo0oO(Ljava/lang/CharSequence;ILz2/t5;)V
    .locals 1
    .param p0    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {p0}, Lz2/t5;->OooOOOO(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {v0, p0, p1, p2}, Lz2/t5;->Oooo0o0(Landroid/view/View;Ljava/lang/CharSequence;ILz2/t5;)V

    return-void
.end method

.method public static OoooO(I)V
    .locals 2
    .param p0    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    invoke-static {p0}, Lz2/w5;->OooOo00(I)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lz2/t5;->OooOOOo:Lz2/t5;

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lz2/t5;->Oooo0oO(Ljava/lang/CharSequence;ILz2/t5;)V

    return-void
.end method

.method public static OoooO0(Ljava/lang/CharSequence;)V
    .locals 2
    .param p0    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    sget-object v0, Lz2/t5;->OooOOOo:Lz2/t5;

    const/4 v1, 0x1

    invoke-static {p0, v1, v0}, Lz2/t5;->Oooo0oO(Ljava/lang/CharSequence;ILz2/t5;)V

    return-void
.end method

.method public static varargs OoooO00(I[Ljava/lang/Object;)V
    .locals 1
    .param p0    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    invoke-static {p0, p1}, Lz2/w5;->OooOo0(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lz2/t5;->OooOOOo:Lz2/t5;

    const/4 v0, 0x1

    invoke-static {p0, v0, p1}, Lz2/t5;->Oooo0oO(Ljava/lang/CharSequence;ILz2/t5;)V

    return-void
.end method

.method public static varargs OoooO0O(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {p0, p1}, Lz2/w5;->OooO0oo(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lz2/t5;->OooOOOo:Lz2/t5;

    const/4 v0, 0x1

    invoke-static {p0, v0, p1}, Lz2/t5;->Oooo0oO(Ljava/lang/CharSequence;ILz2/t5;)V

    return-void
.end method

.method public static varargs OoooOO0(I[Ljava/lang/Object;)V
    .locals 1
    .param p0    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    invoke-static {p0, p1}, Lz2/w5;->OooOo0(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lz2/t5;->OooOOOo:Lz2/t5;

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lz2/t5;->Oooo0oO(Ljava/lang/CharSequence;ILz2/t5;)V

    return-void
.end method

.method public static varargs OoooOOO(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {p0, p1}, Lz2/w5;->OooO0oo(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lz2/t5;->OooOOOo:Lz2/t5;

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lz2/t5;->Oooo0oO(Ljava/lang/CharSequence;ILz2/t5;)V

    return-void
.end method

.method private OoooOOo(Ljava/lang/CharSequence;)Landroid/view/View;
    .locals 8

    iget-object v0, p0, Lz2/t5;->OooO00o:Ljava/lang/String;

    const-string v1, "dark"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lz2/t5;->OooO00o:Ljava/lang/String;

    const-string v6, "light"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lz2/t5;->OooOO0:[Landroid/graphics/drawable/Drawable;

    aget-object v6, v0, v5

    if-nez v6, :cond_0

    aget-object v6, v0, v4

    if-nez v6, :cond_0

    aget-object v6, v0, v3

    if-nez v6, :cond_0

    aget-object v0, v0, v2

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    sget v0, Lcom/cyjh/common/R$layout;->utils_toast_view:I

    invoke-static {v0}, Lz2/w5;->OooOooO(I)Landroid/view/View;

    move-result-object v0

    const v6, 0x102000b

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iget-object v7, p0, Lz2/t5;->OooO00o:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/GradientDrawable;

    const-string v7, "#BB000000"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v1, v7}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/4 v1, -0x1

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    invoke-virtual {v6, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lz2/t5;->OooOO0:[Landroid/graphics/drawable/Drawable;

    aget-object p1, p1, v5

    if-eqz p1, :cond_2

    sget p1, Lcom/cyjh/common/R$id;->utvLeftIconView:I

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget-object v1, p0, Lz2/t5;->OooOO0:[Landroid/graphics/drawable/Drawable;

    aget-object v1, v1, v5

    invoke-static {p1, v1}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-object p1, p0, Lz2/t5;->OooOO0:[Landroid/graphics/drawable/Drawable;

    aget-object p1, p1, v4

    if-eqz p1, :cond_3

    sget p1, Lcom/cyjh/common/R$id;->utvTopIconView:I

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget-object v1, p0, Lz2/t5;->OooOO0:[Landroid/graphics/drawable/Drawable;

    aget-object v1, v1, v4

    invoke-static {p1, v1}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    iget-object p1, p0, Lz2/t5;->OooOO0:[Landroid/graphics/drawable/Drawable;

    aget-object p1, p1, v3

    if-eqz p1, :cond_4

    sget p1, Lcom/cyjh/common/R$id;->utvRightIconView:I

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget-object v1, p0, Lz2/t5;->OooOO0:[Landroid/graphics/drawable/Drawable;

    aget-object v1, v1, v3

    invoke-static {p1, v1}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    iget-object p1, p0, Lz2/t5;->OooOO0:[Landroid/graphics/drawable/Drawable;

    aget-object p1, p1, v2

    if-eqz p1, :cond_5

    sget p1, Lcom/cyjh/common/R$id;->utvBottomIconView:I

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget-object v1, p0, Lz2/t5;->OooOO0:[Landroid/graphics/drawable/Drawable;

    aget-object v1, v1, v2

    invoke-static {p1, v1}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    return-object v0
.end method

.method public static o000oOoO(Ljava/lang/CharSequence;)V
    .locals 2
    .param p0    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    sget-object v0, Lz2/t5;->OooOOOo:Lz2/t5;

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lz2/t5;->Oooo0oO(Ljava/lang/CharSequence;ILz2/t5;)V

    return-void
.end method


# virtual methods
.method public final OooOOo(I)Lz2/t5;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput p1, p0, Lz2/t5;->OooO0o0:I

    return-object p0
.end method

.method public final OooOOoo(I)Lz2/t5;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput p1, p0, Lz2/t5;->OooO0o:I

    return-object p0
.end method

.method public final OooOo(I)Lz2/t5;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {}, Lz2/u5;->OooO00o()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lz2/t5;->OooOoO0(Landroid/graphics/drawable/Drawable;)Lz2/t5;

    move-result-object p1

    return-object p1
.end method

.method public final OooOo0(Landroid/graphics/drawable/Drawable;)Lz2/t5;
    .locals 2
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lz2/t5;->OooOO0:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x3

    aput-object p1, v0, v1

    return-object p0
.end method

.method public final OooOo00(I)Lz2/t5;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {}, Lz2/u5;->OooO00o()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lz2/t5;->OooOo0(Landroid/graphics/drawable/Drawable;)Lz2/t5;

    move-result-object p1

    return-object p1
.end method

.method public final OooOo0O(Z)Lz2/t5;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-boolean p1, p0, Lz2/t5;->OooO:Z

    return-object p0
.end method

.method public final OooOo0o(III)Lz2/t5;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput p1, p0, Lz2/t5;->OooO0O0:I

    iput p2, p0, Lz2/t5;->OooO0OO:I

    iput p3, p0, Lz2/t5;->OooO0Oo:I

    return-object p0
.end method

.method public final OooOoO(Ljava/lang/String;)Lz2/t5;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lz2/t5;->OooO00o:Ljava/lang/String;

    return-object p0
.end method

.method public final OooOoO0(Landroid/graphics/drawable/Drawable;)Lz2/t5;
    .locals 2
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lz2/t5;->OooOO0:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    return-object p0
.end method

.method public final OooOoOO()Lz2/t5;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lz2/t5;->OooOO0O:Z

    return-object p0
.end method

.method public final OooOoo(Landroid/graphics/drawable/Drawable;)Lz2/t5;
    .locals 2
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lz2/t5;->OooOO0:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x2

    aput-object p1, v0, v1

    return-object p0
.end method

.method public final OooOoo0(I)Lz2/t5;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {}, Lz2/u5;->OooO00o()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lz2/t5;->OooOoo(Landroid/graphics/drawable/Drawable;)Lz2/t5;

    move-result-object p1

    return-object p1
.end method

.method public final OooOooO(I)Lz2/t5;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput p1, p0, Lz2/t5;->OooO0oO:I

    return-object p0
.end method

.method public final OooOooo(I)Lz2/t5;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput p1, p0, Lz2/t5;->OooO0oo:I

    return-object p0
.end method

.method public final varargs Oooo0(I[Ljava/lang/Object;)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    invoke-static {p1, p2}, Lz2/w5;->OooOo0(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0}, Lz2/t5;->OooOOO()I

    move-result p2

    invoke-static {p1, p2, p0}, Lz2/t5;->Oooo0oO(Ljava/lang/CharSequence;ILz2/t5;)V

    return-void
.end method

.method public final Oooo000(I)Lz2/t5;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {}, Lz2/u5;->OooO00o()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lz2/t5;->Oooo00O(Landroid/graphics/drawable/Drawable;)Lz2/t5;

    move-result-object p1

    return-object p1
.end method

.method public final Oooo00O(Landroid/graphics/drawable/Drawable;)Lz2/t5;
    .locals 2
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lz2/t5;->OooOO0:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x1

    aput-object p1, v0, v1

    return-object p0
.end method

.method public final Oooo00o(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    invoke-static {p1}, Lz2/w5;->OooOo00(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0}, Lz2/t5;->OooOOO()I

    move-result v0

    invoke-static {p1, v0, p0}, Lz2/t5;->Oooo0oO(Ljava/lang/CharSequence;ILz2/t5;)V

    return-void
.end method

.method public final Oooo0O0(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Lz2/t5;->OooOOO()I

    move-result v0

    invoke-static {p1, v0, p0}, Lz2/t5;->Oooo0OO(Landroid/view/View;ILz2/t5;)V

    return-void
.end method

.method public final Oooo0o(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Lz2/t5;->OooOOO()I

    move-result v0

    invoke-static {p1, v0, p0}, Lz2/t5;->Oooo0oO(Ljava/lang/CharSequence;ILz2/t5;)V

    return-void
.end method

.method public final varargs Oooo0oo(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {p1, p2}, Lz2/w5;->OooO0oo(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0}, Lz2/t5;->OooOOO()I

    move-result p2

    invoke-static {p1, p2, p0}, Lz2/t5;->Oooo0oO(Ljava/lang/CharSequence;ILz2/t5;)V

    return-void
.end method
