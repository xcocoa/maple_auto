.class public interface abstract Lz2/fx;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final OooO00o:Lz2/fx;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lz2/fx$OooO00o;

    invoke-direct {v0}, Lz2/fx$OooO00o;-><init>()V

    sput-object v0, Lz2/fx;->OooO00o:Lz2/fx;

    return-void
.end method


# virtual methods
.method public abstract OooO00o(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation
.end method
