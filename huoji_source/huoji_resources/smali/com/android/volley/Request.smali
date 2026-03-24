.class public abstract Lcom/android/volley/Request;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/volley/Request$Priority;,
        Lcom/android/volley/Request$OooO0O0;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/android/volley/Request<",
        "TT;>;>;"
    }
.end annotation


# static fields
.field private static final o00Oo0:Ljava/lang/String; = "UTF-8"

.field private static final o00Ooo:J = 0xbb8L


# instance fields
.field private final OoooOoO:Lz2/o0OOO0o$OooO00o;

.field private final OoooOoo:I

.field private final Ooooo00:Ljava/lang/String;

.field private final Ooooo0o:I

.field private final OooooO0:Lz2/oo000o$OooO00o;

.field private OooooOO:Ljava/lang/Integer;

.field private OooooOo:Lz2/o00Ooo;

.field private Oooooo:Z

.field private Oooooo0:Z

.field private OoooooO:Z

.field private Ooooooo:J

.field private o00O0O:Ljava/lang/Object;

.field private o0OoOo0:Lz2/o0ooOOo;

.field private ooOO:Lz2/OooOo$OooO00o;


# direct methods
.method public constructor <init>(ILjava/lang/String;Lz2/oo000o$OooO00o;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Lz2/o0OOO0o$OooO00o;->OooO0OO:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Lz2/o0OOO0o$OooO00o;

    invoke-direct {v0}, Lz2/o0OOO0o$OooO00o;-><init>()V

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/android/volley/Request;->OoooOoO:Lz2/o0OOO0o$OooO00o;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/volley/Request;->Oooooo0:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/volley/Request;->Oooooo:Z

    iput-boolean v0, p0, Lcom/android/volley/Request;->OoooooO:Z

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/volley/Request;->Ooooooo:J

    iput-object v1, p0, Lcom/android/volley/Request;->ooOO:Lz2/OooOo$OooO00o;

    iput p1, p0, Lcom/android/volley/Request;->OoooOoo:I

    iput-object p2, p0, Lcom/android/volley/Request;->Ooooo00:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/volley/Request;->OooooO0:Lz2/oo000o$OooO00o;

    new-instance p1, Lz2/Oooo0;

    invoke-direct {p1}, Lz2/Oooo0;-><init>()V

    invoke-virtual {p0, p1}, Lcom/android/volley/Request;->Oooo0OO(Lz2/o0ooOOo;)Lcom/android/volley/Request;

    invoke-static {p2}, Lcom/android/volley/Request;->OooO0oo(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/volley/Request;->Ooooo0o:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lz2/oo000o$OooO00o;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, -0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/android/volley/Request;-><init>(ILjava/lang/String;Lz2/oo000o$OooO00o;)V

    return-void
.end method

.method public static synthetic OooO00o(Lcom/android/volley/Request;)Lz2/o0OOO0o$OooO00o;
    .locals 0

    iget-object p0, p0, Lcom/android/volley/Request;->OoooOoO:Lz2/o0OOO0o$OooO00o;

    return-object p0
.end method

.method private OooO0oO(Ljava/util/Map;Ljava/lang/String;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")[B"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2, p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x3d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1, p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Encoding not supported: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static OooO0oo(Ljava/lang/String;)I
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public OooO(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/android/volley/Request;->OooooOo:Lz2/o00Ooo;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lz2/o00Ooo;->OooO0o0(Lcom/android/volley/Request;)V

    :cond_0
    sget-boolean v0, Lz2/o0OOO0o$OooO00o;->OooO0OO:Z

    if-eqz v0, :cond_2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-eq v2, v3, :cond_1

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lcom/android/volley/Request$OooO00o;

    invoke-direct {v3, p0, p1, v0, v1}, Lcom/android/volley/Request$OooO00o;-><init>(Lcom/android/volley/Request;Ljava/lang/String;J)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/volley/Request;->OoooOoO:Lz2/o0OOO0o$OooO00o;

    invoke-virtual {v2, p1, v0, v1}, Lz2/o0OOO0o$OooO00o;->OooO00o(Ljava/lang/String;J)V

    iget-object p1, p0, Lcom/android/volley/Request;->OoooOoO:Lz2/o0OOO0o$OooO00o;

    invoke-virtual {p0}, Lcom/android/volley/Request;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lz2/o0OOO0o$OooO00o;->OooO0O0(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/volley/Request;->Ooooooo:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xbb8

    cmp-long p1, v0, v2

    if-ltz p1, :cond_3

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, p1, v2

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/android/volley/Request;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    const-string v0, "%d ms: %s"

    invoke-static {v0, p1}, Lz2/o0OOO0o;->OooO0O0(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public OooO0O0(Ljava/lang/String;)V
    .locals 4

    sget-boolean v0, Lz2/o0OOO0o$OooO00o;->OooO0OO:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/volley/Request;->OoooOoO:Lz2/o0OOO0o$OooO00o;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lz2/o0OOO0o$OooO00o;->OooO00o(Ljava/lang/String;J)V

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/android/volley/Request;->Ooooooo:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/volley/Request;->Ooooooo:J

    :cond_1
    :goto_0
    return-void
.end method

.method public OooO0OO()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/volley/Request;->Oooooo:Z

    return-void
.end method

.method public OooO0Oo(Lcom/android/volley/Request;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request<",
            "TT;>;)I"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/volley/Request;->OooOo0o()Lcom/android/volley/Request$Priority;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/volley/Request;->OooOo0o()Lcom/android/volley/Request$Priority;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/volley/Request;->OooooOO:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object p1, p1, Lcom/android/volley/Request;->OooooOO:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sub-int/2addr v0, p1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sub-int v0, p1, v0

    :goto_0
    return v0
.end method

.method public abstract OooO0o(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public OooO0o0(Lcom/android/volley/VolleyError;)V
    .locals 1

    iget-object v0, p0, Lcom/android/volley/Request;->OooooO0:Lz2/oo000o$OooO00o;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lz2/oo000o$OooO00o;->OooO0O0(Lcom/android/volley/VolleyError;)V

    :cond_0
    return-void
.end method

.method public OooOO0()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/AuthFailureError;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/volley/Request;->OooOOo0()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/volley/Request;->OooOOo()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/volley/Request;->OooO0oO(Ljava/util/Map;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public OooOO0O()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "application/x-www-form-urlencoded; charset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/volley/Request;->OooOOo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public OooOO0o()Lz2/OooOo$OooO00o;
    .locals 1

    iget-object v0, p0, Lcom/android/volley/Request;->ooOO:Lz2/OooOo$OooO00o;

    return-object v0
.end method

.method public OooOOO()Lz2/oo000o$OooO00o;
    .locals 1

    iget-object v0, p0, Lcom/android/volley/Request;->OooooO0:Lz2/oo000o$OooO00o;

    return-object v0
.end method

.method public OooOOO0()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/android/volley/Request;->OooOoo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public OooOOOO()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/AuthFailureError;
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public OooOOOo()I
    .locals 1

    iget v0, p0, Lcom/android/volley/Request;->OoooOoo:I

    return v0
.end method

.method public OooOOo()Ljava/lang/String;
    .locals 1

    const-string v0, "UTF-8"

    return-object v0
.end method

.method public OooOOo0()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/AuthFailureError;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public OooOOoo()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/AuthFailureError;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/android/volley/Request;->OooOo0()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/volley/Request;->OooOo0O()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/volley/Request;->OooO0oO(Ljava/util/Map;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public OooOo()Lz2/o0ooOOo;
    .locals 1

    iget-object v0, p0, Lcom/android/volley/Request;->o0OoOo0:Lz2/o0ooOOo;

    return-object v0
.end method

.method public OooOo0()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/AuthFailureError;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/android/volley/Request;->OooOOo0()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public OooOo00()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/android/volley/Request;->OooOO0O()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public OooOo0O()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/android/volley/Request;->OooOOo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public OooOo0o()Lcom/android/volley/Request$Priority;
    .locals 1

    sget-object v0, Lcom/android/volley/Request$Priority;->NORMAL:Lcom/android/volley/Request$Priority;

    return-object v0
.end method

.method public OooOoO()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/volley/Request;->o00O0O:Ljava/lang/Object;

    return-object v0
.end method

.method public final OooOoO0()I
    .locals 2

    iget-object v0, p0, Lcom/android/volley/Request;->OooooOO:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getSequence called before setSequence"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final OooOoOO()I
    .locals 1

    iget-object v0, p0, Lcom/android/volley/Request;->o0OoOo0:Lz2/o0ooOOo;

    invoke-interface {v0}, Lz2/o0ooOOo;->OooO0O0()I

    move-result v0

    return v0
.end method

.method public OooOoo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/volley/Request;->Ooooo00:Ljava/lang/String;

    return-object v0
.end method

.method public OooOoo0()I
    .locals 1

    iget v0, p0, Lcom/android/volley/Request;->Ooooo0o:I

    return v0
.end method

.method public OooOooO()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/volley/Request;->OoooooO:Z

    return v0
.end method

.method public OooOooo()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/volley/Request;->Oooooo:Z

    return v0
.end method

.method public Oooo0(Lz2/OooOo$OooO00o;)Lcom/android/volley/Request;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/OooOo$OooO00o;",
            ")",
            "Lcom/android/volley/Request<",
            "*>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/volley/Request;->ooOO:Lz2/OooOo$OooO00o;

    return-object p0
.end method

.method public Oooo000()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/volley/Request;->OoooooO:Z

    return-void
.end method

.method public Oooo00O(Lcom/android/volley/VolleyError;)Lcom/android/volley/VolleyError;
    .locals 0

    return-object p1
.end method

.method public abstract Oooo00o(Lz2/o00Oo0;)Lz2/oo000o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/o00Oo0;",
            ")",
            "Lz2/oo000o<",
            "TT;>;"
        }
    .end annotation
.end method

.method public Oooo0O0(Lz2/o00Ooo;)Lcom/android/volley/Request;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/o00Ooo;",
            ")",
            "Lcom/android/volley/Request<",
            "*>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/volley/Request;->OooooOo:Lz2/o00Ooo;

    return-object p0
.end method

.method public Oooo0OO(Lz2/o0ooOOo;)Lcom/android/volley/Request;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/o0ooOOo;",
            ")",
            "Lcom/android/volley/Request<",
            "*>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/volley/Request;->o0OoOo0:Lz2/o0ooOOo;

    return-object p0
.end method

.method public final Oooo0o(Z)Lcom/android/volley/Request;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/android/volley/Request<",
            "*>;"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/android/volley/Request;->Oooooo0:Z

    return-object p0
.end method

.method public final Oooo0o0(I)Lcom/android/volley/Request;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/android/volley/Request<",
            "*>;"
        }
    .end annotation

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/volley/Request;->OooooOO:Ljava/lang/Integer;

    return-object p0
.end method

.method public Oooo0oO(Ljava/lang/Object;)Lcom/android/volley/Request;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/android/volley/Request<",
            "*>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/volley/Request;->o00O0O:Ljava/lang/Object;

    return-object p0
.end method

.method public final Oooo0oo()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/volley/Request;->Oooooo0:Z

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/android/volley/Request;

    invoke-virtual {p0, p1}, Lcom/android/volley/Request;->OooO0Oo(Lcom/android/volley/Request;)I

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/volley/Request;->OooOoo0()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v2, p0, Lcom/android/volley/Request;->Oooooo:Z

    if-eqz v2, :cond_0

    const-string v2, "[X] "

    goto :goto_0

    :cond_0
    const-string v2, "[ ] "

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/volley/Request;->OooOoo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/volley/Request;->OooOo0o()Lcom/android/volley/Request$Priority;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/volley/Request;->OooooOO:Ljava/lang/Integer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
