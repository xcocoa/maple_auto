.class public final Lcom/anythink/expressad/advanced/c/a$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/expressad/advanced/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/expressad/advanced/c/a;


# direct methods
.method public constructor <init>(Lcom/anythink/expressad/advanced/c/a;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/advanced/c/a$3;->a:Lcom/anythink/expressad/advanced/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/anythink/expressad/advanced/c/a$3;->a:Lcom/anythink/expressad/advanced/c/a;

    invoke-static {v0}, Lcom/anythink/expressad/advanced/c/a;->c(Lcom/anythink/expressad/advanced/c/a;)Ljava/lang/String;

    iget-object v1, p0, Lcom/anythink/expressad/advanced/c/a$3;->a:Lcom/anythink/expressad/advanced/c/a;

    invoke-static {v1}, Lcom/anythink/expressad/advanced/c/a;->b(Lcom/anythink/expressad/advanced/c/a;)I

    move-result v1

    const-string v2, "load timeout"

    invoke-static {v0, v2, v1}, Lcom/anythink/expressad/advanced/c/a;->a(Lcom/anythink/expressad/advanced/c/a;Ljava/lang/String;I)V

    return-void
.end method
