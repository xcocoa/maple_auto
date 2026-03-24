.class public final Lcom/anythink/expressad/atsignalcommon/b/c$e;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/expressad/atsignalcommon/b/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/Object;

.field private final b:Ljava/lang/reflect/Field;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TC;>;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iput-object v0, p0, Lcom/anythink/expressad/atsignalcommon/b/c$e;->b:Ljava/lang/reflect/Field;

    return-void

    :cond_0
    :try_start_0
    iput-object v0, p0, Lcom/anythink/expressad/atsignalcommon/b/c$e;->a:Ljava/lang/Object;

    invoke-virtual {p1, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-lez p3, :cond_1

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v1

    and-int/2addr v1, p3

    if-eq v1, p3, :cond_1

    new-instance v1, Lcom/anythink/expressad/atsignalcommon/b/c$b$a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " does not match modifiers: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {v1, p3}, Lcom/anythink/expressad/atsignalcommon/b/c$b$a;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/anythink/expressad/atsignalcommon/b/c;->a(Lcom/anythink/expressad/atsignalcommon/b/c$b$a;)V

    :cond_1
    const/4 p3, 0x1

    invoke-virtual {v0, p3}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v0, p0, Lcom/anythink/expressad/atsignalcommon/b/c$e;->b:Ljava/lang/reflect/Field;

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p3

    :try_start_1
    new-instance v1, Lcom/anythink/expressad/atsignalcommon/b/c$b$a;

    invoke-direct {v1, p3}, Lcom/anythink/expressad/atsignalcommon/b/c$b$a;-><init>(Ljava/lang/Exception;)V

    invoke-virtual {v1, p1}, Lcom/anythink/expressad/atsignalcommon/b/c$b$a;->a(Ljava/lang/Class;)V

    invoke-virtual {v1, p2}, Lcom/anythink/expressad/atsignalcommon/b/c$b$a;->b(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/anythink/expressad/atsignalcommon/b/c;->a(Lcom/anythink/expressad/atsignalcommon/b/c$b$a;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iput-object v0, p0, Lcom/anythink/expressad/atsignalcommon/b/c$e;->b:Ljava/lang/reflect/Field;

    return-void

    :goto_0
    iput-object v0, p0, Lcom/anythink/expressad/atsignalcommon/b/c$e;->b:Ljava/lang/reflect/Field;

    throw p1
.end method

.method private a(Ljava/lang/Class;)Lcom/anythink/expressad/atsignalcommon/b/c$e;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T2:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/anythink/expressad/atsignalcommon/b/c$e<",
            "TC;TT2;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/anythink/expressad/atsignalcommon/b/c$e;->b:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/anythink/expressad/atsignalcommon/b/c$b$a;

    new-instance v1, Ljava/lang/ClassCastException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/anythink/expressad/atsignalcommon/b/c$e;->b:Ljava/lang/reflect/Field;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " is not of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/anythink/expressad/atsignalcommon/b/c$b$a;-><init>(Ljava/lang/Exception;)V

    invoke-static {v0}, Lcom/anythink/expressad/atsignalcommon/b/c;->a(Lcom/anythink/expressad/atsignalcommon/b/c$b$a;)V

    :cond_0
    return-object p0
.end method

.method private a(Ljava/lang/String;)Lcom/anythink/expressad/atsignalcommon/b/c$e;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/anythink/expressad/atsignalcommon/b/c$e<",
            "TC;TT;>;"
        }
    .end annotation

    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    iget-object v0, p0, Lcom/anythink/expressad/atsignalcommon/b/c$e;->b:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/anythink/expressad/atsignalcommon/b/c$b$a;

    new-instance v1, Ljava/lang/ClassCastException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/anythink/expressad/atsignalcommon/b/c$e;->b:Ljava/lang/reflect/Field;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " is not of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/anythink/expressad/atsignalcommon/b/c$b$a;-><init>(Ljava/lang/Exception;)V

    invoke-static {v0}, Lcom/anythink/expressad/atsignalcommon/b/c;->a(Lcom/anythink/expressad/atsignalcommon/b/c$b$a;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object p0

    :catch_0
    move-exception p1

    new-instance v0, Lcom/anythink/expressad/atsignalcommon/b/c$b$a;

    invoke-direct {v0, p1}, Lcom/anythink/expressad/atsignalcommon/b/c$b$a;-><init>(Ljava/lang/Exception;)V

    invoke-static {v0}, Lcom/anythink/expressad/atsignalcommon/b/c;->a(Lcom/anythink/expressad/atsignalcommon/b/c$b$a;)V

    return-object p0
.end method

.method private a()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/anythink/expressad/atsignalcommon/b/c$e;->b:Ljava/lang/reflect/Field;

    iget-object v1, p0, Lcom/anythink/expressad/atsignalcommon/b/c$e;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method private a(Lcom/anythink/expressad/atsignalcommon/b/b$b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/anythink/expressad/atsignalcommon/b/b$b<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/anythink/expressad/atsignalcommon/b/c$e;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/anythink/expressad/atsignalcommon/b/b;->a(Ljava/lang/Object;Lcom/anythink/expressad/atsignalcommon/b/b$b;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    :try_start_0
    iget-object v0, p0, Lcom/anythink/expressad/atsignalcommon/b/c$e;->b:Ljava/lang/reflect/Field;

    iget-object v1, p0, Lcom/anythink/expressad/atsignalcommon/b/c$e;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot mapping null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(Ljava/lang/Object;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/anythink/expressad/atsignalcommon/b/c$e;->b:Ljava/lang/reflect/Field;

    iget-object v1, p0, Lcom/anythink/expressad/atsignalcommon/b/c$e;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    return-void
.end method

.method private b(Ljava/lang/Class;)Lcom/anythink/expressad/atsignalcommon/b/c$e;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T2:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT2;>;)",
            "Lcom/anythink/expressad/atsignalcommon/b/c$e<",
            "TC;TT2;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/anythink/expressad/atsignalcommon/b/c$e;->b:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/anythink/expressad/atsignalcommon/b/c$b$a;

    new-instance v1, Ljava/lang/ClassCastException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/anythink/expressad/atsignalcommon/b/c$e;->b:Ljava/lang/reflect/Field;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " is not of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/anythink/expressad/atsignalcommon/b/c$b$a;-><init>(Ljava/lang/Exception;)V

    invoke-static {v0}, Lcom/anythink/expressad/atsignalcommon/b/c;->a(Lcom/anythink/expressad/atsignalcommon/b/c$b$a;)V

    :cond_0
    return-object p0
.end method

.method private b(Ljava/lang/Object;)Lcom/anythink/expressad/atsignalcommon/b/c$e;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)",
            "Lcom/anythink/expressad/atsignalcommon/b/c$e<",
            "TC;TT;>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/anythink/expressad/atsignalcommon/b/c$e;->a:Ljava/lang/Object;

    return-object p0
.end method

.method private b()Ljava/lang/reflect/Field;
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/atsignalcommon/b/c$e;->b:Ljava/lang/reflect/Field;

    return-object v0
.end method
