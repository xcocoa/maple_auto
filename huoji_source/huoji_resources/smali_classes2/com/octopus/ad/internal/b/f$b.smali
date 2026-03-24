.class public final Lcom/octopus/ad/internal/b/f$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/octopus/ad/internal/b/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:Lcom/octopus/ad/internal/b/f;

.field private final b:Ljava/net/Socket;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/internal/b/f;Ljava/net/Socket;)V
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/internal/b/f$b;->a:Lcom/octopus/ad/internal/b/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/octopus/ad/internal/b/f$b;->b:Ljava/net/Socket;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/octopus/ad/internal/b/f$b;->a:Lcom/octopus/ad/internal/b/f;

    iget-object v1, p0, Lcom/octopus/ad/internal/b/f$b;->b:Ljava/net/Socket;

    invoke-static {v0, v1}, Lcom/octopus/ad/internal/b/f;->a(Lcom/octopus/ad/internal/b/f;Ljava/net/Socket;)V

    return-void
.end method
