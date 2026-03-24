.class public final Lcom/anythink/expressad/exoplayer/h/x$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/expressad/exoplayer/h/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:J

.field public final b:J

.field public c:Z

.field public d:Lcom/anythink/expressad/exoplayer/j/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public e:Lcom/anythink/expressad/exoplayer/h/x$a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(JI)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/anythink/expressad/exoplayer/h/x$a;->a:J

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/anythink/expressad/exoplayer/h/x$a;->b:J

    return-void
.end method


# virtual methods
.method public final a(J)I
    .locals 2

    iget-wide v0, p0, Lcom/anythink/expressad/exoplayer/h/x$a;->a:J

    sub-long/2addr p1, v0

    long-to-int p2, p1

    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/h/x$a;->d:Lcom/anythink/expressad/exoplayer/j/a;

    iget p1, p1, Lcom/anythink/expressad/exoplayer/j/a;->b:I

    add-int/2addr p2, p1

    return p2
.end method

.method public final a()Lcom/anythink/expressad/exoplayer/h/x$a;
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anythink/expressad/exoplayer/h/x$a;->d:Lcom/anythink/expressad/exoplayer/j/a;

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/h/x$a;->e:Lcom/anythink/expressad/exoplayer/h/x$a;

    iput-object v0, p0, Lcom/anythink/expressad/exoplayer/h/x$a;->e:Lcom/anythink/expressad/exoplayer/h/x$a;

    return-object v1
.end method

.method public final a(Lcom/anythink/expressad/exoplayer/j/a;Lcom/anythink/expressad/exoplayer/h/x$a;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/h/x$a;->d:Lcom/anythink/expressad/exoplayer/j/a;

    iput-object p2, p0, Lcom/anythink/expressad/exoplayer/h/x$a;->e:Lcom/anythink/expressad/exoplayer/h/x$a;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/anythink/expressad/exoplayer/h/x$a;->c:Z

    return-void
.end method
