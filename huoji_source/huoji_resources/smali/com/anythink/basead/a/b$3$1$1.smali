.class public final Lcom/anythink/basead/a/b$3$1$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/a/b$3$1;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/basead/a/b$3$1;


# direct methods
.method public constructor <init>(Lcom/anythink/basead/a/b$3$1;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/basead/a/b$3$1$1;->a:Lcom/anythink/basead/a/b$3$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/anythink/basead/a/b$3$1$1;->a:Lcom/anythink/basead/a/b$3$1;

    iget-object v1, v0, Lcom/anythink/basead/a/b$3$1;->b:Lcom/anythink/basead/a/b$3;

    iget-object v2, v1, Lcom/anythink/basead/a/b$3;->b:Lcom/anythink/basead/a/b;

    iget v0, v0, Lcom/anythink/basead/a/b$3$1;->a:I

    iget-object v1, v1, Lcom/anythink/basead/a/b$3;->a:Lcom/anythink/basead/c/i;

    invoke-static {v2, v0, v1}, Lcom/anythink/basead/a/b;->a(Lcom/anythink/basead/a/b;ILcom/anythink/basead/c/i;)V

    return-void
.end method
