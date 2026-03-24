.class public final Lcom/anythink/core/common/a/h;
.super Lcom/anythink/core/common/a/f;
.source ""


# instance fields
.field public c:I

.field public d:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/anythink/core/common/a/f;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 0

    iput p1, p0, Lcom/anythink/core/common/a/h;->c:I

    return-void
.end method

.method public final b(I)V
    .locals 0

    iput p1, p0, Lcom/anythink/core/common/a/h;->d:I

    return-void
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Lcom/anythink/core/common/a/h;->c:I

    return v0
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Lcom/anythink/core/common/a/h;->d:I

    return v0
.end method
