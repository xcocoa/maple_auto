.class public Lz2/x90$OooO0OO;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/x90;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OooO0OO"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lz2/s90;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lz2/x90$OooO00o;)V
    .locals 0

    invoke-direct {p0}, Lz2/x90$OooO0OO;-><init>()V

    return-void
.end method


# virtual methods
.method public OooO00o(Lz2/s90;Lz2/s90;)I
    .locals 1

    sget-object v0, Lz2/t60;->OooO0O0:Ljava/util/Comparator;

    invoke-virtual {p1}, Lz2/s90;->OooOO0o()Ljava/lang/reflect/Method;

    move-result-object p1

    invoke-virtual {p2}, Lz2/s90;->OooOO0o()Ljava/lang/reflect/Method;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lz2/s90;

    check-cast p2, Lz2/s90;

    invoke-virtual {p0, p1, p2}, Lz2/x90$OooO0OO;->OooO00o(Lz2/s90;Lz2/s90;)I

    move-result p1

    return p1
.end method
