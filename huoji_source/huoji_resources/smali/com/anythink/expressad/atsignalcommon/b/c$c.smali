.class public final Lcom/anythink/expressad/atsignalcommon/b/c$c;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/expressad/atsignalcommon/b/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TC;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TC;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/anythink/expressad/atsignalcommon/b/c$c;->a:Ljava/lang/Class;

    return-void
.end method

.method private varargs a([Ljava/lang/Class;)Lcom/anythink/expressad/atsignalcommon/b/c$d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/anythink/expressad/atsignalcommon/b/c$d;"
        }
    .end annotation

    new-instance v0, Lcom/anythink/expressad/atsignalcommon/b/c$d;

    iget-object v1, p0, Lcom/anythink/expressad/atsignalcommon/b/c$c;->a:Ljava/lang/Class;

    invoke-direct {v0, v1, p1}, Lcom/anythink/expressad/atsignalcommon/b/c$d;-><init>(Ljava/lang/Class;[Ljava/lang/Class;)V

    return-object v0
.end method

.method private a(Ljava/lang/String;)Lcom/anythink/expressad/atsignalcommon/b/c$e;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/anythink/expressad/atsignalcommon/b/c$e<",
            "TC;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/anythink/expressad/atsignalcommon/b/c$e;

    iget-object v1, p0, Lcom/anythink/expressad/atsignalcommon/b/c$c;->a:Ljava/lang/Class;

    const/16 v2, 0x8

    invoke-direct {v0, v1, p1, v2}, Lcom/anythink/expressad/atsignalcommon/b/c$e;-><init>(Ljava/lang/Class;Ljava/lang/String;I)V

    return-object v0
.end method

.method private a()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TC;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/anythink/expressad/atsignalcommon/b/c$c;->a:Ljava/lang/Class;

    return-object v0
.end method

.method private b(Ljava/lang/String;)Lcom/anythink/expressad/atsignalcommon/b/c$e;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/anythink/expressad/atsignalcommon/b/c$e<",
            "TC;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/anythink/expressad/atsignalcommon/b/c$e;

    iget-object v1, p0, Lcom/anythink/expressad/atsignalcommon/b/c$c;->a:Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/anythink/expressad/atsignalcommon/b/c$e;-><init>(Ljava/lang/Class;Ljava/lang/String;I)V

    return-object v0
.end method

.method private varargs b(Ljava/lang/String;[Ljava/lang/Class;)Lcom/anythink/expressad/atsignalcommon/b/c$f;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/anythink/expressad/atsignalcommon/b/c$f;"
        }
    .end annotation

    new-instance v0, Lcom/anythink/expressad/atsignalcommon/b/c$f;

    iget-object v1, p0, Lcom/anythink/expressad/atsignalcommon/b/c$c;->a:Ljava/lang/Class;

    const/16 v2, 0x8

    invoke-direct {v0, v1, p1, p2, v2}, Lcom/anythink/expressad/atsignalcommon/b/c$f;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;I)V

    return-object v0
.end method


# virtual methods
.method public final varargs a(Ljava/lang/String;[Ljava/lang/Class;)Lcom/anythink/expressad/atsignalcommon/b/c$f;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/anythink/expressad/atsignalcommon/b/c$f;"
        }
    .end annotation

    new-instance v0, Lcom/anythink/expressad/atsignalcommon/b/c$f;

    iget-object v1, p0, Lcom/anythink/expressad/atsignalcommon/b/c$c;->a:Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, p2, v2}, Lcom/anythink/expressad/atsignalcommon/b/c$f;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;I)V

    return-object v0
.end method
