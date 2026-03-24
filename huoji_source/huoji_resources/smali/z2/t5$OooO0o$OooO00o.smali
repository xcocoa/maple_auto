.class public Lz2/t5$OooO0o$OooO00o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz2/t5$OooO0o;->OooO00o(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OoooOoO:Lz2/t5$OooO0o;


# direct methods
.method public constructor <init>(Lz2/t5$OooO0o;)V
    .locals 0

    iput-object p1, p0, Lz2/t5$OooO0o$OooO00o;->OoooOoO:Lz2/t5$OooO0o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lz2/t5$OooO0o$OooO00o;->OoooOoO:Lz2/t5$OooO0o;

    invoke-virtual {v0}, Lz2/t5$OooO0o;->cancel()V

    return-void
.end method
