.class public final Lcom/anythink/expressad/foundation/g/f/d$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/expressad/foundation/g/f/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/expressad/foundation/g/f/d;

.field private final b:Lcom/anythink/expressad/foundation/g/f/i;

.field private final c:Lcom/anythink/expressad/foundation/g/f/k;


# direct methods
.method public constructor <init>(Lcom/anythink/expressad/foundation/g/f/d;Lcom/anythink/expressad/foundation/g/f/i;Lcom/anythink/expressad/foundation/g/f/k;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/foundation/g/f/d$a;->a:Lcom/anythink/expressad/foundation/g/f/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/anythink/expressad/foundation/g/f/d$a;->b:Lcom/anythink/expressad/foundation/g/f/i;

    iput-object p3, p0, Lcom/anythink/expressad/foundation/g/f/d$a;->c:Lcom/anythink/expressad/foundation/g/f/k;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/anythink/expressad/foundation/g/f/d$a;->b:Lcom/anythink/expressad/foundation/g/f/i;

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/g/f/i;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/foundation/g/f/d$a;->b:Lcom/anythink/expressad/foundation/g/f/i;

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/g/f/i;->c()V

    iget-object v0, p0, Lcom/anythink/expressad/foundation/g/f/d$a;->b:Lcom/anythink/expressad/foundation/g/f/i;

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/g/f/i;->m()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/foundation/g/f/d$a;->c:Lcom/anythink/expressad/foundation/g/f/k;

    iget-object v1, v0, Lcom/anythink/expressad/foundation/g/f/k;->b:Lcom/anythink/expressad/foundation/g/f/a/a;

    if-nez v1, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    iget-object v1, p0, Lcom/anythink/expressad/foundation/g/f/d$a;->b:Lcom/anythink/expressad/foundation/g/f/i;

    invoke-virtual {v1, v0}, Lcom/anythink/expressad/foundation/g/f/i;->a(Lcom/anythink/expressad/foundation/g/f/k;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/anythink/expressad/foundation/g/f/d$a;->b:Lcom/anythink/expressad/foundation/g/f/i;

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/foundation/g/f/i;->b(Lcom/anythink/expressad/foundation/g/f/a/a;)V

    :goto_1
    iget-object v0, p0, Lcom/anythink/expressad/foundation/g/f/d$a;->b:Lcom/anythink/expressad/foundation/g/f/i;

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/g/f/i;->c()V

    iget-object v0, p0, Lcom/anythink/expressad/foundation/g/f/d$a;->b:Lcom/anythink/expressad/foundation/g/f/i;

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/g/f/i;->o()V

    return-void
.end method
