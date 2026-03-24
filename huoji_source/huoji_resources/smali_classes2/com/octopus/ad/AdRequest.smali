.class public final Lcom/octopus/ad/AdRequest;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/octopus/ad/AdRequest$Builder;
    }
.end annotation


# static fields
.field public static final DEVICE_ID_EMULATOR:Ljava/lang/String;

.field public static final ERROR_CODE_INTERNAL_ERROR:I = 0x13881

.field public static final ERROR_CODE_INVALID_REQUEST:I = 0x13882

.field public static final ERROR_CODE_NETWORK_ERROR:I = 0x13883

.field public static final ERROR_CODE_NOT_READY_TO_REQUEST:I = 0x13880

.field public static final ERROR_CODE_NO_FILL:I = 0x138e4

.field public static final ERROR_CODE_RENDER_FAIL:I = 0x138e5

.field public static final ERROR_CODE_VIDEO_PLAY_FAIL:I = 0x13948

.field public static final INVALID_DISPLAY:I = 0x138e6

.field public static final INVALID_MEDIA_TYPE:I = 0x138e7


# instance fields
.field private final a:Lcom/octopus/ad/internal/network/a$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/octopus/ad/internal/network/a;->b:Ljava/lang/String;

    sput-object v0, Lcom/octopus/ad/AdRequest;->DEVICE_ID_EMULATOR:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/octopus/ad/AdRequest$Builder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/octopus/ad/AdRequest$Builder;->access$000(Lcom/octopus/ad/AdRequest$Builder;)Lcom/octopus/ad/internal/network/a$a;

    move-result-object p1

    iput-object p1, p0, Lcom/octopus/ad/AdRequest;->a:Lcom/octopus/ad/internal/network/a$a;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/octopus/ad/AdRequest$Builder;Lcom/octopus/ad/AdRequest$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/octopus/ad/AdRequest;-><init>(Lcom/octopus/ad/AdRequest$Builder;)V

    return-void
.end method


# virtual methods
.method public getBirthday()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/AdRequest;->a:Lcom/octopus/ad/internal/network/a$a;

    invoke-virtual {v0}, Lcom/octopus/ad/internal/network/a$a;->a()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getContentUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/AdRequest;->a:Lcom/octopus/ad/internal/network/a$a;

    invoke-virtual {v0}, Lcom/octopus/ad/internal/network/a$a;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGender()I
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/AdRequest;->a:Lcom/octopus/ad/internal/network/a$a;

    invoke-virtual {v0}, Lcom/octopus/ad/internal/network/a$a;->c()I

    move-result v0

    return v0
.end method

.method public getKeywords()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/octopus/ad/AdRequest;->a:Lcom/octopus/ad/internal/network/a$a;

    invoke-virtual {v0}, Lcom/octopus/ad/internal/network/a$a;->d()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkExtrasBundle(Ljava/lang/Class;)Landroid/os/Bundle;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    iget-object v0, p0, Lcom/octopus/ad/AdRequest;->a:Lcom/octopus/ad/internal/network/a$a;

    invoke-virtual {v0, p1}, Lcom/octopus/ad/internal/network/a$a;->a(Ljava/lang/Class;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method public impl()Lcom/octopus/ad/internal/network/a$a;
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/AdRequest;->a:Lcom/octopus/ad/internal/network/a$a;

    return-object v0
.end method
