.class public Lz2/o000oOoO;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/o00oO0o;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz2/o000oOoO$OooO0O0;
    }
.end annotation


# instance fields
.field private final OooO00o:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lz2/o000oOoO$OooO00o;

    invoke-direct {v0, p0, p1}, Lz2/o000oOoO$OooO00o;-><init>(Lz2/o000oOoO;Landroid/os/Handler;)V

    iput-object v0, p0, Lz2/o000oOoO;->OooO00o:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz2/o000oOoO;->OooO00o:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public OooO00o(Lcom/android/volley/Request;Lz2/oo000o;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request<",
            "*>;",
            "Lz2/oo000o<",
            "*>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lz2/o000oOoO;->OooO0O0(Lcom/android/volley/Request;Lz2/oo000o;Ljava/lang/Runnable;)V

    return-void
.end method

.method public OooO0O0(Lcom/android/volley/Request;Lz2/oo000o;Ljava/lang/Runnable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request<",
            "*>;",
            "Lz2/oo000o<",
            "*>;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/android/volley/Request;->Oooo000()V

    const-string v0, "post-response"

    invoke-virtual {p1, v0}, Lcom/android/volley/Request;->OooO0O0(Ljava/lang/String;)V

    iget-object v0, p0, Lz2/o000oOoO;->OooO00o:Ljava/util/concurrent/Executor;

    new-instance v1, Lz2/o000oOoO$OooO0O0;

    invoke-direct {v1, p0, p1, p2, p3}, Lz2/o000oOoO$OooO0O0;-><init>(Lz2/o000oOoO;Lcom/android/volley/Request;Lz2/oo000o;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public OooO0OO(Lcom/android/volley/Request;Lcom/android/volley/VolleyError;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request<",
            "*>;",
            "Lcom/android/volley/VolleyError;",
            ")V"
        }
    .end annotation

    const-string v0, "post-error"

    invoke-virtual {p1, v0}, Lcom/android/volley/Request;->OooO0O0(Ljava/lang/String;)V

    invoke-static {p2}, Lz2/oo000o;->OooO00o(Lcom/android/volley/VolleyError;)Lz2/oo000o;

    move-result-object p2

    iget-object v0, p0, Lz2/o000oOoO;->OooO00o:Ljava/util/concurrent/Executor;

    new-instance v1, Lz2/o000oOoO$OooO0O0;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lz2/o000oOoO$OooO0O0;-><init>(Lz2/o000oOoO;Lcom/android/volley/Request;Lz2/oo000o;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
