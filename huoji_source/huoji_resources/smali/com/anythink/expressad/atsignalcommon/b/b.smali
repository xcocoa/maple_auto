.class public Lcom/anythink/expressad/atsignalcommon/b/b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/expressad/atsignalcommon/b/b$a;,
        Lcom/anythink/expressad/atsignalcommon/b/b$b;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs a(Ljava/lang/Object;Lcom/anythink/expressad/atsignalcommon/b/b$b;[Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Lcom/anythink/expressad/atsignalcommon/b/b$b<",
            "TT;>;[",
            "Ljava/lang/Class<",
            "*>;)TT;"
        }
    .end annotation

    invoke-virtual {p1, p0}, Lcom/anythink/expressad/atsignalcommon/b/b$b;->a(Ljava/lang/Object;)V

    const-class p0, Lcom/anythink/expressad/atsignalcommon/b/b;

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    invoke-static {p0, p2, p1}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/lang/Object;Ljava/lang/Class;Lcom/anythink/expressad/atsignalcommon/b/b$b;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/anythink/expressad/atsignalcommon/b/b$b<",
            "TT;>;)TT;"
        }
    .end annotation

    instance-of v0, p0, Lcom/anythink/expressad/atsignalcommon/b/b$a;

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p2, p0}, Lcom/anythink/expressad/atsignalcommon/b/b$b;->a(Ljava/lang/Object;)V

    const-class p0, Lcom/anythink/expressad/atsignalcommon/b/b;

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    const-class v1, Lcom/anythink/expressad/atsignalcommon/b/b$a;

    aput-object v1, v0, p1

    invoke-static {p0, v0, p2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
