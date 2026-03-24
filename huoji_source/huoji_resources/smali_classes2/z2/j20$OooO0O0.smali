.class public final Lz2/j20$OooO0O0;
.super Lz2/j20;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/j20;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OooO0O0"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lz2/j20<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final OooO0O0:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final OooO0OO:Lz2/n20;


# direct methods
.method private constructor <init>(Ljava/lang/Object;Lz2/n20;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lz2/n20;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lz2/j20;-><init>(Lz2/j20$OooO00o;)V

    iput-object p1, p0, Lz2/j20$OooO0O0;->OooO0O0:Ljava/lang/Object;

    iput-object p2, p0, Lz2/j20$OooO0O0;->OooO0OO:Lz2/n20;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Lz2/n20;Lz2/j20$OooO00o;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lz2/j20$OooO0O0;-><init>(Ljava/lang/Object;Lz2/n20;)V

    return-void
.end method


# virtual methods
.method public OooO00o(Lz2/j20$OooO0o;)Lz2/j20;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lz2/j20$OooO0o<",
            "-TT;TU;>;)",
            "Lz2/j20<",
            "TU;>;"
        }
    .end annotation

    iget-object v0, p0, Lz2/j20$OooO0O0;->OooO0O0:Ljava/lang/Object;

    iget-object v1, p0, Lz2/j20$OooO0O0;->OooO0OO:Lz2/n20;

    invoke-interface {p1, v0, v1}, Lz2/j20$OooO0o;->OooO00o(Ljava/lang/Object;Lz2/n20;)Lz2/j20;

    move-result-object p1

    return-object p1
.end method

.method public OooO0Oo(Lz2/r20;Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/r20<",
            "TT;>;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    iget-object v0, p0, Lz2/j20$OooO0O0;->OooO0O0:Ljava/lang/Object;

    invoke-interface {p1, v0}, Lz2/r20;->OooO0O0(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    iget-object v0, p0, Lz2/j20$OooO0O0;->OooO0OO:Lz2/n20;

    invoke-interface {v0, p2}, Lz2/n20;->OooO0Oo(Ljava/lang/String;)Lz2/n20;

    iget-object p2, p0, Lz2/j20$OooO0O0;->OooO0O0:Ljava/lang/Object;

    iget-object v0, p0, Lz2/j20$OooO0O0;->OooO0OO:Lz2/n20;

    invoke-interface {p1, p2, v0}, Lz2/r20;->OooO00o(Ljava/lang/Object;Lz2/n20;)V

    const/4 p1, 0x0

    return p1
.end method
