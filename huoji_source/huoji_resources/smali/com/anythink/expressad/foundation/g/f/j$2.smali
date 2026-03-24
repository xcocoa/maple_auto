.class public final Lcom/anythink/expressad/foundation/g/f/j$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/expressad/foundation/g/f/j;->a(Lcom/anythink/expressad/foundation/g/f/i;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/expressad/foundation/g/f/i;

.field public final synthetic b:Lcom/anythink/expressad/foundation/g/f/j;


# direct methods
.method public constructor <init>(Lcom/anythink/expressad/foundation/g/f/j;Lcom/anythink/expressad/foundation/g/f/i;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/foundation/g/f/j$2;->b:Lcom/anythink/expressad/foundation/g/f/j;

    iput-object p2, p0, Lcom/anythink/expressad/foundation/g/f/j$2;->a:Lcom/anythink/expressad/foundation/g/f/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    new-instance v0, Lcom/anythink/expressad/foundation/g/f/h;

    iget-object v1, p0, Lcom/anythink/expressad/foundation/g/f/j$2;->b:Lcom/anythink/expressad/foundation/g/f/j;

    invoke-static {v1}, Lcom/anythink/expressad/foundation/g/f/j;->a(Lcom/anythink/expressad/foundation/g/f/j;)Landroid/content/Context;

    iget-object v1, p0, Lcom/anythink/expressad/foundation/g/f/j$2;->b:Lcom/anythink/expressad/foundation/g/f/j;

    invoke-static {v1}, Lcom/anythink/expressad/foundation/g/f/j;->b(Lcom/anythink/expressad/foundation/g/f/j;)Lcom/anythink/expressad/foundation/g/f/c;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lcom/anythink/expressad/foundation/g/f/h;-><init>(Ljavax/net/ssl/SSLSocketFactory;Lcom/anythink/expressad/foundation/g/f/c;)V

    iget-object v1, p0, Lcom/anythink/expressad/foundation/g/f/j$2;->a:Lcom/anythink/expressad/foundation/g/f/i;

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/foundation/g/f/h;->a(Lcom/anythink/expressad/foundation/g/f/i;)V

    return-void
.end method
