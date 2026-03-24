.class public Lcom/anythink/splashad/api/ATSplashAdExtraInfo;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private atSplashEyeAd:Lcom/anythink/splashad/api/IATSplashEyeAd;

.field private dismissType:I


# direct methods
.method public constructor <init>(ILcom/anythink/splashad/api/IATSplashEyeAd;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/anythink/splashad/api/ATSplashAdExtraInfo;->dismissType:I

    iput-object p2, p0, Lcom/anythink/splashad/api/ATSplashAdExtraInfo;->atSplashEyeAd:Lcom/anythink/splashad/api/IATSplashEyeAd;

    return-void
.end method


# virtual methods
.method public getAtSplashEyeAd()Lcom/anythink/splashad/api/IATSplashEyeAd;
    .locals 1

    iget-object v0, p0, Lcom/anythink/splashad/api/ATSplashAdExtraInfo;->atSplashEyeAd:Lcom/anythink/splashad/api/IATSplashEyeAd;

    return-object v0
.end method

.method public getDismissType()I
    .locals 1

    iget v0, p0, Lcom/anythink/splashad/api/ATSplashAdExtraInfo;->dismissType:I

    return v0
.end method
