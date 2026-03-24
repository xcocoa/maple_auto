.class public final synthetic Lz2/j8;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic OoooOoO:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz2/j8;->OoooOoO:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lz2/j8;->OoooOoO:Ljava/lang/String;

    invoke-static {v0}, Lcom/cyjh/elfin/tools/utils/BootDexManager;->OooO0o0(Ljava/lang/String;)V

    return-void
.end method
