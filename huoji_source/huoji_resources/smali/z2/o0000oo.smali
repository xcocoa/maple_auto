.class public abstract Lz2/o0000oo;
.super Lcom/android/volley/Request;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/android/volley/Request<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final o00oO0o:Ljava/lang/String;

.field public static final oo000o:Ljava/lang/String; = "utf-8"


# instance fields
.field private final o00o0O:Lz2/oo000o$OooO0O0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz2/oo000o$OooO0O0<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final o00ooo:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "utf-8"

    aput-object v2, v0, v1

    const-string v1, "application/json; charset=%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lz2/o0000oo;->o00oO0o:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Lz2/oo000o$OooO0O0;Lz2/oo000o$OooO00o;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lz2/oo000o$OooO0O0<",
            "TT;>;",
            "Lz2/oo000o$OooO00o;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p5}, Lcom/android/volley/Request;-><init>(ILjava/lang/String;Lz2/oo000o$OooO00o;)V

    iput-object p4, p0, Lz2/o0000oo;->o00o0O:Lz2/oo000o$OooO0O0;

    iput-object p3, p0, Lz2/o0000oo;->o00ooo:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lz2/oo000o$OooO0O0;Lz2/oo000o$OooO00o;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lz2/oo000o$OooO0O0<",
            "TT;>;",
            "Lz2/oo000o$OooO00o;",
            ")V"
        }
    .end annotation

    const/4 v1, -0x1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lz2/o0000oo;-><init>(ILjava/lang/String;Ljava/lang/String;Lz2/oo000o$OooO0O0;Lz2/oo000o$OooO00o;)V

    return-void
.end method


# virtual methods
.method public OooO0o(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lz2/o0000oo;->o00o0O:Lz2/oo000o$OooO0O0;

    invoke-interface {v0, p1}, Lz2/oo000o$OooO0O0;->onResponse(Ljava/lang/Object;)V

    return-void
.end method

.method public OooOO0()[B
    .locals 5

    const-string v0, "utf-8"

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lz2/o0000oo;->o00ooo:Ljava/lang/String;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lz2/o0000oo;->o00ooo:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const-string v0, "Unsupported Encoding while trying to get the bytes of %s using %s"

    invoke-static {v0, v2}, Lz2/o0OOO0o;->OooO0oO(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1
.end method

.method public OooOO0O()Ljava/lang/String;
    .locals 1

    sget-object v0, Lz2/o0000oo;->o00oO0o:Ljava/lang/String;

    return-object v0
.end method

.method public OooOOoo()[B
    .locals 1

    invoke-virtual {p0}, Lz2/o0000oo;->OooOO0()[B

    move-result-object v0

    return-object v0
.end method

.method public OooOo00()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lz2/o0000oo;->OooOO0O()Ljava/lang/String;

    move-result-object v0

    return-object v0
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
