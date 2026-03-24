.class public final Lcom/anythink/expressad/foundation/g/c/d$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/expressad/foundation/g/c/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:Lcom/anythink/expressad/foundation/g/c/a;

.field public b:Ljava/io/File;


# direct methods
.method public constructor <init>(Lcom/anythink/expressad/foundation/g/c/a;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/anythink/expressad/foundation/g/c/d$a;->a:Lcom/anythink/expressad/foundation/g/c/a;

    iput-object p2, p0, Lcom/anythink/expressad/foundation/g/c/d$a;->b:Ljava/io/File;

    return-void
.end method
