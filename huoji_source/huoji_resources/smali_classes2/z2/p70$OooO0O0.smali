.class public Lz2/p70$OooO0O0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz2/p70;->OooO0Oo(Lz2/f90;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/lang/reflect/Method;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic OoooOoO:Lz2/f90;

.field public final synthetic OoooOoo:Lz2/p70;


# direct methods
.method public constructor <init>(Lz2/p70;Lz2/f90;)V
    .locals 0

    iput-object p1, p0, Lz2/p70$OooO0O0;->OoooOoo:Lz2/p70;

    iput-object p2, p0, Lz2/p70$OooO0O0;->OoooOoO:Lz2/f90;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OooO00o(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)I
    .locals 2

    iget-object v0, p0, Lz2/p70$OooO0O0;->OoooOoO:Lz2/f90;

    iget-object v1, p0, Lz2/p70$OooO0O0;->OoooOoo:Lz2/p70;

    invoke-virtual {v1, p1}, Lz2/p70;->OooOO0O(Ljava/lang/reflect/Method;)Lorg/junit/runner/Description;

    move-result-object p1

    iget-object v1, p0, Lz2/p70$OooO0O0;->OoooOoo:Lz2/p70;

    invoke-virtual {v1, p2}, Lz2/p70;->OooOO0O(Ljava/lang/reflect/Method;)Lorg/junit/runner/Description;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lz2/f90;->OooO0O0(Lorg/junit/runner/Description;Lorg/junit/runner/Description;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Ljava/lang/reflect/Method;

    check-cast p2, Ljava/lang/reflect/Method;

    invoke-virtual {p0, p1, p2}, Lz2/p70$OooO0O0;->OooO00o(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)I

    move-result p1

    return p1
.end method
