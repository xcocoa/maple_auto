.class public final Lcom/anythink/expressad/a/g$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/expressad/a/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/expressad/a/g;


# direct methods
.method public constructor <init>(Lcom/anythink/expressad/a/g;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/a/g$5;->a:Lcom/anythink/expressad/a/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/anythink/expressad/a/g$5;->a:Lcom/anythink/expressad/a/g;

    invoke-static {v0}, Lcom/anythink/expressad/a/g;->n(Lcom/anythink/expressad/a/g;)Z

    iget-object v0, p0, Lcom/anythink/expressad/a/g$5;->a:Lcom/anythink/expressad/a/g;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/anythink/expressad/a/g;->a(Lcom/anythink/expressad/a/g;I)I

    invoke-static {}, Lcom/anythink/expressad/a/g;->a()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http timeout!timeout limit:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/anythink/expressad/a/g$5;->a:Lcom/anythink/expressad/a/g;

    invoke-static {v1}, Lcom/anythink/expressad/a/g;->q(Lcom/anythink/expressad/a/g;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/anythink/expressad/a/g$5;->a:Lcom/anythink/expressad/a/g;

    invoke-static {v0}, Lcom/anythink/expressad/a/g;->p(Lcom/anythink/expressad/a/g;)V

    return-void
.end method
