.class public Lz2/t5$OooOOO0$OooO00o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz2/t5$OooOOO0;->OooO00o(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OoooOoO:Lz2/t5$OooOOO0;


# direct methods
.method public constructor <init>(Lz2/t5$OooOOO0;)V
    .locals 0

    iput-object p1, p0, Lz2/t5$OooOOO0$OooO00o;->OoooOoO:Lz2/t5$OooOOO0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lz2/t5$OooOOO0$OooO00o;->OoooOoO:Lz2/t5$OooOOO0;

    invoke-virtual {v0}, Lz2/t5$OooOOO0;->cancel()V

    return-void
.end method
