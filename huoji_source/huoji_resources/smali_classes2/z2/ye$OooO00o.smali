.class public final Lz2/ye$OooO00o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz2/ye;->OooO0OO(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OoooOoO:Ljava/lang/String;

.field public final synthetic OoooOoo:Lz2/ye;


# direct methods
.method public constructor <init>(Lz2/ye;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lz2/ye$OooO00o;->OoooOoo:Lz2/ye;

    iput-object p2, p0, Lz2/ye$OooO00o;->OoooOoO:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lz2/ye$OooO00o;->OoooOoO:Ljava/lang/String;

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Event_Type;->ON_CLICK:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Event_Type;

    invoke-static {p1, v0}, Lz2/ye;->OooO0oo(Ljava/lang/String;Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Event_Type;)V

    return-void
.end method
