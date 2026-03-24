.class public final synthetic Lz2/da;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic OoooOoO:Lz2/ja;


# direct methods
.method public synthetic constructor <init>(Lz2/ja;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz2/da;->OoooOoO:Lz2/ja;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lz2/da;->OoooOoO:Lz2/ja;

    invoke-virtual {v0}, Lz2/ja;->OoooOOo()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method
