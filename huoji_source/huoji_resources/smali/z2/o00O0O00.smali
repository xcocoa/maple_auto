.class public final Lz2/o00O0O00;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final OooO00o:Ljava/lang/String; = "libquikreg.so"

.field public static OooO0O0:Ljava/lang/String;

.field public static OooO0OO:Ljava/lang/String;

.field public static OooO0Oo:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static OooO00o()Ljava/lang/String;
    .locals 1

    sget-object v0, Lz2/o00O0O00;->OooO0O0:Ljava/lang/String;

    return-object v0
.end method

.method private static OooO0O0(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lz2/o00O0O00;->OooO0O0:Ljava/lang/String;

    return-void
.end method

.method private static OooO0OO()Ljava/lang/String;
    .locals 1

    sget-object v0, Lz2/o00O0O00;->OooO0OO:Ljava/lang/String;

    return-object v0
.end method

.method private static OooO0Oo(Ljava/lang/String;)V
    .locals 1

    sput-object p0, Lz2/o00O0O00;->OooO0OO:Ljava/lang/String;

    invoke-static {}, Lz2/o00O0O0$OooO0O0;->OooO00o()Lz2/o00O0O0;

    move-result-object p0

    iget-object v0, p0, Lz2/o00O0O0;->OooO00o:Lz2/oo0o0O0;

    if-nez v0, :cond_0

    new-instance v0, Lz2/oo0o0O0;

    invoke-direct {v0}, Lz2/oo0o0O0;-><init>()V

    iput-object v0, p0, Lz2/o00O0O0;->OooO00o:Lz2/oo0o0O0;

    :cond_0
    iget-object p0, p0, Lz2/o00O0O0;->OooO00o:Lz2/oo0o0O0;

    iget-object p0, p0, Lz2/oo0o0O0;->OooO00o:Lz2/oo0oOO0;

    invoke-interface {p0}, Lz2/oo0oOO0;->a()V

    return-void
.end method

.method private static OooO0o(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lz2/o00O0O00;->OooO0Oo:Ljava/lang/String;

    return-void
.end method

.method private static OooO0o0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lz2/o00O0O00;->OooO0Oo:Ljava/lang/String;

    return-object v0
.end method
