.class public abstract Lz2/m3;
.super Landroid/os/CountDownTimer;
.source ""


# instance fields
.field private final OooO00o:I

.field private OooO0O0:Landroid/os/Handler;


# direct methods
.method public constructor <init>(II)V
    .locals 4

    mul-int/lit16 p1, p1, 0x3e8

    int-to-long v0, p1

    mul-int/lit16 p1, p2, 0x3e8

    int-to-long v2, p1

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/os/CountDownTimer;-><init>(JJ)V

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lz2/m3;->OooO0O0:Landroid/os/Handler;

    iput p2, p0, Lz2/m3;->OooO00o:I

    return-void
.end method

.method public static synthetic OooO00o(Lz2/m3;)I
    .locals 0

    iget p0, p0, Lz2/m3;->OooO00o:I

    return p0
.end method


# virtual methods
.method public abstract OooO0O0(I)V
.end method

.method public onTick(J)V
    .locals 3

    long-to-float p1, p1

    const/high16 p2, 0x3f800000    # 1.0f

    mul-float p1, p1, p2

    const/high16 p2, 0x447a0000    # 1000.0f

    div-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iget p2, p0, Lz2/m3;->OooO00o:I

    mul-int/lit8 p2, p2, 0x2

    if-ne p1, p2, :cond_0

    iget-object p2, p0, Lz2/m3;->OooO0O0:Landroid/os/Handler;

    new-instance v0, Lz2/m3$OooO00o;

    invoke-direct {v0, p0}, Lz2/m3$OooO00o;-><init>(Lz2/m3;)V

    iget v1, p0, Lz2/m3;->OooO00o:I

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v1, v1

    invoke-virtual {p2, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    invoke-virtual {p0, p1}, Lz2/m3;->OooO0O0(I)V

    return-void
.end method
