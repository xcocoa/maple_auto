.class public abstract Lz2/b90;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/w80;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract OooO00o(Lz2/h90;)V
.end method

.method public OooO0O0()I
    .locals 1

    invoke-virtual {p0}, Lz2/b90;->getDescription()Lorg/junit/runner/Description;

    move-result-object v0

    invoke-virtual {v0}, Lorg/junit/runner/Description;->testCount()I

    move-result v0

    return v0
.end method

.method public abstract getDescription()Lorg/junit/runner/Description;
.end method
