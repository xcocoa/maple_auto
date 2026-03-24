.class public final Lcom/anythink/expressad/advanced/c/a$7$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/expressad/advanced/c/a$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/io/File;

.field public final synthetic b:Lcom/anythink/expressad/advanced/c/a$7;


# direct methods
.method public constructor <init>(Lcom/anythink/expressad/advanced/c/a$7;Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/advanced/c/a$7$1;->b:Lcom/anythink/expressad/advanced/c/a$7;

    iput-object p2, p0, Lcom/anythink/expressad/advanced/c/a$7$1;->a:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/anythink/expressad/advanced/c/a$7$1;->b:Lcom/anythink/expressad/advanced/c/a$7;

    iget-object v0, v0, Lcom/anythink/expressad/advanced/c/a$7;->c:Lcom/anythink/expressad/advanced/c/a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "file:////"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/anythink/expressad/advanced/c/a$7$1;->a:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/expressad/advanced/c/a$7$1;->b:Lcom/anythink/expressad/advanced/c/a$7;

    iget-object v3, v2, Lcom/anythink/expressad/advanced/c/a$7;->a:Lcom/anythink/expressad/foundation/d/c;

    iget v2, v2, Lcom/anythink/expressad/advanced/c/a$7;->b:I

    invoke-static {v0, v1, v3, v2}, Lcom/anythink/expressad/advanced/c/a;->a(Lcom/anythink/expressad/advanced/c/a;Ljava/lang/String;Lcom/anythink/expressad/foundation/d/c;I)V

    return-void
.end method
