.class public Lz2/gf0;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final OooO:F = 0.15f

.field private static final OooO0oo:F = 10.0f

.field private static final OooOO0:J = 0x1f4L

.field private static final OooOO0O:Z = true


# instance fields
.field private OooO00o:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private OooO0O0:F

.field private OooO0OO:F

.field private OooO0Oo:J

.field private OooO0o:Z

.field private OooO0o0:J

.field private OooO0oO:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lz2/gf0;->OooO0O0:F

    const v0, 0x3e19999a    # 0.15f

    iput v0, p0, Lz2/gf0;->OooO0OO:F

    const-wide/16 v0, 0x1f4

    iput-wide v0, p0, Lz2/gf0;->OooO0Oo:J

    iput-wide v0, p0, Lz2/gf0;->OooO0o0:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lz2/gf0;->OooO0o:Z

    iput-boolean v0, p0, Lz2/gf0;->OooO0oO:Z

    return-void
.end method


# virtual methods
.method public OooO(Z)Lz2/gf0;
    .locals 0

    iput-boolean p1, p0, Lz2/gf0;->OooO0o:Z

    return-object p0
.end method

.method public OooO00o()J
    .locals 5

    iget-wide v0, p0, Lz2/gf0;->OooO0Oo:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    const-wide/16 v0, 0x1f4

    :cond_0
    return-wide v0
.end method

.method public OooO0O0()J
    .locals 5

    iget-wide v0, p0, Lz2/gf0;->OooO0o0:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    const-wide/16 v0, 0x1f4

    :cond_0
    return-wide v0
.end method

.method public OooO0OO()F
    .locals 1

    iget v0, p0, Lz2/gf0;->OooO0OO:F

    return v0
.end method

.method public OooO0Oo()F
    .locals 1

    iget v0, p0, Lz2/gf0;->OooO0O0:F

    return v0
.end method

.method public OooO0o()Z
    .locals 1

    invoke-virtual {p0}, Lz2/gf0;->OooO0o0()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public OooO0o0()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lz2/gf0;->OooO00o:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public OooO0oO()Z
    .locals 1

    iget-boolean v0, p0, Lz2/gf0;->OooO0o:Z

    return v0
.end method

.method public OooO0oo()Z
    .locals 1

    iget-boolean v0, p0, Lz2/gf0;->OooO0oO:Z

    return v0
.end method

.method public OooOO0(J)Lz2/gf0;
    .locals 0

    iput-wide p1, p0, Lz2/gf0;->OooO0Oo:J

    return-object p0
.end method

.method public OooOO0O(J)Lz2/gf0;
    .locals 0

    iput-wide p1, p0, Lz2/gf0;->OooO0o0:J

    return-object p0
.end method

.method public OooOO0o(F)Lz2/gf0;
    .locals 0

    iput p1, p0, Lz2/gf0;->OooO0OO:F

    return-object p0
.end method

.method public OooOOO(Landroid/view/View;)Lz2/gf0;
    .locals 4

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lz2/gf0;->OooO00o:Ljava/lang/ref/WeakReference;

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    const-string v2, "com.android.internal.policy.DecorView"

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v3, 0x1020002

    if-ne v1, v3, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    move v0, v1

    :cond_2
    :goto_1
    if-nez v0, :cond_3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    :cond_3
    invoke-virtual {p0, v0}, Lz2/gf0;->OooOOOO(Z)Lz2/gf0;

    return-object p0
.end method

.method public OooOOO0(F)Lz2/gf0;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    const/high16 v0, 0x41c80000    # 25.0f

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Lz2/gf0;->OooO0O0:F

    return-object p0
.end method

.method public OooOOOO(Z)Lz2/gf0;
    .locals 0

    iput-boolean p1, p0, Lz2/gf0;->OooO0oO:Z

    return-object p0
.end method
