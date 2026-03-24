.class public final Lz2/oOo00OO0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/ooOOOOoo;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lz2/ooOOOOoo<",
        "[I>;"
    }
.end annotation


# static fields
.field private static final OooO00o:Ljava/lang/String; = "IntegerArrayPool"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OooO00o()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public bridge synthetic OooO0O0(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, [I

    invoke-virtual {p0, p1}, Lz2/oOo00OO0;->OooO0OO([I)I

    move-result p1

    return p1
.end method

.method public OooO0OO([I)I
    .locals 0

    array-length p1, p1

    return p1
.end method

.method public OooO0Oo(I)[I
    .locals 0

    new-array p1, p1, [I

    return-object p1
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    const-string v0, "IntegerArrayPool"

    return-object v0
.end method

.method public bridge synthetic newArray(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lz2/oOo00OO0;->OooO0Oo(I)[I

    move-result-object p1

    return-object p1
.end method
