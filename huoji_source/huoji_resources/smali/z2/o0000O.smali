.class public Lz2/o0000O;
.super Lcom/android/volley/Request;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/volley/Request<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final o00o0O:Lz2/oo000o$OooO0O0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz2/oo000o$OooO0O0<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/String;Lz2/oo000o$OooO0O0;Lz2/oo000o$OooO00o;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lz2/oo000o$OooO0O0<",
            "Ljava/lang/String;",
            ">;",
            "Lz2/oo000o$OooO00o;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p4}, Lcom/android/volley/Request;-><init>(ILjava/lang/String;Lz2/oo000o$OooO00o;)V

    iput-object p3, p0, Lz2/o0000O;->o00o0O:Lz2/oo000o$OooO0O0;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lz2/oo000o$OooO0O0;Lz2/oo000o$OooO00o;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lz2/oo000o$OooO0O0<",
            "Ljava/lang/String;",
            ">;",
            "Lz2/oo000o$OooO00o;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Lz2/o0000O;-><init>(ILjava/lang/String;Lz2/oo000o$OooO0O0;Lz2/oo000o$OooO00o;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic OooO0o(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lz2/o0000O;->Oooo(Ljava/lang/String;)V

    return-void
.end method

.method public Oooo(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lz2/o0000O;->o00o0O:Lz2/oo000o$OooO0O0;

    invoke-interface {v0, p1}, Lz2/oo000o$OooO0O0;->onResponse(Ljava/lang/Object;)V

    return-void
.end method

.method public Oooo00o(Lz2/o00Oo0;)Lz2/oo000o;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/o00Oo0;",
            ")",
            "Lz2/oo000o<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lz2/o00Oo0;->OooO0O0:[B

    iget-object v2, p1, Lz2/o00Oo0;->OooO0OO:Ljava/util/Map;

    invoke-static {v2}, Lz2/o00000;->OooO0O0(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lz2/o00Oo0;->OooO0O0:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    :goto_0
    invoke-static {p1}, Lz2/o00000;->OooO00o(Lz2/o00Oo0;)Lz2/OooOo$OooO00o;

    move-result-object p1

    invoke-static {v0, p1}, Lz2/oo000o;->OooO0OO(Ljava/lang/Object;Lz2/OooOo$OooO00o;)Lz2/oo000o;

    move-result-object p1

    return-object p1
.end method
