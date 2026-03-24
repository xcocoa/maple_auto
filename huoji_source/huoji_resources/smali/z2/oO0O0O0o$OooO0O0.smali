.class public Lz2/oO0O0O0o$OooO0O0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/oO0oO000;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/oO0O0O0o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OooO0O0"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lz2/oO0oO000<",
        "Ljava/io/File;",
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
    .locals 0
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
            "Ljava/io/File;",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    new-instance p1, Lz2/oO0O0O0o;

    invoke-direct {p1}, Lz2/oO0O0O0o;-><init>()V

    return-object p1
.end method
