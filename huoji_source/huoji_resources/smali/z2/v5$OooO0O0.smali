.class public Lz2/v5$OooO0O0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz2/v5;->OooOo0(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OoooOoO:Landroid/app/Activity;

.field public final synthetic OoooOoo:Lz2/v5;


# direct methods
.method public constructor <init>(Lz2/v5;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lz2/v5$OooO0O0;->OoooOoo:Lz2/v5;

    iput-object p2, p0, Lz2/v5$OooO0O0;->OoooOoO:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lz2/v5$OooO0O0;->OoooOoo:Lz2/v5;

    invoke-static {v0}, Lz2/v5;->OooO0O0(Lz2/v5;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lz2/v5$OooO0O0;->OoooOoO:Landroid/app/Activity;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
