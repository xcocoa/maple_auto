.class public abstract Lz2/se0$OooO00o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/se0$OooO0OO;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/se0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "OooO00o"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OooO00o(Lz2/qe0;)V
    .locals 0

    return-void
.end method

.method public OooO0O0(Lz2/qe0;Landroid/view/View;III)V
    .locals 8

    invoke-virtual {p0, p1}, Lz2/se0$OooO00o;->OooO0Oo(Lz2/qe0;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lz2/qe0;->OooOO0o(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    const-string p1, "PopupCompatManager"

    const-string p2, "please make sure that context is instance of activity"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-virtual {p0, p1, v0}, Lz2/se0$OooO00o;->OooO0o(Lz2/qe0;Landroid/app/Activity;)V

    move-object v1, p0

    move-object v2, v0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-virtual/range {v1 .. v7}, Lz2/se0$OooO00o;->OooO0oo(Landroid/app/Activity;Lz2/qe0;Landroid/view/View;III)V

    invoke-virtual {p0, p1, v0}, Lz2/se0$OooO00o;->OooO0o0(Lz2/qe0;Landroid/app/Activity;)V

    return-void
.end method

.method public OooO0OO(Lz2/qe0;Landroid/view/View;III)V
    .locals 8

    invoke-virtual {p0, p1}, Lz2/se0$OooO00o;->OooO0Oo(Lz2/qe0;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lz2/qe0;->OooOO0o(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    const-string p1, "PopupCompatManager"

    const-string p2, "please make sure that context is instance of activity"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-virtual {p0, p1, v0}, Lz2/se0$OooO00o;->OooO0o(Lz2/qe0;Landroid/app/Activity;)V

    move-object v1, p0

    move-object v2, v0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-virtual/range {v1 .. v7}, Lz2/se0$OooO00o;->OooO0oO(Landroid/app/Activity;Lz2/qe0;Landroid/view/View;III)V

    invoke-virtual {p0, p1, v0}, Lz2/se0$OooO00o;->OooO0o0(Lz2/qe0;Landroid/app/Activity;)V

    return-void
.end method

.method public OooO0Oo(Lz2/qe0;)Z
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lz2/qe0;->OooO0OO()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public OooO0o(Lz2/qe0;Landroid/app/Activity;)V
    .locals 0

    invoke-static {p2}, Lz2/se0;->OooO00o(Landroid/app/Activity;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lz2/qe0;->OooO0oo()V

    :cond_0
    return-void
.end method

.method public OooO0o0(Lz2/qe0;Landroid/app/Activity;)V
    .locals 1

    invoke-virtual {p1}, Lz2/qe0;->OooOO0()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object p2

    const/16 v0, 0x1706

    invoke-virtual {p2, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    invoke-virtual {p1}, Lz2/qe0;->OooOO0O()V

    :cond_0
    return-void
.end method

.method public abstract OooO0oO(Landroid/app/Activity;Lz2/qe0;Landroid/view/View;III)V
.end method

.method public abstract OooO0oo(Landroid/app/Activity;Lz2/qe0;Landroid/view/View;III)V
.end method
