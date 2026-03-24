.class public final Lcom/anythink/expressad/foundation/g/g/c$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/expressad/foundation/g/g/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/expressad/foundation/g/g/c;->b(Lcom/anythink/expressad/foundation/g/g/a;Lcom/anythink/expressad/foundation/g/g/a$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/expressad/foundation/g/g/a;

.field public final synthetic b:Lcom/anythink/expressad/foundation/g/g/a$b;

.field public final synthetic c:Lcom/anythink/expressad/foundation/g/g/c;


# direct methods
.method public constructor <init>(Lcom/anythink/expressad/foundation/g/g/c;Lcom/anythink/expressad/foundation/g/g/a;Lcom/anythink/expressad/foundation/g/g/a$b;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/foundation/g/g/c$1;->c:Lcom/anythink/expressad/foundation/g/g/c;

    iput-object p2, p0, Lcom/anythink/expressad/foundation/g/g/c$1;->a:Lcom/anythink/expressad/foundation/g/g/a;

    iput-object p3, p0, Lcom/anythink/expressad/foundation/g/g/c$1;->b:Lcom/anythink/expressad/foundation/g/g/a$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/anythink/expressad/foundation/g/g/a$a;)V
    .locals 3

    sget-object v0, Lcom/anythink/expressad/foundation/g/g/a$a;->d:Lcom/anythink/expressad/foundation/g/g/a$a;

    if-ne p1, v0, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/anythink/expressad/foundation/g/g/c$1;->c:Lcom/anythink/expressad/foundation/g/g/c;

    iget-object v0, v0, Lcom/anythink/expressad/foundation/g/g/c;->b:Ljava/util/HashMap;

    invoke-static {}, Lcom/anythink/expressad/foundation/g/g/a;->e()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    sget-object v0, Lcom/anythink/expressad/foundation/g/g/a$a;->e:Lcom/anythink/expressad/foundation/g/g/a$a;

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/anythink/expressad/foundation/g/g/a$a;->b:Lcom/anythink/expressad/foundation/g/g/a$a;

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/anythink/expressad/foundation/g/g/c$1;->c:Lcom/anythink/expressad/foundation/g/g/c;

    iget-object v0, v0, Lcom/anythink/expressad/foundation/g/g/c;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/anythink/expressad/foundation/g/g/c$1;->c:Lcom/anythink/expressad/foundation/g/g/c;

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/g/g/c;->a()V

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/anythink/expressad/foundation/g/g/c$1;->b:Lcom/anythink/expressad/foundation/g/g/a$b;

    if-eqz v0, :cond_3

    invoke-interface {v0, p1}, Lcom/anythink/expressad/foundation/g/g/a$b;->a(Lcom/anythink/expressad/foundation/g/g/a$a;)V

    :cond_3
    return-void
.end method
