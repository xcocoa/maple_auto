.class public Lmobi/oneway/export/b/b/b$2;
.super Ljava/util/TimerTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/oneway/export/b/b/b;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lmobi/oneway/export/b/b/b;


# direct methods
.method public constructor <init>(Lmobi/oneway/export/b/b/b;)V
    .locals 0

    iput-object p1, p0, Lmobi/oneway/export/b/b/b$2;->a:Lmobi/oneway/export/b/b/b;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lmobi/oneway/export/b/b/b$2;->a:Lmobi/oneway/export/b/b/b;

    invoke-static {v0}, Lmobi/oneway/export/b/b/b;->b(Lmobi/oneway/export/b/b/b;)V

    return-void
.end method
