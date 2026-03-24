.class public final Lcom/anythink/expressad/exoplayer/i/d;
.super Lcom/anythink/expressad/exoplayer/i/b;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/expressad/exoplayer/i/d$a;
    }
.end annotation


# instance fields
.field private final a:I

.field private final b:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/anythink/expressad/exoplayer/h/ae;I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/anythink/expressad/exoplayer/i/d;-><init>(Lcom/anythink/expressad/exoplayer/h/ae;IILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lcom/anythink/expressad/exoplayer/h/ae;IILjava/lang/Object;)V
    .locals 2
    .param p4    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/anythink/expressad/exoplayer/i/b;-><init>(Lcom/anythink/expressad/exoplayer/h/ae;[I)V

    iput p3, p0, Lcom/anythink/expressad/exoplayer/i/d;->a:I

    iput-object p4, p0, Lcom/anythink/expressad/exoplayer/i/d;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(JJ)V
    .locals 0

    return-void
.end method

.method public final b()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Lcom/anythink/expressad/exoplayer/i/d;->a:I

    return v0
.end method

.method public final d()Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/i/d;->b:Ljava/lang/Object;

    return-object v0
.end method
