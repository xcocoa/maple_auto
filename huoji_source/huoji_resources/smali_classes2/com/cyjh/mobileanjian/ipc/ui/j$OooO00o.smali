.class public final Lcom/cyjh/mobileanjian/ipc/ui/j$OooO00o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/mobileanjian/ipc/ui/j;->OooO0OO()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public OoooOoO:I

.field public OoooOoo:I

.field public Ooooo00:I

.field public Ooooo0o:I

.field public OooooO0:J

.field public OooooOO:J

.field public OooooOo:Ljava/lang/Runnable;

.field public final synthetic Oooooo:Lcom/cyjh/mobileanjian/ipc/ui/j;

.field public final synthetic Oooooo0:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/cyjh/mobileanjian/ipc/ui/j;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j$OooO00o;->Oooooo:Lcom/cyjh/mobileanjian/ipc/ui/j;

    iput-object p2, p0, Lcom/cyjh/mobileanjian/ipc/ui/j$OooO00o;->Oooooo0:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/cyjh/mobileanjian/ipc/ui/j$OooO00o$OooO00o;

    invoke-direct {p1, p0}, Lcom/cyjh/mobileanjian/ipc/ui/j$OooO00o$OooO00o;-><init>(Lcom/cyjh/mobileanjian/ipc/ui/j$OooO00o;)V

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j$OooO00o;->OooooOo:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_6

    if-eq p1, v0, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto/16 :goto_1

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "ACTION_MOVE "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j$OooO00o;->Oooooo:Lcom/cyjh/mobileanjian/ipc/ui/j;

    iget-boolean p1, p1, Lcom/cyjh/mobileanjian/ipc/ui/j;->OooooOo:Z

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    float-to-int p1, p1

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j$OooO00o;->OoooOoO:I

    sub-int/2addr p1, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-int v1, v1

    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/j$OooO00o;->OoooOoo:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/j$OooO00o;->Oooooo:Lcom/cyjh/mobileanjian/ipc/ui/j;

    invoke-static {v2}, Lcom/cyjh/mobileanjian/ipc/ui/j;->OooO0O0(Lcom/cyjh/mobileanjian/ipc/ui/j;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/j$OooO00o;->Ooooo00:I

    add-int/2addr v3, p1

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j$OooO00o;->Oooooo:Lcom/cyjh/mobileanjian/ipc/ui/j;

    invoke-static {p1}, Lcom/cyjh/mobileanjian/ipc/ui/j;->OooO0O0(Lcom/cyjh/mobileanjian/ipc/ui/j;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/j$OooO00o;->Ooooo0o:I

    add-int/2addr v2, v1

    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j$OooO00o;->Oooooo:Lcom/cyjh/mobileanjian/ipc/ui/j;

    invoke-static {p1}, Lcom/cyjh/mobileanjian/ipc/ui/j;->OooOOo(Lcom/cyjh/mobileanjian/ipc/ui/j;)Landroid/view/WindowManager;

    move-result-object p1

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j$OooO00o;->Oooooo:Lcom/cyjh/mobileanjian/ipc/ui/j;

    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/j;->OooOOOo(Lcom/cyjh/mobileanjian/ipc/ui/j;)Landroid/widget/RelativeLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/j$OooO00o;->Oooooo:Lcom/cyjh/mobileanjian/ipc/ui/j;

    invoke-static {v2}, Lcom/cyjh/mobileanjian/ipc/ui/j;->OooO0O0(Lcom/cyjh/mobileanjian/ipc/ui/j;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iget v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/j$OooO00o;->OoooOoO:I

    int-to-float v3, v3

    sub-float/2addr p1, v3

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 v3, 0x40a00000    # 5.0f

    cmpl-float p1, p1, v3

    if-nez p1, :cond_2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iget p2, p0, Lcom/cyjh/mobileanjian/ipc/ui/j$OooO00o;->OoooOoo:I

    int-to-float p2, p2

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, v3

    if-eqz p1, :cond_7

    :cond_2
    iget-wide p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j$OooO00o;->OooooOO:J

    sub-long p1, v1, p1

    const-wide/16 v3, 0x32

    cmp-long v5, p1, v3

    if-lez v5, :cond_7

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j$OooO00o;->Oooooo0:Ljava/lang/String;

    sget-object p2, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Event_Type;->ON_TOUCH_MOVE:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Event_Type;

    invoke-static {p1, p2}, Lcom/cyjh/mobileanjian/ipc/ui/j;->OooO0oO(Ljava/lang/String;Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Event_Type;)V

    iput-wide v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j$OooO00o;->OooooOO:J

    goto/16 :goto_1

    :cond_3
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j$OooO00o;->OooooOo:Ljava/lang/Runnable;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j$OooO00o;->Oooooo:Lcom/cyjh/mobileanjian/ipc/ui/j;

    invoke-static {p1}, Lcom/cyjh/mobileanjian/ipc/ui/j;->OooO(Lcom/cyjh/mobileanjian/ipc/ui/j;)Landroid/os/Handler;

    move-result-object p1

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j$OooO00o;->OooooOo:Ljava/lang/Runnable;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "ACTION_UP "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j$OooO00o;->OoooOoO:I

    int-to-float v1, v1

    sub-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 v1, 0x41f00000    # 30.0f

    cmpg-float p1, p1, v1

    if-gez p1, :cond_5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iget p2, p0, Lcom/cyjh/mobileanjian/ipc/ui/j$OooO00o;->OoooOoo:I

    int-to-float p2, p2

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpg-float p1, p1, v1

    if-gez p1, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iget-wide v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j$OooO00o;->OooooO0:J

    sub-long/2addr p1, v1

    const-wide/16 v1, 0x1f4

    cmp-long v3, p1, v1

    if-gez v3, :cond_5

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j$OooO00o;->Oooooo0:Ljava/lang/String;

    sget-object p2, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Event_Type;->ON_CLICK:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Event_Type;

    goto :goto_0

    :cond_5
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j$OooO00o;->Oooooo0:Ljava/lang/String;

    sget-object p2, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Event_Type;->ON_TOUCH_UP:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Event_Type;

    :goto_0
    invoke-static {p1, p2}, Lcom/cyjh/mobileanjian/ipc/ui/j;->OooO0oO(Ljava/lang/String;Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Event_Type;)V

    goto :goto_1

    :cond_6
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j$OooO00o;->OoooOoO:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j$OooO00o;->OoooOoo:I

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j$OooO00o;->Oooooo:Lcom/cyjh/mobileanjian/ipc/ui/j;

    invoke-static {p1}, Lcom/cyjh/mobileanjian/ipc/ui/j;->OooO0O0(Lcom/cyjh/mobileanjian/ipc/ui/j;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    iput p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j$OooO00o;->Ooooo00:I

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j$OooO00o;->Oooooo:Lcom/cyjh/mobileanjian/ipc/ui/j;

    invoke-static {p1}, Lcom/cyjh/mobileanjian/ipc/ui/j;->OooO0O0(Lcom/cyjh/mobileanjian/ipc/ui/j;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    iput p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j$OooO00o;->Ooooo0o:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j$OooO00o;->OooooO0:J

    iput-wide p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j$OooO00o;->OooooOO:J

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j$OooO00o;->Oooooo0:Ljava/lang/String;

    sget-object p2, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Event_Type;->ON_TOUCH_DOWN:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Event_Type;

    invoke-static {p1, p2}, Lcom/cyjh/mobileanjian/ipc/ui/j;->OooO0oO(Ljava/lang/String;Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Event_Type;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "ACTION_DOWN "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j$OooO00o;->Oooooo:Lcom/cyjh/mobileanjian/ipc/ui/j;

    invoke-static {p1}, Lcom/cyjh/mobileanjian/ipc/ui/j;->OooO(Lcom/cyjh/mobileanjian/ipc/ui/j;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/cyjh/mobileanjian/ipc/ui/j$OooO00o;->OooooOo:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1f5

    invoke-virtual {p1, p2, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_7
    :goto_1
    return v0
.end method
