.class public final Lcom/anythink/core/common/f/az$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/common/f/az;->c(Ljava/lang/String;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/anythink/core/common/f/az$a;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/core/common/f/az;


# direct methods
.method public constructor <init>(Lcom/anythink/core/common/f/az;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/core/common/f/az$1;->a:Lcom/anythink/core/common/f/az;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/anythink/core/common/f/az$a;Lcom/anythink/core/common/f/az$a;)I
    .locals 3

    iget-wide v0, p0, Lcom/anythink/core/common/f/az$a;->d:D

    iget-wide p0, p1, Lcom/anythink/core/common/f/az$a;->d:D

    cmpl-double v2, v0, p0

    if-lez v2, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    cmpl-double v2, v0, p0

    if-nez v2, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3

    check-cast p1, Lcom/anythink/core/common/f/az$a;

    check-cast p2, Lcom/anythink/core/common/f/az$a;

    iget-wide v0, p1, Lcom/anythink/core/common/f/az$a;->d:D

    iget-wide p1, p2, Lcom/anythink/core/common/f/az$a;->d:D

    cmpl-double v2, v0, p1

    if-lez v2, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    cmpl-double v2, v0, p1

    if-nez v2, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method
