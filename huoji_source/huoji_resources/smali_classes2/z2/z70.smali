.class public Lz2/z70;
.super Lz2/w90;
.source ""


# instance fields
.field private final OooO00o:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0}, Lz2/w90;-><init>()V

    iput-object p1, p0, Lz2/z70;->OooO00o:Ljava/lang/Throwable;

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

    iget-object v0, p0, Lz2/z70;->OooO00o:Ljava/lang/Throwable;

    throw v0
.end method
