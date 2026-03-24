.class public final Lcom/anythink/core/common/w$6;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/common/w;->a(Lcom/anythink/core/common/l/e;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/core/common/l/e;

.field public final synthetic b:I

.field public final synthetic c:Lcom/anythink/core/common/l/b;

.field public final synthetic d:Lcom/anythink/core/common/w;


# direct methods
.method public constructor <init>(Lcom/anythink/core/common/w;Lcom/anythink/core/common/l/e;ILcom/anythink/core/common/l/b;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/core/common/w$6;->d:Lcom/anythink/core/common/w;

    iput-object p2, p0, Lcom/anythink/core/common/w$6;->a:Lcom/anythink/core/common/l/e;

    iput p3, p0, Lcom/anythink/core/common/w$6;->b:I

    iput-object p4, p0, Lcom/anythink/core/common/w$6;->c:Lcom/anythink/core/common/l/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    new-instance v0, Lcom/anythink/core/common/l/a;

    iget-object v1, p0, Lcom/anythink/core/common/w$6;->a:Lcom/anythink/core/common/l/e;

    iget v2, p0, Lcom/anythink/core/common/w$6;->b:I

    invoke-direct {v0, v1, v2}, Lcom/anythink/core/common/l/a;-><init>(Lcom/anythink/core/common/l/e;I)V

    iget v1, p0, Lcom/anythink/core/common/w$6;->b:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/anythink/core/common/l/a;->a()V

    iget-object v1, p0, Lcom/anythink/core/common/w$6;->d:Lcom/anythink/core/common/w;

    invoke-static {v1}, Lcom/anythink/core/common/w;->i(Lcom/anythink/core/common/w;)Lcom/anythink/core/common/l/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/l/d;->c()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/anythink/core/common/l/a;->a(J)V

    :cond_0
    new-instance v1, Lcom/anythink/core/common/w$6$1;

    invoke-direct {v1, p0}, Lcom/anythink/core/common/w$6$1;-><init>(Lcom/anythink/core/common/w$6;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/l/a;->a(Lcom/anythink/core/common/l/c;)V

    iget-object v1, p0, Lcom/anythink/core/common/w$6;->c:Lcom/anythink/core/common/l/b;

    invoke-virtual {v1, v0}, Lcom/anythink/core/common/l/b;->a(Lcom/anythink/core/common/l/a;)V

    iget-object v0, p0, Lcom/anythink/core/common/w$6;->c:Lcom/anythink/core/common/l/b;

    invoke-virtual {v0}, Lcom/anythink/core/common/l/b;->c()V

    return-void
.end method
