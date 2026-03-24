.class public final Lcom/anythink/basead/e/b$b$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/core/common/n/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/e/b$b;-><init>(Ljava/util/Map;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/anythink/basead/e/b$b;


# direct methods
.method public constructor <init>(Lcom/anythink/basead/e/b$b;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/basead/e/b$b$1;->b:Lcom/anythink/basead/e/b$b;

    iput-object p2, p0, Lcom/anythink/basead/e/b$b$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/anythink/basead/e/b$b$1;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/anythink/basead/e/b$b$1;->b:Lcom/anythink/basead/e/b$b;

    invoke-static {p1}, Lcom/anythink/basead/e/b$b;->a(Lcom/anythink/basead/e/b$b;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/anythink/basead/e/b$b$1;->b:Lcom/anythink/basead/e/b$b;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/anythink/basead/e/b$b;->a(I)V

    iget-object p1, p0, Lcom/anythink/basead/e/b$b$1;->b:Lcom/anythink/basead/e/b$b;

    invoke-virtual {p1}, Lcom/anythink/basead/e/b$b;->d()V

    :cond_0
    return-void
.end method
