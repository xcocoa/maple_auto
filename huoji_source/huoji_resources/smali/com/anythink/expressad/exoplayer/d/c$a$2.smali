.class public final Lcom/anythink/expressad/exoplayer/d/c$a$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/expressad/exoplayer/d/c$a;->a(Ljava/lang/Exception;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/expressad/exoplayer/d/c;

.field public final synthetic b:Ljava/lang/Exception;

.field public final synthetic c:Lcom/anythink/expressad/exoplayer/d/c$a;


# direct methods
.method public constructor <init>(Lcom/anythink/expressad/exoplayer/d/c$a;Lcom/anythink/expressad/exoplayer/d/c;Ljava/lang/Exception;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/d/c$a$2;->c:Lcom/anythink/expressad/exoplayer/d/c$a;

    iput-object p2, p0, Lcom/anythink/expressad/exoplayer/d/c$a$2;->a:Lcom/anythink/expressad/exoplayer/d/c;

    iput-object p3, p0, Lcom/anythink/expressad/exoplayer/d/c$a$2;->b:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/d/c$a$2;->a:Lcom/anythink/expressad/exoplayer/d/c;

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/d/c$a$2;->b:Ljava/lang/Exception;

    invoke-interface {v0, v1}, Lcom/anythink/expressad/exoplayer/d/c;->a(Ljava/lang/Exception;)V

    return-void
.end method
