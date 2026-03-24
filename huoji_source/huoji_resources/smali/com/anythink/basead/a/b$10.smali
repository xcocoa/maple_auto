.class public final Lcom/anythink/basead/a/b$10;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/a/b;->a(Ljava/lang/String;ILcom/anythink/basead/c/i;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/basead/a/b;


# direct methods
.method public constructor <init>(Lcom/anythink/basead/a/b;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/basead/a/b$10;->a:Lcom/anythink/basead/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/anythink/basead/a/b$10;->a:Lcom/anythink/basead/a/b;

    iget-object v0, v0, Lcom/anythink/basead/a/b;->aa:Lcom/anythink/basead/a/b$b;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/anythink/basead/a/b$b;->c()V

    :cond_0
    return-void
.end method
