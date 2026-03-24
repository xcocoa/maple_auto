.class public abstract Lz2/w20;
.super Lz2/i20;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lz2/i20<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final OoooOoo:Lz2/q30;


# instance fields
.field private final OoooOoO:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lz2/q30;

    const-string v1, "matchesSafely"

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lz2/q30;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lz2/w20;->OoooOoo:Lz2/q30;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Lz2/w20;->OoooOoo:Lz2/q30;

    invoke-direct {p0, v0}, Lz2/w20;-><init>(Lz2/q30;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lz2/i20;-><init>()V

    iput-object p1, p0, Lz2/w20;->OoooOoO:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Lz2/q30;)V
    .locals 1

    invoke-direct {p0}, Lz2/i20;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Lz2/q30;->OooO0OO(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lz2/w20;->OoooOoO:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final OooO00o(Ljava/lang/Object;Lz2/n20;)V
    .locals 1

    if-nez p1, :cond_0

    invoke-super {p0, p1, p2}, Lz2/i20;->OooO00o(Ljava/lang/Object;Lz2/n20;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lz2/w20;->OoooOoO:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "was a "

    invoke-interface {p2, v0}, Lz2/n20;->OooO0Oo(Ljava/lang/String;)Lz2/n20;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lz2/n20;->OooO0Oo(Ljava/lang/String;)Lz2/n20;

    move-result-object p2

    const-string v0, " ("

    invoke-interface {p2, v0}, Lz2/n20;->OooO0Oo(Ljava/lang/String;)Lz2/n20;

    move-result-object p2

    invoke-interface {p2, p1}, Lz2/n20;->OooO0o0(Ljava/lang/Object;)Lz2/n20;

    move-result-object p1

    const-string p2, ")"

    invoke-interface {p1, p2}, Lz2/n20;->OooO0Oo(Ljava/lang/String;)Lz2/n20;

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, p2}, Lz2/w20;->OooO0Oo(Ljava/lang/Object;Lz2/n20;)V

    :goto_0
    return-void
.end method

.method public final OooO0O0(Ljava/lang/Object;)Z
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lz2/w20;->OoooOoO:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lz2/w20;->OooO0o0(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public OooO0Oo(Ljava/lang/Object;Lz2/n20;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lz2/n20;",
            ")V"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lz2/i20;->OooO00o(Ljava/lang/Object;Lz2/n20;)V

    return-void
.end method

.method public abstract OooO0o0(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation
.end method
