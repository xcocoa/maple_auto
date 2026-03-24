.class public final Lz2/vw$OooO00o;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/vw;
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
            "Lz2/vw$OooO0O0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lz2/vw$OooO00o;->OooO00o:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public varargs OooO00o(Ljava/lang/String;[Ljava/lang/String;)Lz2/vw$OooO00o;
    .locals 5

    const-string v0, "pattern == null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p2, v1

    iget-object v3, p0, Lz2/vw$OooO00o;->OooO00o:Ljava/util/List;

    new-instance v4, Lz2/vw$OooO0O0;

    invoke-direct {v4, p1, v2}, Lz2/vw$OooO0O0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public OooO0O0()Lz2/vw;
    .locals 3

    new-instance v0, Lz2/vw;

    new-instance v1, Ljava/util/LinkedHashSet;

    iget-object v2, p0, Lz2/vw$OooO00o;->OooO00o:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lz2/vw;-><init>(Ljava/util/Set;Lz2/yz;)V

    return-object v0
.end method
