.class public Lcom/cyjh/common/util/toast/ThreadUtils$OooOO0$OooO00o;
.super Ljava/util/TimerTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/common/util/toast/ThreadUtils$OooOO0;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OoooOoO:Lcom/cyjh/common/util/toast/ThreadUtils$OooOO0;


# direct methods
.method public constructor <init>(Lcom/cyjh/common/util/toast/ThreadUtils$OooOO0;)V
    .locals 0

    iput-object p1, p0, Lcom/cyjh/common/util/toast/ThreadUtils$OooOO0$OooO00o;->OoooOoO:Lcom/cyjh/common/util/toast/ThreadUtils$OooOO0;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/cyjh/common/util/toast/ThreadUtils$OooOO0$OooO00o;->OoooOoO:Lcom/cyjh/common/util/toast/ThreadUtils$OooOO0;

    invoke-virtual {v0}, Lcom/cyjh/common/util/toast/ThreadUtils$OooOO0;->OooO()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/cyjh/common/util/toast/ThreadUtils$OooOO0$OooO00o;->OoooOoO:Lcom/cyjh/common/util/toast/ThreadUtils$OooOO0;

    invoke-static {v0}, Lcom/cyjh/common/util/toast/ThreadUtils$OooOO0;->OooO0O0(Lcom/cyjh/common/util/toast/ThreadUtils$OooOO0;)Lcom/cyjh/common/util/toast/ThreadUtils$OooOO0$OooOO0;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cyjh/common/util/toast/ThreadUtils$OooOO0$OooO00o;->OoooOoO:Lcom/cyjh/common/util/toast/ThreadUtils$OooOO0;

    invoke-static {v0}, Lcom/cyjh/common/util/toast/ThreadUtils$OooOO0;->OooO0OO(Lcom/cyjh/common/util/toast/ThreadUtils$OooOO0;)V

    iget-object v0, p0, Lcom/cyjh/common/util/toast/ThreadUtils$OooOO0$OooO00o;->OoooOoO:Lcom/cyjh/common/util/toast/ThreadUtils$OooOO0;

    invoke-static {v0}, Lcom/cyjh/common/util/toast/ThreadUtils$OooOO0;->OooO0O0(Lcom/cyjh/common/util/toast/ThreadUtils$OooOO0;)Lcom/cyjh/common/util/toast/ThreadUtils$OooOO0$OooOO0;

    move-result-object v0

    invoke-interface {v0}, Lcom/cyjh/common/util/toast/ThreadUtils$OooOO0$OooOO0;->OooO00o()V

    iget-object v0, p0, Lcom/cyjh/common/util/toast/ThreadUtils$OooOO0$OooO00o;->OoooOoO:Lcom/cyjh/common/util/toast/ThreadUtils$OooOO0;

    invoke-virtual {v0}, Lcom/cyjh/common/util/toast/ThreadUtils$OooOO0;->OooOO0O()V

    :cond_0
    return-void
.end method
