.class public Lcom/octopus/ad/internal/b/l$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/octopus/ad/internal/b/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final synthetic a:Lcom/octopus/ad/internal/b/l;


# direct methods
.method private constructor <init>(Lcom/octopus/ad/internal/b/l;)V
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/internal/b/l$a;->a:Lcom/octopus/ad/internal/b/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/octopus/ad/internal/b/l;Lcom/octopus/ad/internal/b/l$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/octopus/ad/internal/b/l$a;-><init>(Lcom/octopus/ad/internal/b/l;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/internal/b/l$a;->a:Lcom/octopus/ad/internal/b/l;

    invoke-static {v0}, Lcom/octopus/ad/internal/b/l;->a(Lcom/octopus/ad/internal/b/l;)V

    return-void
.end method
