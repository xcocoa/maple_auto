.class public Lz2/h90$OooO0o;
.super Lz2/h90$OooOOO0;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz2/h90;->OooO0oO(Ljava/util/List;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OooO0OO:Ljava/util/List;

.field public final synthetic OooO0Oo:Lz2/h90;


# direct methods
.method public constructor <init>(Lz2/h90;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iput-object p1, p0, Lz2/h90$OooO0o;->OooO0Oo:Lz2/h90;

    iput-object p3, p0, Lz2/h90$OooO0o;->OooO0OO:Ljava/util/List;

    invoke-direct {p0, p1, p2}, Lz2/h90$OooOOO0;-><init>(Lz2/h90;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public OooO00o(Lz2/g90;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lz2/h90$OooO0o;->OooO0OO:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/junit/runner/notification/Failure;

    invoke-virtual {p1, v1}, Lz2/g90;->OooO0O0(Lorg/junit/runner/notification/Failure;)V

    goto :goto_0

    :cond_0
    return-void
.end method
