.class public Lz2/c90$OooO00o;
.super Lz2/c90;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/c90;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lz2/c90;-><init>()V

    return-void
.end method


# virtual methods
.method public OooO00o(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/junit/runner/manipulation/NoTestsRemainException;
        }
    .end annotation

    return-void
.end method

.method public OooO0O0()Ljava/lang/String;
    .locals 1

    const-string v0, "all tests"

    return-object v0
.end method

.method public OooO0OO(Lz2/c90;)Lz2/c90;
    .locals 0

    return-object p1
.end method

.method public OooO0o0(Lorg/junit/runner/Description;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
