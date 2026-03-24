.class public final Lz2/rs;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final OooO00o:Lz2/eo;

.field private final OooO0O0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[",
            "Lz2/fm;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lz2/eo;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/eo;",
            "Ljava/util/List<",
            "[",
            "Lz2/fm;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz2/rs;->OooO00o:Lz2/eo;

    iput-object p2, p0, Lz2/rs;->OooO0O0:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final OooO00o()Lz2/eo;
    .locals 1

    iget-object v0, p0, Lz2/rs;->OooO00o:Lz2/eo;

    return-object v0
.end method

.method public final OooO0O0()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "[",
            "Lz2/fm;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lz2/rs;->OooO0O0:Ljava/util/List;

    return-object v0
.end method
