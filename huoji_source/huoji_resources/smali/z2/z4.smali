.class public Lz2/z4;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static OooO00o:Z = false

.field private static final OooO0O0:Ljava/lang/String; = "SlLog"


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

.method public static OooO00o(Ljava/lang/String;)V
    .locals 1

    if-eqz p0, :cond_0

    sget-boolean v0, Lz2/z4;->OooO00o:Z

    if-eqz v0, :cond_0

    const-string v0, "SlLog"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static OooO0O0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static OooO0OO(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static OooO0Oo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    sget-boolean v0, Lz2/z4;->OooO00o:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static OooO0o(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static OooO0o0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method
