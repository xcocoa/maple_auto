.class public Lmobi/oneway/export/e/a$2;
.super Ljava/util/TimerTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/oneway/export/e/a;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lmobi/oneway/export/e/a;


# direct methods
.method public constructor <init>(Lmobi/oneway/export/e/a;)V
    .locals 0

    iput-object p1, p0, Lmobi/oneway/export/e/a$2;->a:Lmobi/oneway/export/e/a;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    invoke-static {}, Lmobi/oneway/export/e/b;->a()Lmobi/oneway/export/e/b;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/oneway/export/e/b;->c()V

    return-void
.end method
