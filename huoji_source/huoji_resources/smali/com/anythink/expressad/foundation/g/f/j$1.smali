.class public final Lcom/anythink/expressad/foundation/g/f/j$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/expressad/foundation/g/f/j$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/expressad/foundation/g/f/j;->a(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:Lcom/anythink/expressad/foundation/g/f/j;


# direct methods
.method public constructor <init>(Lcom/anythink/expressad/foundation/g/f/j;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/foundation/g/f/j$1;->b:Lcom/anythink/expressad/foundation/g/f/j;

    iput-object p2, p0, Lcom/anythink/expressad/foundation/g/f/j$1;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/anythink/expressad/foundation/g/f/i;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/anythink/expressad/foundation/g/f/i<",
            "*>;)Z"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/g/f/i;->b()Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lcom/anythink/expressad/foundation/g/f/j$1;->a:Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
