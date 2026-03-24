.class public Lz2/pm$OooO00o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz2/pm;->OooO00o()Lz2/do;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lz2/rm;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic OoooOoO:Lz2/pm;


# direct methods
.method public constructor <init>(Lz2/pm;)V
    .locals 0

    iput-object p1, p0, Lz2/pm$OooO00o;->OoooOoO:Lz2/pm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OooO00o(Lz2/rm;Lz2/rm;)I
    .locals 0

    invoke-virtual {p1}, Lz2/rm;->OooO0Oo()I

    move-result p1

    invoke-virtual {p2}, Lz2/rm;->OooO0Oo()I

    move-result p2

    sub-int/2addr p1, p2

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lz2/rm;

    check-cast p2, Lz2/rm;

    invoke-virtual {p0, p1, p2}, Lz2/pm$OooO00o;->OooO00o(Lz2/rm;Lz2/rm;)I

    move-result p1

    return p1
.end method
