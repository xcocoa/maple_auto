.class public final synthetic Lz2/k9;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic OooO00o:Lcom/cyjh/elfin/ui/activity/SplashActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/cyjh/elfin/ui/activity/SplashActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz2/k9;->OooO00o:Lcom/cyjh/elfin/ui/activity/SplashActivity;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lz2/k9;->OooO00o:Lcom/cyjh/elfin/ui/activity/SplashActivity;

    check-cast p1, Lcom/cyjh/http/bean/response/PhoneConfig;

    invoke-virtual {v0, p1}, Lcom/cyjh/elfin/ui/activity/SplashActivity;->Oooo0O0(Lcom/cyjh/http/bean/response/PhoneConfig;)V

    return-void
.end method
