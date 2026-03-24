.class public final Lcom/anythink/expressad/atsignalcommon/b/c;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/expressad/atsignalcommon/b/c$c;,
        Lcom/anythink/expressad/atsignalcommon/b/c$d;,
        Lcom/anythink/expressad/atsignalcommon/b/c$f;,
        Lcom/anythink/expressad/atsignalcommon/b/c$e;,
        Lcom/anythink/expressad/atsignalcommon/b/c$a;,
        Lcom/anythink/expressad/atsignalcommon/b/c$b;
    }
.end annotation


# static fields
.field private static a:Lcom/anythink/expressad/atsignalcommon/b/c$a;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/Class;)Lcom/anythink/expressad/atsignalcommon/b/c$c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/anythink/expressad/atsignalcommon/b/c$c<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/anythink/expressad/atsignalcommon/b/c$c;

    invoke-direct {v0, p0}, Lcom/anythink/expressad/atsignalcommon/b/c$c;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method public static a(Ljava/lang/ClassLoader;Ljava/lang/String;)Lcom/anythink/expressad/atsignalcommon/b/c$c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/String;",
            ")",
            "Lcom/anythink/expressad/atsignalcommon/b/c$c<",
            "TT;>;"
        }
    .end annotation

    :try_start_0
    new-instance v0, Lcom/anythink/expressad/atsignalcommon/b/c$c;

    invoke-virtual {p0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/anythink/expressad/atsignalcommon/b/c$c;-><init>(Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/anythink/expressad/atsignalcommon/b/c$b$a;

    invoke-direct {p1, p0}, Lcom/anythink/expressad/atsignalcommon/b/c$b$a;-><init>(Ljava/lang/Exception;)V

    invoke-static {p1}, Lcom/anythink/expressad/atsignalcommon/b/c;->b(Lcom/anythink/expressad/atsignalcommon/b/c$b$a;)V

    new-instance p0, Lcom/anythink/expressad/atsignalcommon/b/c$c;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/anythink/expressad/atsignalcommon/b/c$c;-><init>(Ljava/lang/Class;)V

    return-object p0
.end method

.method private static a(Ljava/lang/String;)Lcom/anythink/expressad/atsignalcommon/b/c$c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lcom/anythink/expressad/atsignalcommon/b/c$c<",
            "TT;>;"
        }
    .end annotation

    :try_start_0
    new-instance v0, Lcom/anythink/expressad/atsignalcommon/b/c$c;

    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/anythink/expressad/atsignalcommon/b/c$c;-><init>(Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    new-instance v0, Lcom/anythink/expressad/atsignalcommon/b/c$b$a;

    invoke-direct {v0, p0}, Lcom/anythink/expressad/atsignalcommon/b/c$b$a;-><init>(Ljava/lang/Exception;)V

    invoke-static {v0}, Lcom/anythink/expressad/atsignalcommon/b/c;->b(Lcom/anythink/expressad/atsignalcommon/b/c$b$a;)V

    new-instance p0, Lcom/anythink/expressad/atsignalcommon/b/c$c;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/anythink/expressad/atsignalcommon/b/c$c;-><init>(Ljava/lang/Class;)V

    return-object p0
.end method

.method private static a(Lcom/anythink/expressad/atsignalcommon/b/c$a;)V
    .locals 0

    sput-object p0, Lcom/anythink/expressad/atsignalcommon/b/c;->a:Lcom/anythink/expressad/atsignalcommon/b/c$a;

    return-void
.end method

.method public static synthetic a(Lcom/anythink/expressad/atsignalcommon/b/c$b$a;)V
    .locals 0

    invoke-static {p0}, Lcom/anythink/expressad/atsignalcommon/b/c;->b(Lcom/anythink/expressad/atsignalcommon/b/c$b$a;)V

    return-void
.end method

.method private static b(Lcom/anythink/expressad/atsignalcommon/b/c$b$a;)V
    .locals 1

    sget-object v0, Lcom/anythink/expressad/atsignalcommon/b/c;->a:Lcom/anythink/expressad/atsignalcommon/b/c$a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/anythink/expressad/atsignalcommon/b/c$a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    throw p0
.end method
