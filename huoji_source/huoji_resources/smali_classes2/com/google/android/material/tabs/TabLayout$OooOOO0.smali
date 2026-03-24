.class public Lcom/google/android/material/tabs/TabLayout$OooOOO0;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/tabs/TabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OooOOO0"
.end annotation


# static fields
.field public static final OooO:I = -0x1


# instance fields
.field private OooO00o:Ljava/lang/Object;

.field private OooO0O0:Landroid/graphics/drawable/Drawable;

.field private OooO0OO:Ljava/lang/CharSequence;

.field private OooO0Oo:Ljava/lang/CharSequence;

.field private OooO0o:Landroid/view/View;

.field private OooO0o0:I

.field public OooO0oO:Lcom/google/android/material/tabs/TabLayout;

.field public OooO0oo:Lcom/google/android/material/tabs/TabLayout$OooOo;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/material/tabs/TabLayout$OooOOO0;->OooO0o0:I

    return-void
.end method

.method public static synthetic OooO00o(Lcom/google/android/material/tabs/TabLayout$OooOOO0;)Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/tabs/TabLayout$OooOOO0;->OooO0Oo:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public static synthetic OooO0O0(Lcom/google/android/material/tabs/TabLayout$OooOOO0;)Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/tabs/TabLayout$OooOOO0;->OooO0OO:Ljava/lang/CharSequence;

    return-object p0
.end method


# virtual methods
.method public OooO()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$OooOOO0;->OooO0oO:Lcom/google/android/material/tabs/TabLayout;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->getSelectedTabPosition()I

    move-result v0

    iget v1, p0, Lcom/google/android/material/tabs/TabLayout$OooOOO0;->OooO0o0:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Tab not attached to a TabLayout"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public OooO0OO()Ljava/lang/CharSequence;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$OooOOO0;->OooO0oo:Lcom/google/android/material/tabs/TabLayout$OooOo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public OooO0Oo()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$OooOOO0;->OooO0o:Landroid/view/View;

    return-object v0
.end method

.method public OooO0o()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/tabs/TabLayout$OooOOO0;->OooO0o0:I

    return v0
.end method

.method public OooO0o0()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$OooOOO0;->OooO0O0:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public OooO0oO()Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$OooOOO0;->OooO00o:Ljava/lang/Object;

    return-object v0
.end method

.method public OooO0oo()Ljava/lang/CharSequence;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$OooOOO0;->OooO0OO:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public OooOO0()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/material/tabs/TabLayout$OooOOO0;->OooO0oO:Lcom/google/android/material/tabs/TabLayout;

    iput-object v0, p0, Lcom/google/android/material/tabs/TabLayout$OooOOO0;->OooO0oo:Lcom/google/android/material/tabs/TabLayout$OooOo;

    iput-object v0, p0, Lcom/google/android/material/tabs/TabLayout$OooOOO0;->OooO00o:Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/material/tabs/TabLayout$OooOOO0;->OooO0O0:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/google/android/material/tabs/TabLayout$OooOOO0;->OooO0OO:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/google/android/material/tabs/TabLayout$OooOOO0;->OooO0Oo:Ljava/lang/CharSequence;

    const/4 v1, -0x1

    iput v1, p0, Lcom/google/android/material/tabs/TabLayout$OooOOO0;->OooO0o0:I

    iput-object v0, p0, Lcom/google/android/material/tabs/TabLayout$OooOOO0;->OooO0o:Landroid/view/View;

    return-void
.end method

.method public OooOO0O()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$OooOOO0;->OooO0oO:Lcom/google/android/material/tabs/TabLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/google/android/material/tabs/TabLayout;->Oooo0O0(Lcom/google/android/material/tabs/TabLayout$OooOOO0;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Tab not attached to a TabLayout"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public OooOO0o(I)Lcom/google/android/material/tabs/TabLayout$OooOOO0;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$OooOOO0;->OooO0oO:Lcom/google/android/material/tabs/TabLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/tabs/TabLayout$OooOOO0;->OooOOO0(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$OooOOO0;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Tab not attached to a TabLayout"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public OooOOO(I)Lcom/google/android/material/tabs/TabLayout$OooOOO0;
    .locals 3
    .param p1    # I
        .annotation build Landroidx/annotation/LayoutRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$OooOOO0;->OooO0oo:Lcom/google/android/material/tabs/TabLayout$OooOo;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout$OooOOO0;->OooO0oo:Lcom/google/android/material/tabs/TabLayout$OooOo;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/tabs/TabLayout$OooOOO0;->OooOOOO(Landroid/view/View;)Lcom/google/android/material/tabs/TabLayout$OooOOO0;

    move-result-object p1

    return-object p1
.end method

.method public OooOOO0(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$OooOOO0;
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lcom/google/android/material/tabs/TabLayout$OooOOO0;->OooO0Oo:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$OooOOO0;->OooOo0O()V

    return-object p0
.end method

.method public OooOOOO(Landroid/view/View;)Lcom/google/android/material/tabs/TabLayout$OooOOO0;
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lcom/google/android/material/tabs/TabLayout$OooOOO0;->OooO0o:Landroid/view/View;

    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$OooOOO0;->OooOo0O()V

    return-object p0
.end method

.method public OooOOOo(I)Lcom/google/android/material/tabs/TabLayout$OooOOO0;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$OooOOO0;->OooO0oO:Lcom/google/android/material/tabs/TabLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/tabs/TabLayout$OooOOO0;->OooOOo0(Landroid/graphics/drawable/Drawable;)Lcom/google/android/material/tabs/TabLayout$OooOOO0;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Tab not attached to a TabLayout"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public OooOOo(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/tabs/TabLayout$OooOOO0;->OooO0o0:I

    return-void
.end method

.method public OooOOo0(Landroid/graphics/drawable/Drawable;)Lcom/google/android/material/tabs/TabLayout$OooOOO0;
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lcom/google/android/material/tabs/TabLayout$OooOOO0;->OooO0O0:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$OooOOO0;->OooOo0O()V

    return-object p0
.end method

.method public OooOOoo(Ljava/lang/Object;)Lcom/google/android/material/tabs/TabLayout$OooOOO0;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lcom/google/android/material/tabs/TabLayout$OooOOO0;->OooO00o:Ljava/lang/Object;

    return-object p0
.end method

.method public OooOo0(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$OooOOO0;
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$OooOOO0;->OooO0Oo:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$OooOOO0;->OooO0oo:Lcom/google/android/material/tabs/TabLayout$OooOo;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    iput-object p1, p0, Lcom/google/android/material/tabs/TabLayout$OooOOO0;->OooO0OO:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$OooOOO0;->OooOo0O()V

    return-object p0
.end method

.method public OooOo00(I)Lcom/google/android/material/tabs/TabLayout$OooOOO0;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$OooOOO0;->OooO0oO:Lcom/google/android/material/tabs/TabLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/tabs/TabLayout$OooOOO0;->OooOo0(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$OooOOO0;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Tab not attached to a TabLayout"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public OooOo0O()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$OooOOO0;->OooO0oo:Lcom/google/android/material/tabs/TabLayout$OooOo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout$OooOo;->OooOO0()V

    :cond_0
    return-void
.end method
