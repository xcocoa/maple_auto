.class public Lcom/octopus/ad/utils/i$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/utils/i;->a(II)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/octopus/ad/utils/i;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/utils/i;)V
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/utils/i$3;->a:Lcom/octopus/ad/utils/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/utils/i$3;->a:Lcom/octopus/ad/utils/i;

    invoke-static {v0}, Lcom/octopus/ad/utils/i;->a(Lcom/octopus/ad/utils/i;)Lcom/octopus/ad/widget/ScrollClickView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/octopus/ad/widget/ScrollClickView;->startAnim()V

    return-void
.end method
