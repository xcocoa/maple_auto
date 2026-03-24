.class public final Lcom/anythink/expressad/exoplayer/h/n$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/expressad/exoplayer/h/y;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/expressad/exoplayer/h/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "d"
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/expressad/exoplayer/h/n;

.field private final b:I


# direct methods
.method public constructor <init>(Lcom/anythink/expressad/exoplayer/h/n;I)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/h/n$d;->a:Lcom/anythink/expressad/exoplayer/h/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/anythink/expressad/exoplayer/h/n$d;->b:I

    return-void
.end method

.method public static synthetic a(Lcom/anythink/expressad/exoplayer/h/n$d;)I
    .locals 0

    iget p0, p0, Lcom/anythink/expressad/exoplayer/h/n$d;->b:I

    return p0
.end method


# virtual methods
.method public final a(J)I
    .locals 2

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/n$d;->a:Lcom/anythink/expressad/exoplayer/h/n;

    iget v1, p0, Lcom/anythink/expressad/exoplayer/h/n$d;->b:I

    invoke-virtual {v0, v1, p1, p2}, Lcom/anythink/expressad/exoplayer/h/n;->a(IJ)I

    move-result p1

    return p1
.end method

.method public final a(Lcom/anythink/expressad/exoplayer/n;Lcom/anythink/expressad/exoplayer/c/e;Z)I
    .locals 2

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/n$d;->a:Lcom/anythink/expressad/exoplayer/h/n;

    iget v1, p0, Lcom/anythink/expressad/exoplayer/h/n$d;->b:I

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/anythink/expressad/exoplayer/h/n;->a(ILcom/anythink/expressad/exoplayer/n;Lcom/anythink/expressad/exoplayer/c/e;Z)I

    move-result p1

    return p1
.end method

.method public final b()Z
    .locals 2

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/n$d;->a:Lcom/anythink/expressad/exoplayer/h/n;

    iget v1, p0, Lcom/anythink/expressad/exoplayer/h/n$d;->b:I

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/exoplayer/h/n;->a(I)Z

    move-result v0

    return v0
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/n$d;->a:Lcom/anythink/expressad/exoplayer/h/n;

    invoke-virtual {v0}, Lcom/anythink/expressad/exoplayer/h/n;->h()V

    return-void
.end method
