.class public final Lcom/anythink/core/common/w$6$1$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/common/w$6$1;->a(Ljava/lang/String;Lcom/anythink/core/common/l/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/anythink/core/common/l/e;

.field public final synthetic c:Lcom/anythink/core/common/w$6$1;


# direct methods
.method public constructor <init>(Lcom/anythink/core/common/w$6$1;Ljava/lang/String;Lcom/anythink/core/common/l/e;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/core/common/w$6$1$1;->c:Lcom/anythink/core/common/w$6$1;

    iput-object p2, p0, Lcom/anythink/core/common/w$6$1$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/anythink/core/common/w$6$1$1;->b:Lcom/anythink/core/common/l/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/anythink/core/common/w$6$1$1;->c:Lcom/anythink/core/common/w$6$1;

    iget-object v0, v0, Lcom/anythink/core/common/w$6$1;->a:Lcom/anythink/core/common/w$6;

    iget-object v0, v0, Lcom/anythink/core/common/w$6;->d:Lcom/anythink/core/common/w;

    iget-object v1, p0, Lcom/anythink/core/common/w$6$1$1;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/anythink/core/common/w$6$1$1;->b:Lcom/anythink/core/common/l/e;

    invoke-static {v0, v1, v2}, Lcom/anythink/core/common/w;->a(Lcom/anythink/core/common/w;Ljava/lang/String;Lcom/anythink/core/common/l/e;)V

    return-void
.end method
