.class public Lz2/g80$OooO00o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz2/g80;->OooO0o(Ljava/lang/String;Ljava/lang/Object;Lz2/r20;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic OoooOoO:Ljava/lang/String;

.field public final synthetic OoooOoo:Ljava/lang/Object;

.field public final synthetic Ooooo00:Lz2/r20;

.field public final synthetic Ooooo0o:Lz2/g80;


# direct methods
.method public constructor <init>(Lz2/g80;Ljava/lang/String;Ljava/lang/Object;Lz2/r20;)V
    .locals 0

    iput-object p1, p0, Lz2/g80$OooO00o;->Ooooo0o:Lz2/g80;

    iput-object p2, p0, Lz2/g80$OooO00o;->OoooOoO:Ljava/lang/String;

    iput-object p3, p0, Lz2/g80$OooO00o;->OoooOoo:Ljava/lang/Object;

    iput-object p4, p0, Lz2/g80$OooO00o;->Ooooo00:Lz2/r20;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lz2/g80$OooO00o;->OoooOoO:Ljava/lang/String;

    iget-object v1, p0, Lz2/g80$OooO00o;->OoooOoo:Ljava/lang/Object;

    iget-object v2, p0, Lz2/g80$OooO00o;->Ooooo00:Lz2/r20;

    invoke-static {v0, v1, v2}, Lz2/f50;->OoooOOo(Ljava/lang/String;Ljava/lang/Object;Lz2/r20;)V

    iget-object v0, p0, Lz2/g80$OooO00o;->OoooOoo:Ljava/lang/Object;

    return-object v0
.end method
