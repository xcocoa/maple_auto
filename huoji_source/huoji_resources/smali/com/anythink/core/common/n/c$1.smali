.class public final Lcom/anythink/core/common/n/c$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/common/n/c;->a(ILcom/anythink/core/common/f/au;Lcom/anythink/core/common/f/av;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/anythink/core/common/f/au;

.field public final synthetic c:Lcom/anythink/core/common/f/av;

.field public final synthetic d:J

.field public final synthetic e:Lcom/anythink/core/common/n/c;


# direct methods
.method public constructor <init>(Lcom/anythink/core/common/n/c;ILcom/anythink/core/common/f/au;Lcom/anythink/core/common/f/av;J)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/core/common/n/c$1;->e:Lcom/anythink/core/common/n/c;

    iput p2, p0, Lcom/anythink/core/common/n/c$1;->a:I

    iput-object p3, p0, Lcom/anythink/core/common/n/c$1;->b:Lcom/anythink/core/common/f/au;

    iput-object p4, p0, Lcom/anythink/core/common/n/c$1;->c:Lcom/anythink/core/common/f/av;

    iput-wide p5, p0, Lcom/anythink/core/common/n/c$1;->d:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/anythink/core/common/n/c$1;->e:Lcom/anythink/core/common/n/c;

    iget v1, p0, Lcom/anythink/core/common/n/c$1;->a:I

    iget-object v2, p0, Lcom/anythink/core/common/n/c$1;->b:Lcom/anythink/core/common/f/au;

    iget-object v3, p0, Lcom/anythink/core/common/n/c$1;->c:Lcom/anythink/core/common/f/av;

    iget-wide v4, p0, Lcom/anythink/core/common/n/c$1;->d:J

    invoke-static/range {v0 .. v5}, Lcom/anythink/core/common/n/c;->a(Lcom/anythink/core/common/n/c;ILcom/anythink/core/common/f/au;Lcom/anythink/core/common/f/av;J)Lcom/anythink/core/common/f/i;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/anythink/core/common/n/c$1;->e:Lcom/anythink/core/common/n/c;

    iget v2, p0, Lcom/anythink/core/common/n/c$1;->a:I

    iget-object v3, p0, Lcom/anythink/core/common/n/c$1;->b:Lcom/anythink/core/common/f/au;

    invoke-static {v2, v3}, Lcom/anythink/core/common/n/c;->b(ILcom/anythink/core/common/f/au;)Z

    move-result v2

    invoke-static {v1, v0, v2}, Lcom/anythink/core/common/n/c;->a(Lcom/anythink/core/common/n/c;Lcom/anythink/core/common/f/x;Z)V

    return-void
.end method
