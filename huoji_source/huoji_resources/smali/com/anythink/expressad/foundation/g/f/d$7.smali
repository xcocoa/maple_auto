.class public final Lcom/anythink/expressad/foundation/g/f/d$7;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/expressad/foundation/g/f/d;->a(Lcom/anythink/expressad/foundation/g/f/i;JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/expressad/foundation/g/f/i;

.field public final synthetic b:J

.field public final synthetic c:J

.field public final synthetic d:Lcom/anythink/expressad/foundation/g/f/d;


# direct methods
.method public constructor <init>(Lcom/anythink/expressad/foundation/g/f/d;Lcom/anythink/expressad/foundation/g/f/i;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/foundation/g/f/d$7;->d:Lcom/anythink/expressad/foundation/g/f/d;

    iput-object p2, p0, Lcom/anythink/expressad/foundation/g/f/d$7;->a:Lcom/anythink/expressad/foundation/g/f/i;

    iput-wide p3, p0, Lcom/anythink/expressad/foundation/g/f/d$7;->b:J

    iput-wide p5, p0, Lcom/anythink/expressad/foundation/g/f/d$7;->c:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/anythink/expressad/foundation/g/f/d$7;->a:Lcom/anythink/expressad/foundation/g/f/i;

    iget-wide v1, p0, Lcom/anythink/expressad/foundation/g/f/d$7;->b:J

    iget-wide v3, p0, Lcom/anythink/expressad/foundation/g/f/d$7;->c:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/anythink/expressad/foundation/g/f/i;->a(JJ)V

    return-void
.end method
