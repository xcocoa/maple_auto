.class public Lz2/qa$OooO0OO;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz2/qa;->OooOoo0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OoooOoO:Lz2/qa;


# direct methods
.method public constructor <init>(Lz2/qa;)V
    .locals 0

    iput-object p1, p0, Lz2/qa$OooO0OO;->OoooOoO:Lz2/qa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    invoke-static {}, Lz2/gc;->OooO0OO()Lz2/gc;

    move-result-object v0

    iget-object v1, p0, Lz2/qa$OooO0OO;->OoooOoO:Lz2/qa;

    invoke-virtual {v1}, Landroidx/lifecycle/AndroidViewModel;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lz2/gc;->OooO00o(Landroid/content/Context;)Lcom/cyjh/http/bean/request/BaseRequestValueInfo;

    move-result-object v0

    iget-object v1, p0, Lz2/qa$OooO0OO;->OoooOoO:Lz2/qa;

    sget-wide v2, Lz2/gc;->OooO0o:J

    invoke-static {v1, v2, v3}, Lz2/qa;->OooOoO0(Lz2/qa;J)J

    invoke-static {v0}, Lz2/n4;->OooO0O0(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "acquireAppData --> jsonParams ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {v0}, Lz2/ii;->OooO00o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lz2/qa$OooO0OO;->OoooOoO:Lz2/qa;

    const/16 v2, 0x13

    invoke-static {v1, v0, v2}, Lz2/qa;->OooOoO(Lz2/qa;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
