.class public final Lz2/qx;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz2/qx$OooO00o;
    }
.end annotation


# instance fields
.field public final OooO00o:Lz2/kx;

.field public final OooO0O0:Ljava/lang/String;

.field public final OooO0OO:Lz2/jx;

.field public final OooO0Oo:Lz2/rx;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private volatile OooO0o:Lz2/sw;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final OooO0o0:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lz2/qx$OooO00o;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lz2/qx$OooO00o;->OooO00o:Lz2/kx;

    iput-object v0, p0, Lz2/qx;->OooO00o:Lz2/kx;

    iget-object v0, p1, Lz2/qx$OooO00o;->OooO0O0:Ljava/lang/String;

    iput-object v0, p0, Lz2/qx;->OooO0O0:Ljava/lang/String;

    iget-object v0, p1, Lz2/qx$OooO00o;->OooO0OO:Lz2/jx$OooO00o;

    invoke-virtual {v0}, Lz2/jx$OooO00o;->OooO0oo()Lz2/jx;

    move-result-object v0

    iput-object v0, p0, Lz2/qx;->OooO0OO:Lz2/jx;

    iget-object v0, p1, Lz2/qx$OooO00o;->OooO0Oo:Lz2/rx;

    iput-object v0, p0, Lz2/qx;->OooO0Oo:Lz2/rx;

    iget-object p1, p1, Lz2/qx$OooO00o;->OooO0o0:Ljava/util/Map;

    invoke-static {p1}, Lz2/zx;->OooOo0o(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lz2/qx;->OooO0o0:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public OooO()Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    const-class v0, Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lz2/qx;->OooOO0(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public OooO00o()Lz2/rx;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lz2/qx;->OooO0Oo:Lz2/rx;

    return-object v0
.end method

.method public OooO0O0()Lz2/sw;
    .locals 1

    iget-object v0, p0, Lz2/qx;->OooO0o:Lz2/sw;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lz2/qx;->OooO0OO:Lz2/jx;

    invoke-static {v0}, Lz2/sw;->OooOOO0(Lz2/jx;)Lz2/sw;

    move-result-object v0

    iput-object v0, p0, Lz2/qx;->OooO0o:Lz2/sw;

    :goto_0
    return-object v0
.end method

.method public OooO0OO(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lz2/qx;->OooO0OO:Lz2/jx;

    invoke-virtual {v0, p1}, Lz2/jx;->OooO0Oo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public OooO0Oo(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lz2/qx;->OooO0OO:Lz2/jx;

    invoke-virtual {v0, p1}, Lz2/jx;->OooOOOO(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public OooO0o()Z
    .locals 1

    iget-object v0, p0, Lz2/qx;->OooO00o:Lz2/kx;

    invoke-virtual {v0}, Lz2/kx;->OooOOo0()Z

    move-result v0

    return v0
.end method

.method public OooO0o0()Lz2/jx;
    .locals 1

    iget-object v0, p0, Lz2/qx;->OooO0OO:Lz2/jx;

    return-object v0
.end method

.method public OooO0oO()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lz2/qx;->OooO0O0:Ljava/lang/String;

    return-object v0
.end method

.method public OooO0oo()Lz2/qx$OooO00o;
    .locals 1

    new-instance v0, Lz2/qx$OooO00o;

    invoke-direct {v0, p0}, Lz2/qx$OooO00o;-><init>(Lz2/qx;)V

    return-object v0
.end method

.method public OooOO0(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "+TT;>;)TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lz2/qx;->OooO0o0:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public OooOO0O()Lz2/kx;
    .locals 1

    iget-object v0, p0, Lz2/qx;->OooO00o:Lz2/kx;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Request{method="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lz2/qx;->OooO0O0:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lz2/qx;->OooO00o:Lz2/kx;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", tags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lz2/qx;->OooO0o0:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
