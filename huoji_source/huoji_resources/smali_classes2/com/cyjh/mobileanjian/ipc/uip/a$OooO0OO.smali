.class public final Lcom/cyjh/mobileanjian/ipc/uip/a$OooO0OO;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/mobileanjian/ipc/uip/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OooO0OO"
.end annotation


# instance fields
.field public final synthetic OooO00o:Lcom/cyjh/mobileanjian/ipc/uip/a;


# direct methods
.method private constructor <init>(Lcom/cyjh/mobileanjian/ipc/uip/a;)V
    .locals 0

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/uip/a$OooO0OO;->OooO00o:Lcom/cyjh/mobileanjian/ipc/uip/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/cyjh/mobileanjian/ipc/uip/a;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cyjh/mobileanjian/ipc/uip/a$OooO0OO;-><init>(Lcom/cyjh/mobileanjian/ipc/uip/a;)V

    return-void
.end method


# virtual methods
.method public final getInterpolation(F)F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    return p1
.end method
