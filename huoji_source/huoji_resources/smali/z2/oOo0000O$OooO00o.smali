.class public final Lz2/oOo0000O$OooO00o;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/oOo0000O;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OooO00o"
.end annotation


# static fields
.field public static final OooO:I = 0x2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final OooOO0:I

.field public static final OooOO0O:F = 0.4f

.field public static final OooOO0o:F = 0.33f

.field public static final OooOOO0:I = 0x400000


# instance fields
.field public final OooO00o:Landroid/content/Context;

.field public OooO0O0:Landroid/app/ActivityManager;

.field public OooO0OO:Lz2/oOo0000O$OooO0OO;

.field public OooO0Oo:F

.field public OooO0o:F

.field public OooO0o0:F

.field public OooO0oO:F

.field public OooO0oo:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sput v0, Lz2/oOo0000O$OooO00o;->OooOO0:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lz2/oOo0000O$OooO00o;->OooO0Oo:F

    sget v0, Lz2/oOo0000O$OooO00o;->OooOO0:I

    int-to-float v0, v0

    iput v0, p0, Lz2/oOo0000O$OooO00o;->OooO0o0:F

    const v0, 0x3ecccccd    # 0.4f

    iput v0, p0, Lz2/oOo0000O$OooO00o;->OooO0o:F

    const v0, 0x3ea8f5c3    # 0.33f

    iput v0, p0, Lz2/oOo0000O$OooO00o;->OooO0oO:F

    const/high16 v0, 0x400000

    iput v0, p0, Lz2/oOo0000O$OooO00o;->OooO0oo:I

    iput-object p1, p0, Lz2/oOo0000O$OooO00o;->OooO00o:Landroid/content/Context;

    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lz2/oOo0000O$OooO00o;->OooO0O0:Landroid/app/ActivityManager;

    new-instance v0, Lz2/oOo0000O$OooO0O0;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    invoke-direct {v0, p1}, Lz2/oOo0000O$OooO0O0;-><init>(Landroid/util/DisplayMetrics;)V

    iput-object v0, p0, Lz2/oOo0000O$OooO00o;->OooO0OO:Lz2/oOo0000O$OooO0OO;

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-lt p1, v0, :cond_0

    iget-object p1, p0, Lz2/oOo0000O$OooO00o;->OooO0O0:Landroid/app/ActivityManager;

    invoke-static {p1}, Lz2/oOo0000O;->OooO0o0(Landroid/app/ActivityManager;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput p1, p0, Lz2/oOo0000O$OooO00o;->OooO0o0:F

    :cond_0
    return-void
.end method


# virtual methods
.method public OooO00o()Lz2/oOo0000O;
    .locals 1

    new-instance v0, Lz2/oOo0000O;

    invoke-direct {v0, p0}, Lz2/oOo0000O;-><init>(Lz2/oOo0000O$OooO00o;)V

    return-object v0
.end method

.method public OooO0O0(Landroid/app/ActivityManager;)Lz2/oOo0000O$OooO00o;
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iput-object p1, p0, Lz2/oOo0000O$OooO00o;->OooO0O0:Landroid/app/ActivityManager;

    return-object p0
.end method

.method public OooO0OO(I)Lz2/oOo0000O$OooO00o;
    .locals 0

    iput p1, p0, Lz2/oOo0000O$OooO00o;->OooO0oo:I

    return-object p0
.end method

.method public OooO0Oo(F)Lz2/oOo0000O$OooO00o;
    .locals 2

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Bitmap pool screens must be greater than or equal to 0"

    invoke-static {v0, v1}, Lz2/r2;->OooO00o(ZLjava/lang/String;)V

    iput p1, p0, Lz2/oOo0000O$OooO00o;->OooO0o0:F

    return-object p0
.end method

.method public OooO0o(F)Lz2/oOo0000O$OooO00o;
    .locals 2

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Size multiplier must be between 0 and 1"

    invoke-static {v0, v1}, Lz2/r2;->OooO00o(ZLjava/lang/String;)V

    iput p1, p0, Lz2/oOo0000O$OooO00o;->OooO0o:F

    return-object p0
.end method

.method public OooO0o0(F)Lz2/oOo0000O$OooO00o;
    .locals 2

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Low memory max size multiplier must be between 0 and 1"

    invoke-static {v0, v1}, Lz2/r2;->OooO00o(ZLjava/lang/String;)V

    iput p1, p0, Lz2/oOo0000O$OooO00o;->OooO0oO:F

    return-object p0
.end method

.method public OooO0oO(F)Lz2/oOo0000O$OooO00o;
    .locals 2

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Memory cache screens must be greater than or equal to 0"

    invoke-static {v0, v1}, Lz2/r2;->OooO00o(ZLjava/lang/String;)V

    iput p1, p0, Lz2/oOo0000O$OooO00o;->OooO0Oo:F

    return-object p0
.end method

.method public OooO0oo(Lz2/oOo0000O$OooO0OO;)Lz2/oOo0000O$OooO00o;
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iput-object p1, p0, Lz2/oOo0000O$OooO00o;->OooO0OO:Lz2/oOo0000O$OooO0OO;

    return-object p0
.end method
