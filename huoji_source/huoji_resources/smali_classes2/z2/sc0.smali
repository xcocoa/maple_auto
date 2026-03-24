.class public final Lz2/sc0;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final OooO00o:I = 0x2

.field public static final OooO0O0:I = 0x5

.field public static OooO0OO:I = 0x5


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static OooO00o(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget v0, Lz2/sc0;->OooO0OO:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static OooO0O0(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2

    sget v0, Lz2/sc0;->OooO0OO:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method
