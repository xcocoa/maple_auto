.class public final Lz2/o0OO00o0$OooO00o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/o0O$OooO00o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/o0OO00o0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OooO00o"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lz2/o0O$OooO00o<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field private final OooO00o:Lz2/oO0OOo0o;


# direct methods
.method public constructor <init>(Lz2/oO0OOo0o;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz2/o0OO00o0$OooO00o;->OooO00o:Lz2/oO0OOo0o;

    return-void
.end method


# virtual methods
.method public OooO00o()Ljava/lang/Class;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    const-class v0, Ljava/io/InputStream;

    return-object v0
.end method

.method public bridge synthetic OooO0O0(Ljava/lang/Object;)Lz2/o0O;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    check-cast p1, Ljava/io/InputStream;

    invoke-virtual {p0, p1}, Lz2/o0OO00o0$OooO00o;->OooO0OO(Ljava/io/InputStream;)Lz2/o0O;

    move-result-object p1

    return-object p1
.end method

.method public OooO0OO(Ljava/io/InputStream;)Lz2/o0O;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Lz2/o0O<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    new-instance v0, Lz2/o0OO00o0;

    iget-object v1, p0, Lz2/o0OO00o0$OooO00o;->OooO00o:Lz2/oO0OOo0o;

    invoke-direct {v0, p1, v1}, Lz2/o0OO00o0;-><init>(Ljava/io/InputStream;Lz2/oO0OOo0o;)V

    return-object v0
.end method
