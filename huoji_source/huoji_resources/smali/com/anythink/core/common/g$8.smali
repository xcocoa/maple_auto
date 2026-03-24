.class public final Lcom/anythink/core/common/g$8;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/core/common/i$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/common/g;->a(ILjava/util/List;Lcom/anythink/core/common/i$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/core/common/i$a;

.field public final synthetic b:Lcom/anythink/core/common/g;


# direct methods
.method public constructor <init>(Lcom/anythink/core/common/g;Lcom/anythink/core/common/i$a;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/core/common/g$8;->b:Lcom/anythink/core/common/g;

    iput-object p2, p0, Lcom/anythink/core/common/g$8;->a:Lcom/anythink/core/common/i$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/common/g$8;->a:Lcom/anythink/core/common/i$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/anythink/core/common/i$a;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/anythink/core/common/f/av;",
            ">;",
            "Ljava/util/List<",
            "Lcom/anythink/core/common/f/av;",
            ">;Z)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/anythink/core/common/g$8;->a:Lcom/anythink/core/common/i$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/anythink/core/common/i$a;->a(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Z)V

    :cond_0
    return-void
.end method
