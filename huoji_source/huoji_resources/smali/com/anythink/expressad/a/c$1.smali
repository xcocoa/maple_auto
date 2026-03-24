.class public final Lcom/anythink/expressad/a/c$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/expressad/foundation/g/g/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/expressad/a/c;->a(Ljava/lang/String;Ljava/lang/String;Lcom/anythink/expressad/foundation/d/c;Lcom/anythink/expressad/a/e;Lcom/anythink/expressad/c/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/expressad/a/c;


# direct methods
.method private constructor <init>(Lcom/anythink/expressad/a/c;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/a/c$1;->a:Lcom/anythink/expressad/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/anythink/expressad/foundation/g/g/a$a;)V
    .locals 1

    sget-object v0, Lcom/anythink/expressad/foundation/g/g/a$a;->e:Lcom/anythink/expressad/foundation/g/g/a$a;

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/anythink/expressad/a/c$1;->a:Lcom/anythink/expressad/a/c;

    invoke-static {p1}, Lcom/anythink/expressad/a/c;->a(Lcom/anythink/expressad/a/c;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/anythink/expressad/a/c$1;->a:Lcom/anythink/expressad/a/c;

    invoke-static {p1}, Lcom/anythink/expressad/a/c;->c(Lcom/anythink/expressad/a/c;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/anythink/expressad/a/c$1$1;

    invoke-direct {v0, p0}, Lcom/anythink/expressad/a/c$1$1;-><init>(Lcom/anythink/expressad/a/c$1;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method
