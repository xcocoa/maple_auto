.class public final Lz2/ea0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/ga0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz2/ea0$OooO0o;,
        Lz2/ea0$OooO;,
        Lz2/ea0$OooO0OO;,
        Lz2/ea0$OooO0O0;
    }
.end annotation


# static fields
.field private static final OooO00o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lz2/ea0$OooO0O0<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Lz2/ea0$OooO0O0;

    new-instance v1, Lz2/ea0$OooO0OO;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lz2/ea0$OooO0OO;-><init>(Lz2/ea0$OooO00o;)V

    const/4 v3, 0x0

    aput-object v1, v0, v3

    new-instance v1, Lz2/ea0$OooO;

    invoke-direct {v1, v2}, Lz2/ea0$OooO;-><init>(Lz2/ea0$OooO00o;)V

    const/4 v3, 0x1

    aput-object v1, v0, v3

    new-instance v1, Lz2/ea0$OooO0o;

    invoke-direct {v1, v2}, Lz2/ea0$OooO0o;-><init>(Lz2/ea0$OooO00o;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lz2/ea0;->OooO00o:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OooO00o(Lz2/x90;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/x90;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Exception;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lz2/ea0;->OooO00o:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lz2/ea0$OooO0O0;

    invoke-virtual {v2, p1}, Lz2/ea0$OooO0O0;->OooO0Oo(Lz2/x90;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method
