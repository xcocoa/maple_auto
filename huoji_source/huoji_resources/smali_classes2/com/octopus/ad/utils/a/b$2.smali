.class public Lcom/octopus/ad/utils/a/b$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/octopus/ad/utils/a/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/utils/a/b;->c(Landroid/content/Context;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/utils/a/b$2;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)V
    .locals 0

    iget-object p1, p0, Lcom/octopus/ad/utils/a/b$2;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/octopus/ad/utils/a/b;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/octopus/ad/utils/a/b;->b(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lcom/octopus/ad/utils/a/b;->b(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method
