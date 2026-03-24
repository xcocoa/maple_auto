.class public Lz2/sf0;
.super Lrazerdp/basepopup/BasePopupWindow;
.source ""


# instance fields
.field private o0ooOO0:Lz2/cf0;

.field private o0ooOOo:Lz2/bf0$OooO00o;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lrazerdp/basepopup/BasePopupWindow;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lrazerdp/basepopup/BasePopupWindow;-><init>(Landroid/content/Context;II)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;IIZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lrazerdp/basepopup/BasePopupWindow;-><init>(Landroid/content/Context;IIZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lz2/cf0;Lz2/bf0$OooO00o;II)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p4, p5, v0}, Lrazerdp/basepopup/BasePopupWindow;-><init>(Landroid/content/Context;IIZ)V

    iput-object p2, p0, Lz2/sf0;->o0ooOO0:Lz2/cf0;

    iput-object p3, p0, Lz2/sf0;->o0ooOOo:Lz2/bf0$OooO00o;

    const-string p1, "QuickPopupConfig must be not null!"

    invoke-static {p2, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0}, Lrazerdp/basepopup/BasePopupWindow;->OooOoO0()V

    iget-object p1, p0, Lz2/sf0;->o0ooOO0:Lz2/cf0;

    invoke-virtual {p0, p1}, Lz2/sf0;->o000OOo0(Lz2/cf0;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lrazerdp/basepopup/BasePopupWindow;-><init>(Landroid/content/Context;Z)V

    return-void
.end method

.method private o000OOO()V
    .locals 4

    iget-object v0, p0, Lz2/sf0;->o0ooOO0:Lz2/cf0;

    invoke-virtual {v0}, Lz2/cf0;->OooOoO()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    invoke-virtual {p0, v2}, Lrazerdp/basepopup/BasePopupWindow;->OooOooo(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v3, Lz2/sf0$OooO00o;

    invoke-direct {v3, p0, v1}, Lz2/sf0$OooO00o;-><init>(Lz2/sf0;Landroid/util/Pair;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_2
    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public OooO00o()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lz2/sf0;->o0ooOO0:Lz2/cf0;

    invoke-virtual {v0}, Lz2/cf0;->OooOo00()I

    move-result v0

    invoke-virtual {p0, v0}, Lrazerdp/basepopup/BasePopupWindow;->OooOo(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public o000OOo0(Lz2/cf0;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Lz2/cf0;",
            ">(TC;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lz2/cf0;->Oooo00o()Lz2/gf0;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lz2/cf0;->Oooo00o()Lz2/gf0;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrazerdp/basepopup/BasePopupWindow;->o0000O0(Lz2/gf0;)Lrazerdp/basepopup/BasePopupWindow;

    goto :goto_1

    :cond_0
    iget v0, p1, Lz2/cf0;->OooooOO:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lz2/cf0;->Oooo00O()Lrazerdp/basepopup/BasePopupWindow$OooOOO;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Lrazerdp/basepopup/BasePopupWindow;->o0000oO(ZLrazerdp/basepopup/BasePopupWindow$OooOOO;)Lrazerdp/basepopup/BasePopupWindow;

    :goto_1
    iget v0, p1, Lz2/cf0;->OooooOO:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {p0, v0}, Lrazerdp/basepopup/BasePopupWindow;->o000(Z)Lrazerdp/basepopup/BasePopupWindow;

    invoke-direct {p0}, Lz2/sf0;->o000OOO()V

    invoke-virtual {p1}, Lz2/cf0;->OooOooo()I

    move-result v0

    invoke-virtual {p0, v0}, Lrazerdp/basepopup/BasePopupWindow;->o0000o0o(I)Lrazerdp/basepopup/BasePopupWindow;

    invoke-virtual {p1}, Lz2/cf0;->Oooo000()I

    move-result v0

    invoke-virtual {p0, v0}, Lrazerdp/basepopup/BasePopupWindow;->o0000o(I)Lrazerdp/basepopup/BasePopupWindow;

    iget v0, p1, Lz2/cf0;->OooooOO:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    :goto_3
    invoke-virtual {p0, v0}, Lrazerdp/basepopup/BasePopupWindow;->o0000O0O(Z)Lrazerdp/basepopup/BasePopupWindow;

    iget v0, p1, Lz2/cf0;->OooooOO:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_4

    :cond_4
    const/4 v0, 0x0

    :goto_4
    invoke-virtual {p0, v0}, Lrazerdp/basepopup/BasePopupWindow;->o000OO(Z)Lrazerdp/basepopup/BasePopupWindow;

    iget v0, p1, Lz2/cf0;->OooooOO:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    goto :goto_5

    :cond_5
    const/4 v0, 0x0

    :goto_5
    invoke-virtual {p0, v0}, Lrazerdp/basepopup/BasePopupWindow;->o0000oOo(Z)Lrazerdp/basepopup/BasePopupWindow;

    iget v0, p1, Lz2/cf0;->OooooOO:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_6

    :cond_6
    const/4 v0, 0x0

    :goto_6
    invoke-virtual {p0, v0}, Lrazerdp/basepopup/BasePopupWindow;->o0000oo0(Z)Lrazerdp/basepopup/BasePopupWindow;

    invoke-virtual {p1}, Lz2/cf0;->OooOo()I

    move-result v0

    invoke-virtual {p0, v0}, Lrazerdp/basepopup/BasePopupWindow;->o000O000(I)Lrazerdp/basepopup/BasePopupWindow;

    iget v0, p1, Lz2/cf0;->OooooOO:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_7

    :cond_7
    const/4 v0, 0x0

    :goto_7
    invoke-virtual {p0, v0}, Lrazerdp/basepopup/BasePopupWindow;->o00000(Z)Lrazerdp/basepopup/BasePopupWindow;

    invoke-virtual {p1}, Lz2/cf0;->OooOOo()I

    move-result v0

    invoke-virtual {p0, v0}, Lrazerdp/basepopup/BasePopupWindow;->o00000O0(I)Lrazerdp/basepopup/BasePopupWindow;

    iget v0, p1, Lz2/cf0;->OooooOO:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_8

    :cond_8
    const/4 v0, 0x0

    :goto_8
    invoke-virtual {p0, v0}, Lrazerdp/basepopup/BasePopupWindow;->o00000Oo(Z)Lrazerdp/basepopup/BasePopupWindow;

    iget v0, p1, Lz2/cf0;->OooooOO:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_9

    :cond_9
    const/4 v0, 0x0

    :goto_9
    invoke-virtual {p0, v0}, Lrazerdp/basepopup/BasePopupWindow;->o000O0o(Z)Lrazerdp/basepopup/BasePopupWindow;

    invoke-virtual {p1}, Lz2/cf0;->OooOo0o()Lrazerdp/basepopup/BasePopupWindow$OooOOOO;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrazerdp/basepopup/BasePopupWindow;->o0000oOO(Lrazerdp/basepopup/BasePopupWindow$OooOOOO;)Lrazerdp/basepopup/BasePopupWindow;

    invoke-virtual {p1}, Lz2/cf0;->OooOOoo()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrazerdp/basepopup/BasePopupWindow;->o00000oo(Landroid/graphics/drawable/Drawable;)Lrazerdp/basepopup/BasePopupWindow;

    invoke-virtual {p1}, Lz2/cf0;->OooOoO0()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrazerdp/basepopup/BasePopupWindow;->o00Ooo(Landroid/view/View;)Lrazerdp/basepopup/BasePopupWindow;

    invoke-virtual {p1}, Lz2/cf0;->OooOooO()I

    move-result v0

    invoke-virtual {p0, v0}, Lrazerdp/basepopup/BasePopupWindow;->o0000o0O(I)Lrazerdp/basepopup/BasePopupWindow;

    invoke-virtual {p1}, Lz2/cf0;->OooOoo0()I

    move-result v0

    invoke-virtual {p0, v0}, Lrazerdp/basepopup/BasePopupWindow;->o0000OoO(I)Lrazerdp/basepopup/BasePopupWindow;

    invoke-virtual {p1}, Lz2/cf0;->OooOoo()I

    move-result v0

    invoke-virtual {p0, v0}, Lrazerdp/basepopup/BasePopupWindow;->o0000o0(I)Lrazerdp/basepopup/BasePopupWindow;

    invoke-virtual {p1}, Lz2/cf0;->OooOoOO()I

    move-result v0

    invoke-virtual {p0, v0}, Lrazerdp/basepopup/BasePopupWindow;->o0000Oo(I)Lrazerdp/basepopup/BasePopupWindow;

    iget v0, p1, Lz2/cf0;->OooooOO:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_a

    const/4 v1, 0x1

    :cond_a
    invoke-virtual {p0, v1}, Lrazerdp/basepopup/BasePopupWindow;->o0000Oo0(Z)Lrazerdp/basepopup/BasePopupWindow;

    iget-object v0, p0, Lz2/sf0;->o0ooOOo:Lz2/bf0$OooO00o;

    if-eqz v0, :cond_b

    invoke-interface {v0, p0, p1}, Lz2/bf0$OooO00o;->OooO00o(Lz2/sf0;Lz2/cf0;)V

    :cond_b
    return-void
.end method

.method public o000OOoO()Lz2/cf0;
    .locals 1

    iget-object v0, p0, Lz2/sf0;->o0ooOO0:Lz2/cf0;

    return-object v0
.end method

.method public o00oO0O()Landroid/animation/Animator;
    .locals 1

    iget-object v0, p0, Lz2/sf0;->o0ooOO0:Lz2/cf0;

    invoke-virtual {v0}, Lz2/cf0;->OooOo0O()Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method public o00oO0o()Landroid/view/animation/Animation;
    .locals 1

    iget-object v0, p0, Lz2/sf0;->o0ooOO0:Lz2/cf0;

    invoke-virtual {v0}, Lz2/cf0;->OooOo0()Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method public o0ooOO0()Landroid/view/animation/Animation;
    .locals 1

    iget-object v0, p0, Lz2/sf0;->o0ooOO0:Lz2/cf0;

    invoke-virtual {v0}, Lz2/cf0;->Oooo0()Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method public o0ooOOo()Landroid/animation/Animator;
    .locals 1

    iget-object v0, p0, Lz2/sf0;->o0ooOO0:Lz2/cf0;

    invoke-virtual {v0}, Lz2/cf0;->Oooo0O0()Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method
