.class public abstract Lz2/h90$OooOOO0;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/h90;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "OooOOO0"
.end annotation


# instance fields
.field private final OooO00o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lz2/g90;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic OooO0O0:Lz2/h90;


# direct methods
.method public constructor <init>(Lz2/h90;)V
    .locals 1

    invoke-static {p1}, Lz2/h90;->OooO00o(Lz2/h90;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lz2/h90$OooOOO0;-><init>(Lz2/h90;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Lz2/h90;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lz2/g90;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lz2/h90$OooOOO0;->OooO0O0:Lz2/h90;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lz2/h90$OooOOO0;->OooO00o:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public abstract OooO00o(Lz2/g90;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public OooO0O0()V
    .locals 6

    iget-object v0, p0, Lz2/h90$OooOOO0;->OooO00o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v0, p0, Lz2/h90$OooOOO0;->OooO00o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lz2/g90;

    :try_start_0
    invoke-virtual {p0, v3}, Lz2/h90$OooOOO0;->OooO00o(Lz2/g90;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    new-instance v4, Lorg/junit/runner/notification/Failure;

    sget-object v5, Lorg/junit/runner/Description;->TEST_MECHANISM:Lorg/junit/runner/Description;

    invoke-direct {v4, v5, v3}, Lorg/junit/runner/notification/Failure;-><init>(Lorg/junit/runner/Description;Ljava/lang/Throwable;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lz2/h90$OooOOO0;->OooO0O0:Lz2/h90;

    invoke-static {v0, v1, v2}, Lz2/h90;->OooO0O0(Lz2/h90;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method
