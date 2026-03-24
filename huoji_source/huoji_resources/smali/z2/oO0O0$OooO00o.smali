.class public Lz2/oO0O0$OooO00o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/oO0oO000;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/oO0O0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OooO00o"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lz2/oO0oO000<",
        "[B",
        "Ljava/nio/ByteBuffer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OooO00o()V
    .locals 0

    return-void
.end method

.method public OooO0OO(Lz2/oOO00000;)Lz2/oO0o0000;
    .locals 1
    .param p1    # Lz2/oOO00000;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/oOO00000;",
            ")",
            "Lz2/oO0o0000<",
            "[B",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    new-instance p1, Lz2/oO0O0;

    new-instance v0, Lz2/oO0O0$OooO00o$OooO00o;

    invoke-direct {v0, p0}, Lz2/oO0O0$OooO00o$OooO00o;-><init>(Lz2/oO0O0$OooO00o;)V

    invoke-direct {p1, v0}, Lz2/oO0O0;-><init>(Lz2/oO0O0$OooO0O0;)V

    return-object p1
.end method
