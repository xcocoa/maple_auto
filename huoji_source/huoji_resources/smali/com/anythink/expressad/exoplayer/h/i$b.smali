.class public final Lcom/anythink/expressad/exoplayer/h/i$b;
.super Lcom/anythink/expressad/exoplayer/h/p;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/expressad/exoplayer/h/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field private static final c:Ljava/lang/Object;

.field private static final d:Lcom/anythink/expressad/exoplayer/ae$a;

.field private static final e:Lcom/anythink/expressad/exoplayer/h/i$c;


# instance fields
.field private final f:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/anythink/expressad/exoplayer/h/i$b;->c:Ljava/lang/Object;

    new-instance v0, Lcom/anythink/expressad/exoplayer/ae$a;

    invoke-direct {v0}, Lcom/anythink/expressad/exoplayer/ae$a;-><init>()V

    sput-object v0, Lcom/anythink/expressad/exoplayer/h/i$b;->d:Lcom/anythink/expressad/exoplayer/ae$a;

    new-instance v0, Lcom/anythink/expressad/exoplayer/h/i$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/anythink/expressad/exoplayer/h/i$c;-><init>(B)V

    sput-object v0, Lcom/anythink/expressad/exoplayer/h/i$b;->e:Lcom/anythink/expressad/exoplayer/h/i$c;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    sget-object v0, Lcom/anythink/expressad/exoplayer/h/i$b;->e:Lcom/anythink/expressad/exoplayer/h/i$c;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/anythink/expressad/exoplayer/h/i$b;-><init>(Lcom/anythink/expressad/exoplayer/ae;Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Lcom/anythink/expressad/exoplayer/ae;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/anythink/expressad/exoplayer/h/p;-><init>(Lcom/anythink/expressad/exoplayer/ae;)V

    iput-object p2, p0, Lcom/anythink/expressad/exoplayer/h/i$b;->f:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)I
    .locals 2

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/p;->b:Lcom/anythink/expressad/exoplayer/ae;

    sget-object v1, Lcom/anythink/expressad/exoplayer/h/i$b;->c:Ljava/lang/Object;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/h/i$b;->f:Ljava/lang/Object;

    :cond_0
    invoke-virtual {v0, p1}, Lcom/anythink/expressad/exoplayer/ae;->a(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final a(ILcom/anythink/expressad/exoplayer/ae$a;Z)Lcom/anythink/expressad/exoplayer/ae$a;
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/p;->b:Lcom/anythink/expressad/exoplayer/ae;

    invoke-virtual {v0, p1, p2, p3}, Lcom/anythink/expressad/exoplayer/ae;->a(ILcom/anythink/expressad/exoplayer/ae$a;Z)Lcom/anythink/expressad/exoplayer/ae$a;

    iget-object p1, p2, Lcom/anythink/expressad/exoplayer/ae$a;->b:Ljava/lang/Object;

    iget-object p3, p0, Lcom/anythink/expressad/exoplayer/h/i$b;->f:Ljava/lang/Object;

    invoke-static {p1, p3}, Lcom/anythink/expressad/exoplayer/k/af;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/anythink/expressad/exoplayer/h/i$b;->c:Ljava/lang/Object;

    iput-object p1, p2, Lcom/anythink/expressad/exoplayer/ae$a;->b:Ljava/lang/Object;

    :cond_0
    return-object p2
.end method

.method public final a(Lcom/anythink/expressad/exoplayer/ae;)Lcom/anythink/expressad/exoplayer/h/i$b;
    .locals 4

    new-instance v0, Lcom/anythink/expressad/exoplayer/h/i$b;

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/h/i$b;->f:Ljava/lang/Object;

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/anythink/expressad/exoplayer/ae;->c()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    sget-object v2, Lcom/anythink/expressad/exoplayer/h/i$b;->d:Lcom/anythink/expressad/exoplayer/ae$a;

    const/4 v3, 0x1

    invoke-virtual {p1, v1, v2, v3}, Lcom/anythink/expressad/exoplayer/ae;->a(ILcom/anythink/expressad/exoplayer/ae$a;Z)Lcom/anythink/expressad/exoplayer/ae$a;

    move-result-object v1

    iget-object v1, v1, Lcom/anythink/expressad/exoplayer/ae$a;->b:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/h/i$b;->f:Ljava/lang/Object;

    :goto_0
    invoke-direct {v0, p1, v1}, Lcom/anythink/expressad/exoplayer/h/i$b;-><init>(Lcom/anythink/expressad/exoplayer/ae;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final d()Lcom/anythink/expressad/exoplayer/ae;
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/p;->b:Lcom/anythink/expressad/exoplayer/ae;

    return-object v0
.end method
