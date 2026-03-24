.class public Lz2/oO0O0Oo0$OooO00o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/oO0oO000;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/oO0O0Oo0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OooO00o"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lz2/oO0oO000<",
        "Ljava/io/File;",
        "TData;>;"
    }
.end annotation


# instance fields
.field private final OooO00o:Lz2/oO0O0Oo0$OooO0o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz2/oO0O0Oo0$OooO0o<",
            "TData;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lz2/oO0O0Oo0$OooO0o;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/oO0O0Oo0$OooO0o<",
            "TData;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz2/oO0O0Oo0$OooO00o;->OooO00o:Lz2/oO0O0Oo0$OooO0o;

    return-void
.end method


# virtual methods
.method public final OooO00o()V
    .locals 0

    return-void
.end method

.method public final OooO0OO(Lz2/oOO00000;)Lz2/oO0o0000;
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
            "Ljava/io/File;",
            "TData;>;"
        }
    .end annotation

    new-instance p1, Lz2/oO0O0Oo0;

    iget-object v0, p0, Lz2/oO0O0Oo0$OooO00o;->OooO00o:Lz2/oO0O0Oo0$OooO0o;

    invoke-direct {p1, v0}, Lz2/oO0O0Oo0;-><init>(Lz2/oO0O0Oo0$OooO0o;)V

    return-object p1
.end method
