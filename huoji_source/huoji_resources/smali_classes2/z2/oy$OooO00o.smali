.class public final Lz2/oy$OooO00o;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/oy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OooO00o"
.end annotation


# instance fields
.field private final OooO00o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lz2/ux;",
            ">;"
        }
    .end annotation
.end field

.field private OooO0O0:I


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lz2/ux;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lz2/oy$OooO00o;->OooO0O0:I

    iput-object p1, p0, Lz2/oy$OooO00o;->OooO00o:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public OooO00o()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lz2/ux;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lz2/oy$OooO00o;->OooO00o:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public OooO0O0()Z
    .locals 2

    iget v0, p0, Lz2/oy$OooO00o;->OooO0O0:I

    iget-object v1, p0, Lz2/oy$OooO00o;->OooO00o:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public OooO0OO()Lz2/ux;
    .locals 3

    invoke-virtual {p0}, Lz2/oy$OooO00o;->OooO0O0()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lz2/oy$OooO00o;->OooO00o:Ljava/util/List;

    iget v1, p0, Lz2/oy$OooO00o;->OooO0O0:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lz2/oy$OooO00o;->OooO0O0:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz2/ux;

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
