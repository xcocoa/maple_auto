.class public final Lcom/anythink/expressad/exoplayer/e/a/b$c;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/expressad/exoplayer/e/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# static fields
.field public static final a:I = 0x8


# instance fields
.field public final b:[Lcom/anythink/expressad/exoplayer/e/a/k;

.field public c:Lcom/anythink/expressad/exoplayer/m;

.field public d:I

.field public e:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array p1, p1, [Lcom/anythink/expressad/exoplayer/e/a/k;

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/e/a/b$c;->b:[Lcom/anythink/expressad/exoplayer/e/a/k;

    const/4 p1, 0x0

    iput p1, p0, Lcom/anythink/expressad/exoplayer/e/a/b$c;->e:I

    return-void
.end method
