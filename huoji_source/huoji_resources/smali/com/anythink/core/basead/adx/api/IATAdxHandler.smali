.class public interface abstract Lcom/anythink/core/basead/adx/api/IATAdxHandler;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/core/basead/adx/api/IATAdxHandler$LOSS_REASON;
    }
.end annotation


# static fields
.field public static final BIDDER_NAME:Ljava/lang/String; = "bidding_name"

.field public static final SECOND_PRICE:Ljava/lang/String; = "second_price"

.field public static final WATERFALL_INFO:Ljava/lang/String; = "waterfall_info"


# virtual methods
.method public abstract destroy()V
.end method

.method public abstract notifyLose(Lcom/anythink/core/basead/adx/api/IATAdxHandler$LOSS_REASON;DLjava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/anythink/core/basead/adx/api/IATAdxHandler$LOSS_REASON;",
            "D",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract notifyWin(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method
