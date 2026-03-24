.class public Lz2/w5;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static OooO()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    sget-object v0, Lz2/v5;->OooO0oO:Lz2/v5;

    invoke-virtual {v0}, Lz2/v5;->OooOO0O()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static OooO00o(Landroid/app/Activity;Lz2/u5$OooO00o;)V
    .locals 1

    sget-object v0, Lz2/v5;->OooO0oO:Lz2/v5;

    invoke-virtual {v0, p0, p1}, Lz2/v5;->OooO0Oo(Landroid/app/Activity;Lz2/u5$OooO00o;)V

    return-void
.end method

.method public static OooO0O0(Lz2/u5$OooO00o;)V
    .locals 1

    sget-object v0, Lz2/v5;->OooO0oO:Lz2/v5;

    invoke-virtual {v0, p0}, Lz2/v5;->OooO0o0(Lz2/u5$OooO00o;)V

    return-void
.end method

.method public static OooO0OO(Lz2/u5$OooO0o;)V
    .locals 1

    sget-object v0, Lz2/v5;->OooO0oO:Lz2/v5;

    invoke-virtual {v0, p0}, Lz2/v5;->OooO0oO(Lz2/u5$OooO0o;)V

    return-void
.end method

.method public static OooO0Oo(F)I
    .locals 0

    invoke-static {p0}, Lz2/r5;->OooO0O0(F)I

    move-result p0

    return p0
.end method

.method public static OooO0o()V
    .locals 0

    invoke-static {}, Lz2/h5;->OooO()V

    return-void
.end method

