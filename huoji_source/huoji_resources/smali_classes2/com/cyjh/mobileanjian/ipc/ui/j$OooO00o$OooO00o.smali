.class public final Lcom/cyjh/mobileanjian/ipc/ui/j$OooO00o$OooO00o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/mobileanjian/ipc/ui/j$OooO00o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OoooOoO:Lcom/cyjh/mobileanjian/ipc/ui/j$OooO00o;


# direct methods
.method public constructor <init>(Lcom/cyjh/mobileanjian/ipc/ui/j$OooO00o;)V
    .locals 0

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j$OooO00o$OooO00o;->OoooOoO:Lcom/cyjh/mobileanjian/ipc/ui/j$OooO00o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/j$OooO00o$OooO00o;->OoooOoO:Lcom/cyjh/mobileanjian/ipc/ui/j$OooO00o;

    iget-object v0, v0, Lcom/cyjh/mobileanjian/ipc/ui/j$OooO00o;->Oooooo0:Ljava/lang/String;

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Event_Type;->ON_TOUCH:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Event_Type;

    invoke-static {v0, v1}, Lcom/cyjh/mobileanjian/ipc/ui/j;->OooO0oO(Ljava/lang/String;Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Event_Type;)V

    return-void
.end method
