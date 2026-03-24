.class public final Lcom/anythink/expressad/videocommon/b/c$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/expressad/videocommon/b/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/expressad/videocommon/b/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/expressad/videocommon/b/c;


# direct methods
.method public constructor <init>(Lcom/anythink/expressad/videocommon/b/c;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/videocommon/b/c$1;->a:Lcom/anythink/expressad/videocommon/b/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(JI)V
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/videocommon/b/c$1;->a:Lcom/anythink/expressad/videocommon/b/c;

    invoke-static {v0}, Lcom/anythink/expressad/videocommon/b/c;->a(Lcom/anythink/expressad/videocommon/b/c;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/videocommon/b/c$1;->a:Lcom/anythink/expressad/videocommon/b/c;

    invoke-static {v0, p1, p2, p3}, Lcom/anythink/expressad/videocommon/b/c;->a(Lcom/anythink/expressad/videocommon/b/c;JI)V

    :cond_0
    return-void
.end method
