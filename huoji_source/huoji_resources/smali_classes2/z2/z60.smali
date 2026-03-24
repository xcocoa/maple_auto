.class public Lz2/z60;
.super Lz2/u90;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lz2/u90;-><init>()V

    return-void
.end method


# virtual methods
.method public OooO0OO(Ljava/lang/Class;)Lz2/b90;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lz2/b90;"
        }
    .end annotation

    const-class v0, Lz2/l50;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lz2/a70;

    invoke-direct {v0, p1}, Lz2/a70;-><init>(Ljava/lang/Class;)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
