.class public abstract Lz2/j20;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz2/j20$OooO0OO;,
        Lz2/j20$OooO0O0;,
        Lz2/j20$OooO0o;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final OooO00o:Lz2/j20$OooO0OO;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz2/j20$OooO0OO<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lz2/j20$OooO0OO;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lz2/j20$OooO0OO;-><init>(Lz2/j20$OooO00o;)V

    sput-object v0, Lz2/j20;->OooO00o:Lz2/j20$OooO0OO;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lz2/j20$OooO00o;)V
    .locals 0

    invoke-direct {p0}, Lz2/j20;-><init>()V

    return-void
.end method

.method public static OooO0O0(Ljava/lang/Object;Lz2/n20;)Lz2/j20;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lz2/n20;",
            ")",
            "Lz2/j20<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lz2/j20$OooO0O0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lz2/j20$OooO0O0;-><init>(Ljava/lang/Object;Lz2/n20;Lz2/j20$OooO00o;)V

    return-object v0
.end method

.method public static OooO0o0()Lz2/j20;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lz2/j20<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Lz2/j20;->OooO00o:Lz2/j20$OooO0OO;

    return-object v0
.end method


# virtual methods
.method public abstract OooO00o(Lz2/j20$OooO0o;)Lz2/j20;
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
.end method

.method public final OooO0OO(Lz2/r20;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/r20<",
            "TT;>;)Z"
        }
    .end annotation

    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lz2/j20;->OooO0Oo(Lz2/r20;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public abstract OooO0Oo(Lz2/r20;Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/r20<",
            "TT;>;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation
.end method

.method public final OooO0o(Lz2/j20$OooO0o;)Lz2/j20;
    .locals 0
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

    invoke-virtual {p0, p1}, Lz2/j20;->OooO00o(Lz2/j20$OooO0o;)Lz2/j20;

    move-result-object p1

    return-object p1
.end method
