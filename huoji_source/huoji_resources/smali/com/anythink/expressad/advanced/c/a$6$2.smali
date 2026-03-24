.class public final Lcom/anythink/expressad/advanced/c/a$6$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/expressad/advanced/c/a$6;->a(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/expressad/advanced/c/a$6;


# direct methods
.method public constructor <init>(Lcom/anythink/expressad/advanced/c/a$6;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/advanced/c/a$6$2;->a:Lcom/anythink/expressad/advanced/c/a$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/anythink/expressad/advanced/c/a$6$2;->a:Lcom/anythink/expressad/advanced/c/a$6;

    iget-object v1, v0, Lcom/anythink/expressad/advanced/c/a$6;->c:Lcom/anythink/expressad/advanced/c/a;

    iget-object v2, v0, Lcom/anythink/expressad/advanced/c/a$6;->a:Lcom/anythink/expressad/foundation/d/c;

    iget v0, v0, Lcom/anythink/expressad/advanced/c/a$6;->b:I

    invoke-static {v1, v2, v0}, Lcom/anythink/expressad/advanced/c/a;->a(Lcom/anythink/expressad/advanced/c/a;Lcom/anythink/expressad/foundation/d/c;I)V

    return-void
.end method
