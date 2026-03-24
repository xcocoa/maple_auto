.class public abstract Lz2/q20;
.super Lz2/v20;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Lz2/v20<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final OooooOO:Lz2/q30;


# instance fields
.field private final Ooooo00:Lz2/r20;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz2/r20<",
            "-TU;>;"
        }
    .end annotation
.end field

.field private final Ooooo0o:Ljava/lang/String;

.field private final OooooO0:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lz2/q30;

    const-string v1, "featureValueOf"

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lz2/q30;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lz2/q20;->OooooOO:Lz2/q30;

    return-void
.end method

.method public constructor <init>(Lz2/r20;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/r20<",
            "-TU;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    sget-object v0, Lz2/q20;->OooooOO:Lz2/q30;

    invoke-direct {p0, v0}, Lz2/v20;-><init>(Lz2/q30;)V

    iput-object p1, p0, Lz2/q20;->Ooooo00:Lz2/r20;

    iput-object p2, p0, Lz2/q20;->Ooooo0o:Ljava/lang/String;

    iput-object p3, p0, Lz2/q20;->OooooO0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public OooO0Oo(Ljava/lang/Object;Lz2/n20;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lz2/n20;",
            ")Z"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lz2/q20;->OooO0o0(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lz2/q20;->Ooooo00:Lz2/r20;

    invoke-interface {v0, p1}, Lz2/r20;->OooO0O0(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lz2/q20;->OooooO0:Ljava/lang/String;

    invoke-interface {p2, v0}, Lz2/n20;->OooO0Oo(Ljava/lang/String;)Lz2/n20;

    move-result-object v0

    const-string v1, " "

    invoke-interface {v0, v1}, Lz2/n20;->OooO0Oo(Ljava/lang/String;)Lz2/n20;

    iget-object v0, p0, Lz2/q20;->Ooooo00:Lz2/r20;

    invoke-interface {v0, p1, p2}, Lz2/r20;->OooO00o(Ljava/lang/Object;Lz2/n20;)V

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public abstract OooO0o0(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TU;"
        }
    .end annotation
.end method

.method public final describeTo(Lz2/n20;)V
    .locals 1

    iget-object v0, p0, Lz2/q20;->Ooooo0o:Ljava/lang/String;

    invoke-interface {p1, v0}, Lz2/n20;->OooO0Oo(Ljava/lang/String;)Lz2/n20;

    move-result-object p1

    const-string v0, " "

    invoke-interface {p1, v0}, Lz2/n20;->OooO0Oo(Ljava/lang/String;)Lz2/n20;

    move-result-object p1

    iget-object v0, p0, Lz2/q20;->Ooooo00:Lz2/r20;

    invoke-interface {p1, v0}, Lz2/n20;->OooO0O0(Lz2/t20;)Lz2/n20;

    return-void
.end method
