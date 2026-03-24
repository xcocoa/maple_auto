.class public final Lcom/anythink/core/common/b/c$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/core/common/b/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/core/common/b/c;

.field private final b:Ljava/lang/String;

.field private final c:Z


# direct methods
.method public constructor <init>(Lcom/anythink/core/common/b/c;Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/core/common/b/c$a;->a:Lcom/anythink/core/common/b/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/anythink/core/common/b/c$a;->b:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/anythink/core/common/b/c$a;->c:Z

    return-void
.end method

.method private b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/anythink/core/common/b/c$a;->c:Z

    return v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/common/b/c$a;->b:Ljava/lang/String;

    return-object v0
.end method
