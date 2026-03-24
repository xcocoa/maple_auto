.class public Lz2/t60;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final OooO00o:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field public static final OooO0O0:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lz2/t60$OooO00o;

    invoke-direct {v0}, Lz2/t60$OooO00o;-><init>()V

    sput-object v0, Lz2/t60;->OooO00o:Ljava/util/Comparator;

    new-instance v0, Lz2/t60$OooO0O0;

    invoke-direct {v0}, Lz2/t60$OooO0O0;-><init>()V

    sput-object v0, Lz2/t60;->OooO0O0:Ljava/util/Comparator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static OooO00o(Ljava/lang/Class;)[Ljava/lang/reflect/Method;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)[",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    const-class v0, Lz2/k50;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lz2/k50;

    invoke-static {v0}, Lz2/t60;->OooO0O0(Lz2/k50;)Ljava/util/Comparator;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object p0

    if-eqz v0, :cond_0

    invoke-static {p0, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    :cond_0
    return-object p0
.end method

.method private static OooO0O0(Lz2/k50;)Ljava/util/Comparator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/k50;",
            ")",
            "Ljava/util/Comparator<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    sget-object p0, Lz2/t60;->OooO00o:Ljava/util/Comparator;

    return-object p0

    :cond_0
    invoke-interface {p0}, Lz2/k50;->value()Lorg/junit/runners/MethodSorters;

    move-result-object p0

    invoke-virtual {p0}, Lorg/junit/runners/MethodSorters;->getComparator()Ljava/util/Comparator;

    move-result-object p0

    return-object p0
.end method
