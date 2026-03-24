.class public final Lcom/tramini/plugin/a/f/f$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tramini/plugin/a/f/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final a:I = -0x1

.field public static final b:I = 0x0

.field public static final c:I = 0x1


# instance fields
.field public d:I

.field public e:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/tramini/plugin/a/f/f$a;
    .locals 2

    new-instance v0, Lcom/tramini/plugin/a/f/f$a;

    invoke-direct {v0}, Lcom/tramini/plugin/a/f/f$a;-><init>()V

    const/4 v1, 0x0

    iput v1, v0, Lcom/tramini/plugin/a/f/f$a;->d:I

    return-object v0
.end method

.method public static a(Ljava/lang/Object;)Lcom/tramini/plugin/a/f/f$a;
    .locals 2

    new-instance v0, Lcom/tramini/plugin/a/f/f$a;

    invoke-direct {v0}, Lcom/tramini/plugin/a/f/f$a;-><init>()V

    const/4 v1, 0x1

    iput v1, v0, Lcom/tramini/plugin/a/f/f$a;->d:I

    iput-object p0, v0, Lcom/tramini/plugin/a/f/f$a;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public static b(Ljava/lang/Object;)Lcom/tramini/plugin/a/f/f$a;
    .locals 2

    new-instance v0, Lcom/tramini/plugin/a/f/f$a;

    invoke-direct {v0}, Lcom/tramini/plugin/a/f/f$a;-><init>()V

    const/4 v1, -0x1

    iput v1, v0, Lcom/tramini/plugin/a/f/f$a;->d:I

    iput-object p0, v0, Lcom/tramini/plugin/a/f/f$a;->e:Ljava/lang/Object;

    return-object v0
.end method
