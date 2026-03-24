.class public Lz2/aw$OooO00o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/fw;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz2/aw;->OooO0O0(Lz2/kw;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OooO00o:Lz2/kw;

.field public final synthetic OooO0O0:Lz2/aw;


# direct methods
.method public constructor <init>(Lz2/aw;Lz2/kw;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iput-object p1, p0, Lz2/aw$OooO00o;->OooO0O0:Lz2/aw;

    iput-object p2, p0, Lz2/aw$OooO00o;->OooO00o:Lz2/kw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OooO00o()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lz2/aw$OooO00o;->OooO0O0:Lz2/aw;

    invoke-virtual {v0}, Lz2/aw;->OoooO00()V

    iget-object v0, p0, Lz2/aw$OooO00o;->OooO0O0:Lz2/aw;

    iget-object v1, p0, Lz2/aw$OooO00o;->OooO00o:Lz2/kw;

    invoke-virtual {v0, v1}, Lz2/zv;->Oooo0oo(Lz2/kw;)V

    iget-object v0, p0, Lz2/aw$OooO00o;->OooO0O0:Lz2/aw;

    invoke-virtual {v0}, Lz2/aw;->OoooO0()V

    return-void
.end method
