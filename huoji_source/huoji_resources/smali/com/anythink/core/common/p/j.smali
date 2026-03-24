.class public final Lcom/anythink/core/common/p/j;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Ljava/lang/String;


# instance fields
.field public b:Z

.field public c:Z

.field public d:Z

.field public e:Z

.field public f:Z

.field public g:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/anythink/core/common/g;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/anythink/core/common/p/j;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anythink/core/common/p/j;->b:Z

    iput-boolean v0, p0, Lcom/anythink/core/common/p/j;->c:Z

    iput-boolean v0, p0, Lcom/anythink/core/common/p/j;->d:Z

    iput-boolean v0, p0, Lcom/anythink/core/common/p/j;->e:Z

    iput-boolean v0, p0, Lcom/anythink/core/common/p/j;->f:Z

    iput-boolean v0, p0, Lcom/anythink/core/common/p/j;->g:Z

    return-void
.end method

.method private i()Z
    .locals 1

    iget-boolean v0, p0, Lcom/anythink/core/common/p/j;->f:Z

    return v0
.end method

.method private j()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/core/common/p/j;->f:Z

    return-void
.end method

.method private k()Z
    .locals 1

    iget-boolean v0, p0, Lcom/anythink/core/common/p/j;->g:Z

    return v0
.end method

.method private l()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/core/common/p/j;->g:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/core/common/p/j;->b:Z

    return-void
.end method

.method public final b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/anythink/core/common/p/j;->b:Z

    return v0
.end method

.method public final c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/anythink/core/common/p/j;->c:Z

    return v0
.end method

.method public final d()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/core/common/p/j;->c:Z

    return-void
.end method

.method public final e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/anythink/core/common/p/j;->d:Z

    return v0
.end method

.method public final f()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/core/common/p/j;->d:Z

    return-void
.end method

.method public final g()Z
    .locals 1

    iget-boolean v0, p0, Lcom/anythink/core/common/p/j;->e:Z

    return v0
.end method

.method public final h()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/core/common/p/j;->e:Z

    return-void
.end method
