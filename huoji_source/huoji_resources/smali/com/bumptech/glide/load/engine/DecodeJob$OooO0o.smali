.class public Lcom/bumptech/glide/load/engine/DecodeJob$OooO0o;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/DecodeJob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OooO0o"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Z:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private OooO00o:Lz2/o0O0O0Oo;

.field private OooO0O0:Lz2/oo0OOoo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz2/oo0OOoo<",
            "TZ;>;"
        }
    .end annotation
.end field

.field private OooO0OO:Lz2/oO000O0O;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz2/oO000O0O<",
            "TZ;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OooO00o()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob$OooO0o;->OooO00o:Lz2/o0O0O0Oo;

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob$OooO0o;->OooO0O0:Lz2/oo0OOoo;

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob$OooO0o;->OooO0OO:Lz2/oO000O0O;

    return-void
.end method

.method public OooO0O0(Lcom/bumptech/glide/load/engine/DecodeJob$OooO;Lz2/o0O0OOO0;)V
    .locals 4

    const-string v0, "DecodeJob.encode"

    invoke-static {v0}, Lz2/w2;->OooO00o(Ljava/lang/String;)V

    :try_start_0
    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/DecodeJob$OooO;->OooO00o()Lz2/oO00Oo0;

    move-result-object p1

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob$OooO0o;->OooO00o:Lz2/o0O0O0Oo;

    new-instance v1, Lz2/o0OOOO0o;

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/DecodeJob$OooO0o;->OooO0O0:Lz2/oo0OOoo;

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/DecodeJob$OooO0o;->OooO0OO:Lz2/oO000O0O;

    invoke-direct {v1, v2, v3, p2}, Lz2/o0OOOO0o;-><init>(Lz2/o0oO0O0o;Ljava/lang/Object;Lz2/o0O0OOO0;)V

    invoke-interface {p1, v0, v1}, Lz2/oO00Oo0;->OooO00o(Lz2/o0O0O0Oo;Lz2/oO00Oo0$OooO0O0;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/bumptech/glide/load/engine/DecodeJob$OooO0o;->OooO0OO:Lz2/oO000O0O;

    invoke-virtual {p1}, Lz2/oO000O0O;->OooO0o0()V

    invoke-static {}, Lz2/w2;->OooO0o0()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/bumptech/glide/load/engine/DecodeJob$OooO0o;->OooO0OO:Lz2/oO000O0O;

    invoke-virtual {p2}, Lz2/oO000O0O;->OooO0o0()V

    invoke-static {}, Lz2/w2;->OooO0o0()V

    throw p1
.end method

.method public OooO0OO()Z
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob$OooO0o;->OooO0OO:Lz2/oO000O0O;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public OooO0Oo(Lz2/o0O0O0Oo;Lz2/oo0OOoo;Lz2/oO000O0O;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(",
            "Lz2/o0O0O0Oo;",
            "Lz2/oo0OOoo<",
            "TX;>;",
            "Lz2/oO000O0O<",
            "TX;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/bumptech/glide/load/engine/DecodeJob$OooO0o;->OooO00o:Lz2/o0O0O0Oo;

    iput-object p2, p0, Lcom/bumptech/glide/load/engine/DecodeJob$OooO0o;->OooO0O0:Lz2/oo0OOoo;

    iput-object p3, p0, Lcom/bumptech/glide/load/engine/DecodeJob$OooO0o;->OooO0OO:Lz2/oO000O0O;

    return-void
.end method
