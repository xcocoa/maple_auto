.class public final Lcom/anythink/expressad/exoplayer/h/t$a$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/expressad/exoplayer/h/t$a;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/expressad/exoplayer/h/t;

.field public final synthetic b:Lcom/anythink/expressad/exoplayer/h/t$a;


# direct methods
.method public constructor <init>(Lcom/anythink/expressad/exoplayer/h/t$a;Lcom/anythink/expressad/exoplayer/h/t;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/h/t$a$2;->b:Lcom/anythink/expressad/exoplayer/h/t$a;

    iput-object p2, p0, Lcom/anythink/expressad/exoplayer/h/t$a$2;->a:Lcom/anythink/expressad/exoplayer/h/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/t$a$2;->a:Lcom/anythink/expressad/exoplayer/h/t;

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/h/t$a$2;->b:Lcom/anythink/expressad/exoplayer/h/t$a;

    iget v2, v1, Lcom/anythink/expressad/exoplayer/h/t$a;->a:I

    iget-object v1, v1, Lcom/anythink/expressad/exoplayer/h/t$a;->b:Lcom/anythink/expressad/exoplayer/h/s$a;

    invoke-interface {v0, v2, v1}, Lcom/anythink/expressad/exoplayer/h/t;->b(ILcom/anythink/expressad/exoplayer/h/s$a;)V

    return-void
.end method
