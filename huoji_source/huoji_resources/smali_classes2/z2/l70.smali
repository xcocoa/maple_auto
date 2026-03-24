.class public Lz2/l70;
.super Lz2/z80;
.source ""


# instance fields
.field private final OooO00o:Lz2/z80;

.field private final OooO0O0:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lorg/junit/runner/Description;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lz2/z80;Ljava/util/Comparator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/z80;",
            "Ljava/util/Comparator<",
            "Lorg/junit/runner/Description;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lz2/z80;-><init>()V

    iput-object p1, p0, Lz2/l70;->OooO00o:Lz2/z80;

    iput-object p2, p0, Lz2/l70;->OooO0O0:Ljava/util/Comparator;

    return-void
.end method


# virtual methods
.method public OooO0oo()Lz2/b90;
    .locals 3

    iget-object v0, p0, Lz2/l70;->OooO00o:Lz2/z80;

    invoke-virtual {v0}, Lz2/z80;->OooO0oo()Lz2/b90;

    move-result-object v0

    new-instance v1, Lz2/f90;

    iget-object v2, p0, Lz2/l70;->OooO0O0:Ljava/util/Comparator;

    invoke-direct {v1, v2}, Lz2/f90;-><init>(Ljava/util/Comparator;)V

    invoke-virtual {v1, v0}, Lz2/f90;->OooO00o(Ljava/lang/Object;)V

    return-object v0
.end method
