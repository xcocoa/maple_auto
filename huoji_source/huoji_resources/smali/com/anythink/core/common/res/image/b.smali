.class public abstract Lcom/anythink/core/common/res/image/b;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Z

.field public e:J

.field public f:J

.field public g:J

.field public h:J

.field public i:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/common/res/image/b;->a:Ljava/lang/String;

    iput-object p1, p0, Lcom/anythink/core/common/res/image/b;->c:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lcom/anythink/core/common/res/image/b;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/anythink/core/common/res/image/b;->a:Ljava/lang/String;

    return-object p0
.end method

.method private e()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/core/common/res/image/b;->d:Z

    return-void
.end method

.method private f()V
    .locals 1

    new-instance v0, Lcom/anythink/core/common/res/image/b$1;

    invoke-direct {v0, p0}, Lcom/anythink/core/common/res/image/b$1;-><init>(Lcom/anythink/core/common/res/image/b;)V

    invoke-virtual {p0, v0}, Lcom/anythink/core/common/res/image/b;->a(Lcom/anythink/core/common/o/b/d;)V

    return-void
.end method

.method private static g()I
    .locals 1

    const v0, 0xea60

    return v0
.end method

.method private static h()I
    .locals 1

    const/16 v0, 0x4e20

    return v0
.end method


# virtual methods
.method public abstract a()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract a(Lcom/anythink/core/common/o/b/d;)V
.end method

.method public abstract a(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract a(Ljava/io/InputStream;)Z
.end method

.method public abstract b()V
.end method

.method public abstract c()V
.end method

.method public final d()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anythink/core/common/res/image/b;->d:Z

    new-instance v0, Lcom/anythink/core/common/res/image/b$1;

    invoke-direct {v0, p0}, Lcom/anythink/core/common/res/image/b$1;-><init>(Lcom/anythink/core/common/res/image/b;)V

    invoke-virtual {p0, v0}, Lcom/anythink/core/common/res/image/b;->a(Lcom/anythink/core/common/o/b/d;)V

    return-void
.end method
