.class public final Lcom/anythink/basead/d/a$1$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/d/a$1;->a(Lcom/anythink/expressad/foundation/d/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/expressad/foundation/d/c;

.field public final synthetic b:Lcom/anythink/basead/d/a$1;


# direct methods
.method public constructor <init>(Lcom/anythink/basead/d/a$1;Lcom/anythink/expressad/foundation/d/c;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/basead/d/a$1$1;->b:Lcom/anythink/basead/d/a$1;

    iput-object p2, p0, Lcom/anythink/basead/d/a$1$1;->a:Lcom/anythink/expressad/foundation/d/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/anythink/basead/d/a$1$1;->b:Lcom/anythink/basead/d/a$1;

    iget-object v0, v0, Lcom/anythink/basead/d/a$1;->a:Lcom/anythink/basead/d/a;

    iget-object v1, p0, Lcom/anythink/basead/d/a$1$1;->a:Lcom/anythink/expressad/foundation/d/c;

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/anythink/basead/d/b;->a(Lcom/anythink/expressad/foundation/d/c;Ljava/lang/String;)V

    return-void
.end method
