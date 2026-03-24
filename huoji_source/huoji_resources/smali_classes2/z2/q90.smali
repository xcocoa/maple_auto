.class public Lz2/q90;
.super Lz2/r90;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lz2/r90<",
        "Lz2/q90;",
        ">;"
    }
.end annotation


# instance fields
.field private final OooO00o:Ljava/lang/reflect/Field;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Field;)V
    .locals 1

    invoke-direct {p0}, Lz2/r90;-><init>()V

    const-string v0, "FrameworkField cannot be created without an underlying field."

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lz2/q90;->OooO00o:Ljava/lang/reflect/Field;

    return-void
.end method


# virtual methods
.method public bridge synthetic OooO(Lz2/r90;)Z
    .locals 0

    check-cast p1, Lz2/q90;

    invoke-virtual {p0, p1}, Lz2/q90;->OooOOO0(Lz2/q90;)Z

    move-result p1

    return p1
.end method

.method public OooO00o(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lz2/q90;->OooO00o:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    return-object p1
.end method

.method public OooO0O0()[Ljava/lang/annotation/Annotation;
    .locals 1

    iget-object v0, p0, Lz2/q90;->OooO00o:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public OooO0OO()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lz2/q90;->OooO00o:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public OooO0Oo()I
    .locals 1

    iget-object v0, p0, Lz2/q90;->OooO00o:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    return v0
.end method

.method public OooO0o()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lz2/q90;->OooO00o:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public OooO0o0()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lz2/q90;->OooOO0o()Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public OooOO0O(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    iget-object v0, p0, Lz2/q90;->OooO00o:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public OooOO0o()Ljava/lang/reflect/Field;
    .locals 1

    iget-object v0, p0, Lz2/q90;->OooO00o:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method public OooOOO0(Lz2/q90;)Z
    .locals 1

    invoke-virtual {p1}, Lz2/q90;->OooO0o0()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lz2/q90;->OooO0o0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lz2/q90;->OooO00o:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
