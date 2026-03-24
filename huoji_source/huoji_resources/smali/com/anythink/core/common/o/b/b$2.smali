.class public final Lcom/anythink/core/common/o/b/b$2;
.super Lcom/anythink/core/common/o/b/d;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/common/o/b/b;->c(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/Runnable;

.field public final synthetic b:Lcom/anythink/core/common/o/b/b;


# direct methods
.method public constructor <init>(Lcom/anythink/core/common/o/b/b;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/core/common/o/b/b$2;->b:Lcom/anythink/core/common/o/b/b;

    iput-object p2, p0, Lcom/anythink/core/common/o/b/b$2;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/anythink/core/common/o/b/d;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/common/o/b/b$2;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
