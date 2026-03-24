.class public Lcom/cyjh/elfin/tools/utils/ThreadUtils$OooOO0$OooO0o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/elfin/tools/utils/ThreadUtils$OooOO0;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OoooOoO:Ljava/lang/Throwable;

.field public final synthetic OoooOoo:Lcom/cyjh/elfin/tools/utils/ThreadUtils$OooOO0;


# direct methods
.method public constructor <init>(Lcom/cyjh/elfin/tools/utils/ThreadUtils$OooOO0;Ljava/lang/Throwable;)V
    .locals 0

    iput-object p1, p0, Lcom/cyjh/elfin/tools/utils/ThreadUtils$OooOO0$OooO0o;->OoooOoo:Lcom/cyjh/elfin/tools/utils/ThreadUtils$OooOO0;

    iput-object p2, p0, Lcom/cyjh/elfin/tools/utils/ThreadUtils$OooOO0$OooO0o;->OoooOoO:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/cyjh/elfin/tools/utils/ThreadUtils$OooOO0$OooO0o;->OoooOoo:Lcom/cyjh/elfin/tools/utils/ThreadUtils$OooOO0;

    iget-object v1, p0, Lcom/cyjh/elfin/tools/utils/ThreadUtils$OooOO0$OooO0o;->OoooOoO:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/tools/utils/ThreadUtils$OooOO0;->OooOO0o(Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/cyjh/elfin/tools/utils/ThreadUtils$OooOO0$OooO0o;->OoooOoo:Lcom/cyjh/elfin/tools/utils/ThreadUtils$OooOO0;

    invoke-virtual {v0}, Lcom/cyjh/elfin/tools/utils/ThreadUtils$OooOO0;->OooOO0O()V

    return-void
.end method
