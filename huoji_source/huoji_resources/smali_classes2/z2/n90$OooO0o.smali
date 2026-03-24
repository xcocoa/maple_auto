.class public Lz2/n90$OooO0o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz2/n90;->OooOO0o(Lz2/f90;)Ljava/util/Comparator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic OoooOoO:Lz2/f90;

.field public final synthetic OoooOoo:Lz2/n90;


# direct methods
.method public constructor <init>(Lz2/n90;Lz2/f90;)V
    .locals 0

    iput-object p1, p0, Lz2/n90$OooO0o;->OoooOoo:Lz2/n90;

    iput-object p2, p0, Lz2/n90$OooO0o;->OoooOoO:Lz2/f90;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    iget-object v0, p0, Lz2/n90$OooO0o;->OoooOoO:Lz2/f90;

    iget-object v1, p0, Lz2/n90$OooO0o;->OoooOoo:Lz2/n90;

    invoke-virtual {v1, p1}, Lz2/n90;->OooOOO(Ljava/lang/Object;)Lorg/junit/runner/Description;

    move-result-object p1

    iget-object v1, p0, Lz2/n90$OooO0o;->OoooOoo:Lz2/n90;

    invoke-virtual {v1, p2}, Lz2/n90;->OooOOO(Ljava/lang/Object;)Lorg/junit/runner/Description;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lz2/f90;->OooO0O0(Lorg/junit/runner/Description;Lorg/junit/runner/Description;)I

    move-result p1

    return p1
.end method
