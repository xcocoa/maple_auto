.class public final Lcom/anythink/core/common/p/f;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public a:Lcom/anythink/core/common/f/av;

.field public b:I


# direct methods
.method public constructor <init>(Lcom/anythink/core/common/f/av;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/anythink/core/common/p/f;->a:Lcom/anythink/core/common/f/av;

    iput p2, p0, Lcom/anythink/core/common/p/f;->b:I

    return-void
.end method


# virtual methods
.method public final a()Lcom/anythink/core/common/f/av;
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/common/p/f;->a:Lcom/anythink/core/common/f/av;

    return-object v0
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lcom/anythink/core/common/p/f;->b:I

    return v0
.end method
