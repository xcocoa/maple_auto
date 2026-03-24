.class public abstract Lz2/c90;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final OooO00o:Lz2/c90;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lz2/c90$OooO00o;

    invoke-direct {v0}, Lz2/c90$OooO00o;-><init>()V

    sput-object v0, Lz2/c90;->OooO00o:Lz2/c90;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static OooO0Oo(Lorg/junit/runner/Description;)Lz2/c90;
    .locals 1

    new-instance v0, Lz2/c90$OooO0O0;

    invoke-direct {v0, p0}, Lz2/c90$OooO0O0;-><init>(Lorg/junit/runner/Description;)V

    return-object v0
.end method


# virtual methods
.method public OooO00o(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/junit/runner/manipulation/NoTestsRemainException;
        }
    .end annotation

    instance-of v0, p1, Lz2/d90;

    if-nez v0, :cond_0

    return-void

    :cond_0
    check-cast p1, Lz2/d90;

    invoke-interface {p1, p0}, Lz2/d90;->OooO0OO(Lz2/c90;)V

    return-void
.end method

.method public abstract OooO0O0()Ljava/lang/String;
.end method

.method public OooO0OO(Lz2/c90;)Lz2/c90;
    .locals 1

    if-eq p1, p0, :cond_1

    sget-object v0, Lz2/c90;->OooO00o:Lz2/c90;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lz2/c90$OooO0OO;

    invoke-direct {v0, p0, p0, p1}, Lz2/c90$OooO0OO;-><init>(Lz2/c90;Lz2/c90;Lz2/c90;)V

    return-object v0

    :cond_1
    :goto_0
    return-object p0
.end method

.method public abstract OooO0o0(Lorg/junit/runner/Description;)Z
.end method
