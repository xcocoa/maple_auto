.class public Lz2/o0OOOO0o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/oO00Oo0$OooO0O0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<DataType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lz2/oO00Oo0$OooO0O0;"
    }
.end annotation


# instance fields
.field private final OooO00o:Lz2/o0oO0O0o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz2/o0oO0O0o<",
            "TDataType;>;"
        }
    .end annotation
.end field

.field private final OooO0O0:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TDataType;"
        }
    .end annotation
.end field

.field private final OooO0OO:Lz2/o0O0OOO0;


# direct methods
.method public constructor <init>(Lz2/o0oO0O0o;Ljava/lang/Object;Lz2/o0O0OOO0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/o0oO0O0o<",
            "TDataType;>;TDataType;",
            "Lz2/o0O0OOO0;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz2/o0OOOO0o;->OooO00o:Lz2/o0oO0O0o;

    iput-object p2, p0, Lz2/o0OOOO0o;->OooO0O0:Ljava/lang/Object;

    iput-object p3, p0, Lz2/o0OOOO0o;->OooO0OO:Lz2/o0O0OOO0;

    return-void
.end method


# virtual methods
.method public OooO00o(Ljava/io/File;)Z
    .locals 3
    .param p1    # Ljava/io/File;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lz2/o0OOOO0o;->OooO00o:Lz2/o0oO0O0o;

    iget-object v1, p0, Lz2/o0OOOO0o;->OooO0O0:Ljava/lang/Object;

    iget-object v2, p0, Lz2/o0OOOO0o;->OooO0OO:Lz2/o0O0OOO0;

    invoke-interface {v0, v1, p1, v2}, Lz2/o0oO0O0o;->OooO00o(Ljava/lang/Object;Ljava/io/File;Lz2/o0O0OOO0;)Z

    move-result p1

    return p1
.end method
