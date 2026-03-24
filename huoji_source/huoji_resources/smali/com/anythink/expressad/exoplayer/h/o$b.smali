.class public final Lcom/anythink/expressad/exoplayer/h/o$b;
.super Lcom/anythink/expressad/exoplayer/h/k;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/expressad/exoplayer/h/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private final a:Lcom/anythink/expressad/exoplayer/h/o$a;


# direct methods
.method public constructor <init>(Lcom/anythink/expressad/exoplayer/h/o$a;)V
    .locals 0

    invoke-direct {p0}, Lcom/anythink/expressad/exoplayer/h/k;-><init>()V

    invoke-static {p1}, Lcom/anythink/expressad/exoplayer/k/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/anythink/expressad/exoplayer/h/o$a;

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/h/o$b;->a:Lcom/anythink/expressad/exoplayer/h/o$a;

    return-void
.end method


# virtual methods
.method public final a(ILcom/anythink/expressad/exoplayer/h/s$a;Lcom/anythink/expressad/exoplayer/h/t$b;Lcom/anythink/expressad/exoplayer/h/t$c;Ljava/io/IOException;Z)V
    .locals 0
    .param p2    # Lcom/anythink/expressad/exoplayer/h/s$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method
