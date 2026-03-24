.class public Lcom/anythink/core/d/i;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final a:Ljava/lang/String; = "i"


# instance fields
.field private final b:Lcom/anythink/core/d/h;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/anythink/core/d/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/anythink/core/d/i;->b:Lcom/anythink/core/d/h;

    return-void
.end method

.method public static synthetic a(Lcom/anythink/core/d/i;)Lcom/anythink/core/d/h;
    .locals 0

    iget-object p0, p0, Lcom/anythink/core/d/i;->b:Lcom/anythink/core/d/h;

    return-object p0
.end method

.method public static synthetic a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/anythink/core/d/i;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/anythink/core/common/f/am;Lcom/anythink/core/common/h/k;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "startRequest() >>> "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v0, Lcom/anythink/core/common/h/l;

    invoke-direct {v0, p0, p1}, Lcom/anythink/core/common/h/l;-><init>(Landroid/content/Context;Lcom/anythink/core/common/f/am;)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0, p2}, Lcom/anythink/core/common/h/l;->a(ILcom/anythink/core/common/h/k;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/anythink/core/common/f/am;)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/anythink/core/d/i$1;

    invoke-direct {v0, p0, p2}, Lcom/anythink/core/d/i$1;-><init>(Lcom/anythink/core/d/i;Lcom/anythink/core/common/f/am;)V

    invoke-static {p1, p2, v0}, Lcom/anythink/core/d/i;->a(Landroid/content/Context;Lcom/anythink/core/common/f/am;Lcom/anythink/core/common/h/k;)V

    return-void
.end method
