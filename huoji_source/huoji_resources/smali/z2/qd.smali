.class public Lz2/qd;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final OooO0OO:Ljava/lang/String; = "z2.qd"

.field private static OooO0Oo:Lz2/qd;


# instance fields
.field private OooO00o:Lz2/o00Ooo;

.field private OooO0O0:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/content/Context;",
            "Ljava/util/HashSet<",
            "Lcom/android/volley/Request;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lz2/qd;->OooO0O0:Ljava/util/Map;

    return-void
.end method

.method public static OooO0OO()Lz2/qd;
    .locals 1

    sget-object v0, Lz2/qd;->OooO0Oo:Lz2/qd;

    if-nez v0, :cond_0

    new-instance v0, Lz2/qd;

    invoke-direct {v0}, Lz2/qd;-><init>()V

    sput-object v0, Lz2/qd;->OooO0Oo:Lz2/qd;

    :cond_0
    sget-object v0, Lz2/qd;->OooO0Oo:Lz2/qd;

    return-object v0
.end method


# virtual methods
.method public OooO00o(Landroid/content/Context;Ljava/lang/Object;Lcom/android/volley/Request;)V
    .locals 1

    iget-object v0, p0, Lz2/qd;->OooO00o:Lz2/o00Ooo;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lz2/qd;->OooO0O0:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashSet;

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    :cond_0
    invoke-virtual {p1, p3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {p0, p2}, Lz2/qd;->OooO0o(Ljava/lang/Object;)V

    invoke-virtual {p3, p2}, Lcom/android/volley/Request;->Oooo0oO(Ljava/lang/Object;)Lcom/android/volley/Request;

    iget-object p1, p0, Lz2/qd;->OooO00o:Lz2/o00Ooo;

    invoke-virtual {p1, p3}, Lz2/o00Ooo;->OooO00o(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    goto :goto_0

    :cond_2
    sget-object p1, Lz2/qd;->OooO0OO:Ljava/lang/String;

    const-string p2, "\u4f60\u5e94\u8be5\u5728 application\u4e2d\u521d\u59cb\u5316\u961f\u5217"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public OooO0O0(Ljava/lang/Object;Lcom/android/volley/Request;)V
    .locals 1

    iget-object v0, p0, Lz2/qd;->OooO00o:Lz2/o00Ooo;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lz2/qd;->OooO0o(Ljava/lang/Object;)V

    invoke-virtual {p2, p1}, Lcom/android/volley/Request;->Oooo0oO(Ljava/lang/Object;)Lcom/android/volley/Request;

    iget-object p1, p0, Lz2/qd;->OooO00o:Lz2/o00Ooo;

    invoke-virtual {p1, p2}, Lz2/o00Ooo;->OooO00o(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    iget-object p1, p0, Lz2/qd;->OooO00o:Lz2/o00Ooo;

    invoke-virtual {p1}, Lz2/o00Ooo;->OooO()V

    goto :goto_0

    :cond_0
    sget-object p1, Lz2/qd;->OooO0OO:Ljava/lang/String;

    const-string p2, "\u4f60\u5e94\u8be5\u5728 application\u4e2d\u521d\u59cb\u5316\u961f\u5217"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public OooO0Oo(Landroid/content/Context;)V
    .locals 1

    iget-object v0, p0, Lz2/qd;->OooO00o:Lz2/o00Ooo;

    if-nez v0, :cond_0

    invoke-static {p1}, Lz2/o0000OO0;->OooO00o(Landroid/content/Context;)Lz2/o00Ooo;

    move-result-object p1

    iput-object p1, p0, Lz2/qd;->OooO00o:Lz2/o00Ooo;

    :cond_0
    return-void
.end method

.method public OooO0o(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lz2/qd;->OooO00o:Lz2/o00Ooo;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lz2/o00Ooo;->OooO0Oo(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    sget-object p1, Lz2/qd;->OooO0OO:Ljava/lang/String;

    const-string v0, "\u4f60\u5e94\u8be5\u5728 application\u4e2d\u521d\u59cb\u5316\u961f\u5217"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public OooO0o0(Landroid/content/Context;)V
    .locals 2

    iget-object v0, p0, Lz2/qd;->OooO00o:Lz2/o00Ooo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lz2/qd;->OooO0O0:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashSet;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/volley/Request;

    iget-object v1, p0, Lz2/qd;->OooO00o:Lz2/o00Ooo;

    invoke-virtual {v0}, Lcom/android/volley/Request;->OooOoO()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Lz2/o00Ooo;->OooO0Oo(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    sget-object p1, Lz2/qd;->OooO0OO:Ljava/lang/String;

    const-string v0, "\u4f60\u5e94\u8be5\u5728 application\u4e2d\u521d\u59cb\u5316\u961f\u5217"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method
