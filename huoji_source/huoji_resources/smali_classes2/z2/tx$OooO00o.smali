.class public Lz2/tx$OooO00o;
.super Lz2/tx;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz2/tx;->create(Lz2/mx;JLz2/l00;)Lz2/tx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OoooOoO:Lz2/mx;

.field public final synthetic OoooOoo:J

.field public final synthetic Ooooo00:Lz2/l00;


# direct methods
.method public constructor <init>(Lz2/mx;JLz2/l00;)V
    .locals 0

    iput-object p1, p0, Lz2/tx$OooO00o;->OoooOoO:Lz2/mx;

    iput-wide p2, p0, Lz2/tx$OooO00o;->OoooOoo:J

    iput-object p4, p0, Lz2/tx$OooO00o;->Ooooo00:Lz2/l00;

    invoke-direct {p0}, Lz2/tx;-><init>()V

    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 2

    iget-wide v0, p0, Lz2/tx$OooO00o;->OoooOoo:J

    return-wide v0
.end method

.method public contentType()Lz2/mx;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lz2/tx$OooO00o;->OoooOoO:Lz2/mx;

    return-object v0
.end method

.method public source()Lz2/l00;
    .locals 1

    iget-object v0, p0, Lz2/tx$OooO00o;->Ooooo00:Lz2/l00;

    return-object v0
.end method
