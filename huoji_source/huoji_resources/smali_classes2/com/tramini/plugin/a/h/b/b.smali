.class public abstract Lcom/tramini/plugin/a/h/b/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:I

.field public d:Lcom/tramini/plugin/a/h/b/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/tramini/plugin/a/h/b/b;->a:I

    return-void
.end method

.method private b()I
    .locals 1

    iget v0, p0, Lcom/tramini/plugin/a/h/b/b;->a:I

    return v0
.end method


# virtual methods
.method public abstract a()V
.end method

.method public final a(I)V
    .locals 0

    iput p1, p0, Lcom/tramini/plugin/a/h/b/b;->a:I

    return-void
.end method

.method public run()V
    .locals 0

    invoke-virtual {p0}, Lcom/tramini/plugin/a/h/b/b;->a()V

    return-void
.end method
