.class public final Lcom/anythink/expressad/a/c$1$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/expressad/a/c$1;->a(Lcom/anythink/expressad/foundation/g/g/a$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/expressad/a/c$1;


# direct methods
.method public constructor <init>(Lcom/anythink/expressad/a/c$1;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/a/c$1$1;->a:Lcom/anythink/expressad/a/c$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/a/c$1$1;->a:Lcom/anythink/expressad/a/c$1;

    iget-object v0, v0, Lcom/anythink/expressad/a/c$1;->a:Lcom/anythink/expressad/a/c;

    invoke-static {v0}, Lcom/anythink/expressad/a/c;->b(Lcom/anythink/expressad/a/c;)Lcom/anythink/expressad/a/e;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/anythink/expressad/a/c$1$1;->a:Lcom/anythink/expressad/a/c$1;

    iget-object v0, v0, Lcom/anythink/expressad/a/c$1;->a:Lcom/anythink/expressad/a/c;

    iget-object v0, v0, Lcom/anythink/expressad/a/c;->a:Lcom/anythink/expressad/a/c$b;

    invoke-virtual {v0}, Lcom/anythink/expressad/a/c$b;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/a/c$1$1;->a:Lcom/anythink/expressad/a/c$1;

    iget-object v0, v0, Lcom/anythink/expressad/a/c$1;->a:Lcom/anythink/expressad/a/c;

    invoke-static {v0}, Lcom/anythink/expressad/a/c;->b(Lcom/anythink/expressad/a/c;)Lcom/anythink/expressad/a/e;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/a/c$1$1;->a:Lcom/anythink/expressad/a/c$1;

    iget-object v0, v0, Lcom/anythink/expressad/a/c$1;->a:Lcom/anythink/expressad/a/c;

    invoke-static {v0}, Lcom/anythink/expressad/a/c;->b(Lcom/anythink/expressad/a/c;)Lcom/anythink/expressad/a/e;

    iget-object v0, p0, Lcom/anythink/expressad/a/c$1$1;->a:Lcom/anythink/expressad/a/c$1;

    iget-object v0, v0, Lcom/anythink/expressad/a/c$1;->a:Lcom/anythink/expressad/a/c;

    iget-object v0, v0, Lcom/anythink/expressad/a/c;->a:Lcom/anythink/expressad/a/c$b;

    invoke-virtual {v0}, Lcom/anythink/expressad/a/c$b;->h()Ljava/lang/String;

    :cond_1
    return-void
.end method