.method public static OooO0o0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 0

    invoke-static {p0, p1}, Lz2/s5;->OooO00o(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static OooO0oO(Landroid/app/Activity;)V
    .locals 0

    invoke-static {p0}, Lcom/cyjh/common/util/toast/KeyboardUtils;->OooO0o(Landroid/app/Activity;)V

    return-void
.end method

.method public static varargs OooO0oo(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 0
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {p0, p1}, Lz2/s5;->OooO0OO(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static OooOO0()I
    .locals 1

    invoke-static {}, Lz2/q5;->OooO0Oo()I

    move-result v0

    return v0
.end method

.method public static OooOO0O()Landroid/app/Application;
    .locals 1

    sget-object v0, Lz2/v5;->OooO0oO:Lz2/v5;

    invoke-virtual {v0}, Lz2/v5;->OooOOOO()Landroid/app/Application;

    move-result-object v0

    return-object v0
.end method

.method public static OooOO0o()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lz2/o5;->OooO0O0()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static OooOOO(Ljava/lang/String;Z)Landroid/content/Intent;
    .locals 0

    invoke-static {p0, p1}, Lz2/l5;->OooO0O0(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static OooOOO0()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lz2/o5;->OooO0o()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static OooOOOO(Ljava/lang/String;)Landroid/content/Intent;
    .locals 0

    invoke-static {p0}, Lz2/l5;->OooO0OO(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static OooOOOo(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lz2/h5;->Oooo0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static OooOOo()Lz2/p5;
    .locals 1

    const-string v0, "Utils"

    invoke-static {v0}, Lz2/p5;->OooOO0O(Ljava/lang/String;)Lz2/p5;

    move-result-object v0

    return-object v0
.end method

.method public static OooOOo0()I
    .locals 1

    invoke-static {}, Lz2/k5;->OooO00o()I

    move-result v0

    return v0
.end method

.method public static OooOOoo()I
    .locals 1

    invoke-static {}, Lz2/k5;->OooO0O0()I

    move-result v0

    return v0
.end method

.method public static OooOo(Landroid/app/Activity;)Z
    .locals 0

    invoke-static {p0}, Lz2/h5;->OoooO0(Landroid/app/Activity;)Z

    move-result p0

    return p0
.end method

.method public static varargs OooOo0(I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 0
    .param p0    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    invoke-static {p0, p1}, Lz2/s5;->OooO0o0(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static OooOo00(I)Ljava/lang/String;
    .locals 0
    .param p0    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    invoke-static {p0}, Lz2/s5;->OooO0Oo(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static OooOo0O()Landroid/app/Activity;
    .locals 1

    sget-object v0, Lz2/v5;->OooO0oO:Lz2/v5;

    invoke-virtual {v0}, Lz2/v5;->OooOOOo()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public static OooOo0o(Landroid/app/Application;)V
    .locals 1

    sget-object v0, Lz2/v5;->OooO0oO:Lz2/v5;

    invoke-virtual {v0, p0}, Lz2/v5;->OooOOo0(Landroid/app/Application;)V

    return-void
.end method

.method public static OooOoO()Z
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x17
    .end annotation

    invoke-static {}, Lz2/n5;->OooO00o()Z

    move-result v0

    return v0
.end method

.method public static OooOoO0()Z
    .locals 1

    sget-object v0, Lz2/v5;->OooO0oO:Lz2/v5;

    invoke-virtual {v0}, Lz2/v5;->OooOOo()Z

    move-result v0

    return v0
.end method

.method public static OooOoOO(Landroid/content/Intent;)Z
    .locals 0

    invoke-static {p0}, Lz2/l5;->OooO0Oo(Landroid/content/Intent;)Z

    move-result p0

    return p0
.end method

.method public static OooOoo(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lz2/s5;->OooO0oo(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static OooOoo0()Z
    .locals 1

    invoke-static {}, Lz2/x5;->OooO0O0()Z

    move-result v0

    return v0
.end method

.method public static OooOooO(I)Landroid/view/View;
    .locals 0
    .param p0    # I
        .annotation build Landroidx/annotation/LayoutRes;
        .end annotation
    .end param

    invoke-static {p0}, Lz2/x5;->OooO0OO(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static OooOooo()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Runnable;

    invoke-static {}, Lz2/i5;->OooOO0O()Ljava/lang/Runnable;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lz2/w5;->Oooo000([Ljava/lang/Runnable;)V

    return-void
.end method

.method public static Oooo0(Lz2/u5$OooO00o;)V
    .locals 1

    sget-object v0, Lz2/v5;->OooO0oO:Lz2/v5;

    invoke-virtual {v0, p0}, Lz2/v5;->OooOo0o(Lz2/u5$OooO00o;)V

    return-void
.end method

.method private static varargs Oooo000([Ljava/lang/Runnable;)V
    .locals 4

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    invoke-static {}, Lcom/cyjh/common/util/toast/ThreadUtils;->OooooO0()Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static Oooo00O(Landroid/app/Activity;)V
    .locals 1

    sget-object v0, Lz2/v5;->OooO0oO:Lz2/v5;

    invoke-virtual {v0, p0}, Lz2/v5;->OooOo0(Landroid/app/Activity;)V

    return-void
.end method

.method public static Oooo00o(Landroid/app/Activity;Lz2/u5$OooO00o;)V
    .locals 1

    sget-object v0, Lz2/v5;->OooO0oO:Lz2/v5;

    invoke-virtual {v0, p0, p1}, Lz2/v5;->OooOo0O(Landroid/app/Activity;Lz2/u5$OooO00o;)V

    return-void
.end method

.method public static Oooo0O0(Lz2/u5$OooO0o;)V
    .locals 1

    sget-object v0, Lz2/v5;->OooO0oO:Lz2/v5;

    invoke-virtual {v0, p0}, Lz2/v5;->OooOoO0(Lz2/u5$OooO0o;)V

    return-void
.end method

.method public static Oooo0OO(Ljava/lang/Runnable;)V
    .locals 0

    invoke-static {p0}, Lcom/cyjh/common/util/toast/ThreadUtils;->o00oO0o(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static Oooo0o(Landroid/app/Application;)V
    .locals 1

    sget-object v0, Lz2/v5;->OooO0oO:Lz2/v5;

    invoke-virtual {v0, p0}, Lz2/v5;->OooOoo0(Landroid/app/Application;)V

    return-void
.end method

.method public static Oooo0o0(Ljava/lang/Runnable;J)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/cyjh/common/util/toast/ThreadUtils;->o00oO0O(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public static Oooo0oO(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 0

    invoke-static {p0}, Lcom/cyjh/common/util/toast/ImageUtils;->o00000oO(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method
