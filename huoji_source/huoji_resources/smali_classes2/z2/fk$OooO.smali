.class public Lz2/fk$OooO;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/fk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OooO"
.end annotation


# static fields
.field public static final OooO0Oo:F = 3.4028235E38f


# instance fields
.field public OooO00o:F

.field public OooO0O0:F

.field public OooO0OO:F


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(FFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lz2/fk$OooO;->OooO00o:F

    iput p2, p0, Lz2/fk$OooO;->OooO0O0:F

    iput p3, p0, Lz2/fk$OooO;->OooO0OO:F

    return-void
.end method

.method public synthetic constructor <init>(Lz2/fk$OooO00o;)V
    .locals 0

    invoke-direct {p0}, Lz2/fk$OooO;-><init>()V

    return-void
.end method

.method public constructor <init>(Lz2/fk$OooO;)V
    .locals 2

    iget v0, p1, Lz2/fk$OooO;->OooO00o:F

    iget v1, p1, Lz2/fk$OooO;->OooO0O0:F

    iget p1, p1, Lz2/fk$OooO;->OooO0OO:F

    invoke-direct {p0, v0, v1, p1}, Lz2/fk$OooO;-><init>(FFF)V

    return-void
.end method


# virtual methods
.method public OooO00o()Z
    .locals 2

    iget v0, p0, Lz2/fk$OooO;->OooO0OO:F

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public OooO0O0(FFF)V
    .locals 0

    iput p1, p0, Lz2/fk$OooO;->OooO00o:F

    iput p2, p0, Lz2/fk$OooO;->OooO0O0:F

    iput p3, p0, Lz2/fk$OooO;->OooO0OO:F

    return-void
.end method

.method public OooO0OO(Lz2/fk$OooO;)V
    .locals 2

    iget v0, p1, Lz2/fk$OooO;->OooO00o:F

    iget v1, p1, Lz2/fk$OooO;->OooO0O0:F

    iget p1, p1, Lz2/fk$OooO;->OooO0OO:F

    invoke-virtual {p0, v0, v1, p1}, Lz2/fk$OooO;->OooO0O0(FFF)V

    return-void
.end method
