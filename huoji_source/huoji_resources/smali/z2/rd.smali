.class public Lz2/rd;
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


# static fields
.field private static final o00oO0o:I = 0xc350


# instance fields
.field private o00o0O:Lz2/md;

.field private o00ooo:Lz2/oo000o$OooO0O0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz2/oo000o$OooO0O0<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private oo000o:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/util/Map;Lz2/oo000o$OooO0O0;Lz2/oo000o$OooO00o;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lz2/oo000o$OooO0O0<",
            "Ljava/lang/Object;",
            ">;",
            "Lz2/oo000o$OooO00o;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p5}, Lcom/android/volley/Request;-><init>(ILjava/lang/String;Lz2/oo000o$OooO00o;)V

    iput-object p4, p0, Lz2/rd;->o00ooo:Lz2/oo000o$OooO0O0;

    iput-object p3, p0, Lz2/rd;->oo000o:Ljava/util/Map;

    new-instance p1, Lz2/Oooo0;

    const p2, 0xc350

    const/4 p3, 0x0

    const/high16 p4, 0x3f800000    # 1.0f

    invoke-direct {p1, p2, p3, p4}, Lz2/Oooo0;-><init>(IIF)V

    invoke-virtual {p0, p1}, Lcom/android/volley/Request;->Oooo0OO(Lz2/o0ooOOo;)Lcom/android/volley/Request;

    invoke-virtual {p0, p3}, Lcom/android/volley/Request;->Oooo0o(Z)Lcom/android/volley/Request;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;Lz2/oo000o$OooO0O0;Lz2/oo000o$OooO00o;Lz2/md;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lz2/oo000o$OooO0O0<",
            "Ljava/lang/Object;",
            ">;",
            "Lz2/oo000o$OooO00o;",
            "Lz2/md;",
            ")V"
        }
    .end annotation

    const/4 v1, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lz2/rd;-><init>(ILjava/lang/String;Ljava/util/Map;Lz2/oo000o$OooO0O0;Lz2/oo000o$OooO00o;)V

    iput-object p5, p0, Lz2/rd;->o00o0O:Lz2/md;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lz2/oo000o$OooO0O0;Lz2/oo000o$OooO00o;Lz2/md;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lz2/oo000o$OooO0O0<",
            "Ljava/lang/Object;",
            ">;",
            "Lz2/oo000o$OooO00o;",
            "Lz2/md;",
            ")V"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lz2/rd;-><init>(ILjava/lang/String;Ljava/util/Map;Lz2/oo000o$OooO0O0;Lz2/oo000o$OooO00o;)V

    iput-object p4, p0, Lz2/rd;->o00o0O:Lz2/md;

    return-void
.end method


# virtual methods
.method public OooO0o(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lz2/rd;->o00ooo:Lz2/oo000o$OooO0O0;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lz2/oo000o$OooO0O0;->onResponse(Ljava/lang/Object;)V

    :cond_0
    return-void
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

    iget-object v0, p0, Lz2/rd;->oo000o:Ljava/util/Map;

    return-object v0
.end method

.method public OooOo0o()Lcom/android/volley/Request$Priority;
    .locals 1

    sget-object v0, Lcom/android/volley/Request$Priority;->HIGH:Lcom/android/volley/Request$Priority;

    return-object v0
.end method

.method public Oooo00o(Lz2/o00Oo0;)Lz2/oo000o;
    .locals 3
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

    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lz2/o00Oo0;->OooO0O0:[B

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iget-object v1, p0, Lz2/rd;->o00o0O:Lz2/md;

    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Lz2/md;->OooO0Oo(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1}, Lz2/o00000;->OooO00o(Lz2/o00Oo0;)Lz2/OooOo$OooO00o;

    move-result-object p1

    invoke-static {v0, p1}, Lz2/oo000o;->OooO0OO(Ljava/lang/Object;Lz2/OooOo$OooO00o;)Lz2/oo000o;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Lcom/android/volley/ParseError;

    invoke-direct {v0, p1}, Lcom/android/volley/ParseError;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v0}, Lz2/oo000o;->OooO00o(Lcom/android/volley/VolleyError;)Lz2/oo000o;

    move-result-object p1

    return-object p1
.end method
