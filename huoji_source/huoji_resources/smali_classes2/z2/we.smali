.class public final Lz2/we;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final OooO:I = -0x1

.field public static final OooO00o:I

.field public static final OooO0O0:I

.field public static final OooO0OO:I = -0x1

.field public static final OooO0Oo:I = -0x2

.field public static final OooO0o:I = -0x2

.field public static final OooO0o0:I = -0x2

.field public static final OooO0oO:I = -0x1000000

.field public static final OooO0oo:I = -0x1

.field public static final OooOO0:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "#00000000"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lz2/we;->OooO00o:I

    const-string v0, "#FFF0F0F0"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lz2/we;->OooO0O0:I

    const-string v0, "#3B83FF"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lz2/we;->OooOO0:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
