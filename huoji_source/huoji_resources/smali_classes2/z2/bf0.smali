.class public Lz2/bf0;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz2/bf0$OooO00o;
    }
.end annotation


# instance fields
.field private OooO00o:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private OooO0O0:Lz2/cf0;

.field private OooO0OO:Lz2/bf0$OooO00o;

.field public OooO0Oo:I

.field public OooO0o0:I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x2

    iput v0, p0, Lz2/bf0;->OooO0Oo:I

    iput v0, p0, Lz2/bf0;->OooO0o0:I

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lz2/bf0;->OooO00o:Ljava/lang/ref/WeakReference;

    invoke-static {}, Lz2/cf0;->OooOOo0()Lz2/cf0;

    move-result-object p1

    iput-object p1, p0, Lz2/bf0;->OooO0O0:Lz2/cf0;

    return-void
.end method

.method private OooO0o0()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lz2/bf0;->OooO00o:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    :goto_0
    return-object v0
.end method

.method public static OooOOO(Landroid/content/Context;)Lz2/bf0;
    .locals 1

    new-instance v0, Lz2/bf0;

    invoke-direct {v0, p0}, Lz2/bf0;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public OooO()Lz2/sf0;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lz2/bf0;->OooOO0o(Landroid/view/View;)Lz2/sf0;

    move-result-object v0

    return-object v0
.end method

.method public OooO00o()Lz2/sf0;
    .locals 7

    new-instance v6, Lz2/sf0;

    invoke-direct {p0}, Lz2/bf0;->OooO0o0()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lz2/bf0;->OooO0O0:Lz2/cf0;

    iget-object v3, p0, Lz2/bf0;->OooO0OO:Lz2/bf0$OooO00o;

    iget v4, p0, Lz2/bf0;->OooO0Oo:I

    iget v5, p0, Lz2/bf0;->OooO0o0:I

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lz2/sf0;-><init>(Landroid/content/Context;Lz2/cf0;Lz2/bf0$OooO00o;II)V

    return-object v6
.end method

.method public OooO0O0(Lz2/cf0;)Lz2/bf0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Lz2/cf0;",
            ">(TC;)",
            "Lz2/bf0;"
        }
    .end annotation

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    iget-object v0, p0, Lz2/bf0;->OooO0O0:Lz2/cf0;

    if-eq p1, v0, :cond_1

    iget v0, v0, Lz2/cf0;->OoooOoO:I

    invoke-virtual {p1, v0}, Lz2/cf0;->OooOO0o(I)Lz2/cf0;

    :cond_1
    iput-object p1, p0, Lz2/bf0;->OooO0O0:Lz2/cf0;

    return-object p0
.end method

.method public OooO0OO(I)Lz2/bf0;
    .locals 1

    iget-object v0, p0, Lz2/bf0;->OooO0O0:Lz2/cf0;

    invoke-virtual {v0, p1}, Lz2/cf0;->OooOO0o(I)Lz2/cf0;

    return-object p0
.end method

.method public final OooO0Oo()Lz2/cf0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Lz2/cf0;",
            ">()TC;"
        }
    .end annotation

    iget-object v0, p0, Lz2/bf0;->OooO0O0:Lz2/cf0;

    return-object v0
.end method

.method public OooO0o()Lz2/bf0$OooO00o;
    .locals 1

    iget-object v0, p0, Lz2/bf0;->OooO0OO:Lz2/bf0$OooO00o;

    return-object v0
.end method

.method public OooO0oO(I)Lz2/bf0;
    .locals 0

    iput p1, p0, Lz2/bf0;->OooO0o0:I

    return-object p0
.end method

.method public OooO0oo(Lz2/bf0$OooO00o;)Lz2/bf0;
    .locals 0

    iput-object p1, p0, Lz2/bf0;->OooO0OO:Lz2/bf0$OooO00o;

    return-object p0
.end method

.method public OooOO0(I)Lz2/sf0;
    .locals 1

    invoke-virtual {p0}, Lz2/bf0;->OooO00o()Lz2/sf0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lrazerdp/basepopup/BasePopupWindow;->o000O0Oo(I)V

    return-object v0
.end method

.method public OooOO0O(II)Lz2/sf0;
    .locals 1

    invoke-virtual {p0}, Lz2/bf0;->OooO00o()Lz2/sf0;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lrazerdp/basepopup/BasePopupWindow;->o000OO0O(II)V

    return-object v0
.end method

.method public OooOO0o(Landroid/view/View;)Lz2/sf0;
    .locals 1

    invoke-virtual {p0}, Lz2/bf0;->OooO00o()Lz2/sf0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lrazerdp/basepopup/BasePopupWindow;->o000O0O0(Landroid/view/View;)V

    return-object v0
.end method

.method public OooOOO0(I)Lz2/bf0;
    .locals 0

    iput p1, p0, Lz2/bf0;->OooO0Oo:I

    return-object p0
.end method

.method public OooOOOO()Lz2/bf0;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, -0x2

    invoke-virtual {p0, v0}, Lz2/bf0;->OooOOO0(I)Lz2/bf0;

    move-result-object v1

    invoke-virtual {v1, v0}, Lz2/bf0;->OooO0oO(I)Lz2/bf0;

    move-result-object v0

    return-object v0
.end method
