.class public final Lcom/anythink/core/common/f/aw$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/core/common/f/aw$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/common/f/aw;->b(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/anythink/core/common/f/aw;


# direct methods
.method public constructor <init>(Lcom/anythink/core/common/f/aw;I)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/core/common/f/aw$3;->b:Lcom/anythink/core/common/f/aw;

    iput p2, p0, Lcom/anythink/core/common/f/aw$3;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/anythink/core/common/f/ar;)Z
    .locals 1

    iget v0, p0, Lcom/anythink/core/common/f/aw$3;->a:I

    invoke-virtual {p1, v0}, Lcom/anythink/core/common/f/ar;->a(I)V

    const/4 p1, 0x1

    return p1
.end method
