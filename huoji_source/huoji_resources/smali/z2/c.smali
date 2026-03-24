.class public Lz2/c;
.super Lz2/d;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lz2/d<",
        "Landroid/os/ParcelFileDescriptor;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-static {p1}, Lz2/o00Oo00;->OooO0Oo(Landroid/content/Context;)Lz2/o00Oo00;

    move-result-object p1

    invoke-virtual {p1}, Lz2/o00Oo00;->OooO0oO()Lz2/oO000o00;

    move-result-object p1

    invoke-direct {p0, p1}, Lz2/c;-><init>(Lz2/oO000o00;)V

    return-void
.end method

.method public constructor <init>(Lz2/oO000o00;)V
    .locals 1

    new-instance v0, Lz2/d$OooOO0;

    invoke-direct {v0}, Lz2/d$OooOO0;-><init>()V

    invoke-direct {p0, p1, v0}, Lz2/d;-><init>(Lz2/oO000o00;Lz2/d$OooO;)V

    return-void
.end method
