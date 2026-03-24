.class public final Lcom/anythink/core/common/w$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/common/w;->a(Lcom/anythink/core/common/l/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/core/common/l/d;

.field public final synthetic b:Lcom/anythink/core/common/w;


# direct methods
.method public constructor <init>(Lcom/anythink/core/common/w;Lcom/anythink/core/common/l/d;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/core/common/w$1;->b:Lcom/anythink/core/common/w;

    iput-object p2, p0, Lcom/anythink/core/common/w$1;->a:Lcom/anythink/core/common/l/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/common/w$1;->b:Lcom/anythink/core/common/w;

    invoke-static {v0}, Lcom/anythink/core/common/w;->b(Lcom/anythink/core/common/w;)V

    return-void
.end method
