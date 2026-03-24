.class public final Lcom/cyjh/mobileanjian/ipc/uip/c$OooO00o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/mobileanjian/ipc/uip/c;->OooO0OO(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OoooOoO:Lcom/cyjh/mobileanjian/ipc/uip/c;


# direct methods
.method public constructor <init>(Lcom/cyjh/mobileanjian/ipc/uip/c;)V
    .locals 0

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/uip/c$OooO00o;->OoooOoO:Lcom/cyjh/mobileanjian/ipc/uip/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->requestFocusFromTouch()Z

    const/4 p1, 0x0

    return p1
.end method
