.class public Lz2/ea0$OooO0o;
.super Lz2/ea0$OooO0O0;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/ea0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OooO0o"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lz2/ea0$OooO0O0<",
        "Lz2/q90;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lz2/ea0$OooO0O0;-><init>(Lz2/ea0$OooO00o;)V

    return-void
.end method

.method public synthetic constructor <init>(Lz2/ea0$OooO00o;)V
    .locals 0

    invoke-direct {p0}, Lz2/ea0$OooO0o;-><init>()V

    return-void
.end method


# virtual methods
.method public OooO00o(Lz2/x90;)Ljava/lang/Iterable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/x90;",
            ")",
            "Ljava/lang/Iterable<",
            "Lz2/q90;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lz2/x90;->OooO0o()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic OooO0OO(Lz2/ca0;Lz2/p90;)Ljava/util/List;
    .locals 0

    check-cast p2, Lz2/q90;

    invoke-virtual {p0, p1, p2}, Lz2/ea0$OooO0o;->OooO0o0(Lz2/ca0;Lz2/q90;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public OooO0o0(Lz2/ca0;Lz2/q90;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/ca0;",
            "Lz2/q90;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Exception;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1, p2}, Lz2/ca0;->OooO0O0(Lz2/q90;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
