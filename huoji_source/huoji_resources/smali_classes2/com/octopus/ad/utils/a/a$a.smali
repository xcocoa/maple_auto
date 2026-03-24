.class public Lcom/octopus/ad/utils/a/a$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/octopus/ad/utils/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final a:Lcom/octopus/ad/utils/a/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/octopus/ad/utils/a/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/octopus/ad/utils/a/a;-><init>(Lcom/octopus/ad/utils/a/a$1;)V

    sput-object v0, Lcom/octopus/ad/utils/a/a$a;->a:Lcom/octopus/ad/utils/a/a;

    return-void
.end method
