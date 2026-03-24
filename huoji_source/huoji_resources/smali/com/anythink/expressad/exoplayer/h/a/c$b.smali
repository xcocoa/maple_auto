.class public final Lcom/anythink/expressad/exoplayer/h/a/c$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/expressad/exoplayer/h/l$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/expressad/exoplayer/h/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/expressad/exoplayer/h/a/c;

.field private final b:Landroid/net/Uri;

.field private final c:I

.field private final d:I


# direct methods
.method public constructor <init>(Lcom/anythink/expressad/exoplayer/h/a/c;Landroid/net/Uri;II)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/h/a/c$b;->a:Lcom/anythink/expressad/exoplayer/h/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/anythink/expressad/exoplayer/h/a/c$b;->b:Landroid/net/Uri;

    iput p3, p0, Lcom/anythink/expressad/exoplayer/h/a/c$b;->c:I

    iput p4, p0, Lcom/anythink/expressad/exoplayer/h/a/c$b;->d:I

    return-void
.end method

.method public static synthetic a(Lcom/anythink/expressad/exoplayer/h/a/c$b;)I
    .locals 0

    iget p0, p0, Lcom/anythink/expressad/exoplayer/h/a/c$b;->c:I

    return p0
.end method

.method public static synthetic b(Lcom/anythink/expressad/exoplayer/h/a/c$b;)I
    .locals 0

    iget p0, p0, Lcom/anythink/expressad/exoplayer/h/a/c$b;->d:I

    return p0
.end method


# virtual methods
.method public final a(Lcom/anythink/expressad/exoplayer/h/s$a;Ljava/io/IOException;)V
    .locals 2

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/a/c$b;->a:Lcom/anythink/expressad/exoplayer/h/a/c;

    invoke-static {v0, p1}, Lcom/anythink/expressad/exoplayer/h/a/c;->b(Lcom/anythink/expressad/exoplayer/h/a/c;Lcom/anythink/expressad/exoplayer/h/s$a;)Lcom/anythink/expressad/exoplayer/h/t$a;

    move-result-object p1

    new-instance v0, Lcom/anythink/expressad/exoplayer/j/k;

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/h/a/c$b;->b:Landroid/net/Uri;

    invoke-direct {v0, v1}, Lcom/anythink/expressad/exoplayer/j/k;-><init>(Landroid/net/Uri;)V

    invoke-static {p2}, Lcom/anythink/expressad/exoplayer/h/a/c$a;->a(Ljava/lang/Exception;)Lcom/anythink/expressad/exoplayer/h/a/c$a;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/anythink/expressad/exoplayer/h/t$a;->a(Lcom/anythink/expressad/exoplayer/j/k;Ljava/io/IOException;)V

    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/h/a/c$b;->a:Lcom/anythink/expressad/exoplayer/h/a/c;

    invoke-static {p1}, Lcom/anythink/expressad/exoplayer/h/a/c;->e(Lcom/anythink/expressad/exoplayer/h/a/c;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/anythink/expressad/exoplayer/h/a/c$b$1;

    invoke-direct {v0, p0, p2}, Lcom/anythink/expressad/exoplayer/h/a/c$b$1;-><init>(Lcom/anythink/expressad/exoplayer/h/a/c$b;Ljava/io/IOException;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
