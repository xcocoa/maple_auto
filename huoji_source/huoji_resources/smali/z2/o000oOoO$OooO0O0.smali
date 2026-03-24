.class public Lz2/o000oOoO$OooO0O0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/o000oOoO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OooO0O0"
.end annotation


# instance fields
.field private final OoooOoO:Lcom/android/volley/Request;

.field private final OoooOoo:Lz2/oo000o;

.field private final Ooooo00:Ljava/lang/Runnable;

.field public final synthetic Ooooo0o:Lz2/o000oOoO;


# direct methods
.method public constructor <init>(Lz2/o000oOoO;Lcom/android/volley/Request;Lz2/oo000o;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lz2/o000oOoO$OooO0O0;->Ooooo0o:Lz2/o000oOoO;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lz2/o000oOoO$OooO0O0;->OoooOoO:Lcom/android/volley/Request;

    iput-object p3, p0, Lz2/o000oOoO$OooO0O0;->OoooOoo:Lz2/oo000o;

    iput-object p4, p0, Lz2/o000oOoO$OooO0O0;->Ooooo00:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lz2/o000oOoO$OooO0O0;->OoooOoO:Lcom/android/volley/Request;

    invoke-virtual {v0}, Lcom/android/volley/Request;->OooOooo()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lz2/o000oOoO$OooO0O0;->OoooOoO:Lcom/android/volley/Request;

    const-string v1, "canceled-at-delivery"

    invoke-virtual {v0, v1}, Lcom/android/volley/Request;->OooO(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lz2/o000oOoO$OooO0O0;->OoooOoo:Lz2/oo000o;

    invoke-virtual {v0}, Lz2/oo000o;->OooO0O0()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lz2/o000oOoO$OooO0O0;->OoooOoO:Lcom/android/volley/Request;

    iget-object v1, p0, Lz2/o000oOoO$OooO0O0;->OoooOoo:Lz2/oo000o;

    iget-object v1, v1, Lz2/oo000o;->OooO00o:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/android/volley/Request;->OooO0o(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lz2/o000oOoO$OooO0O0;->OoooOoO:Lcom/android/volley/Request;

    iget-object v1, p0, Lz2/o000oOoO$OooO0O0;->OoooOoo:Lz2/oo000o;

    iget-object v1, v1, Lz2/oo000o;->OooO0OO:Lcom/android/volley/VolleyError;

    invoke-virtual {v0, v1}, Lcom/android/volley/Request;->OooO0o0(Lcom/android/volley/VolleyError;)V

    :goto_0
    iget-object v0, p0, Lz2/o000oOoO$OooO0O0;->OoooOoo:Lz2/oo000o;

    iget-boolean v0, v0, Lz2/oo000o;->OooO0Oo:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lz2/o000oOoO$OooO0O0;->OoooOoO:Lcom/android/volley/Request;

    const-string v1, "intermediate-response"

    invoke-virtual {v0, v1}, Lcom/android/volley/Request;->OooO0O0(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lz2/o000oOoO$OooO0O0;->OoooOoO:Lcom/android/volley/Request;

    const-string v1, "done"

    invoke-virtual {v0, v1}, Lcom/android/volley/Request;->OooO(Ljava/lang/String;)V

    :goto_1
    iget-object v0, p0, Lz2/o000oOoO$OooO0O0;->Ooooo00:Ljava/lang/Runnable;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_3
    return-void
.end method
