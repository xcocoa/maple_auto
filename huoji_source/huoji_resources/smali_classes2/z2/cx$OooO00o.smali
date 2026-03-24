.class public Lz2/cx$OooO00o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/cx;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/cx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OooO00o(Lz2/kx;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/kx;",
            "Ljava/util/List<",
            "Lz2/bx;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public OooO0O0(Lz2/kx;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/kx;",
            ")",
            "Ljava/util/List<",
            "Lz2/bx;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
