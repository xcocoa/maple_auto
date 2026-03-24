.class public Lz2/oOO0$OooO00o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/oO0oO000;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/oOO0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OooO00o"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lz2/oO0oO000<",
        "Lz2/oOo0o0oO;",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field private final OooO00o:Lz2/oO0Oo0o0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz2/oO0Oo0o0<",
            "Lz2/oOo0o0oO;",
            "Lz2/oOo0o0oO;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lz2/oO0Oo0o0;

    const-wide/16 v1, 0x1f4

    invoke-direct {v0, v1, v2}, Lz2/oO0Oo0o0;-><init>(J)V

    iput-object v0, p0, Lz2/oOO0$OooO00o;->OooO00o:Lz2/oO0Oo0o0;

    return-void
.end method


# virtual methods
.method public OooO00o()V
    .locals 0

    return-void
.end method

.method public OooO0OO(Lz2/oOO00000;)Lz2/oO0o0000;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/oOO00000;",
            ")",
            "Lz2/oO0o0000<",
            "Lz2/oOo0o0oO;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    new-instance p1, Lz2/oOO0;

    iget-object v0, p0, Lz2/oOO0$OooO00o;->OooO00o:Lz2/oO0Oo0o0;

    invoke-direct {p1, v0}, Lz2/oOO0;-><init>(Lz2/oO0Oo0o0;)V

    return-object p1
.end method
