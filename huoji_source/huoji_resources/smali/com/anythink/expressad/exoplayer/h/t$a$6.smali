.class public final Lcom/anythink/expressad/exoplayer/h/t$a$6;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/expressad/exoplayer/h/t$a;->a(Lcom/anythink/expressad/exoplayer/h/t$b;Lcom/anythink/expressad/exoplayer/h/t$c;Ljava/io/IOException;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/expressad/exoplayer/h/t;

.field public final synthetic b:Lcom/anythink/expressad/exoplayer/h/t$b;

.field public final synthetic c:Lcom/anythink/expressad/exoplayer/h/t$c;

.field public final synthetic d:Ljava/io/IOException;

.field public final synthetic e:Z

.field public final synthetic f:Lcom/anythink/expressad/exoplayer/h/t$a;


# direct methods
.method public constructor <init>(Lcom/anythink/expressad/exoplayer/h/t$a;Lcom/anythink/expressad/exoplayer/h/t;Lcom/anythink/expressad/exoplayer/h/t$b;Lcom/anythink/expressad/exoplayer/h/t$c;Ljava/io/IOException;Z)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/h/t$a$6;->f:Lcom/anythink/expressad/exoplayer/h/t$a;

    iput-object p2, p0, Lcom/anythink/expressad/exoplayer/h/t$a$6;->a:Lcom/anythink/expressad/exoplayer/h/t;

    iput-object p3, p0, Lcom/anythink/expressad/exoplayer/h/t$a$6;->b:Lcom/anythink/expressad/exoplayer/h/t$b;

    iput-object p4, p0, Lcom/anythink/expressad/exoplayer/h/t$a$6;->c:Lcom/anythink/expressad/exoplayer/h/t$c;

    iput-object p5, p0, Lcom/anythink/expressad/exoplayer/h/t$a$6;->d:Ljava/io/IOException;

    iput-boolean p6, p0, Lcom/anythink/expressad/exoplayer/h/t$a$6;->e:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/t$a$6;->a:Lcom/anythink/expressad/exoplayer/h/t;

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/h/t$a$6;->f:Lcom/anythink/expressad/exoplayer/h/t$a;

    iget v2, v1, Lcom/anythink/expressad/exoplayer/h/t$a;->a:I

    iget-object v3, v1, Lcom/anythink/expressad/exoplayer/h/t$a;->b:Lcom/anythink/expressad/exoplayer/h/s$a;

    iget-object v4, p0, Lcom/anythink/expressad/exoplayer/h/t$a$6;->b:Lcom/anythink/expressad/exoplayer/h/t$b;

    iget-object v5, p0, Lcom/anythink/expressad/exoplayer/h/t$a$6;->c:Lcom/anythink/expressad/exoplayer/h/t$c;

    iget-object v6, p0, Lcom/anythink/expressad/exoplayer/h/t$a$6;->d:Ljava/io/IOException;

    iget-boolean v7, p0, Lcom/anythink/expressad/exoplayer/h/t$a$6;->e:Z

    move v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move v6, v7

    invoke-interface/range {v0 .. v6}, Lcom/anythink/expressad/exoplayer/h/t;->a(ILcom/anythink/expressad/exoplayer/h/s$a;Lcom/anythink/expressad/exoplayer/h/t$b;Lcom/anythink/expressad/exoplayer/h/t$c;Ljava/io/IOException;Z)V

    return-void
.end method
