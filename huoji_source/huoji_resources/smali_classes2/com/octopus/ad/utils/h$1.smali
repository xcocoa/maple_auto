.class public Lcom/octopus/ad/utils/h$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/utils/h;->a(IIZ)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/octopus/ad/utils/h;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/utils/h;)V
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/utils/h$1;->a:Lcom/octopus/ad/utils/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9

    iget-object p1, p0, Lcom/octopus/ad/utils/h$1;->a:Lcom/octopus/ad/utils/h;

    invoke-static {p1}, Lcom/octopus/ad/utils/h;->a(Lcom/octopus/ad/utils/h;)Lcom/octopus/ad/utils/h$a;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/octopus/ad/utils/h$1;->a:Lcom/octopus/ad/utils/h;

    invoke-static {p1}, Lcom/octopus/ad/utils/h;->a(Lcom/octopus/ad/utils/h;)Lcom/octopus/ad/utils/h$a;

    move-result-object v0

    invoke-static {}, Lcom/octopus/ad/utils/h;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/octopus/ad/utils/h;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/octopus/ad/utils/h;->d()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/octopus/ad/utils/h;->e()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/octopus/ad/utils/h;->b()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/octopus/ad/utils/h;->c()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/octopus/ad/utils/h;->d()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lcom/octopus/ad/utils/h;->e()Ljava/lang/String;

    move-result-object v8

    invoke-interface/range {v0 .. v8}, Lcom/octopus/ad/utils/h$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
