.class public final Lcom/anythink/core/common/res/a/b;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public a:I

.field public b:I

.field public c:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/anythink/core/common/res/a/b;->a:I

    iput v0, p0, Lcom/anythink/core/common/res/a/b;->b:I

    const/4 v1, 0x2

    iput v1, p0, Lcom/anythink/core/common/res/a/b;->c:I

    iput v0, p0, Lcom/anythink/core/common/res/a/b;->a:I

    iput v1, p0, Lcom/anythink/core/common/res/a/b;->c:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/anythink/core/common/res/a/b;->a:I

    iput v0, p0, Lcom/anythink/core/common/res/a/b;->b:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/anythink/core/common/res/a/b;->c:I

    iput p1, p0, Lcom/anythink/core/common/res/a/b;->a:I

    iput p2, p0, Lcom/anythink/core/common/res/a/b;->c:I

    return-void
.end method
