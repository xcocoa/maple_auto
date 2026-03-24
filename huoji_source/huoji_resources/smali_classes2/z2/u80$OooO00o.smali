.class public Lz2/u80$OooO00o;
.super Lz2/w90;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz2/u80;->OooO00o(Lz2/w90;Lorg/junit/runner/Description;)Lz2/w90;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OooO00o:Lz2/w90;

.field public final synthetic OooO0O0:Lz2/u80;


# direct methods
.method public constructor <init>(Lz2/u80;Lz2/w90;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iput-object p1, p0, Lz2/u80$OooO00o;->OooO0O0:Lz2/u80;

    iput-object p2, p0, Lz2/u80$OooO00o;->OooO00o:Lz2/w90;

    invoke-direct {p0}, Lz2/w90;-><init>()V

    return-void
.end method


# virtual methods
.method public OooO00o()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-object v0, p0, Lz2/u80$OooO00o;->OooO00o:Lz2/w90;

    invoke-virtual {v0}, Lz2/w90;->OooO00o()V

    iget-object v0, p0, Lz2/u80$OooO00o;->OooO0O0:Lz2/u80;

    invoke-virtual {v0}, Lz2/u80;->OooO0O0()V

    return-void
.end method
