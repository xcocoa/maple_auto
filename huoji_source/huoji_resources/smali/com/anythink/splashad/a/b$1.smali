.class public final Lcom/anythink/splashad/a/b$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/core/common/m/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/splashad/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/splashad/a/b;


# direct methods
.method public constructor <init>(Lcom/anythink/splashad/a/b;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/splashad/a/b$1;->a:Lcom/anythink/splashad/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/anythink/splashad/a/b$1;->a:Lcom/anythink/splashad/a/b;

    invoke-static {v0}, Lcom/anythink/splashad/a/b;->access$000(Lcom/anythink/splashad/a/b;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/anythink/splashad/a/b$1;->a:Lcom/anythink/splashad/a/b;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/anythink/splashad/a/b;->access$102(Lcom/anythink/splashad/a/b;Z)Z

    iget-object v0, p0, Lcom/anythink/splashad/a/b$1;->a:Lcom/anythink/splashad/a/b;

    invoke-static {v0}, Lcom/anythink/splashad/a/b;->access$200(Lcom/anythink/splashad/a/b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anythink/splashad/a/b;->onTimeout(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
