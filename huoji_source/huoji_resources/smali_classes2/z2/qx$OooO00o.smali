.class public Lz2/qx$OooO00o;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/qx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OooO00o"
.end annotation


# instance fields
.field public OooO00o:Lz2/kx;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public OooO0O0:Ljava/lang/String;

.field public OooO0OO:Lz2/jx$OooO00o;

.field public OooO0Oo:Lz2/rx;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public OooO0o0:Ljava/util/Map;
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
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lz2/qx$OooO00o;->OooO0o0:Ljava/util/Map;

    const-string v0, "GET"

    iput-object v0, p0, Lz2/qx$OooO00o;->OooO0O0:Ljava/lang/String;

    new-instance v0, Lz2/jx$OooO00o;

    invoke-direct {v0}, Lz2/jx$OooO00o;-><init>()V

    iput-object v0, p0, Lz2/qx$OooO00o;->OooO0OO:Lz2/jx$OooO00o;

    return-void
.end method

.method public constructor <init>(Lz2/qx;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lz2/qx$OooO00o;->OooO0o0:Ljava/util/Map;

    iget-object v0, p1, Lz2/qx;->OooO00o:Lz2/kx;

    iput-object v0, p0, Lz2/qx$OooO00o;->OooO00o:Lz2/kx;

    iget-object v0, p1, Lz2/qx;->OooO0O0:Ljava/lang/String;

    iput-object v0, p0, Lz2/qx$OooO00o;->OooO0O0:Ljava/lang/String;

    iget-object v0, p1, Lz2/qx;->OooO0Oo:Lz2/rx;

    iput-object v0, p0, Lz2/qx$OooO00o;->OooO0Oo:Lz2/rx;

    iget-object v0, p1, Lz2/qx;->OooO0o0:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/LinkedHashMap;

    iget-object v1, p1, Lz2/qx;->OooO0o0:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    :goto_0
    iput-object v0, p0, Lz2/qx$OooO00o;->OooO0o0:Ljava/util/Map;

    iget-object p1, p1, Lz2/qx;->OooO0OO:Lz2/jx;

    invoke-virtual {p1}, Lz2/jx;->OooO()Lz2/jx$OooO00o;

    move-result-object p1

    iput-object p1, p0, Lz2/qx$OooO00o;->OooO0OO:Lz2/jx$OooO00o;

    return-void
.end method


# virtual methods
.method public OooO(Lz2/jx;)Lz2/qx$OooO00o;
    .locals 0

    invoke-virtual {p1}, Lz2/jx;->OooO()Lz2/jx$OooO00o;

    move-result-object p1

    iput-object p1, p0, Lz2/qx$OooO00o;->OooO0OO:Lz2/jx$OooO00o;

    return-object p0
.end method

.method public OooO00o(Ljava/lang/String;Ljava/lang/String;)Lz2/qx$OooO00o;
    .locals 1

    iget-object v0, p0, Lz2/qx$OooO00o;->OooO0OO:Lz2/jx$OooO00o;

    invoke-virtual {v0, p1, p2}, Lz2/jx$OooO00o;->OooO0O0(Ljava/lang/String;Ljava/lang/String;)Lz2/jx$OooO00o;

    return-object p0
.end method

.method public OooO0O0()Lz2/qx;
    .locals 2

    iget-object v0, p0, Lz2/qx$OooO00o;->OooO00o:Lz2/kx;

    if-eqz v0, :cond_0

    new-instance v0, Lz2/qx;

    invoke-direct {v0, p0}, Lz2/qx;-><init>(Lz2/qx$OooO00o;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "url == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public OooO0OO(Lz2/sw;)Lz2/qx$OooO00o;
    .locals 2

    invoke-virtual {p1}, Lz2/sw;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const-string v1, "Cache-Control"

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lz2/qx$OooO00o;->OooOOO(Ljava/lang/String;)Lz2/qx$OooO00o;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0, v1, p1}, Lz2/qx$OooO00o;->OooO0oo(Ljava/lang/String;Ljava/lang/String;)Lz2/qx$OooO00o;

    move-result-object p1

    return-object p1
.end method

.method public OooO0Oo()Lz2/qx$OooO00o;
    .locals 1

    sget-object v0, Lz2/zx;->OooO0Oo:Lz2/rx;

    invoke-virtual {p0, v0}, Lz2/qx$OooO00o;->OooO0o0(Lz2/rx;)Lz2/qx$OooO00o;

    move-result-object v0

    return-object v0
.end method

.method public OooO0o()Lz2/qx$OooO00o;
    .locals 2

    const-string v0, "GET"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lz2/qx$OooO00o;->OooOO0(Ljava/lang/String;Lz2/rx;)Lz2/qx$OooO00o;

    move-result-object v0

    return-object v0
.end method

.method public OooO0o0(Lz2/rx;)Lz2/qx$OooO00o;
    .locals 1
    .param p1    # Lz2/rx;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "DELETE"

    invoke-virtual {p0, v0, p1}, Lz2/qx$OooO00o;->OooOO0(Ljava/lang/String;Lz2/rx;)Lz2/qx$OooO00o;

    move-result-object p1

    return-object p1
.end method

.method public OooO0oO()Lz2/qx$OooO00o;
    .locals 2

    const-string v0, "HEAD"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lz2/qx$OooO00o;->OooOO0(Ljava/lang/String;Lz2/rx;)Lz2/qx$OooO00o;

    move-result-object v0

    return-object v0
.end method

.method public OooO0oo(Ljava/lang/String;Ljava/lang/String;)Lz2/qx$OooO00o;
    .locals 1

    iget-object v0, p0, Lz2/qx$OooO00o;->OooO0OO:Lz2/jx$OooO00o;

    invoke-virtual {v0, p1, p2}, Lz2/jx$OooO00o;->OooOO0O(Ljava/lang/String;Ljava/lang/String;)Lz2/jx$OooO00o;

    return-object p0
.end method

.method public OooOO0(Ljava/lang/String;Lz2/rx;)Lz2/qx$OooO00o;
    .locals 2
    .param p2    # Lz2/rx;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "method == null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "method "

    if-eqz p2, :cond_1

    invoke-static {p1}, Lz2/vy;->OooO0O0(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must not have a request body."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    :goto_0
    if-nez p2, :cond_3

    invoke-static {p1}, Lz2/vy;->OooO0o0(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must have a request body."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_3
    :goto_1
    iput-object p1, p0, Lz2/qx$OooO00o;->OooO0O0:Ljava/lang/String;

    iput-object p2, p0, Lz2/qx$OooO00o;->OooO0Oo:Lz2/rx;

    return-object p0

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "method.length() == 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public OooOO0O(Lz2/rx;)Lz2/qx$OooO00o;
    .locals 1

    const-string v0, "PATCH"

    invoke-virtual {p0, v0, p1}, Lz2/qx$OooO00o;->OooOO0(Ljava/lang/String;Lz2/rx;)Lz2/qx$OooO00o;

    move-result-object p1

    return-object p1
.end method

.method public OooOO0o(Lz2/rx;)Lz2/qx$OooO00o;
    .locals 1

    const-string v0, "POST"

    invoke-virtual {p0, v0, p1}, Lz2/qx$OooO00o;->OooOO0(Ljava/lang/String;Lz2/rx;)Lz2/qx$OooO00o;

    move-result-object p1

    return-object p1
.end method

.method public OooOOO(Ljava/lang/String;)Lz2/qx$OooO00o;
    .locals 1

    iget-object v0, p0, Lz2/qx$OooO00o;->OooO0OO:Lz2/jx$OooO00o;

    invoke-virtual {v0, p1}, Lz2/jx$OooO00o;->OooOO0(Ljava/lang/String;)Lz2/jx$OooO00o;

    return-object p0
.end method

.method public OooOOO0(Lz2/rx;)Lz2/qx$OooO00o;
    .locals 1

    const-string v0, "PUT"

    invoke-virtual {p0, v0, p1}, Lz2/qx$OooO00o;->OooOO0(Ljava/lang/String;Lz2/rx;)Lz2/qx$OooO00o;

    move-result-object p1

    return-object p1
.end method

.method public OooOOOO(Ljava/lang/Class;Ljava/lang/Object;)Lz2/qx$OooO00o;
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "-TT;>;TT;)",
            "Lz2/qx$OooO00o;"
        }
    .end annotation

    const-string v0, "type == null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-nez p2, :cond_0

    iget-object p2, p0, Lz2/qx$OooO00o;->OooO0o0:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lz2/qx$OooO00o;->OooO0o0:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lz2/qx$OooO00o;->OooO0o0:Ljava/util/Map;

    :cond_1
    iget-object v0, p0, Lz2/qx$OooO00o;->OooO0o0:Ljava/util/Map;

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-object p0
.end method

.method public OooOOOo(Ljava/lang/Object;)Lz2/qx$OooO00o;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    const-class v0, Ljava/lang/Object;

    invoke-virtual {p0, v0, p1}, Lz2/qx$OooO00o;->OooOOOO(Ljava/lang/Class;Ljava/lang/Object;)Lz2/qx$OooO00o;

    move-result-object p1

    return-object p1
.end method

.method public OooOOo(Ljava/net/URL;)Lz2/qx$OooO00o;
    .locals 1

    const-string v0, "url == null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lz2/kx;->OooOOO0(Ljava/lang/String;)Lz2/kx;

    move-result-object p1

    invoke-virtual {p0, p1}, Lz2/qx$OooO00o;->OooOOoo(Lz2/kx;)Lz2/qx$OooO00o;

    move-result-object p1

    return-object p1
.end method

.method public OooOOo0(Ljava/lang/String;)Lz2/qx$OooO00o;
    .locals 7

    const-string v0, "url == null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x3

    const-string v4, "ws:"

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x3

    :goto_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x4

    const-string v3, "wss:"

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x4

    goto :goto_0

    :cond_1
    :goto_1
    invoke-static {p1}, Lz2/kx;->OooOOO0(Ljava/lang/String;)Lz2/kx;

    move-result-object p1

    invoke-virtual {p0, p1}, Lz2/qx$OooO00o;->OooOOoo(Lz2/kx;)Lz2/qx$OooO00o;

    move-result-object p1

    return-object p1
.end method

.method public OooOOoo(Lz2/kx;)Lz2/qx$OooO00o;
    .locals 1

    const-string v0, "url == null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lz2/qx$OooO00o;->OooO00o:Lz2/kx;

    return-object p0
.end method
