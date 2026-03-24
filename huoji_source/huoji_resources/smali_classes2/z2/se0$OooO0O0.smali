.class public Lz2/se0$OooO0O0;
.super Lz2/se0$OooO00o;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/se0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OooO0O0"
.end annotation


# instance fields
.field public OooO00o:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lz2/se0$OooO00o;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lz2/se0$OooO0O0;->OooO00o:[I

    return-void
.end method


# virtual methods
.method public OooO0oO(Landroid/app/Activity;Lz2/qe0;Landroid/view/View;III)V
    .locals 1

    const/4 p1, 0x0

    if-eqz p3, :cond_0

    iget-object p4, p0, Lz2/se0$OooO0O0;->OooO00o:[I

    invoke-virtual {p3, p4}, Landroid/view/View;->getLocationInWindow([I)V

    iget-object p4, p0, Lz2/se0$OooO0O0;->OooO00o:[I

    aget p5, p4, p1

    const/4 p6, 0x1

    aget p4, p4, p6

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result p6

    add-int/2addr p4, p6

    move v0, p5

    move p5, p4

    move p4, v0

    :cond_0
    invoke-virtual {p2, p3, p1, p4, p5}, Lz2/qe0;->OooO0o0(Landroid/view/View;III)V

    return-void
.end method

.method public OooO0oo(Landroid/app/Activity;Lz2/qe0;Landroid/view/View;III)V
    .locals 0

    invoke-virtual {p2, p3, p4, p5, p6}, Lz2/qe0;->OooO0o0(Landroid/view/View;III)V

    return-void
.end method
