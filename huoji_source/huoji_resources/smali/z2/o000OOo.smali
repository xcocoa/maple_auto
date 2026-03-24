.class public Lz2/o000OOo;
.super Lcom/android/volley/Request;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/volley/Request<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final o00o0O:Lz2/OooOo;

.field private final o00ooo:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lz2/OooOo;Ljava/lang/Runnable;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1}, Lcom/android/volley/Request;-><init>(ILjava/lang/String;Lz2/oo000o$OooO00o;)V

    iput-object p1, p0, Lz2/o000OOo;->o00o0O:Lz2/OooOo;

    iput-object p2, p0, Lz2/o000OOo;->o00ooo:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public OooO0o(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public OooOo0o()Lcom/android/volley/Request$Priority;
    .locals 1

    sget-object v0, Lcom/android/volley/Request$Priority;->IMMEDIATE:Lcom/android/volley/Request$Priority;

    return-object v0
.end method

.method public OooOooo()Z
    .locals 2

    iget-object v0, p0, Lz2/o000OOo;->o00o0O:Lz2/OooOo;

    invoke-interface {v0}, Lz2/OooOo;->clear()V

    iget-object v0, p0, Lz2/o000OOo;->o00ooo:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v1, p0, Lz2/o000OOo;->o00ooo:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public Oooo00o(Lz2/o00Oo0;)Lz2/oo000o;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/o00Oo0;",
            ")",
            "Lz2/oo000o<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method
