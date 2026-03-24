.class public Lz2/a30;
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
.field private static final Ooooo0o:Ljava/util/regex/Pattern;


# instance fields
.field private final OoooOoO:Ljava/lang/String;

.field private final OoooOoo:Lz2/r20;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz2/r20<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final Ooooo00:[Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "%([0-9]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lz2/a30;->Ooooo0o:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lz2/r20;[Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lz2/r20<",
            "TT;>;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lz2/i20;-><init>()V

    iput-object p1, p0, Lz2/a30;->OoooOoO:Ljava/lang/String;

    iput-object p2, p0, Lz2/a30;->OoooOoo:Lz2/r20;

    invoke-virtual {p3}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    iput-object p1, p0, Lz2/a30;->Ooooo00:[Ljava/lang/Object;

    return-void
.end method

.method public static varargs OooO0Oo(Ljava/lang/String;Lz2/r20;[Ljava/lang/Object;)Lz2/r20;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lz2/r20<",
            "TT;>;[",
            "Ljava/lang/Object;",
            ")",
            "Lz2/r20<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lz2/p20;
    .end annotation

    new-instance v0, Lz2/a30;

    invoke-direct {v0, p0, p1, p2}, Lz2/a30;-><init>(Ljava/lang/String;Lz2/r20;[Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public OooO00o(Ljava/lang/Object;Lz2/n20;)V
    .locals 1

    iget-object v0, p0, Lz2/a30;->OoooOoo:Lz2/r20;

    invoke-interface {v0, p1, p2}, Lz2/r20;->OooO00o(Ljava/lang/Object;Lz2/n20;)V

    return-void
.end method

.method public OooO0O0(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lz2/a30;->OoooOoo:Lz2/r20;

    invoke-interface {v0, p1}, Lz2/r20;->OooO0O0(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public describeTo(Lz2/n20;)V
    .locals 4

    sget-object v0, Lz2/a30;->Ooooo0o:Ljava/util/regex/Pattern;

    iget-object v1, p0, Lz2/a30;->OoooOoO:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lz2/a30;->OoooOoO:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lz2/n20;->OooO0Oo(Ljava/lang/String;)Lz2/n20;

    iget-object v1, p0, Lz2/a30;->Ooooo00:[Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aget-object v1, v1, v2

    invoke-interface {p1, v1}, Lz2/n20;->OooO0o0(Ljava/lang/Object;)Lz2/n20;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lz2/a30;->OoooOoO:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lz2/a30;->OoooOoO:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lz2/n20;->OooO0Oo(Ljava/lang/String;)Lz2/n20;

    :cond_1
    return-void
.end method
