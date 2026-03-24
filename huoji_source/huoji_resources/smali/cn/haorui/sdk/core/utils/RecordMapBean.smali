.class public Lcn/haorui/sdk/core/utils/RecordMapBean;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private dateRecordMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcn/haorui/sdk/core/utils/RecordBean;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDateRecordMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcn/haorui/sdk/core/utils/RecordBean;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcn/haorui/sdk/core/utils/RecordMapBean;->dateRecordMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public setDateRecordMap(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcn/haorui/sdk/core/utils/RecordBean;",
            ">;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcn/haorui/sdk/core/utils/RecordMapBean;->dateRecordMap:Ljava/util/HashMap;

    return-void
.end method
