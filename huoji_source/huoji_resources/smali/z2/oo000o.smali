.class public Lz2/oo000o;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz2/oo000o$OooO00o;,
        Lz2/oo000o$OooO0O0;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final OooO00o:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final OooO0O0:Lz2/OooOo$OooO00o;

.field public final OooO0OO:Lcom/android/volley/VolleyError;

.field public OooO0Oo:Z


# direct methods
.method private constructor <init>(Lcom/android/volley/VolleyError;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lz2/oo000o;->OooO0Oo:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lz2/oo000o;->OooO00o:Ljava/lang/Object;

    iput-object v0, p0, Lz2/oo000o;->OooO0O0:Lz2/OooOo$OooO00o;

    iput-object p1, p0, Lz2/oo000o;->OooO0OO:Lcom/android/volley/VolleyError;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Lz2/OooOo$OooO00o;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lz2/OooOo$OooO00o;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lz2/oo000o;->OooO0Oo:Z

    iput-object p1, p0, Lz2/oo000o;->OooO00o:Ljava/lang/Object;

    iput-object p2, p0, Lz2/oo000o;->OooO0O0:Lz2/OooOo$OooO00o;

    const/4 p1, 0x0

    iput-object p1, p0, Lz2/oo000o;->OooO0OO:Lcom/android/volley/VolleyError;

    return-void
.end method

.method public static OooO00o(Lcom/android/volley/VolleyError;)Lz2/oo000o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/volley/VolleyError;",
            ")",
            "Lz2/oo000o<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lz2/oo000o;

    invoke-direct {v0, p0}, Lz2/oo000o;-><init>(Lcom/android/volley/VolleyError;)V

    return-object v0
.end method

.method public static OooO0OO(Ljava/lang/Object;Lz2/OooOo$OooO00o;)Lz2/oo000o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lz2/OooOo$OooO00o;",
            ")",
            "Lz2/oo000o<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lz2/oo000o;

    invoke-direct {v0, p0, p1}, Lz2/oo000o;-><init>(Ljava/lang/Object;Lz2/OooOo$OooO00o;)V

    return-object v0
.end method


# virtual methods
.method public OooO0O0()Z
    .locals 1

    iget-object v0, p0, Lz2/oo000o;->OooO0OO:Lcom/android/volley/VolleyError;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
