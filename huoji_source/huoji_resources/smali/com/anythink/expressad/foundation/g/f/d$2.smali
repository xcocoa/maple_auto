.class public final Lcom/anythink/expressad/foundation/g/f/d$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/expressad/foundation/g/f/d;->a(Lcom/anythink/expressad/foundation/g/f/i;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/expressad/foundation/g/f/i;

.field public final synthetic b:Lcom/anythink/expressad/foundation/g/f/d;


# direct methods
.method public constructor <init>(Lcom/anythink/expressad/foundation/g/f/d;Lcom/anythink/expressad/foundation/g/f/i;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/foundation/g/f/d$2;->b:Lcom/anythink/expressad/foundation/g/f/d;

    iput-object p2, p0, Lcom/anythink/expressad/foundation/g/f/d$2;->a:Lcom/anythink/expressad/foundation/g/f/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/foundation/g/f/d$2;->a:Lcom/anythink/expressad/foundation/g/f/i;

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/g/f/i;->o()V

    return-void
.end method
