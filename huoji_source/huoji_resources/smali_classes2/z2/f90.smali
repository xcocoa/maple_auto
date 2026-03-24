.class public Lz2/f90;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lorg/junit/runner/Description;",
        ">;"
    }
.end annotation


# static fields
.field public static final OoooOoo:Lz2/f90;


# instance fields
.field private final OoooOoO:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lorg/junit/runner/Description;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lz2/f90;

    new-instance v1, Lz2/f90$OooO00o;

    invoke-direct {v1}, Lz2/f90$OooO00o;-><init>()V

    invoke-direct {v0, v1}, Lz2/f90;-><init>(Ljava/util/Comparator;)V

    sput-object v0, Lz2/f90;->OoooOoo:Lz2/f90;

    return-void
.end method

.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "Lorg/junit/runner/Description;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz2/f90;->OoooOoO:Ljava/util/Comparator;

    return-void
.end method


# virtual methods
.method public OooO00o(Ljava/lang/Object;)V
    .locals 1

    instance-of v0, p1, Lz2/e90;

    if-eqz v0, :cond_0

    check-cast p1, Lz2/e90;

    invoke-interface {p1, p0}, Lz2/e90;->OooO0Oo(Lz2/f90;)V

    :cond_0
    return-void
.end method

.method public OooO0O0(Lorg/junit/runner/Description;Lorg/junit/runner/Description;)I
    .locals 1

    iget-object v0, p0, Lz2/f90;->OoooOoO:Ljava/util/Comparator;

    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lorg/junit/runner/Description;

    check-cast p2, Lorg/junit/runner/Description;

    invoke-virtual {p0, p1, p2}, Lz2/f90;->OooO0O0(Lorg/junit/runner/Description;Lorg/junit/runner/Description;)I

    move-result p1

    return p1
.end method
