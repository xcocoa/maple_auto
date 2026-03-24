.class public final Lz2/o70$OooO0O0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/jw;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/o70;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OooO0O0"
.end annotation


# instance fields
.field private final OooO00o:Lz2/h90;


# direct methods
.method private constructor <init>(Lz2/h90;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz2/o70$OooO0O0;->OooO00o:Lz2/h90;

    return-void
.end method

.method public synthetic constructor <init>(Lz2/h90;Lz2/o70$OooO00o;)V
    .locals 0

    invoke-direct {p0, p1}, Lz2/o70$OooO0O0;-><init>(Lz2/h90;)V

    return-void
.end method

.method private OooO0o(Lz2/gw;)Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/gw;",
            ")",
            "Ljava/lang/Class<",
            "+",
            "Lz2/gw;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    return-object p1
.end method

.method private OooO0o0(Lz2/gw;)Lorg/junit/runner/Description;
    .locals 1

    instance-of v0, p1, Lz2/w80;

    if-eqz v0, :cond_0

    check-cast p1, Lz2/w80;

    invoke-interface {p1}, Lz2/w80;->getDescription()Lorg/junit/runner/Description;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-direct {p0, p1}, Lz2/o70$OooO0O0;->OooO0o(Lz2/gw;)Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, p1}, Lz2/o70$OooO0O0;->OooO0oO(Lz2/gw;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/junit/runner/Description;->createTestDescription(Ljava/lang/Class;Ljava/lang/String;)Lorg/junit/runner/Description;

    move-result-object p1

    return-object p1
.end method

.method private OooO0oO(Lz2/gw;)Ljava/lang/String;
    .locals 1

    instance-of v0, p1, Lz2/hw;

    if-eqz v0, :cond_0

    check-cast p1, Lz2/hw;

    invoke-virtual {p1}, Lz2/hw;->Oooo()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public OooO00o(Lz2/gw;Ljava/lang/Throwable;)V
    .locals 1

    new-instance v0, Lorg/junit/runner/notification/Failure;

    invoke-direct {p0, p1}, Lz2/o70$OooO0O0;->OooO0o0(Lz2/gw;)Lorg/junit/runner/Description;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lorg/junit/runner/notification/Failure;-><init>(Lorg/junit/runner/Description;Ljava/lang/Throwable;)V

    iget-object p1, p0, Lz2/o70$OooO0O0;->OooO00o:Lz2/h90;

    invoke-virtual {p1, v0}, Lz2/h90;->OooO0o(Lorg/junit/runner/notification/Failure;)V

    return-void
.end method

.method public OooO0O0(Lz2/gw;Ljunit/framework/AssertionFailedError;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lz2/o70$OooO0O0;->OooO00o(Lz2/gw;Ljava/lang/Throwable;)V

    return-void
.end method

.method public OooO0OO(Lz2/gw;)V
    .locals 1

    iget-object v0, p0, Lz2/o70$OooO0O0;->OooO00o:Lz2/h90;

    invoke-direct {p0, p1}, Lz2/o70$OooO0O0;->OooO0o0(Lz2/gw;)Lorg/junit/runner/Description;

    move-result-object p1

    invoke-virtual {v0, p1}, Lz2/h90;->OooO0oo(Lorg/junit/runner/Description;)V

    return-void
.end method

.method public OooO0Oo(Lz2/gw;)V
    .locals 1

    iget-object v0, p0, Lz2/o70$OooO0O0;->OooO00o:Lz2/h90;

    invoke-direct {p0, p1}, Lz2/o70$OooO0O0;->OooO0o0(Lz2/gw;)Lorg/junit/runner/Description;

    move-result-object p1

    invoke-virtual {v0, p1}, Lz2/h90;->OooOO0o(Lorg/junit/runner/Description;)V

    return-void
.end method
