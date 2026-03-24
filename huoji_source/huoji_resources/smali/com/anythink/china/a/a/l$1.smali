.class public final Lcom/anythink/china/a/a/l$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/china/a/a/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/china/a/a/l;


# direct methods
.method public constructor <init>(Lcom/anythink/china/a/a/l;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/china/a/a/l$1;->a:Lcom/anythink/china/a/a/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    iget-object p1, p0, Lcom/anythink/china/a/a/l$1;->a:Lcom/anythink/china/a/a/l;

    invoke-static {p2}, Lcom/anythink/china/a/a/m$a;->a(Landroid/os/IBinder;)Lcom/anythink/china/a/a/m;

    move-result-object p2

    iput-object p2, p1, Lcom/anythink/china/a/a/l;->a:Lcom/anythink/china/a/a/m;

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    iget-object p1, p0, Lcom/anythink/china/a/a/l$1;->a:Lcom/anythink/china/a/a/l;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/anythink/china/a/a/l;->a:Lcom/anythink/china/a/a/m;

    return-void
.end method
