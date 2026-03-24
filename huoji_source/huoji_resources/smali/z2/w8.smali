.class public Lz2/w8;
.super Ljava/lang/Object;
.source ""


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "u can\'t instantiate me..."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static OooO(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;Lz2/o0O0o000;)V
    .locals 2

    invoke-static {p0}, Lz2/w8;->OooO0Oo(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lz2/p1;

    invoke-direct {v0}, Lz2/p1;-><init>()V

    const v1, 0x7f080155

    invoke-virtual {v0, v1}, Lz2/i1;->o0OOO0o(I)Lz2/i1;

    move-result-object v0

    check-cast v0, Lz2/p1;

    invoke-virtual {v0, v1}, Lz2/i1;->OooOoO0(I)Lz2/i1;

    move-result-object v0

    check-cast v0, Lz2/p1;

    sget-object v1, Lcom/bumptech/glide/Priority;->NORMAL:Lcom/bumptech/glide/Priority;

    invoke-virtual {v0, v1}, Lz2/i1;->o0OO00O(Lcom/bumptech/glide/Priority;)Lz2/i1;

    move-result-object v0

    check-cast v0, Lz2/p1;

    invoke-virtual {v0, p3}, Lz2/i1;->o00000Oo(Lz2/o0O0o000;)Lz2/i1;

    move-result-object p3

    check-cast p3, Lz2/p1;

    invoke-static {p0}, Lz2/o00Oo00;->OooOooO(Landroid/content/Context;)Lz2/o0;

    move-result-object p0

    invoke-virtual {p0, p1}, Lz2/o0;->OooOooo(Ljava/lang/String;)Lz2/o0O0o;

    move-result-object p0

    invoke-virtual {p0, p3}, Lz2/o0O0o;->o0000O0O(Lz2/i1;)Lz2/o0O0o;

    move-result-object p0

    invoke-virtual {p0, p2}, Lz2/o0O0o;->o0000oOO(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    :cond_0
    return-void
.end method

.method public static OooO00o(Landroid/content/Context;Ljava/lang/String;Lz2/p1;Lz2/k7;)V
    .locals 1

    invoke-static {p0}, Lz2/w8;->OooO0Oo(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lz2/w8$OooO00o;

    invoke-direct {v0, p3}, Lz2/w8$OooO00o;-><init>(Lz2/k7;)V

    invoke-static {p0}, Lz2/o00Oo00;->OooOooO(Landroid/content/Context;)Lz2/o0;

    move-result-object p0

    invoke-virtual {p0}, Lz2/o0;->OooOOO0()Lz2/o0O0o;

    move-result-object p0

    invoke-virtual {p0, p1}, Lz2/o0O0o;->o000O0O(Ljava/lang/String;)Lz2/o0O0o;

    move-result-object p0

    invoke-virtual {p0, p2}, Lz2/o0O0o;->o0000O0O(Lz2/i1;)Lz2/o0O0o;

    move-result-object p0

    invoke-virtual {p0, v0}, Lz2/o0O0o;->o0000o0o(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    :cond_0
    return-void
.end method

.method public static OooO0O0()Lz2/p1;
    .locals 2

    new-instance v0, Lz2/p1;

    invoke-direct {v0}, Lz2/p1;-><init>()V

    const v1, 0x7f080155

    invoke-virtual {v0, v1}, Lz2/i1;->o0OOO0o(I)Lz2/i1;

    move-result-object v0

    check-cast v0, Lz2/p1;

    invoke-virtual {v0, v1}, Lz2/i1;->OooOoO0(I)Lz2/i1;

    move-result-object v0

    check-cast v0, Lz2/p1;

    sget-object v1, Lcom/bumptech/glide/Priority;->NORMAL:Lcom/bumptech/glide/Priority;

    invoke-virtual {v0, v1}, Lz2/i1;->o0OO00O(Lcom/bumptech/glide/Priority;)Lz2/i1;

    move-result-object v0

    check-cast v0, Lz2/p1;

    return-object v0
.end method

.method public static OooO0OO()Lz2/p1;
    .locals 2

    new-instance v0, Lz2/p1;

    invoke-direct {v0}, Lz2/p1;-><init>()V

    invoke-virtual {v0}, Lz2/i1;->OooOOO0()Lz2/i1;

    move-result-object v0

    check-cast v0, Lz2/p1;

    const v1, 0x7f080155

    invoke-virtual {v0, v1}, Lz2/i1;->o0OOO0o(I)Lz2/i1;

    move-result-object v0

    check-cast v0, Lz2/p1;

    invoke-virtual {v0, v1}, Lz2/i1;->OooOoO0(I)Lz2/i1;

    move-result-object v0

    check-cast v0, Lz2/p1;

    sget-object v1, Lcom/bumptech/glide/Priority;->NORMAL:Lcom/bumptech/glide/Priority;

    invoke-virtual {v0, v1}, Lz2/i1;->o0OO00O(Lcom/bumptech/glide/Priority;)Lz2/i1;

    move-result-object v0

    check-cast v0, Lz2/p1;

    return-object v0
.end method

.method public static OooO0Oo(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p0, Landroid/app/Activity;

    if-eqz v1, :cond_3

    check-cast p0, Landroid/app/Activity;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_1
    return v0

    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result p0

    if-eqz p0, :cond_3

    return v0

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public static OooO0o(Landroid/content/Context;ILandroid/widget/ImageView;Lz2/p1;)V
    .locals 1

    invoke-static {p0}, Lz2/w8;->OooO0Oo(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lz2/o00Oo00;->OooOooO(Landroid/content/Context;)Lz2/o0;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lz2/o0;->OooOoo(Ljava/lang/Integer;)Lz2/o0O0o;

    move-result-object p0

    invoke-virtual {p0, p3}, Lz2/o0O0o;->o0000O0O(Lz2/i1;)Lz2/o0O0o;

    move-result-object p0

    invoke-virtual {p0, p2}, Lz2/o0O0o;->o0000oOO(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    :cond_0
    return-void
.end method

.method public static OooO0o0(Landroid/content/Context;ILandroid/widget/ImageView;)V
    .locals 1

    invoke-static {p0}, Lz2/w8;->OooO0Oo(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lz2/o00Oo00;->OooOooO(Landroid/content/Context;)Lz2/o0;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lz2/o0;->OooOoo(Ljava/lang/Integer;)Lz2/o0O0o;

    move-result-object p0

    invoke-static {}, Lz2/w8;->OooO0O0()Lz2/p1;

    move-result-object p1

    invoke-virtual {p0, p1}, Lz2/o0O0o;->o0000O0O(Lz2/i1;)Lz2/o0O0o;

    move-result-object p0

    invoke-virtual {p0, p2}, Lz2/o0O0o;->o0000oOO(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    :cond_0
    return-void
.end method

.method public static OooO0oO(Landroid/content/Context;Ljava/io/File;Landroid/widget/ImageView;)V
    .locals 1

    invoke-static {p0}, Lz2/w8;->OooO0Oo(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lz2/o00Oo00;->OooOooO(Landroid/content/Context;)Lz2/o0;

    move-result-object p0

    invoke-virtual {p0, p1}, Lz2/o0;->OooOoo0(Ljava/io/File;)Lz2/o0O0o;

    move-result-object p0

    invoke-static {}, Lz2/w8;->OooO0O0()Lz2/p1;

    move-result-object p1

    invoke-virtual {p0, p1}, Lz2/o0O0o;->o0000O0O(Lz2/i1;)Lz2/o0O0o;

    move-result-object p0

    invoke-virtual {p0, p2}, Lz2/o0O0o;->o0000oOO(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    :cond_0
    return-void
.end method

.method public static OooO0oo(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 1

    invoke-static {p0}, Lz2/w8;->OooO0Oo(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lz2/o00Oo00;->OooOooO(Landroid/content/Context;)Lz2/o0;

    move-result-object p0

    invoke-virtual {p0, p1}, Lz2/o0;->OooOooo(Ljava/lang/String;)Lz2/o0O0o;

    move-result-object p0

    invoke-static {}, Lz2/w8;->OooO0O0()Lz2/p1;

    move-result-object p1

    invoke-virtual {p0, p1}, Lz2/o0O0o;->o0000O0O(Lz2/i1;)Lz2/o0O0o;

    move-result-object p0

    invoke-virtual {p0, p2}, Lz2/o0O0o;->o0000oOO(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    :cond_0
    return-void
.end method

.method public static OooOO0(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;Lz2/p1;)V
    .locals 1

    invoke-static {p0}, Lz2/w8;->OooO0Oo(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lz2/o00Oo00;->OooOooO(Landroid/content/Context;)Lz2/o0;

    move-result-object p0

    invoke-virtual {p0, p1}, Lz2/o0;->OooOooo(Ljava/lang/String;)Lz2/o0O0o;

    move-result-object p0

    invoke-virtual {p0, p3}, Lz2/o0O0o;->o0000O0O(Lz2/i1;)Lz2/o0O0o;

    move-result-object p0

    invoke-virtual {p0, p2}, Lz2/o0O0o;->o0000oOO(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    :cond_0
    return-void
.end method

.method public static OooOO0O(Landroid/content/Context;[BLandroid/widget/ImageView;)V
    .locals 2

    invoke-static {p0}, Lz2/w8;->OooO0Oo(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lz2/p1;

    invoke-direct {v0}, Lz2/p1;-><init>()V

    const v1, 0x7f080155

    invoke-virtual {v0, v1}, Lz2/i1;->o0OOO0o(I)Lz2/i1;

    move-result-object v0

    check-cast v0, Lz2/p1;

    invoke-virtual {v0, v1}, Lz2/i1;->OooOoO0(I)Lz2/i1;

    move-result-object v0

    check-cast v0, Lz2/p1;

    sget-object v1, Lcom/bumptech/glide/Priority;->HIGH:Lcom/bumptech/glide/Priority;

    invoke-virtual {v0, v1}, Lz2/i1;->o0OO00O(Lcom/bumptech/glide/Priority;)Lz2/i1;

    move-result-object v0

    check-cast v0, Lz2/p1;

    sget-object v1, Lz2/o0oo0000;->OooO00o:Lz2/o0oo0000;

    invoke-virtual {v0, v1}, Lz2/i1;->OooOOoo(Lz2/o0oo0000;)Lz2/i1;

    move-result-object v0

    check-cast v0, Lz2/p1;

    invoke-static {p0}, Lz2/o00Oo00;->OooOooO(Landroid/content/Context;)Lz2/o0;

    move-result-object p0

    invoke-virtual {p0, p1}, Lz2/o0;->Oooo00O([B)Lz2/o0O0o;

    move-result-object p0

    invoke-virtual {p0, v0}, Lz2/o0O0o;->o0000O0O(Lz2/i1;)Lz2/o0O0o;

    move-result-object p0

    invoke-virtual {p0, p2}, Lz2/o0O0o;->o0000oOO(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    :cond_0
    return-void
.end method

.method public static OooOO0o(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 1

    invoke-static {p0}, Lz2/w8;->OooO0Oo(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lz2/o00Oo00;->OooOooO(Landroid/content/Context;)Lz2/o0;

    move-result-object p0

    invoke-virtual {p0}, Lz2/o0;->OooOOOo()Lz2/o0O0o;

    move-result-object p0

    invoke-virtual {p0, p1}, Lz2/o0O0o;->o000O0O(Ljava/lang/String;)Lz2/o0O0o;

    move-result-object p0

    invoke-virtual {p0, p2}, Lz2/o0O0o;->o0000oOO(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    :cond_0
    return-void
.end method

.method public static OooOOO(Landroid/content/Context;Ljava/lang/String;Lz2/o1;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lz2/o1<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0}, Lz2/w8;->OooO0Oo(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lz2/o00Oo00;->OooOooO(Landroid/content/Context;)Lz2/o0;

    move-result-object p0

    invoke-virtual {p0}, Lz2/o0;->OooOo00()Lz2/o0O0o;

    move-result-object p0

    invoke-virtual {p0, p1}, Lz2/o0O0o;->o000O0O(Ljava/lang/String;)Lz2/o0O0o;

    new-instance p1, Lz2/w8$OooO0O0;

    invoke-direct {p1, p2}, Lz2/w8$OooO0O0;-><init>(Lz2/o1;)V

    invoke-virtual {p0, p1}, Lz2/o0O0o;->o0000oo0(Lz2/o1;)Lz2/o0O0o;

    invoke-virtual {p0}, Lz2/o0O0o;->o000O0Oo()Lcom/bumptech/glide/request/target/Target;

    :cond_0
    return-void
.end method

.method public static OooOOO0(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;Lz2/p1;)V
    .locals 1

    invoke-static {p0}, Lz2/w8;->OooO0Oo(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lz2/o00Oo00;->OooOooO(Landroid/content/Context;)Lz2/o0;

    move-result-object p0

    invoke-virtual {p0}, Lz2/o0;->OooOOOo()Lz2/o0O0o;

    move-result-object p0

    invoke-virtual {p0, p1}, Lz2/o0O0o;->o000O0O(Ljava/lang/String;)Lz2/o0O0o;

    move-result-object p0

    invoke-virtual {p0, p3}, Lz2/o0O0o;->o0000O0O(Lz2/i1;)Lz2/o0O0o;

    move-result-object p0

    invoke-virtual {p0, p2}, Lz2/o0O0o;->o0000oOO(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    :cond_0
    return-void
.end method
