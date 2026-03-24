.class public Lz2/h90$OooO;
.super Lz2/h90$OooOOO0;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz2/h90;->OooO0o0(Lorg/junit/runner/notification/Failure;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OooO0OO:Lorg/junit/runner/notification/Failure;

.field public final synthetic OooO0Oo:Lz2/h90;


# direct methods
.method public constructor <init>(Lz2/h90;Lorg/junit/runner/notification/Failure;)V
    .locals 0

    iput-object p1, p0, Lz2/h90$OooO;->OooO0Oo:Lz2/h90;

    iput-object p2, p0, Lz2/h90$OooO;->OooO0OO:Lorg/junit/runner/notification/Failure;

    invoke-direct {p0, p1}, Lz2/h90$OooOOO0;-><init>(Lz2/h90;)V

    return-void
.end method


# virtual methods
.method public OooO00o(Lz2/g90;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lz2/h90$OooO;->OooO0OO:Lorg/junit/runner/notification/Failure;

    invoke-virtual {p1, v0}, Lz2/g90;->OooO00o(Lorg/junit/runner/notification/Failure;)V

    return-void
.end method
