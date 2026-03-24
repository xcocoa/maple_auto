.class public Lz2/ja$OooOO0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz2/ja;->OoooOoo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Landroid/widget/LinearLayout;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic OoooOoO:Lz2/ja;


# direct methods
.method public constructor <init>(Lz2/ja;)V
    .locals 0

    iput-object p1, p0, Lz2/ja$OooOO0;->OoooOoO:Lz2/ja;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OooO00o()Landroid/widget/LinearLayout;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lz2/ja$OooOO0;->OoooOoO:Lz2/ja;

    invoke-static {v0}, Lz2/ja;->Oooo0o0(Lz2/ja;)Lz2/vi;

    move-result-object v0

    invoke-interface {v0}, Lz2/vi;->read()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lz2/ja$OooOO0;->OooO00o()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method
