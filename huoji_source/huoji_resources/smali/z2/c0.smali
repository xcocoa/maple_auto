.class public Lz2/c0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/d0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lz2/d0<",
        "Lz2/r;",
        "[B>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OooO00o(Lz2/oO0Ooooo;Lz2/o0O0OOO0;)Lz2/oO0Ooooo;
    .locals 0
    .param p1    # Lz2/oO0Ooooo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lz2/o0O0OOO0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/oO0Ooooo<",
            "Lz2/r;",
            ">;",
            "Lz2/o0O0OOO0;",
            ")",
            "Lz2/oO0Ooooo<",
            "[B>;"
        }
    .end annotation

    invoke-interface {p1}, Lz2/oO0Ooooo;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lz2/r;

    invoke-virtual {p1}, Lz2/r;->OooO0OO()Ljava/nio/ByteBuffer;

    move-result-object p1

    new-instance p2, Lz2/f;

    invoke-static {p1}, Lz2/h2;->OooO0Oo(Ljava/nio/ByteBuffer;)[B

    move-result-object p1

    invoke-direct {p2, p1}, Lz2/f;-><init>([B)V

    return-object p2
.end method
