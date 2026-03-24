.class public Lcom/octopus/ad/internal/nativead/c$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/internal/nativead/c;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/octopus/ad/internal/nativead/c;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/internal/nativead/c;)V
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/internal/nativead/c$4;->a:Lcom/octopus/ad/internal/nativead/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/octopus/ad/internal/nativead/c$4;->a:Lcom/octopus/ad/internal/nativead/c;

    invoke-static {}, Lcom/octopus/ad/internal/m;->a()Lcom/octopus/ad/internal/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/octopus/ad/internal/m;->g()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/octopus/ad/internal/nativead/c;->a(Lcom/octopus/ad/internal/nativead/c;Landroid/content/Context;)V

    return-void
.end method
