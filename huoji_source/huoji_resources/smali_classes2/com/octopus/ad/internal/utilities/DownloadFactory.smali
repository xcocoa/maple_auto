.class public Lcom/octopus/ad/internal/utilities/DownloadFactory;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/octopus/ad/internal/utilities/DownloadFactory$DownloadImpl;,
        Lcom/octopus/ad/internal/utilities/DownloadFactory$Request;,
        Lcom/octopus/ad/internal/utilities/DownloadFactory$DownloadCode;,
        Lcom/octopus/ad/internal/utilities/DownloadFactory$Download;,
        Lcom/octopus/ad/internal/utilities/DownloadFactory$DownloadDelegate;
    }
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0x2000

.field private static final TAG:Ljava/lang/String; = "download"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/octopus/ad/internal/utilities/DownloadFactory$Download;
    .locals 1

    new-instance v0, Lcom/octopus/ad/internal/utilities/DownloadFactory$DownloadImpl;

    invoke-direct {v0}, Lcom/octopus/ad/internal/utilities/DownloadFactory$DownloadImpl;-><init>()V

    return-object v0
.end method
