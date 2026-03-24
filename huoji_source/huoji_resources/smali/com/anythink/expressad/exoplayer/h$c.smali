.class public final Lcom/anythink/expressad/exoplayer/h$c;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/expressad/exoplayer/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public final a:Lcom/anythink/expressad/exoplayer/x$b;

.field public final b:I

.field public final c:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Lcom/anythink/expressad/exoplayer/x$b;ILjava/lang/Object;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/h$c;->a:Lcom/anythink/expressad/exoplayer/x$b;

    iput p2, p0, Lcom/anythink/expressad/exoplayer/h$c;->b:I

    iput-object p3, p0, Lcom/anythink/expressad/exoplayer/h$c;->c:Ljava/lang/Object;

    return-void
.end method
