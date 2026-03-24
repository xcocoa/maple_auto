.class public final Lcom/anythink/expressad/exoplayer/b/g$a$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/expressad/exoplayer/b/g$a;->a(Ljava/lang/String;JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:J

.field public final synthetic c:J

.field public final synthetic d:Lcom/anythink/expressad/exoplayer/b/g$a;


# direct methods
.method public constructor <init>(Lcom/anythink/expressad/exoplayer/b/g$a;Ljava/lang/String;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/b/g$a$2;->d:Lcom/anythink/expressad/exoplayer/b/g$a;

    iput-object p2, p0, Lcom/anythink/expressad/exoplayer/b/g$a$2;->a:Ljava/lang/String;

    iput-wide p3, p0, Lcom/anythink/expressad/exoplayer/b/g$a$2;->b:J

    iput-wide p5, p0, Lcom/anythink/expressad/exoplayer/b/g$a$2;->c:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/b/g$a$2;->d:Lcom/anythink/expressad/exoplayer/b/g$a;

    invoke-static {v0}, Lcom/anythink/expressad/exoplayer/b/g$a;->a(Lcom/anythink/expressad/exoplayer/b/g$a;)Lcom/anythink/expressad/exoplayer/b/g;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/expressad/exoplayer/b/g$a$2;->a:Ljava/lang/String;

    iget-wide v3, p0, Lcom/anythink/expressad/exoplayer/b/g$a$2;->b:J

    iget-wide v5, p0, Lcom/anythink/expressad/exoplayer/b/g$a$2;->c:J

    invoke-interface/range {v1 .. v6}, Lcom/anythink/expressad/exoplayer/b/g;->b(Ljava/lang/String;JJ)V

    return-void
.end method
