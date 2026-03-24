.class public abstract Lz2/j80;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/q80;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private OooO0Oo(Lz2/w90;)Lz2/w90;
    .locals 1

    new-instance v0, Lz2/j80$OooO00o;

    invoke-direct {v0, p0, p1}, Lz2/j80$OooO00o;-><init>(Lz2/j80;Lz2/w90;)V

    return-object v0
.end method


# virtual methods
.method public OooO00o(Lz2/w90;Lorg/junit/runner/Description;)Lz2/w90;
    .locals 0

    invoke-direct {p0, p1}, Lz2/j80;->OooO0Oo(Lz2/w90;)Lz2/w90;

    move-result-object p1

    return-object p1
.end method

.method public OooO0O0()V
    .locals 0

    return-void
.end method

.method public OooO0OO()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    return-void
.end method
