.class public final Lcom/anythink/core/common/f/aw$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/core/common/f/aw$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/common/f/aw;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:[Lcom/anythink/core/common/f/ar;

.field public final synthetic b:Lcom/anythink/core/common/f/aw;


# direct methods
.method public constructor <init>(Lcom/anythink/core/common/f/aw;[Lcom/anythink/core/common/f/ar;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/core/common/f/aw$1;->b:Lcom/anythink/core/common/f/aw;

    iput-object p2, p0, Lcom/anythink/core/common/f/aw$1;->a:[Lcom/anythink/core/common/f/ar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/anythink/core/common/f/ar;)Z
    .locals 8

    iget-object v0, p0, Lcom/anythink/core/common/f/aw$1;->a:[Lcom/anythink/core/common/f/ar;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    const/4 v3, 0x1

    if-nez v2, :cond_0

    aput-object p1, v0, v1

    :goto_0
    const/4 v0, 0x1

    goto :goto_2

    :cond_0
    invoke-virtual {p1}, Lcom/anythink/core/common/f/ar;->e()D

    move-result-wide v4

    iget-object v0, p0, Lcom/anythink/core/common/f/aw$1;->a:[Lcom/anythink/core/common/f/ar;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/anythink/core/common/f/ar;->e()D

    move-result-wide v6

    cmpg-double v0, v4, v6

    if-gez v0, :cond_1

    :goto_1
    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/anythink/core/common/f/ar;->e()D

    move-result-wide v4

    iget-object v0, p0, Lcom/anythink/core/common/f/aw$1;->a:[Lcom/anythink/core/common/f/ar;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/anythink/core/common/f/ar;->e()D

    move-result-wide v6

    cmpl-double v0, v4, v6

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/anythink/core/common/f/ar;->f()J

    move-result-wide v4

    iget-object v0, p0, Lcom/anythink/core/common/f/aw$1;->a:[Lcom/anythink/core/common/f/ar;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/anythink/core/common/f/ar;->f()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-gez v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/anythink/core/common/f/aw$1;->a:[Lcom/anythink/core/common/f/ar;

    aput-object p1, v0, v1

    :cond_3
    return v3
.end method
