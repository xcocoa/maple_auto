.class public Lz2/rh$OooO0O0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz2/rh;->OooO0OO()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OoooOoO:Lz2/rh;


# direct methods
.method public constructor <init>(Lz2/rh;)V
    .locals 0

    iput-object p1, p0, Lz2/rh$OooO0O0;->OoooOoO:Lz2/rh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lz2/rh$OooO0O0;->OoooOoO:Lz2/rh;

    invoke-static {v0}, Lz2/rh;->OooO00o(Lz2/rh;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lz2/rh;->OooO0O0(Lz2/rh;Landroid/app/Activity;)V

    return-void
.end method
