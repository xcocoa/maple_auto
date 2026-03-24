.class public final Lcom/anythink/china/a/a/r$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/china/a/a/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/china/a/a/r;


# direct methods
.method public constructor <init>(Lcom/anythink/china/a/a/r;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/china/a/a/r$1;->a:Lcom/anythink/china/a/a/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    iget-object p1, p0, Lcom/anythink/china/a/a/r$1;->a:Lcom/anythink/china/a/a/r;

    new-instance v0, Lcom/anythink/china/a/a/q$a;

    invoke-direct {v0, p2}, Lcom/anythink/china/a/a/q$a;-><init>(Landroid/os/IBinder;)V

    iput-object v0, p1, Lcom/anythink/china/a/a/r;->a:Lcom/anythink/china/a/a/q;

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method
