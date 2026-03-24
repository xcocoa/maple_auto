.class public Lz2/ob;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private OooO00o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lz2/pb;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OooO00o()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lz2/pb;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lz2/ob;->OooO00o:Ljava/util/List;

    return-object v0
.end method

.method public OooO0O0(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lz2/pb;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lz2/ob;->OooO00o:Ljava/util/List;

    return-void
.end method
