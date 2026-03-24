.class public final Lcom/anythink/expressad/exoplayer/i/c$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/expressad/exoplayer/i/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/anythink/expressad/exoplayer/i/c$b;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/anythink/expressad/exoplayer/i/c$c;

.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:I

.field private final f:I

.field private final g:I


# direct methods
.method public constructor <init>(Lcom/anythink/expressad/exoplayer/m;Lcom/anythink/expressad/exoplayer/i/c$c;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/anythink/expressad/exoplayer/i/c$b;->a:Lcom/anythink/expressad/exoplayer/i/c$c;

    const/4 v0, 0x0

    invoke-static {p3, v0}, Lcom/anythink/expressad/exoplayer/i/c;->a(IZ)Z

    move-result p3

    iput p3, p0, Lcom/anythink/expressad/exoplayer/i/c$b;->b:I

    iget-object p2, p2, Lcom/anythink/expressad/exoplayer/i/c$c;->b:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/anythink/expressad/exoplayer/i/c;->a(Lcom/anythink/expressad/exoplayer/m;Ljava/lang/String;)Z

    move-result p2

    iput p2, p0, Lcom/anythink/expressad/exoplayer/i/c$b;->c:I

    iget p2, p1, Lcom/anythink/expressad/exoplayer/m;->z:I

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput v0, p0, Lcom/anythink/expressad/exoplayer/i/c$b;->d:I

    iget p2, p1, Lcom/anythink/expressad/exoplayer/m;->u:I

    iput p2, p0, Lcom/anythink/expressad/exoplayer/i/c$b;->e:I

    iget p2, p1, Lcom/anythink/expressad/exoplayer/m;->v:I

    iput p2, p0, Lcom/anythink/expressad/exoplayer/i/c$b;->f:I

    iget p1, p1, Lcom/anythink/expressad/exoplayer/m;->d:I

    iput p1, p0, Lcom/anythink/expressad/exoplayer/i/c$b;->g:I

    return-void
.end method


# virtual methods
.method public final a(Lcom/anythink/expressad/exoplayer/i/c$b;)I
    .locals 3

    iget v0, p0, Lcom/anythink/expressad/exoplayer/i/c$b;->b:I

    iget v1, p1, Lcom/anythink/expressad/exoplayer/i/c$b;->b:I

    if-eq v0, v1, :cond_0

    invoke-static {v0, v1}, Lcom/anythink/expressad/exoplayer/i/c;->a(II)I

    move-result p1

    return p1

    :cond_0
    iget v1, p0, Lcom/anythink/expressad/exoplayer/i/c$b;->c:I

    iget v2, p1, Lcom/anythink/expressad/exoplayer/i/c$b;->c:I

    if-eq v1, v2, :cond_1

    invoke-static {v1, v2}, Lcom/anythink/expressad/exoplayer/i/c;->a(II)I

    move-result p1

    return p1

    :cond_1
    iget v1, p0, Lcom/anythink/expressad/exoplayer/i/c$b;->d:I

    iget v2, p1, Lcom/anythink/expressad/exoplayer/i/c$b;->d:I

    if-eq v1, v2, :cond_2

    invoke-static {v1, v2}, Lcom/anythink/expressad/exoplayer/i/c;->a(II)I

    move-result p1

    return p1

    :cond_2
    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/i/c$b;->a:Lcom/anythink/expressad/exoplayer/i/c$c;

    iget-boolean v1, v1, Lcom/anythink/expressad/exoplayer/i/c$c;->m:Z

    if-eqz v1, :cond_3

    iget p1, p1, Lcom/anythink/expressad/exoplayer/i/c$b;->g:I

    iget v0, p0, Lcom/anythink/expressad/exoplayer/i/c$b;->g:I

    invoke-static {p1, v0}, Lcom/anythink/expressad/exoplayer/i/c;->a(II)I

    move-result p1

    return p1

    :cond_3
    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, -0x1

    :goto_0
    iget v0, p0, Lcom/anythink/expressad/exoplayer/i/c$b;->e:I

    iget v2, p1, Lcom/anythink/expressad/exoplayer/i/c$b;->e:I

    if-eq v0, v2, :cond_5

    :goto_1
    invoke-static {v0, v2}, Lcom/anythink/expressad/exoplayer/i/c;->a(II)I

    move-result p1

    :goto_2
    mul-int v1, v1, p1

    return v1

    :cond_5
    iget v0, p0, Lcom/anythink/expressad/exoplayer/i/c$b;->f:I

    iget v2, p1, Lcom/anythink/expressad/exoplayer/i/c$b;->f:I

    if-eq v0, v2, :cond_6

    goto :goto_1

    :cond_6
    iget v0, p0, Lcom/anythink/expressad/exoplayer/i/c$b;->g:I

    iget p1, p1, Lcom/anythink/expressad/exoplayer/i/c$b;->g:I

    invoke-static {v0, p1}, Lcom/anythink/expressad/exoplayer/i/c;->a(II)I

    move-result p1

    goto :goto_2
.end method

.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/anythink/expressad/exoplayer/i/c$b;

    invoke-virtual {p0, p1}, Lcom/anythink/expressad/exoplayer/i/c$b;->a(Lcom/anythink/expressad/exoplayer/i/c$b;)I

    move-result p1

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    const-class v2, Lcom/anythink/expressad/exoplayer/i/c$b;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/anythink/expressad/exoplayer/i/c$b;

    iget v2, p0, Lcom/anythink/expressad/exoplayer/i/c$b;->b:I

    iget v3, p1, Lcom/anythink/expressad/exoplayer/i/c$b;->b:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/anythink/expressad/exoplayer/i/c$b;->c:I

    iget v3, p1, Lcom/anythink/expressad/exoplayer/i/c$b;->c:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/anythink/expressad/exoplayer/i/c$b;->d:I

    iget v3, p1, Lcom/anythink/expressad/exoplayer/i/c$b;->d:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/anythink/expressad/exoplayer/i/c$b;->e:I

    iget v3, p1, Lcom/anythink/expressad/exoplayer/i/c$b;->e:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/anythink/expressad/exoplayer/i/c$b;->f:I

    iget v3, p1, Lcom/anythink/expressad/exoplayer/i/c$b;->f:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/anythink/expressad/exoplayer/i/c$b;->g:I

    iget p1, p1, Lcom/anythink/expressad/exoplayer/i/c$b;->g:I

    if-ne v2, p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, Lcom/anythink/expressad/exoplayer/i/c$b;->b:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/anythink/expressad/exoplayer/i/c$b;->c:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/anythink/expressad/exoplayer/i/c$b;->d:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/anythink/expressad/exoplayer/i/c$b;->e:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/anythink/expressad/exoplayer/i/c$b;->f:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/anythink/expressad/exoplayer/i/c$b;->g:I

    add-int/2addr v0, v1

    return v0
.end method
